сЫ
ч∆
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Т
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Ѕ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.14.02v2.14.0-rc1-21-g4dacf3f368e8ЩД
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
~
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:F*
dtype0
~
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:F*
dtype0
З
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	МF*&
shared_nameAdam/v/dense_3/kernel
А
)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes
:	МF*
dtype0
З
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	МF*&
shared_nameAdam/m/dense_3/kernel
А
)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes
:	МF*
dtype0

Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:М*$
shared_nameAdam/v/dense_2/bias
x
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes	
:М*
dtype0

Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:М*$
shared_nameAdam/m/dense_2/bias
x
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes	
:М*
dtype0
И
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
†М*&
shared_nameAdam/v/dense_2/kernel
Б
)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel* 
_output_shapes
:
†М*
dtype0
И
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
†М*&
shared_nameAdam/m/dense_2/kernel
Б
)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel* 
_output_shapes
:
†М*
dtype0
В
Adam/v/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/conv2d_11/bias
{
)Adam/v/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/bias*
_output_shapes
: *
dtype0
В
Adam/m/conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/conv2d_11/bias
{
)Adam/m/conv2d_11/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/bias*
_output_shapes
: *
dtype0
Т
Adam/v/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/v/conv2d_11/kernel
Л
+Adam/v/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_11/kernel*&
_output_shapes
:  *
dtype0
Т
Adam/m/conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/m/conv2d_11/kernel
Л
+Adam/m/conv2d_11/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_11/kernel*&
_output_shapes
:  *
dtype0
В
Adam/v/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/v/conv2d_10/bias
{
)Adam/v/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/bias*
_output_shapes
: *
dtype0
В
Adam/m/conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/m/conv2d_10/bias
{
)Adam/m/conv2d_10/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/bias*
_output_shapes
: *
dtype0
Т
Adam/v/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/v/conv2d_10/kernel
Л
+Adam/v/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_10/kernel*&
_output_shapes
:  *
dtype0
Т
Adam/m/conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *(
shared_nameAdam/m/conv2d_10/kernel
Л
+Adam/m/conv2d_10/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_10/kernel*&
_output_shapes
:  *
dtype0
А
Adam/v/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_9/bias
y
(Adam/v/conv2d_9/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_9/bias*
_output_shapes
: *
dtype0
А
Adam/m/conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_9/bias
y
(Adam/m/conv2d_9/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_9/bias*
_output_shapes
: *
dtype0
Р
Adam/v/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/v/conv2d_9/kernel
Й
*Adam/v/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_9/kernel*&
_output_shapes
:  *
dtype0
Р
Adam/m/conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/m/conv2d_9/kernel
Й
*Adam/m/conv2d_9/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_9/kernel*&
_output_shapes
:  *
dtype0
А
Adam/v/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_8/bias
y
(Adam/v/conv2d_8/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_8/bias*
_output_shapes
: *
dtype0
А
Adam/m/conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_8/bias
y
(Adam/m/conv2d_8/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_8/bias*
_output_shapes
: *
dtype0
Р
Adam/v/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/v/conv2d_8/kernel
Й
*Adam/v/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_8/kernel*&
_output_shapes
:  *
dtype0
Р
Adam/m/conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/m/conv2d_8/kernel
Й
*Adam/m/conv2d_8/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_8/kernel*&
_output_shapes
:  *
dtype0
А
Adam/v/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_7/bias
y
(Adam/v/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/bias*
_output_shapes
: *
dtype0
А
Adam/m/conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_7/bias
y
(Adam/m/conv2d_7/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/bias*
_output_shapes
: *
dtype0
Р
Adam/v/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/v/conv2d_7/kernel
Й
*Adam/v/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_7/kernel*&
_output_shapes
:  *
dtype0
Р
Adam/m/conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *'
shared_nameAdam/m/conv2d_7/kernel
Й
*Adam/m/conv2d_7/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_7/kernel*&
_output_shapes
:  *
dtype0
А
Adam/v/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/v/conv2d_6/bias
y
(Adam/v/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/bias*
_output_shapes
: *
dtype0
А
Adam/m/conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/m/conv2d_6/bias
y
(Adam/m/conv2d_6/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/bias*
_output_shapes
: *
dtype0
Р
Adam/v/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/v/conv2d_6/kernel
Й
*Adam/v/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_6/kernel*&
_output_shapes
: *
dtype0
Р
Adam/m/conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/m/conv2d_6/kernel
Й
*Adam/m/conv2d_6/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_6/kernel*&
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:F*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	МF*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	МF*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:М*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:М*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
†М*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
†М*
dtype0
t
conv2d_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_11/bias
m
"conv2d_11/bias/Read/ReadVariableOpReadVariableOpconv2d_11/bias*
_output_shapes
: *
dtype0
Д
conv2d_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_11/kernel
}
$conv2d_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_11/kernel*&
_output_shapes
:  *
dtype0
t
conv2d_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_10/bias
m
"conv2d_10/bias/Read/ReadVariableOpReadVariableOpconv2d_10/bias*
_output_shapes
: *
dtype0
Д
conv2d_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *!
shared_nameconv2d_10/kernel
}
$conv2d_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_10/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_9/bias
k
!conv2d_9/bias/Read/ReadVariableOpReadVariableOpconv2d_9/bias*
_output_shapes
: *
dtype0
В
conv2d_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_9/kernel
{
#conv2d_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_9/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_8/bias
k
!conv2d_8/bias/Read/ReadVariableOpReadVariableOpconv2d_8/bias*
_output_shapes
: *
dtype0
В
conv2d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_8/kernel
{
#conv2d_8/kernel/Read/ReadVariableOpReadVariableOpconv2d_8/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_7/bias
k
!conv2d_7/bias/Read/ReadVariableOpReadVariableOpconv2d_7/bias*
_output_shapes
: *
dtype0
В
conv2d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_7/kernel
{
#conv2d_7/kernel/Read/ReadVariableOpReadVariableOpconv2d_7/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_6/bias
k
!conv2d_6/bias/Read/ReadVariableOpReadVariableOpconv2d_6/bias*
_output_shapes
: *
dtype0
В
conv2d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_6/kernel
{
#conv2d_6/kernel/Read/ReadVariableOpReadVariableOpconv2d_6/kernel*&
_output_shapes
: *
dtype0
Щ
"serving_default_sequential_1_inputPlaceholder*1
_output_shapes
:€€€€€€€€€аа*
dtype0*&
shape:€€€€€€€€€аа
№
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_1_inputconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_29947

NoOpNoOp
ЈЙ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*сИ
valueжИBвИ BЏИ
т
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
®
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
»
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op*
О
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses* 
»
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op*
О
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses* 
»
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias
 H_jit_compiled_convolution_op*
О
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses* 
»
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op*
О
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses* 
»
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias
 f_jit_compiled_convolution_op*
О
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses* 
»
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

skernel
tbias
 u_jit_compiled_convolution_op*
О
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses* 
Р
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses* 
Ѓ
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
Иkernel
	Йbias*
Ѓ
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Рkernel
	Сbias*
~
(0
)1
72
83
F4
G5
U6
V7
d8
e9
s10
t11
И12
Й13
Р14
С15*
~
(0
)1
72
83
F4
G5
U6
V7
d8
e9
s10
t11
И12
Й13
Р14
С15*
* 
µ
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Чtrace_0
Шtrace_1* 

Щtrace_0
Ъtrace_1* 
* 
И
Ы
_variables
Ь_iterations
Э_learning_rate
Ю_index_dict
Я
_momentums
†_velocities
°_update_step_xla*

Ґserving_default* 
Ф
£	variables
§trainable_variables
•regularization_losses
¶	keras_api
І__call__
+®&call_and_return_all_conditional_losses* 
Ф
©	variables
™trainable_variables
Ђregularization_losses
ђ	keras_api
≠__call__
+Ѓ&call_and_return_all_conditional_losses* 
* 
* 
* 
Ц
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

іtrace_0
µtrace_1* 

ґtrace_0
Јtrace_1* 

(0
)1*

(0
)1*
* 
Ш
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

љtrace_0* 

Њtrace_0* 
_Y
VARIABLE_VALUEconv2d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

ƒtrace_0* 

≈trace_0* 

70
81*

70
81*
* 
Ш
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses*

Ћtrace_0* 

ћtrace_0* 
_Y
VARIABLE_VALUEconv2d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

“trace_0* 

”trace_0* 

F0
G1*

F0
G1*
* 
Ш
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses*

ўtrace_0* 

Џtrace_0* 
_Y
VARIABLE_VALUEconv2d_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

аtrace_0* 

бtrace_0* 

U0
V1*

U0
V1*
* 
Ш
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

зtrace_0* 

иtrace_0* 
_Y
VARIABLE_VALUEconv2d_9/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_9/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

оtrace_0* 

пtrace_0* 

d0
e1*

d0
e1*
* 
Ш
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

хtrace_0* 

цtrace_0* 
`Z
VARIABLE_VALUEconv2d_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses* 

ьtrace_0* 

эtrace_0* 

s0
t1*

s0
t1*
* 
Ш
юnon_trainable_variables
€layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

Гtrace_0* 

Дtrace_0* 
`Z
VARIABLE_VALUEconv2d_11/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_11/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses* 

Кtrace_0* 

Лtrace_0* 
* 
* 
* 
Щ
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses* 

Сtrace_0* 

Тtrace_0* 

И0
Й1*

И0
Й1*
* 
Ю
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

Шtrace_0* 

Щtrace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

Р0
С1*

Р0
С1*
* 
Ю
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses*

Яtrace_0* 

†trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
z
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15*

°0
Ґ1*
* 
* 
* 
* 
* 
* 
£
Ь0
£1
§2
•3
¶4
І5
®6
©7
™8
Ђ9
ђ10
≠11
Ѓ12
ѓ13
∞14
±15
≤16
≥17
і18
µ19
ґ20
Ј21
Є22
є23
Ї24
ї25
Љ26
љ27
Њ28
њ29
ј30
Ѕ31
¬32*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
К
£0
•1
І2
©3
Ђ4
≠5
ѓ6
±7
≥8
µ9
Ј10
є11
ї12
љ13
њ14
Ѕ15*
К
§0
¶1
®2
™3
ђ4
Ѓ5
∞6
≤7
і8
ґ9
Є10
Ї11
Љ12
Њ13
ј14
¬15*
* 
* 
* 
* 
* 
Ь
√non_trainable_variables
ƒlayers
≈metrics
 ∆layer_regularization_losses
«layer_metrics
£	variables
§trainable_variables
•regularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses* 

»trace_0* 

…trace_0* 
* 
* 
* 
Ь
 non_trainable_variables
Ћlayers
ћmetrics
 Ќlayer_regularization_losses
ќlayer_metrics
©	variables
™trainable_variables
Ђregularization_losses
≠__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses* 

ѕtrace_0* 

–trace_0* 
* 

0
1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
—	variables
“	keras_api

”total

‘count*
M
’	variables
÷	keras_api

„total

Ўcount
ў
_fn_kwargs*
a[
VARIABLE_VALUEAdam/m/conv2d_6/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_6/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_6/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_6/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_7/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_7/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv2d_7/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv2d_7/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_8/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_8/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_8/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_8/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/conv2d_9/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/conv2d_9/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/conv2d_9/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/conv2d_9/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_10/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_10/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_10/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_10/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/m/conv2d_11/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEAdam/v/conv2d_11/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/conv2d_11/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv2d_11/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_2/kernel2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

”0
‘1*

—	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

„0
Ў1*

’	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
к

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rateAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/conv2d_8/kernelAdam/v/conv2d_8/kernelAdam/m/conv2d_8/biasAdam/v/conv2d_8/biasAdam/m/conv2d_9/kernelAdam/v/conv2d_9/kernelAdam/m/conv2d_9/biasAdam/v/conv2d_9/biasAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/biasAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotal_1count_1totalcountConst*C
Tin<
:28*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_30548
е

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_6/kernelconv2d_6/biasconv2d_7/kernelconv2d_7/biasconv2d_8/kernelconv2d_8/biasconv2d_9/kernelconv2d_9/biasconv2d_10/kernelconv2d_10/biasconv2d_11/kernelconv2d_11/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rateAdam/m/conv2d_6/kernelAdam/v/conv2d_6/kernelAdam/m/conv2d_6/biasAdam/v/conv2d_6/biasAdam/m/conv2d_7/kernelAdam/v/conv2d_7/kernelAdam/m/conv2d_7/biasAdam/v/conv2d_7/biasAdam/m/conv2d_8/kernelAdam/v/conv2d_8/kernelAdam/m/conv2d_8/biasAdam/v/conv2d_8/biasAdam/m/conv2d_9/kernelAdam/v/conv2d_9/kernelAdam/m/conv2d_9/biasAdam/v/conv2d_9/biasAdam/m/conv2d_10/kernelAdam/v/conv2d_10/kernelAdam/m/conv2d_10/biasAdam/v/conv2d_10/biasAdam/m/conv2d_11/kernelAdam/v/conv2d_11/kernelAdam/m/conv2d_11/biasAdam/v/conv2d_11/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/biastotal_1count_1totalcount*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_30719фу

ґ
K
/__inference_max_pooling2d_6_layer_call_fn_29972

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29503Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Њ
ь
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29967

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€аа *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€аа Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
¶
ѕ
#__inference_signature_wrapper_29947
sequential_1_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: 

unknown_11:
†М

unknown_12:	М

unknown_13:	МF

unknown_14:F
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallsequential_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_29452o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€F<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€аа: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29943:%!

_user_specified_name29941:%!

_user_specified_name29939:%!

_user_specified_name29937:%!

_user_specified_name29935:%!

_user_specified_name29933:%
!

_user_specified_name29931:%	!

_user_specified_name29929:%!

_user_specified_name29927:%!

_user_specified_name29925:%!

_user_specified_name29923:%!

_user_specified_name29921:%!

_user_specified_name29919:%!

_user_specified_name29917:%!

_user_specified_name29915:%!

_user_specified_name29913:e a
1
_output_shapes
:€€€€€€€€€аа
,
_user_specified_namesequential_1_input
≤
ь
C__inference_conv2d_9_layer_call_and_return_conditional_losses_30057

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
≥
э
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30117

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Т
Э
(__inference_conv2d_7_layer_call_fn_29986

inputs!
unknown:  
	unknown_0: 
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€pp *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29589w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€pp <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€pp : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29982:%!

_user_specified_name29980:W S
/
_output_shapes
:€€€€€€€€€pp 
 
_user_specified_nameinputs
≥
э
D__inference_conv2d_10_layer_call_and_return_conditional_losses_29640

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
∆
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_29669

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€†Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
о
k
G__inference_sequential_1_layer_call_and_return_conditional_losses_29478
resizing_input
identity…
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_29460ё
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_29469t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:a ]
1
_output_shapes
:€€€€€€€€€аа
(
_user_specified_nameresizing_input
√
D
(__inference_resizing_layer_call_fn_30183

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_29460j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_30097

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≤
ь
C__inference_conv2d_8_layer_call_and_return_conditional_losses_29606

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€88 *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€88 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€88 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€88 S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€88 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€88 
 
_user_specified_nameinputs
№
џ
/__inference_dog_breed_model_layer_call_fn_29793
sequential_1_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: 

unknown_11:
†М

unknown_12:	М

unknown_13:	МF

unknown_14:F
identityИҐStatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallsequential_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_dog_breed_model_layer_call_and_return_conditional_losses_29704o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€F<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€аа: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29789:%!

_user_specified_name29787:%!

_user_specified_name29785:%!

_user_specified_name29783:%!

_user_specified_name29781:%!

_user_specified_name29779:%
!

_user_specified_name29777:%	!

_user_specified_name29775:%!

_user_specified_name29773:%!

_user_specified_name29771:%!

_user_specified_name29769:%!

_user_specified_name29767:%!

_user_specified_name29765:%!

_user_specified_name29763:%!

_user_specified_name29761:%!

_user_specified_name29759:e a
1
_output_shapes
:€€€€€€€€€аа
,
_user_specified_namesequential_1_input
≤
ь
C__inference_conv2d_9_layer_call_and_return_conditional_losses_29623

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
≥
э
D__inference_conv2d_11_layer_call_and_return_conditional_losses_29657

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
«F
Ѕ
J__inference_dog_breed_model_layer_call_and_return_conditional_losses_29756
sequential_1_input(
conv2d_6_29708: 
conv2d_6_29710: (
conv2d_7_29714:  
conv2d_7_29716: (
conv2d_8_29720:  
conv2d_8_29722: (
conv2d_9_29726:  
conv2d_9_29728: )
conv2d_10_29732:  
conv2d_10_29734: )
conv2d_11_29738:  
conv2d_11_29740: !
dense_2_29745:
†М
dense_2_29747:	М 
dense_3_29750:	МF
dense_3_29752:F
identityИҐ!conv2d_10/StatefulPartitionedCallҐ!conv2d_11/StatefulPartitionedCallҐ conv2d_6/StatefulPartitionedCallҐ conv2d_7/StatefulPartitionedCallҐ conv2d_8/StatefulPartitionedCallҐ conv2d_9/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCall’
sequential_1/PartitionedCallPartitionedCallsequential_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_29478Ц
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_6_29708conv2d_6_29710*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29572р
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€pp * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29503Ч
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_29714conv2d_7_29716*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€pp *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29589р
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€88 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29513Ч
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_29720conv2d_8_29722*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€88 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_29606р
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29523Ч
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_29726conv2d_9_29728*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_29623р
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_29533Ы
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_29732conv2d_10_29734*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_29640у
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_29543Ь
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_29738conv2d_11_29740*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_29657у
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_29553Ё
flatten_1/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_29669Ж
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_29745dense_2_29747*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€М*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_29681Л
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_29750dense_3_29752*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_29697w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€FЇ
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€аа: : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:%!

_user_specified_name29752:%!

_user_specified_name29750:%!

_user_specified_name29747:%!

_user_specified_name29745:%!

_user_specified_name29740:%!

_user_specified_name29738:%
!

_user_specified_name29734:%	!

_user_specified_name29732:%!

_user_specified_name29728:%!

_user_specified_name29726:%!

_user_specified_name29722:%!

_user_specified_name29720:%!

_user_specified_name29716:%!

_user_specified_name29714:%!

_user_specified_name29710:%!

_user_specified_name29708:e a
1
_output_shapes
:€€€€€€€€€аа
,
_user_specified_namesequential_1_input
Т
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_29533

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≈
E
)__inference_rescaling_layer_call_fn_30194

inputs
identityє
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_29469j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_30067

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ґ
K
/__inference_max_pooling2d_9_layer_call_fn_30062

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_29533Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_29553

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≠
_
C__inference_resizing_layer_call_and_return_conditional_losses_30189

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Т
Э
(__inference_conv2d_9_layer_call_fn_30046

inputs!
unknown:  
	unknown_0: 
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_29623w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30042:%!

_user_specified_name30040:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ґ
K
/__inference_max_pooling2d_8_layer_call_fn_30032

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29523Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
єy
ѓ
 __inference__wrapped_model_29452
sequential_1_inputQ
7dog_breed_model_conv2d_6_conv2d_readvariableop_resource: F
8dog_breed_model_conv2d_6_biasadd_readvariableop_resource: Q
7dog_breed_model_conv2d_7_conv2d_readvariableop_resource:  F
8dog_breed_model_conv2d_7_biasadd_readvariableop_resource: Q
7dog_breed_model_conv2d_8_conv2d_readvariableop_resource:  F
8dog_breed_model_conv2d_8_biasadd_readvariableop_resource: Q
7dog_breed_model_conv2d_9_conv2d_readvariableop_resource:  F
8dog_breed_model_conv2d_9_biasadd_readvariableop_resource: R
8dog_breed_model_conv2d_10_conv2d_readvariableop_resource:  G
9dog_breed_model_conv2d_10_biasadd_readvariableop_resource: R
8dog_breed_model_conv2d_11_conv2d_readvariableop_resource:  G
9dog_breed_model_conv2d_11_biasadd_readvariableop_resource: J
6dog_breed_model_dense_2_matmul_readvariableop_resource:
†МF
7dog_breed_model_dense_2_biasadd_readvariableop_resource:	МI
6dog_breed_model_dense_3_matmul_readvariableop_resource:	МFE
7dog_breed_model_dense_3_biasadd_readvariableop_resource:F
identityИҐ0dog_breed_model/conv2d_10/BiasAdd/ReadVariableOpҐ/dog_breed_model/conv2d_10/Conv2D/ReadVariableOpҐ0dog_breed_model/conv2d_11/BiasAdd/ReadVariableOpҐ/dog_breed_model/conv2d_11/Conv2D/ReadVariableOpҐ/dog_breed_model/conv2d_6/BiasAdd/ReadVariableOpҐ.dog_breed_model/conv2d_6/Conv2D/ReadVariableOpҐ/dog_breed_model/conv2d_7/BiasAdd/ReadVariableOpҐ.dog_breed_model/conv2d_7/Conv2D/ReadVariableOpҐ/dog_breed_model/conv2d_8/BiasAdd/ReadVariableOpҐ.dog_breed_model/conv2d_8/Conv2D/ReadVariableOpҐ/dog_breed_model/conv2d_9/BiasAdd/ReadVariableOpҐ.dog_breed_model/conv2d_9/Conv2D/ReadVariableOpҐ.dog_breed_model/dense_2/BiasAdd/ReadVariableOpҐ-dog_breed_model/dense_2/MatMul/ReadVariableOpҐ.dog_breed_model/dense_3/BiasAdd/ReadVariableOpҐ-dog_breed_model/dense_3/MatMul/ReadVariableOpВ
1dog_breed_model/sequential_1/resizing/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   у
;dog_breed_model/sequential_1/resizing/resize/ResizeBilinearResizeBilinearsequential_1_input:dog_breed_model/sequential_1/resizing/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(r
-dog_breed_model/sequential_1/rescaling/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;t
/dog_breed_model/sequential_1/rescaling/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    у
*dog_breed_model/sequential_1/rescaling/mulMulLdog_breed_model/sequential_1/resizing/resize/ResizeBilinear:resized_images:06dog_breed_model/sequential_1/rescaling/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааў
*dog_breed_model/sequential_1/rescaling/addAddV2.dog_breed_model/sequential_1/rescaling/mul:z:08dog_breed_model/sequential_1/rescaling/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааЃ
.dog_breed_model/conv2d_6/Conv2D/ReadVariableOpReadVariableOp7dog_breed_model_conv2d_6_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0х
dog_breed_model/conv2d_6/Conv2DConv2D.dog_breed_model/sequential_1/rescaling/add:z:06dog_breed_model/conv2d_6/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€аа *
paddingSAME*
strides
§
/dog_breed_model/conv2d_6/BiasAdd/ReadVariableOpReadVariableOp8dog_breed_model_conv2d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0 
 dog_breed_model/conv2d_6/BiasAddBiasAdd(dog_breed_model/conv2d_6/Conv2D:output:07dog_breed_model/conv2d_6/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€аа М
dog_breed_model/conv2d_6/ReluRelu)dog_breed_model/conv2d_6/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа ћ
'dog_breed_model/max_pooling2d_6/MaxPoolMaxPool+dog_breed_model/conv2d_6/Relu:activations:0*/
_output_shapes
:€€€€€€€€€pp *
ksize
*
paddingVALID*
strides
Ѓ
.dog_breed_model/conv2d_7/Conv2D/ReadVariableOpReadVariableOp7dog_breed_model_conv2d_7_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0х
dog_breed_model/conv2d_7/Conv2DConv2D0dog_breed_model/max_pooling2d_6/MaxPool:output:06dog_breed_model/conv2d_7/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€pp *
paddingSAME*
strides
§
/dog_breed_model/conv2d_7/BiasAdd/ReadVariableOpReadVariableOp8dog_breed_model_conv2d_7_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
 dog_breed_model/conv2d_7/BiasAddBiasAdd(dog_breed_model/conv2d_7/Conv2D:output:07dog_breed_model/conv2d_7/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€pp К
dog_breed_model/conv2d_7/ReluRelu)dog_breed_model/conv2d_7/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€pp ћ
'dog_breed_model/max_pooling2d_7/MaxPoolMaxPool+dog_breed_model/conv2d_7/Relu:activations:0*/
_output_shapes
:€€€€€€€€€88 *
ksize
*
paddingVALID*
strides
Ѓ
.dog_breed_model/conv2d_8/Conv2D/ReadVariableOpReadVariableOp7dog_breed_model_conv2d_8_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0х
dog_breed_model/conv2d_8/Conv2DConv2D0dog_breed_model/max_pooling2d_7/MaxPool:output:06dog_breed_model/conv2d_8/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€88 *
paddingSAME*
strides
§
/dog_breed_model/conv2d_8/BiasAdd/ReadVariableOpReadVariableOp8dog_breed_model_conv2d_8_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
 dog_breed_model/conv2d_8/BiasAddBiasAdd(dog_breed_model/conv2d_8/Conv2D:output:07dog_breed_model/conv2d_8/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€88 К
dog_breed_model/conv2d_8/ReluRelu)dog_breed_model/conv2d_8/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€88 ћ
'dog_breed_model/max_pooling2d_8/MaxPoolMaxPool+dog_breed_model/conv2d_8/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
Ѓ
.dog_breed_model/conv2d_9/Conv2D/ReadVariableOpReadVariableOp7dog_breed_model_conv2d_9_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0х
dog_breed_model/conv2d_9/Conv2DConv2D0dog_breed_model/max_pooling2d_8/MaxPool:output:06dog_breed_model/conv2d_9/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
§
/dog_breed_model/conv2d_9/BiasAdd/ReadVariableOpReadVariableOp8dog_breed_model_conv2d_9_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0»
 dog_breed_model/conv2d_9/BiasAddBiasAdd(dog_breed_model/conv2d_9/Conv2D:output:07dog_breed_model/conv2d_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ К
dog_breed_model/conv2d_9/ReluRelu)dog_breed_model/conv2d_9/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ ћ
'dog_breed_model/max_pooling2d_9/MaxPoolMaxPool+dog_breed_model/conv2d_9/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
∞
/dog_breed_model/conv2d_10/Conv2D/ReadVariableOpReadVariableOp8dog_breed_model_conv2d_10_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0ч
 dog_breed_model/conv2d_10/Conv2DConv2D0dog_breed_model/max_pooling2d_9/MaxPool:output:07dog_breed_model/conv2d_10/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
¶
0dog_breed_model/conv2d_10/BiasAdd/ReadVariableOpReadVariableOp9dog_breed_model_conv2d_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ћ
!dog_breed_model/conv2d_10/BiasAddBiasAdd)dog_breed_model/conv2d_10/Conv2D:output:08dog_breed_model/conv2d_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ М
dog_breed_model/conv2d_10/ReluRelu*dog_breed_model/conv2d_10/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ ќ
(dog_breed_model/max_pooling2d_10/MaxPoolMaxPool,dog_breed_model/conv2d_10/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
∞
/dog_breed_model/conv2d_11/Conv2D/ReadVariableOpReadVariableOp8dog_breed_model_conv2d_11_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0ш
 dog_breed_model/conv2d_11/Conv2DConv2D1dog_breed_model/max_pooling2d_10/MaxPool:output:07dog_breed_model/conv2d_11/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
¶
0dog_breed_model/conv2d_11/BiasAdd/ReadVariableOpReadVariableOp9dog_breed_model_conv2d_11_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ћ
!dog_breed_model/conv2d_11/BiasAddBiasAdd)dog_breed_model/conv2d_11/Conv2D:output:08dog_breed_model/conv2d_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ М
dog_breed_model/conv2d_11/ReluRelu*dog_breed_model/conv2d_11/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ ќ
(dog_breed_model/max_pooling2d_11/MaxPoolMaxPool,dog_breed_model/conv2d_11/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
p
dog_breed_model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Љ
!dog_breed_model/flatten_1/ReshapeReshape1dog_breed_model/max_pooling2d_11/MaxPool:output:0(dog_breed_model/flatten_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€†¶
-dog_breed_model/dense_2/MatMul/ReadVariableOpReadVariableOp6dog_breed_model_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
†М*
dtype0Њ
dog_breed_model/dense_2/MatMulMatMul*dog_breed_model/flatten_1/Reshape:output:05dog_breed_model/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€М£
.dog_breed_model/dense_2/BiasAdd/ReadVariableOpReadVariableOp7dog_breed_model_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:М*
dtype0њ
dog_breed_model/dense_2/BiasAddBiasAdd(dog_breed_model/dense_2/MatMul:product:06dog_breed_model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€МБ
dog_breed_model/dense_2/ReluRelu(dog_breed_model/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€М•
-dog_breed_model/dense_3/MatMul/ReadVariableOpReadVariableOp6dog_breed_model_dense_3_matmul_readvariableop_resource*
_output_shapes
:	МF*
dtype0љ
dog_breed_model/dense_3/MatMulMatMul*dog_breed_model/dense_2/Relu:activations:05dog_breed_model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€FҐ
.dog_breed_model/dense_3/BiasAdd/ReadVariableOpReadVariableOp7dog_breed_model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype0Њ
dog_breed_model/dense_3/BiasAddBiasAdd(dog_breed_model/dense_3/MatMul:product:06dog_breed_model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€FЖ
dog_breed_model/dense_3/SoftmaxSoftmax(dog_breed_model/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Fx
IdentityIdentity)dog_breed_model/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€FЇ
NoOpNoOp1^dog_breed_model/conv2d_10/BiasAdd/ReadVariableOp0^dog_breed_model/conv2d_10/Conv2D/ReadVariableOp1^dog_breed_model/conv2d_11/BiasAdd/ReadVariableOp0^dog_breed_model/conv2d_11/Conv2D/ReadVariableOp0^dog_breed_model/conv2d_6/BiasAdd/ReadVariableOp/^dog_breed_model/conv2d_6/Conv2D/ReadVariableOp0^dog_breed_model/conv2d_7/BiasAdd/ReadVariableOp/^dog_breed_model/conv2d_7/Conv2D/ReadVariableOp0^dog_breed_model/conv2d_8/BiasAdd/ReadVariableOp/^dog_breed_model/conv2d_8/Conv2D/ReadVariableOp0^dog_breed_model/conv2d_9/BiasAdd/ReadVariableOp/^dog_breed_model/conv2d_9/Conv2D/ReadVariableOp/^dog_breed_model/dense_2/BiasAdd/ReadVariableOp.^dog_breed_model/dense_2/MatMul/ReadVariableOp/^dog_breed_model/dense_3/BiasAdd/ReadVariableOp.^dog_breed_model/dense_3/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€аа: : : : : : : : : : : : : : : : 2d
0dog_breed_model/conv2d_10/BiasAdd/ReadVariableOp0dog_breed_model/conv2d_10/BiasAdd/ReadVariableOp2b
/dog_breed_model/conv2d_10/Conv2D/ReadVariableOp/dog_breed_model/conv2d_10/Conv2D/ReadVariableOp2d
0dog_breed_model/conv2d_11/BiasAdd/ReadVariableOp0dog_breed_model/conv2d_11/BiasAdd/ReadVariableOp2b
/dog_breed_model/conv2d_11/Conv2D/ReadVariableOp/dog_breed_model/conv2d_11/Conv2D/ReadVariableOp2b
/dog_breed_model/conv2d_6/BiasAdd/ReadVariableOp/dog_breed_model/conv2d_6/BiasAdd/ReadVariableOp2`
.dog_breed_model/conv2d_6/Conv2D/ReadVariableOp.dog_breed_model/conv2d_6/Conv2D/ReadVariableOp2b
/dog_breed_model/conv2d_7/BiasAdd/ReadVariableOp/dog_breed_model/conv2d_7/BiasAdd/ReadVariableOp2`
.dog_breed_model/conv2d_7/Conv2D/ReadVariableOp.dog_breed_model/conv2d_7/Conv2D/ReadVariableOp2b
/dog_breed_model/conv2d_8/BiasAdd/ReadVariableOp/dog_breed_model/conv2d_8/BiasAdd/ReadVariableOp2`
.dog_breed_model/conv2d_8/Conv2D/ReadVariableOp.dog_breed_model/conv2d_8/Conv2D/ReadVariableOp2b
/dog_breed_model/conv2d_9/BiasAdd/ReadVariableOp/dog_breed_model/conv2d_9/BiasAdd/ReadVariableOp2`
.dog_breed_model/conv2d_9/Conv2D/ReadVariableOp.dog_breed_model/conv2d_9/Conv2D/ReadVariableOp2`
.dog_breed_model/dense_2/BiasAdd/ReadVariableOp.dog_breed_model/dense_2/BiasAdd/ReadVariableOp2^
-dog_breed_model/dense_2/MatMul/ReadVariableOp-dog_breed_model/dense_2/MatMul/ReadVariableOp2`
.dog_breed_model/dense_3/BiasAdd/ReadVariableOp.dog_breed_model/dense_3/BiasAdd/ReadVariableOp2^
-dog_breed_model/dense_3/MatMul/ReadVariableOp-dog_breed_model/dense_3/MatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:e a
1
_output_shapes
:€€€€€€€€€аа
,
_user_specified_namesequential_1_input
Ф
Ю
)__inference_conv2d_11_layer_call_fn_30106

inputs!
unknown:  
	unknown_0: 
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_29657w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30102:%!

_user_specified_name30100:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
л
Х
'__inference_dense_3_layer_call_fn_30167

inputs
unknown:	МF
	unknown_0:F
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_29697o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€F<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€М: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30163:%!

_user_specified_name30161:P L
(
_output_shapes
:€€€€€€€€€М
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29977

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
∆
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_30138

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€†Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ц
`
D__inference_rescaling_layer_call_and_return_conditional_losses_29469

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
»Щ
е1
__inference__traced_save_30548
file_prefix@
&read_disablecopyonread_conv2d_6_kernel: 4
&read_1_disablecopyonread_conv2d_6_bias: B
(read_2_disablecopyonread_conv2d_7_kernel:  4
&read_3_disablecopyonread_conv2d_7_bias: B
(read_4_disablecopyonread_conv2d_8_kernel:  4
&read_5_disablecopyonread_conv2d_8_bias: B
(read_6_disablecopyonread_conv2d_9_kernel:  4
&read_7_disablecopyonread_conv2d_9_bias: C
)read_8_disablecopyonread_conv2d_10_kernel:  5
'read_9_disablecopyonread_conv2d_10_bias: D
*read_10_disablecopyonread_conv2d_11_kernel:  6
(read_11_disablecopyonread_conv2d_11_bias: <
(read_12_disablecopyonread_dense_2_kernel:
†М5
&read_13_disablecopyonread_dense_2_bias:	М;
(read_14_disablecopyonread_dense_3_kernel:	МF4
&read_15_disablecopyonread_dense_3_bias:F-
#read_16_disablecopyonread_iteration:	 1
'read_17_disablecopyonread_learning_rate: J
0read_18_disablecopyonread_adam_m_conv2d_6_kernel: J
0read_19_disablecopyonread_adam_v_conv2d_6_kernel: <
.read_20_disablecopyonread_adam_m_conv2d_6_bias: <
.read_21_disablecopyonread_adam_v_conv2d_6_bias: J
0read_22_disablecopyonread_adam_m_conv2d_7_kernel:  J
0read_23_disablecopyonread_adam_v_conv2d_7_kernel:  <
.read_24_disablecopyonread_adam_m_conv2d_7_bias: <
.read_25_disablecopyonread_adam_v_conv2d_7_bias: J
0read_26_disablecopyonread_adam_m_conv2d_8_kernel:  J
0read_27_disablecopyonread_adam_v_conv2d_8_kernel:  <
.read_28_disablecopyonread_adam_m_conv2d_8_bias: <
.read_29_disablecopyonread_adam_v_conv2d_8_bias: J
0read_30_disablecopyonread_adam_m_conv2d_9_kernel:  J
0read_31_disablecopyonread_adam_v_conv2d_9_kernel:  <
.read_32_disablecopyonread_adam_m_conv2d_9_bias: <
.read_33_disablecopyonread_adam_v_conv2d_9_bias: K
1read_34_disablecopyonread_adam_m_conv2d_10_kernel:  K
1read_35_disablecopyonread_adam_v_conv2d_10_kernel:  =
/read_36_disablecopyonread_adam_m_conv2d_10_bias: =
/read_37_disablecopyonread_adam_v_conv2d_10_bias: K
1read_38_disablecopyonread_adam_m_conv2d_11_kernel:  K
1read_39_disablecopyonread_adam_v_conv2d_11_kernel:  =
/read_40_disablecopyonread_adam_m_conv2d_11_bias: =
/read_41_disablecopyonread_adam_v_conv2d_11_bias: C
/read_42_disablecopyonread_adam_m_dense_2_kernel:
†МC
/read_43_disablecopyonread_adam_v_dense_2_kernel:
†М<
-read_44_disablecopyonread_adam_m_dense_2_bias:	М<
-read_45_disablecopyonread_adam_v_dense_2_bias:	МB
/read_46_disablecopyonread_adam_m_dense_3_kernel:	МFB
/read_47_disablecopyonread_adam_v_dense_3_kernel:	МF;
-read_48_disablecopyonread_adam_m_dense_3_bias:F;
-read_49_disablecopyonread_adam_v_dense_3_bias:F+
!read_50_disablecopyonread_total_1: +
!read_51_disablecopyonread_count_1: )
read_52_disablecopyonread_total: )
read_53_disablecopyonread_count: 
savev2_const
identity_109ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_42/DisableCopyOnReadҐRead_42/ReadVariableOpҐRead_43/DisableCopyOnReadҐRead_43/ReadVariableOpҐRead_44/DisableCopyOnReadҐRead_44/ReadVariableOpҐRead_45/DisableCopyOnReadҐRead_45/ReadVariableOpҐRead_46/DisableCopyOnReadҐRead_46/ReadVariableOpҐRead_47/DisableCopyOnReadҐRead_47/ReadVariableOpҐRead_48/DisableCopyOnReadҐRead_48/ReadVariableOpҐRead_49/DisableCopyOnReadҐRead_49/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_50/DisableCopyOnReadҐRead_50/ReadVariableOpҐRead_51/DisableCopyOnReadҐRead_51/ReadVariableOpҐRead_52/DisableCopyOnReadҐRead_52/ReadVariableOpҐRead_53/DisableCopyOnReadҐRead_53/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 ™
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv2d_6_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv2d_6_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv2d_6_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_2/DisableCopyOnReadDisableCopyOnRead(read_2_disablecopyonread_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 ∞
Read_2/ReadVariableOpReadVariableOp(read_2_disablecopyonread_conv2d_7_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0u

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  k

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*&
_output_shapes
:  z
Read_3/DisableCopyOnReadDisableCopyOnRead&read_3_disablecopyonread_conv2d_7_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_3/ReadVariableOpReadVariableOp&read_3_disablecopyonread_conv2d_7_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_4/DisableCopyOnReadDisableCopyOnRead(read_4_disablecopyonread_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 ∞
Read_4/ReadVariableOpReadVariableOp(read_4_disablecopyonread_conv2d_8_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0u

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  k

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*&
_output_shapes
:  z
Read_5/DisableCopyOnReadDisableCopyOnRead&read_5_disablecopyonread_conv2d_8_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_5/ReadVariableOpReadVariableOp&read_5_disablecopyonread_conv2d_8_bias^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_6/DisableCopyOnReadDisableCopyOnRead(read_6_disablecopyonread_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 ∞
Read_6/ReadVariableOpReadVariableOp(read_6_disablecopyonread_conv2d_9_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
:  z
Read_7/DisableCopyOnReadDisableCopyOnRead&read_7_disablecopyonread_conv2d_9_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_7/ReadVariableOpReadVariableOp&read_7_disablecopyonread_conv2d_9_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_8/DisableCopyOnReadDisableCopyOnRead)read_8_disablecopyonread_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 ±
Read_8/ReadVariableOpReadVariableOp)read_8_disablecopyonread_conv2d_10_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0v
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*&
_output_shapes
:  {
Read_9/DisableCopyOnReadDisableCopyOnRead'read_9_disablecopyonread_conv2d_10_bias"/device:CPU:0*
_output_shapes
 £
Read_9/ReadVariableOpReadVariableOp'read_9_disablecopyonread_conv2d_10_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: 
Read_10/DisableCopyOnReadDisableCopyOnRead*read_10_disablecopyonread_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 і
Read_10/ReadVariableOpReadVariableOp*read_10_disablecopyonread_conv2d_11_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*&
_output_shapes
:  }
Read_11/DisableCopyOnReadDisableCopyOnRead(read_11_disablecopyonread_conv2d_11_bias"/device:CPU:0*
_output_shapes
 ¶
Read_11/ReadVariableOpReadVariableOp(read_11_disablecopyonread_conv2d_11_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: }
Read_12/DisableCopyOnReadDisableCopyOnRead(read_12_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 ђ
Read_12/ReadVariableOpReadVariableOp(read_12_disablecopyonread_dense_2_kernel^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
†М*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
†Мg
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
†М{
Read_13/DisableCopyOnReadDisableCopyOnRead&read_13_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 •
Read_13/ReadVariableOpReadVariableOp&read_13_disablecopyonread_dense_2_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:М*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Мb
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:М}
Read_14/DisableCopyOnReadDisableCopyOnRead(read_14_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_14/ReadVariableOpReadVariableOp(read_14_disablecopyonread_dense_3_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	МF*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	МFf
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	МF{
Read_15/DisableCopyOnReadDisableCopyOnRead&read_15_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 §
Read_15/ReadVariableOpReadVariableOp&read_15_disablecopyonread_dense_3_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:F*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Fa
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:Fx
Read_16/DisableCopyOnReadDisableCopyOnRead#read_16_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_16/ReadVariableOpReadVariableOp#read_16_disablecopyonread_iteration^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_17/DisableCopyOnReadDisableCopyOnRead'read_17_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 °
Read_17/ReadVariableOpReadVariableOp'read_17_disablecopyonread_learning_rate^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_18/DisableCopyOnReadDisableCopyOnRead0read_18_disablecopyonread_adam_m_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_18/ReadVariableOpReadVariableOp0read_18_disablecopyonread_adam_m_conv2d_6_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
: Е
Read_19/DisableCopyOnReadDisableCopyOnRead0read_19_disablecopyonread_adam_v_conv2d_6_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_19/ReadVariableOpReadVariableOp0read_19_disablecopyonread_adam_v_conv2d_6_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*&
_output_shapes
: Г
Read_20/DisableCopyOnReadDisableCopyOnRead.read_20_disablecopyonread_adam_m_conv2d_6_bias"/device:CPU:0*
_output_shapes
 ђ
Read_20/ReadVariableOpReadVariableOp.read_20_disablecopyonread_adam_m_conv2d_6_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_21/DisableCopyOnReadDisableCopyOnRead.read_21_disablecopyonread_adam_v_conv2d_6_bias"/device:CPU:0*
_output_shapes
 ђ
Read_21/ReadVariableOpReadVariableOp.read_21_disablecopyonread_adam_v_conv2d_6_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_m_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_m_conv2d_7_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Е
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_v_conv2d_7_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_v_conv2d_7_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Г
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_m_conv2d_7_bias"/device:CPU:0*
_output_shapes
 ђ
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_m_conv2d_7_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_v_conv2d_7_bias"/device:CPU:0*
_output_shapes
 ђ
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_v_conv2d_7_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_26/DisableCopyOnReadDisableCopyOnRead0read_26_disablecopyonread_adam_m_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_26/ReadVariableOpReadVariableOp0read_26_disablecopyonread_adam_m_conv2d_8_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Е
Read_27/DisableCopyOnReadDisableCopyOnRead0read_27_disablecopyonread_adam_v_conv2d_8_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_27/ReadVariableOpReadVariableOp0read_27_disablecopyonread_adam_v_conv2d_8_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Г
Read_28/DisableCopyOnReadDisableCopyOnRead.read_28_disablecopyonread_adam_m_conv2d_8_bias"/device:CPU:0*
_output_shapes
 ђ
Read_28/ReadVariableOpReadVariableOp.read_28_disablecopyonread_adam_m_conv2d_8_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_29/DisableCopyOnReadDisableCopyOnRead.read_29_disablecopyonread_adam_v_conv2d_8_bias"/device:CPU:0*
_output_shapes
 ђ
Read_29/ReadVariableOpReadVariableOp.read_29_disablecopyonread_adam_v_conv2d_8_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: Е
Read_30/DisableCopyOnReadDisableCopyOnRead0read_30_disablecopyonread_adam_m_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_30/ReadVariableOpReadVariableOp0read_30_disablecopyonread_adam_m_conv2d_9_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Е
Read_31/DisableCopyOnReadDisableCopyOnRead0read_31_disablecopyonread_adam_v_conv2d_9_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_31/ReadVariableOpReadVariableOp0read_31_disablecopyonread_adam_v_conv2d_9_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Г
Read_32/DisableCopyOnReadDisableCopyOnRead.read_32_disablecopyonread_adam_m_conv2d_9_bias"/device:CPU:0*
_output_shapes
 ђ
Read_32/ReadVariableOpReadVariableOp.read_32_disablecopyonread_adam_m_conv2d_9_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_33/DisableCopyOnReadDisableCopyOnRead.read_33_disablecopyonread_adam_v_conv2d_9_bias"/device:CPU:0*
_output_shapes
 ђ
Read_33/ReadVariableOpReadVariableOp.read_33_disablecopyonread_adam_v_conv2d_9_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_34/DisableCopyOnReadDisableCopyOnRead1read_34_disablecopyonread_adam_m_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 ї
Read_34/ReadVariableOpReadVariableOp1read_34_disablecopyonread_adam_m_conv2d_10_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Ж
Read_35/DisableCopyOnReadDisableCopyOnRead1read_35_disablecopyonread_adam_v_conv2d_10_kernel"/device:CPU:0*
_output_shapes
 ї
Read_35/ReadVariableOpReadVariableOp1read_35_disablecopyonread_adam_v_conv2d_10_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Д
Read_36/DisableCopyOnReadDisableCopyOnRead/read_36_disablecopyonread_adam_m_conv2d_10_bias"/device:CPU:0*
_output_shapes
 ≠
Read_36/ReadVariableOpReadVariableOp/read_36_disablecopyonread_adam_m_conv2d_10_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
: Д
Read_37/DisableCopyOnReadDisableCopyOnRead/read_37_disablecopyonread_adam_v_conv2d_10_bias"/device:CPU:0*
_output_shapes
 ≠
Read_37/ReadVariableOpReadVariableOp/read_37_disablecopyonread_adam_v_conv2d_10_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_38/DisableCopyOnReadDisableCopyOnRead1read_38_disablecopyonread_adam_m_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 ї
Read_38/ReadVariableOpReadVariableOp1read_38_disablecopyonread_adam_m_conv2d_11_kernel^Read_38/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Ж
Read_39/DisableCopyOnReadDisableCopyOnRead1read_39_disablecopyonread_adam_v_conv2d_11_kernel"/device:CPU:0*
_output_shapes
 ї
Read_39/ReadVariableOpReadVariableOp1read_39_disablecopyonread_adam_v_conv2d_11_kernel^Read_39/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:  *
dtype0w
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:  m
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*&
_output_shapes
:  Д
Read_40/DisableCopyOnReadDisableCopyOnRead/read_40_disablecopyonread_adam_m_conv2d_11_bias"/device:CPU:0*
_output_shapes
 ≠
Read_40/ReadVariableOpReadVariableOp/read_40_disablecopyonread_adam_m_conv2d_11_bias^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: Д
Read_41/DisableCopyOnReadDisableCopyOnRead/read_41_disablecopyonread_adam_v_conv2d_11_bias"/device:CPU:0*
_output_shapes
 ≠
Read_41/ReadVariableOpReadVariableOp/read_41_disablecopyonread_adam_v_conv2d_11_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: Д
Read_42/DisableCopyOnReadDisableCopyOnRead/read_42_disablecopyonread_adam_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_42/ReadVariableOpReadVariableOp/read_42_disablecopyonread_adam_m_dense_2_kernel^Read_42/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
†М*
dtype0q
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
†Мg
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0* 
_output_shapes
:
†МД
Read_43/DisableCopyOnReadDisableCopyOnRead/read_43_disablecopyonread_adam_v_dense_2_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_43/ReadVariableOpReadVariableOp/read_43_disablecopyonread_adam_v_dense_2_kernel^Read_43/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
†М*
dtype0q
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
†Мg
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0* 
_output_shapes
:
†МВ
Read_44/DisableCopyOnReadDisableCopyOnRead-read_44_disablecopyonread_adam_m_dense_2_bias"/device:CPU:0*
_output_shapes
 ђ
Read_44/ReadVariableOpReadVariableOp-read_44_disablecopyonread_adam_m_dense_2_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:М*
dtype0l
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Мb
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:МВ
Read_45/DisableCopyOnReadDisableCopyOnRead-read_45_disablecopyonread_adam_v_dense_2_bias"/device:CPU:0*
_output_shapes
 ђ
Read_45/ReadVariableOpReadVariableOp-read_45_disablecopyonread_adam_v_dense_2_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:М*
dtype0l
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Мb
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:МД
Read_46/DisableCopyOnReadDisableCopyOnRead/read_46_disablecopyonread_adam_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_46/ReadVariableOpReadVariableOp/read_46_disablecopyonread_adam_m_dense_3_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	МF*
dtype0p
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	МFf
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:	МFД
Read_47/DisableCopyOnReadDisableCopyOnRead/read_47_disablecopyonread_adam_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_47/ReadVariableOpReadVariableOp/read_47_disablecopyonread_adam_v_dense_3_kernel^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	МF*
dtype0p
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	МFf
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:	МFВ
Read_48/DisableCopyOnReadDisableCopyOnRead-read_48_disablecopyonread_adam_m_dense_3_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_48/ReadVariableOpReadVariableOp-read_48_disablecopyonread_adam_m_dense_3_bias^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:F*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Fa
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:FВ
Read_49/DisableCopyOnReadDisableCopyOnRead-read_49_disablecopyonread_adam_v_dense_3_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_49/ReadVariableOpReadVariableOp-read_49_disablecopyonread_adam_v_dense_3_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:F*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Fa
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:Fv
Read_50/DisableCopyOnReadDisableCopyOnRead!read_50_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_50/ReadVariableOpReadVariableOp!read_50_disablecopyonread_total_1^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_51/DisableCopyOnReadDisableCopyOnRead!read_51_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_51/ReadVariableOpReadVariableOp!read_51_disablecopyonread_count_1^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_52/DisableCopyOnReadDisableCopyOnReadread_52_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_52/ReadVariableOpReadVariableOpread_52_disablecopyonread_total^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_53/DisableCopyOnReadDisableCopyOnReadread_53_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_53/ReadVariableOpReadVariableOpread_53_disablecopyonread_count^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
: ∞
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*ў
valueѕBћ7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH№
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*Б
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ±
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *E
dtypes;
927	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_108Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_109IdentityIdentity_108:output:0^NoOp*
T0*
_output_shapes
: Ќ
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_109Identity_109:output:0*(
_construction_contextkEagerRuntime*Г
_input_shapesr
p: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=79

_output_shapes
: 

_user_specified_nameConst:%6!

_user_specified_namecount:%5!

_user_specified_nametotal:'4#
!
_user_specified_name	count_1:'3#
!
_user_specified_name	total_1:32/
-
_user_specified_nameAdam/v/dense_3/bias:31/
-
_user_specified_nameAdam/m/dense_3/bias:501
/
_user_specified_nameAdam/v/dense_3/kernel:5/1
/
_user_specified_nameAdam/m/dense_3/kernel:3./
-
_user_specified_nameAdam/v/dense_2/bias:3-/
-
_user_specified_nameAdam/m/dense_2/bias:5,1
/
_user_specified_nameAdam/v/dense_2/kernel:5+1
/
_user_specified_nameAdam/m/dense_2/kernel:5*1
/
_user_specified_nameAdam/v/conv2d_11/bias:5)1
/
_user_specified_nameAdam/m/conv2d_11/bias:7(3
1
_user_specified_nameAdam/v/conv2d_11/kernel:7'3
1
_user_specified_nameAdam/m/conv2d_11/kernel:5&1
/
_user_specified_nameAdam/v/conv2d_10/bias:5%1
/
_user_specified_nameAdam/m/conv2d_10/bias:7$3
1
_user_specified_nameAdam/v/conv2d_10/kernel:7#3
1
_user_specified_nameAdam/m/conv2d_10/kernel:4"0
.
_user_specified_nameAdam/v/conv2d_9/bias:4!0
.
_user_specified_nameAdam/m/conv2d_9/bias:6 2
0
_user_specified_nameAdam/v/conv2d_9/kernel:62
0
_user_specified_nameAdam/m/conv2d_9/kernel:40
.
_user_specified_nameAdam/v/conv2d_8/bias:40
.
_user_specified_nameAdam/m/conv2d_8/bias:62
0
_user_specified_nameAdam/v/conv2d_8/kernel:62
0
_user_specified_nameAdam/m/conv2d_8/kernel:40
.
_user_specified_nameAdam/v/conv2d_7/bias:40
.
_user_specified_nameAdam/m/conv2d_7/bias:62
0
_user_specified_nameAdam/v/conv2d_7/kernel:62
0
_user_specified_nameAdam/m/conv2d_7/kernel:40
.
_user_specified_nameAdam/v/conv2d_6/bias:40
.
_user_specified_nameAdam/m/conv2d_6/bias:62
0
_user_specified_nameAdam/v/conv2d_6/kernel:62
0
_user_specified_nameAdam/m/conv2d_6/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_2/bias:.*
(
_user_specified_namedense_2/kernel:.*
(
_user_specified_nameconv2d_11/bias:0,
*
_user_specified_nameconv2d_11/kernel:.
*
(
_user_specified_nameconv2d_10/bias:0	,
*
_user_specified_nameconv2d_10/kernel:-)
'
_user_specified_nameconv2d_9/bias:/+
)
_user_specified_nameconv2d_9/kernel:-)
'
_user_specified_nameconv2d_8/bias:/+
)
_user_specified_nameconv2d_8/kernel:-)
'
_user_specified_nameconv2d_7/bias:/+
)
_user_specified_nameconv2d_7/kernel:-)
'
_user_specified_nameconv2d_6/bias:/+
)
_user_specified_nameconv2d_6/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
У
g
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_29543

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_30037

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
п
Ч
'__inference_dense_2_layer_call_fn_30147

inputs
unknown:
†М
	unknown_0:	М
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€М*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_29681p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€М<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30143:%!

_user_specified_name30141:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
’

ц
B__inference_dense_2_layer_call_and_return_conditional_losses_30158

inputs2
matmul_readvariableop_resource:
†М.
biasadd_readvariableop_resource:	М
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
†М*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Мs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:М*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€МQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Мb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€МS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29513

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_30127

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Є
L
0__inference_max_pooling2d_10_layer_call_fn_30092

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_29543Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ф
Ю
)__inference_conv2d_10_layer_call_fn_30076

inputs!
unknown:  
	unknown_0: 
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_29640w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30072:%!

_user_specified_name30070:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_30007

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29503

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29523

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ѓ
E
)__inference_flatten_1_layer_call_fn_30132

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_29669a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€†"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€ :W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
г
P
,__inference_sequential_1_layer_call_fn_29483
resizing_input
identityƒ
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_29472j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:a ]
1
_output_shapes
:€€€€€€€€€аа
(
_user_specified_nameresizing_input
≤
ь
C__inference_conv2d_8_layer_call_and_return_conditional_losses_30027

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€88 *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€88 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€88 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€88 S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€88 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€88 
 
_user_specified_nameinputs
“

ф
B__inference_dense_3_layer_call_and_return_conditional_losses_29697

inputs1
matmul_readvariableop_resource:	МF-
biasadd_readvariableop_resource:F
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	МF*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Fr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:F*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€FV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€F`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€FS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€М: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€М
 
_user_specified_nameinputs
г
P
,__inference_sequential_1_layer_call_fn_29488
resizing_input
identityƒ
PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_29478j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:a ]
1
_output_shapes
:€€€€€€€€€аа
(
_user_specified_nameresizing_input
еч
ю!
!__inference__traced_restore_30719
file_prefix:
 assignvariableop_conv2d_6_kernel: .
 assignvariableop_1_conv2d_6_bias: <
"assignvariableop_2_conv2d_7_kernel:  .
 assignvariableop_3_conv2d_7_bias: <
"assignvariableop_4_conv2d_8_kernel:  .
 assignvariableop_5_conv2d_8_bias: <
"assignvariableop_6_conv2d_9_kernel:  .
 assignvariableop_7_conv2d_9_bias: =
#assignvariableop_8_conv2d_10_kernel:  /
!assignvariableop_9_conv2d_10_bias: >
$assignvariableop_10_conv2d_11_kernel:  0
"assignvariableop_11_conv2d_11_bias: 6
"assignvariableop_12_dense_2_kernel:
†М/
 assignvariableop_13_dense_2_bias:	М5
"assignvariableop_14_dense_3_kernel:	МF.
 assignvariableop_15_dense_3_bias:F'
assignvariableop_16_iteration:	 +
!assignvariableop_17_learning_rate: D
*assignvariableop_18_adam_m_conv2d_6_kernel: D
*assignvariableop_19_adam_v_conv2d_6_kernel: 6
(assignvariableop_20_adam_m_conv2d_6_bias: 6
(assignvariableop_21_adam_v_conv2d_6_bias: D
*assignvariableop_22_adam_m_conv2d_7_kernel:  D
*assignvariableop_23_adam_v_conv2d_7_kernel:  6
(assignvariableop_24_adam_m_conv2d_7_bias: 6
(assignvariableop_25_adam_v_conv2d_7_bias: D
*assignvariableop_26_adam_m_conv2d_8_kernel:  D
*assignvariableop_27_adam_v_conv2d_8_kernel:  6
(assignvariableop_28_adam_m_conv2d_8_bias: 6
(assignvariableop_29_adam_v_conv2d_8_bias: D
*assignvariableop_30_adam_m_conv2d_9_kernel:  D
*assignvariableop_31_adam_v_conv2d_9_kernel:  6
(assignvariableop_32_adam_m_conv2d_9_bias: 6
(assignvariableop_33_adam_v_conv2d_9_bias: E
+assignvariableop_34_adam_m_conv2d_10_kernel:  E
+assignvariableop_35_adam_v_conv2d_10_kernel:  7
)assignvariableop_36_adam_m_conv2d_10_bias: 7
)assignvariableop_37_adam_v_conv2d_10_bias: E
+assignvariableop_38_adam_m_conv2d_11_kernel:  E
+assignvariableop_39_adam_v_conv2d_11_kernel:  7
)assignvariableop_40_adam_m_conv2d_11_bias: 7
)assignvariableop_41_adam_v_conv2d_11_bias: =
)assignvariableop_42_adam_m_dense_2_kernel:
†М=
)assignvariableop_43_adam_v_dense_2_kernel:
†М6
'assignvariableop_44_adam_m_dense_2_bias:	М6
'assignvariableop_45_adam_v_dense_2_bias:	М<
)assignvariableop_46_adam_m_dense_3_kernel:	МF<
)assignvariableop_47_adam_v_dense_3_kernel:	МF5
'assignvariableop_48_adam_m_dense_3_bias:F5
'assignvariableop_49_adam_v_dense_3_bias:F%
assignvariableop_50_total_1: %
assignvariableop_51_count_1: #
assignvariableop_52_total: #
assignvariableop_53_count: 
identity_55ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9≥
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*ў
valueѕBћ7B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHя
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*Б
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B і
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*т
_output_shapesя
№:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOpAssignVariableOp assignvariableop_conv2d_6_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_6_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_7_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_7_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_8_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_8_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_9_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_9_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_10_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_10_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_11_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_11_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_3_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_3_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_16AssignVariableOpassignvariableop_16_iterationIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_17AssignVariableOp!assignvariableop_17_learning_rateIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_m_conv2d_6_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_v_conv2d_6_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_m_conv2d_6_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_21AssignVariableOp(assignvariableop_21_adam_v_conv2d_6_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_conv2d_7_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_conv2d_7_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_conv2d_7_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_conv2d_7_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_26AssignVariableOp*assignvariableop_26_adam_m_conv2d_8_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_v_conv2d_8_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_m_conv2d_8_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_v_conv2d_8_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_m_conv2d_9_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_v_conv2d_9_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_m_conv2d_9_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_v_conv2d_9_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_m_conv2d_10_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_v_conv2d_10_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_m_conv2d_10_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_v_conv2d_10_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_m_conv2d_11_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_v_conv2d_11_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_m_conv2d_11_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_v_conv2d_11_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_m_dense_2_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_v_dense_2_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_m_dense_2_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_45AssignVariableOp'assignvariableop_45_adam_v_dense_2_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_46AssignVariableOp)assignvariableop_46_adam_m_dense_3_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_v_dense_3_kernelIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_m_dense_3_biasIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_v_dense_3_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_50AssignVariableOpassignvariableop_50_total_1Identity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_51AssignVariableOpassignvariableop_51_count_1Identity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_52AssignVariableOpassignvariableop_52_totalIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_53AssignVariableOpassignvariableop_53_countIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 у	
Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_55IdentityIdentity_54:output:0^NoOp_1*
T0*
_output_shapes
: Љ	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_55Identity_55:output:0*(
_construction_contextkEagerRuntime*Б
_input_shapesp
n: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%6!

_user_specified_namecount:%5!

_user_specified_nametotal:'4#
!
_user_specified_name	count_1:'3#
!
_user_specified_name	total_1:32/
-
_user_specified_nameAdam/v/dense_3/bias:31/
-
_user_specified_nameAdam/m/dense_3/bias:501
/
_user_specified_nameAdam/v/dense_3/kernel:5/1
/
_user_specified_nameAdam/m/dense_3/kernel:3./
-
_user_specified_nameAdam/v/dense_2/bias:3-/
-
_user_specified_nameAdam/m/dense_2/bias:5,1
/
_user_specified_nameAdam/v/dense_2/kernel:5+1
/
_user_specified_nameAdam/m/dense_2/kernel:5*1
/
_user_specified_nameAdam/v/conv2d_11/bias:5)1
/
_user_specified_nameAdam/m/conv2d_11/bias:7(3
1
_user_specified_nameAdam/v/conv2d_11/kernel:7'3
1
_user_specified_nameAdam/m/conv2d_11/kernel:5&1
/
_user_specified_nameAdam/v/conv2d_10/bias:5%1
/
_user_specified_nameAdam/m/conv2d_10/bias:7$3
1
_user_specified_nameAdam/v/conv2d_10/kernel:7#3
1
_user_specified_nameAdam/m/conv2d_10/kernel:4"0
.
_user_specified_nameAdam/v/conv2d_9/bias:4!0
.
_user_specified_nameAdam/m/conv2d_9/bias:6 2
0
_user_specified_nameAdam/v/conv2d_9/kernel:62
0
_user_specified_nameAdam/m/conv2d_9/kernel:40
.
_user_specified_nameAdam/v/conv2d_8/bias:40
.
_user_specified_nameAdam/m/conv2d_8/bias:62
0
_user_specified_nameAdam/v/conv2d_8/kernel:62
0
_user_specified_nameAdam/m/conv2d_8/kernel:40
.
_user_specified_nameAdam/v/conv2d_7/bias:40
.
_user_specified_nameAdam/m/conv2d_7/bias:62
0
_user_specified_nameAdam/v/conv2d_7/kernel:62
0
_user_specified_nameAdam/m/conv2d_7/kernel:40
.
_user_specified_nameAdam/v/conv2d_6/bias:40
.
_user_specified_nameAdam/m/conv2d_6/bias:62
0
_user_specified_nameAdam/v/conv2d_6/kernel:62
0
_user_specified_nameAdam/m/conv2d_6/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:,(
&
_user_specified_namedense_3/bias:.*
(
_user_specified_namedense_3/kernel:,(
&
_user_specified_namedense_2/bias:.*
(
_user_specified_namedense_2/kernel:.*
(
_user_specified_nameconv2d_11/bias:0,
*
_user_specified_nameconv2d_11/kernel:.
*
(
_user_specified_nameconv2d_10/bias:0	,
*
_user_specified_nameconv2d_10/kernel:-)
'
_user_specified_nameconv2d_9/bias:/+
)
_user_specified_nameconv2d_9/kernel:-)
'
_user_specified_nameconv2d_8/bias:/+
)
_user_specified_nameconv2d_8/kernel:-)
'
_user_specified_nameconv2d_7/bias:/+
)
_user_specified_nameconv2d_7/kernel:-)
'
_user_specified_nameconv2d_6/bias:/+
)
_user_specified_nameconv2d_6/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
≤
ь
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29589

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€pp *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€pp X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€pp i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€pp S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€pp : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€pp 
 
_user_specified_nameinputs
Т
Э
(__inference_conv2d_8_layer_call_fn_30016

inputs!
unknown:  
	unknown_0: 
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€88 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_29606w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€88 <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€88 : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name30012:%!

_user_specified_name30010:W S
/
_output_shapes
:€€€€€€€€€88 
 
_user_specified_nameinputs
≤
ь
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29997

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€pp *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€pp X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€pp i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€pp S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€pp : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€pp 
 
_user_specified_nameinputs
ґ
K
/__inference_max_pooling2d_7_layer_call_fn_30002

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29513Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
№
џ
/__inference_dog_breed_model_layer_call_fn_29830
sequential_1_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:  
	unknown_8: #
	unknown_9:  

unknown_10: 

unknown_11:
†М

unknown_12:	М

unknown_13:	МF

unknown_14:F
identityИҐStatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallsequential_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F*2
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_dog_breed_model_layer_call_and_return_conditional_losses_29756o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€F<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€аа: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29826:%!

_user_specified_name29824:%!

_user_specified_name29822:%!

_user_specified_name29820:%!

_user_specified_name29818:%!

_user_specified_name29816:%
!

_user_specified_name29814:%	!

_user_specified_name29812:%!

_user_specified_name29810:%!

_user_specified_name29808:%!

_user_specified_name29806:%!

_user_specified_name29804:%!

_user_specified_name29802:%!

_user_specified_name29800:%!

_user_specified_name29798:%!

_user_specified_name29796:e a
1
_output_shapes
:€€€€€€€€€аа
,
_user_specified_namesequential_1_input
Ъ
Э
(__inference_conv2d_6_layer_call_fn_29956

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29572y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name29952:%!

_user_specified_name29950:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
“

ф
B__inference_dense_3_layer_call_and_return_conditional_losses_30178

inputs1
matmul_readvariableop_resource:	МF-
biasadd_readvariableop_resource:F
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	МF*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Fr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:F*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€FV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€F`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€FS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€М: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€М
 
_user_specified_nameinputs
ц
`
D__inference_rescaling_layer_call_and_return_conditional_losses_30202

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
о
k
G__inference_sequential_1_layer_call_and_return_conditional_losses_29472
resizing_input
identity…
resizing/PartitionedCallPartitionedCallresizing_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_resizing_layer_call_and_return_conditional_losses_29460ё
rescaling/PartitionedCallPartitionedCall!resizing/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_rescaling_layer_call_and_return_conditional_losses_29469t
IdentityIdentity"rescaling/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:a ]
1
_output_shapes
:€€€€€€€€€аа
(
_user_specified_nameresizing_input
≥
э
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30087

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
«F
Ѕ
J__inference_dog_breed_model_layer_call_and_return_conditional_losses_29704
sequential_1_input(
conv2d_6_29573: 
conv2d_6_29575: (
conv2d_7_29590:  
conv2d_7_29592: (
conv2d_8_29607:  
conv2d_8_29609: (
conv2d_9_29624:  
conv2d_9_29626: )
conv2d_10_29641:  
conv2d_10_29643: )
conv2d_11_29658:  
conv2d_11_29660: !
dense_2_29682:
†М
dense_2_29684:	М 
dense_3_29698:	МF
dense_3_29700:F
identityИҐ!conv2d_10/StatefulPartitionedCallҐ!conv2d_11/StatefulPartitionedCallҐ conv2d_6/StatefulPartitionedCallҐ conv2d_7/StatefulPartitionedCallҐ conv2d_8/StatefulPartitionedCallҐ conv2d_9/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCall’
sequential_1/PartitionedCallPartitionedCallsequential_1_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_29472Ц
 conv2d_6/StatefulPartitionedCallStatefulPartitionedCall%sequential_1/PartitionedCall:output:0conv2d_6_29573conv2d_6_29575*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29572р
max_pooling2d_6/PartitionedCallPartitionedCall)conv2d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€pp * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29503Ч
 conv2d_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_6/PartitionedCall:output:0conv2d_7_29590conv2d_7_29592*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€pp *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29589р
max_pooling2d_7/PartitionedCallPartitionedCall)conv2d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€88 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_29513Ч
 conv2d_8/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_7/PartitionedCall:output:0conv2d_8_29607conv2d_8_29609*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€88 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_8_layer_call_and_return_conditional_losses_29606р
max_pooling2d_8/PartitionedCallPartitionedCall)conv2d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_29523Ч
 conv2d_9/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_8/PartitionedCall:output:0conv2d_9_29624conv2d_9_29626*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_9_layer_call_and_return_conditional_losses_29623р
max_pooling2d_9/PartitionedCallPartitionedCall)conv2d_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_29533Ы
!conv2d_10/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_9/PartitionedCall:output:0conv2d_10_29641conv2d_10_29643*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_10_layer_call_and_return_conditional_losses_29640у
 max_pooling2d_10/PartitionedCallPartitionedCall*conv2d_10/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_29543Ь
!conv2d_11/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_10/PartitionedCall:output:0conv2d_11_29658conv2d_11_29660*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv2d_11_layer_call_and_return_conditional_losses_29657у
 max_pooling2d_11/PartitionedCallPartitionedCall*conv2d_11/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_29553Ё
flatten_1/PartitionedCallPartitionedCall)max_pooling2d_11/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_29669Ж
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_29682dense_2_29684*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€М*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_29681Л
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_29698dense_3_29700*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_29697w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€FЇ
NoOpNoOp"^conv2d_10/StatefulPartitionedCall"^conv2d_11/StatefulPartitionedCall!^conv2d_6/StatefulPartitionedCall!^conv2d_7/StatefulPartitionedCall!^conv2d_8/StatefulPartitionedCall!^conv2d_9/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*P
_input_shapes?
=:€€€€€€€€€аа: : : : : : : : : : : : : : : : 2F
!conv2d_10/StatefulPartitionedCall!conv2d_10/StatefulPartitionedCall2F
!conv2d_11/StatefulPartitionedCall!conv2d_11/StatefulPartitionedCall2D
 conv2d_6/StatefulPartitionedCall conv2d_6/StatefulPartitionedCall2D
 conv2d_7/StatefulPartitionedCall conv2d_7/StatefulPartitionedCall2D
 conv2d_8/StatefulPartitionedCall conv2d_8/StatefulPartitionedCall2D
 conv2d_9/StatefulPartitionedCall conv2d_9/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:%!

_user_specified_name29700:%!

_user_specified_name29698:%!

_user_specified_name29684:%!

_user_specified_name29682:%!

_user_specified_name29660:%!

_user_specified_name29658:%
!

_user_specified_name29643:%	!

_user_specified_name29641:%!

_user_specified_name29626:%!

_user_specified_name29624:%!

_user_specified_name29609:%!

_user_specified_name29607:%!

_user_specified_name29592:%!

_user_specified_name29590:%!

_user_specified_name29575:%!

_user_specified_name29573:e a
1
_output_shapes
:€€€€€€€€€аа
,
_user_specified_namesequential_1_input
Є
L
0__inference_max_pooling2d_11_layer_call_fn_30122

inputs
identityў
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_29553Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
’

ц
B__inference_dense_2_layer_call_and_return_conditional_losses_29681

inputs2
matmul_readvariableop_resource:
†М.
biasadd_readvariableop_resource:	М
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
†М*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Мs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:М*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€МQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Мb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€МS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs
≠
_
C__inference_resizing_layer_call_and_return_conditional_losses_29460

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Њ
ь
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29572

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€аа *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€аа Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€аа: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs"ІL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp* 
serving_defaultґ
[
sequential_1_inputE
$serving_default_sequential_1_input:0€€€€€€€€€аа;
dense_30
StatefulPartitionedCall:0€€€€€€€€€Ftensorflow/serving/predict:Џю
М
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
layer-10
layer_with_weights-5
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
ƒ
layer-0
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_sequential
Ё
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op"
_tf_keras_layer
•
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5__call__
*6&call_and_return_all_conditional_losses

7kernel
8bias
 9_jit_compiled_convolution_op"
_tf_keras_layer
•
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses

Fkernel
Gbias
 H_jit_compiled_convolution_op"
_tf_keras_layer
•
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses

Ukernel
Vbias
 W_jit_compiled_convolution_op"
_tf_keras_layer
•
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

dkernel
ebias
 f_jit_compiled_convolution_op"
_tf_keras_layer
•
g	variables
htrainable_variables
iregularization_losses
j	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

skernel
tbias
 u_jit_compiled_convolution_op"
_tf_keras_layer
•
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
І
|	variables
}trainable_variables
~regularization_losses
	keras_api
А__call__
+Б&call_and_return_all_conditional_losses"
_tf_keras_layer
√
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
Иkernel
	Йbias"
_tf_keras_layer
√
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Рkernel
	Сbias"
_tf_keras_layer
Ъ
(0
)1
72
83
F4
G5
U6
V7
d8
e9
s10
t11
И12
Й13
Р14
С15"
trackable_list_wrapper
Ъ
(0
)1
72
83
F4
G5
U6
V7
d8
e9
s10
t11
И12
Й13
Р14
С15"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
’
Чtrace_0
Шtrace_12Ъ
/__inference_dog_breed_model_layer_call_fn_29793
/__inference_dog_breed_model_layer_call_fn_29830µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЧtrace_0zШtrace_1
Л
Щtrace_0
Ъtrace_12–
J__inference_dog_breed_model_layer_call_and_return_conditional_losses_29704
J__inference_dog_breed_model_layer_call_and_return_conditional_losses_29756µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0zЪtrace_1
÷B”
 __inference__wrapped_model_29452sequential_1_input"Ш
С≤Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£
Ы
_variables
Ь_iterations
Э_learning_rate
Ю_index_dict
Я
_momentums
†_velocities
°_update_step_xla"
experimentalOptimizer
-
Ґserving_default"
signature_map
Ђ
£	variables
§trainable_variables
•regularization_losses
¶	keras_api
І__call__
+®&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
©	variables
™trainable_variables
Ђregularization_losses
ђ	keras_api
≠__call__
+Ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
ѕ
іtrace_0
µtrace_12Ф
,__inference_sequential_1_layer_call_fn_29483
,__inference_sequential_1_layer_call_fn_29488µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zіtrace_0zµtrace_1
Е
ґtrace_0
Јtrace_12 
G__inference_sequential_1_layer_call_and_return_conditional_losses_29472
G__inference_sequential_1_layer_call_and_return_conditional_losses_29478µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0zЈtrace_1
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
д
љtrace_02≈
(__inference_conv2d_6_layer_call_fn_29956Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0
€
Њtrace_02а
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29967Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЊtrace_0
):' 2conv2d_6/kernel
: 2conv2d_6/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
л
ƒtrace_02ћ
/__inference_max_pooling2d_6_layer_call_fn_29972Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zƒtrace_0
Ж
≈trace_02з
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29977Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≈trace_0
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
1	variables
2trainable_variables
3regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
д
Ћtrace_02≈
(__inference_conv2d_7_layer_call_fn_29986Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0
€
ћtrace_02а
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29997Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zћtrace_0
):'  2conv2d_7/kernel
: 2conv2d_7/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ќnon_trainable_variables
ќlayers
ѕmetrics
 –layer_regularization_losses
—layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
л
“trace_02ћ
/__inference_max_pooling2d_7_layer_call_fn_30002Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z“trace_0
Ж
”trace_02з
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_30007Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z”trace_0
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
‘non_trainable_variables
’layers
÷metrics
 „layer_regularization_losses
Ўlayer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
д
ўtrace_02≈
(__inference_conv2d_8_layer_call_fn_30016Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zўtrace_0
€
Џtrace_02а
C__inference_conv2d_8_layer_call_and_return_conditional_losses_30027Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЏtrace_0
):'  2conv2d_8/kernel
: 2conv2d_8/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
џnon_trainable_variables
№layers
Ёmetrics
 ёlayer_regularization_losses
яlayer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
л
аtrace_02ћ
/__inference_max_pooling2d_8_layer_call_fn_30032Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zаtrace_0
Ж
бtrace_02з
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_30037Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zбtrace_0
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
д
зtrace_02≈
(__inference_conv2d_9_layer_call_fn_30046Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zзtrace_0
€
иtrace_02а
C__inference_conv2d_9_layer_call_and_return_conditional_losses_30057Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zиtrace_0
):'  2conv2d_9/kernel
: 2conv2d_9/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
л
оtrace_02ћ
/__inference_max_pooling2d_9_layer_call_fn_30062Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zоtrace_0
Ж
пtrace_02з
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_30067Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zпtrace_0
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
е
хtrace_02∆
)__inference_conv2d_10_layer_call_fn_30076Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zхtrace_0
А
цtrace_02б
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30087Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zцtrace_0
*:(  2conv2d_10/kernel
: 2conv2d_10/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
g	variables
htrainable_variables
iregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
м
ьtrace_02Ќ
0__inference_max_pooling2d_10_layer_call_fn_30092Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zьtrace_0
З
эtrace_02и
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_30097Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zэtrace_0
.
s0
t1"
trackable_list_wrapper
.
s0
t1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
юnon_trainable_variables
€layers
Аmetrics
 Бlayer_regularization_losses
Вlayer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
е
Гtrace_02∆
)__inference_conv2d_11_layer_call_fn_30106Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zГtrace_0
А
Дtrace_02б
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30117Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zДtrace_0
*:(  2conv2d_11/kernel
: 2conv2d_11/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Еnon_trainable_variables
Жlayers
Зmetrics
 Иlayer_regularization_losses
Йlayer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
м
Кtrace_02Ќ
0__inference_max_pooling2d_11_layer_call_fn_30122Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zКtrace_0
З
Лtrace_02и
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_30127Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЛtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
|	variables
}trainable_variables
~regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
е
Сtrace_02∆
)__inference_flatten_1_layer_call_fn_30132Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zСtrace_0
А
Тtrace_02б
D__inference_flatten_1_layer_call_and_return_conditional_losses_30138Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zТtrace_0
0
И0
Й1"
trackable_list_wrapper
0
И0
Й1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
г
Шtrace_02ƒ
'__inference_dense_2_layer_call_fn_30147Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zШtrace_0
ю
Щtrace_02я
B__inference_dense_2_layer_call_and_return_conditional_losses_30158Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЩtrace_0
": 
†М2dense_2/kernel
:М2dense_2/bias
0
Р0
С1"
trackable_list_wrapper
0
Р0
С1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
г
Яtrace_02ƒ
'__inference_dense_3_layer_call_fn_30167Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЯtrace_0
ю
†trace_02я
B__inference_dense_3_layer_call_and_return_conditional_losses_30178Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z†trace_0
!:	МF2dense_3/kernel
:F2dense_3/bias
 "
trackable_list_wrapper
Ц
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
0
°0
Ґ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
щBц
/__inference_dog_breed_model_layer_call_fn_29793sequential_1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
/__inference_dog_breed_model_layer_call_fn_29830sequential_1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
J__inference_dog_breed_model_layer_call_and_return_conditional_losses_29704sequential_1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
J__inference_dog_breed_model_layer_call_and_return_conditional_losses_29756sequential_1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
њ
Ь0
£1
§2
•3
¶4
І5
®6
©7
™8
Ђ9
ђ10
≠11
Ѓ12
ѓ13
∞14
±15
≤16
≥17
і18
µ19
ґ20
Ј21
Є22
є23
Ї24
ї25
Љ26
љ27
Њ28
њ29
ј30
Ѕ31
¬32"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
¶
£0
•1
І2
©3
Ђ4
≠5
ѓ6
±7
≥8
µ9
Ј10
є11
ї12
љ13
њ14
Ѕ15"
trackable_list_wrapper
¶
§0
¶1
®2
™3
ђ4
Ѓ5
∞6
≤7
і8
ґ9
Є10
Ї11
Љ12
Њ13
ј14
¬15"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
еBв
#__inference_signature_wrapper_29947sequential_1_input"§
Э≤Щ
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 '

kwonlyargsЪ
jsequential_1_input
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
√non_trainable_variables
ƒlayers
≈metrics
 ∆layer_regularization_losses
«layer_metrics
£	variables
§trainable_variables
•regularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
д
»trace_02≈
(__inference_resizing_layer_call_fn_30183Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z»trace_0
€
…trace_02а
C__inference_resizing_layer_call_and_return_conditional_losses_30189Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z…trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
 non_trainable_variables
Ћlayers
ћmetrics
 Ќlayer_regularization_losses
ќlayer_metrics
©	variables
™trainable_variables
Ђregularization_losses
≠__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
е
ѕtrace_02∆
)__inference_rescaling_layer_call_fn_30194Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zѕtrace_0
А
–trace_02б
D__inference_rescaling_layer_call_and_return_conditional_losses_30202Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z–trace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тBп
,__inference_sequential_1_layer_call_fn_29483resizing_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
тBп
,__inference_sequential_1_layer_call_fn_29488resizing_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
НBК
G__inference_sequential_1_layer_call_and_return_conditional_losses_29472resizing_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
НBК
G__inference_sequential_1_layer_call_and_return_conditional_losses_29478resizing_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv2d_6_layer_call_fn_29956inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29967inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўB÷
/__inference_max_pooling2d_6_layer_call_fn_29972inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29977inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv2d_7_layer_call_fn_29986inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29997inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўB÷
/__inference_max_pooling2d_7_layer_call_fn_30002inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_30007inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv2d_8_layer_call_fn_30016inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv2d_8_layer_call_and_return_conditional_losses_30027inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўB÷
/__inference_max_pooling2d_8_layer_call_fn_30032inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_30037inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_conv2d_9_layer_call_fn_30046inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_conv2d_9_layer_call_and_return_conditional_losses_30057inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ўB÷
/__inference_max_pooling2d_9_layer_call_fn_30062inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
фBс
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_30067inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_conv2d_10_layer_call_fn_30076inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30087inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЏB„
0__inference_max_pooling2d_10_layer_call_fn_30092inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_30097inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_conv2d_11_layer_call_fn_30106inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30117inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЏB„
0__inference_max_pooling2d_11_layer_call_fn_30122inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
хBт
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_30127inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_flatten_1_layer_call_fn_30132inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_flatten_1_layer_call_and_return_conditional_losses_30138inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
—Bќ
'__inference_dense_2_layer_call_fn_30147inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
мBй
B__inference_dense_2_layer_call_and_return_conditional_losses_30158inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
—Bќ
'__inference_dense_3_layer_call_fn_30167inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
мBй
B__inference_dense_3_layer_call_and_return_conditional_losses_30178inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
—	variables
“	keras_api

”total

‘count"
_tf_keras_metric
c
’	variables
÷	keras_api

„total

Ўcount
ў
_fn_kwargs"
_tf_keras_metric
.:, 2Adam/m/conv2d_6/kernel
.:, 2Adam/v/conv2d_6/kernel
 : 2Adam/m/conv2d_6/bias
 : 2Adam/v/conv2d_6/bias
.:,  2Adam/m/conv2d_7/kernel
.:,  2Adam/v/conv2d_7/kernel
 : 2Adam/m/conv2d_7/bias
 : 2Adam/v/conv2d_7/bias
.:,  2Adam/m/conv2d_8/kernel
.:,  2Adam/v/conv2d_8/kernel
 : 2Adam/m/conv2d_8/bias
 : 2Adam/v/conv2d_8/bias
.:,  2Adam/m/conv2d_9/kernel
.:,  2Adam/v/conv2d_9/kernel
 : 2Adam/m/conv2d_9/bias
 : 2Adam/v/conv2d_9/bias
/:-  2Adam/m/conv2d_10/kernel
/:-  2Adam/v/conv2d_10/kernel
!: 2Adam/m/conv2d_10/bias
!: 2Adam/v/conv2d_10/bias
/:-  2Adam/m/conv2d_11/kernel
/:-  2Adam/v/conv2d_11/kernel
!: 2Adam/m/conv2d_11/bias
!: 2Adam/v/conv2d_11/bias
':%
†М2Adam/m/dense_2/kernel
':%
†М2Adam/v/dense_2/kernel
 :М2Adam/m/dense_2/bias
 :М2Adam/v/dense_2/bias
&:$	МF2Adam/m/dense_3/kernel
&:$	МF2Adam/v/dense_3/kernel
:F2Adam/m/dense_3/bias
:F2Adam/v/dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
“Bѕ
(__inference_resizing_layer_call_fn_30183inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_resizing_layer_call_and_return_conditional_losses_30189inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
”B–
)__inference_rescaling_layer_call_fn_30194inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
оBл
D__inference_rescaling_layer_call_and_return_conditional_losses_30202inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
0
”0
‘1"
trackable_list_wrapper
.
—	variables"
_generic_user_object
:  (2total
:  (2count
0
„0
Ў1"
trackable_list_wrapper
.
’	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperµ
 __inference__wrapped_model_29452Р()78FGUVdestИЙРСEҐB
;Ґ8
6К3
sequential_1_input€€€€€€€€€аа
™ "1™.
,
dense_3!К
dense_3€€€€€€€€€Fї
D__inference_conv2d_10_layer_call_and_return_conditional_losses_30087sde7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€ 
Ъ Х
)__inference_conv2d_10_layer_call_fn_30076hde7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ ")К&
unknown€€€€€€€€€ ї
D__inference_conv2d_11_layer_call_and_return_conditional_losses_30117sst7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€ 
Ъ Х
)__inference_conv2d_11_layer_call_fn_30106hst7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ ")К&
unknown€€€€€€€€€ Њ
C__inference_conv2d_6_layer_call_and_return_conditional_losses_29967w()9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аа 
Ъ Ш
(__inference_conv2d_6_layer_call_fn_29956l()9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "+К(
unknown€€€€€€€€€аа Ї
C__inference_conv2d_7_layer_call_and_return_conditional_losses_29997s787Ґ4
-Ґ*
(К%
inputs€€€€€€€€€pp 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€pp 
Ъ Ф
(__inference_conv2d_7_layer_call_fn_29986h787Ґ4
-Ґ*
(К%
inputs€€€€€€€€€pp 
™ ")К&
unknown€€€€€€€€€pp Ї
C__inference_conv2d_8_layer_call_and_return_conditional_losses_30027sFG7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€88 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€88 
Ъ Ф
(__inference_conv2d_8_layer_call_fn_30016hFG7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€88 
™ ")К&
unknown€€€€€€€€€88 Ї
C__inference_conv2d_9_layer_call_and_return_conditional_losses_30057sUV7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€ 
Ъ Ф
(__inference_conv2d_9_layer_call_fn_30046hUV7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ ")К&
unknown€€€€€€€€€ ≠
B__inference_dense_2_layer_call_and_return_conditional_losses_30158gИЙ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "-Ґ*
#К 
tensor_0€€€€€€€€€М
Ъ З
'__inference_dense_2_layer_call_fn_30147\ИЙ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ ""К
unknown€€€€€€€€€Мђ
B__inference_dense_3_layer_call_and_return_conditional_losses_30178fРС0Ґ-
&Ґ#
!К
inputs€€€€€€€€€М
™ ",Ґ)
"К
tensor_0€€€€€€€€€F
Ъ Ж
'__inference_dense_3_layer_call_fn_30167[РС0Ґ-
&Ґ#
!К
inputs€€€€€€€€€М
™ "!К
unknown€€€€€€€€€Fв
J__inference_dog_breed_model_layer_call_and_return_conditional_losses_29704У()78FGUVdestИЙРСMҐJ
CҐ@
6К3
sequential_1_input€€€€€€€€€аа
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€F
Ъ в
J__inference_dog_breed_model_layer_call_and_return_conditional_losses_29756У()78FGUVdestИЙРСMҐJ
CҐ@
6К3
sequential_1_input€€€€€€€€€аа
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€F
Ъ Љ
/__inference_dog_breed_model_layer_call_fn_29793И()78FGUVdestИЙРСMҐJ
CҐ@
6К3
sequential_1_input€€€€€€€€€аа
p

 
™ "!К
unknown€€€€€€€€€FЉ
/__inference_dog_breed_model_layer_call_fn_29830И()78FGUVdestИЙРСMҐJ
CҐ@
6К3
sequential_1_input€€€€€€€€€аа
p 

 
™ "!К
unknown€€€€€€€€€F∞
D__inference_flatten_1_layer_call_and_return_conditional_losses_30138h7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ К
)__inference_flatten_1_layer_call_fn_30132]7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ ""К
unknown€€€€€€€€€†х
K__inference_max_pooling2d_10_layer_call_and_return_conditional_losses_30097•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ѕ
0__inference_max_pooling2d_10_layer_call_fn_30092ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€х
K__inference_max_pooling2d_11_layer_call_and_return_conditional_losses_30127•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ѕ
0__inference_max_pooling2d_11_layer_call_fn_30122ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
J__inference_max_pooling2d_6_layer_call_and_return_conditional_losses_29977•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ќ
/__inference_max_pooling2d_6_layer_call_fn_29972ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
J__inference_max_pooling2d_7_layer_call_and_return_conditional_losses_30007•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ќ
/__inference_max_pooling2d_7_layer_call_fn_30002ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
J__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_30037•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ќ
/__inference_max_pooling2d_8_layer_call_fn_30032ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ф
J__inference_max_pooling2d_9_layer_call_and_return_conditional_losses_30067•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ќ
/__inference_max_pooling2d_9_layer_call_fn_30062ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€ї
D__inference_rescaling_layer_call_and_return_conditional_losses_30202s9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аа
Ъ Х
)__inference_rescaling_layer_call_fn_30194h9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "+К(
unknown€€€€€€€€€ааЇ
C__inference_resizing_layer_call_and_return_conditional_losses_30189s9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аа
Ъ Ф
(__inference_resizing_layer_call_fn_30183h9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "+К(
unknown€€€€€€€€€ааѕ
G__inference_sequential_1_layer_call_and_return_conditional_losses_29472ГIҐF
?Ґ<
2К/
resizing_input€€€€€€€€€аа
p

 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аа
Ъ ѕ
G__inference_sequential_1_layer_call_and_return_conditional_losses_29478ГIҐF
?Ґ<
2К/
resizing_input€€€€€€€€€аа
p 

 
™ "6Ґ3
,К)
tensor_0€€€€€€€€€аа
Ъ ®
,__inference_sequential_1_layer_call_fn_29483xIҐF
?Ґ<
2К/
resizing_input€€€€€€€€€аа
p

 
™ "+К(
unknown€€€€€€€€€аа®
,__inference_sequential_1_layer_call_fn_29488xIҐF
?Ґ<
2К/
resizing_input€€€€€€€€€аа
p 

 
™ "+К(
unknown€€€€€€€€€ааќ
#__inference_signature_wrapper_29947¶()78FGUVdestИЙРС[ҐX
Ґ 
Q™N
L
sequential_1_input6К3
sequential_1_input€€€€€€€€€аа"1™.
,
dense_3!К
dense_3€€€€€€€€€F