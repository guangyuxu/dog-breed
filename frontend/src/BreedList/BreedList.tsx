import React, { useEffect, useState } from 'react'
import axios from 'axios'

import './breed_list.css'

export default function BreedList(props: {selectedBreeds: string[]}) {

    const [data, setData] = useState<string[]>([])
    const url = process.env.REACT_APP_ENDPOINT_DOG_BREEDS || ""

    useEffect(() => {
        axios.get(url).then(response => setData(response.data))
        return
    }, [])

    return (
        <div className='BreadList'>
            <h3 className='BreadListTitle'>Breed List</h3>
            <ul className='BreedItems'>
                {data.map(t => {
                    const className = props.selectedBreeds.indexOf(t) >= 0 ? "BreedItemHighlight": "BreedItem"
                    return (<li key={t} className={className}>{t}</li>)
                })}
            </ul>
        </div>
    )
}