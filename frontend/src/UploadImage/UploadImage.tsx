import React, { SetStateAction, useEffect, useState } from 'react'
import axios from 'axios'

import './upload_image.css'

interface BreedFile{
    breed: string;
    confidence: string;
    file: File;
}
interface Props {
    //here you can declare the return type (here is void)
    setBreeds: (values: string[]) => void;
}

export default function UploadImage(props: Props) {
    
    const [uploadedFiles, setUploadedFiles] = useState<BreedFile[]>([]);
    const [uploadLimit] = useState(5)

    const headers = {"Accept":"application/json", "Content-Type": "multipart/form-data", "Access-Control-Allow-Origin": "*"}
    const url = process.env.REACT_APP_ENDPOINT_PREDICT || ""
    
    const onFileChange = (event: React.ChangeEvent<HTMLInputElement>) => {
        const { files } = event.target;
        const selectedFiles = files as FileList;
        if (selectedFiles.length + uploadedFiles.length > uploadLimit) {
            alert("No more than " + uploadLimit + " files")
            return false;
        }
        const uploadedFileNames = uploadedFiles.map((breedfile: BreedFile) => breedfile.file.name)
        const newFiles:BreedFile[] = Array.from(selectedFiles)
                                          .filter((file: File) => {return uploadedFileNames.indexOf(file.name) < 0 })
                                          .map((file: File) => {
                                              return {breed: "", confidence: '', file: file};
                                          })
        const allFiles = [...newFiles, ...uploadedFiles].sort((f1, f2) => f1.file.name > f2.file.name ? 1 : -1)
        setUploadedFiles(allFiles)
    }

    const loadClassByPostFile = async (breedFile: BreedFile) => {
        const formData = new FormData();
        formData.append("file", breedFile.file);
        // make a POST request to the File Upload API with the FormData object and Rapid API headers
        axios
            .post(url, formData, {headers})
            .then(response => {
                if (Number(response.data.confidence) > 0) {
                    breedFile.breed = response.data.class
                    breedFile.confidence = response.data.confidence
                } else {
                    breedFile.breed = "Unknow"
                    breedFile.confidence = "-"
                }
            })
            .catch((error) => {
                console.log(error);
            })
        return
    }

    const loadClasses = async () => {
        uploadedFiles.forEach((breedFile: BreedFile) => {
            loadClassByPostFile(breedFile)
            return breedFile;
        })
        return uploadedFiles;
    }
    
    const onUpload = () => {
        loadClasses().then(
            files => {
                const breeds:string[] = files.map(t => t.breed)
                props.setBreeds(breeds)
                setUploadedFiles([])
                setUploadedFiles([...files])
            }
        )
    }

    return (
        <div className='UploadImage'>
            <div className='UploadImageTitle'>
                <b>Upload Image </b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="file" name='dogImage' onChange={onFileChange} multiple accept='image/*'/>
                <button name='upload' onClick={onUpload}>Upload!</button>
                
            </div>

            <div className='UploadedImageThumbnailDivs'>
                {uploadedFiles.map((f: BreedFile) => (
                    <div key={f.file.name} className='UploadedImageThumbnailDiv'>
                        <h3>{f.file.name}</h3>
                        <div><i><u>Breed:{f.breed} / {f.confidence}%</u></i></div>
                        <img src={URL.createObjectURL(f.file)} className='UploadedImageThumbnailImg'/>
                    </div>
                    ))
                }
            </div>
        </div>
    )
}