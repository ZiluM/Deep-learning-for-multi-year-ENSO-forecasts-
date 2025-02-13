��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
�
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.6.02v2.6.0-rc2-32-g919f693420e8��
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:2*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:2*
dtype0
�
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:22*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:2*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22* 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:22*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
:2*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�**
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	�**
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
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

NoOpNoOp
�%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�%
value�%B�$ B�$
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		optimizer

trainable_variables
	variables
regularization_losses
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
 regularization_losses
!	variables
"	keras_api
h

#kernel
$bias
%trainable_variables
&regularization_losses
'	variables
(	keras_api
R
)trainable_variables
*regularization_losses
+	variables
,	keras_api
h

-kernel
.bias
/trainable_variables
0regularization_losses
1	variables
2	keras_api
h

3kernel
4bias
5trainable_variables
6regularization_losses
7	variables
8	keras_api
6
9iter
	:decay
;learning_rate
<momentum
F
0
1
2
3
#4
$5
-6
.7
38
49
F
0
1
2
3
#4
$5
-6
.7
38
49
 
�

trainable_variables
=layer_regularization_losses
	variables
regularization_losses
>layer_metrics

?layers
@metrics
Anon_trainable_variables
 
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
Blayer_regularization_losses
regularization_losses
	variables
Clayer_metrics

Dlayers
Emetrics
Fnon_trainable_variables
 
 
 
�
trainable_variables
Glayer_regularization_losses
regularization_losses
	variables
Hlayer_metrics

Ilayers
Jmetrics
Knon_trainable_variables
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
Llayer_regularization_losses
regularization_losses
	variables
Mlayer_metrics

Nlayers
Ometrics
Pnon_trainable_variables
 
 
 
�
trainable_variables
Qlayer_regularization_losses
 regularization_losses
!	variables
Rlayer_metrics

Slayers
Tmetrics
Unon_trainable_variables
[Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
 

#0
$1
�
%trainable_variables
Vlayer_regularization_losses
&regularization_losses
'	variables
Wlayer_metrics

Xlayers
Ymetrics
Znon_trainable_variables
 
 
 
�
)trainable_variables
[layer_regularization_losses
*regularization_losses
+	variables
\layer_metrics

]layers
^metrics
_non_trainable_variables
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

-0
.1
 

-0
.1
�
/trainable_variables
`layer_regularization_losses
0regularization_losses
1	variables
alayer_metrics

blayers
cmetrics
dnon_trainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

30
41
 

30
41
�
5trainable_variables
elayer_regularization_losses
6regularization_losses
7	variables
flayer_metrics

glayers
hmetrics
inon_trainable_variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
 
8
0
1
2
3
4
5
6
7

j0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	ktotal
	lcount
m	variables
n	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

k0
l1

m	variables
�
serving_default_conv2d_inputPlaceholder*/
_output_shapes
:���������H*
dtype0*$
shape:���������H
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference_signature_wrapper_2435
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *&
f!R
__inference__traced_save_2790
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcount*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *)
f$R"
 __inference__traced_restore_2848��
�
B
&__inference_flatten_layer_call_fn_2680

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_21082
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������*2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2:W S
/
_output_shapes
:���������2
 
_user_specified_nameinputs
�6
�
>__inference_ENSO_layer_call_and_return_conditional_losses_2477

inputs?
%conv2d_conv2d_readvariableop_resource:24
&conv2d_biasadd_readvariableop_resource:2A
'conv2d_1_conv2d_readvariableop_resource:226
(conv2d_1_biasadd_readvariableop_resource:2A
'conv2d_2_conv2d_readvariableop_resource:226
(conv2d_2_biasadd_readvariableop_resource:27
$dense_matmul_readvariableop_resource:	�*3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H2*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H22
conv2d/BiasAddu
conv2d/TanhTanhconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������H22
conv2d/Tanh�
max_pooling2d/MaxPoolMaxPoolconv2d/Tanh:y:0*/
_output_shapes
:���������$2*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������$2*
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������$22
conv2d_1/BiasAdd{
conv2d_1/TanhTanhconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������$22
conv2d_1/Tanh�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Tanh:y:0*/
_output_shapes
:���������2*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22
conv2d_2/BiasAdd{
conv2d_2/TanhTanhconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������22
conv2d_2/Tanho
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
flatten/Const�
flatten/ReshapeReshapeconv2d_2/Tanh:y:0flatten/Const:output:0*
T0*(
_output_shapes
:����������*2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�**
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/BiasAddj

dense/TanhTanhdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2

dense/Tanh�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldense/Tanh:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
J
.__inference_max_pooling2d_1_layer_call_fn_2644

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_20192
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_2_layer_call_and_return_conditional_losses_2660

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������2
 
_user_specified_nameinputs
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_2675

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������*2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������*2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2:W S
/
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
$__inference_dense_layer_call_fn_2700

inputs
unknown:	�*
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_21212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������*: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������*
 
_user_specified_nameinputs
�
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2083

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������$2:W S
/
_output_shapes
:���������$2
 
_user_specified_nameinputs
�

�
A__inference_dense_1_layer_call_and_return_conditional_losses_2710

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
B__inference_conv2d_1_layer_call_and_return_conditional_losses_2073

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������$2*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������$22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������$22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������$22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������$2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������$2
 
_user_specified_nameinputs
�%
�
>__inference_ENSO_layer_call_and_return_conditional_losses_2292

inputs%
conv2d_2263:2
conv2d_2265:2'
conv2d_1_2269:22
conv2d_1_2271:2'
conv2d_2_2275:22
conv2d_2_2277:2

dense_2281:	�*

dense_2283:
dense_1_2286:
dense_1_2288:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2263conv2d_2265*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_20502 
conv2d/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������$2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_20602
max_pooling2d/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_2269conv2d_1_2271*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������$2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_20732"
 conv2d_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_20832!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_2275conv2d_2_2277*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_20962"
 conv2d_2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_21082
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_2281
dense_2283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_21212
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_2286dense_1_2288*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_21372!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�

�
#__inference_ENSO_layer_call_fn_2340
conv2d_input!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	�*
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *G
fBR@
>__inference_ENSO_layer_call_and_return_conditional_losses_22922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:���������H
&
_user_specified_nameconv2d_input
�&
�
>__inference_ENSO_layer_call_and_return_conditional_losses_2404
conv2d_input%
conv2d_2375:2
conv2d_2377:2'
conv2d_1_2381:22
conv2d_1_2383:2'
conv2d_2_2387:22
conv2d_2_2389:2

dense_2393:	�*

dense_2395:
dense_1_2398:
dense_1_2400:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_2375conv2d_2377*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_20502 
conv2d/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������$2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_20602
max_pooling2d/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_2381conv2d_1_2383*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������$2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_20732"
 conv2d_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_20832!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_2387conv2d_2_2389*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_20962"
 conv2d_2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_21082
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_2393
dense_2395*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_21212
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_2398dense_1_2400*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_21372!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
/
_output_shapes
:���������H
&
_user_specified_nameconv2d_input
�
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_2594

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�

�
?__inference_dense_layer_call_and_return_conditional_losses_2691

inputs1
matmul_readvariableop_resource:	�*-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�**
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������*
 
_user_specified_nameinputs
�
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_2599

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������$2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������H2:W S
/
_output_shapes
:���������H2
 
_user_specified_nameinputs
�
�
'__inference_conv2d_2_layer_call_fn_2669

inputs!
unknown:22
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_20962
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������2
 
_user_specified_nameinputs
�
]
A__inference_flatten_layer_call_and_return_conditional_losses_2108

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������*2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������*2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������2:W S
/
_output_shapes
:���������2
 
_user_specified_nameinputs
�

�
A__inference_dense_1_layer_call_and_return_conditional_losses_2137

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_dense_1_layer_call_fn_2719

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_21372
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
?__inference_dense_layer_call_and_return_conditional_losses_2121

inputs1
matmul_readvariableop_resource:	�*-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�**
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������2
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������*
 
_user_specified_nameinputs
�&
�
>__inference_ENSO_layer_call_and_return_conditional_losses_2372
conv2d_input%
conv2d_2343:2
conv2d_2345:2'
conv2d_1_2349:22
conv2d_1_2351:2'
conv2d_2_2355:22
conv2d_2_2357:2

dense_2361:	�*

dense_2363:
dense_1_2366:
dense_1_2368:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallconv2d_inputconv2d_2343conv2d_2345*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_20502 
conv2d/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������$2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_20602
max_pooling2d/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_2349conv2d_1_2351*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������$2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_20732"
 conv2d_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_20832!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_2355conv2d_2_2357*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_20962"
 conv2d_2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_21082
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_2361
dense_2363*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_21212
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_2366dense_1_2368*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_21372!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:] Y
/
_output_shapes
:���������H
&
_user_specified_nameconv2d_input
�
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2639

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������$2:W S
/
_output_shapes
:���������$2
 
_user_specified_nameinputs
�
H
,__inference_max_pooling2d_layer_call_fn_2609

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������$2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_20602
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������H2:W S
/
_output_shapes
:���������H2
 
_user_specified_nameinputs
�<
�
__inference__wrapped_model_1988
conv2d_inputD
*enso_conv2d_conv2d_readvariableop_resource:29
+enso_conv2d_biasadd_readvariableop_resource:2F
,enso_conv2d_1_conv2d_readvariableop_resource:22;
-enso_conv2d_1_biasadd_readvariableop_resource:2F
,enso_conv2d_2_conv2d_readvariableop_resource:22;
-enso_conv2d_2_biasadd_readvariableop_resource:2<
)enso_dense_matmul_readvariableop_resource:	�*8
*enso_dense_biasadd_readvariableop_resource:=
+enso_dense_1_matmul_readvariableop_resource::
,enso_dense_1_biasadd_readvariableop_resource:
identity��"ENSO/conv2d/BiasAdd/ReadVariableOp�!ENSO/conv2d/Conv2D/ReadVariableOp�$ENSO/conv2d_1/BiasAdd/ReadVariableOp�#ENSO/conv2d_1/Conv2D/ReadVariableOp�$ENSO/conv2d_2/BiasAdd/ReadVariableOp�#ENSO/conv2d_2/Conv2D/ReadVariableOp�!ENSO/dense/BiasAdd/ReadVariableOp� ENSO/dense/MatMul/ReadVariableOp�#ENSO/dense_1/BiasAdd/ReadVariableOp�"ENSO/dense_1/MatMul/ReadVariableOp�
!ENSO/conv2d/Conv2D/ReadVariableOpReadVariableOp*enso_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02#
!ENSO/conv2d/Conv2D/ReadVariableOp�
ENSO/conv2d/Conv2DConv2Dconv2d_input)ENSO/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H2*
paddingSAME*
strides
2
ENSO/conv2d/Conv2D�
"ENSO/conv2d/BiasAdd/ReadVariableOpReadVariableOp+enso_conv2d_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02$
"ENSO/conv2d/BiasAdd/ReadVariableOp�
ENSO/conv2d/BiasAddBiasAddENSO/conv2d/Conv2D:output:0*ENSO/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H22
ENSO/conv2d/BiasAdd�
ENSO/conv2d/TanhTanhENSO/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������H22
ENSO/conv2d/Tanh�
ENSO/max_pooling2d/MaxPoolMaxPoolENSO/conv2d/Tanh:y:0*/
_output_shapes
:���������$2*
ksize
*
paddingVALID*
strides
2
ENSO/max_pooling2d/MaxPool�
#ENSO/conv2d_1/Conv2D/ReadVariableOpReadVariableOp,enso_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02%
#ENSO/conv2d_1/Conv2D/ReadVariableOp�
ENSO/conv2d_1/Conv2DConv2D#ENSO/max_pooling2d/MaxPool:output:0+ENSO/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������$2*
paddingSAME*
strides
2
ENSO/conv2d_1/Conv2D�
$ENSO/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp-enso_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02&
$ENSO/conv2d_1/BiasAdd/ReadVariableOp�
ENSO/conv2d_1/BiasAddBiasAddENSO/conv2d_1/Conv2D:output:0,ENSO/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������$22
ENSO/conv2d_1/BiasAdd�
ENSO/conv2d_1/TanhTanhENSO/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������$22
ENSO/conv2d_1/Tanh�
ENSO/max_pooling2d_1/MaxPoolMaxPoolENSO/conv2d_1/Tanh:y:0*/
_output_shapes
:���������2*
ksize
*
paddingVALID*
strides
2
ENSO/max_pooling2d_1/MaxPool�
#ENSO/conv2d_2/Conv2D/ReadVariableOpReadVariableOp,enso_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02%
#ENSO/conv2d_2/Conv2D/ReadVariableOp�
ENSO/conv2d_2/Conv2DConv2D%ENSO/max_pooling2d_1/MaxPool:output:0+ENSO/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
2
ENSO/conv2d_2/Conv2D�
$ENSO/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp-enso_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02&
$ENSO/conv2d_2/BiasAdd/ReadVariableOp�
ENSO/conv2d_2/BiasAddBiasAddENSO/conv2d_2/Conv2D:output:0,ENSO/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22
ENSO/conv2d_2/BiasAdd�
ENSO/conv2d_2/TanhTanhENSO/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������22
ENSO/conv2d_2/Tanhy
ENSO/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
ENSO/flatten/Const�
ENSO/flatten/ReshapeReshapeENSO/conv2d_2/Tanh:y:0ENSO/flatten/Const:output:0*
T0*(
_output_shapes
:����������*2
ENSO/flatten/Reshape�
 ENSO/dense/MatMul/ReadVariableOpReadVariableOp)enso_dense_matmul_readvariableop_resource*
_output_shapes
:	�**
dtype02"
 ENSO/dense/MatMul/ReadVariableOp�
ENSO/dense/MatMulMatMulENSO/flatten/Reshape:output:0(ENSO/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
ENSO/dense/MatMul�
!ENSO/dense/BiasAdd/ReadVariableOpReadVariableOp*enso_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!ENSO/dense/BiasAdd/ReadVariableOp�
ENSO/dense/BiasAddBiasAddENSO/dense/MatMul:product:0)ENSO/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
ENSO/dense/BiasAddy
ENSO/dense/TanhTanhENSO/dense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
ENSO/dense/Tanh�
"ENSO/dense_1/MatMul/ReadVariableOpReadVariableOp+enso_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02$
"ENSO/dense_1/MatMul/ReadVariableOp�
ENSO/dense_1/MatMulMatMulENSO/dense/Tanh:y:0*ENSO/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
ENSO/dense_1/MatMul�
#ENSO/dense_1/BiasAdd/ReadVariableOpReadVariableOp,enso_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#ENSO/dense_1/BiasAdd/ReadVariableOp�
ENSO/dense_1/BiasAddBiasAddENSO/dense_1/MatMul:product:0+ENSO/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
ENSO/dense_1/BiasAddx
IdentityIdentityENSO/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp#^ENSO/conv2d/BiasAdd/ReadVariableOp"^ENSO/conv2d/Conv2D/ReadVariableOp%^ENSO/conv2d_1/BiasAdd/ReadVariableOp$^ENSO/conv2d_1/Conv2D/ReadVariableOp%^ENSO/conv2d_2/BiasAdd/ReadVariableOp$^ENSO/conv2d_2/Conv2D/ReadVariableOp"^ENSO/dense/BiasAdd/ReadVariableOp!^ENSO/dense/MatMul/ReadVariableOp$^ENSO/dense_1/BiasAdd/ReadVariableOp#^ENSO/dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 2H
"ENSO/conv2d/BiasAdd/ReadVariableOp"ENSO/conv2d/BiasAdd/ReadVariableOp2F
!ENSO/conv2d/Conv2D/ReadVariableOp!ENSO/conv2d/Conv2D/ReadVariableOp2L
$ENSO/conv2d_1/BiasAdd/ReadVariableOp$ENSO/conv2d_1/BiasAdd/ReadVariableOp2J
#ENSO/conv2d_1/Conv2D/ReadVariableOp#ENSO/conv2d_1/Conv2D/ReadVariableOp2L
$ENSO/conv2d_2/BiasAdd/ReadVariableOp$ENSO/conv2d_2/BiasAdd/ReadVariableOp2J
#ENSO/conv2d_2/Conv2D/ReadVariableOp#ENSO/conv2d_2/Conv2D/ReadVariableOp2F
!ENSO/dense/BiasAdd/ReadVariableOp!ENSO/dense/BiasAdd/ReadVariableOp2D
 ENSO/dense/MatMul/ReadVariableOp ENSO/dense/MatMul/ReadVariableOp2J
#ENSO/dense_1/BiasAdd/ReadVariableOp#ENSO/dense_1/BiasAdd/ReadVariableOp2H
"ENSO/dense_1/MatMul/ReadVariableOp"ENSO/dense_1/MatMul/ReadVariableOp:] Y
/
_output_shapes
:���������H
&
_user_specified_nameconv2d_input
�
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_2060

inputs
identity�
MaxPoolMaxPoolinputs*/
_output_shapes
:���������$2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:���������$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������H2:W S
/
_output_shapes
:���������H2
 
_user_specified_nameinputs
�

�
"__inference_signature_wrapper_2435
conv2d_input!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	�*
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__wrapped_model_19882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:���������H
&
_user_specified_nameconv2d_input
�
�
B__inference_conv2d_1_layer_call_and_return_conditional_losses_2620

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������$2*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������$22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������$22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������$22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������$2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������$2
 
_user_specified_nameinputs
�*
�
__inference__traced_save_2790
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*�
_input_shapes{
y: :2:2:22:2:22:2:	�*:::: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:2: 

_output_shapes
:2:,(
&
_output_shapes
:22: 

_output_shapes
:2:,(
&
_output_shapes
:22: 

_output_shapes
:2:%!

_output_shapes
:	�*: 

_output_shapes
::$	 

_output_shapes

:: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�
�
'__inference_conv2d_1_layer_call_fn_2629

inputs!
unknown:22
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������$2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_20732
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������$22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������$2: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������$2
 
_user_specified_nameinputs
�
�
@__inference_conv2d_layer_call_and_return_conditional_losses_2050

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H2*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������H22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������H22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�

�
#__inference_ENSO_layer_call_fn_2544

inputs!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	�*
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *G
fBR@
>__inference_ENSO_layer_call_and_return_conditional_losses_21442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�

�
#__inference_ENSO_layer_call_fn_2167
conv2d_input!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	�*
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallconv2d_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *G
fBR@
>__inference_ENSO_layer_call_and_return_conditional_losses_21442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:���������H
&
_user_specified_nameconv2d_input
�6
�
>__inference_ENSO_layer_call_and_return_conditional_losses_2519

inputs?
%conv2d_conv2d_readvariableop_resource:24
&conv2d_biasadd_readvariableop_resource:2A
'conv2d_1_conv2d_readvariableop_resource:226
(conv2d_1_biasadd_readvariableop_resource:2A
'conv2d_2_conv2d_readvariableop_resource:226
(conv2d_2_biasadd_readvariableop_resource:27
$dense_matmul_readvariableop_resource:	�*3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity��conv2d/BiasAdd/ReadVariableOp�conv2d/Conv2D/ReadVariableOp�conv2d_1/BiasAdd/ReadVariableOp�conv2d_1/Conv2D/ReadVariableOp�conv2d_2/BiasAdd/ReadVariableOp�conv2d_2/Conv2D/ReadVariableOp�dense/BiasAdd/ReadVariableOp�dense/MatMul/ReadVariableOp�dense_1/BiasAdd/ReadVariableOp�dense_1/MatMul/ReadVariableOp�
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02
conv2d/Conv2D/ReadVariableOp�
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H2*
paddingSAME*
strides
2
conv2d/Conv2D�
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
conv2d/BiasAdd/ReadVariableOp�
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H22
conv2d/BiasAddu
conv2d/TanhTanhconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������H22
conv2d/Tanh�
max_pooling2d/MaxPoolMaxPoolconv2d/Tanh:y:0*/
_output_shapes
:���������$2*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPool�
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_1/Conv2D/ReadVariableOp�
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������$2*
paddingSAME*
strides
2
conv2d_1/Conv2D�
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp�
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������$22
conv2d_1/BiasAdd{
conv2d_1/TanhTanhconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������$22
conv2d_1/Tanh�
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Tanh:y:0*/
_output_shapes
:���������2*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPool�
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_2/Conv2D/ReadVariableOp�
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
2
conv2d_2/Conv2D�
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_2/BiasAdd/ReadVariableOp�
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22
conv2d_2/BiasAdd{
conv2d_2/TanhTanhconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:���������22
conv2d_2/Tanho
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
flatten/Const�
flatten/ReshapeReshapeconv2d_2/Tanh:y:0flatten/Const:output:0*
T0*(
_output_shapes
:����������*2
flatten/Reshape�
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	�**
dtype02
dense/MatMul/ReadVariableOp�
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/MatMul�
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
dense/BiasAdd/ReadVariableOp�
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense/BiasAddj

dense/TanhTanhdense/BiasAdd:output:0*
T0*'
_output_shapes
:���������2

dense/Tanh�
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype02
dense_1/MatMul/ReadVariableOp�
dense_1/MatMulMatMuldense/Tanh:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/MatMul�
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp�
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_1/BiasAdds
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�%
�
>__inference_ENSO_layer_call_and_return_conditional_losses_2144

inputs%
conv2d_2051:2
conv2d_2053:2'
conv2d_1_2074:22
conv2d_1_2076:2'
conv2d_2_2097:22
conv2d_2_2099:2

dense_2122:	�*

dense_2124:
dense_1_2138:
dense_1_2140:
identity��conv2d/StatefulPartitionedCall� conv2d_1/StatefulPartitionedCall� conv2d_2/StatefulPartitionedCall�dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
conv2d/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_2051conv2d_2053*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_20502 
conv2d/StatefulPartitionedCall�
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������$2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_20602
max_pooling2d/PartitionedCall�
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_2074conv2d_1_2076*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������$2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_20732"
 conv2d_1/StatefulPartitionedCall�
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_20832!
max_pooling2d_1/PartitionedCall�
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_2097conv2d_2_2099*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_20962"
 conv2d_2/StatefulPartitionedCall�
flatten/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_21082
flatten/PartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_2122
dense_2124*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_21212
dense/StatefulPartitionedCall�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_2138dense_1_2140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_21372!
dense_1/StatefulPartitionedCall�
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identity�
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1997

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2634

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
@__inference_conv2d_layer_call_and_return_conditional_losses_2580

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H2*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������H22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������H22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������H22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������H: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�E
�	
 __inference__traced_restore_2848
file_prefix8
assignvariableop_conv2d_kernel:2,
assignvariableop_1_conv2d_bias:2<
"assignvariableop_2_conv2d_1_kernel:22.
 assignvariableop_3_conv2d_1_bias:2<
"assignvariableop_4_conv2d_2_kernel:22.
 assignvariableop_5_conv2d_2_bias:22
assignvariableop_6_dense_kernel:	�*+
assignvariableop_7_dense_bias:3
!assignvariableop_8_dense_1_kernel:-
assignvariableop_9_dense_1_bias:&
assignvariableop_10_sgd_iter:	 '
assignvariableop_11_sgd_decay: /
%assignvariableop_12_sgd_learning_rate: *
 assignvariableop_13_sgd_momentum: #
assignvariableop_14_total: #
assignvariableop_15_count: 
identity_17��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_sgd_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp%assignvariableop_12_sgd_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp assignvariableop_13_sgd_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16f
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_17�
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
B__inference_conv2d_2_layer_call_and_return_conditional_losses_2096

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOp�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2*
paddingSAME*
strides
2
Conv2D�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:���������22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:���������22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:���������2
 
_user_specified_nameinputs
�
H
,__inference_max_pooling2d_layer_call_fn_2604

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_19972
PartitionedCall�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
%__inference_conv2d_layer_call_fn_2589

inputs!
unknown:2
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������H2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_20502
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������H22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������H: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�

�
#__inference_ENSO_layer_call_fn_2569

inputs!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	�*
	unknown_6:
	unknown_7:
	unknown_8:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8� *G
fBR@
>__inference_ENSO_layer_call_and_return_conditional_losses_22922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:���������H: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:���������H
 
_user_specified_nameinputs
�
e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2019

inputs
identity�
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
2	
MaxPool�
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
J
.__inference_max_pooling2d_1_layer_call_fn_2649

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_20832
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:���������22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������$2:W S
/
_output_shapes
:���������$2
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
M
conv2d_input=
serving_default_conv2d_input:0���������H;
dense_10
StatefulPartitionedCall:0���������tensorflow/serving/predict:ȏ
�
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
		optimizer

trainable_variables
	variables
regularization_losses
	keras_api

signatures
*o&call_and_return_all_conditional_losses
p_default_save_signature
q__call__"
_tf_keras_sequential
�

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*r&call_and_return_all_conditional_losses
s__call__"
_tf_keras_layer
�
trainable_variables
regularization_losses
	variables
	keras_api
*t&call_and_return_all_conditional_losses
u__call__"
_tf_keras_layer
�

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
*v&call_and_return_all_conditional_losses
w__call__"
_tf_keras_layer
�
trainable_variables
 regularization_losses
!	variables
"	keras_api
*x&call_and_return_all_conditional_losses
y__call__"
_tf_keras_layer
�

#kernel
$bias
%trainable_variables
&regularization_losses
'	variables
(	keras_api
*z&call_and_return_all_conditional_losses
{__call__"
_tf_keras_layer
�
)trainable_variables
*regularization_losses
+	variables
,	keras_api
*|&call_and_return_all_conditional_losses
}__call__"
_tf_keras_layer
�

-kernel
.bias
/trainable_variables
0regularization_losses
1	variables
2	keras_api
*~&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
�

3kernel
4bias
5trainable_variables
6regularization_losses
7	variables
8	keras_api
+�&call_and_return_all_conditional_losses
�__call__"
_tf_keras_layer
I
9iter
	:decay
;learning_rate
<momentum"
	optimizer
f
0
1
2
3
#4
$5
-6
.7
38
49"
trackable_list_wrapper
f
0
1
2
3
#4
$5
-6
.7
38
49"
trackable_list_wrapper
 "
trackable_list_wrapper
�

trainable_variables
=layer_regularization_losses
	variables
regularization_losses
>layer_metrics

?layers
@metrics
Anon_trainable_variables
q__call__
p_default_save_signature
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
':%22conv2d/kernel
:22conv2d/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
Blayer_regularization_losses
regularization_losses
	variables
Clayer_metrics

Dlayers
Emetrics
Fnon_trainable_variables
s__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
trainable_variables
Glayer_regularization_losses
regularization_losses
	variables
Hlayer_metrics

Ilayers
Jmetrics
Knon_trainable_variables
u__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
):'222conv2d_1/kernel
:22conv2d_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
Llayer_regularization_losses
regularization_losses
	variables
Mlayer_metrics

Nlayers
Ometrics
Pnon_trainable_variables
w__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
trainable_variables
Qlayer_regularization_losses
 regularization_losses
!	variables
Rlayer_metrics

Slayers
Tmetrics
Unon_trainable_variables
y__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
):'222conv2d_2/kernel
:22conv2d_2/bias
.
#0
$1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
�
%trainable_variables
Vlayer_regularization_losses
&regularization_losses
'	variables
Wlayer_metrics

Xlayers
Ymetrics
Znon_trainable_variables
{__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
)trainable_variables
[layer_regularization_losses
*regularization_losses
+	variables
\layer_metrics

]layers
^metrics
_non_trainable_variables
}__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
:	�*2dense/kernel
:2
dense/bias
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
�
/trainable_variables
`layer_regularization_losses
0regularization_losses
1	variables
alayer_metrics

blayers
cmetrics
dnon_trainable_variables
__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
 :2dense_1/kernel
:2dense_1/bias
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
�
5trainable_variables
elayer_regularization_losses
6regularization_losses
7	variables
flayer_metrics

glayers
hmetrics
inon_trainable_variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
'
j0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
N
	ktotal
	lcount
m	variables
n	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
k0
l1"
trackable_list_wrapper
-
m	variables"
_generic_user_object
�2�
>__inference_ENSO_layer_call_and_return_conditional_losses_2477
>__inference_ENSO_layer_call_and_return_conditional_losses_2519
>__inference_ENSO_layer_call_and_return_conditional_losses_2372
>__inference_ENSO_layer_call_and_return_conditional_losses_2404�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
__inference__wrapped_model_1988conv2d_input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
#__inference_ENSO_layer_call_fn_2167
#__inference_ENSO_layer_call_fn_2544
#__inference_ENSO_layer_call_fn_2569
#__inference_ENSO_layer_call_fn_2340�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
@__inference_conv2d_layer_call_and_return_conditional_losses_2580�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
%__inference_conv2d_layer_call_fn_2589�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_2594
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_2599�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
,__inference_max_pooling2d_layer_call_fn_2604
,__inference_max_pooling2d_layer_call_fn_2609�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv2d_1_layer_call_and_return_conditional_losses_2620�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv2d_1_layer_call_fn_2629�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2634
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2639�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
.__inference_max_pooling2d_1_layer_call_fn_2644
.__inference_max_pooling2d_1_layer_call_fn_2649�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_conv2d_2_layer_call_and_return_conditional_losses_2660�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
'__inference_conv2d_2_layer_call_fn_2669�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_flatten_layer_call_and_return_conditional_losses_2675�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_flatten_layer_call_fn_2680�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
?__inference_dense_layer_call_and_return_conditional_losses_2691�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
$__inference_dense_layer_call_fn_2700�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
A__inference_dense_1_layer_call_and_return_conditional_losses_2710�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
&__inference_dense_1_layer_call_fn_2719�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
"__inference_signature_wrapper_2435conv2d_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
>__inference_ENSO_layer_call_and_return_conditional_losses_2372z
#$-.34E�B
;�8
.�+
conv2d_input���������H
p 

 
� "%�"
�
0���������
� �
>__inference_ENSO_layer_call_and_return_conditional_losses_2404z
#$-.34E�B
;�8
.�+
conv2d_input���������H
p

 
� "%�"
�
0���������
� �
>__inference_ENSO_layer_call_and_return_conditional_losses_2477t
#$-.34?�<
5�2
(�%
inputs���������H
p 

 
� "%�"
�
0���������
� �
>__inference_ENSO_layer_call_and_return_conditional_losses_2519t
#$-.34?�<
5�2
(�%
inputs���������H
p

 
� "%�"
�
0���������
� �
#__inference_ENSO_layer_call_fn_2167m
#$-.34E�B
;�8
.�+
conv2d_input���������H
p 

 
� "�����������
#__inference_ENSO_layer_call_fn_2340m
#$-.34E�B
;�8
.�+
conv2d_input���������H
p

 
� "�����������
#__inference_ENSO_layer_call_fn_2544g
#$-.34?�<
5�2
(�%
inputs���������H
p 

 
� "�����������
#__inference_ENSO_layer_call_fn_2569g
#$-.34?�<
5�2
(�%
inputs���������H
p

 
� "�����������
__inference__wrapped_model_1988~
#$-.34=�:
3�0
.�+
conv2d_input���������H
� "1�.
,
dense_1!�
dense_1����������
B__inference_conv2d_1_layer_call_and_return_conditional_losses_2620l7�4
-�*
(�%
inputs���������$2
� "-�*
#� 
0���������$2
� �
'__inference_conv2d_1_layer_call_fn_2629_7�4
-�*
(�%
inputs���������$2
� " ����������$2�
B__inference_conv2d_2_layer_call_and_return_conditional_losses_2660l#$7�4
-�*
(�%
inputs���������2
� "-�*
#� 
0���������2
� �
'__inference_conv2d_2_layer_call_fn_2669_#$7�4
-�*
(�%
inputs���������2
� " ����������2�
@__inference_conv2d_layer_call_and_return_conditional_losses_2580l7�4
-�*
(�%
inputs���������H
� "-�*
#� 
0���������H2
� �
%__inference_conv2d_layer_call_fn_2589_7�4
-�*
(�%
inputs���������H
� " ����������H2�
A__inference_dense_1_layer_call_and_return_conditional_losses_2710\34/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� y
&__inference_dense_1_layer_call_fn_2719O34/�,
%�"
 �
inputs���������
� "�����������
?__inference_dense_layer_call_and_return_conditional_losses_2691]-.0�-
&�#
!�
inputs����������*
� "%�"
�
0���������
� x
$__inference_dense_layer_call_fn_2700P-.0�-
&�#
!�
inputs����������*
� "�����������
A__inference_flatten_layer_call_and_return_conditional_losses_2675a7�4
-�*
(�%
inputs���������2
� "&�#
�
0����������*
� ~
&__inference_flatten_layer_call_fn_2680T7�4
-�*
(�%
inputs���������2
� "�����������*�
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2634�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_2639h7�4
-�*
(�%
inputs���������$2
� "-�*
#� 
0���������2
� �
.__inference_max_pooling2d_1_layer_call_fn_2644�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
.__inference_max_pooling2d_1_layer_call_fn_2649[7�4
-�*
(�%
inputs���������$2
� " ����������2�
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_2594�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_2599h7�4
-�*
(�%
inputs���������H2
� "-�*
#� 
0���������$2
� �
,__inference_max_pooling2d_layer_call_fn_2604�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
,__inference_max_pooling2d_layer_call_fn_2609[7�4
-�*
(�%
inputs���������H2
� " ����������$2�
"__inference_signature_wrapper_2435�
#$-.34M�J
� 
C�@
>
conv2d_input.�+
conv2d_input���������H"1�.
,
dense_1!�
dense_1���������