єЭ
ы
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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

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
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
О
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8бЈ

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:2* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:2*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:2*
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
:22*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:2*
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:22* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:22*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:2*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	*2*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:2*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:2*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
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
й%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*%
value%B% B%
л
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

	variables
trainable_variables
regularization_losses
	keras_api

signatures
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
 	variables
!trainable_variables
"	keras_api
h

#kernel
$bias
%regularization_losses
&	variables
'trainable_variables
(	keras_api
R
)regularization_losses
*	variables
+trainable_variables
,	keras_api
h

-kernel
.bias
/regularization_losses
0	variables
1trainable_variables
2	keras_api
h

3kernel
4bias
5regularization_losses
6	variables
7trainable_variables
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
­

=layers
>non_trainable_variables
?layer_regularization_losses

	variables
@metrics
Alayer_metrics
trainable_variables
regularization_losses
 
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses

Blayers
Clayer_regularization_losses
	variables
Dmetrics
Elayer_metrics
trainable_variables
Fnon_trainable_variables
 
 
 
­
regularization_losses

Glayers
Hlayer_regularization_losses
	variables
Imetrics
Jlayer_metrics
trainable_variables
Knon_trainable_variables
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses

Llayers
Mlayer_regularization_losses
	variables
Nmetrics
Olayer_metrics
trainable_variables
Pnon_trainable_variables
 
 
 
­
regularization_losses

Qlayers
Rlayer_regularization_losses
 	variables
Smetrics
Tlayer_metrics
!trainable_variables
Unon_trainable_variables
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

#0
$1

#0
$1
­
%regularization_losses

Vlayers
Wlayer_regularization_losses
&	variables
Xmetrics
Ylayer_metrics
'trainable_variables
Znon_trainable_variables
 
 
 
­
)regularization_losses

[layers
\layer_regularization_losses
*	variables
]metrics
^layer_metrics
+trainable_variables
_non_trainable_variables
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

-0
.1

-0
.1
­
/regularization_losses

`layers
alayer_regularization_losses
0	variables
bmetrics
clayer_metrics
1trainable_variables
dnon_trainable_variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

30
41

30
41
­
5regularization_losses

elayers
flayer_regularization_losses
6	variables
gmetrics
hlayer_metrics
7trainable_variables
inon_trainable_variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
8
0
1
2
3
4
5
6
7
 
 
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

serving_default_conv2d_3_inputPlaceholder*/
_output_shapes
:џџџџџџџџџH*
dtype0*$
shape:џџџџџџџџџH
ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv2d_3_inputconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference_signature_wrapper_3323
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ь
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
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
GPU2*0J 8 *&
f!R
__inference__traced_save_3678

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcount*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_restore_3736Дж
о
ћ
B__inference_conv2d_3_layer_call_and_return_conditional_losses_2938

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџH2*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџH22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџH22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџH22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
М
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_2948

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ$2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџH2:W S
/
_output_shapes
:џџџџџџџџџH2
 
_user_specified_nameinputs
љ


#__inference_ENSO_layer_call_fn_3055
conv2d_3_input!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	*2
	unknown_6:2
	unknown_7:2
	unknown_8:
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_ENSO_layer_call_and_return_conditional_losses_30322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџH
(
_user_specified_nameconv2d_3_input
М
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2971

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ$2:W S
/
_output_shapes
:џџџџџџџџџ$2
 
_user_specified_nameinputs
Љ
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_2885

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ


#__inference_ENSO_layer_call_fn_3228
conv2d_3_input!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	*2
	unknown_6:2
	unknown_7:2
	unknown_8:
identityЂStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_ENSO_layer_call_and_return_conditional_losses_31802
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџH
(
_user_specified_nameconv2d_3_input
о
ћ
B__inference_conv2d_5_layer_call_and_return_conditional_losses_3557

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Ѓ

ђ
A__inference_dense_2_layer_call_and_return_conditional_losses_3607

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
=
Щ
__inference__wrapped_model_2876
conv2d_3_inputF
,enso_conv2d_3_conv2d_readvariableop_resource:2;
-enso_conv2d_3_biasadd_readvariableop_resource:2F
,enso_conv2d_4_conv2d_readvariableop_resource:22;
-enso_conv2d_4_biasadd_readvariableop_resource:2F
,enso_conv2d_5_conv2d_readvariableop_resource:22;
-enso_conv2d_5_biasadd_readvariableop_resource:2>
+enso_dense_1_matmul_readvariableop_resource:	*2:
,enso_dense_1_biasadd_readvariableop_resource:2=
+enso_dense_2_matmul_readvariableop_resource:2:
,enso_dense_2_biasadd_readvariableop_resource:
identityЂ$ENSO/conv2d_3/BiasAdd/ReadVariableOpЂ#ENSO/conv2d_3/Conv2D/ReadVariableOpЂ$ENSO/conv2d_4/BiasAdd/ReadVariableOpЂ#ENSO/conv2d_4/Conv2D/ReadVariableOpЂ$ENSO/conv2d_5/BiasAdd/ReadVariableOpЂ#ENSO/conv2d_5/Conv2D/ReadVariableOpЂ#ENSO/dense_1/BiasAdd/ReadVariableOpЂ"ENSO/dense_1/MatMul/ReadVariableOpЂ#ENSO/dense_2/BiasAdd/ReadVariableOpЂ"ENSO/dense_2/MatMul/ReadVariableOpП
#ENSO/conv2d_3/Conv2D/ReadVariableOpReadVariableOp,enso_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02%
#ENSO/conv2d_3/Conv2D/ReadVariableOpе
ENSO/conv2d_3/Conv2DConv2Dconv2d_3_input+ENSO/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџH2*
paddingSAME*
strides
2
ENSO/conv2d_3/Conv2DЖ
$ENSO/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp-enso_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02&
$ENSO/conv2d_3/BiasAdd/ReadVariableOpР
ENSO/conv2d_3/BiasAddBiasAddENSO/conv2d_3/Conv2D:output:0,ENSO/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџH22
ENSO/conv2d_3/BiasAdd
ENSO/conv2d_3/TanhTanhENSO/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџH22
ENSO/conv2d_3/TanhЬ
ENSO/max_pooling2d_2/MaxPoolMaxPoolENSO/conv2d_3/Tanh:y:0*/
_output_shapes
:џџџџџџџџџ$2*
ksize
*
paddingVALID*
strides
2
ENSO/max_pooling2d_2/MaxPoolП
#ENSO/conv2d_4/Conv2D/ReadVariableOpReadVariableOp,enso_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02%
#ENSO/conv2d_4/Conv2D/ReadVariableOpь
ENSO/conv2d_4/Conv2DConv2D%ENSO/max_pooling2d_2/MaxPool:output:0+ENSO/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$2*
paddingSAME*
strides
2
ENSO/conv2d_4/Conv2DЖ
$ENSO/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp-enso_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02&
$ENSO/conv2d_4/BiasAdd/ReadVariableOpР
ENSO/conv2d_4/BiasAddBiasAddENSO/conv2d_4/Conv2D:output:0,ENSO/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$22
ENSO/conv2d_4/BiasAdd
ENSO/conv2d_4/TanhTanhENSO/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$22
ENSO/conv2d_4/TanhЬ
ENSO/max_pooling2d_3/MaxPoolMaxPoolENSO/conv2d_4/Tanh:y:0*/
_output_shapes
:џџџџџџџџџ2*
ksize
*
paddingVALID*
strides
2
ENSO/max_pooling2d_3/MaxPoolП
#ENSO/conv2d_5/Conv2D/ReadVariableOpReadVariableOp,enso_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02%
#ENSO/conv2d_5/Conv2D/ReadVariableOpь
ENSO/conv2d_5/Conv2DConv2D%ENSO/max_pooling2d_3/MaxPool:output:0+ENSO/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2*
paddingSAME*
strides
2
ENSO/conv2d_5/Conv2DЖ
$ENSO/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp-enso_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02&
$ENSO/conv2d_5/BiasAdd/ReadVariableOpР
ENSO/conv2d_5/BiasAddBiasAddENSO/conv2d_5/Conv2D:output:0,ENSO/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ22
ENSO/conv2d_5/BiasAdd
ENSO/conv2d_5/TanhTanhENSO/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ22
ENSO/conv2d_5/Tanh}
ENSO/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
ENSO/flatten_1/ConstЅ
ENSO/flatten_1/ReshapeReshapeENSO/conv2d_5/Tanh:y:0ENSO/flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*2
ENSO/flatten_1/ReshapeЕ
"ENSO/dense_1/MatMul/ReadVariableOpReadVariableOp+enso_dense_1_matmul_readvariableop_resource*
_output_shapes
:	*2*
dtype02$
"ENSO/dense_1/MatMul/ReadVariableOpГ
ENSO/dense_1/MatMulMatMulENSO/flatten_1/Reshape:output:0*ENSO/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
ENSO/dense_1/MatMulГ
#ENSO/dense_1/BiasAdd/ReadVariableOpReadVariableOp,enso_dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02%
#ENSO/dense_1/BiasAdd/ReadVariableOpЕ
ENSO/dense_1/BiasAddBiasAddENSO/dense_1/MatMul:product:0+ENSO/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
ENSO/dense_1/BiasAdd
ENSO/dense_1/TanhTanhENSO/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
ENSO/dense_1/TanhД
"ENSO/dense_2/MatMul/ReadVariableOpReadVariableOp+enso_dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02$
"ENSO/dense_2/MatMul/ReadVariableOpЉ
ENSO/dense_2/MatMulMatMulENSO/dense_1/Tanh:y:0*ENSO/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
ENSO/dense_2/MatMulГ
#ENSO/dense_2/BiasAdd/ReadVariableOpReadVariableOp,enso_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#ENSO/dense_2/BiasAdd/ReadVariableOpЕ
ENSO/dense_2/BiasAddBiasAddENSO/dense_2/MatMul:product:0+ENSO/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
ENSO/dense_2/BiasAddx
IdentityIdentityENSO/dense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

IdentityЫ
NoOpNoOp%^ENSO/conv2d_3/BiasAdd/ReadVariableOp$^ENSO/conv2d_3/Conv2D/ReadVariableOp%^ENSO/conv2d_4/BiasAdd/ReadVariableOp$^ENSO/conv2d_4/Conv2D/ReadVariableOp%^ENSO/conv2d_5/BiasAdd/ReadVariableOp$^ENSO/conv2d_5/Conv2D/ReadVariableOp$^ENSO/dense_1/BiasAdd/ReadVariableOp#^ENSO/dense_1/MatMul/ReadVariableOp$^ENSO/dense_2/BiasAdd/ReadVariableOp#^ENSO/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 2L
$ENSO/conv2d_3/BiasAdd/ReadVariableOp$ENSO/conv2d_3/BiasAdd/ReadVariableOp2J
#ENSO/conv2d_3/Conv2D/ReadVariableOp#ENSO/conv2d_3/Conv2D/ReadVariableOp2L
$ENSO/conv2d_4/BiasAdd/ReadVariableOp$ENSO/conv2d_4/BiasAdd/ReadVariableOp2J
#ENSO/conv2d_4/Conv2D/ReadVariableOp#ENSO/conv2d_4/Conv2D/ReadVariableOp2L
$ENSO/conv2d_5/BiasAdd/ReadVariableOp$ENSO/conv2d_5/BiasAdd/ReadVariableOp2J
#ENSO/conv2d_5/Conv2D/ReadVariableOp#ENSO/conv2d_5/Conv2D/ReadVariableOp2J
#ENSO/dense_1/BiasAdd/ReadVariableOp#ENSO/dense_1/BiasAdd/ReadVariableOp2H
"ENSO/dense_1/MatMul/ReadVariableOp"ENSO/dense_1/MatMul/ReadVariableOp2J
#ENSO/dense_2/BiasAdd/ReadVariableOp#ENSO/dense_2/BiasAdd/ReadVariableOp2H
"ENSO/dense_2/MatMul/ReadVariableOp"ENSO/dense_2/MatMul/ReadVariableOp:_ [
/
_output_shapes
:џџџџџџџџџH
(
_user_specified_nameconv2d_3_input
ё

&__inference_dense_1_layer_call_fn_3577

inputs
unknown:	*2
	unknown_0:2
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_30092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ*: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ*
 
_user_specified_nameinputs
ж
J
.__inference_max_pooling2d_3_layer_call_fn_3522

inputs
identityэ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29072
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ

ѓ
A__inference_dense_1_layer_call_and_return_conditional_losses_3588

inputs1
matmul_readvariableop_resource:	*2-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ*
 
_user_specified_nameinputs
љ

ѓ
A__inference_dense_1_layer_call_and_return_conditional_losses_3009

inputs1
matmul_readvariableop_resource:	*2-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22	
BiasAddX
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
Tanhc
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ*: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ*
 
_user_specified_nameinputs
Љ
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3492

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


'__inference_conv2d_4_layer_call_fn_3506

inputs!
unknown:22
	unknown_0:2
identityЂStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_29612
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ$22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ$2: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ$2
 
_user_specified_nameinputs


'__inference_conv2d_3_layer_call_fn_3466

inputs!
unknown:2
	unknown_0:2
identityЂStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџH2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_29382
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџH22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџH: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
П&
е
>__inference_ENSO_layer_call_and_return_conditional_losses_3180

inputs'
conv2d_3_3151:2
conv2d_3_3153:2'
conv2d_4_3157:22
conv2d_4_3159:2'
conv2d_5_3163:22
conv2d_5_3165:2
dense_1_3169:	*2
dense_1_3171:2
dense_2_3174:2
dense_2_3176:
identityЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCall
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_3151conv2d_3_3153*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџH2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_29382"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29482!
max_pooling2d_2/PartitionedCallЛ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_3157conv2d_4_3159*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_29612"
 conv2d_4/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29712!
max_pooling2d_3/PartitionedCallЛ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_3163conv2d_5_3165*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_29842"
 conv2d_5/StatefulPartitionedCallќ
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_29962
flatten_1/PartitionedCallЈ
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_3169dense_1_3171*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_30092!
dense_1/StatefulPartitionedCallЎ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_3174dense_2_3176*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_30252!
dense_2/StatefulPartitionedCall
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityћ
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
с


#__inference_ENSO_layer_call_fn_3373

inputs!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	*2
	unknown_6:2
	unknown_7:2
	unknown_8:
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_ENSO_layer_call_and_return_conditional_losses_31802
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
ю

&__inference_dense_2_layer_call_fn_3597

inputs
unknown:2
	unknown_0:
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_30252
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs


'__inference_conv2d_5_layer_call_fn_3546

inputs!
unknown:22
	unknown_0:2
identityЂStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_29842
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ2: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
Е*
К
__inference__traced_save_3678
file_prefix.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
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
Const_1
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
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameэ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*џ
valueѕBђB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesЊ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesк
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
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

identity_1Identity_1:output:0*
_input_shapes{
y: :2:2:22:2:22:2:	*2:2:2:: : : : : : : 2(
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
:	*2: 

_output_shapes
:2:$	 

_output_shapes

:2: 


_output_shapes
::
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
П&
е
>__inference_ENSO_layer_call_and_return_conditional_losses_3032

inputs'
conv2d_3_2939:2
conv2d_3_2941:2'
conv2d_4_2962:22
conv2d_4_2964:2'
conv2d_5_2985:22
conv2d_5_2987:2
dense_1_3010:	*2
dense_1_3012:2
dense_2_3026:2
dense_2_3028:
identityЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCall
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_3_2939conv2d_3_2941*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџH2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_29382"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29482!
max_pooling2d_2/PartitionedCallЛ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_2962conv2d_4_2964*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_29612"
 conv2d_4/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29712!
max_pooling2d_3/PartitionedCallЛ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_2985conv2d_5_2987*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_29842"
 conv2d_5/StatefulPartitionedCallќ
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_29962
flatten_1/PartitionedCallЈ
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_3010dense_1_3012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_30092!
dense_1/StatefulPartitionedCallЎ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_3026dense_2_3028*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_30252!
dense_2/StatefulPartitionedCall
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityћ
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
F
Є	
 __inference__traced_restore_3736
file_prefix:
 assignvariableop_conv2d_3_kernel:2.
 assignvariableop_1_conv2d_3_bias:2<
"assignvariableop_2_conv2d_4_kernel:22.
 assignvariableop_3_conv2d_4_bias:2<
"assignvariableop_4_conv2d_5_kernel:22.
 assignvariableop_5_conv2d_5_bias:24
!assignvariableop_6_dense_1_kernel:	*2-
assignvariableop_7_dense_1_bias:23
!assignvariableop_8_dense_2_kernel:2-
assignvariableop_9_dense_2_bias:&
assignvariableop_10_sgd_iter:	 '
assignvariableop_11_sgd_decay: /
%assignvariableop_12_sgd_learning_rate: *
 assignvariableop_13_sgd_momentum: #
assignvariableop_14_total: #
assignvariableop_15_count: 
identity_17ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ѓ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*џ
valueѕBђB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesА
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
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

Identity
AssignVariableOpAssignVariableOp assignvariableop_conv2d_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1Ѕ
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Ї
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Ѕ
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ї
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_5_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѕ
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_5_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6І
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Є
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8І
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Є
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10Є
AssignVariableOp_10AssignVariableOpassignvariableop_10_sgd_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ѕ
AssignVariableOp_11AssignVariableOpassignvariableop_11_sgd_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12­
AssignVariableOp_12AssignVariableOp%assignvariableop_12_sgd_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ј
AssignVariableOp_13AssignVariableOp assignvariableop_13_sgd_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14Ё
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Ё
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpО
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16f
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_17І
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
Ѓ

ђ
A__inference_dense_2_layer_call_and_return_conditional_losses_3025

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
ж
J
.__inference_max_pooling2d_2_layer_call_fn_3482

inputs
identityэ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_28852
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
о
ћ
B__inference_conv2d_4_layer_call_and_return_conditional_losses_3517

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$2*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ$22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ$2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ$2
 
_user_specified_nameinputs
М
e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3497

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ$2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџH2:W S
/
_output_shapes
:џџџџџџџџџH2
 
_user_specified_nameinputs
й


"__inference_signature_wrapper_3323
conv2d_3_input!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	*2
	unknown_6:2
	unknown_7:2
	unknown_8:
identityЂStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__wrapped_model_28762
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџH
(
_user_specified_nameconv2d_3_input
з&
н
>__inference_ENSO_layer_call_and_return_conditional_losses_3292
conv2d_3_input'
conv2d_3_3263:2
conv2d_3_3265:2'
conv2d_4_3269:22
conv2d_4_3271:2'
conv2d_5_3275:22
conv2d_5_3277:2
dense_1_3281:	*2
dense_1_3283:2
dense_2_3286:2
dense_2_3288:
identityЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЁ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_3263conv2d_3_3265*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџH2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_29382"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29482!
max_pooling2d_2/PartitionedCallЛ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_3269conv2d_4_3271*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_29612"
 conv2d_4/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29712!
max_pooling2d_3/PartitionedCallЛ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_3275conv2d_5_3277*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_29842"
 conv2d_5/StatefulPartitionedCallќ
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_29962
flatten_1/PartitionedCallЈ
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_3281dense_1_3283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_30092!
dense_1/StatefulPartitionedCallЎ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_3286dense_2_3288*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_30252!
dense_2/StatefulPartitionedCall
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityћ
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџH
(
_user_specified_nameconv2d_3_input
Љ
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3532

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
К7
ќ
>__inference_ENSO_layer_call_and_return_conditional_losses_3415

inputsA
'conv2d_3_conv2d_readvariableop_resource:26
(conv2d_3_biasadd_readvariableop_resource:2A
'conv2d_4_conv2d_readvariableop_resource:226
(conv2d_4_biasadd_readvariableop_resource:2A
'conv2d_5_conv2d_readvariableop_resource:226
(conv2d_5_biasadd_readvariableop_resource:29
&dense_1_matmul_readvariableop_resource:	*25
'dense_1_biasadd_readvariableop_resource:28
&dense_2_matmul_readvariableop_resource:25
'dense_2_biasadd_readvariableop_resource:
identityЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpЂconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpА
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02 
conv2d_3/Conv2D/ReadVariableOpО
conv2d_3/Conv2DConv2Dinputs&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџH2*
paddingSAME*
strides
2
conv2d_3/Conv2DЇ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpЌ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџH22
conv2d_3/BiasAdd{
conv2d_3/TanhTanhconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџH22
conv2d_3/TanhН
max_pooling2d_2/MaxPoolMaxPoolconv2d_3/Tanh:y:0*/
_output_shapes
:џџџџџџџџџ$2*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolА
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_4/Conv2D/ReadVariableOpи
conv2d_4/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$2*
paddingSAME*
strides
2
conv2d_4/Conv2DЇ
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpЌ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$22
conv2d_4/BiasAdd{
conv2d_4/TanhTanhconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$22
conv2d_4/TanhН
max_pooling2d_3/MaxPoolMaxPoolconv2d_4/Tanh:y:0*/
_output_shapes
:џџџџџџџџџ2*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolА
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_5/Conv2D/ReadVariableOpи
conv2d_5/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2*
paddingSAME*
strides
2
conv2d_5/Conv2DЇ
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpЌ
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ22
conv2d_5/BiasAdd{
conv2d_5/TanhTanhconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ22
conv2d_5/Tanhs
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
flatten_1/Const
flatten_1/ReshapeReshapeconv2d_5/Tanh:y:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*2
flatten_1/ReshapeІ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	*2*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dense_1/BiasAddp
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dense_1/TanhЅ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMuldense_1/Tanh:y:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/MatMulЄ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOpЁ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/BiasAdds
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
о
ћ
B__inference_conv2d_4_layer_call_and_return_conditional_losses_2961

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$2*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ$22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ$2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ$2
 
_user_specified_nameinputs
х
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_2996

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ2:W S
/
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
щ
J
.__inference_max_pooling2d_2_layer_call_fn_3487

inputs
identityв
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29482
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџH2:W S
/
_output_shapes
:џџџџџџџџџH2
 
_user_specified_nameinputs
с


#__inference_ENSO_layer_call_fn_3348

inputs!
unknown:2
	unknown_0:2#
	unknown_1:22
	unknown_2:2#
	unknown_3:22
	unknown_4:2
	unknown_5:	*2
	unknown_6:2
	unknown_7:2
	unknown_8:
identityЂStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*,
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8 *G
fBR@
>__inference_ENSO_layer_call_and_return_conditional_losses_30322
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
з&
н
>__inference_ENSO_layer_call_and_return_conditional_losses_3260
conv2d_3_input'
conv2d_3_3231:2
conv2d_3_3233:2'
conv2d_4_3237:22
conv2d_4_3239:2'
conv2d_5_3243:22
conv2d_5_3245:2
dense_1_3249:	*2
dense_1_3251:2
dense_2_3254:2
dense_2_3256:
identityЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_1/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЁ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCallconv2d_3_inputconv2d_3_3231conv2d_3_3233*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџH2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_3_layer_call_and_return_conditional_losses_29382"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_29482!
max_pooling2d_2/PartitionedCallЛ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_2/PartitionedCall:output:0conv2d_4_3237conv2d_4_3239*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ$2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_4_layer_call_and_return_conditional_losses_29612"
 conv2d_4/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29712!
max_pooling2d_3/PartitionedCallЛ
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_5_3243conv2d_5_3245*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *K
fFRD
B__inference_conv2d_5_layer_call_and_return_conditional_losses_29842"
 conv2d_5/StatefulPartitionedCallќ
flatten_1/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_29962
flatten_1/PartitionedCallЈ
dense_1/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_1_3249dense_1_3251*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_30092!
dense_1/StatefulPartitionedCallЎ
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_3254dense_2_3256*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_30252!
dense_2/StatefulPartitionedCall
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identityћ
NoOpNoOp!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:_ [
/
_output_shapes
:џџџџџџџџџH
(
_user_specified_nameconv2d_3_input
Љ
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_2907

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
К7
ќ
>__inference_ENSO_layer_call_and_return_conditional_losses_3457

inputsA
'conv2d_3_conv2d_readvariableop_resource:26
(conv2d_3_biasadd_readvariableop_resource:2A
'conv2d_4_conv2d_readvariableop_resource:226
(conv2d_4_biasadd_readvariableop_resource:2A
'conv2d_5_conv2d_readvariableop_resource:226
(conv2d_5_biasadd_readvariableop_resource:29
&dense_1_matmul_readvariableop_resource:	*25
'dense_1_biasadd_readvariableop_resource:28
&dense_2_matmul_readvariableop_resource:25
'dense_2_biasadd_readvariableop_resource:
identityЂconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpЂconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂdense_1/BiasAdd/ReadVariableOpЂdense_1/MatMul/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpА
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02 
conv2d_3/Conv2D/ReadVariableOpО
conv2d_3/Conv2DConv2Dinputs&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџH2*
paddingSAME*
strides
2
conv2d_3/Conv2DЇ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_3/BiasAdd/ReadVariableOpЌ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџH22
conv2d_3/BiasAdd{
conv2d_3/TanhTanhconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџH22
conv2d_3/TanhН
max_pooling2d_2/MaxPoolMaxPoolconv2d_3/Tanh:y:0*/
_output_shapes
:џџџџџџџџџ$2*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolА
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_4/Conv2D/ReadVariableOpи
conv2d_4/Conv2DConv2D max_pooling2d_2/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$2*
paddingSAME*
strides
2
conv2d_4/Conv2DЇ
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpЌ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ$22
conv2d_4/BiasAdd{
conv2d_4/TanhTanhconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ$22
conv2d_4/TanhН
max_pooling2d_3/MaxPoolMaxPoolconv2d_4/Tanh:y:0*/
_output_shapes
:џџџџџџџџџ2*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolА
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02 
conv2d_5/Conv2D/ReadVariableOpи
conv2d_5/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2*
paddingSAME*
strides
2
conv2d_5/Conv2DЇ
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpЌ
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ22
conv2d_5/BiasAdd{
conv2d_5/TanhTanhconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ22
conv2d_5/Tanhs
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
flatten_1/Const
flatten_1/ReshapeReshapeconv2d_5/Tanh:y:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*2
flatten_1/ReshapeІ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	*2*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dense_1/MatMulЄ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_1/BiasAdd/ReadVariableOpЁ
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dense_1/BiasAddp
dense_1/TanhTanhdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ22
dense_1/TanhЅ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
dense_2/MatMul/ReadVariableOp
dense_2/MatMulMatMuldense_1/Tanh:y:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/MatMulЄ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOpЁ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_2/BiasAdds
IdentityIdentitydense_2/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:џџџџџџџџџH: : : : : : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
о
ћ
B__inference_conv2d_5_layer_call_and_return_conditional_losses_2984

inputs8
conv2d_readvariableop_resource:22-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:22*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ2*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
щ
J
.__inference_max_pooling2d_3_layer_call_fn_3527

inputs
identityв
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *R
fMRK
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_29712
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ$2:W S
/
_output_shapes
:џџџџџџџџџ$2
 
_user_specified_nameinputs
Я
D
(__inference_flatten_1_layer_call_fn_3562

inputs
identityХ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ** 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *L
fGRE
C__inference_flatten_1_layer_call_and_return_conditional_losses_29962
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ2:W S
/
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
х
_
C__inference_flatten_1_layer_call_and_return_conditional_losses_3568

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ*2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ2:W S
/
_output_shapes
:џџџџџџџџџ2
 
_user_specified_nameinputs
о
ћ
B__inference_conv2d_3_layer_call_and_return_conditional_losses_3477

inputs8
conv2d_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:2*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџH2*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџH22	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџH22
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџH22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџH: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџH
 
_user_specified_nameinputs
М
e
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3537

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:џџџџџџџџџ2*
ksize
*
paddingVALID*
strides
2	
MaxPooll
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:џџџџџџџџџ22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ$2:W S
/
_output_shapes
:џџџџџџџџџ$2
 
_user_specified_nameinputs"ЈL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Р
serving_defaultЌ
Q
conv2d_3_input?
 serving_default_conv2d_3_input:0џџџџџџџџџH;
dense_20
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:
а
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

	variables
trainable_variables
regularization_losses
	keras_api

signatures
o__call__
p_default_save_signature
*q&call_and_return_all_conditional_losses"
_tf_keras_sequential
Л

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
regularization_losses
	variables
trainable_variables
	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
regularization_losses
 	variables
!trainable_variables
"	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

#kernel
$bias
%regularization_losses
&	variables
'trainable_variables
(	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
)regularization_losses
*	variables
+trainable_variables
,	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
Л

-kernel
.bias
/regularization_losses
0	variables
1trainable_variables
2	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Н

3kernel
4bias
5regularization_losses
6	variables
7trainable_variables
8	keras_api
__call__
+&call_and_return_all_conditional_losses"
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
Ъ

=layers
>non_trainable_variables
?layer_regularization_losses

	variables
@metrics
Alayer_metrics
trainable_variables
regularization_losses
o__call__
p_default_save_signature
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
):'22conv2d_3/kernel
:22conv2d_3/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses

Blayers
Clayer_regularization_losses
	variables
Dmetrics
Elayer_metrics
trainable_variables
Fnon_trainable_variables
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
regularization_losses

Glayers
Hlayer_regularization_losses
	variables
Imetrics
Jlayer_metrics
trainable_variables
Knon_trainable_variables
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
):'222conv2d_4/kernel
:22conv2d_4/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses

Llayers
Mlayer_regularization_losses
	variables
Nmetrics
Olayer_metrics
trainable_variables
Pnon_trainable_variables
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
regularization_losses

Qlayers
Rlayer_regularization_losses
 	variables
Smetrics
Tlayer_metrics
!trainable_variables
Unon_trainable_variables
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
):'222conv2d_5/kernel
:22conv2d_5/bias
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
­
%regularization_losses

Vlayers
Wlayer_regularization_losses
&	variables
Xmetrics
Ylayer_metrics
'trainable_variables
Znon_trainable_variables
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
)regularization_losses

[layers
\layer_regularization_losses
*	variables
]metrics
^layer_metrics
+trainable_variables
_non_trainable_variables
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
!:	*22dense_1/kernel
:22dense_1/bias
 "
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
­
/regularization_losses

`layers
alayer_regularization_losses
0	variables
bmetrics
clayer_metrics
1trainable_variables
dnon_trainable_variables
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 :22dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
А
5regularization_losses

elayers
flayer_regularization_losses
6	variables
gmetrics
hlayer_metrics
7trainable_variables
inon_trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
j0"
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
к2з
#__inference_ENSO_layer_call_fn_3055
#__inference_ENSO_layer_call_fn_3348
#__inference_ENSO_layer_call_fn_3373
#__inference_ENSO_layer_call_fn_3228Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
бBЮ
__inference__wrapped_model_2876conv2d_3_input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ц2У
>__inference_ENSO_layer_call_and_return_conditional_losses_3415
>__inference_ENSO_layer_call_and_return_conditional_losses_3457
>__inference_ENSO_layer_call_and_return_conditional_losses_3260
>__inference_ENSO_layer_call_and_return_conditional_losses_3292Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
б2Ю
'__inference_conv2d_3_layer_call_fn_3466Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_conv2d_3_layer_call_and_return_conditional_losses_3477Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
.__inference_max_pooling2d_2_layer_call_fn_3482
.__inference_max_pooling2d_2_layer_call_fn_3487Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
О2Л
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3492
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3497Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
б2Ю
'__inference_conv2d_4_layer_call_fn_3506Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_conv2d_4_layer_call_and_return_conditional_losses_3517Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
.__inference_max_pooling2d_3_layer_call_fn_3522
.__inference_max_pooling2d_3_layer_call_fn_3527Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
О2Л
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3532
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3537Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
б2Ю
'__inference_conv2d_5_layer_call_fn_3546Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ь2щ
B__inference_conv2d_5_layer_call_and_return_conditional_losses_3557Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_flatten_1_layer_call_fn_3562Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_flatten_1_layer_call_and_return_conditional_losses_3568Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
а2Э
&__inference_dense_1_layer_call_fn_3577Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ы2ш
A__inference_dense_1_layer_call_and_return_conditional_losses_3588Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
а2Э
&__inference_dense_2_layer_call_fn_3597Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ы2ш
A__inference_dense_2_layer_call_and_return_conditional_losses_3607Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
аBЭ
"__inference_signature_wrapper_3323conv2d_3_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 О
>__inference_ENSO_layer_call_and_return_conditional_losses_3260|
#$-.34GЂD
=Ђ:
0-
conv2d_3_inputџџџџџџџџџH
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 О
>__inference_ENSO_layer_call_and_return_conditional_losses_3292|
#$-.34GЂD
=Ђ:
0-
conv2d_3_inputџџџџџџџџџH
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ж
>__inference_ENSO_layer_call_and_return_conditional_losses_3415t
#$-.34?Ђ<
5Ђ2
(%
inputsџџџџџџџџџH
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ж
>__inference_ENSO_layer_call_and_return_conditional_losses_3457t
#$-.34?Ђ<
5Ђ2
(%
inputsџџџџџџџџџH
p

 
Њ "%Ђ"

0џџџџџџџџџ
 
#__inference_ENSO_layer_call_fn_3055o
#$-.34GЂD
=Ђ:
0-
conv2d_3_inputџџџџџџџџџH
p 

 
Њ "џџџџџџџџџ
#__inference_ENSO_layer_call_fn_3228o
#$-.34GЂD
=Ђ:
0-
conv2d_3_inputџџџџџџџџџH
p

 
Њ "џџџџџџџџџ
#__inference_ENSO_layer_call_fn_3348g
#$-.34?Ђ<
5Ђ2
(%
inputsџџџџџџџџџH
p 

 
Њ "џџџџџџџџџ
#__inference_ENSO_layer_call_fn_3373g
#$-.34?Ђ<
5Ђ2
(%
inputsџџџџџџџџџH
p

 
Њ "џџџџџџџџџЄ
__inference__wrapped_model_2876
#$-.34?Ђ<
5Ђ2
0-
conv2d_3_inputџџџџџџџџџH
Њ "1Њ.
,
dense_2!
dense_2џџџџџџџџџВ
B__inference_conv2d_3_layer_call_and_return_conditional_losses_3477l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџH
Њ "-Ђ*
# 
0џџџџџџџџџH2
 
'__inference_conv2d_3_layer_call_fn_3466_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџH
Њ " џџџџџџџџџH2В
B__inference_conv2d_4_layer_call_and_return_conditional_losses_3517l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ$2
Њ "-Ђ*
# 
0џџџџџџџџџ$2
 
'__inference_conv2d_4_layer_call_fn_3506_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ$2
Њ " џџџџџџџџџ$2В
B__inference_conv2d_5_layer_call_and_return_conditional_losses_3557l#$7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ2
Њ "-Ђ*
# 
0џџџџџџџџџ2
 
'__inference_conv2d_5_layer_call_fn_3546_#$7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ2
Њ " џџџџџџџџџ2Ђ
A__inference_dense_1_layer_call_and_return_conditional_losses_3588]-.0Ђ-
&Ђ#
!
inputsџџџџџџџџџ*
Њ "%Ђ"

0џџџџџџџџџ2
 z
&__inference_dense_1_layer_call_fn_3577P-.0Ђ-
&Ђ#
!
inputsџџџџџџџџџ*
Њ "џџџџџџџџџ2Ё
A__inference_dense_2_layer_call_and_return_conditional_losses_3607\34/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "%Ђ"

0џџџџџџџџџ
 y
&__inference_dense_2_layer_call_fn_3597O34/Ђ,
%Ђ"
 
inputsџџџџџџџџџ2
Њ "џџџџџџџџџЈ
C__inference_flatten_1_layer_call_and_return_conditional_losses_3568a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ2
Њ "&Ђ#

0џџџџџџџџџ*
 
(__inference_flatten_1_layer_call_fn_3562T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ2
Њ "џџџџџџџџџ*ь
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3492RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Е
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_3497h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџH2
Њ "-Ђ*
# 
0џџџџџџџџџ$2
 Ф
.__inference_max_pooling2d_2_layer_call_fn_3482RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
.__inference_max_pooling2d_2_layer_call_fn_3487[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџH2
Њ " џџџџџџџџџ$2ь
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3532RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Е
I__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_3537h7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ$2
Њ "-Ђ*
# 
0џџџџџџџџџ2
 Ф
.__inference_max_pooling2d_3_layer_call_fn_3522RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
.__inference_max_pooling2d_3_layer_call_fn_3527[7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ$2
Њ " џџџџџџџџџ2Й
"__inference_signature_wrapper_3323
#$-.34QЂN
Ђ 
GЊD
B
conv2d_3_input0-
conv2d_3_inputџџџџџџџџџH"1Њ.
,
dense_2!
dense_2џџџџџџџџџ