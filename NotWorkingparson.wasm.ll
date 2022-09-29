; ModuleID = 'parson.wasm.c'
source_filename = "parson.wasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%Tstruct.Spl_json_value_value_t_t = type { i32, i32, i32, i32, i32, i32 }
%Tstruct.Spl_json_value_t_t = type { i32, i32, %Tstruct.Spl_json_value_value_t_t }
%Tstruct.Spl_json_object_t_t = type { i32, i32, i32, i32, i32 }
%Tstruct.Spl_json_array_t_t = type { i32, i32, i32, i32 }
%Tstruct.json_value_t_t = type { %Tstruct.json_value_t_t*, i32, %Tstruct.json_value_value_t_t }
%Tstruct.json_value_value_t_t = type { i8*, i32, %Tstruct.json_object_t_t*, %Tstruct.json_array_t_t*, i32, i32 }
%Tstruct.json_object_t_t = type { %Tstruct.json_value_t_t*, i8**, %Tstruct.json_value_t_t**, i32, i32 }
%Tstruct.json_array_t_t = type { %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t**, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@parson_escape_slashes = dso_local global i32 1, align 4
@Spl_TJSON_Value_Value_Val = dso_local global %Tstruct.Spl_json_value_value_t_t zeroinitializer, align 4
@Spl_json_value_t_t_Val = dso_local global %Tstruct.Spl_json_value_t_t zeroinitializer, align 4
@Spl_json_object_t_t_Val = dso_local global %Tstruct.Spl_json_object_t_t zeroinitializer, align 4
@Spl_json_array_t_t_Val = dso_local global %Tstruct.Spl_json_array_t_t zeroinitializer, align 4
@__const.get_quoted_string.ret_param_types = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@__const.parse_string_value.ret_param_types = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%1.17g\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@__const.json_parse_string_with_comments.ret_param_types = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@parson_tainted_malloc = dso_local global i8* (i64)* null, align 8
@parson_tainted_free = dso_local global void (i8*)* null, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @parson_string_tainted_malloc(i64 %sz) #0 {
entry:
  %sz.addr = alloca i64, align 8
  store i64 %sz, i64* %sz.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load i64, i64* %sz.addr, align 8
  %1 = ptrtoint i8* %call to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %call1 = call i32 @w2c_parson_string_tainted_malloc(i8* %2, i64 %0)
  %conv = zext i32 %call1 to i64
  %3 = inttoptr i64 %conv to i8*
  ret i8* %3
}

declare dso_local i32 @w2c_parson_string_tainted_malloc(i8*, i64) #1

declare dso_local i8* @c_fetch_sandbox_address(...) #1

declare i8* @c_ConditionalTaintedOff2Ptr(i64)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dummy_Spl_TJSON_Value_Value(%Tstruct.Spl_json_value_value_t_t* noalias sret(%Tstruct.Spl_json_value_value_t_t) align 4 %agg.result) #2 {
entry:
  %0 = bitcast %Tstruct.Spl_json_value_value_t_t* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%Tstruct.Spl_json_value_value_t_t* @Spl_TJSON_Value_Value_Val to i8*), i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dummy_Spl_json_value_t_t(%Tstruct.Spl_json_value_t_t* noalias sret(%Tstruct.Spl_json_value_t_t) align 4 %agg.result) #2 {
entry:
  %0 = bitcast %Tstruct.Spl_json_value_t_t* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%Tstruct.Spl_json_value_t_t* @Spl_json_value_t_t_Val to i8*), i64 32, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Dummy_Spl_json_object_t_t(%Tstruct.Spl_json_object_t_t* noalias sret(%Tstruct.Spl_json_object_t_t) align 4 %agg.result) #2 {
entry:
  %0 = bitcast %Tstruct.Spl_json_object_t_t* %agg.result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%Tstruct.Spl_json_object_t_t* @Spl_json_object_t_t_Val to i8*), i64 20, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @Dummy_Spl_json_array_t_t() #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_array_t_t, align 4
  %0 = bitcast %Tstruct.Spl_json_array_t_t* %retval to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast (%Tstruct.Spl_json_array_t_t* @Spl_json_array_t_t_Val to i8*), i64 16, i1 false)
  %1 = bitcast %Tstruct.Spl_json_array_t_t* %retval to { i64, i64 }*
  %2 = load { i64, i64 }, { i64, i64 }* %1, align 4
  ret { i64, i64 } %2
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @tainted_parson_strndup(i8* %string, i64 %n) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %n.addr = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 4
  store i64 %n, i64* %n.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = load i64, i64* %n.addr, align 8
  %3 = ptrtoint i8* %call to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call1 = call i32 @w2c_tainted_parson_strndup(i8* %4, i32 %1, i64 %2)
  %conv = zext i32 %call1 to i64
  %5 = inttoptr i64 %conv to i8*
  ret i8* %5
}

declare dso_local i32 @w2c_tainted_parson_strndup(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @tainted_parson_strdup(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  store i8* %string, i8** %string.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = ptrtoint i8* %call to i64
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %2)
  %call1 = call i32 @w2c_tainted_parson_strdup(i8* %3, i32 %1)
  %conv = zext i32 %call1 to i64
  %4 = inttoptr i64 %conv to i8*
  ret i8* %4
}

declare dso_local i32 @w2c_tainted_parson_strdup(i8*, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @verify_utf8_sequence(i8* %s, i32* %len) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %len.addr = alloca i32*, align 4
  store i8* %s, i8** %s.addr, align 4
  store i32* %len, i32** %len.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load i8*, i8** %s.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = load i32*, i32** %len.addr, align 4
  %3 = ptrtoint i32* %2 to i32
  %4 = ptrtoint i8* %call to i64
  %5 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %4)
  %call1 = call i64 @w2c_verify_utf8_sequence(i8* %5, i32 %1, i32 %3)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

declare dso_local i64 @w2c_verify_utf8_sequence(i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @is_decimal(i8* %string, i64 %length) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %length.addr = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 4
  store i64 %length, i64* %length.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = load i64, i64* %length.addr, align 8
  %3 = ptrtoint i8* %call to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call1 = call i64 @w2c_is_decimal(i8* %4, i32 %1, i64 %2)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

declare dso_local i64 @w2c_is_decimal(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_object_addn(%Tstruct.json_object_t_t* %object, i8* %name, i64 %name_len, %Tstruct.json_value_t_t* %value) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %name_len.addr = alloca i64, align 8
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i64 %name_len, i64* %name_len.addr, align 8
  %1 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %1, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %2 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %2 to i32
  %4 = load i8*, i8** %name.addr, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = load i64, i64* %name_len.addr, align 8
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = ptrtoint i8* %call to i64
  %10 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %9)
  %call1 = call i64 @w2c_json_object_addn(i8* %10, i32 %3, i32 %5, i64 %6, i32 %8)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

declare dso_local i64 @w2c_json_object_addn(i8*, i32, i32, i64, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_object_resize(%Tstruct.json_object_t_t* %object, i64 %new_capacity) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %new_capacity.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i64 %new_capacity, i64* %new_capacity.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %3 = load i64, i64* %new_capacity.addr, align 8
  %4 = ptrtoint i8* %call to i64
  %5 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %4)
  %call1 = call i64 @w2c_json_object_resize(i8* %5, i32 %2, i64 %3)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

declare dso_local i64 @w2c_json_object_resize(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_object_remove_internal(%Tstruct.json_object_t_t* %object, i8* %name, i32 %free_value) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %free_value.addr = alloca i32, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %free_value, i32* %free_value.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %3 = load i8*, i8** %name.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %5 = load i32, i32* %free_value.addr, align 4
  %conv = sext i32 %5 to i64
  %6 = ptrtoint i8* %call to i64
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %6)
  %call1 = call i64 @w2c_json_object_remove_internal(i8* %7, i32 %2, i32 %4, i64 %conv)
  %conv2 = trunc i64 %call1 to i32
  ret i32 %conv2
}

declare dso_local i64 @w2c_json_object_remove_internal(i8*, i32, i32, i64) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_object_dotremove_internal(%Tstruct.json_object_t_t* %object, i8* %name, i32 %free_value) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %free_value.addr = alloca i32, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %free_value, i32* %free_value.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %3 = load i8*, i8** %name.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %5 = load i32, i32* %free_value.addr, align 4
  %conv = sext i32 %5 to i64
  %6 = ptrtoint i8* %call to i64
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %6)
  %call1 = call i64 @w2c_json_object_dotremove_internal(i8* %7, i32 %2, i32 %4, i64 %conv)
  %conv2 = trunc i64 %call1 to i32
  ret i32 %conv2
}

declare dso_local i64 @w2c_json_object_dotremove_internal(i8*, i32, i32, i64) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local void @json_object_free(%Tstruct.json_object_t_t* %object) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %3 = ptrtoint i8* %call to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call1 = call i32 @w2c_json_object_free(i8* %4, i32 %2)
  ret void
}

declare dso_local i32 @w2c_json_object_free(i8*, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @parse_utf16(i8* %unprocessed, i8* %processed) #0 {
entry:
  %unprocessed.addr = alloca i8*, align 4
  %processed.addr = alloca i8*, align 4
  store i8* %unprocessed, i8** %unprocessed.addr, align 4
  store i8* %processed, i8** %processed.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load i8*, i8** %unprocessed.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = load i8*, i8** %processed.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = ptrtoint i8* %call to i64
  %5 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %4)
  %call1 = call i64 @w2c_parse_utf16(i8* %5, i32 %1, i32 %3)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

declare dso_local i64 @w2c_parse_utf16(i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_string_trampoline(i32 %sandbox, i32 %arg_1, i64 %arg_2) #2 {
entry:
  %sandbox.addr = alloca i32, align 4
  %arg_1.addr = alloca i32, align 4
  %arg_2.addr = alloca i64, align 8
  %first_arg = alloca i8*, align 4
  store i32 %sandbox, i32* %sandbox.addr, align 4
  store i32 %arg_1, i32* %arg_1.addr, align 4
  store i64 %arg_2, i64* %arg_2.addr, align 8
  %0 = load i32, i32* %arg_1.addr, align 4
  %call = call i8* @c_fetch_pointer_from_offset(i32 %0)
  store i8* %call, i8** %first_arg, align 4
  %1 = load i8*, i8** %first_arg, align 4
  %2 = load i64, i64* %arg_2.addr, align 8
  %3 = ptrtoint i8* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call1 = call i8* @process_string(i8* %4, i64 %2)
  %6 = ptrtoint i8* %call1 to i64
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %6)
  %call2 = call i32 @c_fetch_pointer_offset(i8* %7)
  ret i32 %call2

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

declare dso_local i8* @c_fetch_pointer_from_offset(i32) #1

declare dso_local i32 @c_fetch_pointer_offset(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @process_string(i8* %input, i64 %len) #2 {
entry:
  %retval = alloca i8*, align 8
  %input.addr = alloca i8*, align 4
  %len.addr = alloca i64, align 8
  %str_len = alloca i32, align 4
  %input_ptr = alloca i8*, align 4
  %initial_size = alloca i64, align 8
  %final_size = alloca i64, align 8
  %output = alloca i8*, align 4
  %output_ptr = alloca i8*, align 4
  %input_tmp = alloca i8*, align 4
  %output_tmp = alloca i8*, align 4
  %resized_output = alloca i8*, align 4
  store i8* %input, i8** %input.addr, align 4
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %input.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = call i8* @c_fetch_pointer_from_offset(i32 %1)
  %3 = call i1 @c_isTaintedPointerToTaintedMem(i8* %2)
  br i1 %3, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i64 @t_strlen(i8* %2)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %str_len, align 4
  %4 = load i32, i32* %str_len, align 4
  %conv1 = sext i32 %4 to i64
  %mul = mul i64 %conv1, 1
  %call2 = call i8* @parson_string_tainted_malloc(i64 %mul)
  store i8* %call2, i8** %input_ptr, align 4
  %5 = load i8*, i8** %input_ptr, align 4
  %6 = load i8*, i8** %input.addr, align 4
  %7 = ptrtoint i8* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %10 = ptrtoint i8* %6 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %call7 = call i8* @t_strcpy(i8* %8, i8* %11)
  %13 = load i64, i64* %len.addr, align 8
  %add = add i64 %13, 1
  %mul8 = mul i64 %add, 1
  store i64 %mul8, i64* %initial_size, align 8
  store i64 0, i64* %final_size, align 8
  store i8* null, i8** %output, align 4
  %14 = load i64, i64* %initial_size, align 8
  %call9 = call i8* @parson_string_tainted_malloc(i64 %14)
  store i8* %call9, i8** %output, align 4
  store i8* null, i8** %output_ptr, align 4
  %15 = load i8*, i8** %output, align 4
  %16 = ptrtoint i8* %15 to i32
  %cmp = icmp eq i32 %16, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded6
  br label %error

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded6
  %17 = load i8*, i8** %output, align 4
  store i8* %17, i8** %output_ptr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end78, %if.end
  %18 = load i8*, i8** %input_ptr, align 4
  %19 = ptrtoint i8* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %while.cond
  %22 = load i8, i8* %20, align 1
  %conv13 = sext i8 %22 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %_Dynamic_check.succeeded12
  %23 = load i8*, i8** %input.addr, align 4
  %24 = ptrtoint i8* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %land.rhs
  %call18 = call i64 @t_strlen(i8* %25)
  %27 = load i8*, i8** %input_ptr, align 4
  %28 = ptrtoint i8* %27 to i32
  %29 = call i8* @c_fetch_pointer_from_offset(i32 %28)
  %30 = call i1 @c_isTaintedPointerToTaintedMem(i8* %29)
  br i1 %30, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.succeeded17
  %call21 = call i64 @t_strlen(i8* %29)
  %sub = sub i64 %call18, %call21
  %31 = load i64, i64* %len.addr, align 8
  %cmp22 = icmp ult i64 %sub, %31
  br label %land.end

land.end:                                         ; preds = %_Dynamic_check.succeeded20, %_Dynamic_check.succeeded12
  %32 = phi i1 [ false, %_Dynamic_check.succeeded12 ], [ %cmp22, %_Dynamic_check.succeeded20 ]
  br i1 %32, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %33 = load i8*, i8** %input_ptr, align 4
  %34 = ptrtoint i8* %33 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %while.body
  %37 = load i8, i8* %35, align 1
  %conv26 = sext i8 %37 to i32
  %cmp27 = icmp eq i32 %conv26, 92
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %_Dynamic_check.succeeded25
  %38 = load i8*, i8** %input_ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr, i8** %input_ptr, align 4
  %39 = load i8*, i8** %input_ptr, align 4
  %40 = ptrtoint i8* %39 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %if.then29
  %43 = load i8, i8* %41, align 1
  %conv32 = sext i8 %43 to i32
  switch i32 %conv32, label %sw.default [
    i32 34, label %sw.bb
    i32 92, label %sw.bb35
    i32 47, label %sw.bb38
    i32 98, label %sw.bb41
    i32 102, label %sw.bb44
    i32 110, label %sw.bb47
    i32 114, label %sw.bb50
    i32 116, label %sw.bb53
    i32 117, label %sw.bb56
  ]

_Dynamic_check.failed11:                          ; preds = %while.cond
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed16:                          ; preds = %land.rhs
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.succeeded17
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed24:                          ; preds = %while.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed30:                          ; preds = %if.then29
  call void @llvm.trap() #8
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded31
  %44 = load i8*, i8** %output_ptr, align 4
  %45 = ptrtoint i8* %44 to i32
  %46 = call i8* @c_fetch_pointer_from_offset(i32 %45)
  %47 = call i1 @c_isTaintedPointerToTaintedMem(i8* %46)
  br i1 %47, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %sw.bb
  store i8 34, i8* %46, align 1
  br label %sw.epilog

_Dynamic_check.failed33:                          ; preds = %sw.bb
  call void @llvm.trap() #8
  unreachable

sw.bb35:                                          ; preds = %_Dynamic_check.succeeded31
  %48 = load i8*, i8** %output_ptr, align 4
  %49 = ptrtoint i8* %48 to i32
  %50 = call i8* @c_fetch_pointer_from_offset(i32 %49)
  %51 = call i1 @c_isTaintedPointerToTaintedMem(i8* %50)
  br i1 %51, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %sw.bb35
  store i8 92, i8* %50, align 1
  br label %sw.epilog

_Dynamic_check.failed36:                          ; preds = %sw.bb35
  call void @llvm.trap() #8
  unreachable

sw.bb38:                                          ; preds = %_Dynamic_check.succeeded31
  %52 = load i8*, i8** %output_ptr, align 4
  %53 = ptrtoint i8* %52 to i32
  %54 = call i8* @c_fetch_pointer_from_offset(i32 %53)
  %55 = call i1 @c_isTaintedPointerToTaintedMem(i8* %54)
  br i1 %55, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %sw.bb38
  store i8 47, i8* %54, align 1
  br label %sw.epilog

_Dynamic_check.failed39:                          ; preds = %sw.bb38
  call void @llvm.trap() #8
  unreachable

sw.bb41:                                          ; preds = %_Dynamic_check.succeeded31
  %56 = load i8*, i8** %output_ptr, align 4
  %57 = ptrtoint i8* %56 to i32
  %58 = call i8* @c_fetch_pointer_from_offset(i32 %57)
  %59 = call i1 @c_isTaintedPointerToTaintedMem(i8* %58)
  br i1 %59, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %sw.bb41
  store i8 8, i8* %58, align 1
  br label %sw.epilog

_Dynamic_check.failed42:                          ; preds = %sw.bb41
  call void @llvm.trap() #8
  unreachable

sw.bb44:                                          ; preds = %_Dynamic_check.succeeded31
  %60 = load i8*, i8** %output_ptr, align 4
  %61 = ptrtoint i8* %60 to i32
  %62 = call i8* @c_fetch_pointer_from_offset(i32 %61)
  %63 = call i1 @c_isTaintedPointerToTaintedMem(i8* %62)
  br i1 %63, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %sw.bb44
  store i8 12, i8* %62, align 1
  br label %sw.epilog

_Dynamic_check.failed45:                          ; preds = %sw.bb44
  call void @llvm.trap() #8
  unreachable

sw.bb47:                                          ; preds = %_Dynamic_check.succeeded31
  %64 = load i8*, i8** %output_ptr, align 4
  %65 = ptrtoint i8* %64 to i32
  %66 = call i8* @c_fetch_pointer_from_offset(i32 %65)
  %67 = call i1 @c_isTaintedPointerToTaintedMem(i8* %66)
  br i1 %67, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %sw.bb47
  store i8 10, i8* %66, align 1
  br label %sw.epilog

_Dynamic_check.failed48:                          ; preds = %sw.bb47
  call void @llvm.trap() #8
  unreachable

sw.bb50:                                          ; preds = %_Dynamic_check.succeeded31
  %68 = load i8*, i8** %output_ptr, align 4
  %69 = ptrtoint i8* %68 to i32
  %70 = call i8* @c_fetch_pointer_from_offset(i32 %69)
  %71 = call i1 @c_isTaintedPointerToTaintedMem(i8* %70)
  br i1 %71, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %sw.bb50
  store i8 13, i8* %70, align 1
  br label %sw.epilog

_Dynamic_check.failed51:                          ; preds = %sw.bb50
  call void @llvm.trap() #8
  unreachable

sw.bb53:                                          ; preds = %_Dynamic_check.succeeded31
  %72 = load i8*, i8** %output_ptr, align 4
  %73 = ptrtoint i8* %72 to i32
  %74 = call i8* @c_fetch_pointer_from_offset(i32 %73)
  %75 = call i1 @c_isTaintedPointerToTaintedMem(i8* %74)
  br i1 %75, label %_Dynamic_check.succeeded55, label %_Dynamic_check.failed54

_Dynamic_check.succeeded55:                       ; preds = %sw.bb53
  store i8 9, i8* %74, align 1
  br label %sw.epilog

_Dynamic_check.failed54:                          ; preds = %sw.bb53
  call void @llvm.trap() #8
  unreachable

sw.bb56:                                          ; preds = %_Dynamic_check.succeeded31
  %76 = load i8*, i8** %input_ptr, align 4
  store i8* %76, i8** %input_tmp, align 4
  %77 = load i8*, i8** %output_ptr, align 4
  store i8* %77, i8** %output_tmp, align 4
  %78 = load i8*, i8** %input_ptr, align 4
  %79 = load i8*, i8** %output_ptr, align 4
  %80 = ptrtoint i8* %78 to i32
  %81 = call i8* @c_fetch_pointer_from_offset(i32 %80)
  %82 = call i1 @c_isTaintedPointerToTaintedMem(i8* %81)
  br i1 %82, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %sw.bb56
  %83 = ptrtoint i8* %79 to i32
  %84 = call i8* @c_fetch_pointer_from_offset(i32 %83)
  %85 = call i1 @c_isTaintedPointerToTaintedMem(i8* %84)
  br i1 %85, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %_Dynamic_check.succeeded58
  %call61 = call i32 @parse_utf16(i8* %81, i8* %84)
  %cmp62 = icmp eq i32 %call61, -1
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %_Dynamic_check.succeeded60
  br label %error

_Dynamic_check.failed57:                          ; preds = %sw.bb56
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed59:                          ; preds = %_Dynamic_check.succeeded58
  call void @llvm.trap() #8
  unreachable

if.end65:                                         ; preds = %_Dynamic_check.succeeded60
  %86 = load i8*, i8** %input_tmp, align 4
  store i8* %86, i8** %input_ptr, align 4
  %87 = load i8*, i8** %output_tmp, align 4
  store i8* %87, i8** %output_ptr, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %_Dynamic_check.succeeded31
  br label %error

sw.epilog:                                        ; preds = %if.end65, %_Dynamic_check.succeeded55, %_Dynamic_check.succeeded52, %_Dynamic_check.succeeded49, %_Dynamic_check.succeeded46, %_Dynamic_check.succeeded43, %_Dynamic_check.succeeded40, %_Dynamic_check.succeeded37, %_Dynamic_check.succeeded34
  br label %if.end78

if.else:                                          ; preds = %_Dynamic_check.succeeded25
  %88 = load i8*, i8** %input_ptr, align 4
  %89 = ptrtoint i8* %88 to i32
  %90 = call i8* @c_fetch_pointer_from_offset(i32 %89)
  %91 = call i1 @c_isTaintedPointerToTaintedMem(i8* %90)
  br i1 %91, label %_Dynamic_check.succeeded67, label %_Dynamic_check.failed66

_Dynamic_check.succeeded67:                       ; preds = %if.else
  %92 = load i8, i8* %90, align 1
  %conv68 = zext i8 %92 to i32
  %cmp69 = icmp slt i32 %conv68, 32
  br i1 %cmp69, label %if.then71, label %if.else72

if.then71:                                        ; preds = %_Dynamic_check.succeeded67
  br label %error

_Dynamic_check.failed66:                          ; preds = %if.else
  call void @llvm.trap() #8
  unreachable

if.else72:                                        ; preds = %_Dynamic_check.succeeded67
  %93 = load i8*, i8** %input_ptr, align 4
  %94 = ptrtoint i8* %93 to i32
  %95 = call i8* @c_fetch_pointer_from_offset(i32 %94)
  %96 = call i1 @c_isTaintedPointerToTaintedMem(i8* %95)
  br i1 %96, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %if.else72
  %97 = load i8, i8* %95, align 1
  %98 = load i8*, i8** %output_ptr, align 4
  %99 = ptrtoint i8* %98 to i32
  %100 = call i8* @c_fetch_pointer_from_offset(i32 %99)
  %101 = call i1 @c_isTaintedPointerToTaintedMem(i8* %100)
  br i1 %101, label %_Dynamic_check.succeeded76, label %_Dynamic_check.failed75

_Dynamic_check.succeeded76:                       ; preds = %_Dynamic_check.succeeded74
  store i8 %97, i8* %100, align 1
  br label %if.end77

_Dynamic_check.failed73:                          ; preds = %if.else72
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed75:                          ; preds = %_Dynamic_check.succeeded74
  call void @llvm.trap() #8
  unreachable

if.end77:                                         ; preds = %_Dynamic_check.succeeded76
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %sw.epilog
  %102 = load i8*, i8** %output_ptr, align 4
  %incdec.ptr79 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %incdec.ptr79, i8** %output_ptr, align 4
  %103 = load i8*, i8** %input_ptr, align 4
  %incdec.ptr80 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr80, i8** %input_ptr, align 4
  br label %while.cond, !llvm.loop !2

while.end:                                        ; preds = %land.end
  %104 = load i8*, i8** %output_ptr, align 4
  %105 = ptrtoint i8* %104 to i32
  %106 = call i8* @c_fetch_pointer_from_offset(i32 %105)
  %107 = call i1 @c_isTaintedPointerToTaintedMem(i8* %106)
  br i1 %107, label %_Dynamic_check.succeeded82, label %_Dynamic_check.failed81

_Dynamic_check.succeeded82:                       ; preds = %while.end
  store i8 0, i8* %106, align 1
  %108 = load i8*, i8** %output_ptr, align 4
  %109 = load i8*, i8** %output, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %108 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %109 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add83 = add i64 %sub.ptr.sub, 1
  store i64 %add83, i64* %final_size, align 8
  %110 = load i64, i64* %final_size, align 8
  %call84 = call i8* @parson_string_tainted_malloc(i64 %110)
  store i8* %call84, i8** %resized_output, align 4
  %111 = load i8*, i8** %resized_output, align 4
  %112 = ptrtoint i8* %111 to i32
  %cmp85 = icmp eq i32 %112, 0
  br i1 %cmp85, label %if.then87, label %if.end88

if.then87:                                        ; preds = %_Dynamic_check.succeeded82
  br label %error

_Dynamic_check.failed81:                          ; preds = %while.end
  call void @llvm.trap() #8
  unreachable

if.end88:                                         ; preds = %_Dynamic_check.succeeded82
  %113 = load i8*, i8** %resized_output, align 4
  %114 = load i8*, i8** %output, align 4
  %_Dynamic_check.is_null = icmp eq i8* %114, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.end88
  %115 = load i8*, i8** %output, align 4
  %116 = load i8*, i8** %output, align 4
  %117 = load i64, i64* %initial_size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %116, i64 %117
  %118 = load i64, i64* %final_size, align 8
  %add.ptr89 = getelementptr inbounds i8, i8* %114, i64 %118
  %119 = call i64 @c_TPtoO(i8* %115)
  %120 = inttoptr i64 %119 to i8*
  %121 = call i64 @c_TPtoO(i8* %114)
  %122 = inttoptr i64 %121 to i8*
  %_Dynamic_check.lower = icmp ule i8* %120, %122
  %123 = call i64 @c_TPtoO(i8* %add.ptr89)
  %124 = inttoptr i64 %123 to i8*
  %125 = call i64 @c_TPtoO(i8* %add.ptr)
  %126 = inttoptr i64 %125 to i8*
  %_Dynamic_check.upper = icmp ule i8* %124, %126
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed90

_Dynamic_check.success:                           ; preds = %_Dynamic_check.subsumption, %if.end88
  %127 = load i64, i64* %final_size, align 8
  %128 = ptrtoint i8* %113 to i32
  %129 = call i8* @c_fetch_pointer_from_offset(i32 %128)
  %130 = call i1 @c_isTaintedPointerToTaintedMem(i8* %129)
  br i1 %130, label %_Dynamic_check.succeeded92, label %_Dynamic_check.failed91

_Dynamic_check.succeeded92:                       ; preds = %_Dynamic_check.success
  %131 = ptrtoint i8* %114 to i32
  %132 = call i8* @c_fetch_pointer_from_offset(i32 %131)
  %133 = call i1 @c_isTaintedPointerToTaintedMem(i8* %132)
  br i1 %133, label %_Dynamic_check.succeeded94, label %_Dynamic_check.failed93

_Dynamic_check.succeeded94:                       ; preds = %_Dynamic_check.succeeded92
  %call95 = call i8* @t_memcpy(i8* %129, i8* %132, i64 %127)
  %134 = load i8*, i8** %output, align 4
  %_Dynamic_check.is_null96 = icmp eq i8* %134, null
  br i1 %_Dynamic_check.is_null96, label %_Dynamic_check.success106, label %_Dynamic_check.subsumption97

_Dynamic_check.subsumption97:                     ; preds = %_Dynamic_check.succeeded94
  %135 = load i8*, i8** %output, align 4
  %136 = load i8*, i8** %output, align 4
  %137 = load i64, i64* %initial_size, align 8
  %add.ptr98 = getelementptr inbounds i8, i8* %136, i64 %137
  %_Dynamic_check.non_null = icmp ne i8* %134, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded100, label %_Dynamic_check.failed99

_Dynamic_check.succeeded100:                      ; preds = %_Dynamic_check.subsumption97
  %add.ptr101 = getelementptr inbounds i8, i8* %134, i64 0
  %138 = call i64 @c_TPtoO(i8* %135)
  %139 = inttoptr i64 %138 to i8*
  %140 = call i64 @c_TPtoO(i8* %134)
  %141 = inttoptr i64 %140 to i8*
  %_Dynamic_check.lower102 = icmp ule i8* %139, %141
  %142 = call i64 @c_TPtoO(i8* %add.ptr101)
  %143 = inttoptr i64 %142 to i8*
  %144 = call i64 @c_TPtoO(i8* %add.ptr98)
  %145 = inttoptr i64 %144 to i8*
  %_Dynamic_check.upper103 = icmp ule i8* %143, %145
  %_Dynamic_check.cast104 = and i1 %_Dynamic_check.lower102, %_Dynamic_check.upper103
  br i1 %_Dynamic_check.cast104, label %_Dynamic_check.success106, label %_Dynamic_check.failed105

_Dynamic_check.success106:                        ; preds = %_Dynamic_check.succeeded100, %_Dynamic_check.succeeded94
  %146 = ptrtoint i8* %134 to i32
  %147 = call i8* @c_fetch_pointer_from_offset(i32 %146)
  %148 = call i1 @c_isTaintedPointerToTaintedMem(i8* %147)
  br i1 %148, label %_Dynamic_check.succeeded108, label %_Dynamic_check.failed107

_Dynamic_check.succeeded108:                      ; preds = %_Dynamic_check.success106
  call void @t_free(i8* %147)
  %149 = load i8*, i8** %resized_output, align 4
  store i8* %149, i8** %retval, align 8
  br label %return

_Dynamic_check.failed90:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed91:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed93:                          ; preds = %_Dynamic_check.succeeded92
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed99:                          ; preds = %_Dynamic_check.subsumption97
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed105:                         ; preds = %_Dynamic_check.succeeded100
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed107:                         ; preds = %_Dynamic_check.success106
  call void @llvm.trap() #8
  unreachable

error:                                            ; preds = %if.then87, %if.then71, %sw.default, %if.then64, %if.then
  %150 = load i8*, i8** %output, align 4
  %_Dynamic_check.is_null109 = icmp eq i8* %150, null
  br i1 %_Dynamic_check.is_null109, label %_Dynamic_check.success120, label %_Dynamic_check.subsumption110

_Dynamic_check.subsumption110:                    ; preds = %error
  %151 = load i8*, i8** %output, align 4
  %152 = load i8*, i8** %output, align 4
  %153 = load i64, i64* %initial_size, align 8
  %add.ptr111 = getelementptr inbounds i8, i8* %152, i64 %153
  %_Dynamic_check.non_null112 = icmp ne i8* %150, null
  br i1 %_Dynamic_check.non_null112, label %_Dynamic_check.succeeded114, label %_Dynamic_check.failed113

_Dynamic_check.succeeded114:                      ; preds = %_Dynamic_check.subsumption110
  %add.ptr115 = getelementptr inbounds i8, i8* %150, i64 0
  %154 = call i64 @c_TPtoO(i8* %151)
  %155 = inttoptr i64 %154 to i8*
  %156 = call i64 @c_TPtoO(i8* %150)
  %157 = inttoptr i64 %156 to i8*
  %_Dynamic_check.lower116 = icmp ule i8* %155, %157
  %158 = call i64 @c_TPtoO(i8* %add.ptr115)
  %159 = inttoptr i64 %158 to i8*
  %160 = call i64 @c_TPtoO(i8* %add.ptr111)
  %161 = inttoptr i64 %160 to i8*
  %_Dynamic_check.upper117 = icmp ule i8* %159, %161
  %_Dynamic_check.cast118 = and i1 %_Dynamic_check.lower116, %_Dynamic_check.upper117
  br i1 %_Dynamic_check.cast118, label %_Dynamic_check.success120, label %_Dynamic_check.failed119

_Dynamic_check.success120:                        ; preds = %_Dynamic_check.succeeded114, %error
  %162 = ptrtoint i8* %150 to i32
  %163 = call i8* @c_fetch_pointer_from_offset(i32 %162)
  %164 = call i1 @c_isTaintedPointerToTaintedMem(i8* %163)
  br i1 %164, label %_Dynamic_check.succeeded122, label %_Dynamic_check.failed121

_Dynamic_check.succeeded122:                      ; preds = %_Dynamic_check.success120
  call void @t_free(i8* %163)
  store i8* null, i8** %retval, align 8
  br label %return

_Dynamic_check.failed113:                         ; preds = %_Dynamic_check.subsumption110
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed119:                         ; preds = %_Dynamic_check.succeeded114
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed121:                         ; preds = %_Dynamic_check.success120
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded122, %_Dynamic_check.succeeded108
  %165 = load i8*, i8** %retval, align 8
  ret i8* %165
}

declare i1 @c_isTaintedPointerToTaintedMem(i8*)

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #4

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @get_quoted_string(i8* %string, i8* (i8*, i64)* %process_string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %process_string.addr = alloca i8* (i8*, i64)*, align 4
  %ret_param_types = alloca [3 x i32], align 4
  store i8* %string, i8** %string.addr, align 4
  store i8* (i8*, i64)* %process_string, i8* (i8*, i64)** %process_string.addr, align 4
  %0 = bitcast [3 x i32]* %ret_param_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.get_quoted_string.ret_param_types to i8*), i64 12, i1 false)
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load i8*, i8** %string.addr, align 4
  %2 = ptrtoint i8* %1 to i32
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %ret_param_types, i64 0, i64 0
  %call1 = call i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...) bitcast (i32 (...)* @sbx_register_callback to i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...)*)(i32 (i32, i32, i64)* @process_string_trampoline, i32 2, i32 1, i32* %arraydecay)
  %3 = ptrtoint i8* %call to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call2 = call i32 @w2c_get_quoted_string(i8* %4, i32 %2, i32 %call1)
  %conv = zext i32 %call2 to i64
  %5 = inttoptr i64 %conv to i8*
  ret i8* %5
}

declare dso_local i32 @w2c_get_quoted_string(i8*, i32, i32) #1

declare dso_local i32 @sbx_register_callback(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @parse_value(i8* %string, i64 %nesting) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %nesting.addr = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 4
  store i64 %nesting, i64* %nesting.addr, align 8
  %0 = load i64, i64* %nesting.addr, align 8
  %cmp = icmp ugt i64 %0, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i8*, i8** %string.addr, align 4
  %2 = ptrtoint i8* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %while.cond
  %5 = load i8, i8* %3, align 1
  %conv = zext i8 %5 to i32
  %call = call i32 @isspace(i32 %conv) #9
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %_Dynamic_check.succeeded
  %6 = load i8*, i8** %string.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %string.addr, align 4
  br label %while.cond, !llvm.loop !4

_Dynamic_check.failed:                            ; preds = %while.cond
  call void @llvm.trap() #8
  unreachable

while.end:                                        ; preds = %_Dynamic_check.succeeded
  %7 = load i8*, i8** %string.addr, align 4
  %8 = ptrtoint i8* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %while.end
  %11 = load i8, i8* %9, align 1
  %conv3 = sext i8 %11 to i32
  switch i32 %conv3, label %sw.default [
    i32 123, label %sw.bb
    i32 91, label %sw.bb7
    i32 34, label %sw.bb12
    i32 102, label %sw.bb16
    i32 116, label %sw.bb16
    i32 45, label %sw.bb20
    i32 48, label %sw.bb20
    i32 49, label %sw.bb20
    i32 50, label %sw.bb20
    i32 51, label %sw.bb20
    i32 52, label %sw.bb20
    i32 53, label %sw.bb20
    i32 54, label %sw.bb20
    i32 55, label %sw.bb20
    i32 56, label %sw.bb20
    i32 57, label %sw.bb20
    i32 110, label %sw.bb24
  ]

_Dynamic_check.failed1:                           ; preds = %while.end
  call void @llvm.trap() #8
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded2
  %12 = load i8*, i8** %string.addr, align 4
  %13 = load i64, i64* %nesting.addr, align 8
  %add = add i64 %13, 1
  %14 = ptrtoint i8* %12 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %sw.bb
  %call6 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*, i64)* @parse_object_value to %Tstruct.Spl_json_value_t_t* (i8*, i64)*)(i8* %15, i64 %add)
  %17 = bitcast %Tstruct.Spl_json_value_t_t* %call6 to %Tstruct.json_value_t_t*
  %18 = bitcast %Tstruct.json_value_t_t* %17 to i8*
  %19 = call i64 @c_TPtoO(i8* %18)
  %20 = inttoptr i64 %19 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %20, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed4:                           ; preds = %sw.bb
  call void @llvm.trap() #8
  unreachable

sw.bb7:                                           ; preds = %_Dynamic_check.succeeded2
  %21 = load i8*, i8** %string.addr, align 4
  %22 = load i64, i64* %nesting.addr, align 8
  %add8 = add i64 %22, 1
  %23 = ptrtoint i8* %21 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %sw.bb7
  %call11 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*, i64)* @parse_array_value to %Tstruct.Spl_json_value_t_t* (i8*, i64)*)(i8* %24, i64 %add8)
  %26 = bitcast %Tstruct.Spl_json_value_t_t* %call11 to %Tstruct.json_value_t_t*
  %27 = bitcast %Tstruct.json_value_t_t* %26 to i8*
  %28 = call i64 @c_TPtoO(i8* %27)
  %29 = inttoptr i64 %28 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %29, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed9:                           ; preds = %sw.bb7
  call void @llvm.trap() #8
  unreachable

sw.bb12:                                          ; preds = %_Dynamic_check.succeeded2
  %30 = load i8*, i8** %string.addr, align 4
  %31 = ptrtoint i8* %30 to i32
  %32 = call i8* @c_fetch_pointer_from_offset(i32 %31)
  %33 = call i1 @c_isTaintedPointerToTaintedMem(i8* %32)
  br i1 %33, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %sw.bb12
  %call15 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*, i8* (i8*, i64)*)* @parse_string_value to %Tstruct.Spl_json_value_t_t* (i8*, i8* (i8*, i64)*)*)(i8* %32, i8* (i8*, i64)* @process_string)
  %34 = bitcast %Tstruct.Spl_json_value_t_t* %call15 to %Tstruct.json_value_t_t*
  %35 = bitcast %Tstruct.json_value_t_t* %34 to i8*
  %36 = call i64 @c_TPtoO(i8* %35)
  %37 = inttoptr i64 %36 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %37, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed13:                          ; preds = %sw.bb12
  call void @llvm.trap() #8
  unreachable

sw.bb16:                                          ; preds = %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2
  %38 = load i8*, i8** %string.addr, align 4
  %39 = ptrtoint i8* %38 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %sw.bb16
  %call19 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*)* @parse_boolean_value to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %40)
  %42 = bitcast %Tstruct.Spl_json_value_t_t* %call19 to %Tstruct.json_value_t_t*
  %43 = bitcast %Tstruct.json_value_t_t* %42 to i8*
  %44 = call i64 @c_TPtoO(i8* %43)
  %45 = inttoptr i64 %44 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %45, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed17:                          ; preds = %sw.bb16
  call void @llvm.trap() #8
  unreachable

sw.bb20:                                          ; preds = %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2
  %46 = load i8*, i8** %string.addr, align 4
  %47 = ptrtoint i8* %46 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %sw.bb20
  %call23 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @parse_number_value to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %48)
  %50 = bitcast %Tstruct.Spl_json_value_t_t* %call23 to %Tstruct.json_value_t_t*
  %51 = bitcast %Tstruct.json_value_t_t* %50 to i8*
  %52 = call i64 @c_TPtoO(i8* %51)
  %53 = inttoptr i64 %52 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %53, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed21:                          ; preds = %sw.bb20
  call void @llvm.trap() #8
  unreachable

sw.bb24:                                          ; preds = %_Dynamic_check.succeeded2
  %54 = load i8*, i8** %string.addr, align 4
  %55 = ptrtoint i8* %54 to i32
  %56 = call i8* @c_fetch_pointer_from_offset(i32 %55)
  %57 = call i1 @c_isTaintedPointerToTaintedMem(i8* %56)
  br i1 %57, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %sw.bb24
  %call27 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*)* @parse_null_value to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %56)
  %58 = bitcast %Tstruct.Spl_json_value_t_t* %call27 to %Tstruct.json_value_t_t*
  %59 = bitcast %Tstruct.json_value_t_t* %58 to i8*
  %60 = call i64 @c_TPtoO(i8* %59)
  %61 = inttoptr i64 %60 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %61, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed25:                          ; preds = %sw.bb24
  call void @llvm.trap() #8
  unreachable

sw.default:                                       ; preds = %_Dynamic_check.succeeded2
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %_Dynamic_check.succeeded26, %_Dynamic_check.succeeded22, %_Dynamic_check.succeeded18, %_Dynamic_check.succeeded14, %_Dynamic_check.succeeded10, %_Dynamic_check.succeeded5, %if.then
  %62 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %62
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #5

declare i64 @c_TPtoO(i8*)

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.json_value_t_t* @parse_string_value(i8* %string, i8* (i8*, i64)* %process_string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %process_string.addr = alloca i8* (i8*, i64)*, align 4
  %ret_param_types = alloca [3 x i32], align 4
  store i8* %string, i8** %string.addr, align 4
  store i8* (i8*, i64)* %process_string, i8* (i8*, i64)** %process_string.addr, align 4
  %0 = bitcast [3 x i32]* %ret_param_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.parse_string_value.ret_param_types to i8*), i64 12, i1 false)
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load i8*, i8** %string.addr, align 4
  %2 = ptrtoint i8* %1 to i32
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %ret_param_types, i64 0, i64 0
  %call1 = call i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...) bitcast (i32 (...)* @sbx_register_callback to i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...)*)(i32 (i32, i32, i64)* @process_string_trampoline, i32 2, i32 1, i32* %arraydecay)
  %3 = ptrtoint i8* %call to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call2 = call i32 @w2c_parse_string_value(i8* %4, i32 %2, i32 %call1)
  %conv = zext i32 %call2 to i64
  %5 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %5
}

declare dso_local i32 @w2c_parse_string_value(i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @parse_number_value(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  store i8* %string, i8** %string.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = ptrtoint i8* %call to i64
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %2)
  %call1 = call i32 @w2c_parse_number_value(i8* %3, i32 %1)
  %conv = zext i32 %call1 to i64
  %4 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %4
}

declare dso_local i32 @w2c_parse_number_value(i8*, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_serialize_to_buffer_r(%Tstruct.json_value_t_t* %value, i8* %buf, i32 %level, i32 %is_pretty, i8* %num_buf, i8* %buf_start, i64 %buf_len) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %buf.addr = alloca i8*, align 4
  %level.addr = alloca i32, align 4
  %is_pretty.addr = alloca i32, align 4
  %num_buf.addr = alloca i8*, align 4
  %buf_start.addr = alloca i8*, align 4
  %buf_len.addr = alloca i64, align 8
  %key = alloca i8*, align 4
  %string = alloca i8*, align 4
  %temp_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %num = alloca double, align 8
  %written = alloca i32, align 4
  %written_total = alloca i32, align 4
  %temp_buf = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  store i32 %is_pretty, i32* %is_pretty.addr, align 4
  store i8* %num_buf, i8** %num_buf.addr, align 4
  store i8* %buf_start, i8** %buf_start.addr, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i8* null, i8** %key, align 4
  store i8* null, i8** %string, align 4
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  store %Tstruct.Spl_json_array_t_t* null, %Tstruct.Spl_json_array_t_t** %array, align 4
  store %Tstruct.Spl_json_object_t_t* null, %Tstruct.Spl_json_object_t_t** %object, align 4
  store i64 0, i64* %i, align 8
  store i64 0, i64* %count, align 8
  store double 0.000000e+00, double* %num, align 8
  store i32 -1, i32* %written, align 4
  store i32 0, i32* %written_total, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb152
    i32 2, label %sw.bb379
    i32 6, label %sw.bb402
    i32 3, label %sw.bb441
    i32 1, label %sw.bb460
    i32 -1, label %sw.bb477
  ]

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %sw.bb
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %call3 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %10)
  %11 = bitcast %Tstruct.Spl_json_array_t_t* %call3 to %Tstruct.json_array_t_t*
  %12 = bitcast %Tstruct.json_array_t_t* %11 to i8*
  %13 = call i64 @c_TPtoO(i8* %12)
  %14 = inttoptr i64 %13 to %Tstruct.json_array_t_t*
  %15 = bitcast %Tstruct.json_array_t_t* %14 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %15, %Tstruct.Spl_json_array_t_t** %array, align 4
  %16 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array, align 4
  %17 = ptrtoint %Tstruct.Spl_json_array_t_t* %16 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded2
  %20 = bitcast i8* %18 to %Tstruct.Spl_json_array_t_t*
  %call6 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %20)
  store i64 %call6, i64* %count, align 8
  br label %do.body

do.body:                                          ; preds = %_Dynamic_check.succeeded5
  %21 = load i8*, i8** %buf.addr, align 4
  %22 = load i8*, i8** %buf_start.addr, align 4
  %23 = load i64, i64* %buf_len.addr, align 8
  %24 = ptrtoint i8* %21 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %do.body
  %27 = ptrtoint i8* %22 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded8
  %call11 = call i32 @append_string(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %28, i64 %23)
  store i32 %call11, i32* %written, align 4
  %30 = load i32, i32* %written, align 4
  %cmp = icmp slt i32 %30, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded10
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed1:                           ; preds = %sw.bb
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %do.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded10
  %31 = load i8*, i8** %buf.addr, align 4
  %32 = ptrtoint i8* %31 to i32
  %cmp12 = icmp ne i32 %32, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %33 = load i32, i32* %written, align 4
  %34 = load i8*, i8** %buf.addr, align 4
  %idx.ext = sext i32 %33 to i64
  %add.ptr = getelementptr inbounds i8, i8* %34, i64 %idx.ext
  store i8* %add.ptr, i8** %buf.addr, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end
  %35 = load i32, i32* %written, align 4
  %36 = load i32, i32* %written_total, align 4
  %add = add nsw i32 %36, %35
  store i32 %add, i32* %written_total, align 4
  br label %do.end

do.end:                                           ; preds = %if.end14
  %37 = load i64, i64* %count, align 8
  %cmp15 = icmp ugt i64 %37, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %do.end
  %38 = load i32, i32* %is_pretty.addr, align 4
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %if.then16, label %if.end33

if.then16:                                        ; preds = %land.lhs.true
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  %39 = load i8*, i8** %buf.addr, align 4
  %40 = load i8*, i8** %buf_start.addr, align 4
  %41 = load i64, i64* %buf_len.addr, align 8
  %42 = ptrtoint i8* %39 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %do.body17
  %45 = ptrtoint i8* %40 to i32
  %46 = call i8* @c_fetch_pointer_from_offset(i32 %45)
  %47 = call i1 @c_isTaintedPointerToTaintedMem(i8* %46)
  br i1 %47, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.succeeded19
  %call22 = call i32 @append_string(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %46, i64 %41)
  store i32 %call22, i32* %written, align 4
  %48 = load i32, i32* %written, align 4
  %cmp23 = icmp slt i32 %48, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %_Dynamic_check.succeeded21
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed18:                          ; preds = %do.body17
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded19
  call void @llvm.trap() #8
  unreachable

if.end25:                                         ; preds = %_Dynamic_check.succeeded21
  %49 = load i8*, i8** %buf.addr, align 4
  %50 = ptrtoint i8* %49 to i32
  %cmp26 = icmp ne i32 %50, 0
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end25
  %51 = load i32, i32* %written, align 4
  %52 = load i8*, i8** %buf.addr, align 4
  %idx.ext28 = sext i32 %51 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %52, i64 %idx.ext28
  store i8* %add.ptr29, i8** %buf.addr, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25
  %53 = load i32, i32* %written, align 4
  %54 = load i32, i32* %written_total, align 4
  %add31 = add nsw i32 %54, %53
  store i32 %add31, i32* %written_total, align 4
  br label %do.end32

do.end32:                                         ; preds = %if.end30
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %land.lhs.true, %do.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %55 = load i64, i64* %i, align 8
  %56 = load i64, i64* %count, align 8
  %cmp34 = icmp ult i64 %55, %56
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %57 = load i32, i32* %is_pretty.addr, align 4
  %tobool35 = icmp ne i32 %57, 0
  br i1 %tobool35, label %if.then36, label %if.end54

if.then36:                                        ; preds = %for.body
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  %58 = load i8*, i8** %buf.addr, align 4
  %59 = load i32, i32* %level.addr, align 4
  %add38 = add nsw i32 %59, 1
  %60 = load i8*, i8** %buf_start.addr, align 4
  %61 = load i64, i64* %buf_len.addr, align 8
  %62 = ptrtoint i8* %58 to i32
  %63 = call i8* @c_fetch_pointer_from_offset(i32 %62)
  %64 = call i1 @c_isTaintedPointerToTaintedMem(i8* %63)
  br i1 %64, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %do.body37
  %65 = ptrtoint i8* %60 to i32
  %66 = call i8* @c_fetch_pointer_from_offset(i32 %65)
  %67 = call i1 @c_isTaintedPointerToTaintedMem(i8* %66)
  br i1 %67, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %_Dynamic_check.succeeded40
  %call43 = call i32 @append_indent(i8* %63, i32 %add38, i8* %66, i64 %61)
  store i32 %call43, i32* %written, align 4
  %68 = load i32, i32* %written, align 4
  %cmp44 = icmp slt i32 %68, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %_Dynamic_check.succeeded42
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed39:                          ; preds = %do.body37
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed41:                          ; preds = %_Dynamic_check.succeeded40
  call void @llvm.trap() #8
  unreachable

if.end46:                                         ; preds = %_Dynamic_check.succeeded42
  %69 = load i8*, i8** %buf.addr, align 4
  %70 = ptrtoint i8* %69 to i32
  %cmp47 = icmp ne i32 %70, 0
  br i1 %cmp47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end46
  %71 = load i32, i32* %written, align 4
  %72 = load i8*, i8** %buf.addr, align 4
  %idx.ext49 = sext i32 %71 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %72, i64 %idx.ext49
  store i8* %add.ptr50, i8** %buf.addr, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end46
  %73 = load i32, i32* %written, align 4
  %74 = load i32, i32* %written_total, align 4
  %add52 = add nsw i32 %74, %73
  store i32 %add52, i32* %written_total, align 4
  br label %do.end53

do.end53:                                         ; preds = %if.end51
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %for.body
  %75 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array, align 4
  %76 = load i64, i64* %i, align 8
  %77 = ptrtoint %Tstruct.Spl_json_array_t_t* %75 to i32
  %78 = call i8* @c_fetch_pointer_from_offset(i32 %77)
  %79 = call i1 @c_isTaintedPointerToTaintedMem(i8* %78)
  br i1 %79, label %_Dynamic_check.succeeded56, label %_Dynamic_check.failed55

_Dynamic_check.succeeded56:                       ; preds = %if.end54
  %80 = bitcast i8* %78 to %Tstruct.Spl_json_array_t_t*
  %call57 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %80, i64 %76)
  %81 = bitcast %Tstruct.Spl_json_value_t_t* %call57 to %Tstruct.json_value_t_t*
  %82 = bitcast %Tstruct.json_value_t_t* %81 to i8*
  %83 = call i64 @c_TPtoO(i8* %82)
  %84 = inttoptr i64 %83 to %Tstruct.json_value_t_t*
  %85 = bitcast %Tstruct.json_value_t_t* %84 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %85, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %86 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %87 = load i8*, i8** %buf.addr, align 4
  %88 = load i32, i32* %level.addr, align 4
  %add58 = add nsw i32 %88, 1
  %89 = load i32, i32* %is_pretty.addr, align 4
  %90 = load i8*, i8** %num_buf.addr, align 4
  %91 = load i8*, i8** %buf_start.addr, align 4
  %92 = load i64, i64* %buf_len.addr, align 8
  %93 = ptrtoint %Tstruct.Spl_json_value_t_t* %86 to i32
  %94 = call i8* @c_fetch_pointer_from_offset(i32 %93)
  %95 = call i1 @c_isTaintedPointerToTaintedMem(i8* %94)
  br i1 %95, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %_Dynamic_check.succeeded56
  %96 = bitcast i8* %94 to %Tstruct.Spl_json_value_t_t*
  %97 = ptrtoint i8* %87 to i32
  %98 = call i8* @c_fetch_pointer_from_offset(i32 %97)
  %99 = call i1 @c_isTaintedPointerToTaintedMem(i8* %98)
  br i1 %99, label %_Dynamic_check.succeeded62, label %_Dynamic_check.failed61

_Dynamic_check.succeeded62:                       ; preds = %_Dynamic_check.succeeded60
  %100 = ptrtoint i8* %90 to i32
  %101 = call i8* @c_fetch_pointer_from_offset(i32 %100)
  %102 = call i1 @c_isTaintedPointerToTaintedMem(i8* %101)
  br i1 %102, label %_Dynamic_check.succeeded64, label %_Dynamic_check.failed63

_Dynamic_check.succeeded64:                       ; preds = %_Dynamic_check.succeeded62
  %103 = ptrtoint i8* %91 to i32
  %104 = call i8* @c_fetch_pointer_from_offset(i32 %103)
  %105 = call i1 @c_isTaintedPointerToTaintedMem(i8* %104)
  br i1 %105, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %_Dynamic_check.succeeded64
  %call67 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %96, i8* %98, i32 %add58, i32 %89, i8* %101, i8* %104, i64 %92)
  store i32 %call67, i32* %written, align 4
  %106 = load i32, i32* %written, align 4
  %cmp68 = icmp slt i32 %106, 0
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %_Dynamic_check.succeeded66
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed55:                          ; preds = %if.end54
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed59:                          ; preds = %_Dynamic_check.succeeded56
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed61:                          ; preds = %_Dynamic_check.succeeded60
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed63:                          ; preds = %_Dynamic_check.succeeded62
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed65:                          ; preds = %_Dynamic_check.succeeded64
  call void @llvm.trap() #8
  unreachable

if.end70:                                         ; preds = %_Dynamic_check.succeeded66
  %107 = load i8*, i8** %buf.addr, align 4
  %108 = ptrtoint i8* %107 to i32
  %cmp71 = icmp ne i32 %108, 0
  br i1 %cmp71, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end70
  %109 = load i32, i32* %written, align 4
  %110 = load i8*, i8** %buf.addr, align 4
  %idx.ext73 = sext i32 %109 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %110, i64 %idx.ext73
  store i8* %add.ptr74, i8** %buf.addr, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end70
  %111 = load i32, i32* %written, align 4
  %112 = load i32, i32* %written_total, align 4
  %add76 = add nsw i32 %112, %111
  store i32 %add76, i32* %written_total, align 4
  %113 = load i64, i64* %i, align 8
  %114 = load i64, i64* %count, align 8
  %sub = sub i64 %114, 1
  %cmp77 = icmp ult i64 %113, %sub
  br i1 %cmp77, label %if.then78, label %if.end95

if.then78:                                        ; preds = %if.end75
  br label %do.body79

do.body79:                                        ; preds = %if.then78
  %115 = load i8*, i8** %buf.addr, align 4
  %116 = load i8*, i8** %buf_start.addr, align 4
  %117 = load i64, i64* %buf_len.addr, align 8
  %118 = ptrtoint i8* %115 to i32
  %119 = call i8* @c_fetch_pointer_from_offset(i32 %118)
  %120 = call i1 @c_isTaintedPointerToTaintedMem(i8* %119)
  br i1 %120, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %do.body79
  %121 = ptrtoint i8* %116 to i32
  %122 = call i8* @c_fetch_pointer_from_offset(i32 %121)
  %123 = call i1 @c_isTaintedPointerToTaintedMem(i8* %122)
  br i1 %123, label %_Dynamic_check.succeeded83, label %_Dynamic_check.failed82

_Dynamic_check.succeeded83:                       ; preds = %_Dynamic_check.succeeded81
  %call84 = call i32 @append_string(i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %122, i64 %117)
  store i32 %call84, i32* %written, align 4
  %124 = load i32, i32* %written, align 4
  %cmp85 = icmp slt i32 %124, 0
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %_Dynamic_check.succeeded83
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed80:                          ; preds = %do.body79
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed82:                          ; preds = %_Dynamic_check.succeeded81
  call void @llvm.trap() #8
  unreachable

if.end87:                                         ; preds = %_Dynamic_check.succeeded83
  %125 = load i8*, i8** %buf.addr, align 4
  %126 = ptrtoint i8* %125 to i32
  %cmp88 = icmp ne i32 %126, 0
  br i1 %cmp88, label %if.then89, label %if.end92

if.then89:                                        ; preds = %if.end87
  %127 = load i32, i32* %written, align 4
  %128 = load i8*, i8** %buf.addr, align 4
  %idx.ext90 = sext i32 %127 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %128, i64 %idx.ext90
  store i8* %add.ptr91, i8** %buf.addr, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end87
  %129 = load i32, i32* %written, align 4
  %130 = load i32, i32* %written_total, align 4
  %add93 = add nsw i32 %130, %129
  store i32 %add93, i32* %written_total, align 4
  br label %do.end94

do.end94:                                         ; preds = %if.end92
  br label %if.end95

if.end95:                                         ; preds = %do.end94, %if.end75
  %131 = load i32, i32* %is_pretty.addr, align 4
  %tobool96 = icmp ne i32 %131, 0
  br i1 %tobool96, label %if.then97, label %if.end114

if.then97:                                        ; preds = %if.end95
  br label %do.body98

do.body98:                                        ; preds = %if.then97
  %132 = load i8*, i8** %buf.addr, align 4
  %133 = load i8*, i8** %buf_start.addr, align 4
  %134 = load i64, i64* %buf_len.addr, align 8
  %135 = ptrtoint i8* %132 to i32
  %136 = call i8* @c_fetch_pointer_from_offset(i32 %135)
  %137 = call i1 @c_isTaintedPointerToTaintedMem(i8* %136)
  br i1 %137, label %_Dynamic_check.succeeded100, label %_Dynamic_check.failed99

_Dynamic_check.succeeded100:                      ; preds = %do.body98
  %138 = ptrtoint i8* %133 to i32
  %139 = call i8* @c_fetch_pointer_from_offset(i32 %138)
  %140 = call i1 @c_isTaintedPointerToTaintedMem(i8* %139)
  br i1 %140, label %_Dynamic_check.succeeded102, label %_Dynamic_check.failed101

_Dynamic_check.succeeded102:                      ; preds = %_Dynamic_check.succeeded100
  %call103 = call i32 @append_string(i8* %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %139, i64 %134)
  store i32 %call103, i32* %written, align 4
  %141 = load i32, i32* %written, align 4
  %cmp104 = icmp slt i32 %141, 0
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %_Dynamic_check.succeeded102
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed99:                          ; preds = %do.body98
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed101:                         ; preds = %_Dynamic_check.succeeded100
  call void @llvm.trap() #8
  unreachable

if.end106:                                        ; preds = %_Dynamic_check.succeeded102
  %142 = load i8*, i8** %buf.addr, align 4
  %143 = ptrtoint i8* %142 to i32
  %cmp107 = icmp ne i32 %143, 0
  br i1 %cmp107, label %if.then108, label %if.end111

if.then108:                                       ; preds = %if.end106
  %144 = load i32, i32* %written, align 4
  %145 = load i8*, i8** %buf.addr, align 4
  %idx.ext109 = sext i32 %144 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %145, i64 %idx.ext109
  store i8* %add.ptr110, i8** %buf.addr, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end106
  %146 = load i32, i32* %written, align 4
  %147 = load i32, i32* %written_total, align 4
  %add112 = add nsw i32 %147, %146
  store i32 %add112, i32* %written_total, align 4
  br label %do.end113

do.end113:                                        ; preds = %if.end111
  br label %if.end114

if.end114:                                        ; preds = %do.end113, %if.end95
  br label %for.inc

for.inc:                                          ; preds = %if.end114
  %148 = load i64, i64* %i, align 8
  %inc = add i64 %148, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %149 = load i64, i64* %count, align 8
  %cmp115 = icmp ugt i64 %149, 0
  br i1 %cmp115, label %land.lhs.true116, label %if.end135

land.lhs.true116:                                 ; preds = %for.end
  %150 = load i32, i32* %is_pretty.addr, align 4
  %tobool117 = icmp ne i32 %150, 0
  br i1 %tobool117, label %if.then118, label %if.end135

if.then118:                                       ; preds = %land.lhs.true116
  br label %do.body119

do.body119:                                       ; preds = %if.then118
  %151 = load i8*, i8** %buf.addr, align 4
  %152 = load i32, i32* %level.addr, align 4
  %153 = load i8*, i8** %buf_start.addr, align 4
  %154 = load i64, i64* %buf_len.addr, align 8
  %155 = ptrtoint i8* %151 to i32
  %156 = call i8* @c_fetch_pointer_from_offset(i32 %155)
  %157 = call i1 @c_isTaintedPointerToTaintedMem(i8* %156)
  br i1 %157, label %_Dynamic_check.succeeded121, label %_Dynamic_check.failed120

_Dynamic_check.succeeded121:                      ; preds = %do.body119
  %158 = ptrtoint i8* %153 to i32
  %159 = call i8* @c_fetch_pointer_from_offset(i32 %158)
  %160 = call i1 @c_isTaintedPointerToTaintedMem(i8* %159)
  br i1 %160, label %_Dynamic_check.succeeded123, label %_Dynamic_check.failed122

_Dynamic_check.succeeded123:                      ; preds = %_Dynamic_check.succeeded121
  %call124 = call i32 @append_indent(i8* %156, i32 %152, i8* %159, i64 %154)
  store i32 %call124, i32* %written, align 4
  %161 = load i32, i32* %written, align 4
  %cmp125 = icmp slt i32 %161, 0
  br i1 %cmp125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %_Dynamic_check.succeeded123
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed120:                         ; preds = %do.body119
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed122:                         ; preds = %_Dynamic_check.succeeded121
  call void @llvm.trap() #8
  unreachable

if.end127:                                        ; preds = %_Dynamic_check.succeeded123
  %162 = load i8*, i8** %buf.addr, align 4
  %163 = ptrtoint i8* %162 to i32
  %cmp128 = icmp ne i32 %163, 0
  br i1 %cmp128, label %if.then129, label %if.end132

if.then129:                                       ; preds = %if.end127
  %164 = load i32, i32* %written, align 4
  %165 = load i8*, i8** %buf.addr, align 4
  %idx.ext130 = sext i32 %164 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %165, i64 %idx.ext130
  store i8* %add.ptr131, i8** %buf.addr, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end127
  %166 = load i32, i32* %written, align 4
  %167 = load i32, i32* %written_total, align 4
  %add133 = add nsw i32 %167, %166
  store i32 %add133, i32* %written_total, align 4
  br label %do.end134

do.end134:                                        ; preds = %if.end132
  br label %if.end135

if.end135:                                        ; preds = %do.end134, %land.lhs.true116, %for.end
  br label %do.body136

do.body136:                                       ; preds = %if.end135
  %168 = load i8*, i8** %buf.addr, align 4
  %169 = load i8*, i8** %buf_start.addr, align 4
  %170 = load i64, i64* %buf_len.addr, align 8
  %171 = ptrtoint i8* %168 to i32
  %172 = call i8* @c_fetch_pointer_from_offset(i32 %171)
  %173 = call i1 @c_isTaintedPointerToTaintedMem(i8* %172)
  br i1 %173, label %_Dynamic_check.succeeded138, label %_Dynamic_check.failed137

_Dynamic_check.succeeded138:                      ; preds = %do.body136
  %174 = ptrtoint i8* %169 to i32
  %175 = call i8* @c_fetch_pointer_from_offset(i32 %174)
  %176 = call i1 @c_isTaintedPointerToTaintedMem(i8* %175)
  br i1 %176, label %_Dynamic_check.succeeded140, label %_Dynamic_check.failed139

_Dynamic_check.succeeded140:                      ; preds = %_Dynamic_check.succeeded138
  %call141 = call i32 @append_string(i8* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %175, i64 %170)
  store i32 %call141, i32* %written, align 4
  %177 = load i32, i32* %written, align 4
  %cmp142 = icmp slt i32 %177, 0
  br i1 %cmp142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %_Dynamic_check.succeeded140
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed137:                         ; preds = %do.body136
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed139:                         ; preds = %_Dynamic_check.succeeded138
  call void @llvm.trap() #8
  unreachable

if.end144:                                        ; preds = %_Dynamic_check.succeeded140
  %178 = load i8*, i8** %buf.addr, align 4
  %179 = ptrtoint i8* %178 to i32
  %cmp145 = icmp ne i32 %179, 0
  br i1 %cmp145, label %if.then146, label %if.end149

if.then146:                                       ; preds = %if.end144
  %180 = load i32, i32* %written, align 4
  %181 = load i8*, i8** %buf.addr, align 4
  %idx.ext147 = sext i32 %180 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %181, i64 %idx.ext147
  store i8* %add.ptr148, i8** %buf.addr, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %if.end144
  %182 = load i32, i32* %written, align 4
  %183 = load i32, i32* %written_total, align 4
  %add150 = add nsw i32 %183, %182
  store i32 %add150, i32* %written_total, align 4
  br label %do.end151

do.end151:                                        ; preds = %if.end149
  %184 = load i32, i32* %written_total, align 4
  store i32 %184, i32* %retval, align 4
  br label %return

sw.bb152:                                         ; preds = %_Dynamic_check.succeeded
  %185 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %186 = ptrtoint %Tstruct.Spl_json_value_t_t* %185 to i32
  %187 = call i8* @c_fetch_pointer_from_offset(i32 %186)
  %188 = call i1 @c_isTaintedPointerToTaintedMem(i8* %187)
  br i1 %188, label %_Dynamic_check.succeeded154, label %_Dynamic_check.failed153

_Dynamic_check.succeeded154:                      ; preds = %sw.bb152
  %189 = bitcast i8* %187 to %Tstruct.Spl_json_value_t_t*
  %call155 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %189)
  %190 = bitcast %Tstruct.Spl_json_object_t_t* %call155 to %Tstruct.json_object_t_t*
  %191 = bitcast %Tstruct.json_object_t_t* %190 to i8*
  %192 = call i64 @c_TPtoO(i8* %191)
  %193 = inttoptr i64 %192 to %Tstruct.json_object_t_t*
  %194 = bitcast %Tstruct.json_object_t_t* %193 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %194, %Tstruct.Spl_json_object_t_t** %object, align 4
  %195 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object, align 4
  %196 = ptrtoint %Tstruct.Spl_json_object_t_t* %195 to i32
  %197 = call i8* @c_fetch_pointer_from_offset(i32 %196)
  %198 = call i1 @c_isTaintedPointerToTaintedMem(i8* %197)
  br i1 %198, label %_Dynamic_check.succeeded157, label %_Dynamic_check.failed156

_Dynamic_check.succeeded157:                      ; preds = %_Dynamic_check.succeeded154
  %199 = bitcast i8* %197 to %Tstruct.Spl_json_object_t_t*
  %call158 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %199)
  store i64 %call158, i64* %count, align 8
  br label %do.body159

do.body159:                                       ; preds = %_Dynamic_check.succeeded157
  %200 = load i8*, i8** %buf.addr, align 4
  %201 = load i8*, i8** %buf_start.addr, align 4
  %202 = load i64, i64* %buf_len.addr, align 8
  %203 = ptrtoint i8* %200 to i32
  %204 = call i8* @c_fetch_pointer_from_offset(i32 %203)
  %205 = call i1 @c_isTaintedPointerToTaintedMem(i8* %204)
  br i1 %205, label %_Dynamic_check.succeeded161, label %_Dynamic_check.failed160

_Dynamic_check.succeeded161:                      ; preds = %do.body159
  %206 = ptrtoint i8* %201 to i32
  %207 = call i8* @c_fetch_pointer_from_offset(i32 %206)
  %208 = call i1 @c_isTaintedPointerToTaintedMem(i8* %207)
  br i1 %208, label %_Dynamic_check.succeeded163, label %_Dynamic_check.failed162

_Dynamic_check.succeeded163:                      ; preds = %_Dynamic_check.succeeded161
  %call164 = call i32 @append_string(i8* %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %207, i64 %202)
  store i32 %call164, i32* %written, align 4
  %209 = load i32, i32* %written, align 4
  %cmp165 = icmp slt i32 %209, 0
  br i1 %cmp165, label %if.then166, label %if.end167

if.then166:                                       ; preds = %_Dynamic_check.succeeded163
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed153:                         ; preds = %sw.bb152
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed156:                         ; preds = %_Dynamic_check.succeeded154
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed160:                         ; preds = %do.body159
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed162:                         ; preds = %_Dynamic_check.succeeded161
  call void @llvm.trap() #8
  unreachable

if.end167:                                        ; preds = %_Dynamic_check.succeeded163
  %210 = load i8*, i8** %buf.addr, align 4
  %211 = ptrtoint i8* %210 to i32
  %cmp168 = icmp ne i32 %211, 0
  br i1 %cmp168, label %if.then169, label %if.end172

if.then169:                                       ; preds = %if.end167
  %212 = load i32, i32* %written, align 4
  %213 = load i8*, i8** %buf.addr, align 4
  %idx.ext170 = sext i32 %212 to i64
  %add.ptr171 = getelementptr inbounds i8, i8* %213, i64 %idx.ext170
  store i8* %add.ptr171, i8** %buf.addr, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.end167
  %214 = load i32, i32* %written, align 4
  %215 = load i32, i32* %written_total, align 4
  %add173 = add nsw i32 %215, %214
  store i32 %add173, i32* %written_total, align 4
  br label %do.end174

do.end174:                                        ; preds = %if.end172
  %216 = load i64, i64* %count, align 8
  %cmp175 = icmp ugt i64 %216, 0
  br i1 %cmp175, label %land.lhs.true176, label %if.end195

land.lhs.true176:                                 ; preds = %do.end174
  %217 = load i32, i32* %is_pretty.addr, align 4
  %tobool177 = icmp ne i32 %217, 0
  br i1 %tobool177, label %if.then178, label %if.end195

if.then178:                                       ; preds = %land.lhs.true176
  br label %do.body179

do.body179:                                       ; preds = %if.then178
  %218 = load i8*, i8** %buf.addr, align 4
  %219 = load i8*, i8** %buf_start.addr, align 4
  %220 = load i64, i64* %buf_len.addr, align 8
  %221 = ptrtoint i8* %218 to i32
  %222 = call i8* @c_fetch_pointer_from_offset(i32 %221)
  %223 = call i1 @c_isTaintedPointerToTaintedMem(i8* %222)
  br i1 %223, label %_Dynamic_check.succeeded181, label %_Dynamic_check.failed180

_Dynamic_check.succeeded181:                      ; preds = %do.body179
  %224 = ptrtoint i8* %219 to i32
  %225 = call i8* @c_fetch_pointer_from_offset(i32 %224)
  %226 = call i1 @c_isTaintedPointerToTaintedMem(i8* %225)
  br i1 %226, label %_Dynamic_check.succeeded183, label %_Dynamic_check.failed182

_Dynamic_check.succeeded183:                      ; preds = %_Dynamic_check.succeeded181
  %call184 = call i32 @append_string(i8* %222, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %225, i64 %220)
  store i32 %call184, i32* %written, align 4
  %227 = load i32, i32* %written, align 4
  %cmp185 = icmp slt i32 %227, 0
  br i1 %cmp185, label %if.then186, label %if.end187

if.then186:                                       ; preds = %_Dynamic_check.succeeded183
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed180:                         ; preds = %do.body179
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed182:                         ; preds = %_Dynamic_check.succeeded181
  call void @llvm.trap() #8
  unreachable

if.end187:                                        ; preds = %_Dynamic_check.succeeded183
  %228 = load i8*, i8** %buf.addr, align 4
  %229 = ptrtoint i8* %228 to i32
  %cmp188 = icmp ne i32 %229, 0
  br i1 %cmp188, label %if.then189, label %if.end192

if.then189:                                       ; preds = %if.end187
  %230 = load i32, i32* %written, align 4
  %231 = load i8*, i8** %buf.addr, align 4
  %idx.ext190 = sext i32 %230 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %231, i64 %idx.ext190
  store i8* %add.ptr191, i8** %buf.addr, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then189, %if.end187
  %232 = load i32, i32* %written, align 4
  %233 = load i32, i32* %written_total, align 4
  %add193 = add nsw i32 %233, %232
  store i32 %add193, i32* %written_total, align 4
  br label %do.end194

do.end194:                                        ; preds = %if.end192
  br label %if.end195

if.end195:                                        ; preds = %do.end194, %land.lhs.true176, %do.end174
  store i64 0, i64* %i, align 8
  br label %for.cond196

for.cond196:                                      ; preds = %for.inc339, %if.end195
  %234 = load i64, i64* %i, align 8
  %235 = load i64, i64* %count, align 8
  %cmp197 = icmp ult i64 %234, %235
  br i1 %cmp197, label %for.body198, label %for.end341

for.body198:                                      ; preds = %for.cond196
  %236 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object, align 4
  %237 = load i64, i64* %i, align 8
  %238 = ptrtoint %Tstruct.Spl_json_object_t_t* %236 to i32
  %239 = call i8* @c_fetch_pointer_from_offset(i32 %238)
  %240 = call i1 @c_isTaintedPointerToTaintedMem(i8* %239)
  br i1 %240, label %_Dynamic_check.succeeded200, label %_Dynamic_check.failed199

_Dynamic_check.succeeded200:                      ; preds = %for.body198
  %241 = bitcast i8* %239 to %Tstruct.Spl_json_object_t_t*
  %call201 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %241, i64 %237)
  store i8* %call201, i8** %key, align 4
  %242 = load i8*, i8** %key, align 4
  %243 = ptrtoint i8* %242 to i32
  %cmp202 = icmp eq i32 %243, 0
  br i1 %cmp202, label %if.then203, label %if.end204

if.then203:                                       ; preds = %_Dynamic_check.succeeded200
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed199:                         ; preds = %for.body198
  call void @llvm.trap() #8
  unreachable

if.end204:                                        ; preds = %_Dynamic_check.succeeded200
  %244 = load i32, i32* %is_pretty.addr, align 4
  %tobool205 = icmp ne i32 %244, 0
  br i1 %tobool205, label %if.then206, label %if.end224

if.then206:                                       ; preds = %if.end204
  br label %do.body207

do.body207:                                       ; preds = %if.then206
  %245 = load i8*, i8** %buf.addr, align 4
  %246 = load i32, i32* %level.addr, align 4
  %add208 = add nsw i32 %246, 1
  %247 = load i8*, i8** %buf_start.addr, align 4
  %248 = load i64, i64* %buf_len.addr, align 8
  %249 = ptrtoint i8* %245 to i32
  %250 = call i8* @c_fetch_pointer_from_offset(i32 %249)
  %251 = call i1 @c_isTaintedPointerToTaintedMem(i8* %250)
  br i1 %251, label %_Dynamic_check.succeeded210, label %_Dynamic_check.failed209

_Dynamic_check.succeeded210:                      ; preds = %do.body207
  %252 = ptrtoint i8* %247 to i32
  %253 = call i8* @c_fetch_pointer_from_offset(i32 %252)
  %254 = call i1 @c_isTaintedPointerToTaintedMem(i8* %253)
  br i1 %254, label %_Dynamic_check.succeeded212, label %_Dynamic_check.failed211

_Dynamic_check.succeeded212:                      ; preds = %_Dynamic_check.succeeded210
  %call213 = call i32 @append_indent(i8* %250, i32 %add208, i8* %253, i64 %248)
  store i32 %call213, i32* %written, align 4
  %255 = load i32, i32* %written, align 4
  %cmp214 = icmp slt i32 %255, 0
  br i1 %cmp214, label %if.then215, label %if.end216

if.then215:                                       ; preds = %_Dynamic_check.succeeded212
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed209:                         ; preds = %do.body207
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed211:                         ; preds = %_Dynamic_check.succeeded210
  call void @llvm.trap() #8
  unreachable

if.end216:                                        ; preds = %_Dynamic_check.succeeded212
  %256 = load i8*, i8** %buf.addr, align 4
  %257 = ptrtoint i8* %256 to i32
  %cmp217 = icmp ne i32 %257, 0
  br i1 %cmp217, label %if.then218, label %if.end221

if.then218:                                       ; preds = %if.end216
  %258 = load i32, i32* %written, align 4
  %259 = load i8*, i8** %buf.addr, align 4
  %idx.ext219 = sext i32 %258 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %259, i64 %idx.ext219
  store i8* %add.ptr220, i8** %buf.addr, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then218, %if.end216
  %260 = load i32, i32* %written, align 4
  %261 = load i32, i32* %written_total, align 4
  %add222 = add nsw i32 %261, %260
  store i32 %add222, i32* %written_total, align 4
  br label %do.end223

do.end223:                                        ; preds = %if.end221
  br label %if.end224

if.end224:                                        ; preds = %do.end223, %if.end204
  %262 = load i8*, i8** %key, align 4
  %263 = load i8*, i8** %buf.addr, align 4
  %264 = load i8*, i8** %buf_start.addr, align 4
  %265 = load i64, i64* %buf_len.addr, align 8
  %266 = ptrtoint i8* %262 to i32
  %267 = call i8* @c_fetch_pointer_from_offset(i32 %266)
  %268 = call i1 @c_isTaintedPointerToTaintedMem(i8* %267)
  br i1 %268, label %_Dynamic_check.succeeded226, label %_Dynamic_check.failed225

_Dynamic_check.succeeded226:                      ; preds = %if.end224
  %269 = ptrtoint i8* %263 to i32
  %270 = call i8* @c_fetch_pointer_from_offset(i32 %269)
  %271 = call i1 @c_isTaintedPointerToTaintedMem(i8* %270)
  br i1 %271, label %_Dynamic_check.succeeded228, label %_Dynamic_check.failed227

_Dynamic_check.succeeded228:                      ; preds = %_Dynamic_check.succeeded226
  %272 = ptrtoint i8* %264 to i32
  %273 = call i8* @c_fetch_pointer_from_offset(i32 %272)
  %274 = call i1 @c_isTaintedPointerToTaintedMem(i8* %273)
  br i1 %274, label %_Dynamic_check.succeeded230, label %_Dynamic_check.failed229

_Dynamic_check.succeeded230:                      ; preds = %_Dynamic_check.succeeded228
  %call231 = call i32 @json_serialize_string(i8* %267, i8* %270, i8* %273, i64 %265)
  store i32 %call231, i32* %written, align 4
  %275 = load i32, i32* %written, align 4
  %cmp232 = icmp slt i32 %275, 0
  br i1 %cmp232, label %if.then233, label %if.end234

if.then233:                                       ; preds = %_Dynamic_check.succeeded230
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed225:                         ; preds = %if.end224
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed227:                         ; preds = %_Dynamic_check.succeeded226
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed229:                         ; preds = %_Dynamic_check.succeeded228
  call void @llvm.trap() #8
  unreachable

if.end234:                                        ; preds = %_Dynamic_check.succeeded230
  %276 = load i8*, i8** %buf.addr, align 4
  %277 = ptrtoint i8* %276 to i32
  %cmp235 = icmp ne i32 %277, 0
  br i1 %cmp235, label %if.then236, label %if.end239

if.then236:                                       ; preds = %if.end234
  %278 = load i32, i32* %written, align 4
  %279 = load i8*, i8** %buf.addr, align 4
  %idx.ext237 = sext i32 %278 to i64
  %add.ptr238 = getelementptr inbounds i8, i8* %279, i64 %idx.ext237
  store i8* %add.ptr238, i8** %buf.addr, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then236, %if.end234
  %280 = load i32, i32* %written, align 4
  %281 = load i32, i32* %written_total, align 4
  %add240 = add nsw i32 %281, %280
  store i32 %add240, i32* %written_total, align 4
  br label %do.body241

do.body241:                                       ; preds = %if.end239
  %282 = load i8*, i8** %buf.addr, align 4
  %283 = load i8*, i8** %buf_start.addr, align 4
  %284 = load i64, i64* %buf_len.addr, align 8
  %285 = ptrtoint i8* %282 to i32
  %286 = call i8* @c_fetch_pointer_from_offset(i32 %285)
  %287 = call i1 @c_isTaintedPointerToTaintedMem(i8* %286)
  br i1 %287, label %_Dynamic_check.succeeded243, label %_Dynamic_check.failed242

_Dynamic_check.succeeded243:                      ; preds = %do.body241
  %288 = ptrtoint i8* %283 to i32
  %289 = call i8* @c_fetch_pointer_from_offset(i32 %288)
  %290 = call i1 @c_isTaintedPointerToTaintedMem(i8* %289)
  br i1 %290, label %_Dynamic_check.succeeded245, label %_Dynamic_check.failed244

_Dynamic_check.succeeded245:                      ; preds = %_Dynamic_check.succeeded243
  %call246 = call i32 @append_string(i8* %286, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* %289, i64 %284)
  store i32 %call246, i32* %written, align 4
  %291 = load i32, i32* %written, align 4
  %cmp247 = icmp slt i32 %291, 0
  br i1 %cmp247, label %if.then248, label %if.end249

if.then248:                                       ; preds = %_Dynamic_check.succeeded245
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed242:                         ; preds = %do.body241
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed244:                         ; preds = %_Dynamic_check.succeeded243
  call void @llvm.trap() #8
  unreachable

if.end249:                                        ; preds = %_Dynamic_check.succeeded245
  %292 = load i8*, i8** %buf.addr, align 4
  %293 = ptrtoint i8* %292 to i32
  %cmp250 = icmp ne i32 %293, 0
  br i1 %cmp250, label %if.then251, label %if.end254

if.then251:                                       ; preds = %if.end249
  %294 = load i32, i32* %written, align 4
  %295 = load i8*, i8** %buf.addr, align 4
  %idx.ext252 = sext i32 %294 to i64
  %add.ptr253 = getelementptr inbounds i8, i8* %295, i64 %idx.ext252
  store i8* %add.ptr253, i8** %buf.addr, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %if.end249
  %296 = load i32, i32* %written, align 4
  %297 = load i32, i32* %written_total, align 4
  %add255 = add nsw i32 %297, %296
  store i32 %add255, i32* %written_total, align 4
  br label %do.end256

do.end256:                                        ; preds = %if.end254
  %298 = load i32, i32* %is_pretty.addr, align 4
  %tobool257 = icmp ne i32 %298, 0
  br i1 %tobool257, label %if.then258, label %if.end275

if.then258:                                       ; preds = %do.end256
  br label %do.body259

do.body259:                                       ; preds = %if.then258
  %299 = load i8*, i8** %buf.addr, align 4
  %300 = load i8*, i8** %buf_start.addr, align 4
  %301 = load i64, i64* %buf_len.addr, align 8
  %302 = ptrtoint i8* %299 to i32
  %303 = call i8* @c_fetch_pointer_from_offset(i32 %302)
  %304 = call i1 @c_isTaintedPointerToTaintedMem(i8* %303)
  br i1 %304, label %_Dynamic_check.succeeded261, label %_Dynamic_check.failed260

_Dynamic_check.succeeded261:                      ; preds = %do.body259
  %305 = ptrtoint i8* %300 to i32
  %306 = call i8* @c_fetch_pointer_from_offset(i32 %305)
  %307 = call i1 @c_isTaintedPointerToTaintedMem(i8* %306)
  br i1 %307, label %_Dynamic_check.succeeded263, label %_Dynamic_check.failed262

_Dynamic_check.succeeded263:                      ; preds = %_Dynamic_check.succeeded261
  %call264 = call i32 @append_string(i8* %303, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %306, i64 %301)
  store i32 %call264, i32* %written, align 4
  %308 = load i32, i32* %written, align 4
  %cmp265 = icmp slt i32 %308, 0
  br i1 %cmp265, label %if.then266, label %if.end267

if.then266:                                       ; preds = %_Dynamic_check.succeeded263
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed260:                         ; preds = %do.body259
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed262:                         ; preds = %_Dynamic_check.succeeded261
  call void @llvm.trap() #8
  unreachable

if.end267:                                        ; preds = %_Dynamic_check.succeeded263
  %309 = load i8*, i8** %buf.addr, align 4
  %310 = ptrtoint i8* %309 to i32
  %cmp268 = icmp ne i32 %310, 0
  br i1 %cmp268, label %if.then269, label %if.end272

if.then269:                                       ; preds = %if.end267
  %311 = load i32, i32* %written, align 4
  %312 = load i8*, i8** %buf.addr, align 4
  %idx.ext270 = sext i32 %311 to i64
  %add.ptr271 = getelementptr inbounds i8, i8* %312, i64 %idx.ext270
  store i8* %add.ptr271, i8** %buf.addr, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then269, %if.end267
  %313 = load i32, i32* %written, align 4
  %314 = load i32, i32* %written_total, align 4
  %add273 = add nsw i32 %314, %313
  store i32 %add273, i32* %written_total, align 4
  br label %do.end274

do.end274:                                        ; preds = %if.end272
  br label %if.end275

if.end275:                                        ; preds = %do.end274, %do.end256
  %315 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object, align 4
  %316 = load i8*, i8** %key, align 4
  %317 = ptrtoint %Tstruct.Spl_json_object_t_t* %315 to i32
  %318 = call i8* @c_fetch_pointer_from_offset(i32 %317)
  %319 = call i1 @c_isTaintedPointerToTaintedMem(i8* %318)
  br i1 %319, label %_Dynamic_check.succeeded277, label %_Dynamic_check.failed276

_Dynamic_check.succeeded277:                      ; preds = %if.end275
  %320 = bitcast i8* %318 to %Tstruct.Spl_json_object_t_t*
  %321 = ptrtoint i8* %316 to i32
  %322 = call i8* @c_fetch_pointer_from_offset(i32 %321)
  %323 = call i1 @c_isTaintedPointerToTaintedMem(i8* %322)
  br i1 %323, label %_Dynamic_check.succeeded279, label %_Dynamic_check.failed278

_Dynamic_check.succeeded279:                      ; preds = %_Dynamic_check.succeeded277
  %call280 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %320, i8* %322)
  %324 = bitcast %Tstruct.Spl_json_value_t_t* %call280 to %Tstruct.json_value_t_t*
  %325 = bitcast %Tstruct.json_value_t_t* %324 to i8*
  %326 = call i64 @c_TPtoO(i8* %325)
  %327 = inttoptr i64 %326 to %Tstruct.json_value_t_t*
  %328 = bitcast %Tstruct.json_value_t_t* %327 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %328, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %329 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %330 = load i8*, i8** %buf.addr, align 4
  %331 = load i32, i32* %level.addr, align 4
  %add281 = add nsw i32 %331, 1
  %332 = load i32, i32* %is_pretty.addr, align 4
  %333 = load i8*, i8** %num_buf.addr, align 4
  %334 = load i8*, i8** %buf_start.addr, align 4
  %335 = load i64, i64* %buf_len.addr, align 8
  %336 = ptrtoint %Tstruct.Spl_json_value_t_t* %329 to i32
  %337 = call i8* @c_fetch_pointer_from_offset(i32 %336)
  %338 = call i1 @c_isTaintedPointerToTaintedMem(i8* %337)
  br i1 %338, label %_Dynamic_check.succeeded283, label %_Dynamic_check.failed282

_Dynamic_check.succeeded283:                      ; preds = %_Dynamic_check.succeeded279
  %339 = bitcast i8* %337 to %Tstruct.Spl_json_value_t_t*
  %340 = ptrtoint i8* %330 to i32
  %341 = call i8* @c_fetch_pointer_from_offset(i32 %340)
  %342 = call i1 @c_isTaintedPointerToTaintedMem(i8* %341)
  br i1 %342, label %_Dynamic_check.succeeded285, label %_Dynamic_check.failed284

_Dynamic_check.succeeded285:                      ; preds = %_Dynamic_check.succeeded283
  %343 = ptrtoint i8* %333 to i32
  %344 = call i8* @c_fetch_pointer_from_offset(i32 %343)
  %345 = call i1 @c_isTaintedPointerToTaintedMem(i8* %344)
  br i1 %345, label %_Dynamic_check.succeeded287, label %_Dynamic_check.failed286

_Dynamic_check.succeeded287:                      ; preds = %_Dynamic_check.succeeded285
  %346 = ptrtoint i8* %334 to i32
  %347 = call i8* @c_fetch_pointer_from_offset(i32 %346)
  %348 = call i1 @c_isTaintedPointerToTaintedMem(i8* %347)
  br i1 %348, label %_Dynamic_check.succeeded289, label %_Dynamic_check.failed288

_Dynamic_check.succeeded289:                      ; preds = %_Dynamic_check.succeeded287
  %call290 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %339, i8* %341, i32 %add281, i32 %332, i8* %344, i8* %347, i64 %335)
  store i32 %call290, i32* %written, align 4
  %349 = load i32, i32* %written, align 4
  %cmp291 = icmp slt i32 %349, 0
  br i1 %cmp291, label %if.then292, label %if.end293

if.then292:                                       ; preds = %_Dynamic_check.succeeded289
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed276:                         ; preds = %if.end275
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed278:                         ; preds = %_Dynamic_check.succeeded277
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed282:                         ; preds = %_Dynamic_check.succeeded279
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed284:                         ; preds = %_Dynamic_check.succeeded283
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed286:                         ; preds = %_Dynamic_check.succeeded285
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed288:                         ; preds = %_Dynamic_check.succeeded287
  call void @llvm.trap() #8
  unreachable

if.end293:                                        ; preds = %_Dynamic_check.succeeded289
  %350 = load i8*, i8** %buf.addr, align 4
  %351 = ptrtoint i8* %350 to i32
  %cmp294 = icmp ne i32 %351, 0
  br i1 %cmp294, label %if.then295, label %if.end298

if.then295:                                       ; preds = %if.end293
  %352 = load i32, i32* %written, align 4
  %353 = load i8*, i8** %buf.addr, align 4
  %idx.ext296 = sext i32 %352 to i64
  %add.ptr297 = getelementptr inbounds i8, i8* %353, i64 %idx.ext296
  store i8* %add.ptr297, i8** %buf.addr, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.then295, %if.end293
  %354 = load i32, i32* %written, align 4
  %355 = load i32, i32* %written_total, align 4
  %add299 = add nsw i32 %355, %354
  store i32 %add299, i32* %written_total, align 4
  %356 = load i64, i64* %i, align 8
  %357 = load i64, i64* %count, align 8
  %sub300 = sub i64 %357, 1
  %cmp301 = icmp ult i64 %356, %sub300
  br i1 %cmp301, label %if.then302, label %if.end319

if.then302:                                       ; preds = %if.end298
  br label %do.body303

do.body303:                                       ; preds = %if.then302
  %358 = load i8*, i8** %buf.addr, align 4
  %359 = load i8*, i8** %buf_start.addr, align 4
  %360 = load i64, i64* %buf_len.addr, align 8
  %361 = ptrtoint i8* %358 to i32
  %362 = call i8* @c_fetch_pointer_from_offset(i32 %361)
  %363 = call i1 @c_isTaintedPointerToTaintedMem(i8* %362)
  br i1 %363, label %_Dynamic_check.succeeded305, label %_Dynamic_check.failed304

_Dynamic_check.succeeded305:                      ; preds = %do.body303
  %364 = ptrtoint i8* %359 to i32
  %365 = call i8* @c_fetch_pointer_from_offset(i32 %364)
  %366 = call i1 @c_isTaintedPointerToTaintedMem(i8* %365)
  br i1 %366, label %_Dynamic_check.succeeded307, label %_Dynamic_check.failed306

_Dynamic_check.succeeded307:                      ; preds = %_Dynamic_check.succeeded305
  %call308 = call i32 @append_string(i8* %362, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %365, i64 %360)
  store i32 %call308, i32* %written, align 4
  %367 = load i32, i32* %written, align 4
  %cmp309 = icmp slt i32 %367, 0
  br i1 %cmp309, label %if.then310, label %if.end311

if.then310:                                       ; preds = %_Dynamic_check.succeeded307
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed304:                         ; preds = %do.body303
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed306:                         ; preds = %_Dynamic_check.succeeded305
  call void @llvm.trap() #8
  unreachable

if.end311:                                        ; preds = %_Dynamic_check.succeeded307
  %368 = load i8*, i8** %buf.addr, align 4
  %369 = ptrtoint i8* %368 to i32
  %cmp312 = icmp ne i32 %369, 0
  br i1 %cmp312, label %if.then313, label %if.end316

if.then313:                                       ; preds = %if.end311
  %370 = load i32, i32* %written, align 4
  %371 = load i8*, i8** %buf.addr, align 4
  %idx.ext314 = sext i32 %370 to i64
  %add.ptr315 = getelementptr inbounds i8, i8* %371, i64 %idx.ext314
  store i8* %add.ptr315, i8** %buf.addr, align 4
  br label %if.end316

if.end316:                                        ; preds = %if.then313, %if.end311
  %372 = load i32, i32* %written, align 4
  %373 = load i32, i32* %written_total, align 4
  %add317 = add nsw i32 %373, %372
  store i32 %add317, i32* %written_total, align 4
  br label %do.end318

do.end318:                                        ; preds = %if.end316
  br label %if.end319

if.end319:                                        ; preds = %do.end318, %if.end298
  %374 = load i32, i32* %is_pretty.addr, align 4
  %tobool320 = icmp ne i32 %374, 0
  br i1 %tobool320, label %if.then321, label %if.end338

if.then321:                                       ; preds = %if.end319
  br label %do.body322

do.body322:                                       ; preds = %if.then321
  %375 = load i8*, i8** %buf.addr, align 4
  %376 = load i8*, i8** %buf_start.addr, align 4
  %377 = load i64, i64* %buf_len.addr, align 8
  %378 = ptrtoint i8* %375 to i32
  %379 = call i8* @c_fetch_pointer_from_offset(i32 %378)
  %380 = call i1 @c_isTaintedPointerToTaintedMem(i8* %379)
  br i1 %380, label %_Dynamic_check.succeeded324, label %_Dynamic_check.failed323

_Dynamic_check.succeeded324:                      ; preds = %do.body322
  %381 = ptrtoint i8* %376 to i32
  %382 = call i8* @c_fetch_pointer_from_offset(i32 %381)
  %383 = call i1 @c_isTaintedPointerToTaintedMem(i8* %382)
  br i1 %383, label %_Dynamic_check.succeeded326, label %_Dynamic_check.failed325

_Dynamic_check.succeeded326:                      ; preds = %_Dynamic_check.succeeded324
  %call327 = call i32 @append_string(i8* %379, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %382, i64 %377)
  store i32 %call327, i32* %written, align 4
  %384 = load i32, i32* %written, align 4
  %cmp328 = icmp slt i32 %384, 0
  br i1 %cmp328, label %if.then329, label %if.end330

if.then329:                                       ; preds = %_Dynamic_check.succeeded326
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed323:                         ; preds = %do.body322
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed325:                         ; preds = %_Dynamic_check.succeeded324
  call void @llvm.trap() #8
  unreachable

if.end330:                                        ; preds = %_Dynamic_check.succeeded326
  %385 = load i8*, i8** %buf.addr, align 4
  %386 = ptrtoint i8* %385 to i32
  %cmp331 = icmp ne i32 %386, 0
  br i1 %cmp331, label %if.then332, label %if.end335

if.then332:                                       ; preds = %if.end330
  %387 = load i32, i32* %written, align 4
  %388 = load i8*, i8** %buf.addr, align 4
  %idx.ext333 = sext i32 %387 to i64
  %add.ptr334 = getelementptr inbounds i8, i8* %388, i64 %idx.ext333
  store i8* %add.ptr334, i8** %buf.addr, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.then332, %if.end330
  %389 = load i32, i32* %written, align 4
  %390 = load i32, i32* %written_total, align 4
  %add336 = add nsw i32 %390, %389
  store i32 %add336, i32* %written_total, align 4
  br label %do.end337

do.end337:                                        ; preds = %if.end335
  br label %if.end338

if.end338:                                        ; preds = %do.end337, %if.end319
  br label %for.inc339

for.inc339:                                       ; preds = %if.end338
  %391 = load i64, i64* %i, align 8
  %inc340 = add i64 %391, 1
  store i64 %inc340, i64* %i, align 8
  br label %for.cond196, !llvm.loop !6

for.end341:                                       ; preds = %for.cond196
  %392 = load i64, i64* %count, align 8
  %cmp342 = icmp ugt i64 %392, 0
  br i1 %cmp342, label %land.lhs.true343, label %if.end362

land.lhs.true343:                                 ; preds = %for.end341
  %393 = load i32, i32* %is_pretty.addr, align 4
  %tobool344 = icmp ne i32 %393, 0
  br i1 %tobool344, label %if.then345, label %if.end362

if.then345:                                       ; preds = %land.lhs.true343
  br label %do.body346

do.body346:                                       ; preds = %if.then345
  %394 = load i8*, i8** %buf.addr, align 4
  %395 = load i32, i32* %level.addr, align 4
  %396 = load i8*, i8** %buf_start.addr, align 4
  %397 = load i64, i64* %buf_len.addr, align 8
  %398 = ptrtoint i8* %394 to i32
  %399 = call i8* @c_fetch_pointer_from_offset(i32 %398)
  %400 = call i1 @c_isTaintedPointerToTaintedMem(i8* %399)
  br i1 %400, label %_Dynamic_check.succeeded348, label %_Dynamic_check.failed347

_Dynamic_check.succeeded348:                      ; preds = %do.body346
  %401 = ptrtoint i8* %396 to i32
  %402 = call i8* @c_fetch_pointer_from_offset(i32 %401)
  %403 = call i1 @c_isTaintedPointerToTaintedMem(i8* %402)
  br i1 %403, label %_Dynamic_check.succeeded350, label %_Dynamic_check.failed349

_Dynamic_check.succeeded350:                      ; preds = %_Dynamic_check.succeeded348
  %call351 = call i32 @append_indent(i8* %399, i32 %395, i8* %402, i64 %397)
  store i32 %call351, i32* %written, align 4
  %404 = load i32, i32* %written, align 4
  %cmp352 = icmp slt i32 %404, 0
  br i1 %cmp352, label %if.then353, label %if.end354

if.then353:                                       ; preds = %_Dynamic_check.succeeded350
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed347:                         ; preds = %do.body346
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed349:                         ; preds = %_Dynamic_check.succeeded348
  call void @llvm.trap() #8
  unreachable

if.end354:                                        ; preds = %_Dynamic_check.succeeded350
  %405 = load i8*, i8** %buf.addr, align 4
  %406 = ptrtoint i8* %405 to i32
  %cmp355 = icmp ne i32 %406, 0
  br i1 %cmp355, label %if.then356, label %if.end359

if.then356:                                       ; preds = %if.end354
  %407 = load i32, i32* %written, align 4
  %408 = load i8*, i8** %buf.addr, align 4
  %idx.ext357 = sext i32 %407 to i64
  %add.ptr358 = getelementptr inbounds i8, i8* %408, i64 %idx.ext357
  store i8* %add.ptr358, i8** %buf.addr, align 4
  br label %if.end359

if.end359:                                        ; preds = %if.then356, %if.end354
  %409 = load i32, i32* %written, align 4
  %410 = load i32, i32* %written_total, align 4
  %add360 = add nsw i32 %410, %409
  store i32 %add360, i32* %written_total, align 4
  br label %do.end361

do.end361:                                        ; preds = %if.end359
  br label %if.end362

if.end362:                                        ; preds = %do.end361, %land.lhs.true343, %for.end341
  br label %do.body363

do.body363:                                       ; preds = %if.end362
  %411 = load i8*, i8** %buf.addr, align 4
  %412 = load i8*, i8** %buf_start.addr, align 4
  %413 = load i64, i64* %buf_len.addr, align 8
  %414 = ptrtoint i8* %411 to i32
  %415 = call i8* @c_fetch_pointer_from_offset(i32 %414)
  %416 = call i1 @c_isTaintedPointerToTaintedMem(i8* %415)
  br i1 %416, label %_Dynamic_check.succeeded365, label %_Dynamic_check.failed364

_Dynamic_check.succeeded365:                      ; preds = %do.body363
  %417 = ptrtoint i8* %412 to i32
  %418 = call i8* @c_fetch_pointer_from_offset(i32 %417)
  %419 = call i1 @c_isTaintedPointerToTaintedMem(i8* %418)
  br i1 %419, label %_Dynamic_check.succeeded367, label %_Dynamic_check.failed366

_Dynamic_check.succeeded367:                      ; preds = %_Dynamic_check.succeeded365
  %call368 = call i32 @append_string(i8* %415, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %418, i64 %413)
  store i32 %call368, i32* %written, align 4
  %420 = load i32, i32* %written, align 4
  %cmp369 = icmp slt i32 %420, 0
  br i1 %cmp369, label %if.then370, label %if.end371

if.then370:                                       ; preds = %_Dynamic_check.succeeded367
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed364:                         ; preds = %do.body363
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed366:                         ; preds = %_Dynamic_check.succeeded365
  call void @llvm.trap() #8
  unreachable

if.end371:                                        ; preds = %_Dynamic_check.succeeded367
  %421 = load i8*, i8** %buf.addr, align 4
  %422 = ptrtoint i8* %421 to i32
  %cmp372 = icmp ne i32 %422, 0
  br i1 %cmp372, label %if.then373, label %if.end376

if.then373:                                       ; preds = %if.end371
  %423 = load i32, i32* %written, align 4
  %424 = load i8*, i8** %buf.addr, align 4
  %idx.ext374 = sext i32 %423 to i64
  %add.ptr375 = getelementptr inbounds i8, i8* %424, i64 %idx.ext374
  store i8* %add.ptr375, i8** %buf.addr, align 4
  br label %if.end376

if.end376:                                        ; preds = %if.then373, %if.end371
  %425 = load i32, i32* %written, align 4
  %426 = load i32, i32* %written_total, align 4
  %add377 = add nsw i32 %426, %425
  store i32 %add377, i32* %written_total, align 4
  br label %do.end378

do.end378:                                        ; preds = %if.end376
  %427 = load i32, i32* %written_total, align 4
  store i32 %427, i32* %retval, align 4
  br label %return

sw.bb379:                                         ; preds = %_Dynamic_check.succeeded
  %428 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %429 = ptrtoint %Tstruct.Spl_json_value_t_t* %428 to i32
  %430 = call i8* @c_fetch_pointer_from_offset(i32 %429)
  %431 = call i1 @c_isTaintedPointerToTaintedMem(i8* %430)
  br i1 %431, label %_Dynamic_check.succeeded381, label %_Dynamic_check.failed380

_Dynamic_check.succeeded381:                      ; preds = %sw.bb379
  %432 = bitcast i8* %430 to %Tstruct.Spl_json_value_t_t*
  %call382 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %432)
  store i8* %call382, i8** %string, align 4
  %433 = load i8*, i8** %string, align 4
  %434 = ptrtoint i8* %433 to i32
  %cmp383 = icmp eq i32 %434, 0
  br i1 %cmp383, label %if.then384, label %if.end385

if.then384:                                       ; preds = %_Dynamic_check.succeeded381
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed380:                         ; preds = %sw.bb379
  call void @llvm.trap() #8
  unreachable

if.end385:                                        ; preds = %_Dynamic_check.succeeded381
  %435 = load i8*, i8** %string, align 4
  %436 = load i8*, i8** %buf.addr, align 4
  %437 = load i8*, i8** %buf_start.addr, align 4
  %438 = load i64, i64* %buf_len.addr, align 8
  %439 = ptrtoint i8* %435 to i32
  %440 = call i8* @c_fetch_pointer_from_offset(i32 %439)
  %441 = call i1 @c_isTaintedPointerToTaintedMem(i8* %440)
  br i1 %441, label %_Dynamic_check.succeeded387, label %_Dynamic_check.failed386

_Dynamic_check.succeeded387:                      ; preds = %if.end385
  %442 = ptrtoint i8* %436 to i32
  %443 = call i8* @c_fetch_pointer_from_offset(i32 %442)
  %444 = call i1 @c_isTaintedPointerToTaintedMem(i8* %443)
  br i1 %444, label %_Dynamic_check.succeeded389, label %_Dynamic_check.failed388

_Dynamic_check.succeeded389:                      ; preds = %_Dynamic_check.succeeded387
  %445 = ptrtoint i8* %437 to i32
  %446 = call i8* @c_fetch_pointer_from_offset(i32 %445)
  %447 = call i1 @c_isTaintedPointerToTaintedMem(i8* %446)
  br i1 %447, label %_Dynamic_check.succeeded391, label %_Dynamic_check.failed390

_Dynamic_check.succeeded391:                      ; preds = %_Dynamic_check.succeeded389
  %call392 = call i32 @json_serialize_string(i8* %440, i8* %443, i8* %446, i64 %438)
  store i32 %call392, i32* %written, align 4
  %448 = load i32, i32* %written, align 4
  %cmp393 = icmp slt i32 %448, 0
  br i1 %cmp393, label %if.then394, label %if.end395

if.then394:                                       ; preds = %_Dynamic_check.succeeded391
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed386:                         ; preds = %if.end385
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed388:                         ; preds = %_Dynamic_check.succeeded387
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed390:                         ; preds = %_Dynamic_check.succeeded389
  call void @llvm.trap() #8
  unreachable

if.end395:                                        ; preds = %_Dynamic_check.succeeded391
  %449 = load i8*, i8** %buf.addr, align 4
  %450 = ptrtoint i8* %449 to i32
  %cmp396 = icmp ne i32 %450, 0
  br i1 %cmp396, label %if.then397, label %if.end400

if.then397:                                       ; preds = %if.end395
  %451 = load i32, i32* %written, align 4
  %452 = load i8*, i8** %buf.addr, align 4
  %idx.ext398 = sext i32 %451 to i64
  %add.ptr399 = getelementptr inbounds i8, i8* %452, i64 %idx.ext398
  store i8* %add.ptr399, i8** %buf.addr, align 4
  br label %if.end400

if.end400:                                        ; preds = %if.then397, %if.end395
  %453 = load i32, i32* %written, align 4
  %454 = load i32, i32* %written_total, align 4
  %add401 = add nsw i32 %454, %453
  store i32 %add401, i32* %written_total, align 4
  %455 = load i32, i32* %written_total, align 4
  store i32 %455, i32* %retval, align 4
  br label %return

sw.bb402:                                         ; preds = %_Dynamic_check.succeeded
  %456 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %457 = ptrtoint %Tstruct.Spl_json_value_t_t* %456 to i32
  %458 = call i8* @c_fetch_pointer_from_offset(i32 %457)
  %459 = call i1 @c_isTaintedPointerToTaintedMem(i8* %458)
  br i1 %459, label %_Dynamic_check.succeeded404, label %_Dynamic_check.failed403

_Dynamic_check.succeeded404:                      ; preds = %sw.bb402
  %460 = bitcast i8* %458 to %Tstruct.Spl_json_value_t_t*
  %call405 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %460)
  %tobool406 = icmp ne i32 %call405, 0
  br i1 %tobool406, label %if.then407, label %if.else

if.then407:                                       ; preds = %_Dynamic_check.succeeded404
  br label %do.body408

do.body408:                                       ; preds = %if.then407
  %461 = load i8*, i8** %buf.addr, align 4
  %462 = load i8*, i8** %buf_start.addr, align 4
  %463 = load i64, i64* %buf_len.addr, align 8
  %464 = ptrtoint i8* %461 to i32
  %465 = call i8* @c_fetch_pointer_from_offset(i32 %464)
  %466 = call i1 @c_isTaintedPointerToTaintedMem(i8* %465)
  br i1 %466, label %_Dynamic_check.succeeded410, label %_Dynamic_check.failed409

_Dynamic_check.succeeded410:                      ; preds = %do.body408
  %467 = ptrtoint i8* %462 to i32
  %468 = call i8* @c_fetch_pointer_from_offset(i32 %467)
  %469 = call i1 @c_isTaintedPointerToTaintedMem(i8* %468)
  br i1 %469, label %_Dynamic_check.succeeded412, label %_Dynamic_check.failed411

_Dynamic_check.succeeded412:                      ; preds = %_Dynamic_check.succeeded410
  %call413 = call i32 @append_string(i8* %465, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %468, i64 %463)
  store i32 %call413, i32* %written, align 4
  %470 = load i32, i32* %written, align 4
  %cmp414 = icmp slt i32 %470, 0
  br i1 %cmp414, label %if.then415, label %if.end416

if.then415:                                       ; preds = %_Dynamic_check.succeeded412
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed403:                         ; preds = %sw.bb402
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed409:                         ; preds = %do.body408
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed411:                         ; preds = %_Dynamic_check.succeeded410
  call void @llvm.trap() #8
  unreachable

if.end416:                                        ; preds = %_Dynamic_check.succeeded412
  %471 = load i8*, i8** %buf.addr, align 4
  %472 = ptrtoint i8* %471 to i32
  %cmp417 = icmp ne i32 %472, 0
  br i1 %cmp417, label %if.then418, label %if.end421

if.then418:                                       ; preds = %if.end416
  %473 = load i32, i32* %written, align 4
  %474 = load i8*, i8** %buf.addr, align 4
  %idx.ext419 = sext i32 %473 to i64
  %add.ptr420 = getelementptr inbounds i8, i8* %474, i64 %idx.ext419
  store i8* %add.ptr420, i8** %buf.addr, align 4
  br label %if.end421

if.end421:                                        ; preds = %if.then418, %if.end416
  %475 = load i32, i32* %written, align 4
  %476 = load i32, i32* %written_total, align 4
  %add422 = add nsw i32 %476, %475
  store i32 %add422, i32* %written_total, align 4
  br label %do.end423

do.end423:                                        ; preds = %if.end421
  br label %if.end440

if.else:                                          ; preds = %_Dynamic_check.succeeded404
  br label %do.body424

do.body424:                                       ; preds = %if.else
  %477 = load i8*, i8** %buf.addr, align 4
  %478 = load i8*, i8** %buf_start.addr, align 4
  %479 = load i64, i64* %buf_len.addr, align 8
  %480 = ptrtoint i8* %477 to i32
  %481 = call i8* @c_fetch_pointer_from_offset(i32 %480)
  %482 = call i1 @c_isTaintedPointerToTaintedMem(i8* %481)
  br i1 %482, label %_Dynamic_check.succeeded426, label %_Dynamic_check.failed425

_Dynamic_check.succeeded426:                      ; preds = %do.body424
  %483 = ptrtoint i8* %478 to i32
  %484 = call i8* @c_fetch_pointer_from_offset(i32 %483)
  %485 = call i1 @c_isTaintedPointerToTaintedMem(i8* %484)
  br i1 %485, label %_Dynamic_check.succeeded428, label %_Dynamic_check.failed427

_Dynamic_check.succeeded428:                      ; preds = %_Dynamic_check.succeeded426
  %call429 = call i32 @append_string(i8* %481, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %484, i64 %479)
  store i32 %call429, i32* %written, align 4
  %486 = load i32, i32* %written, align 4
  %cmp430 = icmp slt i32 %486, 0
  br i1 %cmp430, label %if.then431, label %if.end432

if.then431:                                       ; preds = %_Dynamic_check.succeeded428
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed425:                         ; preds = %do.body424
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed427:                         ; preds = %_Dynamic_check.succeeded426
  call void @llvm.trap() #8
  unreachable

if.end432:                                        ; preds = %_Dynamic_check.succeeded428
  %487 = load i8*, i8** %buf.addr, align 4
  %488 = ptrtoint i8* %487 to i32
  %cmp433 = icmp ne i32 %488, 0
  br i1 %cmp433, label %if.then434, label %if.end437

if.then434:                                       ; preds = %if.end432
  %489 = load i32, i32* %written, align 4
  %490 = load i8*, i8** %buf.addr, align 4
  %idx.ext435 = sext i32 %489 to i64
  %add.ptr436 = getelementptr inbounds i8, i8* %490, i64 %idx.ext435
  store i8* %add.ptr436, i8** %buf.addr, align 4
  br label %if.end437

if.end437:                                        ; preds = %if.then434, %if.end432
  %491 = load i32, i32* %written, align 4
  %492 = load i32, i32* %written_total, align 4
  %add438 = add nsw i32 %492, %491
  store i32 %add438, i32* %written_total, align 4
  br label %do.end439

do.end439:                                        ; preds = %if.end437
  br label %if.end440

if.end440:                                        ; preds = %do.end439, %do.end423
  %493 = load i32, i32* %written_total, align 4
  store i32 %493, i32* %retval, align 4
  br label %return

sw.bb441:                                         ; preds = %_Dynamic_check.succeeded
  %494 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %495 = ptrtoint %Tstruct.Spl_json_value_t_t* %494 to i32
  %496 = call i8* @c_fetch_pointer_from_offset(i32 %495)
  %497 = call i1 @c_isTaintedPointerToTaintedMem(i8* %496)
  br i1 %497, label %_Dynamic_check.succeeded443, label %_Dynamic_check.failed442

_Dynamic_check.succeeded443:                      ; preds = %sw.bb441
  %498 = bitcast i8* %496 to %Tstruct.Spl_json_value_t_t*
  %call444 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %498)
  store double %call444, double* %num, align 8
  %499 = load i8*, i8** %buf.addr, align 4
  %500 = ptrtoint i8* %499 to i32
  %cmp445 = icmp ne i32 %500, 0
  br i1 %cmp445, label %if.then446, label %if.end447

if.then446:                                       ; preds = %_Dynamic_check.succeeded443
  %501 = load i8*, i8** %buf.addr, align 4
  store i8* %501, i8** %temp_buf, align 4
  %502 = load i8*, i8** %temp_buf, align 4
  store i8* %502, i8** %num_buf.addr, align 4
  br label %if.end447

_Dynamic_check.failed442:                         ; preds = %sw.bb441
  call void @llvm.trap() #8
  unreachable

if.end447:                                        ; preds = %if.then446, %_Dynamic_check.succeeded443
  %503 = load i8*, i8** %num_buf.addr, align 4
  %504 = load double, double* %num, align 8
  %505 = ptrtoint i8* %503 to i32
  %506 = call i8* @c_fetch_pointer_from_offset(i32 %505)
  %507 = call i1 @c_isTaintedPointerToTaintedMem(i8* %506)
  br i1 %507, label %_Dynamic_check.succeeded449, label %_Dynamic_check.failed448

_Dynamic_check.succeeded449:                      ; preds = %if.end447
  %508 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.10 to i64))
  %call450 = call i32 (i8*, i8*, ...) @t_sprintf(i8* %506, i8* %508, double %504)
  store i32 %call450, i32* %written, align 4
  %509 = load i32, i32* %written, align 4
  %cmp451 = icmp slt i32 %509, 0
  br i1 %cmp451, label %if.then452, label %if.end453

if.then452:                                       ; preds = %_Dynamic_check.succeeded449
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed448:                         ; preds = %if.end447
  call void @llvm.trap() #8
  unreachable

if.end453:                                        ; preds = %_Dynamic_check.succeeded449
  %510 = load i8*, i8** %buf.addr, align 4
  %511 = ptrtoint i8* %510 to i32
  %cmp454 = icmp ne i32 %511, 0
  br i1 %cmp454, label %if.then455, label %if.end458

if.then455:                                       ; preds = %if.end453
  %512 = load i32, i32* %written, align 4
  %513 = load i8*, i8** %buf.addr, align 4
  %idx.ext456 = sext i32 %512 to i64
  %add.ptr457 = getelementptr inbounds i8, i8* %513, i64 %idx.ext456
  store i8* %add.ptr457, i8** %buf.addr, align 4
  br label %if.end458

if.end458:                                        ; preds = %if.then455, %if.end453
  %514 = load i32, i32* %written, align 4
  %515 = load i32, i32* %written_total, align 4
  %add459 = add nsw i32 %515, %514
  store i32 %add459, i32* %written_total, align 4
  %516 = load i32, i32* %written_total, align 4
  store i32 %516, i32* %retval, align 4
  br label %return

sw.bb460:                                         ; preds = %_Dynamic_check.succeeded
  br label %do.body461

do.body461:                                       ; preds = %sw.bb460
  %517 = load i8*, i8** %buf.addr, align 4
  %518 = load i8*, i8** %buf_start.addr, align 4
  %519 = load i64, i64* %buf_len.addr, align 8
  %520 = ptrtoint i8* %517 to i32
  %521 = call i8* @c_fetch_pointer_from_offset(i32 %520)
  %522 = call i1 @c_isTaintedPointerToTaintedMem(i8* %521)
  br i1 %522, label %_Dynamic_check.succeeded463, label %_Dynamic_check.failed462

_Dynamic_check.succeeded463:                      ; preds = %do.body461
  %523 = ptrtoint i8* %518 to i32
  %524 = call i8* @c_fetch_pointer_from_offset(i32 %523)
  %525 = call i1 @c_isTaintedPointerToTaintedMem(i8* %524)
  br i1 %525, label %_Dynamic_check.succeeded465, label %_Dynamic_check.failed464

_Dynamic_check.succeeded465:                      ; preds = %_Dynamic_check.succeeded463
  %call466 = call i32 @append_string(i8* %521, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %524, i64 %519)
  store i32 %call466, i32* %written, align 4
  %526 = load i32, i32* %written, align 4
  %cmp467 = icmp slt i32 %526, 0
  br i1 %cmp467, label %if.then468, label %if.end469

if.then468:                                       ; preds = %_Dynamic_check.succeeded465
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed462:                         ; preds = %do.body461
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed464:                         ; preds = %_Dynamic_check.succeeded463
  call void @llvm.trap() #8
  unreachable

if.end469:                                        ; preds = %_Dynamic_check.succeeded465
  %527 = load i8*, i8** %buf.addr, align 4
  %528 = ptrtoint i8* %527 to i32
  %cmp470 = icmp ne i32 %528, 0
  br i1 %cmp470, label %if.then471, label %if.end474

if.then471:                                       ; preds = %if.end469
  %529 = load i32, i32* %written, align 4
  %530 = load i8*, i8** %buf.addr, align 4
  %idx.ext472 = sext i32 %529 to i64
  %add.ptr473 = getelementptr inbounds i8, i8* %530, i64 %idx.ext472
  store i8* %add.ptr473, i8** %buf.addr, align 4
  br label %if.end474

if.end474:                                        ; preds = %if.then471, %if.end469
  %531 = load i32, i32* %written, align 4
  %532 = load i32, i32* %written_total, align 4
  %add475 = add nsw i32 %532, %531
  store i32 %add475, i32* %written_total, align 4
  br label %do.end476

do.end476:                                        ; preds = %if.end474
  %533 = load i32, i32* %written_total, align 4
  store i32 %533, i32* %retval, align 4
  br label %return

sw.bb477:                                         ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb477, %do.end476, %if.then468, %if.end458, %if.then452, %if.end440, %if.then431, %if.then415, %if.end400, %if.then394, %if.then384, %do.end378, %if.then370, %if.then353, %if.then329, %if.then310, %if.then292, %if.then266, %if.then248, %if.then233, %if.then215, %if.then203, %if.then186, %if.then166, %do.end151, %if.then143, %if.then126, %if.then105, %if.then86, %if.then69, %if.then45, %if.then24, %if.then
  %534 = load i32, i32* %retval, align 4
  ret i32 %534
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_string(i8* %buf, i8* %string, i8* %buf_start, i64 %buf_len) #2 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 4
  %string.addr = alloca i8*, align 8
  %buf_start.addr = alloca i8*, align 4
  %buf_len.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %boundedString = alloca i8*, align 8
  %tainted_bounded_string = alloca i8*, align 4
  %buf_tmp = alloca i8*, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i8* %string, i8** %string.addr, align 8
  store i8* %buf_start, i8** %buf_start.addr, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  %0 = load i8*, i8** %string.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %call = call i64 @strlen(i8* %2) #9
  store i64 %call, i64* %len, align 8
  %3 = load i8*, i8** %buf.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i64, i64* %len, align 8
  %conv = trunc i64 %5 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %boundedString, align 8
  %6 = load i8*, i8** %string.addr, align 8
  store i8* %6, i8** %boundedString, align 8
  %7 = load i64, i64* %len, align 8
  %mul = mul i64 %7, 1
  %call1 = call i8* @parson_string_tainted_malloc(i64 %mul)
  store i8* %call1, i8** %tainted_bounded_string, align 4
  %8 = load i8*, i8** %tainted_bounded_string, align 4
  %9 = load i8*, i8** %string.addr, align 8
  %10 = load i64, i64* %len, align 8
  %11 = ptrtoint i8* %8 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %14 = ptrtoint i8* %9 to i64
  %15 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %14)
  %call2 = call i8* @t_strncpy(i8* %12, i8* %15, i64 %10)
  %16 = load i8*, i8** %buf.addr, align 4
  %17 = load i8*, i8** %buf_start.addr, align 4
  %18 = ptrtoint i8* %16 to i32
  %19 = ptrtoint i8* %17 to i32
  %cmp3 = icmp uge i32 %18, %19
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %_Dynamic_check.succeeded
  %20 = load i8*, i8** %buf.addr, align 4
  %21 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 %21
  %22 = load i8*, i8** %buf_start.addr, align 4
  %23 = load i64, i64* %buf_len.addr, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %22, i64 %23
  %24 = ptrtoint i8* %add.ptr to i32
  %25 = ptrtoint i8* %add.ptr5 to i32
  %cmp6 = icmp ult i32 %24, %25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %_Dynamic_check.succeeded
  %26 = phi i1 [ false, %_Dynamic_check.succeeded ], [ %cmp6, %land.rhs ]
  br i1 %26, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %land.end
  %27 = load i8*, i8** %buf.addr, align 4
  %_Dynamic_check.is_null = icmp eq i8* %27, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded9
  %28 = load i8*, i8** %buf_start.addr, align 4
  %29 = load i8*, i8** %buf_start.addr, align 4
  %30 = load i64, i64* %buf_len.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %29, i64 %30
  %31 = load i64, i64* %len, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %27, i64 %31
  %32 = call i64 @c_TPtoO(i8* %28)
  %33 = inttoptr i64 %32 to i8*
  %34 = call i64 @c_TPtoO(i8* %27)
  %35 = inttoptr i64 %34 to i8*
  %_Dynamic_check.lower = icmp ule i8* %33, %35
  %36 = call i64 @c_TPtoO(i8* %add.ptr11)
  %37 = inttoptr i64 %36 to i8*
  %38 = call i64 @c_TPtoO(i8* %add.ptr10)
  %39 = inttoptr i64 %38 to i8*
  %_Dynamic_check.upper = icmp ule i8* %37, %39
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed12

_Dynamic_check.success:                           ; preds = %_Dynamic_check.subsumption, %_Dynamic_check.succeeded9
  store i8* %27, i8** %buf_tmp, align 4
  %40 = load i8*, i8** %buf_tmp, align 4
  %41 = load i8*, i8** %tainted_bounded_string, align 4
  %42 = load i64, i64* %len, align 8
  %43 = ptrtoint i8* %40 to i32
  %44 = call i8* @c_fetch_pointer_from_offset(i32 %43)
  %45 = call i1 @c_isTaintedPointerToTaintedMem(i8* %44)
  br i1 %45, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.success
  %46 = ptrtoint i8* %41 to i32
  %47 = call i8* @c_fetch_pointer_from_offset(i32 %46)
  %48 = call i1 @c_isTaintedPointerToTaintedMem(i8* %47)
  br i1 %48, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded14
  %call17 = call i8* @t_memcpy(i8* %44, i8* %47, i64 %42)
  %49 = load i8*, i8** %buf.addr, align 4
  %50 = load i64, i64* %len, align 8
  %51 = ptrtoint i8* %49 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.succeeded16
  %arrayidx = getelementptr inbounds i8, i8* %52, i64 %50
  %54 = call i64 @c_TPtoO(i8* %arrayidx)
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8*, i8** %buf_start.addr, align 4
  %57 = load i8*, i8** %buf_start.addr, align 4
  %58 = load i64, i64* %buf_len.addr, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %57, i64 %58
  %59 = call i64 @c_TPtoO(i8* %add.ptr20)
  %60 = inttoptr i64 %59 to i8*
  %61 = call i64 @c_TPtoO(i8* %56)
  %62 = inttoptr i64 %61 to i8*
  %_Dynamic_check.lower21 = icmp ule i8* %62, %55
  %_Dynamic_check.upper22 = icmp ult i8* %55, %60
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower21, %_Dynamic_check.upper22
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded19
  store i8 0, i8* %arrayidx, align 1
  %63 = load i64, i64* %len, align 8
  %conv25 = trunc i64 %63 to i32
  store i32 %conv25, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %land.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded19
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded24, %if.then
  %64 = load i32, i32* %retval, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_indent(i8* %buf, i32 %level, i8* %buf_start, i64 %buf_len) #2 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 4
  %level.addr = alloca i32, align 4
  %buf_start.addr = alloca i8*, align 4
  %buf_len.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %written = alloca i32, align 4
  %written_total = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  store i8* %buf_start, i8** %buf_start.addr, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i32 -1, i32* %written, align 4
  store i32 0, i32* %written_total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %level.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i8*, i8** %buf.addr, align 4
  %3 = load i8*, i8** %buf_start.addr, align 4
  %4 = load i64, i64* %buf_len.addr, align 8
  %5 = ptrtoint i8* %2 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %do.body
  %8 = ptrtoint i8* %3 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call i32 @append_string(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %9, i64 %4)
  store i32 %call, i32* %written, align 4
  %11 = load i32, i32* %written, align 4
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %do.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded2
  %12 = load i8*, i8** %buf.addr, align 4
  %13 = ptrtoint i8* %12 to i32
  %cmp4 = icmp ne i32 %13, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %14 = load i32, i32* %written, align 4
  %15 = load i8*, i8** %buf.addr, align 4
  %idx.ext = sext i32 %14 to i64
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 %idx.ext
  store i8* %add.ptr, i8** %buf.addr, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %16 = load i32, i32* %written, align 4
  %17 = load i32, i32* %written_total, align 4
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %written_total, align 4
  br label %do.end

do.end:                                           ; preds = %if.end6
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %written_total, align 4
  store i32 %19, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load i32, i32* %retval, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_serialize_string(i8* %str_unbounded, i8* %buf, i8* %buf_start, i64 %buf_len) #0 {
entry:
  %str_unbounded.addr = alloca i8*, align 4
  %buf.addr = alloca i8*, align 4
  %buf_start.addr = alloca i8*, align 4
  %buf_len.addr = alloca i64, align 8
  store i8* %str_unbounded, i8** %str_unbounded.addr, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i8* %buf_start, i8** %buf_start.addr, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load i8*, i8** %str_unbounded.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = load i8*, i8** %buf.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = load i8*, i8** %buf_start.addr, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = load i64, i64* %buf_len.addr, align 8
  %7 = ptrtoint i8* %call to i64
  %8 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %7)
  %call1 = call i64 @w2c_json_serialize_string(i8* %8, i32 %1, i32 %3, i32 %5, i64 %6)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

declare dso_local i32 @t_sprintf(i8*, i8*, ...) #1

declare dso_local i64 @w2c_json_serialize_string(i8*, i32, i32, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_parse_file(i8* %filename) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %filename.addr = alloca i8*, align 8
  %file_contents = alloca i8*, align 8
  %output_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %Tainted_file_contents = alloca i8*, align 4
  %len = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @read_file(i8* %0)
  store i8* %call, i8** %file_contents, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %1 = load i8*, i8** %file_contents, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %Tainted_file_contents, align 4
  %2 = load i8*, i8** %file_contents, align 8
  %3 = ptrtoint i8* %2 to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call1 = call i64 @strlen(i8* %4) #9
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %conv2 = sext i32 %5 to i64
  %mul = mul i64 %conv2, 1
  %call3 = call i8* @parson_string_tainted_malloc(i64 %mul)
  store i8* %call3, i8** %Tainted_file_contents, align 4
  %6 = load i8*, i8** %Tainted_file_contents, align 4
  %7 = load i8*, i8** %file_contents, align 8
  %8 = ptrtoint i8* %6 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %11 = ptrtoint i8* %7 to i64
  %12 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %11)
  %call4 = call i8* @tc_strcpy(i8* %9, i8* %12)
  %13 = load i8*, i8** %Tainted_file_contents, align 4
  %14 = ptrtoint i8* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded
  %call7 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_parse_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %15)
  %17 = bitcast %Tstruct.Spl_json_value_t_t* %call7 to %Tstruct.json_value_t_t*
  %18 = bitcast %Tstruct.json_value_t_t* %17 to i8*
  %19 = call i64 @c_TPtoO(i8* %18)
  %20 = inttoptr i64 %19 to %Tstruct.json_value_t_t*
  %21 = bitcast %Tstruct.json_value_t_t* %20 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %21, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %22 = load i8*, i8** %Tainted_file_contents, align 4
  %_Dynamic_check.is_null = icmp eq i8* %22, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded6
  %23 = load i8*, i8** %Tainted_file_contents, align 4
  %24 = load i8*, i8** %Tainted_file_contents, align 4
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 0
  %_Dynamic_check.non_null = icmp ne i8* %22, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.subsumption
  %add.ptr10 = getelementptr inbounds i8, i8* %22, i64 0
  %25 = call i64 @c_TPtoO(i8* %23)
  %26 = inttoptr i64 %25 to i8*
  %27 = call i64 @c_TPtoO(i8* %22)
  %28 = inttoptr i64 %27 to i8*
  %_Dynamic_check.lower = icmp ule i8* %26, %28
  %29 = call i64 @c_TPtoO(i8* %add.ptr10)
  %30 = inttoptr i64 %29 to i8*
  %31 = call i64 @c_TPtoO(i8* %add.ptr)
  %32 = inttoptr i64 %31 to i8*
  %_Dynamic_check.upper = icmp ule i8* %30, %32
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed11

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded9, %_Dynamic_check.succeeded6
  %33 = ptrtoint i8* %22 to i32
  %34 = call i8* @c_fetch_pointer_from_offset(i32 %33)
  %35 = call i1 @c_isTaintedPointerToTaintedMem(i8* %34)
  br i1 %35, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.success
  call void @t_free(i8* %34)
  %36 = load i8*, i8** %file_contents, align 8
  %_Dynamic_check.is_null14 = icmp eq i8* %36, null
  br i1 %_Dynamic_check.is_null14, label %_Dynamic_check.success28, label %_Dynamic_check.subsumption15

_Dynamic_check.subsumption15:                     ; preds = %_Dynamic_check.succeeded13
  %37 = load i8*, i8** %file_contents, align 8
  %38 = load i8*, i8** %file_contents, align 8
  %_Dynamic_check.non_null16 = icmp ne i8* %38, null
  br i1 %_Dynamic_check.non_null16, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.subsumption15
  %add.ptr19 = getelementptr inbounds i8, i8* %38, i64 0
  %_Dynamic_check.non_null20 = icmp ne i8* %36, null
  br i1 %_Dynamic_check.non_null20, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded18
  %add.ptr23 = getelementptr inbounds i8, i8* %36, i64 0
  %39 = call i64 @c_TPtoO(i8* %37)
  %40 = inttoptr i64 %39 to i8*
  %41 = call i64 @c_TPtoO(i8* %36)
  %42 = inttoptr i64 %41 to i8*
  %_Dynamic_check.lower24 = icmp ule i8* %40, %42
  %43 = call i64 @c_TPtoO(i8* %add.ptr23)
  %44 = inttoptr i64 %43 to i8*
  %45 = call i64 @c_TPtoO(i8* %add.ptr19)
  %46 = inttoptr i64 %45 to i8*
  %_Dynamic_check.upper25 = icmp ule i8* %44, %46
  %_Dynamic_check.cast26 = and i1 %_Dynamic_check.lower24, %_Dynamic_check.upper25
  br i1 %_Dynamic_check.cast26, label %_Dynamic_check.success28, label %_Dynamic_check.failed27

_Dynamic_check.success28:                         ; preds = %_Dynamic_check.succeeded22, %_Dynamic_check.succeeded13
  call void @free(i8* %36) #10
  %47 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %47, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded9
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.subsumption15
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.success28, %if.then
  %48 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_file(i8* %filename) #2 {
entry:
  %retval = alloca i8*, align 8
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %size_to_read = alloca i64, align 8
  %size_read = alloca i64, align 8
  %pos = alloca i64, align 8
  %file_contents = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.14 to i64))
  %call = call %struct._IO_FILE* @fopen(i8* %2, i8* %3)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  store i64 0, i64* %size_to_read, align 8
  store i64 0, i64* %size_read, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 @fseek(%struct._IO_FILE* %5, i64 0, i32 2)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i64 @ftell(%struct._IO_FILE* %6)
  store i64 %call2, i64* %pos, align 8
  %7 = load i64, i64* %pos, align 8
  %cmp = icmp slt i64 %7, 0
  br i1 %cmp, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %9 = ptrtoint %struct._IO_FILE* %8 to i64
  %10 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %9)
  %11 = bitcast i8* %10 to %struct._IO_FILE*
  %call4 = call i32 @fclose(%struct._IO_FILE* %11)
  store i8* null, i8** %retval, align 8
  br label %return

if.end5:                                          ; preds = %if.end
  %12 = load i64, i64* %pos, align 8
  store i64 %12, i64* %size_to_read, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @rewind(%struct._IO_FILE* %13)
  %14 = load i64, i64* %size_to_read, align 8
  %mul = mul i64 1, %14
  %call6 = call i8* @parson_string_malloc(i64 %mul)
  store i8* %call6, i8** %file_contents, align 8
  %15 = load i8*, i8** %file_contents, align 8
  %tobool7 = icmp ne i8* %15, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end5
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %17 = ptrtoint %struct._IO_FILE* %16 to i64
  %18 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %17)
  %19 = bitcast i8* %18 to %struct._IO_FILE*
  %call9 = call i32 @fclose(%struct._IO_FILE* %19)
  store i8* null, i8** %retval, align 8
  br label %return

if.end10:                                         ; preds = %if.end5
  %20 = load i8*, i8** %file_contents, align 8
  %21 = load i64, i64* %size_to_read, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i64 @fread(i8* %20, i64 1, i64 %21, %struct._IO_FILE* %22)
  store i64 %call11, i64* %size_read, align 8
  %23 = load i64, i64* %size_read, align 8
  %cmp12 = icmp eq i64 %23, 0
  br i1 %cmp12, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end10
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %25 = ptrtoint %struct._IO_FILE* %24 to i64
  %26 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %25)
  %27 = bitcast i8* %26 to %struct._IO_FILE*
  %call13 = call i32 @ferror(%struct._IO_FILE* %27) #10
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then15, label %if.end17

if.then15:                                        ; preds = %lor.lhs.false, %if.end10
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %29 = ptrtoint %struct._IO_FILE* %28 to i64
  %30 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %29)
  %31 = bitcast i8* %30 to %struct._IO_FILE*
  %call16 = call i32 @fclose(%struct._IO_FILE* %31)
  store i8* null, i8** %retval, align 8
  br label %return

if.end17:                                         ; preds = %lor.lhs.false
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %33 = ptrtoint %struct._IO_FILE* %32 to i64
  %34 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %33)
  %35 = bitcast i8* %34 to %struct._IO_FILE*
  %call18 = call i32 @fclose(%struct._IO_FILE* %35)
  %36 = load i8*, i8** %file_contents, align 8
  %37 = load i64, i64* %size_read, align 8
  %_Dynamic_check.non_null = icmp ne i8* %36, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end17
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 %37
  %38 = call i64 @c_TPtoO(i8* %arrayidx)
  %39 = inttoptr i64 %38 to i8*
  %40 = load i8*, i8** %file_contents, align 8
  %41 = load i8*, i8** %file_contents, align 8
  %42 = load i64, i64* %size_to_read, align 8
  %mul19 = mul i64 1, %42
  %_Dynamic_check.non_null20 = icmp ne i8* %41, null
  br i1 %_Dynamic_check.non_null20, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 %mul19
  %43 = call i64 @c_TPtoO(i8* %add.ptr)
  %44 = inttoptr i64 %43 to i8*
  %45 = call i64 @c_TPtoO(i8* %40)
  %46 = inttoptr i64 %45 to i8*
  %_Dynamic_check.lower = icmp ule i8* %46, %39
  %_Dynamic_check.upper = icmp ult i8* %39, %44
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded24, label %_Nullterm_range_check.failed

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded22, %_Nullterm_range_check.failed
  store i8 0, i8* %arrayidx, align 1
  %47 = load i8*, i8** %file_contents, align 8
  store i8* %47, i8** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end17
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Nullterm_range_check.failed:                     ; preds = %_Dynamic_check.succeeded22
  %_Dynamic_check.at_upper = icmp eq i8* %39, %44
  %_Dynamic_check.nt_upper_bound = and i1 %_Dynamic_check.lower, %_Dynamic_check.at_upper
  br i1 %_Dynamic_check.nt_upper_bound, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.failed23:                          ; preds = %_Nullterm_range_check.failed
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded24, %if.then15, %if.then8, %if.then3, %if.then
  %48 = load i8*, i8** %retval, align 8
  ret i8* %48
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @tc_strcpy(i8*, i8*) #1

declare dso_local void @t_free(i8*) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_value_trampoline(i32 %sandbox, i32 %arg_1, i64 %arg_2) #2 {
entry:
  %sandbox.addr = alloca i32, align 4
  %arg_1.addr = alloca i32, align 4
  %arg_2.addr = alloca i64, align 8
  %first_arg = alloca i8*, align 4
  store i32 %sandbox, i32* %sandbox.addr, align 4
  store i32 %arg_1, i32* %arg_1.addr, align 4
  store i64 %arg_2, i64* %arg_2.addr, align 8
  %0 = load i32, i32* %arg_1.addr, align 4
  %call = call i8* @c_fetch_pointer_from_offset(i32 %0)
  store i8* %call, i8** %first_arg, align 4
  %1 = load i8*, i8** %first_arg, align 4
  %2 = load i64, i64* %arg_2.addr, align 8
  %3 = ptrtoint i8* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call1 = call %Tstruct.Spl_json_value_t_t* @parse_value(i8* %4, i64 %2)
  %6 = bitcast %Tstruct.Spl_json_value_t_t* %call1 to %Tstruct.json_value_t_t*
  %7 = bitcast %Tstruct.json_value_t_t* %6 to i8*
  %8 = call i64 @c_TPtoO(i8* %7)
  %9 = inttoptr i64 %8 to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to i8*
  %11 = ptrtoint i8* %10 to i64
  %12 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %11)
  %call2 = call i32 @c_fetch_pointer_offset(i8* %12)
  ret i32 %call2

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_parse_file_with_comments(i8* %filename, %Tstruct.Spl_json_value_t_t* (i8*, i64)* %parse_value) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %filename.addr = alloca i8*, align 8
  %parse_value.addr = alloca %Tstruct.Spl_json_value_t_t* (i8*, i64)*, align 4
  %file_contents = alloca i8*, align 8
  %output_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %Tainted_file_contents = alloca i8*, align 4
  %len = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %Tstruct.Spl_json_value_t_t* (i8*, i64)* %parse_value, %Tstruct.Spl_json_value_t_t* (i8*, i64)** %parse_value.addr, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @read_file(i8* %0)
  store i8* %call, i8** %file_contents, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %1 = load i8*, i8** %file_contents, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %Tainted_file_contents, align 4
  %2 = load i8*, i8** %file_contents, align 8
  %3 = ptrtoint i8* %2 to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call1 = call i64 @strlen(i8* %4) #9
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %5 = load i32, i32* %len, align 4
  %conv2 = sext i32 %5 to i64
  %mul = mul i64 %conv2, 1
  %call3 = call i8* @parson_string_tainted_malloc(i64 %mul)
  store i8* %call3, i8** %Tainted_file_contents, align 4
  %6 = load i8*, i8** %Tainted_file_contents, align 4
  %7 = load i8*, i8** %file_contents, align 8
  %8 = ptrtoint i8* %6 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %11 = ptrtoint i8* %7 to i64
  %12 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %11)
  %call4 = call i8* @tc_strcpy(i8* %9, i8* %12)
  %13 = load i8*, i8** %Tainted_file_contents, align 4
  %14 = load %Tstruct.Spl_json_value_t_t* (i8*, i64)*, %Tstruct.Spl_json_value_t_t* (i8*, i64)** %parse_value.addr, align 4
  %15 = ptrtoint i8* %13 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded
  %call7 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*, %Tstruct.Spl_json_value_t_t* (i8*, i64)*)* @json_parse_string_with_comments to %Tstruct.Spl_json_value_t_t* (i8*, %Tstruct.Spl_json_value_t_t* (i8*, i64)*)*)(i8* %16, %Tstruct.Spl_json_value_t_t* (i8*, i64)* %14)
  %18 = bitcast %Tstruct.Spl_json_value_t_t* %call7 to %Tstruct.json_value_t_t*
  %19 = bitcast %Tstruct.json_value_t_t* %18 to i8*
  %20 = call i64 @c_TPtoO(i8* %19)
  %21 = inttoptr i64 %20 to %Tstruct.json_value_t_t*
  %22 = bitcast %Tstruct.json_value_t_t* %21 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %22, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %23 = load i8*, i8** %Tainted_file_contents, align 4
  %_Dynamic_check.is_null = icmp eq i8* %23, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded6
  %24 = load i8*, i8** %Tainted_file_contents, align 4
  %25 = load i8*, i8** %Tainted_file_contents, align 4
  %add.ptr = getelementptr inbounds i8, i8* %25, i64 0
  %_Dynamic_check.non_null = icmp ne i8* %23, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.subsumption
  %add.ptr10 = getelementptr inbounds i8, i8* %23, i64 0
  %26 = call i64 @c_TPtoO(i8* %24)
  %27 = inttoptr i64 %26 to i8*
  %28 = call i64 @c_TPtoO(i8* %23)
  %29 = inttoptr i64 %28 to i8*
  %_Dynamic_check.lower = icmp ule i8* %27, %29
  %30 = call i64 @c_TPtoO(i8* %add.ptr10)
  %31 = inttoptr i64 %30 to i8*
  %32 = call i64 @c_TPtoO(i8* %add.ptr)
  %33 = inttoptr i64 %32 to i8*
  %_Dynamic_check.upper = icmp ule i8* %31, %33
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed11

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded9, %_Dynamic_check.succeeded6
  %34 = ptrtoint i8* %23 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.success
  call void @t_free(i8* %35)
  %37 = load i8*, i8** %file_contents, align 8
  %_Dynamic_check.is_null14 = icmp eq i8* %37, null
  br i1 %_Dynamic_check.is_null14, label %_Dynamic_check.success28, label %_Dynamic_check.subsumption15

_Dynamic_check.subsumption15:                     ; preds = %_Dynamic_check.succeeded13
  %38 = load i8*, i8** %file_contents, align 8
  %39 = load i8*, i8** %file_contents, align 8
  %_Dynamic_check.non_null16 = icmp ne i8* %39, null
  br i1 %_Dynamic_check.non_null16, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.subsumption15
  %add.ptr19 = getelementptr inbounds i8, i8* %39, i64 0
  %_Dynamic_check.non_null20 = icmp ne i8* %37, null
  br i1 %_Dynamic_check.non_null20, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded18
  %add.ptr23 = getelementptr inbounds i8, i8* %37, i64 0
  %40 = call i64 @c_TPtoO(i8* %38)
  %41 = inttoptr i64 %40 to i8*
  %42 = call i64 @c_TPtoO(i8* %37)
  %43 = inttoptr i64 %42 to i8*
  %_Dynamic_check.lower24 = icmp ule i8* %41, %43
  %44 = call i64 @c_TPtoO(i8* %add.ptr23)
  %45 = inttoptr i64 %44 to i8*
  %46 = call i64 @c_TPtoO(i8* %add.ptr19)
  %47 = inttoptr i64 %46 to i8*
  %_Dynamic_check.upper25 = icmp ule i8* %45, %47
  %_Dynamic_check.cast26 = and i1 %_Dynamic_check.lower24, %_Dynamic_check.upper25
  br i1 %_Dynamic_check.cast26, label %_Dynamic_check.success28, label %_Dynamic_check.failed27

_Dynamic_check.success28:                         ; preds = %_Dynamic_check.succeeded22, %_Dynamic_check.succeeded13
  call void @free(i8* %37) #10
  %48 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %48, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded9
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.subsumption15
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.success28, %if.then
  %49 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_parse_string(i8* %string) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %tmp = alloca i8*, align 8
  store i8* %string, i8** %string.addr, align 4
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %string.addr, align 4
  store i8* %2, i8** %tmp, align 8
  %3 = load i8*, i8** %tmp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, -17
  br i1 %cmp1, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %5 = load i8*, i8** %tmp, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %6 to i32
  %cmp5 = icmp eq i32 %conv4, -69
  br i1 %cmp5, label %land.lhs.true7, label %if.end13

land.lhs.true7:                                   ; preds = %land.lhs.true
  %7 = load i8*, i8** %tmp, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 2
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp eq i32 %conv9, -65
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true7
  %9 = load i8*, i8** %string.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 3
  store i8* %add.ptr, i8** %string.addr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true7, %land.lhs.true, %if.end
  %10 = load i8*, i8** %string.addr, align 4
  %11 = ptrtoint i8* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end13
  %call = call %Tstruct.Spl_json_value_t_t* @parse_value(i8* %12, i64 0)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i64 @c_TPtoO(i8* %15)
  %17 = inttoptr i64 %16 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %17, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end13
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded, %if.then
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %18
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.json_value_t_t* @json_parse_string_with_comments(i8* %string, %Tstruct.Spl_json_value_t_t* (i8*, i64)* %parse_value) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %parse_value.addr = alloca %Tstruct.Spl_json_value_t_t* (i8*, i64)*, align 4
  %ret_param_types = alloca [3 x i32], align 4
  store i8* %string, i8** %string.addr, align 4
  store %Tstruct.Spl_json_value_t_t* (i8*, i64)* %parse_value, %Tstruct.Spl_json_value_t_t* (i8*, i64)** %parse_value.addr, align 4
  %0 = bitcast [3 x i32]* %ret_param_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([3 x i32]* @__const.json_parse_string_with_comments.ret_param_types to i8*), i64 12, i1 false)
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load i8*, i8** %string.addr, align 4
  %2 = ptrtoint i8* %1 to i32
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %ret_param_types, i64 0, i64 0
  %call1 = call i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...) bitcast (i32 (...)* @sbx_register_callback to i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...)*)(i32 (i32, i32, i64)* @parse_value_trampoline, i32 2, i32 1, i32* %arraydecay)
  %3 = ptrtoint i8* %call to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call2 = call i32 @w2c_json_parse_string_with_comments(i8* %4, i32 %2, i32 %call1)
  %conv = zext i32 %call2 to i64
  %5 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %5
}

declare dso_local i32 @w2c_json_parse_string_with_comments(i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %nameLen = alloca i64, align 8
  %name_with_len = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %cmp1 = icmp eq i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i8*, i8** %name.addr, align 4
  %6 = ptrtoint i8* %5 to i32
  %7 = call i8* @c_fetch_pointer_from_offset(i32 %6)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %call = call i64 @t_strlen(i8* %7)
  store i64 %call, i64* %nameLen, align 8
  store i8* null, i8** %name_with_len, align 4
  %9 = load i8*, i8** %name.addr, align 4
  store i8* %9, i8** %name_with_len, align 4
  %10 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %11 = load i8*, i8** %name_with_len, align 4
  %12 = load i64, i64* %nameLen, align 8
  %13 = ptrtoint %Tstruct.Spl_json_object_t_t* %10 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_object_t_t*
  %17 = ptrtoint i8* %11 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded3
  %call6 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (%Tstruct.json_object_t_t*, i8*, i64)* @json_object_getn_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*, i64)*)(%Tstruct.Spl_json_object_t_t* %16, i8* %18, i64 %12)
  %20 = bitcast %Tstruct.Spl_json_value_t_t* %call6 to %Tstruct.json_value_t_t*
  %21 = bitcast %Tstruct.json_value_t_t* %20 to i8*
  %22 = call i64 @c_TPtoO(i8* %21)
  %23 = inttoptr i64 %22 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %23, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded5, %if.then
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %24
}

declare dso_local i64 @t_strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_get_string(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  ret i8* %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_object_get_number(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  ret double %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_object_t_t* @json_object_get_object(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  %18 = bitcast %Tstruct.Spl_json_object_t_t* %call5 to %Tstruct.json_object_t_t*
  %19 = bitcast %Tstruct.json_object_t_t* %18 to i8*
  %20 = call i64 @c_TPtoO(i8* %19)
  %21 = inttoptr i64 %20 to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %21

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  %18 = bitcast %Tstruct.Spl_json_array_t_t* %call5 to %Tstruct.json_array_t_t*
  %19 = bitcast %Tstruct.json_array_t_t* %18 to i8*
  %20 = call i64 @c_TPtoO(i8* %19)
  %21 = inttoptr i64 %20 to %Tstruct.Spl_json_array_t_t*
  ret %Tstruct.Spl_json_array_t_t* %21

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_get_boolean(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  ret i32 %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %dot_position = alloca i8*, align 4
  %after_dot = alloca i8*, align 4
  %one_past_dot = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load i8*, i8** %name.addr, align 4
  %2 = ptrtoint i8* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i8* @t_strchr(i8* %3, i32 46)
  store i8* %call, i8** %dot_position, align 4
  %5 = load i8*, i8** %dot_position, align 4
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %_Dynamic_check.succeeded
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = load i8*, i8** %name.addr, align 4
  %8 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %if.then
  %11 = bitcast i8* %9 to %Tstruct.Spl_json_object_t_t*
  %12 = ptrtoint i8* %7 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %call5 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %11, i8* %13)
  %15 = bitcast %Tstruct.Spl_json_value_t_t* %call5 to %Tstruct.json_value_t_t*
  %16 = bitcast %Tstruct.json_value_t_t* %15 to i8*
  %17 = call i64 @c_TPtoO(i8* %16)
  %18 = inttoptr i64 %17 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %18, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %if.then
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  store i8* null, i8** %after_dot, align 4
  %19 = load i8*, i8** %name.addr, align 4
  store i8* %19, i8** %after_dot, align 4
  %20 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %21 = load i8*, i8** %after_dot, align 4
  %22 = load i8*, i8** %dot_position, align 4
  %23 = load i8*, i8** %name.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %24 = ptrtoint %Tstruct.Spl_json_object_t_t* %20 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.end
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_object_t_t*
  %28 = ptrtoint i8* %21 to i32
  %29 = call i8* @c_fetch_pointer_from_offset(i32 %28)
  %30 = call i1 @c_isTaintedPointerToTaintedMem(i8* %29)
  br i1 %30, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded7
  %call10 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (%Tstruct.json_object_t_t*, i8*, i64)* @json_object_getn_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*, i64)*)(%Tstruct.Spl_json_object_t_t* %27, i8* %29, i64 %sub.ptr.sub)
  %31 = bitcast %Tstruct.Spl_json_value_t_t* %call10 to %Tstruct.json_value_t_t*
  %32 = bitcast %Tstruct.json_value_t_t* %31 to i8*
  %33 = call i64 @c_TPtoO(i8* %32)
  %34 = inttoptr i64 %33 to %Tstruct.Spl_json_value_t_t*
  %35 = ptrtoint %Tstruct.Spl_json_value_t_t* %34 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded9
  %38 = bitcast i8* %36 to %Tstruct.Spl_json_value_t_t*
  %call13 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %38)
  %39 = bitcast %Tstruct.Spl_json_object_t_t* %call13 to %Tstruct.json_object_t_t*
  %40 = bitcast %Tstruct.json_object_t_t* %39 to i8*
  %41 = call i64 @c_TPtoO(i8* %40)
  %42 = inttoptr i64 %41 to %Tstruct.json_object_t_t*
  %43 = bitcast %Tstruct.json_object_t_t* %42 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %43, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* null, i8** %one_past_dot, align 4
  %44 = load i8*, i8** %dot_position, align 4
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %add.ptr, i8** %one_past_dot, align 4
  %45 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %46 = load i8*, i8** %one_past_dot, align 4
  %47 = ptrtoint %Tstruct.Spl_json_object_t_t* %45 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.succeeded12
  %50 = bitcast i8* %48 to %Tstruct.Spl_json_object_t_t*
  %51 = ptrtoint i8* %46 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.succeeded15
  %call18 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %50, i8* %52)
  %54 = bitcast %Tstruct.Spl_json_value_t_t* %call18 to %Tstruct.json_value_t_t*
  %55 = bitcast %Tstruct.json_value_t_t* %54 to i8*
  %56 = call i64 @c_TPtoO(i8* %55)
  %57 = inttoptr i64 %56 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %57, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed6:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded9
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded17, %_Dynamic_check.succeeded4
  %58 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %58
}

declare dso_local i8* @t_strchr(i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_dotget_string(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  ret i8* %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_object_dotget_number(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  ret double %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_object_t_t* @json_object_dotget_object(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  %18 = bitcast %Tstruct.Spl_json_object_t_t* %call5 to %Tstruct.json_object_t_t*
  %19 = bitcast %Tstruct.json_object_t_t* %18 to i8*
  %20 = call i64 @c_TPtoO(i8* %19)
  %21 = inttoptr i64 %20 to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %21

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_array_t_t* @json_object_dotget_array(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  %18 = bitcast %Tstruct.Spl_json_array_t_t* %call5 to %Tstruct.json_array_t_t*
  %19 = bitcast %Tstruct.json_array_t_t* %18 to i8*
  %20 = call i64 @c_TPtoO(i8* %19)
  %21 = inttoptr i64 %20 to %Tstruct.Spl_json_array_t_t*
  ret %Tstruct.Spl_json_array_t_t* %21

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  ret i32 %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_object_get_count(%Tstruct.json_object_t_t* %object) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %tobool = icmp ne %Tstruct.Spl_json_object_t_t* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %6, i32 0, i32 3
  %7 = load i32, i32* %count, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi i32 [ %7, %_Dynamic_check.succeeded ], [ 0, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_get_name(%Tstruct.json_object_t_t* %object, i64 %index) #2 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i64 %index, i64* %index.addr, align 8
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %index.addr, align 8
  %4 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %5 = ptrtoint %Tstruct.Spl_json_object_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_object_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %8)
  %cmp1 = icmp uge i64 %3, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %entry
  store i8* null, i8** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %10 = ptrtoint %Tstruct.Spl_json_object_t_t* %9 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %if.end
  %13 = bitcast i8* %11 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %13, i32 0, i32 1
  %names4 = bitcast i32* %names to i8***
  %14 = load i8**, i8*** %names4, align 4
  %15 = load i64, i64* %index.addr, align 8
  %16 = ptrtoint i8** %14 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %19 = bitcast i8* %17 to i8**
  %20 = bitcast i8** %19 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %15
  %21 = bitcast i32* %arrayidx to i8**
  %22 = bitcast i8** %21 to i8*
  %23 = call i64 @c_TPtoO(i8* %22)
  %24 = inttoptr i64 %23 to i8**
  %25 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %26 = ptrtoint %Tstruct.Spl_json_object_t_t* %25 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %29 = bitcast i8* %27 to %Tstruct.Spl_json_object_t_t*
  %names9 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %29, i32 0, i32 1
  %names10 = bitcast i32* %names9 to i8***
  %30 = load i8**, i8*** %names10, align 4
  %31 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %32 = ptrtoint %Tstruct.Spl_json_object_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded8
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_object_t_t*
  %names13 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %35, i32 0, i32 1
  %names14 = bitcast i32* %names13 to i8***
  %36 = load i8**, i8*** %names14, align 4
  %37 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %38 = ptrtoint %Tstruct.Spl_json_object_t_t* %37 to i32
  %39 = call i8* @c_fetch_pointer_from_offset(i32 %38)
  %40 = call i1 @c_isTaintedPointerToTaintedMem(i8* %39)
  br i1 %40, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %41 = bitcast i8* %39 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %41, i32 0, i32 4
  %42 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %42 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %36, i64 %idx.ext
  %43 = bitcast i8** %add.ptr to i8*
  %44 = call i64 @c_TPtoO(i8* %43)
  %45 = inttoptr i64 %44 to i8**
  %46 = bitcast i8** %30 to i8*
  %47 = call i64 @c_TPtoO(i8* %46)
  %48 = inttoptr i64 %47 to i8**
  %_Dynamic_check.lower = icmp ule i8** %48, %24
  %_Dynamic_check.upper = icmp ult i8** %24, %45
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  %49 = load i8*, i8** %21, align 8
  store i8* %49, i8** %retval, align 8
  br label %return

_Dynamic_check.failed2:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded18, %if.then
  %50 = load i8*, i8** %retval, align 8
  ret i8* %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_value_t_t* @json_object_get_value_at(%Tstruct.json_object_t_t* %object, i64 %index) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i64 %index, i64* %index.addr, align 8
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %index.addr, align 8
  %4 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %5 = ptrtoint %Tstruct.Spl_json_object_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_object_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %8)
  %cmp1 = icmp uge i64 %3, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %10 = ptrtoint %Tstruct.Spl_json_object_t_t* %9 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %if.end
  %13 = bitcast i8* %11 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %13, i32 0, i32 2
  %values4 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %14 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values4, align 4
  %15 = load i64, i64* %index.addr, align 8
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t** %14 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %19 = bitcast i8* %17 to %Tstruct.Spl_json_value_t_t**
  %20 = bitcast %Tstruct.Spl_json_value_t_t** %19 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %15
  %21 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %22 = bitcast %Tstruct.Spl_json_value_t_t** %21 to i8*
  %23 = call i64 @c_TPtoO(i8* %22)
  %24 = inttoptr i64 %23 to %Tstruct.Spl_json_value_t_t**
  %25 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %26 = ptrtoint %Tstruct.Spl_json_object_t_t* %25 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %29 = bitcast i8* %27 to %Tstruct.Spl_json_object_t_t*
  %values9 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %29, i32 0, i32 2
  %values10 = bitcast i32* %values9 to %Tstruct.Spl_json_value_t_t***
  %30 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values10, align 4
  %31 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %32 = ptrtoint %Tstruct.Spl_json_object_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded8
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_object_t_t*
  %values13 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %35, i32 0, i32 2
  %values14 = bitcast i32* %values13 to %Tstruct.Spl_json_value_t_t***
  %36 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values14, align 4
  %37 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %38 = ptrtoint %Tstruct.Spl_json_object_t_t* %37 to i32
  %39 = call i8* @c_fetch_pointer_from_offset(i32 %38)
  %40 = call i1 @c_isTaintedPointerToTaintedMem(i8* %39)
  br i1 %40, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %41 = bitcast i8* %39 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %41, i32 0, i32 4
  %42 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %42 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %36, i64 %idx.ext
  %43 = bitcast %Tstruct.Spl_json_value_t_t** %36 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 %idx.ext
  %45 = bitcast i32* %44 to %Tstruct.Spl_json_value_t_t**
  %46 = bitcast %Tstruct.Spl_json_value_t_t** %45 to i8*
  %47 = call i64 @c_TPtoO(i8* %46)
  %48 = inttoptr i64 %47 to %Tstruct.Spl_json_value_t_t**
  %49 = bitcast %Tstruct.Spl_json_value_t_t** %30 to i8*
  %50 = call i64 @c_TPtoO(i8* %49)
  %51 = inttoptr i64 %50 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %51, %24
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %24, %48
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  %52 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %21, align 4
  %_Dynamic_check.is_null = icmp eq %Tstruct.Spl_json_value_t_t* %52, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded18
  %53 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %54 = ptrtoint %Tstruct.Spl_json_object_t_t* %53 to i32
  %55 = call i8* @c_fetch_pointer_from_offset(i32 %54)
  %56 = call i1 @c_isTaintedPointerToTaintedMem(i8* %55)
  br i1 %56, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.subsumption
  %57 = bitcast i8* %55 to %Tstruct.Spl_json_object_t_t*
  %values21 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %57, i32 0, i32 2
  %values22 = bitcast i32* %values21 to %Tstruct.Spl_json_value_t_t***
  %58 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values22, align 4
  %59 = load i64, i64* %index.addr, align 8
  %60 = ptrtoint %Tstruct.Spl_json_value_t_t** %58 to i32
  %61 = call i8* @c_fetch_pointer_from_offset(i32 %60)
  %62 = call i1 @c_isTaintedPointerToTaintedMem(i8* %61)
  br i1 %62, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded20
  %63 = bitcast i8* %61 to %Tstruct.Spl_json_value_t_t**
  %64 = bitcast %Tstruct.Spl_json_value_t_t** %63 to i32*
  %arrayidx25 = getelementptr inbounds i32, i32* %64, i64 %59
  %65 = bitcast i32* %arrayidx25 to %Tstruct.Spl_json_value_t_t**
  %66 = bitcast %Tstruct.Spl_json_value_t_t** %65 to i8*
  %67 = call i64 @c_TPtoO(i8* %66)
  %68 = inttoptr i64 %67 to %Tstruct.Spl_json_value_t_t**
  %69 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %70 = ptrtoint %Tstruct.Spl_json_object_t_t* %69 to i32
  %71 = call i8* @c_fetch_pointer_from_offset(i32 %70)
  %72 = call i1 @c_isTaintedPointerToTaintedMem(i8* %71)
  br i1 %72, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded24
  %73 = bitcast i8* %71 to %Tstruct.Spl_json_object_t_t*
  %values28 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %73, i32 0, i32 2
  %values29 = bitcast i32* %values28 to %Tstruct.Spl_json_value_t_t***
  %74 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values29, align 4
  %75 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %76 = ptrtoint %Tstruct.Spl_json_object_t_t* %75 to i32
  %77 = call i8* @c_fetch_pointer_from_offset(i32 %76)
  %78 = call i1 @c_isTaintedPointerToTaintedMem(i8* %77)
  br i1 %78, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded27
  %79 = bitcast i8* %77 to %Tstruct.Spl_json_object_t_t*
  %values32 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %79, i32 0, i32 2
  %values33 = bitcast i32* %values32 to %Tstruct.Spl_json_value_t_t***
  %80 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values33, align 4
  %81 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %82 = ptrtoint %Tstruct.Spl_json_object_t_t* %81 to i32
  %83 = call i8* @c_fetch_pointer_from_offset(i32 %82)
  %84 = call i1 @c_isTaintedPointerToTaintedMem(i8* %83)
  br i1 %84, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %_Dynamic_check.succeeded31
  %85 = bitcast i8* %83 to %Tstruct.Spl_json_object_t_t*
  %capacity36 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %85, i32 0, i32 4
  %86 = load i32, i32* %capacity36, align 8
  %idx.ext37 = zext i32 %86 to i64
  %add.ptr38 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %80, i64 %idx.ext37
  %87 = bitcast %Tstruct.Spl_json_value_t_t** %80 to i32*
  %88 = getelementptr inbounds i32, i32* %87, i64 %idx.ext37
  %89 = bitcast i32* %88 to %Tstruct.Spl_json_value_t_t**
  %90 = bitcast %Tstruct.Spl_json_value_t_t** %89 to i8*
  %91 = call i64 @c_TPtoO(i8* %90)
  %92 = inttoptr i64 %91 to %Tstruct.Spl_json_value_t_t**
  %93 = bitcast %Tstruct.Spl_json_value_t_t** %74 to i8*
  %94 = call i64 @c_TPtoO(i8* %93)
  %95 = inttoptr i64 %94 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower39 = icmp ule %Tstruct.Spl_json_value_t_t** %95, %68
  %_Dynamic_check.upper40 = icmp ult %Tstruct.Spl_json_value_t_t** %68, %92
  %_Dynamic_check.range41 = and i1 %_Dynamic_check.lower39, %_Dynamic_check.upper40
  br i1 %_Dynamic_check.range41, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %_Dynamic_check.succeeded35
  %96 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %65, align 4
  %97 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %98 = ptrtoint %Tstruct.Spl_json_object_t_t* %97 to i32
  %99 = call i8* @c_fetch_pointer_from_offset(i32 %98)
  %100 = call i1 @c_isTaintedPointerToTaintedMem(i8* %99)
  br i1 %100, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %_Dynamic_check.succeeded43
  %101 = bitcast i8* %99 to %Tstruct.Spl_json_object_t_t*
  %values46 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %101, i32 0, i32 2
  %values47 = bitcast i32* %values46 to %Tstruct.Spl_json_value_t_t***
  %102 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values47, align 4
  %103 = load i64, i64* %index.addr, align 8
  %104 = ptrtoint %Tstruct.Spl_json_value_t_t** %102 to i32
  %105 = call i8* @c_fetch_pointer_from_offset(i32 %104)
  %106 = call i1 @c_isTaintedPointerToTaintedMem(i8* %105)
  br i1 %106, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %_Dynamic_check.succeeded45
  %107 = bitcast i8* %105 to %Tstruct.Spl_json_value_t_t**
  %108 = bitcast %Tstruct.Spl_json_value_t_t** %107 to i32*
  %arrayidx50 = getelementptr inbounds i32, i32* %108, i64 %103
  %109 = bitcast i32* %arrayidx50 to %Tstruct.Spl_json_value_t_t**
  %110 = bitcast %Tstruct.Spl_json_value_t_t** %109 to i8*
  %111 = call i64 @c_TPtoO(i8* %110)
  %112 = inttoptr i64 %111 to %Tstruct.Spl_json_value_t_t**
  %113 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %114 = ptrtoint %Tstruct.Spl_json_object_t_t* %113 to i32
  %115 = call i8* @c_fetch_pointer_from_offset(i32 %114)
  %116 = call i1 @c_isTaintedPointerToTaintedMem(i8* %115)
  br i1 %116, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %_Dynamic_check.succeeded49
  %117 = bitcast i8* %115 to %Tstruct.Spl_json_object_t_t*
  %values53 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %117, i32 0, i32 2
  %values54 = bitcast i32* %values53 to %Tstruct.Spl_json_value_t_t***
  %118 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values54, align 4
  %119 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %120 = ptrtoint %Tstruct.Spl_json_object_t_t* %119 to i32
  %121 = call i8* @c_fetch_pointer_from_offset(i32 %120)
  %122 = call i1 @c_isTaintedPointerToTaintedMem(i8* %121)
  br i1 %122, label %_Dynamic_check.succeeded56, label %_Dynamic_check.failed55

_Dynamic_check.succeeded56:                       ; preds = %_Dynamic_check.succeeded52
  %123 = bitcast i8* %121 to %Tstruct.Spl_json_object_t_t*
  %values57 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %123, i32 0, i32 2
  %values58 = bitcast i32* %values57 to %Tstruct.Spl_json_value_t_t***
  %124 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values58, align 4
  %125 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %126 = ptrtoint %Tstruct.Spl_json_object_t_t* %125 to i32
  %127 = call i8* @c_fetch_pointer_from_offset(i32 %126)
  %128 = call i1 @c_isTaintedPointerToTaintedMem(i8* %127)
  br i1 %128, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %_Dynamic_check.succeeded56
  %129 = bitcast i8* %127 to %Tstruct.Spl_json_object_t_t*
  %capacity61 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %129, i32 0, i32 4
  %130 = load i32, i32* %capacity61, align 8
  %idx.ext62 = zext i32 %130 to i64
  %add.ptr63 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %124, i64 %idx.ext62
  %131 = bitcast %Tstruct.Spl_json_value_t_t** %124 to i32*
  %132 = getelementptr inbounds i32, i32* %131, i64 %idx.ext62
  %133 = bitcast i32* %132 to %Tstruct.Spl_json_value_t_t**
  %134 = bitcast %Tstruct.Spl_json_value_t_t** %133 to i8*
  %135 = call i64 @c_TPtoO(i8* %134)
  %136 = inttoptr i64 %135 to %Tstruct.Spl_json_value_t_t**
  %137 = bitcast %Tstruct.Spl_json_value_t_t** %118 to i8*
  %138 = call i64 @c_TPtoO(i8* %137)
  %139 = inttoptr i64 %138 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower64 = icmp ule %Tstruct.Spl_json_value_t_t** %139, %112
  %_Dynamic_check.upper65 = icmp ult %Tstruct.Spl_json_value_t_t** %112, %136
  %_Dynamic_check.range66 = and i1 %_Dynamic_check.lower64, %_Dynamic_check.upper65
  br i1 %_Dynamic_check.range66, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded60
  %140 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %109, align 4
  %add.ptr69 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %140, i64 1
  %141 = bitcast %Tstruct.Spl_json_value_t_t* %52 to %Tstruct.json_value_t_t*
  %142 = bitcast %Tstruct.json_value_t_t* %141 to %Tstruct.Spl_json_value_t_t*
  %143 = bitcast %Tstruct.Spl_json_value_t_t* %52 to %Tstruct.json_value_t_t*
  %144 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %145 = ptrtoint %Tstruct.Spl_json_object_t_t* %144 to i32
  %146 = call i8* @c_fetch_pointer_from_offset(i32 %145)
  %147 = call i1 @c_isTaintedPointerToTaintedMem(i8* %146)
  br i1 %147, label %_Dynamic_check.succeeded71, label %_Dynamic_check.failed70

_Dynamic_check.succeeded71:                       ; preds = %_Dynamic_check.succeeded68
  %148 = bitcast i8* %146 to %Tstruct.Spl_json_object_t_t*
  %capacity72 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %148, i32 0, i32 4
  %149 = load i32, i32* %capacity72, align 8
  %idx.ext73 = zext i32 %149 to i64
  %add.ptr74 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %143, i64 %idx.ext73
  %150 = bitcast %Tstruct.json_value_t_t* %add.ptr74 to %Tstruct.Spl_json_value_t_t*
  %151 = bitcast %Tstruct.Spl_json_value_t_t* %96 to i8*
  %152 = call i64 @c_TPtoO(i8* %151)
  %153 = inttoptr i64 %152 to %Tstruct.Spl_json_value_t_t*
  %154 = bitcast %Tstruct.Spl_json_value_t_t* %142 to i8*
  %155 = call i64 @c_TPtoO(i8* %154)
  %156 = inttoptr i64 %155 to %Tstruct.Spl_json_value_t_t*
  %_Dynamic_check.lower75 = icmp ule %Tstruct.Spl_json_value_t_t* %153, %156
  %157 = bitcast %Tstruct.Spl_json_value_t_t* %150 to i8*
  %158 = call i64 @c_TPtoO(i8* %157)
  %159 = inttoptr i64 %158 to %Tstruct.Spl_json_value_t_t*
  %160 = bitcast %Tstruct.Spl_json_value_t_t* %add.ptr69 to i8*
  %161 = call i64 @c_TPtoO(i8* %160)
  %162 = inttoptr i64 %161 to %Tstruct.Spl_json_value_t_t*
  %_Dynamic_check.upper76 = icmp ule %Tstruct.Spl_json_value_t_t* %159, %162
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower75, %_Dynamic_check.upper76
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed77

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded71, %_Dynamic_check.succeeded18
  store %Tstruct.Spl_json_value_t_t* %52, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed2:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed34:                          ; preds = %_Dynamic_check.succeeded31
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed42:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed44:                          ; preds = %_Dynamic_check.succeeded43
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed48:                          ; preds = %_Dynamic_check.succeeded45
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed51:                          ; preds = %_Dynamic_check.succeeded49
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed55:                          ; preds = %_Dynamic_check.succeeded52
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed59:                          ; preds = %_Dynamic_check.succeeded56
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded60
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed70:                          ; preds = %_Dynamic_check.succeeded68
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed77:                          ; preds = %_Dynamic_check.succeeded71
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.success, %if.then
  %163 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_object_get_wrapping_value(%Tstruct.json_object_t_t* %object) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %g1 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_object_t_t*
  %wrapping_value = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %5, i32 0, i32 0
  %wrapping_value1 = bitcast i32* %wrapping_value to %Tstruct.Spl_json_value_t_t**
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value1, align 4
  store %Tstruct.Spl_json_value_t_t* %6, %Tstruct.Spl_json_value_t_t** %g1, align 4
  %7 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %8 = ptrtoint %Tstruct.Spl_json_object_t_t* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %11 = bitcast i8* %9 to %Tstruct.Spl_json_object_t_t*
  %wrapping_value4 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %11, i32 0, i32 0
  %wrapping_value5 = bitcast i32* %wrapping_value4 to %Tstruct.Spl_json_value_t_t**
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value5, align 4
  ret %Tstruct.Spl_json_value_t_t* %12

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_has_value(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.json_value_t_t*
  %14 = bitcast %Tstruct.json_value_t_t* %13 to %Tstruct.Spl_json_value_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %cmp = icmp ne i32 %15, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %object, i8* %name, i32 %type) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %type.addr = alloca i32, align 4
  %val = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.json_value_t_t*
  %14 = bitcast %Tstruct.json_value_t_t* %13 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %14, %Tstruct.Spl_json_value_t_t** %val, align 4
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %cmp = icmp ne i32 %16, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %_Dynamic_check.succeeded2
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %land.rhs
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  %22 = load i32, i32* %type.addr, align 4
  %cmp6 = icmp eq i32 %call5, %22
  br label %land.end

land.end:                                         ; preds = %_Dynamic_check.succeeded4, %_Dynamic_check.succeeded2
  %23 = phi i1 [ false, %_Dynamic_check.succeeded2 ], [ %cmp6, %_Dynamic_check.succeeded4 ]
  %land.ext = zext i1 %23 to i32
  ret i32 %land.ext

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %land.rhs
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dothas_value(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.json_value_t_t*
  %14 = bitcast %Tstruct.json_value_t_t* %13 to %Tstruct.Spl_json_value_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %cmp = icmp ne i32 %15, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %object, i8* %name, i32 %type) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %type.addr = alloca i32, align 4
  %val = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %type, i32* %type.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %6, i8* %8)
  %10 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %11 = bitcast %Tstruct.json_value_t_t* %10 to i8*
  %12 = call i64 @c_TPtoO(i8* %11)
  %13 = inttoptr i64 %12 to %Tstruct.json_value_t_t*
  %14 = bitcast %Tstruct.json_value_t_t* %13 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %14, %Tstruct.Spl_json_value_t_t** %val, align 4
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %cmp = icmp ne i32 %16, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %_Dynamic_check.succeeded2
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %land.rhs
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  %22 = load i32, i32* %type.addr, align 4
  %cmp6 = icmp eq i32 %call5, %22
  br label %land.end

land.end:                                         ; preds = %_Dynamic_check.succeeded4, %_Dynamic_check.succeeded2
  %23 = phi i1 [ false, %_Dynamic_check.succeeded2 ], [ %cmp6, %_Dynamic_check.succeeded4 ]
  %land.ext = zext i1 %23 to i32
  ret i32 %land.ext

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %land.rhs
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_array_get_value(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %index, i64* %index.addr, align 8
  %1 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_array_t_t* %1 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %index.addr, align 8
  %4 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %5 = ptrtoint %Tstruct.Spl_json_array_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_array_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %8)
  %cmp1 = icmp uge i64 %3, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %9 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %10 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %if.end
  %13 = bitcast i8* %11 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %13, i32 0, i32 1
  %items4 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %14 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items4, align 4
  %15 = load i64, i64* %index.addr, align 8
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t** %14 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %19 = bitcast i8* %17 to %Tstruct.Spl_json_value_t_t**
  %20 = bitcast %Tstruct.Spl_json_value_t_t** %19 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %20, i64 %15
  %21 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %22 = bitcast %Tstruct.Spl_json_value_t_t** %21 to i8*
  %23 = call i64 @c_TPtoO(i8* %22)
  %24 = inttoptr i64 %23 to %Tstruct.Spl_json_value_t_t**
  %25 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %26 = ptrtoint %Tstruct.Spl_json_array_t_t* %25 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %29 = bitcast i8* %27 to %Tstruct.Spl_json_array_t_t*
  %items9 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %29, i32 0, i32 1
  %items10 = bitcast i32* %items9 to %Tstruct.Spl_json_value_t_t***
  %30 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items10, align 4
  %31 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %32 = ptrtoint %Tstruct.Spl_json_array_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded8
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_array_t_t*
  %items13 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %35, i32 0, i32 1
  %items14 = bitcast i32* %items13 to %Tstruct.Spl_json_value_t_t***
  %36 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items14, align 4
  %37 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %38 = ptrtoint %Tstruct.Spl_json_array_t_t* %37 to i32
  %39 = call i8* @c_fetch_pointer_from_offset(i32 %38)
  %40 = call i1 @c_isTaintedPointerToTaintedMem(i8* %39)
  br i1 %40, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %41 = bitcast i8* %39 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %41, i32 0, i32 3
  %42 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %42 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %36, i64 %idx.ext
  %43 = bitcast %Tstruct.Spl_json_value_t_t** %36 to i32*
  %44 = getelementptr inbounds i32, i32* %43, i64 %idx.ext
  %45 = bitcast i32* %44 to %Tstruct.Spl_json_value_t_t**
  %46 = bitcast %Tstruct.Spl_json_value_t_t** %45 to i8*
  %47 = call i64 @c_TPtoO(i8* %46)
  %48 = inttoptr i64 %47 to %Tstruct.Spl_json_value_t_t**
  %49 = bitcast %Tstruct.Spl_json_value_t_t** %30 to i8*
  %50 = call i64 @c_TPtoO(i8* %49)
  %51 = inttoptr i64 %50 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %51, %24
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %24, %48
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  %52 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %21, align 4
  store %Tstruct.Spl_json_value_t_t* %52, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed2:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded18, %if.then
  %53 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_array_get_string(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %index, i64* %index.addr, align 8
  %1 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %2 = load i64, i64* %index.addr, align 8
  %3 = ptrtoint %Tstruct.Spl_json_array_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_array_t_t*
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %6, i64 %2)
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = call i64 @c_TPtoO(i8* %8)
  %10 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %14)
  ret i8* %call3

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_array_get_number(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %index, i64* %index.addr, align 8
  %1 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %2 = load i64, i64* %index.addr, align 8
  %3 = ptrtoint %Tstruct.Spl_json_array_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_array_t_t*
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %6, i64 %2)
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = call i64 @c_TPtoO(i8* %8)
  %10 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_t_t*
  %call3 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %14)
  ret double %call3

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_object_t_t* @json_array_get_object(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %index, i64* %index.addr, align 8
  %1 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %2 = load i64, i64* %index.addr, align 8
  %3 = ptrtoint %Tstruct.Spl_json_array_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_array_t_t*
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %6, i64 %2)
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = call i64 @c_TPtoO(i8* %8)
  %10 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_t_t*
  %call3 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %14)
  %15 = bitcast %Tstruct.Spl_json_object_t_t* %call3 to %Tstruct.json_object_t_t*
  %16 = bitcast %Tstruct.json_object_t_t* %15 to i8*
  %17 = call i64 @c_TPtoO(i8* %16)
  %18 = inttoptr i64 %17 to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %18

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_array_t_t* @json_array_get_array(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %index, i64* %index.addr, align 8
  %1 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %2 = load i64, i64* %index.addr, align 8
  %3 = ptrtoint %Tstruct.Spl_json_array_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_array_t_t*
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %6, i64 %2)
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = call i64 @c_TPtoO(i8* %8)
  %10 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_t_t*
  %call3 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %14)
  %15 = bitcast %Tstruct.Spl_json_array_t_t* %call3 to %Tstruct.json_array_t_t*
  %16 = bitcast %Tstruct.json_array_t_t* %15 to i8*
  %17 = call i64 @c_TPtoO(i8* %16)
  %18 = inttoptr i64 %17 to %Tstruct.Spl_json_array_t_t*
  ret %Tstruct.Spl_json_array_t_t* %18

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_get_boolean(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %index, i64* %index.addr, align 8
  %1 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %2 = load i64, i64* %index.addr, align 8
  %3 = ptrtoint %Tstruct.Spl_json_array_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_array_t_t*
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %6, i64 %2)
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = call i64 @c_TPtoO(i8* %8)
  %10 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %14)
  ret i32 %call3

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_array_get_count(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %1 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %tobool = icmp ne %Tstruct.Spl_json_array_t_t* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_array_t_t* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %6, i32 0, i32 2
  %7 = load i32, i32* %count, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi i32 [ %7, %_Dynamic_check.succeeded ], [ 0, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_array_get_wrapping_value(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %1 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_array_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_array_t_t*
  %wrapping_value = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %5, i32 0, i32 0
  %wrapping_value1 = bitcast i32* %wrapping_value to %Tstruct.Spl_json_value_t_t**
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value1, align 4
  ret %Tstruct.Spl_json_value_t_t* %6

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_get_type(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %tobool = icmp ne %Tstruct.Spl_json_value_t_t* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_value_t_t* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %6, i32 0, i32 1
  %7 = load i32, i32* %type, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi i32 [ %7, %_Dynamic_check.succeeded ], [ -1, %cond.false ]
  ret i32 %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %cond.true
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %10, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_value_t_t*
  %object = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %14, i32 0, i32 2
  %object7 = bitcast i32* %object to %Tstruct.Spl_json_object_t_t**
  %15 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object7, align 4
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded6
  %cond = phi %Tstruct.Spl_json_object_t_t* [ %15, %_Dynamic_check.succeeded6 ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_object_t_t* %cond

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_array_t_t* @json_value_get_array(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %cond.true
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %10, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_value_t_t*
  %array = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %14, i32 0, i32 3
  %array7 = bitcast i32* %array to %Tstruct.Spl_json_array_t_t**
  %15 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array7, align 4
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded6
  %cond = phi %Tstruct.Spl_json_array_t_t* [ %15, %_Dynamic_check.succeeded6 ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_array_t_t* %cond

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_value_get_string(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %cond.true
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %10, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_value_t_t*
  %string = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %14, i32 0, i32 0
  %string7 = bitcast i32* %string to i8**
  %15 = load i8*, i8** %string7, align 8
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded6
  %cond = phi i8* [ %15, %_Dynamic_check.succeeded6 ], [ null, %cond.false ]
  ret i8* %cond

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_value_get_number(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %cond.true
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %10, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_value_t_t*
  %number = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %14, i32 0, i32 1
  %15 = load i32, i32* %number, align 4
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded6
  %cond = phi i32 [ %15, %_Dynamic_check.succeeded6 ], [ 0, %cond.false ]
  %conv = sitofp i32 %cond to double
  ret double %conv

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_get_boolean(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  %cmp = icmp eq i32 %call, 6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %cond.true
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %10, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_value_t_t*
  %boolean = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %14, i32 0, i32 4
  %15 = load i32, i32* %boolean, align 8
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded6
  %cond = phi i32 [ %15, %_Dynamic_check.succeeded6 ], [ -1, %cond.false ]
  ret i32 %cond

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %tobool = icmp ne %Tstruct.Spl_json_value_t_t* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_value_t_t* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %6, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi %Tstruct.Spl_json_value_t_t* [ %7, %_Dynamic_check.succeeded ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_value_t_t* %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_value_free(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  switch i32 %call, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb10
    i32 5, label %sw.bb40
  ]

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %sw.bb
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %10, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_value_t_t*
  %object = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %14, i32 0, i32 2
  %object7 = bitcast i32* %object to %Tstruct.Spl_json_object_t_t**
  %15 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object7, align 4
  %16 = ptrtoint %Tstruct.Spl_json_object_t_t* %15 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded6
  %19 = bitcast i8* %17 to %Tstruct.Spl_json_object_t_t*
  call void @json_object_free(%Tstruct.Spl_json_object_t_t* %19)
  br label %sw.epilog

_Dynamic_check.failed1:                           ; preds = %sw.bb
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

sw.bb10:                                          ; preds = %_Dynamic_check.succeeded
  %20 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %20 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %sw.bb10
  %24 = bitcast i8* %22 to %Tstruct.Spl_json_value_t_t*
  %value13 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %24, i32 0, i32 2
  %value14 = bitcast %Tstruct.Spl_json_value_value_t_t* %value13 to %Tstruct.Spl_json_value_value_t_t*
  %25 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value14 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_value_value_t_t*
  %string = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %28, i32 0, i32 0
  %string17 = bitcast i32* %string to i8**
  %29 = load i8*, i8** %string17, align 8
  %30 = bitcast i8* %29 to i8**
  %_Dynamic_check.is_null = icmp eq i8** %30, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded16
  %31 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %32 = ptrtoint %Tstruct.Spl_json_value_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.subsumption
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_value_t_t*
  %value20 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %35, i32 0, i32 2
  %value21 = bitcast %Tstruct.Spl_json_value_value_t_t* %value20 to %Tstruct.Spl_json_value_value_t_t*
  %36 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value21 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded19
  %39 = bitcast i8* %37 to %Tstruct.Spl_json_value_value_t_t*
  %string24 = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %39, i32 0, i32 0
  %string25 = bitcast i32* %string24 to i8**
  %40 = load i8*, i8** %string25, align 8
  %41 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %42 = ptrtoint %Tstruct.Spl_json_value_t_t* %41 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded23
  %45 = bitcast i8* %43 to %Tstruct.Spl_json_value_t_t*
  %value28 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %45, i32 0, i32 2
  %value29 = bitcast %Tstruct.Spl_json_value_value_t_t* %value28 to %Tstruct.Spl_json_value_value_t_t*
  %46 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value29 to i32
  %47 = call i8* @c_fetch_pointer_from_offset(i32 %46)
  %48 = call i1 @c_isTaintedPointerToTaintedMem(i8* %47)
  br i1 %48, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded27
  %49 = bitcast i8* %47 to %Tstruct.Spl_json_value_value_t_t*
  %string32 = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %49, i32 0, i32 0
  %string33 = bitcast i32* %string32 to i8**
  %50 = load i8*, i8** %string33, align 8
  %add.ptr = getelementptr inbounds i8, i8* %50, i64 0
  %_Dynamic_check.non_null = icmp ne i8* %29, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %_Dynamic_check.succeeded31
  %add.ptr36 = getelementptr inbounds i8, i8* %29, i64 0
  %51 = call i64 @c_TPtoO(i8* %40)
  %52 = inttoptr i64 %51 to i8*
  %53 = call i64 @c_TPtoO(i8* %29)
  %54 = inttoptr i64 %53 to i8*
  %_Dynamic_check.lower = icmp ule i8* %52, %54
  %55 = call i64 @c_TPtoO(i8* %add.ptr36)
  %56 = inttoptr i64 %55 to i8*
  %57 = call i64 @c_TPtoO(i8* %add.ptr)
  %58 = inttoptr i64 %57 to i8*
  %_Dynamic_check.upper = icmp ule i8* %56, %58
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed37

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded35, %_Dynamic_check.succeeded16
  %59 = ptrtoint i8** %30 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %_Dynamic_check.success
  %62 = bitcast i8* %60 to i8**
  %63 = bitcast i8** %62 to i8*
  call void @t_free(i8* %63)
  br label %sw.epilog

_Dynamic_check.failed11:                          ; preds = %sw.bb10
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded19
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed34:                          ; preds = %_Dynamic_check.succeeded31
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed37:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed38:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

sw.bb40:                                          ; preds = %_Dynamic_check.succeeded
  %64 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %65 = ptrtoint %Tstruct.Spl_json_value_t_t* %64 to i32
  %66 = call i8* @c_fetch_pointer_from_offset(i32 %65)
  %67 = call i1 @c_isTaintedPointerToTaintedMem(i8* %66)
  br i1 %67, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %sw.bb40
  %68 = bitcast i8* %66 to %Tstruct.Spl_json_value_t_t*
  %value43 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %68, i32 0, i32 2
  %value44 = bitcast %Tstruct.Spl_json_value_value_t_t* %value43 to %Tstruct.Spl_json_value_value_t_t*
  %69 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value44 to i32
  %70 = call i8* @c_fetch_pointer_from_offset(i32 %69)
  %71 = call i1 @c_isTaintedPointerToTaintedMem(i8* %70)
  br i1 %71, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded42
  %72 = bitcast i8* %70 to %Tstruct.Spl_json_value_value_t_t*
  %array = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %72, i32 0, i32 3
  %array47 = bitcast i32* %array to %Tstruct.Spl_json_array_t_t**
  %73 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array47, align 4
  %74 = ptrtoint %Tstruct.Spl_json_array_t_t* %73 to i32
  %75 = call i8* @c_fetch_pointer_from_offset(i32 %74)
  %76 = call i1 @c_isTaintedPointerToTaintedMem(i8* %75)
  br i1 %76, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %_Dynamic_check.succeeded46
  %77 = bitcast i8* %75 to %Tstruct.Spl_json_array_t_t*
  call void bitcast (void (%Tstruct.Spl_json_array_t_t*)* @json_array_free to void (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %77)
  br label %sw.epilog

_Dynamic_check.failed41:                          ; preds = %sw.bb40
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed45:                          ; preds = %_Dynamic_check.succeeded42
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed48:                          ; preds = %_Dynamic_check.succeeded46
  call void @llvm.trap() #8
  unreachable

sw.default:                                       ; preds = %_Dynamic_check.succeeded
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %_Dynamic_check.succeeded49, %_Dynamic_check.succeeded39, %_Dynamic_check.succeeded9
  %78 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %_Dynamic_check.is_null50 = icmp eq %Tstruct.Spl_json_value_t_t* %78, null
  br i1 %_Dynamic_check.is_null50, label %_Dynamic_check.success61, label %_Dynamic_check.subsumption51

_Dynamic_check.subsumption51:                     ; preds = %sw.epilog
  %79 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %80 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %add.ptr52 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %80, i64 1
  %81 = bitcast %Tstruct.Spl_json_value_t_t* %78 to i8*
  %82 = bitcast i8* %81 to %Tstruct.Spl_json_value_t_t*
  %83 = bitcast %Tstruct.Spl_json_value_t_t* %78 to i8*
  %_Dynamic_check.non_null53 = icmp ne i8* %83, null
  br i1 %_Dynamic_check.non_null53, label %_Dynamic_check.succeeded55, label %_Dynamic_check.failed54

_Dynamic_check.succeeded55:                       ; preds = %_Dynamic_check.subsumption51
  %add.ptr56 = getelementptr inbounds i8, i8* %83, i64 0
  %84 = bitcast i8* %add.ptr56 to %Tstruct.Spl_json_value_t_t*
  %85 = bitcast %Tstruct.Spl_json_value_t_t* %79 to i8*
  %86 = call i64 @c_TPtoO(i8* %85)
  %87 = inttoptr i64 %86 to %Tstruct.Spl_json_value_t_t*
  %88 = bitcast %Tstruct.Spl_json_value_t_t* %82 to i8*
  %89 = call i64 @c_TPtoO(i8* %88)
  %90 = inttoptr i64 %89 to %Tstruct.Spl_json_value_t_t*
  %_Dynamic_check.lower57 = icmp ule %Tstruct.Spl_json_value_t_t* %87, %90
  %91 = bitcast %Tstruct.Spl_json_value_t_t* %84 to i8*
  %92 = call i64 @c_TPtoO(i8* %91)
  %93 = inttoptr i64 %92 to %Tstruct.Spl_json_value_t_t*
  %94 = bitcast %Tstruct.Spl_json_value_t_t* %add.ptr52 to i8*
  %95 = call i64 @c_TPtoO(i8* %94)
  %96 = inttoptr i64 %95 to %Tstruct.Spl_json_value_t_t*
  %_Dynamic_check.upper58 = icmp ule %Tstruct.Spl_json_value_t_t* %93, %96
  %_Dynamic_check.cast59 = and i1 %_Dynamic_check.lower57, %_Dynamic_check.upper58
  br i1 %_Dynamic_check.cast59, label %_Dynamic_check.success61, label %_Dynamic_check.failed60

_Dynamic_check.success61:                         ; preds = %_Dynamic_check.succeeded55, %sw.epilog
  %97 = ptrtoint %Tstruct.Spl_json_value_t_t* %78 to i32
  %98 = call i8* @c_fetch_pointer_from_offset(i32 %97)
  %99 = call i1 @c_isTaintedPointerToTaintedMem(i8* %98)
  br i1 %99, label %_Dynamic_check.succeeded63, label %_Dynamic_check.failed62

_Dynamic_check.succeeded63:                       ; preds = %_Dynamic_check.success61
  %100 = bitcast i8* %98 to %Tstruct.Spl_json_value_t_t*
  %101 = bitcast %Tstruct.Spl_json_value_t_t* %100 to i8*
  call void @t_free(i8* %101)
  ret void

_Dynamic_check.failed54:                          ; preds = %_Dynamic_check.subsumption51
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded55
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed62:                          ; preds = %_Dynamic_check.success61
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_object_t_t* @json_object_init(%Tstruct.json_value_t_t* %wrapping_value_ip) #0 {
entry:
  %wrapping_value_ip.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %wrapping_value_ip to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %wrapping_value_ip.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value_ip.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = ptrtoint i8* %call to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call1 = call i32 @w2c_json_object_init(i8* %4, i32 %2)
  %conv = zext i32 %call1 to i64
  %5 = inttoptr i64 %conv to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %5
}

declare dso_local i32 @w2c_json_object_init(i8*, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_object() #0 {
entry:
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = ptrtoint i8* %call to i64
  %1 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %0)
  %call1 = call i32 @w2c_json_value_init_object(i8* %1)
  %conv = zext i32 %call1 to i64
  %2 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %2
}

declare dso_local i32 @w2c_json_value_init_object(i8*) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_array() #0 {
entry:
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = ptrtoint i8* %call to i64
  %1 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %0)
  %call1 = call i32 @w2c_json_value_init_array(i8* %1)
  %conv = zext i32 %call1 to i64
  %2 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %2
}

declare dso_local i32 @w2c_json_value_init_array(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_string(i8* %string) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %copy = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %string_len = alloca i64, align 8
  %str_with_len = alloca i8*, align 4
  store i8* %string, i8** %string.addr, align 4
  store i8* null, i8** %copy, align 4
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %value, align 4
  store i64 0, i64* %string_len, align 8
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %call = call i64 @t_strlen(i8* %4)
  store i64 %call, i64* %string_len, align 8
  store i8* null, i8** %str_with_len, align 4
  %6 = load i8*, i8** %string.addr, align 4
  store i8* %6, i8** %str_with_len, align 4
  %7 = load i8*, i8** %str_with_len, align 4
  %8 = load i64, i64* %string_len, align 8
  %9 = ptrtoint i8* %7 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call3 = call i32 @is_valid_utf8(i8* %10, i64 %8)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end5, label %if.then4

if.then4:                                         ; preds = %_Dynamic_check.succeeded2
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

if.end5:                                          ; preds = %_Dynamic_check.succeeded2
  %12 = load i8*, i8** %str_with_len, align 4
  %13 = load i64, i64* %string_len, align 8
  %14 = ptrtoint i8* %12 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.end5
  %call8 = call i8* @tainted_parson_strndup(i8* %15, i64 %13)
  store i8* %call8, i8** %copy, align 4
  %17 = load i8*, i8** %copy, align 4
  %18 = ptrtoint i8* %17 to i32
  %cmp9 = icmp eq i32 %18, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %_Dynamic_check.succeeded7
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed6:                           ; preds = %if.end5
  call void @llvm.trap() #8
  unreachable

if.end11:                                         ; preds = %_Dynamic_check.succeeded7
  %19 = load i8*, i8** %copy, align 4
  %20 = ptrtoint i8* %19 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %if.end11
  %call14 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*)* @json_value_init_string_no_copy to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %21)
  %23 = bitcast %Tstruct.Spl_json_value_t_t* %call14 to %Tstruct.json_value_t_t*
  %24 = bitcast %Tstruct.json_value_t_t* %23 to i8*
  %25 = call i64 @c_TPtoO(i8* %24)
  %26 = inttoptr i64 %25 to %Tstruct.json_value_t_t*
  %27 = bitcast %Tstruct.json_value_t_t* %26 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %27, %Tstruct.Spl_json_value_t_t** %value, align 4
  %28 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %29 = ptrtoint %Tstruct.Spl_json_value_t_t* %28 to i32
  %cmp15 = icmp eq i32 %29, 0
  br i1 %cmp15, label %if.then16, label %if.end23

if.then16:                                        ; preds = %_Dynamic_check.succeeded13
  %30 = load i8*, i8** %copy, align 4
  %_Dynamic_check.is_null = icmp eq i8* %30, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then16
  %31 = load i8*, i8** %copy, align 4
  %32 = load i8*, i8** %copy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 0
  %_Dynamic_check.non_null = icmp ne i8* %30, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr19 = getelementptr inbounds i8, i8* %30, i64 0
  %33 = call i64 @c_TPtoO(i8* %31)
  %34 = inttoptr i64 %33 to i8*
  %35 = call i64 @c_TPtoO(i8* %30)
  %36 = inttoptr i64 %35 to i8*
  %_Dynamic_check.lower = icmp ule i8* %34, %36
  %37 = call i64 @c_TPtoO(i8* %add.ptr19)
  %38 = inttoptr i64 %37 to i8*
  %39 = call i64 @c_TPtoO(i8* %add.ptr)
  %40 = inttoptr i64 %39 to i8*
  %_Dynamic_check.upper = icmp ule i8* %38, %40
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed20

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded18, %if.then16
  %41 = ptrtoint i8* %30 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.success
  call void @t_free(i8* %42)
  br label %if.end23

_Dynamic_check.failed12:                          ; preds = %if.end11
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

if.end23:                                         ; preds = %_Dynamic_check.succeeded22, %_Dynamic_check.succeeded13
  %44 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  store %Tstruct.Spl_json_value_t_t* %44, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then10, %if.then4, %if.then
  %45 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_utf8(i8* %string, i64 %string_len) #2 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 4
  %string_len.addr = alloca i64, align 8
  %len = alloca i32*, align 4
  %temp = alloca i32*, align 4
  %string_end = alloca i8*, align 4
  store i8* %string, i8** %string.addr, align 4
  store i64 %string_len, i64* %string_len.addr, align 8
  %call = call i8* @t_malloc(i64 4)
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %len, align 4
  %1 = load i32*, i32** %len, align 4
  %2 = ptrtoint i32* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to i32*
  store i32 0, i32* %5, align 4
  %call1 = call i8* @t_malloc(i64 4)
  %6 = bitcast i8* %call1 to i32*
  store i32* %6, i32** %temp, align 4
  %7 = load i8*, i8** %string.addr, align 4
  %8 = load i64, i64* %string_len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8
  %_Dynamic_check.is_null = icmp eq i8* %add.ptr, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded
  %9 = load i8*, i8** %string.addr, align 4
  %10 = load i8*, i8** %string.addr, align 4
  %11 = load i64, i64* %string_len.addr, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %10, i64 %11
  %add.ptr3 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %12 = call i64 @c_TPtoO(i8* %9)
  %13 = inttoptr i64 %12 to i8*
  %14 = call i64 @c_TPtoO(i8* %add.ptr)
  %15 = inttoptr i64 %14 to i8*
  %_Dynamic_check.lower = icmp ule i8* %13, %15
  %16 = call i64 @c_TPtoO(i8* %add.ptr3)
  %17 = inttoptr i64 %16 to i8*
  %18 = call i64 @c_TPtoO(i8* %add.ptr2)
  %19 = inttoptr i64 %18 to i8*
  %_Dynamic_check.upper = icmp ule i8* %17, %19
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed4

_Dynamic_check.success:                           ; preds = %_Dynamic_check.subsumption, %_Dynamic_check.succeeded
  store i8* %add.ptr, i8** %string_end, align 4
  br label %while.cond

while.cond:                                       ; preds = %_Dynamic_check.succeeded20, %_Dynamic_check.success
  %20 = load i8*, i8** %string.addr, align 4
  %21 = load i8*, i8** %string_end, align 4
  %22 = ptrtoint i8* %20 to i32
  %23 = ptrtoint i8* %21 to i32
  %cmp = icmp ult i32 %22, %23
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load i8*, i8** %string.addr, align 4
  %_Dynamic_check.is_null5 = icmp eq i8* %24, null
  br i1 %_Dynamic_check.is_null5, label %_Dynamic_check.success13, label %_Dynamic_check.subsumption6

_Dynamic_check.subsumption6:                      ; preds = %while.body
  %25 = load i8*, i8** %string.addr, align 4
  %26 = load i8*, i8** %string.addr, align 4
  %27 = load i64, i64* %string_len.addr, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %26, i64 %27
  %add.ptr8 = getelementptr inbounds i8, i8* %24, i64 0
  %28 = call i64 @c_TPtoO(i8* %25)
  %29 = inttoptr i64 %28 to i8*
  %30 = call i64 @c_TPtoO(i8* %24)
  %31 = inttoptr i64 %30 to i8*
  %_Dynamic_check.lower9 = icmp ule i8* %29, %31
  %32 = call i64 @c_TPtoO(i8* %add.ptr8)
  %33 = inttoptr i64 %32 to i8*
  %34 = call i64 @c_TPtoO(i8* %add.ptr7)
  %35 = inttoptr i64 %34 to i8*
  %_Dynamic_check.upper10 = icmp ule i8* %33, %35
  %_Dynamic_check.cast11 = and i1 %_Dynamic_check.lower9, %_Dynamic_check.upper10
  br i1 %_Dynamic_check.cast11, label %_Dynamic_check.success13, label %_Dynamic_check.failed12

_Dynamic_check.success13:                         ; preds = %_Dynamic_check.subsumption6, %while.body
  %36 = load i32*, i32** %len, align 4
  %37 = ptrtoint i8* %24 to i32
  %38 = call i8* @c_fetch_pointer_from_offset(i32 %37)
  %39 = call i1 @c_isTaintedPointerToTaintedMem(i8* %38)
  br i1 %39, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.success13
  %40 = ptrtoint i32* %36 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.succeeded15
  %43 = bitcast i8* %41 to i32*
  %call18 = call i32 @verify_utf8_sequence(i8* %38, i32* %43)
  %tobool = icmp ne i32 %call18, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %_Dynamic_check.succeeded17
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.subsumption6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.success13
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded17
  %44 = load i32*, i32** %len, align 4
  %45 = ptrtoint i32* %44 to i32
  %46 = call i8* @c_fetch_pointer_from_offset(i32 %45)
  %47 = call i1 @c_isTaintedPointerToTaintedMem(i8* %46)
  br i1 %47, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %if.end
  %48 = bitcast i8* %46 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %string.addr, align 4
  %idx.ext = sext i32 %49 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %50, i64 %idx.ext
  store i8* %add.ptr21, i8** %string.addr, align 4
  br label %while.cond, !llvm.loop !8

_Dynamic_check.failed19:                          ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %51 = load i32, i32* %retval, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %number) #0 {
entry:
  %number.addr = alloca double, align 8
  store double %number, double* %number.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load double, double* %number.addr, align 8
  %1 = ptrtoint i8* %call to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %call1 = call i32 @w2c_json_value_init_number(i8* %2, double %0)
  %conv = zext i32 %call1 to i64
  %3 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %3
}

declare dso_local i32 @w2c_json_value_init_number(i8*, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %boolean) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %boolean.addr = alloca i32, align 4
  %new_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %call = call i8* @t_malloc(i64 56)
  %0 = bitcast i8* %call to %Tstruct.json_value_t_t*
  %1 = bitcast %Tstruct.json_value_t_t* %0 to i8*
  %2 = call i64 @c_TPtoO(i8* %1)
  %3 = inttoptr i64 %2 to %Tstruct.json_value_t_t*
  %4 = bitcast %Tstruct.json_value_t_t* %3 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %4, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %5 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %tobool = icmp ne %Tstruct.Spl_json_value_t_t* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %10, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %parent1, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %15, i32 0, i32 1
  store i32 6, i32* %type, align 4
  %16 = load i32, i32* %boolean.addr, align 4
  %tobool4 = icmp ne i32 %16, 0
  %17 = zext i1 %tobool4 to i64
  %cond = select i1 %tobool4, i32 1, i32 0
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  %value = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %22, i32 0, i32 2
  %value7 = bitcast %Tstruct.Spl_json_value_value_t_t* %value to %Tstruct.Spl_json_value_value_t_t*
  %23 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value7 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded6
  %26 = bitcast i8* %24 to %Tstruct.Spl_json_value_value_t_t*
  %boolean10 = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %26, i32 0, i32 4
  store i32 %cond, i32* %boolean10, align 8
  %27 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_value_t_t* %27, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded9, %if.then
  %28 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %28
}

declare dso_local i8* @t_malloc(i64) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_null() #0 {
entry:
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = ptrtoint i8* %call to i64
  %1 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %0)
  %call1 = call i32 @w2c_json_value_init_null(i8* %1)
  %conv = zext i32 %call1 to i64
  %2 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %2
}

declare dso_local i32 @w2c_json_value_init_null(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %i = alloca i64, align 8
  %return_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_value_copy = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_string = alloca i8*, align 4
  %temp_key = alloca i8*, align 4
  %temp_string_copy = alloca i8*, align 4
  %temp_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %temp_array_copy = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %temp_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %temp_object_copy = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  store i64 0, i64* %i, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  store i8* null, i8** %temp_string, align 4
  store i8* null, i8** %temp_key, align 4
  store i8* null, i8** %temp_string_copy, align 4
  store %Tstruct.Spl_json_array_t_t* null, %Tstruct.Spl_json_array_t_t** %temp_array, align 4
  store %Tstruct.Spl_json_array_t_t* null, %Tstruct.Spl_json_array_t_t** %temp_array_copy, align 4
  store %Tstruct.Spl_json_object_t_t* null, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  store %Tstruct.Spl_json_object_t_t* null, %Tstruct.Spl_json_object_t_t** %temp_object_copy, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  switch i32 %call, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb35
    i32 6, label %sw.bb85
    i32 3, label %sw.bb90
    i32 2, label %sw.bb95
    i32 1, label %sw.bb120
    i32 -1, label %sw.bb122
  ]

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %sw.bb
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %call3 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %10)
  %11 = bitcast %Tstruct.Spl_json_array_t_t* %call3 to %Tstruct.json_array_t_t*
  %12 = bitcast %Tstruct.json_array_t_t* %11 to i8*
  %13 = call i64 @c_TPtoO(i8* %12)
  %14 = inttoptr i64 %13 to %Tstruct.json_array_t_t*
  %15 = bitcast %Tstruct.json_array_t_t* %14 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %15, %Tstruct.Spl_json_array_t_t** %temp_array, align 4
  %call4 = call %Tstruct.Spl_json_value_t_t* @json_value_init_array()
  %16 = bitcast %Tstruct.Spl_json_value_t_t* %call4 to %Tstruct.json_value_t_t*
  %17 = bitcast %Tstruct.json_value_t_t* %16 to i8*
  %18 = call i64 @c_TPtoO(i8* %17)
  %19 = inttoptr i64 %18 to %Tstruct.json_value_t_t*
  %20 = bitcast %Tstruct.json_value_t_t* %19 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %20, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %21 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %22 = ptrtoint %Tstruct.Spl_json_value_t_t* %21 to i32
  %cmp = icmp eq i32 %22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded2
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed1:                           ; preds = %sw.bb
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded2
  %23 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %if.end
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  %call7 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %27)
  %28 = bitcast %Tstruct.Spl_json_array_t_t* %call7 to %Tstruct.json_array_t_t*
  %29 = bitcast %Tstruct.json_array_t_t* %28 to i8*
  %30 = call i64 @c_TPtoO(i8* %29)
  %31 = inttoptr i64 %30 to %Tstruct.json_array_t_t*
  %32 = bitcast %Tstruct.json_array_t_t* %31 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %32, %Tstruct.Spl_json_array_t_t** %temp_array_copy, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %_Dynamic_check.succeeded6
  %33 = load i64, i64* %i, align 8
  %34 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array, align 4
  %35 = ptrtoint %Tstruct.Spl_json_array_t_t* %34 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %for.cond
  %38 = bitcast i8* %36 to %Tstruct.Spl_json_array_t_t*
  %call10 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %38)
  %cmp11 = icmp ult i64 %33, %call10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded9
  %39 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array, align 4
  %40 = load i64, i64* %i, align 8
  %41 = ptrtoint %Tstruct.Spl_json_array_t_t* %39 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %for.body
  %44 = bitcast i8* %42 to %Tstruct.Spl_json_array_t_t*
  %call14 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %44, i64 %40)
  %45 = bitcast %Tstruct.Spl_json_value_t_t* %call14 to %Tstruct.json_value_t_t*
  %46 = bitcast %Tstruct.json_value_t_t* %45 to i8*
  %47 = call i64 @c_TPtoO(i8* %46)
  %48 = inttoptr i64 %47 to %Tstruct.json_value_t_t*
  %49 = bitcast %Tstruct.json_value_t_t* %48 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %49, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %50 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %51 = ptrtoint %Tstruct.Spl_json_value_t_t* %50 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded13
  %54 = bitcast i8* %52 to %Tstruct.Spl_json_value_t_t*
  %call17 = call %Tstruct.Spl_json_value_t_t* @json_value_deep_copy(%Tstruct.Spl_json_value_t_t* %54)
  %55 = bitcast %Tstruct.Spl_json_value_t_t* %call17 to %Tstruct.json_value_t_t*
  %56 = bitcast %Tstruct.json_value_t_t* %55 to i8*
  %57 = call i64 @c_TPtoO(i8* %56)
  %58 = inttoptr i64 %57 to %Tstruct.json_value_t_t*
  %59 = bitcast %Tstruct.json_value_t_t* %58 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %59, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %60 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %61 = ptrtoint %Tstruct.Spl_json_value_t_t* %60 to i32
  %cmp18 = icmp eq i32 %61, 0
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %_Dynamic_check.succeeded16
  %62 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %63 = ptrtoint %Tstruct.Spl_json_value_t_t* %62 to i32
  %64 = call i8* @c_fetch_pointer_from_offset(i32 %63)
  %65 = call i1 @c_isTaintedPointerToTaintedMem(i8* %64)
  br i1 %65, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %if.then19
  %66 = bitcast i8* %64 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %66)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed5:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %for.cond
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded13
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed20:                          ; preds = %if.then19
  call void @llvm.trap() #8
  unreachable

if.end22:                                         ; preds = %_Dynamic_check.succeeded16
  %67 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array_copy, align 4
  %68 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %69 = ptrtoint %Tstruct.Spl_json_array_t_t* %67 to i32
  %70 = call i8* @c_fetch_pointer_from_offset(i32 %69)
  %71 = call i1 @c_isTaintedPointerToTaintedMem(i8* %70)
  br i1 %71, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end22
  %72 = bitcast i8* %70 to %Tstruct.Spl_json_array_t_t*
  %73 = ptrtoint %Tstruct.Spl_json_value_t_t* %68 to i32
  %74 = call i8* @c_fetch_pointer_from_offset(i32 %73)
  %75 = call i1 @c_isTaintedPointerToTaintedMem(i8* %74)
  br i1 %75, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded24
  %76 = bitcast i8* %74 to %Tstruct.Spl_json_value_t_t*
  %call27 = call i32 bitcast (i32 (%Tstruct.json_array_t_t*, %Tstruct.json_value_t_t*)* @json_array_add to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %72, %Tstruct.Spl_json_value_t_t* %76)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %if.then29, label %if.end34

if.then29:                                        ; preds = %_Dynamic_check.succeeded26
  %77 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %78 = ptrtoint %Tstruct.Spl_json_value_t_t* %77 to i32
  %79 = call i8* @c_fetch_pointer_from_offset(i32 %78)
  %80 = call i1 @c_isTaintedPointerToTaintedMem(i8* %79)
  br i1 %80, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %if.then29
  %81 = bitcast i8* %79 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %81)
  %82 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %83 = ptrtoint %Tstruct.Spl_json_value_t_t* %82 to i32
  %84 = call i8* @c_fetch_pointer_from_offset(i32 %83)
  %85 = call i1 @c_isTaintedPointerToTaintedMem(i8* %84)
  br i1 %85, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %_Dynamic_check.succeeded31
  %86 = bitcast i8* %84 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %86)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed23:                          ; preds = %if.end22
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed30:                          ; preds = %if.then29
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed32:                          ; preds = %_Dynamic_check.succeeded31
  call void @llvm.trap() #8
  unreachable

if.end34:                                         ; preds = %_Dynamic_check.succeeded26
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %87 = load i64, i64* %i, align 8
  %inc = add i64 %87, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %_Dynamic_check.succeeded9
  %88 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %88, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb35:                                          ; preds = %_Dynamic_check.succeeded
  %89 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %90 = ptrtoint %Tstruct.Spl_json_value_t_t* %89 to i32
  %91 = call i8* @c_fetch_pointer_from_offset(i32 %90)
  %92 = call i1 @c_isTaintedPointerToTaintedMem(i8* %91)
  br i1 %92, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %sw.bb35
  %93 = bitcast i8* %91 to %Tstruct.Spl_json_value_t_t*
  %call38 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %93)
  %94 = bitcast %Tstruct.Spl_json_object_t_t* %call38 to %Tstruct.json_object_t_t*
  %95 = bitcast %Tstruct.json_object_t_t* %94 to i8*
  %96 = call i64 @c_TPtoO(i8* %95)
  %97 = inttoptr i64 %96 to %Tstruct.json_object_t_t*
  %98 = bitcast %Tstruct.json_object_t_t* %97 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %98, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %call39 = call %Tstruct.Spl_json_value_t_t* @json_value_init_object()
  %99 = bitcast %Tstruct.Spl_json_value_t_t* %call39 to %Tstruct.json_value_t_t*
  %100 = bitcast %Tstruct.json_value_t_t* %99 to i8*
  %101 = call i64 @c_TPtoO(i8* %100)
  %102 = inttoptr i64 %101 to %Tstruct.json_value_t_t*
  %103 = bitcast %Tstruct.json_value_t_t* %102 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %103, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %104 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %105 = ptrtoint %Tstruct.Spl_json_value_t_t* %104 to i32
  %cmp40 = icmp eq i32 %105, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %_Dynamic_check.succeeded37
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed36:                          ; preds = %sw.bb35
  call void @llvm.trap() #8
  unreachable

if.end42:                                         ; preds = %_Dynamic_check.succeeded37
  %106 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %107 = ptrtoint %Tstruct.Spl_json_value_t_t* %106 to i32
  %108 = call i8* @c_fetch_pointer_from_offset(i32 %107)
  %109 = call i1 @c_isTaintedPointerToTaintedMem(i8* %108)
  br i1 %109, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %if.end42
  %110 = bitcast i8* %108 to %Tstruct.Spl_json_value_t_t*
  %call45 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %110)
  %111 = bitcast %Tstruct.Spl_json_object_t_t* %call45 to %Tstruct.json_object_t_t*
  %112 = bitcast %Tstruct.json_object_t_t* %111 to i8*
  %113 = call i64 @c_TPtoO(i8* %112)
  %114 = inttoptr i64 %113 to %Tstruct.json_object_t_t*
  %115 = bitcast %Tstruct.json_object_t_t* %114 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %115, %Tstruct.Spl_json_object_t_t** %temp_object_copy, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc82, %_Dynamic_check.succeeded44
  %116 = load i64, i64* %i, align 8
  %117 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %118 = ptrtoint %Tstruct.Spl_json_object_t_t* %117 to i32
  %119 = call i8* @c_fetch_pointer_from_offset(i32 %118)
  %120 = call i1 @c_isTaintedPointerToTaintedMem(i8* %119)
  br i1 %120, label %_Dynamic_check.succeeded48, label %_Dynamic_check.failed47

_Dynamic_check.succeeded48:                       ; preds = %for.cond46
  %121 = bitcast i8* %119 to %Tstruct.Spl_json_object_t_t*
  %call49 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %121)
  %cmp50 = icmp ult i64 %116, %call49
  br i1 %cmp50, label %for.body51, label %for.end84

for.body51:                                       ; preds = %_Dynamic_check.succeeded48
  %122 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %123 = load i64, i64* %i, align 8
  %124 = ptrtoint %Tstruct.Spl_json_object_t_t* %122 to i32
  %125 = call i8* @c_fetch_pointer_from_offset(i32 %124)
  %126 = call i1 @c_isTaintedPointerToTaintedMem(i8* %125)
  br i1 %126, label %_Dynamic_check.succeeded53, label %_Dynamic_check.failed52

_Dynamic_check.succeeded53:                       ; preds = %for.body51
  %127 = bitcast i8* %125 to %Tstruct.Spl_json_object_t_t*
  %call54 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %127, i64 %123)
  store i8* %call54, i8** %temp_key, align 4
  %128 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %129 = load i8*, i8** %temp_key, align 4
  %130 = ptrtoint %Tstruct.Spl_json_object_t_t* %128 to i32
  %131 = call i8* @c_fetch_pointer_from_offset(i32 %130)
  %132 = call i1 @c_isTaintedPointerToTaintedMem(i8* %131)
  br i1 %132, label %_Dynamic_check.succeeded56, label %_Dynamic_check.failed55

_Dynamic_check.succeeded56:                       ; preds = %_Dynamic_check.succeeded53
  %133 = bitcast i8* %131 to %Tstruct.Spl_json_object_t_t*
  %134 = ptrtoint i8* %129 to i32
  %135 = call i8* @c_fetch_pointer_from_offset(i32 %134)
  %136 = call i1 @c_isTaintedPointerToTaintedMem(i8* %135)
  br i1 %136, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %_Dynamic_check.succeeded56
  %call59 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %133, i8* %135)
  %137 = bitcast %Tstruct.Spl_json_value_t_t* %call59 to %Tstruct.json_value_t_t*
  %138 = bitcast %Tstruct.json_value_t_t* %137 to i8*
  %139 = call i64 @c_TPtoO(i8* %138)
  %140 = inttoptr i64 %139 to %Tstruct.json_value_t_t*
  %141 = bitcast %Tstruct.json_value_t_t* %140 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %141, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %142 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %143 = ptrtoint %Tstruct.Spl_json_value_t_t* %142 to i32
  %144 = call i8* @c_fetch_pointer_from_offset(i32 %143)
  %145 = call i1 @c_isTaintedPointerToTaintedMem(i8* %144)
  br i1 %145, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded58
  %146 = bitcast i8* %144 to %Tstruct.Spl_json_value_t_t*
  %call62 = call %Tstruct.Spl_json_value_t_t* @json_value_deep_copy(%Tstruct.Spl_json_value_t_t* %146)
  %147 = bitcast %Tstruct.Spl_json_value_t_t* %call62 to %Tstruct.json_value_t_t*
  %148 = bitcast %Tstruct.json_value_t_t* %147 to i8*
  %149 = call i64 @c_TPtoO(i8* %148)
  %150 = inttoptr i64 %149 to %Tstruct.json_value_t_t*
  %151 = bitcast %Tstruct.json_value_t_t* %150 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %151, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %152 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %153 = ptrtoint %Tstruct.Spl_json_value_t_t* %152 to i32
  %cmp63 = icmp eq i32 %153, 0
  br i1 %cmp63, label %if.then64, label %if.end67

if.then64:                                        ; preds = %_Dynamic_check.succeeded61
  %154 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %155 = ptrtoint %Tstruct.Spl_json_value_t_t* %154 to i32
  %156 = call i8* @c_fetch_pointer_from_offset(i32 %155)
  %157 = call i1 @c_isTaintedPointerToTaintedMem(i8* %156)
  br i1 %157, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %if.then64
  %158 = bitcast i8* %156 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %158)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed43:                          ; preds = %if.end42
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed47:                          ; preds = %for.cond46
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed52:                          ; preds = %for.body51
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed55:                          ; preds = %_Dynamic_check.succeeded53
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed57:                          ; preds = %_Dynamic_check.succeeded56
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded58
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed65:                          ; preds = %if.then64
  call void @llvm.trap() #8
  unreachable

if.end67:                                         ; preds = %_Dynamic_check.succeeded61
  %159 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object_copy, align 4
  %160 = load i8*, i8** %temp_key, align 4
  %161 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %162 = ptrtoint %Tstruct.Spl_json_object_t_t* %159 to i32
  %163 = call i8* @c_fetch_pointer_from_offset(i32 %162)
  %164 = call i1 @c_isTaintedPointerToTaintedMem(i8* %163)
  br i1 %164, label %_Dynamic_check.succeeded69, label %_Dynamic_check.failed68

_Dynamic_check.succeeded69:                       ; preds = %if.end67
  %165 = bitcast i8* %163 to %Tstruct.Spl_json_object_t_t*
  %166 = ptrtoint i8* %160 to i32
  %167 = call i8* @c_fetch_pointer_from_offset(i32 %166)
  %168 = call i1 @c_isTaintedPointerToTaintedMem(i8* %167)
  br i1 %168, label %_Dynamic_check.succeeded71, label %_Dynamic_check.failed70

_Dynamic_check.succeeded71:                       ; preds = %_Dynamic_check.succeeded69
  %169 = ptrtoint %Tstruct.Spl_json_value_t_t* %161 to i32
  %170 = call i8* @c_fetch_pointer_from_offset(i32 %169)
  %171 = call i1 @c_isTaintedPointerToTaintedMem(i8* %170)
  br i1 %171, label %_Dynamic_check.succeeded73, label %_Dynamic_check.failed72

_Dynamic_check.succeeded73:                       ; preds = %_Dynamic_check.succeeded71
  %172 = bitcast i8* %170 to %Tstruct.Spl_json_value_t_t*
  %call74 = call i32 bitcast (i32 (%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*)* @json_object_add to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %165, i8* %167, %Tstruct.Spl_json_value_t_t* %172)
  %cmp75 = icmp eq i32 %call74, -1
  br i1 %cmp75, label %if.then76, label %if.end81

if.then76:                                        ; preds = %_Dynamic_check.succeeded73
  %173 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %174 = ptrtoint %Tstruct.Spl_json_value_t_t* %173 to i32
  %175 = call i8* @c_fetch_pointer_from_offset(i32 %174)
  %176 = call i1 @c_isTaintedPointerToTaintedMem(i8* %175)
  br i1 %176, label %_Dynamic_check.succeeded78, label %_Dynamic_check.failed77

_Dynamic_check.succeeded78:                       ; preds = %if.then76
  %177 = bitcast i8* %175 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %177)
  %178 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %179 = ptrtoint %Tstruct.Spl_json_value_t_t* %178 to i32
  %180 = call i8* @c_fetch_pointer_from_offset(i32 %179)
  %181 = call i1 @c_isTaintedPointerToTaintedMem(i8* %180)
  br i1 %181, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %_Dynamic_check.succeeded78
  %182 = bitcast i8* %180 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %182)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed68:                          ; preds = %if.end67
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed70:                          ; preds = %_Dynamic_check.succeeded69
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed72:                          ; preds = %_Dynamic_check.succeeded71
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed77:                          ; preds = %if.then76
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed79:                          ; preds = %_Dynamic_check.succeeded78
  call void @llvm.trap() #8
  unreachable

if.end81:                                         ; preds = %_Dynamic_check.succeeded73
  br label %for.inc82

for.inc82:                                        ; preds = %if.end81
  %183 = load i64, i64* %i, align 8
  %inc83 = add i64 %183, 1
  store i64 %inc83, i64* %i, align 8
  br label %for.cond46, !llvm.loop !10

for.end84:                                        ; preds = %_Dynamic_check.succeeded48
  %184 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %184, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb85:                                          ; preds = %_Dynamic_check.succeeded
  %185 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %186 = ptrtoint %Tstruct.Spl_json_value_t_t* %185 to i32
  %187 = call i8* @c_fetch_pointer_from_offset(i32 %186)
  %188 = call i1 @c_isTaintedPointerToTaintedMem(i8* %187)
  br i1 %188, label %_Dynamic_check.succeeded87, label %_Dynamic_check.failed86

_Dynamic_check.succeeded87:                       ; preds = %sw.bb85
  %189 = bitcast i8* %187 to %Tstruct.Spl_json_value_t_t*
  %call88 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %189)
  %call89 = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %call88)
  %190 = bitcast %Tstruct.Spl_json_value_t_t* %call89 to %Tstruct.json_value_t_t*
  %191 = bitcast %Tstruct.json_value_t_t* %190 to i8*
  %192 = call i64 @c_TPtoO(i8* %191)
  %193 = inttoptr i64 %192 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %193, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed86:                          ; preds = %sw.bb85
  call void @llvm.trap() #8
  unreachable

sw.bb90:                                          ; preds = %_Dynamic_check.succeeded
  %194 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %195 = ptrtoint %Tstruct.Spl_json_value_t_t* %194 to i32
  %196 = call i8* @c_fetch_pointer_from_offset(i32 %195)
  %197 = call i1 @c_isTaintedPointerToTaintedMem(i8* %196)
  br i1 %197, label %_Dynamic_check.succeeded92, label %_Dynamic_check.failed91

_Dynamic_check.succeeded92:                       ; preds = %sw.bb90
  %198 = bitcast i8* %196 to %Tstruct.Spl_json_value_t_t*
  %call93 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %198)
  %call94 = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %call93)
  %199 = bitcast %Tstruct.Spl_json_value_t_t* %call94 to %Tstruct.json_value_t_t*
  %200 = bitcast %Tstruct.json_value_t_t* %199 to i8*
  %201 = call i64 @c_TPtoO(i8* %200)
  %202 = inttoptr i64 %201 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %202, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed91:                          ; preds = %sw.bb90
  call void @llvm.trap() #8
  unreachable

sw.bb95:                                          ; preds = %_Dynamic_check.succeeded
  %203 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %204 = ptrtoint %Tstruct.Spl_json_value_t_t* %203 to i32
  %205 = call i8* @c_fetch_pointer_from_offset(i32 %204)
  %206 = call i1 @c_isTaintedPointerToTaintedMem(i8* %205)
  br i1 %206, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %sw.bb95
  %207 = bitcast i8* %205 to %Tstruct.Spl_json_value_t_t*
  %call98 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %207)
  store i8* %call98, i8** %temp_string, align 4
  %208 = load i8*, i8** %temp_string, align 4
  %209 = ptrtoint i8* %208 to i32
  %cmp99 = icmp eq i32 %209, 0
  br i1 %cmp99, label %if.then100, label %if.end101

if.then100:                                       ; preds = %_Dynamic_check.succeeded97
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed96:                          ; preds = %sw.bb95
  call void @llvm.trap() #8
  unreachable

if.end101:                                        ; preds = %_Dynamic_check.succeeded97
  %210 = load i8*, i8** %temp_string, align 4
  %211 = ptrtoint i8* %210 to i32
  %212 = call i8* @c_fetch_pointer_from_offset(i32 %211)
  %213 = call i1 @c_isTaintedPointerToTaintedMem(i8* %212)
  br i1 %213, label %_Dynamic_check.succeeded103, label %_Dynamic_check.failed102

_Dynamic_check.succeeded103:                      ; preds = %if.end101
  %call104 = call i8* @tainted_parson_strdup(i8* %212)
  store i8* %call104, i8** %temp_string_copy, align 4
  %214 = load i8*, i8** %temp_string_copy, align 4
  %215 = ptrtoint i8* %214 to i32
  %cmp105 = icmp eq i32 %215, 0
  br i1 %cmp105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %_Dynamic_check.succeeded103
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed102:                         ; preds = %if.end101
  call void @llvm.trap() #8
  unreachable

if.end107:                                        ; preds = %_Dynamic_check.succeeded103
  %216 = load i8*, i8** %temp_string_copy, align 4
  %217 = ptrtoint i8* %216 to i32
  %218 = call i8* @c_fetch_pointer_from_offset(i32 %217)
  %219 = call i1 @c_isTaintedPointerToTaintedMem(i8* %218)
  br i1 %219, label %_Dynamic_check.succeeded109, label %_Dynamic_check.failed108

_Dynamic_check.succeeded109:                      ; preds = %if.end107
  %call110 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*)* @json_value_init_string_no_copy to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %218)
  %220 = bitcast %Tstruct.Spl_json_value_t_t* %call110 to %Tstruct.json_value_t_t*
  %221 = bitcast %Tstruct.json_value_t_t* %220 to i8*
  %222 = call i64 @c_TPtoO(i8* %221)
  %223 = inttoptr i64 %222 to %Tstruct.json_value_t_t*
  %224 = bitcast %Tstruct.json_value_t_t* %223 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %224, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %225 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %226 = ptrtoint %Tstruct.Spl_json_value_t_t* %225 to i32
  %cmp111 = icmp eq i32 %226, 0
  br i1 %cmp111, label %if.then112, label %if.end119

if.then112:                                       ; preds = %_Dynamic_check.succeeded109
  %227 = load i8*, i8** %temp_string_copy, align 4
  %_Dynamic_check.is_null = icmp eq i8* %227, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then112
  %228 = load i8*, i8** %temp_string_copy, align 4
  %229 = load i8*, i8** %temp_string_copy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %229, i64 0
  %_Dynamic_check.non_null = icmp ne i8* %227, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded114, label %_Dynamic_check.failed113

_Dynamic_check.succeeded114:                      ; preds = %_Dynamic_check.subsumption
  %add.ptr115 = getelementptr inbounds i8, i8* %227, i64 0
  %230 = call i64 @c_TPtoO(i8* %228)
  %231 = inttoptr i64 %230 to i8*
  %232 = call i64 @c_TPtoO(i8* %227)
  %233 = inttoptr i64 %232 to i8*
  %_Dynamic_check.lower = icmp ule i8* %231, %233
  %234 = call i64 @c_TPtoO(i8* %add.ptr115)
  %235 = inttoptr i64 %234 to i8*
  %236 = call i64 @c_TPtoO(i8* %add.ptr)
  %237 = inttoptr i64 %236 to i8*
  %_Dynamic_check.upper = icmp ule i8* %235, %237
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed116

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded114, %if.then112
  %238 = ptrtoint i8* %227 to i32
  %239 = call i8* @c_fetch_pointer_from_offset(i32 %238)
  %240 = call i1 @c_isTaintedPointerToTaintedMem(i8* %239)
  br i1 %240, label %_Dynamic_check.succeeded118, label %_Dynamic_check.failed117

_Dynamic_check.succeeded118:                      ; preds = %_Dynamic_check.success
  call void @t_free(i8* %239)
  br label %if.end119

_Dynamic_check.failed108:                         ; preds = %if.end107
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed113:                         ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed116:                         ; preds = %_Dynamic_check.succeeded114
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed117:                         ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

if.end119:                                        ; preds = %_Dynamic_check.succeeded118, %_Dynamic_check.succeeded109
  %241 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %241, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb120:                                         ; preds = %_Dynamic_check.succeeded
  %call121 = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %242 = bitcast %Tstruct.Spl_json_value_t_t* %call121 to %Tstruct.json_value_t_t*
  %243 = bitcast %Tstruct.json_value_t_t* %242 to i8*
  %244 = call i64 @c_TPtoO(i8* %243)
  %245 = inttoptr i64 %244 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %245, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb122:                                         ; preds = %_Dynamic_check.succeeded
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.default:                                       ; preds = %_Dynamic_check.succeeded
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb122, %sw.bb120, %if.end119, %if.then106, %if.then100, %_Dynamic_check.succeeded92, %_Dynamic_check.succeeded87, %for.end84, %_Dynamic_check.succeeded80, %_Dynamic_check.succeeded66, %if.then41, %for.end, %_Dynamic_check.succeeded33, %_Dynamic_check.succeeded21, %if.then
  %246 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_serialization_size(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %num_buf = alloca i8*, align 4
  %res = alloca i32, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i8* @parson_string_tainted_malloc(i64 64)
  store i8* %call, i8** %num_buf, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = load i8*, i8** %num_buf, align 4
  %3 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_value_t_t*
  %7 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %9 = ptrtoint i8* %2 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %12 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %call7 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %6, i8* %7, i32 0, i32 0, i8* %10, i8* %12, i64 0)
  store i32 %call7, i32* %res, align 4
  %14 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %14, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded6
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded6
  %15 = load i32, i32* %res, align 4
  %add = add nsw i32 %15, 1
  %conv = sext i32 %add to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %conv, %cond.false ]
  ret i64 %cond

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_buffer(%Tstruct.json_value_t_t* %value, i8* %buf, i64 %buf_size_in_bytes) #2 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %buf.addr = alloca i8*, align 4
  %buf_size_in_bytes.addr = alloca i64, align 8
  %written = alloca i32, align 4
  %needed_size_in_bytes = alloca i64, align 8
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i64 %buf_size_in_bytes, i64* %buf_size_in_bytes.addr, align 8
  store i32 -1, i32* %written, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i64 @json_serialization_size(%Tstruct.Spl_json_value_t_t* %5)
  store i64 %call, i64* %needed_size_in_bytes, align 8
  %6 = load i64, i64* %needed_size_in_bytes, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %_Dynamic_check.succeeded
  %7 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %8 = load i64, i64* %needed_size_in_bytes, align 8
  %cmp1 = icmp ult i64 %7, %8
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %10 = load i8*, i8** %buf.addr, align 4
  %11 = load i8*, i8** %buf.addr, align 4
  %12 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %9 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %if.end
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_t_t*
  %17 = ptrtoint i8* %10 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded3
  %20 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded5
  %22 = ptrtoint i8* %11 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded7
  %call10 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %16, i8* %18, i32 0, i32 0, i8* %20, i8* %23, i64 %12)
  store i32 %call10, i32* %written, align 4
  %25 = load i32, i32* %written, align 4
  %cmp11 = icmp slt i32 %25, 0
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %_Dynamic_check.succeeded9
  %26 = load i8*, i8** %buf.addr, align 4
  %27 = ptrtoint i8* %26 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.then12
  %arrayidx = getelementptr inbounds i8, i8* %28, i64 0
  %30 = call i64 @c_TPtoO(i8* %arrayidx)
  %31 = inttoptr i64 %30 to i8*
  %32 = load i8*, i8** %buf.addr, align 4
  %33 = load i8*, i8** %buf.addr, align 4
  %34 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %_Dynamic_check.non_null = icmp ne i8* %33, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded14
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 %34
  %35 = call i64 @c_TPtoO(i8* %add.ptr)
  %36 = inttoptr i64 %35 to i8*
  %37 = call i64 @c_TPtoO(i8* %32)
  %38 = inttoptr i64 %37 to i8*
  %_Dynamic_check.lower = icmp ule i8* %38, %31
  %_Dynamic_check.upper = icmp ult i8* %31, %36
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  store i8 0, i8* %arrayidx, align 1
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed2:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed13:                          ; preds = %if.then12
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #8
  unreachable

if.end19:                                         ; preds = %_Dynamic_check.succeeded9
  %39 = load i8*, i8** %buf.addr, align 4
  %40 = load i32, i32* %written, align 4
  %idxprom = sext i32 %40 to i64
  %41 = ptrtoint i8* %39 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %if.end19
  %arrayidx22 = getelementptr inbounds i8, i8* %42, i64 %idxprom
  %44 = call i64 @c_TPtoO(i8* %arrayidx22)
  %45 = inttoptr i64 %44 to i8*
  %46 = load i8*, i8** %buf.addr, align 4
  %47 = load i8*, i8** %buf.addr, align 4
  %48 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %_Dynamic_check.non_null23 = icmp ne i8* %47, null
  br i1 %_Dynamic_check.non_null23, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded21
  %add.ptr26 = getelementptr inbounds i8, i8* %47, i64 %48
  %49 = call i64 @c_TPtoO(i8* %add.ptr26)
  %50 = inttoptr i64 %49 to i8*
  %51 = call i64 @c_TPtoO(i8* %46)
  %52 = inttoptr i64 %51 to i8*
  %_Dynamic_check.lower27 = icmp ule i8* %52, %45
  %_Dynamic_check.upper28 = icmp ult i8* %45, %50
  %_Dynamic_check.range29 = and i1 %_Dynamic_check.lower27, %_Dynamic_check.upper28
  br i1 %_Dynamic_check.range29, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded25
  store i8 0, i8* %arrayidx22, align 1
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed20:                          ; preds = %if.end19
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded31, %_Dynamic_check.succeeded18, %if.then
  %53 = load i32, i32* %retval, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_serialize_to_buffer_pretty(%Tstruct.json_value_t_t* %value, i8* %buf, i64 %buf_size_in_bytes) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %buf.addr = alloca i8*, align 4
  %buf_size_in_bytes.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  store i8* %buf, i8** %buf.addr, align 4
  store i64 %buf_size_in_bytes, i64* %buf_size_in_bytes.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = load i8*, i8** %buf.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %5 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %6 = ptrtoint i8* %call to i64
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %6)
  %call1 = call i64 @w2c_json_serialize_to_buffer_pretty(i8* %7, i32 %2, i32 %4, i64 %5)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

declare dso_local i64 @w2c_json_serialize_to_buffer_pretty(i8*, i32, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %retval = alloca i8*, align 8
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %serialization_result = alloca i32, align 4
  %buf_size_bytes = alloca i64, align 8
  %buf = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  store i32 -1, i32* %serialization_result, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i64 @json_serialization_size(%Tstruct.Spl_json_value_t_t* %5)
  store i64 %call, i64* %buf_size_bytes, align 8
  store i8* null, i8** %buf, align 4
  %6 = load i64, i64* %buf_size_bytes, align 8
  %cmp = icmp eq i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded
  store i8* null, i8** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %7 = load i64, i64* %buf_size_bytes, align 8
  %call1 = call i8* @parson_string_tainted_malloc(i64 %7)
  store i8* %call1, i8** %buf, align 4
  %8 = load i8*, i8** %buf, align 4
  %9 = ptrtoint i8* %8 to i32
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %11 = load i8*, i8** %buf, align 4
  %12 = load i64, i64* %buf_size_bytes, align 8
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %if.end4
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_t_t*
  %17 = ptrtoint i8* %11 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %call9 = call i32 @json_serialize_to_buffer(%Tstruct.Spl_json_value_t_t* %16, i8* %18, i64 %12)
  store i32 %call9, i32* %serialization_result, align 4
  %20 = load i32, i32* %serialization_result, align 4
  %cmp10 = icmp eq i32 %20, -1
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %_Dynamic_check.succeeded8
  %21 = load i8*, i8** %buf, align 4
  %_Dynamic_check.is_null = icmp eq i8* %21, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then11
  %22 = load i8*, i8** %buf, align 4
  %23 = load i8*, i8** %buf, align 4
  %24 = load i64, i64* %buf_size_bytes, align 8
  %_Dynamic_check.non_null = icmp ne i8* %23, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %24
  %add.ptr14 = getelementptr inbounds i8, i8* %21, i64 0
  %25 = call i64 @c_TPtoO(i8* %22)
  %26 = inttoptr i64 %25 to i8*
  %27 = call i64 @c_TPtoO(i8* %21)
  %28 = inttoptr i64 %27 to i8*
  %_Dynamic_check.lower = icmp ule i8* %26, %28
  %29 = call i64 @c_TPtoO(i8* %add.ptr14)
  %30 = inttoptr i64 %29 to i8*
  %31 = call i64 @c_TPtoO(i8* %add.ptr)
  %32 = inttoptr i64 %31 to i8*
  %_Dynamic_check.upper = icmp ule i8* %30, %32
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed15

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded13, %if.then11
  %33 = ptrtoint i8* %21 to i32
  %34 = call i8* @c_fetch_pointer_from_offset(i32 %33)
  %35 = call i1 @c_isTaintedPointerToTaintedMem(i8* %34)
  br i1 %35, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.success
  call void @json_free_serialized_string(i8* %34)
  store i8* null, i8** %retval, align 8
  br label %return

_Dynamic_check.failed5:                           ; preds = %if.end4
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded13
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

if.end18:                                         ; preds = %_Dynamic_check.succeeded8
  %36 = load i8*, i8** %buf, align 4
  store i8* %36, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %_Dynamic_check.succeeded17, %if.then3, %if.then
  %37 = load i8*, i8** %retval, align 8
  ret i8* %37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_free_serialized_string(i8* %string) #2 {
entry:
  %string.addr = alloca i8*, align 4
  store i8* %string, i8** %string.addr, align 4
  %0 = load i8*, i8** %string.addr, align 4
  %_Dynamic_check.is_null = icmp eq i8* %0, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %entry
  %1 = load i8*, i8** %string.addr, align 4
  %2 = load i8*, i8** %string.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 0
  %_Dynamic_check.non_null = icmp ne i8* %0, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %_Dynamic_check.subsumption
  %add.ptr1 = getelementptr inbounds i8, i8* %0, i64 0
  %3 = call i64 @c_TPtoO(i8* %1)
  %4 = inttoptr i64 %3 to i8*
  %5 = call i64 @c_TPtoO(i8* %0)
  %6 = inttoptr i64 %5 to i8*
  %_Dynamic_check.lower = icmp ule i8* %4, %6
  %7 = call i64 @c_TPtoO(i8* %add.ptr1)
  %8 = inttoptr i64 %7 to i8*
  %9 = call i64 @c_TPtoO(i8* %add.ptr)
  %10 = inttoptr i64 %9 to i8*
  %_Dynamic_check.upper = icmp ule i8* %8, %10
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed2

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded, %entry
  %11 = ptrtoint i8* %0 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.success
  call void @t_free(i8* %12)
  ret void

_Dynamic_check.failed:                            ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i64 @json_serialization_size_pretty(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = ptrtoint i8* %call to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call1 = call i64 @w2c_json_serialization_size_pretty(i8* %4, i32 %2)
  ret i64 %call1
}

declare dso_local i64 @w2c_json_serialization_size_pretty(i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_serialize_to_file_pretty(%Tstruct.json_value_t_t* %value, i8* %filename) #2 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %filename.addr = alloca i8*, align 8
  %return_code = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %serialized_string = alloca i8*, align 4
  %checked_serialized_string = alloca i8*, align 8
  %len = alloca i32, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* %return_code, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_serialize_to_string_pretty to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  store i8* %call, i8** %serialized_string, align 4
  store i8* null, i8** %checked_serialized_string, align 8
  %6 = load i8*, i8** %serialized_string, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call3 = call i64 @t_strlen(i8* %8)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %len, align 4
  %10 = load i32, i32* %len, align 4
  %conv4 = sext i32 %10 to i64
  %mul = mul i64 %conv4, 1
  %call5 = call i8* @parson_string_malloc(i64 %mul)
  store i8* %call5, i8** %checked_serialized_string, align 8
  %11 = load i8*, i8** %checked_serialized_string, align 8
  %12 = load i8*, i8** %serialized_string, align 4
  %13 = ptrtoint i8* %11 to i64
  %14 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %13)
  %15 = ptrtoint i8* %12 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded2
  %call8 = call i8* @ct_strcpy(i8* %14, i8* %16)
  %18 = load i8*, i8** %serialized_string, align 4
  %19 = ptrtoint i8* %18 to i32
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded7
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded7
  %20 = load i8*, i8** %filename.addr, align 8
  %21 = ptrtoint i8* %20 to i64
  %22 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %21)
  %23 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.12 to i64))
  %call10 = call %struct._IO_FILE* @fopen(i8* %22, i8* %23)
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %fp, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %25 = bitcast %struct._IO_FILE* %24 to i8*
  %cmp11 = icmp eq i8* %25, null
  br i1 %cmp11, label %if.then13, label %if.end23

if.then13:                                        ; preds = %if.end
  %26 = load i8*, i8** %serialized_string, align 4
  %27 = ptrtoint i8* %26 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %if.then13
  call void @json_free_serialized_string(i8* %28)
  %30 = load i8*, i8** %checked_serialized_string, align 8
  %_Dynamic_check.is_null = icmp eq i8* %30, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded15
  %31 = load i8*, i8** %checked_serialized_string, align 8
  %32 = load i8*, i8** %checked_serialized_string, align 8
  %_Dynamic_check.non_null = icmp ne i8* %32, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 0
  %_Dynamic_check.non_null18 = icmp ne i8* %30, null
  br i1 %_Dynamic_check.non_null18, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.succeeded17
  %add.ptr21 = getelementptr inbounds i8, i8* %30, i64 0
  %33 = call i64 @c_TPtoO(i8* %31)
  %34 = inttoptr i64 %33 to i8*
  %35 = call i64 @c_TPtoO(i8* %30)
  %36 = inttoptr i64 %35 to i8*
  %_Dynamic_check.lower = icmp ule i8* %34, %36
  %37 = call i64 @c_TPtoO(i8* %add.ptr21)
  %38 = inttoptr i64 %37 to i8*
  %39 = call i64 @c_TPtoO(i8* %add.ptr)
  %40 = inttoptr i64 %39 to i8*
  %_Dynamic_check.upper = icmp ule i8* %38, %40
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed22

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded20, %_Dynamic_check.succeeded15
  call void @free(i8* %30) #10
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed14:                          ; preds = %if.then13
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.succeeded17
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #8
  unreachable

if.end23:                                         ; preds = %if.end
  %41 = load i8*, i8** %checked_serialized_string, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call24 = call i32 @fputs(i8* %41, %struct._IO_FILE* %42)
  %cmp25 = icmp eq i32 %call24, -1
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  store i32 -1, i32* %return_code, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %44 = ptrtoint %struct._IO_FILE* %43 to i64
  %45 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %44)
  %46 = bitcast i8* %45 to %struct._IO_FILE*
  %call29 = call i32 @fclose(%struct._IO_FILE* %46)
  %cmp30 = icmp eq i32 %call29, -1
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  store i32 -1, i32* %return_code, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %47 = load i8*, i8** %serialized_string, align 4
  %48 = ptrtoint i8* %47 to i32
  %49 = call i8* @c_fetch_pointer_from_offset(i32 %48)
  %50 = call i1 @c_isTaintedPointerToTaintedMem(i8* %49)
  br i1 %50, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %if.end33
  call void @json_free_serialized_string(i8* %49)
  %51 = load i8*, i8** %checked_serialized_string, align 8
  %_Dynamic_check.is_null36 = icmp eq i8* %51, null
  br i1 %_Dynamic_check.is_null36, label %_Dynamic_check.success50, label %_Dynamic_check.subsumption37

_Dynamic_check.subsumption37:                     ; preds = %_Dynamic_check.succeeded35
  %52 = load i8*, i8** %checked_serialized_string, align 8
  %53 = load i8*, i8** %checked_serialized_string, align 8
  %_Dynamic_check.non_null38 = icmp ne i8* %53, null
  br i1 %_Dynamic_check.non_null38, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %_Dynamic_check.subsumption37
  %add.ptr41 = getelementptr inbounds i8, i8* %53, i64 0
  %_Dynamic_check.non_null42 = icmp ne i8* %51, null
  br i1 %_Dynamic_check.non_null42, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %_Dynamic_check.succeeded40
  %add.ptr45 = getelementptr inbounds i8, i8* %51, i64 0
  %54 = call i64 @c_TPtoO(i8* %52)
  %55 = inttoptr i64 %54 to i8*
  %56 = call i64 @c_TPtoO(i8* %51)
  %57 = inttoptr i64 %56 to i8*
  %_Dynamic_check.lower46 = icmp ule i8* %55, %57
  %58 = call i64 @c_TPtoO(i8* %add.ptr45)
  %59 = inttoptr i64 %58 to i8*
  %60 = call i64 @c_TPtoO(i8* %add.ptr41)
  %61 = inttoptr i64 %60 to i8*
  %_Dynamic_check.upper47 = icmp ule i8* %59, %61
  %_Dynamic_check.cast48 = and i1 %_Dynamic_check.lower46, %_Dynamic_check.upper47
  br i1 %_Dynamic_check.cast48, label %_Dynamic_check.success50, label %_Dynamic_check.failed49

_Dynamic_check.success50:                         ; preds = %_Dynamic_check.succeeded44, %_Dynamic_check.succeeded35
  call void @free(i8* %51) #10
  %62 = load i32, i32* %return_code, align 4
  store i32 %62, i32* %retval, align 4
  br label %return

_Dynamic_check.failed34:                          ; preds = %if.end33
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed39:                          ; preds = %_Dynamic_check.subsumption37
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded40
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed49:                          ; preds = %_Dynamic_check.succeeded44
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.success50, %_Dynamic_check.success, %if.then
  %63 = load i32, i32* %retval, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parson_string_malloc(i64 %sz) #2 {
entry:
  %retval = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store i64 %sz, i64* %sz.addr, align 8
  %0 = load i64, i64* %sz.addr, align 8
  %cmp = icmp uge i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %sz.addr, align 8
  %add = add i64 %1, 1
  %call = call noalias i8* @malloc(i64 %add) #10
  store i8* %call, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** %p, align 8
  %4 = load i64, i64* %sz.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %4
  store i8 0, i8* %arrayidx, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load i8*, i8** %p, align 8
  store i8* %5, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %6 = load i8*, i8** %retval, align 8
  ret i8* %6
}

declare dso_local i8* @ct_strcpy(i8*, i8*) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = ptrtoint i8* %call to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call1 = call i32 @w2c_json_serialize_to_string_pretty(i8* %4, i32 %2)
  %conv = zext i32 %call1 to i64
  %5 = inttoptr i64 %conv to i8*
  ret i8* %5
}

declare dso_local i32 @w2c_json_serialize_to_string_pretty(i8*, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_array_remove(%Tstruct.json_array_t_t* %array, i64 %ix) #0 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %ix.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %ix, i64* %ix.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_array_t_t* %1 to i32
  %3 = load i64, i64* %ix.addr, align 8
  %4 = ptrtoint i8* %call to i64
  %5 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %4)
  %call1 = call i64 @w2c_json_array_remove(i8* %5, i32 %2, i64 %3)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

declare dso_local i64 @w2c_json_array_remove(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_value(%Tstruct.json_array_t_t* %array, i64 %ix, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %ix.addr = alloca i64, align 8
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %ix, i64* %ix.addr, align 8
  %1 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %1, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_array_t_t* %2 to i32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %5 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false2
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %10, i32 0, i32 0
  %parent3 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent3, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %cmp4 = icmp ne i32 %12, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %_Dynamic_check.succeeded
  %13 = load i64, i64* %ix.addr, align 8
  %14 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %15 = ptrtoint %Tstruct.Spl_json_array_t_t* %14 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %lor.lhs.false5
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_array_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %18)
  %cmp8 = icmp uge i64 %13, %call
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded7, %_Dynamic_check.succeeded, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %lor.lhs.false5
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded7
  %19 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %20 = load i64, i64* %ix.addr, align 8
  %21 = ptrtoint %Tstruct.Spl_json_array_t_t* %19 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %if.end
  %24 = bitcast i8* %22 to %Tstruct.Spl_json_array_t_t*
  %call11 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %24, i64 %20)
  %25 = bitcast %Tstruct.Spl_json_value_t_t* %call11 to %Tstruct.json_value_t_t*
  %26 = bitcast %Tstruct.json_value_t_t* %25 to i8*
  %27 = call i64 @c_TPtoO(i8* %26)
  %28 = inttoptr i64 %27 to %Tstruct.Spl_json_value_t_t*
  %29 = ptrtoint %Tstruct.Spl_json_value_t_t* %28 to i32
  %30 = call i8* @c_fetch_pointer_from_offset(i32 %29)
  %31 = call i1 @c_isTaintedPointerToTaintedMem(i8* %30)
  br i1 %31, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded10
  %32 = bitcast i8* %30 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %32)
  %33 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %34 = ptrtoint %Tstruct.Spl_json_array_t_t* %33 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.succeeded13
  %37 = bitcast i8* %35 to %Tstruct.Spl_json_array_t_t*
  %call16 = call %Tstruct.Spl_json_value_t_t* @json_array_get_wrapping_value(%Tstruct.Spl_json_array_t_t* %37)
  %38 = bitcast %Tstruct.Spl_json_value_t_t* %call16 to %Tstruct.json_value_t_t*
  %39 = bitcast %Tstruct.json_value_t_t* %38 to i8*
  %40 = call i64 @c_TPtoO(i8* %39)
  %41 = inttoptr i64 %40 to %Tstruct.json_value_t_t*
  %42 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %43 = ptrtoint %Tstruct.Spl_json_value_t_t* %42 to i32
  %44 = call i8* @c_fetch_pointer_from_offset(i32 %43)
  %45 = call i1 @c_isTaintedPointerToTaintedMem(i8* %44)
  br i1 %45, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded15
  %46 = bitcast i8* %44 to %Tstruct.Spl_json_value_t_t*
  %parent19 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %46, i32 0, i32 0
  %parent20 = bitcast i32* %parent19 to %Tstruct.Spl_json_value_t_t**
  %47 = bitcast %Tstruct.json_value_t_t* %41 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %47, %Tstruct.Spl_json_value_t_t** %parent20, align 4
  %48 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %49 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %50 = ptrtoint %Tstruct.Spl_json_array_t_t* %49 to i32
  %51 = call i8* @c_fetch_pointer_from_offset(i32 %50)
  %52 = call i1 @c_isTaintedPointerToTaintedMem(i8* %51)
  br i1 %52, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded18
  %53 = bitcast i8* %51 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %53, i32 0, i32 1
  %items23 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %54 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items23, align 4
  %55 = load i64, i64* %ix.addr, align 8
  %56 = ptrtoint %Tstruct.Spl_json_value_t_t** %54 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded22
  %59 = bitcast i8* %57 to %Tstruct.Spl_json_value_t_t**
  %60 = bitcast %Tstruct.Spl_json_value_t_t** %59 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %60, i64 %55
  %61 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %62 = bitcast %Tstruct.Spl_json_value_t_t** %61 to i8*
  %63 = call i64 @c_TPtoO(i8* %62)
  %64 = inttoptr i64 %63 to %Tstruct.Spl_json_value_t_t**
  %65 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %66 = ptrtoint %Tstruct.Spl_json_array_t_t* %65 to i32
  %67 = call i8* @c_fetch_pointer_from_offset(i32 %66)
  %68 = call i1 @c_isTaintedPointerToTaintedMem(i8* %67)
  br i1 %68, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded25
  %69 = bitcast i8* %67 to %Tstruct.Spl_json_array_t_t*
  %items28 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %69, i32 0, i32 1
  %items29 = bitcast i32* %items28 to %Tstruct.Spl_json_value_t_t***
  %70 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items29, align 4
  %71 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %72 = ptrtoint %Tstruct.Spl_json_array_t_t* %71 to i32
  %73 = call i8* @c_fetch_pointer_from_offset(i32 %72)
  %74 = call i1 @c_isTaintedPointerToTaintedMem(i8* %73)
  br i1 %74, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded27
  %75 = bitcast i8* %73 to %Tstruct.Spl_json_array_t_t*
  %items32 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %75, i32 0, i32 1
  %items33 = bitcast i32* %items32 to %Tstruct.Spl_json_value_t_t***
  %76 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items33, align 4
  %77 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %78 = ptrtoint %Tstruct.Spl_json_array_t_t* %77 to i32
  %79 = call i8* @c_fetch_pointer_from_offset(i32 %78)
  %80 = call i1 @c_isTaintedPointerToTaintedMem(i8* %79)
  br i1 %80, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %_Dynamic_check.succeeded31
  %81 = bitcast i8* %79 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %81, i32 0, i32 3
  %82 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %82 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %76, i64 %idx.ext
  %83 = bitcast %Tstruct.Spl_json_value_t_t** %76 to i32*
  %84 = getelementptr inbounds i32, i32* %83, i64 %idx.ext
  %85 = bitcast i32* %84 to %Tstruct.Spl_json_value_t_t**
  %86 = bitcast %Tstruct.Spl_json_value_t_t** %85 to i8*
  %87 = call i64 @c_TPtoO(i8* %86)
  %88 = inttoptr i64 %87 to %Tstruct.Spl_json_value_t_t**
  %89 = bitcast %Tstruct.Spl_json_value_t_t** %70 to i8*
  %90 = call i64 @c_TPtoO(i8* %89)
  %91 = inttoptr i64 %90 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %91, %64
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %64, %88
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %_Dynamic_check.succeeded35
  store %Tstruct.Spl_json_value_t_t* %48, %Tstruct.Spl_json_value_t_t** %61, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed9:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.succeeded13
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed34:                          ; preds = %_Dynamic_check.succeeded31
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed36:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded37, %if.then
  %92 = load i32, i32* %retval, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_string(%Tstruct.json_array_t_t* %array, i64 %i, i8* %string) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i.addr = alloca i64, align 8
  %string.addr = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %i, i64* %i.addr, align 8
  store i8* %string, i8** %string.addr, align 4
  %1 = load i8*, i8** %string.addr, align 4
  %2 = ptrtoint i8* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %3)
  %5 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to i8*
  %7 = call i64 @c_TPtoO(i8* %6)
  %8 = inttoptr i64 %7 to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %9, %Tstruct.Spl_json_value_t_t** %value, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %12 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %13 = load i64, i64* %i.addr, align 8
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %15 = ptrtoint %Tstruct.Spl_json_array_t_t* %12 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %if.end
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_array_t_t*
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %18, i64 %13, %Tstruct.Spl_json_value_t_t* %22)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %_Dynamic_check.succeeded4
  %23 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %if.then7
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %27)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed1:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %if.then7
  call void @llvm.trap() #8
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %_Dynamic_check.succeeded9, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_number(%Tstruct.json_array_t_t* %array, i64 %i, double %number) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i.addr = alloca i64, align 8
  %number.addr = alloca double, align 8
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %i, i64* %i.addr, align 8
  store double %number, double* %number.addr, align 8
  %1 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %1)
  %2 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %3 = bitcast %Tstruct.json_value_t_t* %2 to i8*
  %4 = call i64 @c_TPtoO(i8* %3)
  %5 = inttoptr i64 %4 to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %6, %Tstruct.Spl_json_value_t_t** %value, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %10 = load i64, i64* %i.addr, align 8
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_array_t_t*
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %19 = bitcast i8* %17 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %15, i64 %10, %Tstruct.Spl_json_value_t_t* %19)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %20 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %20 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %24 = bitcast i8* %22 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %24)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #8
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_boolean(%Tstruct.json_array_t_t* %array, i64 %i, i32 %boolean) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i.addr = alloca i64, align 8
  %boolean.addr = alloca i32, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %i, i64* %i.addr, align 8
  store i32 %boolean, i32* %boolean.addr, align 4
  %1 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %1)
  %2 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %3 = bitcast %Tstruct.json_value_t_t* %2 to i8*
  %4 = call i64 @c_TPtoO(i8* %3)
  %5 = inttoptr i64 %4 to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %6, %Tstruct.Spl_json_value_t_t** %value, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %10 = load i64, i64* %i.addr, align 8
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_array_t_t*
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %19 = bitcast i8* %17 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %15, i64 %10, %Tstruct.Spl_json_value_t_t* %19)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %20 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %20 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %24 = bitcast i8* %22 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %24)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #8
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %25 = load i32, i32* %retval, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_null(%Tstruct.json_array_t_t* %array, i64 %i) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i.addr = alloca i64, align 8
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %i, i64* %i.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %1 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %2 = bitcast %Tstruct.json_value_t_t* %1 to i8*
  %3 = call i64 @c_TPtoO(i8* %2)
  %4 = inttoptr i64 %3 to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %5, %Tstruct.Spl_json_value_t_t** %value, align 4
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %9 = load i64, i64* %i.addr, align 8
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_array_t_t* %8 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_array_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %14, i64 %9, %Tstruct.Spl_json_value_t_t* %18)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %19 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %20 = ptrtoint %Tstruct.Spl_json_value_t_t* %19 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %23 = bitcast i8* %21 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %23)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #8
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_clear(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 0, i64* %i, align 8
  %1 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_array_t_t* %1 to i32
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i64, i64* %i, align 8
  %4 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %5 = ptrtoint %Tstruct.Spl_json_array_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %for.cond
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_array_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %8)
  %cmp1 = icmp ult i64 %3, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded
  %9 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %10 = load i64, i64* %i, align 8
  %11 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %for.body
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_array_t_t*
  %call4 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %14, i64 %10)
  %15 = bitcast %Tstruct.Spl_json_value_t_t* %call4 to %Tstruct.json_value_t_t*
  %16 = bitcast %Tstruct.json_value_t_t* %15 to i8*
  %17 = call i64 @c_TPtoO(i8* %16)
  %18 = inttoptr i64 %17 to %Tstruct.Spl_json_value_t_t*
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %22)
  br label %for.inc

for.inc:                                          ; preds = %_Dynamic_check.succeeded6
  %23 = load i64, i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !11

_Dynamic_check.failed:                            ; preds = %for.cond
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed2:                           ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #8
  unreachable

for.end:                                          ; preds = %_Dynamic_check.succeeded
  %24 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %25 = ptrtoint %Tstruct.Spl_json_array_t_t* %24 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %for.end
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %28, i32 0, i32 2
  store i32 0, i32* %count, align 8
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed7:                           ; preds = %for.end
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded8, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_value(%Tstruct.json_array_t_t* %array, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %1 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %1, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_array_t_t* %2 to i32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %5 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false2
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %10, i32 0, i32 0
  %parent3 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent3, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %cmp4 = icmp ne i32 %12, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false2
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %13 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %15 = ptrtoint %Tstruct.Spl_json_array_t_t* %13 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %if.end
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_array_t_t*
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.json_array_t_t*, %Tstruct.json_value_t_t*)* @json_array_add to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %18, %Tstruct.Spl_json_value_t_t* %22)
  store i32 %call, i32* %retval, align 4
  br label %return

_Dynamic_check.failed5:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded8, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_string(%Tstruct.json_array_t_t* %array, i8* %string) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %string.addr = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i8* %string, i8** %string.addr, align 4
  %1 = load i8*, i8** %string.addr, align 4
  %2 = ptrtoint i8* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %3)
  %5 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to i8*
  %7 = call i64 @c_TPtoO(i8* %6)
  %8 = inttoptr i64 %7 to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %9, %Tstruct.Spl_json_value_t_t** %value, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %12 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %14 = ptrtoint %Tstruct.Spl_json_array_t_t* %12 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %if.end
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_array_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %17, %Tstruct.Spl_json_value_t_t* %21)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %_Dynamic_check.succeeded4
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %23 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %if.then7
  %26 = bitcast i8* %24 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %26)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed1:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %if.then7
  call void @llvm.trap() #8
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %_Dynamic_check.succeeded9, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_number(%Tstruct.json_array_t_t* %array, double %number) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %number.addr = alloca double, align 8
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store double %number, double* %number.addr, align 8
  %1 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %1)
  %2 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %3 = bitcast %Tstruct.json_value_t_t* %2 to i8*
  %4 = call i64 @c_TPtoO(i8* %3)
  %5 = inttoptr i64 %4 to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %6, %Tstruct.Spl_json_value_t_t** %value, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_array_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %14, %Tstruct.Spl_json_value_t_t* %18)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %19 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %20 = ptrtoint %Tstruct.Spl_json_value_t_t* %19 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %23 = bitcast i8* %21 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %23)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #8
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_boolean(%Tstruct.json_array_t_t* %array, i32 %boolean) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %boolean.addr = alloca i32, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %1 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %1)
  %2 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %3 = bitcast %Tstruct.json_value_t_t* %2 to i8*
  %4 = call i64 @c_TPtoO(i8* %3)
  %5 = inttoptr i64 %4 to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %6, %Tstruct.Spl_json_value_t_t** %value, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_array_t_t* %9 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_array_t_t*
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %14, %Tstruct.Spl_json_value_t_t* %18)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %19 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %20 = ptrtoint %Tstruct.Spl_json_value_t_t* %19 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %23 = bitcast i8* %21 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %23)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #8
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_null(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %1 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %2 = bitcast %Tstruct.json_value_t_t* %1 to i8*
  %3 = call i64 @c_TPtoO(i8* %2)
  %4 = inttoptr i64 %3 to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %5, %Tstruct.Spl_json_value_t_t** %value, align 4
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %9 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %10 = ptrtoint %Tstruct.Spl_json_array_t_t* %8 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %13 = bitcast i8* %11 to %Tstruct.Spl_json_array_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %9 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %13, %Tstruct.Spl_json_value_t_t* %17)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %22)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #8
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %23 = load i32, i32* %retval, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_value(%Tstruct.json_object_t_t* %object, i8* %name, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %i = alloca i64, align 8
  %old_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %1, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  store i64 0, i64* %i, align 8
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %old_value, align 4
  %2 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %2 to i32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 4
  %5 = ptrtoint i8* %4 to i32
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false4
  %12 = bitcast i8* %10 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 0
  %parent5 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent5, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %cmp6 = icmp ne i32 %14, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false4
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %15 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %16 = load i8*, i8** %name.addr, align 4
  %17 = ptrtoint %Tstruct.Spl_json_object_t_t* %15 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %if.end
  %20 = bitcast i8* %18 to %Tstruct.Spl_json_object_t_t*
  %21 = ptrtoint i8* %16 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %20, i8* %22)
  %24 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %25 = bitcast %Tstruct.json_value_t_t* %24 to i8*
  %26 = call i64 @c_TPtoO(i8* %25)
  %27 = inttoptr i64 %26 to %Tstruct.json_value_t_t*
  %28 = bitcast %Tstruct.json_value_t_t* %27 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %28, %Tstruct.Spl_json_value_t_t** %old_value, align 4
  %29 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %old_value, align 4
  %30 = ptrtoint %Tstruct.Spl_json_value_t_t* %29 to i32
  %cmp11 = icmp ne i32 %30, 0
  br i1 %cmp11, label %if.then12, label %if.end71

if.then12:                                        ; preds = %_Dynamic_check.succeeded10
  %31 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %old_value, align 4
  %32 = ptrtoint %Tstruct.Spl_json_value_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.then12
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %35)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %_Dynamic_check.succeeded14
  %36 = load i64, i64* %i, align 8
  %37 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %38 = ptrtoint %Tstruct.Spl_json_object_t_t* %37 to i32
  %39 = call i8* @c_fetch_pointer_from_offset(i32 %38)
  %40 = call i1 @c_isTaintedPointerToTaintedMem(i8* %39)
  br i1 %40, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %for.cond
  %41 = bitcast i8* %39 to %Tstruct.Spl_json_object_t_t*
  %call17 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %41)
  %cmp18 = icmp ult i64 %36, %call17
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded16
  %42 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %43 = ptrtoint %Tstruct.Spl_json_object_t_t* %42 to i32
  %44 = call i8* @c_fetch_pointer_from_offset(i32 %43)
  %45 = call i1 @c_isTaintedPointerToTaintedMem(i8* %44)
  br i1 %45, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %for.body
  %46 = bitcast i8* %44 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %46, i32 0, i32 1
  %names21 = bitcast i32* %names to i8***
  %47 = load i8**, i8*** %names21, align 4
  %48 = load i64, i64* %i, align 8
  %49 = ptrtoint i8** %47 to i32
  %50 = call i8* @c_fetch_pointer_from_offset(i32 %49)
  %51 = call i1 @c_isTaintedPointerToTaintedMem(i8* %50)
  br i1 %51, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded20
  %52 = bitcast i8* %50 to i8**
  %53 = bitcast i8** %52 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %53, i64 %48
  %54 = bitcast i32* %arrayidx to i8**
  %55 = bitcast i8** %54 to i8*
  %56 = call i64 @c_TPtoO(i8* %55)
  %57 = inttoptr i64 %56 to i8**
  %58 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %59 = ptrtoint %Tstruct.Spl_json_object_t_t* %58 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded23
  %62 = bitcast i8* %60 to %Tstruct.Spl_json_object_t_t*
  %names26 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %62, i32 0, i32 1
  %names27 = bitcast i32* %names26 to i8***
  %63 = load i8**, i8*** %names27, align 4
  %64 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %65 = ptrtoint %Tstruct.Spl_json_object_t_t* %64 to i32
  %66 = call i8* @c_fetch_pointer_from_offset(i32 %65)
  %67 = call i1 @c_isTaintedPointerToTaintedMem(i8* %66)
  br i1 %67, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %_Dynamic_check.succeeded25
  %68 = bitcast i8* %66 to %Tstruct.Spl_json_object_t_t*
  %names30 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %68, i32 0, i32 1
  %names31 = bitcast i32* %names30 to i8***
  %69 = load i8**, i8*** %names31, align 4
  %70 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %71 = ptrtoint %Tstruct.Spl_json_object_t_t* %70 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %_Dynamic_check.succeeded29
  %74 = bitcast i8* %72 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %74, i32 0, i32 4
  %75 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %75 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %69, i64 %idx.ext
  %76 = bitcast i8** %add.ptr to i8*
  %77 = call i64 @c_TPtoO(i8* %76)
  %78 = inttoptr i64 %77 to i8**
  %79 = bitcast i8** %63 to i8*
  %80 = call i64 @c_TPtoO(i8* %79)
  %81 = inttoptr i64 %80 to i8**
  %_Dynamic_check.lower = icmp ule i8** %81, %57
  %_Dynamic_check.upper = icmp ult i8** %57, %78
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %_Dynamic_check.succeeded33
  %82 = load i8*, i8** %54, align 8
  %83 = load i8*, i8** %name.addr, align 4
  %84 = ptrtoint i8* %82 to i64
  %85 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %84)
  %86 = ptrtoint i8* %83 to i64
  %87 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %86)
  %call36 = call i32 @t_strcmp(i8* %85, i8* %87)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end70

if.then38:                                        ; preds = %_Dynamic_check.succeeded35
  %88 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %89 = ptrtoint %Tstruct.Spl_json_object_t_t* %88 to i32
  %90 = call i8* @c_fetch_pointer_from_offset(i32 %89)
  %91 = call i1 @c_isTaintedPointerToTaintedMem(i8* %90)
  br i1 %91, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %if.then38
  %92 = bitcast i8* %90 to %Tstruct.Spl_json_object_t_t*
  %call41 = call %Tstruct.Spl_json_value_t_t* @json_object_get_wrapping_value(%Tstruct.Spl_json_object_t_t* %92)
  %93 = bitcast %Tstruct.Spl_json_value_t_t* %call41 to %Tstruct.json_value_t_t*
  %94 = bitcast %Tstruct.json_value_t_t* %93 to i8*
  %95 = call i64 @c_TPtoO(i8* %94)
  %96 = inttoptr i64 %95 to %Tstruct.json_value_t_t*
  %97 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %98 = ptrtoint %Tstruct.Spl_json_value_t_t* %97 to i32
  %99 = call i8* @c_fetch_pointer_from_offset(i32 %98)
  %100 = call i1 @c_isTaintedPointerToTaintedMem(i8* %99)
  br i1 %100, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %_Dynamic_check.succeeded40
  %101 = bitcast i8* %99 to %Tstruct.Spl_json_value_t_t*
  %parent44 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %101, i32 0, i32 0
  %parent45 = bitcast i32* %parent44 to %Tstruct.Spl_json_value_t_t**
  %102 = bitcast %Tstruct.json_value_t_t* %96 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %102, %Tstruct.Spl_json_value_t_t** %parent45, align 4
  %103 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %104 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %105 = ptrtoint %Tstruct.Spl_json_object_t_t* %104 to i32
  %106 = call i8* @c_fetch_pointer_from_offset(i32 %105)
  %107 = call i1 @c_isTaintedPointerToTaintedMem(i8* %106)
  br i1 %107, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded43
  %108 = bitcast i8* %106 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %108, i32 0, i32 2
  %values48 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %109 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values48, align 4
  %110 = load i64, i64* %i, align 8
  %111 = ptrtoint %Tstruct.Spl_json_value_t_t** %109 to i32
  %112 = call i8* @c_fetch_pointer_from_offset(i32 %111)
  %113 = call i1 @c_isTaintedPointerToTaintedMem(i8* %112)
  br i1 %113, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %_Dynamic_check.succeeded47
  %114 = bitcast i8* %112 to %Tstruct.Spl_json_value_t_t**
  %115 = bitcast %Tstruct.Spl_json_value_t_t** %114 to i32*
  %arrayidx51 = getelementptr inbounds i32, i32* %115, i64 %110
  %116 = bitcast i32* %arrayidx51 to %Tstruct.Spl_json_value_t_t**
  %117 = bitcast %Tstruct.Spl_json_value_t_t** %116 to i8*
  %118 = call i64 @c_TPtoO(i8* %117)
  %119 = inttoptr i64 %118 to %Tstruct.Spl_json_value_t_t**
  %120 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %121 = ptrtoint %Tstruct.Spl_json_object_t_t* %120 to i32
  %122 = call i8* @c_fetch_pointer_from_offset(i32 %121)
  %123 = call i1 @c_isTaintedPointerToTaintedMem(i8* %122)
  br i1 %123, label %_Dynamic_check.succeeded53, label %_Dynamic_check.failed52

_Dynamic_check.succeeded53:                       ; preds = %_Dynamic_check.succeeded50
  %124 = bitcast i8* %122 to %Tstruct.Spl_json_object_t_t*
  %values54 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %124, i32 0, i32 2
  %values55 = bitcast i32* %values54 to %Tstruct.Spl_json_value_t_t***
  %125 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values55, align 4
  %126 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %127 = ptrtoint %Tstruct.Spl_json_object_t_t* %126 to i32
  %128 = call i8* @c_fetch_pointer_from_offset(i32 %127)
  %129 = call i1 @c_isTaintedPointerToTaintedMem(i8* %128)
  br i1 %129, label %_Dynamic_check.succeeded57, label %_Dynamic_check.failed56

_Dynamic_check.succeeded57:                       ; preds = %_Dynamic_check.succeeded53
  %130 = bitcast i8* %128 to %Tstruct.Spl_json_object_t_t*
  %values58 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %130, i32 0, i32 2
  %values59 = bitcast i32* %values58 to %Tstruct.Spl_json_value_t_t***
  %131 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values59, align 4
  %132 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %133 = ptrtoint %Tstruct.Spl_json_object_t_t* %132 to i32
  %134 = call i8* @c_fetch_pointer_from_offset(i32 %133)
  %135 = call i1 @c_isTaintedPointerToTaintedMem(i8* %134)
  br i1 %135, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded57
  %136 = bitcast i8* %134 to %Tstruct.Spl_json_object_t_t*
  %capacity62 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %136, i32 0, i32 4
  %137 = load i32, i32* %capacity62, align 8
  %idx.ext63 = zext i32 %137 to i64
  %add.ptr64 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %131, i64 %idx.ext63
  %138 = bitcast %Tstruct.Spl_json_value_t_t** %131 to i32*
  %139 = getelementptr inbounds i32, i32* %138, i64 %idx.ext63
  %140 = bitcast i32* %139 to %Tstruct.Spl_json_value_t_t**
  %141 = bitcast %Tstruct.Spl_json_value_t_t** %140 to i8*
  %142 = call i64 @c_TPtoO(i8* %141)
  %143 = inttoptr i64 %142 to %Tstruct.Spl_json_value_t_t**
  %144 = bitcast %Tstruct.Spl_json_value_t_t** %125 to i8*
  %145 = call i64 @c_TPtoO(i8* %144)
  %146 = inttoptr i64 %145 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower65 = icmp ule %Tstruct.Spl_json_value_t_t** %146, %119
  %_Dynamic_check.upper66 = icmp ult %Tstruct.Spl_json_value_t_t** %119, %143
  %_Dynamic_check.range67 = and i1 %_Dynamic_check.lower65, %_Dynamic_check.upper66
  br i1 %_Dynamic_check.range67, label %_Dynamic_check.succeeded69, label %_Dynamic_check.failed68

_Dynamic_check.succeeded69:                       ; preds = %_Dynamic_check.succeeded61
  store %Tstruct.Spl_json_value_t_t* %103, %Tstruct.Spl_json_value_t_t** %116, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed7:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed13:                          ; preds = %if.then12
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %for.cond
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed19:                          ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed28:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed32:                          ; preds = %_Dynamic_check.succeeded29
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed34:                          ; preds = %_Dynamic_check.succeeded33
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed39:                          ; preds = %if.then38
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed42:                          ; preds = %_Dynamic_check.succeeded40
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded43
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed49:                          ; preds = %_Dynamic_check.succeeded47
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed52:                          ; preds = %_Dynamic_check.succeeded50
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed56:                          ; preds = %_Dynamic_check.succeeded53
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded57
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed68:                          ; preds = %_Dynamic_check.succeeded61
  call void @llvm.trap() #8
  unreachable

if.end70:                                         ; preds = %_Dynamic_check.succeeded35
  br label %for.inc

for.inc:                                          ; preds = %if.end70
  %147 = load i64, i64* %i, align 8
  %inc = add i64 %147, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %_Dynamic_check.succeeded16
  br label %if.end71

if.end71:                                         ; preds = %for.end, %_Dynamic_check.succeeded10
  %148 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %149 = load i8*, i8** %name.addr, align 4
  %150 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %151 = ptrtoint %Tstruct.Spl_json_object_t_t* %148 to i32
  %152 = call i8* @c_fetch_pointer_from_offset(i32 %151)
  %153 = call i1 @c_isTaintedPointerToTaintedMem(i8* %152)
  br i1 %153, label %_Dynamic_check.succeeded73, label %_Dynamic_check.failed72

_Dynamic_check.succeeded73:                       ; preds = %if.end71
  %154 = bitcast i8* %152 to %Tstruct.Spl_json_object_t_t*
  %155 = ptrtoint i8* %149 to i32
  %156 = call i8* @c_fetch_pointer_from_offset(i32 %155)
  %157 = call i1 @c_isTaintedPointerToTaintedMem(i8* %156)
  br i1 %157, label %_Dynamic_check.succeeded75, label %_Dynamic_check.failed74

_Dynamic_check.succeeded75:                       ; preds = %_Dynamic_check.succeeded73
  %158 = ptrtoint %Tstruct.Spl_json_value_t_t* %150 to i32
  %159 = call i8* @c_fetch_pointer_from_offset(i32 %158)
  %160 = call i1 @c_isTaintedPointerToTaintedMem(i8* %159)
  br i1 %160, label %_Dynamic_check.succeeded77, label %_Dynamic_check.failed76

_Dynamic_check.succeeded77:                       ; preds = %_Dynamic_check.succeeded75
  %161 = bitcast i8* %159 to %Tstruct.Spl_json_value_t_t*
  %call78 = call i32 bitcast (i32 (%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*)* @json_object_add to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %154, i8* %156, %Tstruct.Spl_json_value_t_t* %161)
  store i32 %call78, i32* %retval, align 4
  br label %return

_Dynamic_check.failed72:                          ; preds = %if.end71
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed74:                          ; preds = %_Dynamic_check.succeeded73
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed76:                          ; preds = %_Dynamic_check.succeeded75
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded77, %_Dynamic_check.succeeded69, %if.then
  %162 = load i32, i32* %retval, align 4
  ret i32 %162
}

declare dso_local i32 @t_strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_string(%Tstruct.json_object_t_t* %object, i8* %name, i8* %string) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %string.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %string, i8** %string.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = load i8*, i8** %string.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %5)
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = call i64 @c_TPtoO(i8* %8)
  %10 = inttoptr i64 %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_object_t_t*
  %15 = ptrtoint i8* %2 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call7 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %14, i8* %16, %Tstruct.Spl_json_value_t_t* %21)
  ret i32 %call7

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_number(%Tstruct.json_object_t_t* %object, i8* %name, double %number) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %number.addr = alloca double, align 8
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store double %number, double* %number.addr, align 8
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %3)
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to i8*
  %6 = call i64 @c_TPtoO(i8* %5)
  %7 = inttoptr i64 %6 to %Tstruct.Spl_json_value_t_t*
  %8 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %11 = bitcast i8* %9 to %Tstruct.Spl_json_object_t_t*
  %12 = ptrtoint i8* %2 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %11, i8* %13, %Tstruct.Spl_json_value_t_t* %18)
  ret i32 %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_boolean(%Tstruct.json_object_t_t* %object, i8* %name, i32 %boolean) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %boolean.addr = alloca i32, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %3)
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to i8*
  %6 = call i64 @c_TPtoO(i8* %5)
  %7 = inttoptr i64 %6 to %Tstruct.Spl_json_value_t_t*
  %8 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %11 = bitcast i8* %9 to %Tstruct.Spl_json_object_t_t*
  %12 = ptrtoint i8* %2 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %11, i8* %13, %Tstruct.Spl_json_value_t_t* %18)
  ret i32 %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_null(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %3 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %4 = bitcast %Tstruct.json_value_t_t* %3 to i8*
  %5 = call i64 @c_TPtoO(i8* %4)
  %6 = inttoptr i64 %5 to %Tstruct.Spl_json_value_t_t*
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %2 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12, %Tstruct.Spl_json_value_t_t* %17)
  ret i32 %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %object, i8* %name, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %dot_pos = alloca i8*, align 4
  %temp_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %new_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %new_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %status = alloca i32, align 4
  %name_len = alloca i64, align 8
  %after_dot = alloca i8*, align 4
  %name_with_len = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %1, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  store i8* null, i8** %dot_pos, align 4
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_object_t_t* null, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  store %Tstruct.Spl_json_object_t_t* null, %Tstruct.Spl_json_object_t_t** %new_object, align 4
  store i32 -1, i32* %status, align 4
  store i64 0, i64* %name_len, align 8
  %2 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %2 to i32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 4
  %5 = ptrtoint i8* %4 to i32
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %cmp3 = icmp eq i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %8 = load i8*, i8** %name.addr, align 4
  %9 = ptrtoint i8* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %call = call i8* @t_strchr(i8* %10, i32 46)
  store i8* %call, i8** %dot_pos, align 4
  %12 = load i8*, i8** %dot_pos, align 4
  %13 = ptrtoint i8* %12 to i32
  %cmp4 = icmp eq i32 %13, 0
  br i1 %cmp4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %_Dynamic_check.succeeded
  %14 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %15 = load i8*, i8** %name.addr, align 4
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %17 = ptrtoint %Tstruct.Spl_json_object_t_t* %14 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %20 = bitcast i8* %18 to %Tstruct.Spl_json_object_t_t*
  %21 = ptrtoint i8* %15 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded7
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded9
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  %call12 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %20, i8* %22, %Tstruct.Spl_json_value_t_t* %27)
  store i32 %call12, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded9
  call void @llvm.trap() #8
  unreachable

if.end13:                                         ; preds = %_Dynamic_check.succeeded
  store i8* null, i8** %after_dot, align 4
  %28 = load i8*, i8** %dot_pos, align 4
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %add.ptr, i8** %after_dot, align 4
  %29 = load i8*, i8** %dot_pos, align 4
  %30 = load i8*, i8** %name.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  store i64 %sub.ptr.sub, i64* %name_len, align 8
  store i8* null, i8** %name_with_len, align 4
  %31 = load i8*, i8** %name.addr, align 4
  store i8* %31, i8** %name_with_len, align 4
  %32 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %33 = load i8*, i8** %name_with_len, align 4
  %34 = load i64, i64* %name_len, align 8
  %35 = ptrtoint %Tstruct.Spl_json_object_t_t* %32 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %if.end13
  %38 = bitcast i8* %36 to %Tstruct.Spl_json_object_t_t*
  %39 = ptrtoint i8* %33 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.succeeded15
  %call18 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (%Tstruct.json_object_t_t*, i8*, i64)* @json_object_getn_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*, i64)*)(%Tstruct.Spl_json_object_t_t* %38, i8* %40, i64 %34)
  %42 = bitcast %Tstruct.Spl_json_value_t_t* %call18 to %Tstruct.json_value_t_t*
  %43 = bitcast %Tstruct.json_value_t_t* %42 to i8*
  %44 = call i64 @c_TPtoO(i8* %43)
  %45 = inttoptr i64 %44 to %Tstruct.json_value_t_t*
  %46 = bitcast %Tstruct.json_value_t_t* %45 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %46, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %47 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %tobool = icmp ne %Tstruct.Spl_json_value_t_t* %47, null
  br i1 %tobool, label %if.then19, label %if.end36

if.then19:                                        ; preds = %_Dynamic_check.succeeded17
  %48 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %49 = ptrtoint %Tstruct.Spl_json_value_t_t* %48 to i32
  %50 = call i8* @c_fetch_pointer_from_offset(i32 %49)
  %51 = call i1 @c_isTaintedPointerToTaintedMem(i8* %50)
  br i1 %51, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %if.then19
  %52 = bitcast i8* %50 to %Tstruct.Spl_json_value_t_t*
  %call22 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %52)
  %cmp23 = icmp ne i32 %call22, 4
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %_Dynamic_check.succeeded21
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed14:                          ; preds = %if.end13
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed20:                          ; preds = %if.then19
  call void @llvm.trap() #8
  unreachable

if.end25:                                         ; preds = %_Dynamic_check.succeeded21
  %53 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %54 = ptrtoint %Tstruct.Spl_json_value_t_t* %53 to i32
  %55 = call i8* @c_fetch_pointer_from_offset(i32 %54)
  %56 = call i1 @c_isTaintedPointerToTaintedMem(i8* %55)
  br i1 %56, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %if.end25
  %57 = bitcast i8* %55 to %Tstruct.Spl_json_value_t_t*
  %call28 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %57)
  %58 = bitcast %Tstruct.Spl_json_object_t_t* %call28 to %Tstruct.json_object_t_t*
  %59 = bitcast %Tstruct.json_object_t_t* %58 to i8*
  %60 = call i64 @c_TPtoO(i8* %59)
  %61 = inttoptr i64 %60 to %Tstruct.json_object_t_t*
  %62 = bitcast %Tstruct.json_object_t_t* %61 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %62, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %63 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %64 = load i8*, i8** %after_dot, align 4
  %65 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %66 = ptrtoint %Tstruct.Spl_json_object_t_t* %63 to i32
  %67 = call i8* @c_fetch_pointer_from_offset(i32 %66)
  %68 = call i1 @c_isTaintedPointerToTaintedMem(i8* %67)
  br i1 %68, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %_Dynamic_check.succeeded27
  %69 = bitcast i8* %67 to %Tstruct.Spl_json_object_t_t*
  %70 = ptrtoint i8* %64 to i32
  %71 = call i8* @c_fetch_pointer_from_offset(i32 %70)
  %72 = call i1 @c_isTaintedPointerToTaintedMem(i8* %71)
  br i1 %72, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.succeeded30
  %73 = ptrtoint %Tstruct.Spl_json_value_t_t* %65 to i32
  %74 = call i8* @c_fetch_pointer_from_offset(i32 %73)
  %75 = call i1 @c_isTaintedPointerToTaintedMem(i8* %74)
  br i1 %75, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %_Dynamic_check.succeeded32
  %76 = bitcast i8* %74 to %Tstruct.Spl_json_value_t_t*
  %call35 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %69, i8* %71, %Tstruct.Spl_json_value_t_t* %76)
  store i32 %call35, i32* %retval, align 4
  br label %return

_Dynamic_check.failed26:                          ; preds = %if.end25
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed29:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed31:                          ; preds = %_Dynamic_check.succeeded30
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed33:                          ; preds = %_Dynamic_check.succeeded32
  call void @llvm.trap() #8
  unreachable

if.end36:                                         ; preds = %_Dynamic_check.succeeded17
  %call37 = call %Tstruct.Spl_json_value_t_t* @json_value_init_object()
  %77 = bitcast %Tstruct.Spl_json_value_t_t* %call37 to %Tstruct.json_value_t_t*
  %78 = bitcast %Tstruct.json_value_t_t* %77 to i8*
  %79 = call i64 @c_TPtoO(i8* %78)
  %80 = inttoptr i64 %79 to %Tstruct.json_value_t_t*
  %81 = bitcast %Tstruct.json_value_t_t* %80 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %81, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %82 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %83 = ptrtoint %Tstruct.Spl_json_value_t_t* %82 to i32
  %cmp38 = icmp eq i32 %83, 0
  br i1 %cmp38, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  store i32 -1, i32* %retval, align 4
  br label %return

if.end40:                                         ; preds = %if.end36
  %84 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %85 = ptrtoint %Tstruct.Spl_json_value_t_t* %84 to i32
  %86 = call i8* @c_fetch_pointer_from_offset(i32 %85)
  %87 = call i1 @c_isTaintedPointerToTaintedMem(i8* %86)
  br i1 %87, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %if.end40
  %88 = bitcast i8* %86 to %Tstruct.Spl_json_value_t_t*
  %call43 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %88)
  %89 = bitcast %Tstruct.Spl_json_object_t_t* %call43 to %Tstruct.json_object_t_t*
  %90 = bitcast %Tstruct.json_object_t_t* %89 to i8*
  %91 = call i64 @c_TPtoO(i8* %90)
  %92 = inttoptr i64 %91 to %Tstruct.json_object_t_t*
  %93 = bitcast %Tstruct.json_object_t_t* %92 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %93, %Tstruct.Spl_json_object_t_t** %new_object, align 4
  %94 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %new_object, align 4
  %95 = load i8*, i8** %after_dot, align 4
  %96 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %97 = ptrtoint %Tstruct.Spl_json_object_t_t* %94 to i32
  %98 = call i8* @c_fetch_pointer_from_offset(i32 %97)
  %99 = call i1 @c_isTaintedPointerToTaintedMem(i8* %98)
  br i1 %99, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %_Dynamic_check.succeeded42
  %100 = bitcast i8* %98 to %Tstruct.Spl_json_object_t_t*
  %101 = ptrtoint i8* %95 to i32
  %102 = call i8* @c_fetch_pointer_from_offset(i32 %101)
  %103 = call i1 @c_isTaintedPointerToTaintedMem(i8* %102)
  br i1 %103, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded45
  %104 = ptrtoint %Tstruct.Spl_json_value_t_t* %96 to i32
  %105 = call i8* @c_fetch_pointer_from_offset(i32 %104)
  %106 = call i1 @c_isTaintedPointerToTaintedMem(i8* %105)
  br i1 %106, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %_Dynamic_check.succeeded47
  %107 = bitcast i8* %105 to %Tstruct.Spl_json_value_t_t*
  %call50 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %100, i8* %102, %Tstruct.Spl_json_value_t_t* %107)
  store i32 %call50, i32* %status, align 4
  %108 = load i32, i32* %status, align 4
  %cmp51 = icmp ne i32 %108, 0
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %_Dynamic_check.succeeded49
  %109 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %110 = ptrtoint %Tstruct.Spl_json_value_t_t* %109 to i32
  %111 = call i8* @c_fetch_pointer_from_offset(i32 %110)
  %112 = call i1 @c_isTaintedPointerToTaintedMem(i8* %111)
  br i1 %112, label %_Dynamic_check.succeeded54, label %_Dynamic_check.failed53

_Dynamic_check.succeeded54:                       ; preds = %if.then52
  %113 = bitcast i8* %111 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %113)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed41:                          ; preds = %if.end40
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed44:                          ; preds = %_Dynamic_check.succeeded42
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded45
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed48:                          ; preds = %_Dynamic_check.succeeded47
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed53:                          ; preds = %if.then52
  call void @llvm.trap() #8
  unreachable

if.end55:                                         ; preds = %_Dynamic_check.succeeded49
  %114 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %115 = load i8*, i8** %name_with_len, align 4
  %116 = load i64, i64* %name_len, align 8
  %117 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %118 = ptrtoint %Tstruct.Spl_json_object_t_t* %114 to i32
  %119 = call i8* @c_fetch_pointer_from_offset(i32 %118)
  %120 = call i1 @c_isTaintedPointerToTaintedMem(i8* %119)
  br i1 %120, label %_Dynamic_check.succeeded57, label %_Dynamic_check.failed56

_Dynamic_check.succeeded57:                       ; preds = %if.end55
  %121 = bitcast i8* %119 to %Tstruct.Spl_json_object_t_t*
  %122 = ptrtoint i8* %115 to i32
  %123 = call i8* @c_fetch_pointer_from_offset(i32 %122)
  %124 = call i1 @c_isTaintedPointerToTaintedMem(i8* %123)
  br i1 %124, label %_Dynamic_check.succeeded59, label %_Dynamic_check.failed58

_Dynamic_check.succeeded59:                       ; preds = %_Dynamic_check.succeeded57
  %125 = ptrtoint %Tstruct.Spl_json_value_t_t* %117 to i32
  %126 = call i8* @c_fetch_pointer_from_offset(i32 %125)
  %127 = call i1 @c_isTaintedPointerToTaintedMem(i8* %126)
  br i1 %127, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded59
  %128 = bitcast i8* %126 to %Tstruct.Spl_json_value_t_t*
  %call62 = call i32 @json_object_addn(%Tstruct.Spl_json_object_t_t* %121, i8* %123, i64 %116, %Tstruct.Spl_json_value_t_t* %128)
  store i32 %call62, i32* %status, align 4
  %129 = load i32, i32* %status, align 4
  %cmp63 = icmp ne i32 %129, 0
  br i1 %cmp63, label %if.then64, label %if.end72

if.then64:                                        ; preds = %_Dynamic_check.succeeded61
  %130 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %new_object, align 4
  %131 = load i8*, i8** %after_dot, align 4
  %132 = ptrtoint %Tstruct.Spl_json_object_t_t* %130 to i32
  %133 = call i8* @c_fetch_pointer_from_offset(i32 %132)
  %134 = call i1 @c_isTaintedPointerToTaintedMem(i8* %133)
  br i1 %134, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %if.then64
  %135 = bitcast i8* %133 to %Tstruct.Spl_json_object_t_t*
  %136 = ptrtoint i8* %131 to i32
  %137 = call i8* @c_fetch_pointer_from_offset(i32 %136)
  %138 = call i1 @c_isTaintedPointerToTaintedMem(i8* %137)
  br i1 %138, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded66
  %call69 = call i32 @json_object_dotremove_internal(%Tstruct.Spl_json_object_t_t* %135, i8* %137, i32 0)
  %139 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %140 = ptrtoint %Tstruct.Spl_json_value_t_t* %139 to i32
  %141 = call i8* @c_fetch_pointer_from_offset(i32 %140)
  %142 = call i1 @c_isTaintedPointerToTaintedMem(i8* %141)
  br i1 %142, label %_Dynamic_check.succeeded71, label %_Dynamic_check.failed70

_Dynamic_check.succeeded71:                       ; preds = %_Dynamic_check.succeeded68
  %143 = bitcast i8* %141 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %143)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed56:                          ; preds = %if.end55
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed58:                          ; preds = %_Dynamic_check.succeeded57
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded59
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed65:                          ; preds = %if.then64
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded66
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed70:                          ; preds = %_Dynamic_check.succeeded68
  call void @llvm.trap() #8
  unreachable

if.end72:                                         ; preds = %_Dynamic_check.succeeded61
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end72, %_Dynamic_check.succeeded71, %_Dynamic_check.succeeded54, %if.then39, %_Dynamic_check.succeeded34, %if.then24, %_Dynamic_check.succeeded11, %if.then
  %144 = load i32, i32* %retval, align 4
  ret i32 %144
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %object, i8* %name, i8* %string) #2 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %string.addr = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8* %string, i8** %string.addr, align 4
  %1 = load i8*, i8** %string.addr, align 4
  %2 = ptrtoint i8* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %3)
  %5 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to i8*
  %7 = call i64 @c_TPtoO(i8* %6)
  %8 = inttoptr i64 %7 to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %9, %Tstruct.Spl_json_value_t_t** %value, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %12 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %13 = load i8*, i8** %name.addr, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %15 = ptrtoint %Tstruct.Spl_json_object_t_t* %12 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %if.end
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_object_t_t*
  %19 = ptrtoint i8* %13 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %22 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %25 = bitcast i8* %23 to %Tstruct.Spl_json_value_t_t*
  %call7 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %18, i8* %20, %Tstruct.Spl_json_value_t_t* %25)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %_Dynamic_check.succeeded6
  %26 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %27 = ptrtoint %Tstruct.Spl_json_value_t_t* %26 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %if.then9
  %30 = bitcast i8* %28 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %30)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed1:                           ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed10:                          ; preds = %if.then9
  call void @llvm.trap() #8
  unreachable

if.end12:                                         ; preds = %_Dynamic_check.succeeded6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %_Dynamic_check.succeeded11, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_number(%Tstruct.json_object_t_t* %object, i8* %name, double %number) #2 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %number.addr = alloca double, align 8
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store double %number, double* %number.addr, align 8
  %1 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_number(double %1)
  %2 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %3 = bitcast %Tstruct.json_value_t_t* %2 to i8*
  %4 = call i64 @c_TPtoO(i8* %3)
  %5 = inttoptr i64 %4 to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %6, %Tstruct.Spl_json_value_t_t** %value, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %10 = load i8*, i8** %name.addr, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %9 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_object_t_t*
  %16 = ptrtoint i8* %10 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %15, i8* %17, %Tstruct.Spl_json_value_t_t* %22)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %_Dynamic_check.succeeded4
  %23 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %if.then7
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %27)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %if.then7
  call void @llvm.trap() #8
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %_Dynamic_check.succeeded9, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_boolean(%Tstruct.json_object_t_t* %object, i8* %name, i32 %boolean) #2 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %boolean.addr = alloca i32, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %1 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %1)
  %2 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %3 = bitcast %Tstruct.json_value_t_t* %2 to i8*
  %4 = call i64 @c_TPtoO(i8* %3)
  %5 = inttoptr i64 %4 to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %6, %Tstruct.Spl_json_value_t_t** %value, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %10 = load i8*, i8** %name.addr, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %9 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_object_t_t*
  %16 = ptrtoint i8* %10 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %15, i8* %17, %Tstruct.Spl_json_value_t_t* %22)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %_Dynamic_check.succeeded4
  %23 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %if.then7
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %27)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %if.then7
  call void @llvm.trap() #8
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %_Dynamic_check.succeeded9, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_null(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %1 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %2 = bitcast %Tstruct.json_value_t_t* %1 to i8*
  %3 = call i64 @c_TPtoO(i8* %2)
  %4 = inttoptr i64 %3 to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %5, %Tstruct.Spl_json_value_t_t** %value, align 4
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %9 = load i8*, i8** %name.addr, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_object_t_t* %8 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_object_t_t*
  %15 = ptrtoint i8* %9 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %14, i8* %16, %Tstruct.Spl_json_value_t_t* %21)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %_Dynamic_check.succeeded4
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %23 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %if.then7
  %26 = bitcast i8* %24 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %26)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed8:                           ; preds = %if.then7
  call void @llvm.trap() #8
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %_Dynamic_check.succeeded9, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_remove(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call i32 @json_object_remove_internal(%Tstruct.Spl_json_object_t_t* %6, i8* %8, i32 1)
  ret i32 %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotremove(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %7 = ptrtoint i8* %2 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call i32 @json_object_dotremove_internal(%Tstruct.Spl_json_object_t_t* %6, i8* %8, i32 1)
  ret i32 %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_object_clear(%Tstruct.json_object_t_t* %object) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %1 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_object_t_t* %1 to i32
  %3 = ptrtoint i8* %call to i64
  %4 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %3)
  %call1 = call i64 @w2c_json_object_clear(i8* %4, i32 %2)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

declare dso_local i64 @w2c_json_object_clear(i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_validate(%Tstruct.json_value_t_t* %schema, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %schema.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_schema_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %temp_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %schema_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %value_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %schema_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %value_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %schema_type = alloca i32, align 4
  %value_type = alloca i32, align 4
  %key = alloca i8*, align 4
  %i = alloca i64, align 8
  %count = alloca i64, align 8
  %0 = bitcast %Tstruct.json_value_t_t* %schema to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %1 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %1, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %temp_schema_value, align 4
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  store %Tstruct.Spl_json_array_t_t* null, %Tstruct.Spl_json_array_t_t** %schema_array, align 4
  store %Tstruct.Spl_json_array_t_t* null, %Tstruct.Spl_json_array_t_t** %value_array, align 4
  store %Tstruct.Spl_json_object_t_t* null, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  store %Tstruct.Spl_json_object_t_t* null, %Tstruct.Spl_json_object_t_t** %value_object, align 4
  store i32 -1, i32* %schema_type, align 4
  store i32 -1, i32* %value_type, align 4
  store i8* null, i8** %key, align 4
  store i64 0, i64* %i, align 8
  store i64 0, i64* %count, align 8
  %2 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_value_t_t* %2 to i32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %5 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_value_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %10)
  store i32 %call, i32* %schema_type, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_value_t_t*
  %call4 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %15)
  store i32 %call4, i32* %value_type, align 4
  %16 = load i32, i32* %schema_type, align 4
  %17 = load i32, i32* %value_type, align 4
  %cmp5 = icmp ne i32 %16, %17
  br i1 %cmp5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded3
  %18 = load i32, i32* %schema_type, align 4
  %cmp6 = icmp ne i32 %18, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

if.end8:                                          ; preds = %land.lhs.true, %_Dynamic_check.succeeded3
  %19 = load i32, i32* %schema_type, align 4
  switch i32 %19, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb39
    i32 2, label %sw.bb88
    i32 3, label %sw.bb88
    i32 6, label %sw.bb88
    i32 1, label %sw.bb88
    i32 -1, label %sw.bb89
  ]

sw.bb:                                            ; preds = %if.end8
  %20 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %20 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %sw.bb
  %24 = bitcast i8* %22 to %Tstruct.Spl_json_value_t_t*
  %call11 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %24)
  %25 = bitcast %Tstruct.Spl_json_array_t_t* %call11 to %Tstruct.json_array_t_t*
  %26 = bitcast %Tstruct.json_array_t_t* %25 to i8*
  %27 = call i64 @c_TPtoO(i8* %26)
  %28 = inttoptr i64 %27 to %Tstruct.json_array_t_t*
  %29 = bitcast %Tstruct.json_array_t_t* %28 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %29, %Tstruct.Spl_json_array_t_t** %schema_array, align 4
  %30 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %31 = ptrtoint %Tstruct.Spl_json_value_t_t* %30 to i32
  %32 = call i8* @c_fetch_pointer_from_offset(i32 %31)
  %33 = call i1 @c_isTaintedPointerToTaintedMem(i8* %32)
  br i1 %33, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded10
  %34 = bitcast i8* %32 to %Tstruct.Spl_json_value_t_t*
  %call14 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %34)
  %35 = bitcast %Tstruct.Spl_json_array_t_t* %call14 to %Tstruct.json_array_t_t*
  %36 = bitcast %Tstruct.json_array_t_t* %35 to i8*
  %37 = call i64 @c_TPtoO(i8* %36)
  %38 = inttoptr i64 %37 to %Tstruct.json_array_t_t*
  %39 = bitcast %Tstruct.json_array_t_t* %38 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %39, %Tstruct.Spl_json_array_t_t** %value_array, align 4
  %40 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %schema_array, align 4
  %41 = ptrtoint %Tstruct.Spl_json_array_t_t* %40 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded13
  %44 = bitcast i8* %42 to %Tstruct.Spl_json_array_t_t*
  %call17 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %44)
  store i64 %call17, i64* %count, align 8
  %45 = load i64, i64* %count, align 8
  %cmp18 = icmp eq i64 %45, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %_Dynamic_check.succeeded16
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed9:                           ; preds = %sw.bb
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded13
  call void @llvm.trap() #8
  unreachable

if.end20:                                         ; preds = %_Dynamic_check.succeeded16
  %46 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %schema_array, align 4
  %47 = ptrtoint %Tstruct.Spl_json_array_t_t* %46 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %if.end20
  %50 = bitcast i8* %48 to %Tstruct.Spl_json_array_t_t*
  %call23 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %50, i64 0)
  %51 = bitcast %Tstruct.Spl_json_value_t_t* %call23 to %Tstruct.json_value_t_t*
  %52 = bitcast %Tstruct.json_value_t_t* %51 to i8*
  %53 = call i64 @c_TPtoO(i8* %52)
  %54 = inttoptr i64 %53 to %Tstruct.json_value_t_t*
  %55 = bitcast %Tstruct.json_value_t_t* %54 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %55, %Tstruct.Spl_json_value_t_t** %temp_schema_value, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %_Dynamic_check.succeeded22
  %56 = load i64, i64* %i, align 8
  %57 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %value_array, align 4
  %58 = ptrtoint %Tstruct.Spl_json_array_t_t* %57 to i32
  %59 = call i8* @c_fetch_pointer_from_offset(i32 %58)
  %60 = call i1 @c_isTaintedPointerToTaintedMem(i8* %59)
  br i1 %60, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %for.cond
  %61 = bitcast i8* %59 to %Tstruct.Spl_json_array_t_t*
  %call26 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %61)
  %cmp27 = icmp ult i64 %56, %call26
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded25
  %62 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %value_array, align 4
  %63 = load i64, i64* %i, align 8
  %64 = ptrtoint %Tstruct.Spl_json_array_t_t* %62 to i32
  %65 = call i8* @c_fetch_pointer_from_offset(i32 %64)
  %66 = call i1 @c_isTaintedPointerToTaintedMem(i8* %65)
  br i1 %66, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %for.body
  %67 = bitcast i8* %65 to %Tstruct.Spl_json_array_t_t*
  %call30 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %67, i64 %63)
  %68 = bitcast %Tstruct.Spl_json_value_t_t* %call30 to %Tstruct.json_value_t_t*
  %69 = bitcast %Tstruct.json_value_t_t* %68 to i8*
  %70 = call i64 @c_TPtoO(i8* %69)
  %71 = inttoptr i64 %70 to %Tstruct.json_value_t_t*
  %72 = bitcast %Tstruct.json_value_t_t* %71 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %72, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %73 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_schema_value, align 4
  %74 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %75 = ptrtoint %Tstruct.Spl_json_value_t_t* %73 to i32
  %76 = call i8* @c_fetch_pointer_from_offset(i32 %75)
  %77 = call i1 @c_isTaintedPointerToTaintedMem(i8* %76)
  br i1 %77, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.succeeded29
  %78 = bitcast i8* %76 to %Tstruct.Spl_json_value_t_t*
  %79 = ptrtoint %Tstruct.Spl_json_value_t_t* %74 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %_Dynamic_check.succeeded32
  %82 = bitcast i8* %80 to %Tstruct.Spl_json_value_t_t*
  %call35 = call i32 @json_validate(%Tstruct.Spl_json_value_t_t* %78, %Tstruct.Spl_json_value_t_t* %82)
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %_Dynamic_check.succeeded34
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed21:                          ; preds = %if.end20
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed24:                          ; preds = %for.cond
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed28:                          ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed31:                          ; preds = %_Dynamic_check.succeeded29
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed33:                          ; preds = %_Dynamic_check.succeeded32
  call void @llvm.trap() #8
  unreachable

if.end38:                                         ; preds = %_Dynamic_check.succeeded34
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %83 = load i64, i64* %i, align 8
  %inc = add i64 %83, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %_Dynamic_check.succeeded25
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb39:                                          ; preds = %if.end8
  %84 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %85 = ptrtoint %Tstruct.Spl_json_value_t_t* %84 to i32
  %86 = call i8* @c_fetch_pointer_from_offset(i32 %85)
  %87 = call i1 @c_isTaintedPointerToTaintedMem(i8* %86)
  br i1 %87, label %_Dynamic_check.succeeded41, label %_Dynamic_check.failed40

_Dynamic_check.succeeded41:                       ; preds = %sw.bb39
  %88 = bitcast i8* %86 to %Tstruct.Spl_json_value_t_t*
  %call42 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %88)
  %89 = bitcast %Tstruct.Spl_json_object_t_t* %call42 to %Tstruct.json_object_t_t*
  %90 = bitcast %Tstruct.json_object_t_t* %89 to i8*
  %91 = call i64 @c_TPtoO(i8* %90)
  %92 = inttoptr i64 %91 to %Tstruct.json_object_t_t*
  %93 = bitcast %Tstruct.json_object_t_t* %92 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %93, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  %94 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %95 = ptrtoint %Tstruct.Spl_json_value_t_t* %94 to i32
  %96 = call i8* @c_fetch_pointer_from_offset(i32 %95)
  %97 = call i1 @c_isTaintedPointerToTaintedMem(i8* %96)
  br i1 %97, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %_Dynamic_check.succeeded41
  %98 = bitcast i8* %96 to %Tstruct.Spl_json_value_t_t*
  %call45 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %98)
  %99 = bitcast %Tstruct.Spl_json_object_t_t* %call45 to %Tstruct.json_object_t_t*
  %100 = bitcast %Tstruct.json_object_t_t* %99 to i8*
  %101 = call i64 @c_TPtoO(i8* %100)
  %102 = inttoptr i64 %101 to %Tstruct.json_object_t_t*
  %103 = bitcast %Tstruct.json_object_t_t* %102 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %103, %Tstruct.Spl_json_object_t_t** %value_object, align 4
  %104 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  %105 = ptrtoint %Tstruct.Spl_json_object_t_t* %104 to i32
  %106 = call i8* @c_fetch_pointer_from_offset(i32 %105)
  %107 = call i1 @c_isTaintedPointerToTaintedMem(i8* %106)
  br i1 %107, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded44
  %108 = bitcast i8* %106 to %Tstruct.Spl_json_object_t_t*
  %call48 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %108)
  store i64 %call48, i64* %count, align 8
  %109 = load i64, i64* %count, align 8
  %cmp49 = icmp eq i64 %109, 0
  br i1 %cmp49, label %if.then50, label %if.else

if.then50:                                        ; preds = %_Dynamic_check.succeeded47
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed40:                          ; preds = %sw.bb39
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded41
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded44
  call void @llvm.trap() #8
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded47
  %110 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %value_object, align 4
  %111 = ptrtoint %Tstruct.Spl_json_object_t_t* %110 to i32
  %112 = call i8* @c_fetch_pointer_from_offset(i32 %111)
  %113 = call i1 @c_isTaintedPointerToTaintedMem(i8* %112)
  br i1 %113, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %if.else
  %114 = bitcast i8* %112 to %Tstruct.Spl_json_object_t_t*
  %call53 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %114)
  %115 = load i64, i64* %count, align 8
  %cmp54 = icmp ult i64 %call53, %115
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %_Dynamic_check.succeeded52
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed51:                          ; preds = %if.else
  call void @llvm.trap() #8
  unreachable

if.end56:                                         ; preds = %_Dynamic_check.succeeded52
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  store i64 0, i64* %i, align 8
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc85, %if.end57
  %116 = load i64, i64* %i, align 8
  %117 = load i64, i64* %count, align 8
  %cmp59 = icmp ult i64 %116, %117
  br i1 %cmp59, label %for.body60, label %for.end87

for.body60:                                       ; preds = %for.cond58
  %118 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  %119 = load i64, i64* %i, align 8
  %120 = ptrtoint %Tstruct.Spl_json_object_t_t* %118 to i32
  %121 = call i8* @c_fetch_pointer_from_offset(i32 %120)
  %122 = call i1 @c_isTaintedPointerToTaintedMem(i8* %121)
  br i1 %122, label %_Dynamic_check.succeeded62, label %_Dynamic_check.failed61

_Dynamic_check.succeeded62:                       ; preds = %for.body60
  %123 = bitcast i8* %121 to %Tstruct.Spl_json_object_t_t*
  %call63 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %123, i64 %119)
  store i8* %call63, i8** %key, align 4
  %124 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  %125 = load i8*, i8** %key, align 4
  %126 = ptrtoint %Tstruct.Spl_json_object_t_t* %124 to i32
  %127 = call i8* @c_fetch_pointer_from_offset(i32 %126)
  %128 = call i1 @c_isTaintedPointerToTaintedMem(i8* %127)
  br i1 %128, label %_Dynamic_check.succeeded65, label %_Dynamic_check.failed64

_Dynamic_check.succeeded65:                       ; preds = %_Dynamic_check.succeeded62
  %129 = bitcast i8* %127 to %Tstruct.Spl_json_object_t_t*
  %130 = ptrtoint i8* %125 to i32
  %131 = call i8* @c_fetch_pointer_from_offset(i32 %130)
  %132 = call i1 @c_isTaintedPointerToTaintedMem(i8* %131)
  br i1 %132, label %_Dynamic_check.succeeded67, label %_Dynamic_check.failed66

_Dynamic_check.succeeded67:                       ; preds = %_Dynamic_check.succeeded65
  %call68 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %129, i8* %131)
  %133 = bitcast %Tstruct.Spl_json_value_t_t* %call68 to %Tstruct.json_value_t_t*
  %134 = bitcast %Tstruct.json_value_t_t* %133 to i8*
  %135 = call i64 @c_TPtoO(i8* %134)
  %136 = inttoptr i64 %135 to %Tstruct.json_value_t_t*
  %137 = bitcast %Tstruct.json_value_t_t* %136 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %137, %Tstruct.Spl_json_value_t_t** %temp_schema_value, align 4
  %138 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %value_object, align 4
  %139 = load i8*, i8** %key, align 4
  %140 = ptrtoint %Tstruct.Spl_json_object_t_t* %138 to i32
  %141 = call i8* @c_fetch_pointer_from_offset(i32 %140)
  %142 = call i1 @c_isTaintedPointerToTaintedMem(i8* %141)
  br i1 %142, label %_Dynamic_check.succeeded70, label %_Dynamic_check.failed69

_Dynamic_check.succeeded70:                       ; preds = %_Dynamic_check.succeeded67
  %143 = bitcast i8* %141 to %Tstruct.Spl_json_object_t_t*
  %144 = ptrtoint i8* %139 to i32
  %145 = call i8* @c_fetch_pointer_from_offset(i32 %144)
  %146 = call i1 @c_isTaintedPointerToTaintedMem(i8* %145)
  br i1 %146, label %_Dynamic_check.succeeded72, label %_Dynamic_check.failed71

_Dynamic_check.succeeded72:                       ; preds = %_Dynamic_check.succeeded70
  %call73 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %143, i8* %145)
  %147 = bitcast %Tstruct.Spl_json_value_t_t* %call73 to %Tstruct.json_value_t_t*
  %148 = bitcast %Tstruct.json_value_t_t* %147 to i8*
  %149 = call i64 @c_TPtoO(i8* %148)
  %150 = inttoptr i64 %149 to %Tstruct.json_value_t_t*
  %151 = bitcast %Tstruct.json_value_t_t* %150 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %151, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %152 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %153 = ptrtoint %Tstruct.Spl_json_value_t_t* %152 to i32
  %cmp74 = icmp eq i32 %153, 0
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %_Dynamic_check.succeeded72
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed61:                          ; preds = %for.body60
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed64:                          ; preds = %_Dynamic_check.succeeded62
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed66:                          ; preds = %_Dynamic_check.succeeded65
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed69:                          ; preds = %_Dynamic_check.succeeded67
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed71:                          ; preds = %_Dynamic_check.succeeded70
  call void @llvm.trap() #8
  unreachable

if.end76:                                         ; preds = %_Dynamic_check.succeeded72
  %154 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_schema_value, align 4
  %155 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %156 = ptrtoint %Tstruct.Spl_json_value_t_t* %154 to i32
  %157 = call i8* @c_fetch_pointer_from_offset(i32 %156)
  %158 = call i1 @c_isTaintedPointerToTaintedMem(i8* %157)
  br i1 %158, label %_Dynamic_check.succeeded78, label %_Dynamic_check.failed77

_Dynamic_check.succeeded78:                       ; preds = %if.end76
  %159 = bitcast i8* %157 to %Tstruct.Spl_json_value_t_t*
  %160 = ptrtoint %Tstruct.Spl_json_value_t_t* %155 to i32
  %161 = call i8* @c_fetch_pointer_from_offset(i32 %160)
  %162 = call i1 @c_isTaintedPointerToTaintedMem(i8* %161)
  br i1 %162, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %_Dynamic_check.succeeded78
  %163 = bitcast i8* %161 to %Tstruct.Spl_json_value_t_t*
  %call81 = call i32 @json_validate(%Tstruct.Spl_json_value_t_t* %159, %Tstruct.Spl_json_value_t_t* %163)
  %cmp82 = icmp eq i32 %call81, -1
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %_Dynamic_check.succeeded80
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed77:                          ; preds = %if.end76
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed79:                          ; preds = %_Dynamic_check.succeeded78
  call void @llvm.trap() #8
  unreachable

if.end84:                                         ; preds = %_Dynamic_check.succeeded80
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %164 = load i64, i64* %i, align 8
  %inc86 = add i64 %164, 1
  store i64 %inc86, i64* %i, align 8
  br label %for.cond58, !llvm.loop !14

for.end87:                                        ; preds = %for.cond58
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb88:                                          ; preds = %if.end8, %if.end8, %if.end8, %if.end8
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb89:                                          ; preds = %if.end8
  br label %sw.default

sw.default:                                       ; preds = %if.end8, %sw.bb89
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb88, %for.end87, %if.then83, %if.then75, %if.then55, %if.then50, %for.end, %if.then37, %if.then19, %if.then7, %if.then
  %165 = load i32, i32* %retval, align 4
  ret i32 %165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_equals(%Tstruct.json_value_t_t* %a, %Tstruct.json_value_t_t* %b) #2 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %b.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %a_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %b_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %a_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %b_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %a_string = alloca i8*, align 4
  %b_string = alloca i8*, align 4
  %key = alloca i8*, align 4
  %a_count = alloca i64, align 8
  %b_count = alloca i64, align 8
  %i = alloca i64, align 8
  %a_type = alloca i32, align 4
  %b_type = alloca i32, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %a to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %1 = bitcast %Tstruct.json_value_t_t* %b to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %1, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  store %Tstruct.Spl_json_object_t_t* null, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  store %Tstruct.Spl_json_object_t_t* null, %Tstruct.Spl_json_object_t_t** %b_object, align 4
  store %Tstruct.Spl_json_array_t_t* null, %Tstruct.Spl_json_array_t_t** %a_array, align 4
  store %Tstruct.Spl_json_array_t_t* null, %Tstruct.Spl_json_array_t_t** %b_array, align 4
  store i8* null, i8** %a_string, align 4
  store i8* null, i8** %b_string, align 4
  store i8* null, i8** %key, align 4
  store i64 0, i64* %a_count, align 8
  store i64 0, i64* %b_count, align 8
  store i64 0, i64* %i, align 8
  %2 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_value_t_t* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %6)
  store i32 %call, i32* %a_type, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %11 = bitcast i8* %9 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %11)
  store i32 %call3, i32* %b_type, align 4
  %12 = load i32, i32* %a_type, align 4
  %13 = load i32, i32* %b_type, align 4
  %cmp = icmp ne i32 %12, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded2
  %14 = load i32, i32* %a_type, align 4
  switch i32 %14, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb33
    i32 2, label %sw.bb76
    i32 6, label %sw.bb93
    i32 3, label %sw.bb102
    i32 -1, label %sw.bb111
    i32 1, label %sw.bb112
  ]

sw.bb:                                            ; preds = %if.end
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %sw.bb
  %19 = bitcast i8* %17 to %Tstruct.Spl_json_value_t_t*
  %call6 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %19)
  %20 = bitcast %Tstruct.Spl_json_array_t_t* %call6 to %Tstruct.json_array_t_t*
  %21 = bitcast %Tstruct.json_array_t_t* %20 to i8*
  %22 = call i64 @c_TPtoO(i8* %21)
  %23 = inttoptr i64 %22 to %Tstruct.json_array_t_t*
  %24 = bitcast %Tstruct.json_array_t_t* %23 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %24, %Tstruct.Spl_json_array_t_t** %a_array, align 4
  %25 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %26 = ptrtoint %Tstruct.Spl_json_value_t_t* %25 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded5
  %29 = bitcast i8* %27 to %Tstruct.Spl_json_value_t_t*
  %call9 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %29)
  %30 = bitcast %Tstruct.Spl_json_array_t_t* %call9 to %Tstruct.json_array_t_t*
  %31 = bitcast %Tstruct.json_array_t_t* %30 to i8*
  %32 = call i64 @c_TPtoO(i8* %31)
  %33 = inttoptr i64 %32 to %Tstruct.json_array_t_t*
  %34 = bitcast %Tstruct.json_array_t_t* %33 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %34, %Tstruct.Spl_json_array_t_t** %b_array, align 4
  %35 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %a_array, align 4
  %36 = ptrtoint %Tstruct.Spl_json_array_t_t* %35 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %39 = bitcast i8* %37 to %Tstruct.Spl_json_array_t_t*
  %call12 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %39)
  store i64 %call12, i64* %a_count, align 8
  %40 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %b_array, align 4
  %41 = ptrtoint %Tstruct.Spl_json_array_t_t* %40 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.succeeded11
  %44 = bitcast i8* %42 to %Tstruct.Spl_json_array_t_t*
  %call15 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %44)
  store i64 %call15, i64* %b_count, align 8
  %45 = load i64, i64* %a_count, align 8
  %46 = load i64, i64* %b_count, align 8
  %cmp16 = icmp ne i64 %45, %46
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %_Dynamic_check.succeeded14
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed4:                           ; preds = %sw.bb
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #8
  unreachable

if.end18:                                         ; preds = %_Dynamic_check.succeeded14
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %47 = load i64, i64* %i, align 8
  %48 = load i64, i64* %a_count, align 8
  %cmp19 = icmp ult i64 %47, %48
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %a_array, align 4
  %50 = load i64, i64* %i, align 8
  %51 = ptrtoint %Tstruct.Spl_json_array_t_t* %49 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %for.body
  %54 = bitcast i8* %52 to %Tstruct.Spl_json_array_t_t*
  %call22 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %54, i64 %50)
  %55 = bitcast %Tstruct.Spl_json_value_t_t* %call22 to %Tstruct.json_value_t_t*
  %56 = bitcast %Tstruct.json_value_t_t* %55 to i8*
  %57 = call i64 @c_TPtoO(i8* %56)
  %58 = inttoptr i64 %57 to %Tstruct.Spl_json_value_t_t*
  %59 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %b_array, align 4
  %60 = load i64, i64* %i, align 8
  %61 = ptrtoint %Tstruct.Spl_json_array_t_t* %59 to i32
  %62 = call i8* @c_fetch_pointer_from_offset(i32 %61)
  %63 = call i1 @c_isTaintedPointerToTaintedMem(i8* %62)
  br i1 %63, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded21
  %64 = bitcast i8* %62 to %Tstruct.Spl_json_array_t_t*
  %call25 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %64, i64 %60)
  %65 = bitcast %Tstruct.Spl_json_value_t_t* %call25 to %Tstruct.json_value_t_t*
  %66 = bitcast %Tstruct.json_value_t_t* %65 to i8*
  %67 = call i64 @c_TPtoO(i8* %66)
  %68 = inttoptr i64 %67 to %Tstruct.Spl_json_value_t_t*
  %69 = ptrtoint %Tstruct.Spl_json_value_t_t* %58 to i32
  %70 = call i8* @c_fetch_pointer_from_offset(i32 %69)
  %71 = call i1 @c_isTaintedPointerToTaintedMem(i8* %70)
  br i1 %71, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded24
  %72 = bitcast i8* %70 to %Tstruct.Spl_json_value_t_t*
  %73 = ptrtoint %Tstruct.Spl_json_value_t_t* %68 to i32
  %74 = call i8* @c_fetch_pointer_from_offset(i32 %73)
  %75 = call i1 @c_isTaintedPointerToTaintedMem(i8* %74)
  br i1 %75, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %_Dynamic_check.succeeded27
  %76 = bitcast i8* %74 to %Tstruct.Spl_json_value_t_t*
  %call30 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_value_equals to i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %72, %Tstruct.Spl_json_value_t_t* %76)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.end32, label %if.then31

if.then31:                                        ; preds = %_Dynamic_check.succeeded29
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed20:                          ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed28:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #8
  unreachable

if.end32:                                         ; preds = %_Dynamic_check.succeeded29
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %77 = load i64, i64* %i, align 8
  %inc = add i64 %77, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb33:                                          ; preds = %if.end
  %78 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %79 = ptrtoint %Tstruct.Spl_json_value_t_t* %78 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %sw.bb33
  %82 = bitcast i8* %80 to %Tstruct.Spl_json_value_t_t*
  %call36 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %82)
  %83 = bitcast %Tstruct.Spl_json_object_t_t* %call36 to %Tstruct.json_object_t_t*
  %84 = bitcast %Tstruct.json_object_t_t* %83 to i8*
  %85 = call i64 @c_TPtoO(i8* %84)
  %86 = inttoptr i64 %85 to %Tstruct.json_object_t_t*
  %87 = bitcast %Tstruct.json_object_t_t* %86 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %87, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  %88 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %89 = ptrtoint %Tstruct.Spl_json_value_t_t* %88 to i32
  %90 = call i8* @c_fetch_pointer_from_offset(i32 %89)
  %91 = call i1 @c_isTaintedPointerToTaintedMem(i8* %90)
  br i1 %91, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %_Dynamic_check.succeeded35
  %92 = bitcast i8* %90 to %Tstruct.Spl_json_value_t_t*
  %call39 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %92)
  %93 = bitcast %Tstruct.Spl_json_object_t_t* %call39 to %Tstruct.json_object_t_t*
  %94 = bitcast %Tstruct.json_object_t_t* %93 to i8*
  %95 = call i64 @c_TPtoO(i8* %94)
  %96 = inttoptr i64 %95 to %Tstruct.json_object_t_t*
  %97 = bitcast %Tstruct.json_object_t_t* %96 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %97, %Tstruct.Spl_json_object_t_t** %b_object, align 4
  %98 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  %99 = ptrtoint %Tstruct.Spl_json_object_t_t* %98 to i32
  %100 = call i8* @c_fetch_pointer_from_offset(i32 %99)
  %101 = call i1 @c_isTaintedPointerToTaintedMem(i8* %100)
  br i1 %101, label %_Dynamic_check.succeeded41, label %_Dynamic_check.failed40

_Dynamic_check.succeeded41:                       ; preds = %_Dynamic_check.succeeded38
  %102 = bitcast i8* %100 to %Tstruct.Spl_json_object_t_t*
  %call42 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %102)
  store i64 %call42, i64* %a_count, align 8
  %103 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %b_object, align 4
  %104 = ptrtoint %Tstruct.Spl_json_object_t_t* %103 to i32
  %105 = call i8* @c_fetch_pointer_from_offset(i32 %104)
  %106 = call i1 @c_isTaintedPointerToTaintedMem(i8* %105)
  br i1 %106, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %_Dynamic_check.succeeded41
  %107 = bitcast i8* %105 to %Tstruct.Spl_json_object_t_t*
  %call45 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %107)
  store i64 %call45, i64* %b_count, align 8
  %108 = load i64, i64* %a_count, align 8
  %109 = load i64, i64* %b_count, align 8
  %cmp46 = icmp ne i64 %108, %109
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %_Dynamic_check.succeeded44
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed34:                          ; preds = %sw.bb33
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed37:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed40:                          ; preds = %_Dynamic_check.succeeded38
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded41
  call void @llvm.trap() #8
  unreachable

if.end48:                                         ; preds = %_Dynamic_check.succeeded44
  store i64 0, i64* %i, align 8
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc73, %if.end48
  %110 = load i64, i64* %i, align 8
  %111 = load i64, i64* %a_count, align 8
  %cmp50 = icmp ult i64 %110, %111
  br i1 %cmp50, label %for.body51, label %for.end75

for.body51:                                       ; preds = %for.cond49
  %112 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  %113 = load i64, i64* %i, align 8
  %114 = ptrtoint %Tstruct.Spl_json_object_t_t* %112 to i32
  %115 = call i8* @c_fetch_pointer_from_offset(i32 %114)
  %116 = call i1 @c_isTaintedPointerToTaintedMem(i8* %115)
  br i1 %116, label %_Dynamic_check.succeeded53, label %_Dynamic_check.failed52

_Dynamic_check.succeeded53:                       ; preds = %for.body51
  %117 = bitcast i8* %115 to %Tstruct.Spl_json_object_t_t*
  %call54 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %117, i64 %113)
  store i8* %call54, i8** %key, align 4
  %118 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  %119 = load i8*, i8** %key, align 4
  %120 = ptrtoint %Tstruct.Spl_json_object_t_t* %118 to i32
  %121 = call i8* @c_fetch_pointer_from_offset(i32 %120)
  %122 = call i1 @c_isTaintedPointerToTaintedMem(i8* %121)
  br i1 %122, label %_Dynamic_check.succeeded56, label %_Dynamic_check.failed55

_Dynamic_check.succeeded56:                       ; preds = %_Dynamic_check.succeeded53
  %123 = bitcast i8* %121 to %Tstruct.Spl_json_object_t_t*
  %124 = ptrtoint i8* %119 to i32
  %125 = call i8* @c_fetch_pointer_from_offset(i32 %124)
  %126 = call i1 @c_isTaintedPointerToTaintedMem(i8* %125)
  br i1 %126, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %_Dynamic_check.succeeded56
  %call59 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %123, i8* %125)
  %127 = bitcast %Tstruct.Spl_json_value_t_t* %call59 to %Tstruct.json_value_t_t*
  %128 = bitcast %Tstruct.json_value_t_t* %127 to i8*
  %129 = call i64 @c_TPtoO(i8* %128)
  %130 = inttoptr i64 %129 to %Tstruct.Spl_json_value_t_t*
  %131 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %b_object, align 4
  %132 = load i8*, i8** %key, align 4
  %133 = ptrtoint %Tstruct.Spl_json_object_t_t* %131 to i32
  %134 = call i8* @c_fetch_pointer_from_offset(i32 %133)
  %135 = call i1 @c_isTaintedPointerToTaintedMem(i8* %134)
  br i1 %135, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded58
  %136 = bitcast i8* %134 to %Tstruct.Spl_json_object_t_t*
  %137 = ptrtoint i8* %132 to i32
  %138 = call i8* @c_fetch_pointer_from_offset(i32 %137)
  %139 = call i1 @c_isTaintedPointerToTaintedMem(i8* %138)
  br i1 %139, label %_Dynamic_check.succeeded63, label %_Dynamic_check.failed62

_Dynamic_check.succeeded63:                       ; preds = %_Dynamic_check.succeeded61
  %call64 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %136, i8* %138)
  %140 = bitcast %Tstruct.Spl_json_value_t_t* %call64 to %Tstruct.json_value_t_t*
  %141 = bitcast %Tstruct.json_value_t_t* %140 to i8*
  %142 = call i64 @c_TPtoO(i8* %141)
  %143 = inttoptr i64 %142 to %Tstruct.Spl_json_value_t_t*
  %144 = ptrtoint %Tstruct.Spl_json_value_t_t* %130 to i32
  %145 = call i8* @c_fetch_pointer_from_offset(i32 %144)
  %146 = call i1 @c_isTaintedPointerToTaintedMem(i8* %145)
  br i1 %146, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %_Dynamic_check.succeeded63
  %147 = bitcast i8* %145 to %Tstruct.Spl_json_value_t_t*
  %148 = ptrtoint %Tstruct.Spl_json_value_t_t* %143 to i32
  %149 = call i8* @c_fetch_pointer_from_offset(i32 %148)
  %150 = call i1 @c_isTaintedPointerToTaintedMem(i8* %149)
  br i1 %150, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded66
  %151 = bitcast i8* %149 to %Tstruct.Spl_json_value_t_t*
  %call69 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_value_equals to i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %147, %Tstruct.Spl_json_value_t_t* %151)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %_Dynamic_check.succeeded68
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed52:                          ; preds = %for.body51
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed55:                          ; preds = %_Dynamic_check.succeeded53
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed57:                          ; preds = %_Dynamic_check.succeeded56
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded58
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed62:                          ; preds = %_Dynamic_check.succeeded61
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed65:                          ; preds = %_Dynamic_check.succeeded63
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded66
  call void @llvm.trap() #8
  unreachable

if.end72:                                         ; preds = %_Dynamic_check.succeeded68
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %152 = load i64, i64* %i, align 8
  %inc74 = add i64 %152, 1
  store i64 %inc74, i64* %i, align 8
  br label %for.cond49, !llvm.loop !16

for.end75:                                        ; preds = %for.cond49
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb76:                                          ; preds = %if.end
  %153 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %154 = ptrtoint %Tstruct.Spl_json_value_t_t* %153 to i32
  %155 = call i8* @c_fetch_pointer_from_offset(i32 %154)
  %156 = call i1 @c_isTaintedPointerToTaintedMem(i8* %155)
  br i1 %156, label %_Dynamic_check.succeeded78, label %_Dynamic_check.failed77

_Dynamic_check.succeeded78:                       ; preds = %sw.bb76
  %157 = bitcast i8* %155 to %Tstruct.Spl_json_value_t_t*
  %call79 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %157)
  store i8* %call79, i8** %a_string, align 4
  %158 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %159 = ptrtoint %Tstruct.Spl_json_value_t_t* %158 to i32
  %160 = call i8* @c_fetch_pointer_from_offset(i32 %159)
  %161 = call i1 @c_isTaintedPointerToTaintedMem(i8* %160)
  br i1 %161, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %_Dynamic_check.succeeded78
  %162 = bitcast i8* %160 to %Tstruct.Spl_json_value_t_t*
  %call82 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %162)
  store i8* %call82, i8** %b_string, align 4
  %163 = load i8*, i8** %a_string, align 4
  %164 = ptrtoint i8* %163 to i32
  %cmp83 = icmp eq i32 %164, 0
  br i1 %cmp83, label %if.then85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %_Dynamic_check.succeeded81
  %165 = load i8*, i8** %b_string, align 4
  %166 = ptrtoint i8* %165 to i32
  %cmp84 = icmp eq i32 %166, 0
  br i1 %cmp84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %lor.lhs.false, %_Dynamic_check.succeeded81
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed77:                          ; preds = %sw.bb76
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed80:                          ; preds = %_Dynamic_check.succeeded78
  call void @llvm.trap() #8
  unreachable

if.end86:                                         ; preds = %lor.lhs.false
  %167 = load i8*, i8** %a_string, align 4
  %168 = load i8*, i8** %b_string, align 4
  %169 = ptrtoint i8* %167 to i32
  %170 = call i8* @c_fetch_pointer_from_offset(i32 %169)
  %171 = call i1 @c_isTaintedPointerToTaintedMem(i8* %170)
  br i1 %171, label %_Dynamic_check.succeeded88, label %_Dynamic_check.failed87

_Dynamic_check.succeeded88:                       ; preds = %if.end86
  %172 = ptrtoint i8* %168 to i32
  %173 = call i8* @c_fetch_pointer_from_offset(i32 %172)
  %174 = call i1 @c_isTaintedPointerToTaintedMem(i8* %173)
  br i1 %174, label %_Dynamic_check.succeeded90, label %_Dynamic_check.failed89

_Dynamic_check.succeeded90:                       ; preds = %_Dynamic_check.succeeded88
  %call91 = call i32 @t_strcmp(i8* %170, i8* %173)
  %cmp92 = icmp eq i32 %call91, 0
  %conv = zext i1 %cmp92 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

_Dynamic_check.failed87:                          ; preds = %if.end86
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed89:                          ; preds = %_Dynamic_check.succeeded88
  call void @llvm.trap() #8
  unreachable

sw.bb93:                                          ; preds = %if.end
  %175 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %176 = ptrtoint %Tstruct.Spl_json_value_t_t* %175 to i32
  %177 = call i8* @c_fetch_pointer_from_offset(i32 %176)
  %178 = call i1 @c_isTaintedPointerToTaintedMem(i8* %177)
  br i1 %178, label %_Dynamic_check.succeeded95, label %_Dynamic_check.failed94

_Dynamic_check.succeeded95:                       ; preds = %sw.bb93
  %179 = bitcast i8* %177 to %Tstruct.Spl_json_value_t_t*
  %call96 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %179)
  %180 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %181 = ptrtoint %Tstruct.Spl_json_value_t_t* %180 to i32
  %182 = call i8* @c_fetch_pointer_from_offset(i32 %181)
  %183 = call i1 @c_isTaintedPointerToTaintedMem(i8* %182)
  br i1 %183, label %_Dynamic_check.succeeded98, label %_Dynamic_check.failed97

_Dynamic_check.succeeded98:                       ; preds = %_Dynamic_check.succeeded95
  %184 = bitcast i8* %182 to %Tstruct.Spl_json_value_t_t*
  %call99 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %184)
  %cmp100 = icmp eq i32 %call96, %call99
  %conv101 = zext i1 %cmp100 to i32
  store i32 %conv101, i32* %retval, align 4
  br label %return

_Dynamic_check.failed94:                          ; preds = %sw.bb93
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed97:                          ; preds = %_Dynamic_check.succeeded95
  call void @llvm.trap() #8
  unreachable

sw.bb102:                                         ; preds = %if.end
  %185 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %186 = ptrtoint %Tstruct.Spl_json_value_t_t* %185 to i32
  %187 = call i8* @c_fetch_pointer_from_offset(i32 %186)
  %188 = call i1 @c_isTaintedPointerToTaintedMem(i8* %187)
  br i1 %188, label %_Dynamic_check.succeeded104, label %_Dynamic_check.failed103

_Dynamic_check.succeeded104:                      ; preds = %sw.bb102
  %189 = bitcast i8* %187 to %Tstruct.Spl_json_value_t_t*
  %call105 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %189)
  %190 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %191 = ptrtoint %Tstruct.Spl_json_value_t_t* %190 to i32
  %192 = call i8* @c_fetch_pointer_from_offset(i32 %191)
  %193 = call i1 @c_isTaintedPointerToTaintedMem(i8* %192)
  br i1 %193, label %_Dynamic_check.succeeded107, label %_Dynamic_check.failed106

_Dynamic_check.succeeded107:                      ; preds = %_Dynamic_check.succeeded104
  %194 = bitcast i8* %192 to %Tstruct.Spl_json_value_t_t*
  %call108 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %194)
  %sub = fsub double %call105, %call108
  %195 = call double @llvm.fabs.f64(double %sub)
  %cmp109 = fcmp olt double %195, 0x3EB0C6F7A0B5ED8D
  %conv110 = zext i1 %cmp109 to i32
  store i32 %conv110, i32* %retval, align 4
  br label %return

_Dynamic_check.failed103:                         ; preds = %sw.bb102
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed106:                         ; preds = %_Dynamic_check.succeeded104
  call void @llvm.trap() #8
  unreachable

sw.bb111:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb112:                                         ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb112, %sw.bb111, %_Dynamic_check.succeeded107, %_Dynamic_check.succeeded98, %_Dynamic_check.succeeded90, %if.then85, %for.end75, %if.then71, %if.then47, %for.end, %if.then31, %if.then17, %if.then
  %196 = load i32, i32* %retval, align 4
  ret i32 %196
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_type(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  ret i32 %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_object_t_t* @json_object(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  %6 = bitcast %Tstruct.Spl_json_object_t_t* %call to %Tstruct.json_object_t_t*
  %7 = bitcast %Tstruct.json_object_t_t* %6 to i8*
  %8 = call i64 @c_TPtoO(i8* %7)
  %9 = inttoptr i64 %8 to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %9

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_array_t_t* @json_array(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  %6 = bitcast %Tstruct.Spl_json_array_t_t* %call to %Tstruct.json_array_t_t*
  %7 = bitcast %Tstruct.json_array_t_t* %6 to i8*
  %8 = call i64 @c_TPtoO(i8* %7)
  %9 = inttoptr i64 %8 to %Tstruct.Spl_json_array_t_t*
  ret %Tstruct.Spl_json_array_t_t* %9

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_string(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  ret i8* %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_number(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  ret double %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_boolean(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %0, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %1 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* %1 to i32
  %3 = call i8* @c_fetch_pointer_from_offset(i32 %2)
  %4 = call i1 @c_isTaintedPointerToTaintedMem(i8* %3)
  br i1 %4, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %5 = bitcast i8* %3 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %5)
  ret i32 %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_set_allocation_functions(i8* (i64)* %malloc_fun, void (i8*)* %free_fun) #2 {
entry:
  %malloc_fun.addr = alloca i8* (i64)*, align 4
  %free_fun.addr = alloca void (i8*)*, align 4
  store i8* (i64)* %malloc_fun, i8* (i64)** %malloc_fun.addr, align 4
  store void (i8*)* %free_fun, void (i8*)** %free_fun.addr, align 4
  %0 = load i8* (i64)*, i8* (i64)** %malloc_fun.addr, align 4
  %tobool = icmp ne i8* (i64)* %0, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load void (i8*)*, void (i8*)** %free_fun.addr, align 4
  %tobool1 = icmp ne void (i8*)* %1, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i8* (i64)*, i8* (i64)** %malloc_fun.addr, align 4
  store i8* (i64)* %2, i8* (i64)** @parson_tainted_malloc, align 4
  %3 = load void (i8*)*, void (i8*)** %free_fun.addr, align 4
  store void (i8*)* %3, void (i8*)** @parson_tainted_free, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_set_escape_slashes(i32 %escape_slashes) #2 {
entry:
  %escape_slashes.addr = alloca i32, align 4
  store i32 %escape_slashes, i32* %escape_slashes.addr, align 4
  %0 = load i32, i32* %escape_slashes.addr, align 4
  store i32 %0, i32* @parson_escape_slashes, align 4
  ret void
}

declare dso_local i8* @t_strcpy(i8*, i8*) #1

declare dso_local i8* @t_memcpy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %Tstruct.Spl_json_value_t_t* @parse_object_value(i8* %string, i64 %nesting) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %nesting.addr = alloca i64, align 8
  %str_len = alloca i32, align 4
  %str_cpy = alloca i8*, align 4
  %output_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %new_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %output_object = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %new_key = alloca i8*, align 4
  store i8* %string, i8** %string.addr, align 4
  store i64 %nesting, i64* %nesting.addr, align 8
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = call i8* @c_fetch_pointer_from_offset(i32 %1)
  %3 = call i1 @c_isTaintedPointerToTaintedMem(i8* %2)
  br i1 %3, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i64 @t_strlen(i8* %2)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %str_len, align 4
  %4 = load i32, i32* %str_len, align 4
  %conv1 = sext i32 %4 to i64
  %mul = mul i64 %conv1, 1
  %call2 = call i8* @parson_string_tainted_malloc(i64 %mul)
  store i8* %call2, i8** %str_cpy, align 4
  %5 = load i8*, i8** %str_cpy, align 4
  %6 = load i8*, i8** %string.addr, align 4
  %7 = ptrtoint i8* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %10 = ptrtoint i8* %6 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %call7 = call i8* @t_strcpy(i8* %8, i8* %11)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_object_t_t* null, %Tstruct.Spl_json_object_t_t** %output_object, align 4
  store i8* null, i8** %new_key, align 4
  %call8 = call %Tstruct.Spl_json_value_t_t* @json_value_init_object()
  %13 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %14 = bitcast %Tstruct.json_value_t_t* %13 to i8*
  %15 = call i64 @c_TPtoO(i8* %14)
  %16 = inttoptr i64 %15 to %Tstruct.json_value_t_t*
  %17 = bitcast %Tstruct.json_value_t_t* %16 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %17, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded6
  %20 = load i8*, i8** %string.addr, align 4
  %21 = load i8*, i8** %str_cpy, align 4
  %22 = ptrtoint i8* %20 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %if.then
  %25 = ptrtoint i8* %21 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %call14 = call i8* @t_strcpy(i8* %23, i8* %26)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed10:                          ; preds = %if.then
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded6
  %28 = load i8*, i8** %str_cpy, align 4
  %29 = ptrtoint i8* %28 to i32
  %30 = call i8* @c_fetch_pointer_from_offset(i32 %29)
  %31 = call i1 @c_isTaintedPointerToTaintedMem(i8* %30)
  br i1 %31, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %if.end
  %32 = load i8, i8* %30, align 1
  %conv17 = sext i8 %32 to i32
  %cmp18 = icmp ne i32 %conv17, 123
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %_Dynamic_check.succeeded16
  %33 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %34 = ptrtoint %Tstruct.Spl_json_value_t_t* %33 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %if.then20
  %37 = bitcast i8* %35 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %37)
  %38 = load i8*, i8** %string.addr, align 4
  %39 = load i8*, i8** %str_cpy, align 4
  %40 = ptrtoint i8* %38 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded22
  %43 = ptrtoint i8* %39 to i32
  %44 = call i8* @c_fetch_pointer_from_offset(i32 %43)
  %45 = call i1 @c_isTaintedPointerToTaintedMem(i8* %44)
  br i1 %45, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded24
  %call27 = call i8* @t_strcpy(i8* %41, i8* %44)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed15:                          ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %if.then20
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #8
  unreachable

if.end28:                                         ; preds = %_Dynamic_check.succeeded16
  %46 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %47 = ptrtoint %Tstruct.Spl_json_value_t_t* %46 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %if.end28
  %50 = bitcast i8* %48 to %Tstruct.Spl_json_value_t_t*
  %call31 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %50)
  %51 = bitcast %Tstruct.Spl_json_object_t_t* %call31 to %Tstruct.json_object_t_t*
  %52 = bitcast %Tstruct.json_object_t_t* %51 to i8*
  %53 = call i64 @c_TPtoO(i8* %52)
  %54 = inttoptr i64 %53 to %Tstruct.json_object_t_t*
  %55 = bitcast %Tstruct.json_object_t_t* %54 to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %55, %Tstruct.Spl_json_object_t_t** %output_object, align 4
  %56 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %str_cpy, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %_Dynamic_check.succeeded30
  %57 = load i8*, i8** %str_cpy, align 4
  %58 = ptrtoint i8* %57 to i32
  %59 = call i8* @c_fetch_pointer_from_offset(i32 %58)
  %60 = call i1 @c_isTaintedPointerToTaintedMem(i8* %59)
  br i1 %60, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %while.cond
  %61 = load i8, i8* %59, align 1
  %conv34 = zext i8 %61 to i32
  %call35 = call i32 @isspace(i32 %conv34) #9
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %_Dynamic_check.succeeded33
  %62 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr36, i8** %str_cpy, align 4
  br label %while.cond, !llvm.loop !17

_Dynamic_check.failed29:                          ; preds = %if.end28
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed32:                          ; preds = %while.cond
  call void @llvm.trap() #8
  unreachable

while.end:                                        ; preds = %_Dynamic_check.succeeded33
  %63 = load i8*, i8** %str_cpy, align 4
  %64 = ptrtoint i8* %63 to i32
  %65 = call i8* @c_fetch_pointer_from_offset(i32 %64)
  %66 = call i1 @c_isTaintedPointerToTaintedMem(i8* %65)
  br i1 %66, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %while.end
  %67 = load i8, i8* %65, align 1
  %conv39 = sext i8 %67 to i32
  %cmp40 = icmp eq i32 %conv39, 125
  br i1 %cmp40, label %if.then42, label %if.end49

if.then42:                                        ; preds = %_Dynamic_check.succeeded38
  %68 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr43 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr43, i8** %str_cpy, align 4
  %69 = load i8*, i8** %string.addr, align 4
  %70 = load i8*, i8** %str_cpy, align 4
  %71 = ptrtoint i8* %69 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %if.then42
  %74 = ptrtoint i8* %70 to i32
  %75 = call i8* @c_fetch_pointer_from_offset(i32 %74)
  %76 = call i1 @c_isTaintedPointerToTaintedMem(i8* %75)
  br i1 %76, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded45
  %call48 = call i8* @t_strcpy(i8* %72, i8* %75)
  %77 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %77, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed37:                          ; preds = %while.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed44:                          ; preds = %if.then42
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded45
  call void @llvm.trap() #8
  unreachable

if.end49:                                         ; preds = %_Dynamic_check.succeeded38
  br label %while.cond50

while.cond50:                                     ; preds = %while.end202, %if.end49
  %78 = load i8*, i8** %str_cpy, align 4
  %79 = ptrtoint i8* %78 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %while.cond50
  %82 = load i8, i8* %80, align 1
  %conv53 = sext i8 %82 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %while.body56, label %while.end203

while.body56:                                     ; preds = %_Dynamic_check.succeeded52
  %83 = load i8*, i8** %str_cpy, align 4
  %84 = ptrtoint i8* %83 to i32
  %85 = call i8* @c_fetch_pointer_from_offset(i32 %84)
  %86 = call i1 @c_isTaintedPointerToTaintedMem(i8* %85)
  br i1 %86, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %while.body56
  %call59 = call i8* @get_quoted_string(i8* %85, i8* (i8*, i64)* @process_string)
  store i8* %call59, i8** %new_key, align 4
  %87 = load i8*, i8** %new_key, align 4
  %88 = ptrtoint i8* %87 to i32
  %cmp60 = icmp eq i32 %88, 0
  br i1 %cmp60, label %if.then62, label %if.end70

if.then62:                                        ; preds = %_Dynamic_check.succeeded58
  %89 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %90 = ptrtoint %Tstruct.Spl_json_value_t_t* %89 to i32
  %91 = call i8* @c_fetch_pointer_from_offset(i32 %90)
  %92 = call i1 @c_isTaintedPointerToTaintedMem(i8* %91)
  br i1 %92, label %_Dynamic_check.succeeded64, label %_Dynamic_check.failed63

_Dynamic_check.succeeded64:                       ; preds = %if.then62
  %93 = bitcast i8* %91 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %93)
  %94 = load i8*, i8** %string.addr, align 4
  %95 = load i8*, i8** %str_cpy, align 4
  %96 = ptrtoint i8* %94 to i32
  %97 = call i8* @c_fetch_pointer_from_offset(i32 %96)
  %98 = call i1 @c_isTaintedPointerToTaintedMem(i8* %97)
  br i1 %98, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %_Dynamic_check.succeeded64
  %99 = ptrtoint i8* %95 to i32
  %100 = call i8* @c_fetch_pointer_from_offset(i32 %99)
  %101 = call i1 @c_isTaintedPointerToTaintedMem(i8* %100)
  br i1 %101, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded66
  %call69 = call i8* @t_strcpy(i8* %97, i8* %100)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed51:                          ; preds = %while.cond50
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed57:                          ; preds = %while.body56
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed63:                          ; preds = %if.then62
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed65:                          ; preds = %_Dynamic_check.succeeded64
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded66
  call void @llvm.trap() #8
  unreachable

if.end70:                                         ; preds = %_Dynamic_check.succeeded58
  br label %while.cond71

while.cond71:                                     ; preds = %while.body77, %if.end70
  %102 = load i8*, i8** %str_cpy, align 4
  %103 = ptrtoint i8* %102 to i32
  %104 = call i8* @c_fetch_pointer_from_offset(i32 %103)
  %105 = call i1 @c_isTaintedPointerToTaintedMem(i8* %104)
  br i1 %105, label %_Dynamic_check.succeeded73, label %_Dynamic_check.failed72

_Dynamic_check.succeeded73:                       ; preds = %while.cond71
  %106 = load i8, i8* %104, align 1
  %conv74 = zext i8 %106 to i32
  %call75 = call i32 @isspace(i32 %conv74) #9
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %while.body77, label %while.end79

while.body77:                                     ; preds = %_Dynamic_check.succeeded73
  %107 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr78 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %incdec.ptr78, i8** %str_cpy, align 4
  br label %while.cond71, !llvm.loop !18

_Dynamic_check.failed72:                          ; preds = %while.cond71
  call void @llvm.trap() #8
  unreachable

while.end79:                                      ; preds = %_Dynamic_check.succeeded73
  %108 = load i8*, i8** %str_cpy, align 4
  %109 = ptrtoint i8* %108 to i32
  %110 = call i8* @c_fetch_pointer_from_offset(i32 %109)
  %111 = call i1 @c_isTaintedPointerToTaintedMem(i8* %110)
  br i1 %111, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %while.end79
  %112 = load i8, i8* %110, align 1
  %conv82 = sext i8 %112 to i32
  %cmp83 = icmp ne i32 %conv82, 58
  br i1 %cmp83, label %if.then85, label %if.end99

if.then85:                                        ; preds = %_Dynamic_check.succeeded81
  %113 = load i8*, i8** %new_key, align 4
  %_Dynamic_check.is_null = icmp eq i8* %113, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then85
  %114 = load i8*, i8** %new_key, align 4
  %115 = load i8*, i8** %new_key, align 4
  %add.ptr = getelementptr inbounds i8, i8* %115, i64 0
  %_Dynamic_check.non_null = icmp ne i8* %113, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded87, label %_Dynamic_check.failed86

_Dynamic_check.succeeded87:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr88 = getelementptr inbounds i8, i8* %113, i64 0
  %116 = call i64 @c_TPtoO(i8* %114)
  %117 = inttoptr i64 %116 to i8*
  %118 = call i64 @c_TPtoO(i8* %113)
  %119 = inttoptr i64 %118 to i8*
  %_Dynamic_check.lower = icmp ule i8* %117, %119
  %120 = call i64 @c_TPtoO(i8* %add.ptr88)
  %121 = inttoptr i64 %120 to i8*
  %122 = call i64 @c_TPtoO(i8* %add.ptr)
  %123 = inttoptr i64 %122 to i8*
  %_Dynamic_check.upper = icmp ule i8* %121, %123
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed89

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded87, %if.then85
  %124 = ptrtoint i8* %113 to i32
  %125 = call i8* @c_fetch_pointer_from_offset(i32 %124)
  %126 = call i1 @c_isTaintedPointerToTaintedMem(i8* %125)
  br i1 %126, label %_Dynamic_check.succeeded91, label %_Dynamic_check.failed90

_Dynamic_check.succeeded91:                       ; preds = %_Dynamic_check.success
  call void @t_free(i8* %125)
  %127 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %128 = ptrtoint %Tstruct.Spl_json_value_t_t* %127 to i32
  %129 = call i8* @c_fetch_pointer_from_offset(i32 %128)
  %130 = call i1 @c_isTaintedPointerToTaintedMem(i8* %129)
  br i1 %130, label %_Dynamic_check.succeeded93, label %_Dynamic_check.failed92

_Dynamic_check.succeeded93:                       ; preds = %_Dynamic_check.succeeded91
  %131 = bitcast i8* %129 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %131)
  %132 = load i8*, i8** %string.addr, align 4
  %133 = load i8*, i8** %str_cpy, align 4
  %134 = ptrtoint i8* %132 to i32
  %135 = call i8* @c_fetch_pointer_from_offset(i32 %134)
  %136 = call i1 @c_isTaintedPointerToTaintedMem(i8* %135)
  br i1 %136, label %_Dynamic_check.succeeded95, label %_Dynamic_check.failed94

_Dynamic_check.succeeded95:                       ; preds = %_Dynamic_check.succeeded93
  %137 = ptrtoint i8* %133 to i32
  %138 = call i8* @c_fetch_pointer_from_offset(i32 %137)
  %139 = call i1 @c_isTaintedPointerToTaintedMem(i8* %138)
  br i1 %139, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %_Dynamic_check.succeeded95
  %call98 = call i8* @t_strcpy(i8* %135, i8* %138)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed80:                          ; preds = %while.end79
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed86:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed89:                          ; preds = %_Dynamic_check.succeeded87
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed90:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed92:                          ; preds = %_Dynamic_check.succeeded91
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed94:                          ; preds = %_Dynamic_check.succeeded93
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed96:                          ; preds = %_Dynamic_check.succeeded95
  call void @llvm.trap() #8
  unreachable

if.end99:                                         ; preds = %_Dynamic_check.succeeded81
  %140 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr100 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr100, i8** %str_cpy, align 4
  %141 = load i8*, i8** %str_cpy, align 4
  %142 = load i64, i64* %nesting.addr, align 8
  %143 = ptrtoint i8* %141 to i32
  %144 = call i8* @c_fetch_pointer_from_offset(i32 %143)
  %145 = call i1 @c_isTaintedPointerToTaintedMem(i8* %144)
  br i1 %145, label %_Dynamic_check.succeeded102, label %_Dynamic_check.failed101

_Dynamic_check.succeeded102:                      ; preds = %if.end99
  %call103 = call %Tstruct.Spl_json_value_t_t* @parse_value(i8* %144, i64 %142)
  %146 = bitcast %Tstruct.Spl_json_value_t_t* %call103 to %Tstruct.json_value_t_t*
  %147 = bitcast %Tstruct.json_value_t_t* %146 to i8*
  %148 = call i64 @c_TPtoO(i8* %147)
  %149 = inttoptr i64 %148 to %Tstruct.json_value_t_t*
  %150 = bitcast %Tstruct.json_value_t_t* %149 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %150, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %151 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %152 = ptrtoint %Tstruct.Spl_json_value_t_t* %151 to i32
  %cmp104 = icmp eq i32 %152, 0
  br i1 %cmp104, label %if.then106, label %if.end128

if.then106:                                       ; preds = %_Dynamic_check.succeeded102
  %153 = load i8*, i8** %new_key, align 4
  %_Dynamic_check.is_null107 = icmp eq i8* %153, null
  br i1 %_Dynamic_check.is_null107, label %_Dynamic_check.success118, label %_Dynamic_check.subsumption108

_Dynamic_check.subsumption108:                    ; preds = %if.then106
  %154 = load i8*, i8** %new_key, align 4
  %155 = load i8*, i8** %new_key, align 4
  %add.ptr109 = getelementptr inbounds i8, i8* %155, i64 0
  %_Dynamic_check.non_null110 = icmp ne i8* %153, null
  br i1 %_Dynamic_check.non_null110, label %_Dynamic_check.succeeded112, label %_Dynamic_check.failed111

_Dynamic_check.succeeded112:                      ; preds = %_Dynamic_check.subsumption108
  %add.ptr113 = getelementptr inbounds i8, i8* %153, i64 0
  %156 = call i64 @c_TPtoO(i8* %154)
  %157 = inttoptr i64 %156 to i8*
  %158 = call i64 @c_TPtoO(i8* %153)
  %159 = inttoptr i64 %158 to i8*
  %_Dynamic_check.lower114 = icmp ule i8* %157, %159
  %160 = call i64 @c_TPtoO(i8* %add.ptr113)
  %161 = inttoptr i64 %160 to i8*
  %162 = call i64 @c_TPtoO(i8* %add.ptr109)
  %163 = inttoptr i64 %162 to i8*
  %_Dynamic_check.upper115 = icmp ule i8* %161, %163
  %_Dynamic_check.cast116 = and i1 %_Dynamic_check.lower114, %_Dynamic_check.upper115
  br i1 %_Dynamic_check.cast116, label %_Dynamic_check.success118, label %_Dynamic_check.failed117

_Dynamic_check.success118:                        ; preds = %_Dynamic_check.succeeded112, %if.then106
  %164 = ptrtoint i8* %153 to i32
  %165 = call i8* @c_fetch_pointer_from_offset(i32 %164)
  %166 = call i1 @c_isTaintedPointerToTaintedMem(i8* %165)
  br i1 %166, label %_Dynamic_check.succeeded120, label %_Dynamic_check.failed119

_Dynamic_check.succeeded120:                      ; preds = %_Dynamic_check.success118
  call void @t_free(i8* %165)
  %167 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %168 = ptrtoint %Tstruct.Spl_json_value_t_t* %167 to i32
  %169 = call i8* @c_fetch_pointer_from_offset(i32 %168)
  %170 = call i1 @c_isTaintedPointerToTaintedMem(i8* %169)
  br i1 %170, label %_Dynamic_check.succeeded122, label %_Dynamic_check.failed121

_Dynamic_check.succeeded122:                      ; preds = %_Dynamic_check.succeeded120
  %171 = bitcast i8* %169 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %171)
  %172 = load i8*, i8** %string.addr, align 4
  %173 = load i8*, i8** %str_cpy, align 4
  %174 = ptrtoint i8* %172 to i32
  %175 = call i8* @c_fetch_pointer_from_offset(i32 %174)
  %176 = call i1 @c_isTaintedPointerToTaintedMem(i8* %175)
  br i1 %176, label %_Dynamic_check.succeeded124, label %_Dynamic_check.failed123

_Dynamic_check.succeeded124:                      ; preds = %_Dynamic_check.succeeded122
  %177 = ptrtoint i8* %173 to i32
  %178 = call i8* @c_fetch_pointer_from_offset(i32 %177)
  %179 = call i1 @c_isTaintedPointerToTaintedMem(i8* %178)
  br i1 %179, label %_Dynamic_check.succeeded126, label %_Dynamic_check.failed125

_Dynamic_check.succeeded126:                      ; preds = %_Dynamic_check.succeeded124
  %call127 = call i8* @t_strcpy(i8* %175, i8* %178)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed101:                         ; preds = %if.end99
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed111:                         ; preds = %_Dynamic_check.subsumption108
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed117:                         ; preds = %_Dynamic_check.succeeded112
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed119:                         ; preds = %_Dynamic_check.success118
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed121:                         ; preds = %_Dynamic_check.succeeded120
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed123:                         ; preds = %_Dynamic_check.succeeded122
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed125:                         ; preds = %_Dynamic_check.succeeded124
  call void @llvm.trap() #8
  unreachable

if.end128:                                        ; preds = %_Dynamic_check.succeeded102
  %180 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %output_object, align 4
  %181 = load i8*, i8** %new_key, align 4
  %182 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %183 = ptrtoint %Tstruct.Spl_json_object_t_t* %180 to i32
  %184 = call i8* @c_fetch_pointer_from_offset(i32 %183)
  %185 = call i1 @c_isTaintedPointerToTaintedMem(i8* %184)
  br i1 %185, label %_Dynamic_check.succeeded130, label %_Dynamic_check.failed129

_Dynamic_check.succeeded130:                      ; preds = %if.end128
  %186 = bitcast i8* %184 to %Tstruct.Spl_json_object_t_t*
  %187 = ptrtoint i8* %181 to i32
  %188 = call i8* @c_fetch_pointer_from_offset(i32 %187)
  %189 = call i1 @c_isTaintedPointerToTaintedMem(i8* %188)
  br i1 %189, label %_Dynamic_check.succeeded132, label %_Dynamic_check.failed131

_Dynamic_check.succeeded132:                      ; preds = %_Dynamic_check.succeeded130
  %190 = ptrtoint %Tstruct.Spl_json_value_t_t* %182 to i32
  %191 = call i8* @c_fetch_pointer_from_offset(i32 %190)
  %192 = call i1 @c_isTaintedPointerToTaintedMem(i8* %191)
  br i1 %192, label %_Dynamic_check.succeeded134, label %_Dynamic_check.failed133

_Dynamic_check.succeeded134:                      ; preds = %_Dynamic_check.succeeded132
  %193 = bitcast i8* %191 to %Tstruct.Spl_json_value_t_t*
  %call135 = call i32 bitcast (i32 (%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*)* @json_object_add to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %186, i8* %188, %Tstruct.Spl_json_value_t_t* %193)
  %cmp136 = icmp eq i32 %call135, -1
  br i1 %cmp136, label %if.then138, label %if.end162

if.then138:                                       ; preds = %_Dynamic_check.succeeded134
  %194 = load i8*, i8** %new_key, align 4
  %_Dynamic_check.is_null139 = icmp eq i8* %194, null
  br i1 %_Dynamic_check.is_null139, label %_Dynamic_check.success150, label %_Dynamic_check.subsumption140

_Dynamic_check.subsumption140:                    ; preds = %if.then138
  %195 = load i8*, i8** %new_key, align 4
  %196 = load i8*, i8** %new_key, align 4
  %add.ptr141 = getelementptr inbounds i8, i8* %196, i64 0
  %_Dynamic_check.non_null142 = icmp ne i8* %194, null
  br i1 %_Dynamic_check.non_null142, label %_Dynamic_check.succeeded144, label %_Dynamic_check.failed143

_Dynamic_check.succeeded144:                      ; preds = %_Dynamic_check.subsumption140
  %add.ptr145 = getelementptr inbounds i8, i8* %194, i64 0
  %197 = call i64 @c_TPtoO(i8* %195)
  %198 = inttoptr i64 %197 to i8*
  %199 = call i64 @c_TPtoO(i8* %194)
  %200 = inttoptr i64 %199 to i8*
  %_Dynamic_check.lower146 = icmp ule i8* %198, %200
  %201 = call i64 @c_TPtoO(i8* %add.ptr145)
  %202 = inttoptr i64 %201 to i8*
  %203 = call i64 @c_TPtoO(i8* %add.ptr141)
  %204 = inttoptr i64 %203 to i8*
  %_Dynamic_check.upper147 = icmp ule i8* %202, %204
  %_Dynamic_check.cast148 = and i1 %_Dynamic_check.lower146, %_Dynamic_check.upper147
  br i1 %_Dynamic_check.cast148, label %_Dynamic_check.success150, label %_Dynamic_check.failed149

_Dynamic_check.success150:                        ; preds = %_Dynamic_check.succeeded144, %if.then138
  %205 = ptrtoint i8* %194 to i32
  %206 = call i8* @c_fetch_pointer_from_offset(i32 %205)
  %207 = call i1 @c_isTaintedPointerToTaintedMem(i8* %206)
  br i1 %207, label %_Dynamic_check.succeeded152, label %_Dynamic_check.failed151

_Dynamic_check.succeeded152:                      ; preds = %_Dynamic_check.success150
  call void @t_free(i8* %206)
  %208 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %209 = ptrtoint %Tstruct.Spl_json_value_t_t* %208 to i32
  %210 = call i8* @c_fetch_pointer_from_offset(i32 %209)
  %211 = call i1 @c_isTaintedPointerToTaintedMem(i8* %210)
  br i1 %211, label %_Dynamic_check.succeeded154, label %_Dynamic_check.failed153

_Dynamic_check.succeeded154:                      ; preds = %_Dynamic_check.succeeded152
  %212 = bitcast i8* %210 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %212)
  %213 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %214 = ptrtoint %Tstruct.Spl_json_value_t_t* %213 to i32
  %215 = call i8* @c_fetch_pointer_from_offset(i32 %214)
  %216 = call i1 @c_isTaintedPointerToTaintedMem(i8* %215)
  br i1 %216, label %_Dynamic_check.succeeded156, label %_Dynamic_check.failed155

_Dynamic_check.succeeded156:                      ; preds = %_Dynamic_check.succeeded154
  %217 = bitcast i8* %215 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %217)
  %218 = load i8*, i8** %string.addr, align 4
  %219 = load i8*, i8** %str_cpy, align 4
  %220 = ptrtoint i8* %218 to i32
  %221 = call i8* @c_fetch_pointer_from_offset(i32 %220)
  %222 = call i1 @c_isTaintedPointerToTaintedMem(i8* %221)
  br i1 %222, label %_Dynamic_check.succeeded158, label %_Dynamic_check.failed157

_Dynamic_check.succeeded158:                      ; preds = %_Dynamic_check.succeeded156
  %223 = ptrtoint i8* %219 to i32
  %224 = call i8* @c_fetch_pointer_from_offset(i32 %223)
  %225 = call i1 @c_isTaintedPointerToTaintedMem(i8* %224)
  br i1 %225, label %_Dynamic_check.succeeded160, label %_Dynamic_check.failed159

_Dynamic_check.succeeded160:                      ; preds = %_Dynamic_check.succeeded158
  %call161 = call i8* @t_strcpy(i8* %221, i8* %224)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed129:                         ; preds = %if.end128
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed131:                         ; preds = %_Dynamic_check.succeeded130
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed133:                         ; preds = %_Dynamic_check.succeeded132
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed143:                         ; preds = %_Dynamic_check.subsumption140
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed149:                         ; preds = %_Dynamic_check.succeeded144
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed151:                         ; preds = %_Dynamic_check.success150
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed153:                         ; preds = %_Dynamic_check.succeeded152
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed155:                         ; preds = %_Dynamic_check.succeeded154
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed157:                         ; preds = %_Dynamic_check.succeeded156
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed159:                         ; preds = %_Dynamic_check.succeeded158
  call void @llvm.trap() #8
  unreachable

if.end162:                                        ; preds = %_Dynamic_check.succeeded134
  %226 = load i8*, i8** %new_key, align 4
  %_Dynamic_check.is_null163 = icmp eq i8* %226, null
  br i1 %_Dynamic_check.is_null163, label %_Dynamic_check.success174, label %_Dynamic_check.subsumption164

_Dynamic_check.subsumption164:                    ; preds = %if.end162
  %227 = load i8*, i8** %new_key, align 4
  %228 = load i8*, i8** %new_key, align 4
  %add.ptr165 = getelementptr inbounds i8, i8* %228, i64 0
  %_Dynamic_check.non_null166 = icmp ne i8* %226, null
  br i1 %_Dynamic_check.non_null166, label %_Dynamic_check.succeeded168, label %_Dynamic_check.failed167

_Dynamic_check.succeeded168:                      ; preds = %_Dynamic_check.subsumption164
  %add.ptr169 = getelementptr inbounds i8, i8* %226, i64 0
  %229 = call i64 @c_TPtoO(i8* %227)
  %230 = inttoptr i64 %229 to i8*
  %231 = call i64 @c_TPtoO(i8* %226)
  %232 = inttoptr i64 %231 to i8*
  %_Dynamic_check.lower170 = icmp ule i8* %230, %232
  %233 = call i64 @c_TPtoO(i8* %add.ptr169)
  %234 = inttoptr i64 %233 to i8*
  %235 = call i64 @c_TPtoO(i8* %add.ptr165)
  %236 = inttoptr i64 %235 to i8*
  %_Dynamic_check.upper171 = icmp ule i8* %234, %236
  %_Dynamic_check.cast172 = and i1 %_Dynamic_check.lower170, %_Dynamic_check.upper171
  br i1 %_Dynamic_check.cast172, label %_Dynamic_check.success174, label %_Dynamic_check.failed173

_Dynamic_check.success174:                        ; preds = %_Dynamic_check.succeeded168, %if.end162
  %237 = ptrtoint i8* %226 to i32
  %238 = call i8* @c_fetch_pointer_from_offset(i32 %237)
  %239 = call i1 @c_isTaintedPointerToTaintedMem(i8* %238)
  br i1 %239, label %_Dynamic_check.succeeded176, label %_Dynamic_check.failed175

_Dynamic_check.succeeded176:                      ; preds = %_Dynamic_check.success174
  call void @t_free(i8* %238)
  br label %while.cond177

while.cond177:                                    ; preds = %while.body183, %_Dynamic_check.succeeded176
  %240 = load i8*, i8** %str_cpy, align 4
  %241 = ptrtoint i8* %240 to i32
  %242 = call i8* @c_fetch_pointer_from_offset(i32 %241)
  %243 = call i1 @c_isTaintedPointerToTaintedMem(i8* %242)
  br i1 %243, label %_Dynamic_check.succeeded179, label %_Dynamic_check.failed178

_Dynamic_check.succeeded179:                      ; preds = %while.cond177
  %244 = load i8, i8* %242, align 1
  %conv180 = zext i8 %244 to i32
  %call181 = call i32 @isspace(i32 %conv180) #9
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %while.body183, label %while.end185

while.body183:                                    ; preds = %_Dynamic_check.succeeded179
  %245 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr184 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %incdec.ptr184, i8** %str_cpy, align 4
  br label %while.cond177, !llvm.loop !19

_Dynamic_check.failed167:                         ; preds = %_Dynamic_check.subsumption164
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed173:                         ; preds = %_Dynamic_check.succeeded168
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed175:                         ; preds = %_Dynamic_check.success174
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed178:                         ; preds = %while.cond177
  call void @llvm.trap() #8
  unreachable

while.end185:                                     ; preds = %_Dynamic_check.succeeded179
  %246 = load i8*, i8** %str_cpy, align 4
  %247 = ptrtoint i8* %246 to i32
  %248 = call i8* @c_fetch_pointer_from_offset(i32 %247)
  %249 = call i1 @c_isTaintedPointerToTaintedMem(i8* %248)
  br i1 %249, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %while.end185
  %250 = load i8, i8* %248, align 1
  %conv188 = sext i8 %250 to i32
  %cmp189 = icmp ne i32 %conv188, 44
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %_Dynamic_check.succeeded187
  br label %while.end203

_Dynamic_check.failed186:                         ; preds = %while.end185
  call void @llvm.trap() #8
  unreachable

if.end192:                                        ; preds = %_Dynamic_check.succeeded187
  %251 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr193 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %incdec.ptr193, i8** %str_cpy, align 4
  br label %while.cond194

while.cond194:                                    ; preds = %while.body200, %if.end192
  %252 = load i8*, i8** %str_cpy, align 4
  %253 = ptrtoint i8* %252 to i32
  %254 = call i8* @c_fetch_pointer_from_offset(i32 %253)
  %255 = call i1 @c_isTaintedPointerToTaintedMem(i8* %254)
  br i1 %255, label %_Dynamic_check.succeeded196, label %_Dynamic_check.failed195

_Dynamic_check.succeeded196:                      ; preds = %while.cond194
  %256 = load i8, i8* %254, align 1
  %conv197 = zext i8 %256 to i32
  %call198 = call i32 @isspace(i32 %conv197) #9
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %while.body200, label %while.end202

while.body200:                                    ; preds = %_Dynamic_check.succeeded196
  %257 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr201 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %incdec.ptr201, i8** %str_cpy, align 4
  br label %while.cond194, !llvm.loop !20

_Dynamic_check.failed195:                         ; preds = %while.cond194
  call void @llvm.trap() #8
  unreachable

while.end202:                                     ; preds = %_Dynamic_check.succeeded196
  br label %while.cond50, !llvm.loop !21

while.end203:                                     ; preds = %if.then191, %_Dynamic_check.succeeded52
  br label %while.cond204

while.cond204:                                    ; preds = %while.body210, %while.end203
  %258 = load i8*, i8** %str_cpy, align 4
  %259 = ptrtoint i8* %258 to i32
  %260 = call i8* @c_fetch_pointer_from_offset(i32 %259)
  %261 = call i1 @c_isTaintedPointerToTaintedMem(i8* %260)
  br i1 %261, label %_Dynamic_check.succeeded206, label %_Dynamic_check.failed205

_Dynamic_check.succeeded206:                      ; preds = %while.cond204
  %262 = load i8, i8* %260, align 1
  %conv207 = zext i8 %262 to i32
  %call208 = call i32 @isspace(i32 %conv207) #9
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %while.body210, label %while.end212

while.body210:                                    ; preds = %_Dynamic_check.succeeded206
  %263 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr211 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %incdec.ptr211, i8** %str_cpy, align 4
  br label %while.cond204, !llvm.loop !22

_Dynamic_check.failed205:                         ; preds = %while.cond204
  call void @llvm.trap() #8
  unreachable

while.end212:                                     ; preds = %_Dynamic_check.succeeded206
  %264 = load i8*, i8** %str_cpy, align 4
  %265 = ptrtoint i8* %264 to i32
  %266 = call i8* @c_fetch_pointer_from_offset(i32 %265)
  %267 = call i1 @c_isTaintedPointerToTaintedMem(i8* %266)
  br i1 %267, label %_Dynamic_check.succeeded214, label %_Dynamic_check.failed213

_Dynamic_check.succeeded214:                      ; preds = %while.end212
  %268 = load i8, i8* %266, align 1
  %conv215 = sext i8 %268 to i32
  %cmp216 = icmp ne i32 %conv215, 125
  br i1 %cmp216, label %if.then226, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %_Dynamic_check.succeeded214
  %269 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %output_object, align 4
  %270 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %output_object, align 4
  %271 = ptrtoint %Tstruct.Spl_json_object_t_t* %270 to i32
  %272 = call i8* @c_fetch_pointer_from_offset(i32 %271)
  %273 = call i1 @c_isTaintedPointerToTaintedMem(i8* %272)
  br i1 %273, label %_Dynamic_check.succeeded219, label %_Dynamic_check.failed218

_Dynamic_check.succeeded219:                      ; preds = %lor.lhs.false
  %274 = bitcast i8* %272 to %Tstruct.Spl_json_object_t_t*
  %call220 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %274)
  %275 = ptrtoint %Tstruct.Spl_json_object_t_t* %269 to i32
  %276 = call i8* @c_fetch_pointer_from_offset(i32 %275)
  %277 = call i1 @c_isTaintedPointerToTaintedMem(i8* %276)
  br i1 %277, label %_Dynamic_check.succeeded222, label %_Dynamic_check.failed221

_Dynamic_check.succeeded222:                      ; preds = %_Dynamic_check.succeeded219
  %278 = bitcast i8* %276 to %Tstruct.Spl_json_object_t_t*
  %call223 = call i32 @json_object_resize(%Tstruct.Spl_json_object_t_t* %278, i64 %call220)
  %cmp224 = icmp eq i32 %call223, -1
  br i1 %cmp224, label %if.then226, label %if.end234

if.then226:                                       ; preds = %_Dynamic_check.succeeded222, %_Dynamic_check.succeeded214
  %279 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %280 = ptrtoint %Tstruct.Spl_json_value_t_t* %279 to i32
  %281 = call i8* @c_fetch_pointer_from_offset(i32 %280)
  %282 = call i1 @c_isTaintedPointerToTaintedMem(i8* %281)
  br i1 %282, label %_Dynamic_check.succeeded228, label %_Dynamic_check.failed227

_Dynamic_check.succeeded228:                      ; preds = %if.then226
  %283 = bitcast i8* %281 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %283)
  %284 = load i8*, i8** %string.addr, align 4
  %285 = load i8*, i8** %str_cpy, align 4
  %286 = ptrtoint i8* %284 to i32
  %287 = call i8* @c_fetch_pointer_from_offset(i32 %286)
  %288 = call i1 @c_isTaintedPointerToTaintedMem(i8* %287)
  br i1 %288, label %_Dynamic_check.succeeded230, label %_Dynamic_check.failed229

_Dynamic_check.succeeded230:                      ; preds = %_Dynamic_check.succeeded228
  %289 = ptrtoint i8* %285 to i32
  %290 = call i8* @c_fetch_pointer_from_offset(i32 %289)
  %291 = call i1 @c_isTaintedPointerToTaintedMem(i8* %290)
  br i1 %291, label %_Dynamic_check.succeeded232, label %_Dynamic_check.failed231

_Dynamic_check.succeeded232:                      ; preds = %_Dynamic_check.succeeded230
  %call233 = call i8* @t_strcpy(i8* %287, i8* %290)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed213:                         ; preds = %while.end212
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed218:                         ; preds = %lor.lhs.false
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed221:                         ; preds = %_Dynamic_check.succeeded219
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed227:                         ; preds = %if.then226
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed229:                         ; preds = %_Dynamic_check.succeeded228
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed231:                         ; preds = %_Dynamic_check.succeeded230
  call void @llvm.trap() #8
  unreachable

if.end234:                                        ; preds = %_Dynamic_check.succeeded222
  %292 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr235 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %incdec.ptr235, i8** %str_cpy, align 4
  %293 = load i8*, i8** %string.addr, align 4
  %294 = load i8*, i8** %str_cpy, align 4
  %295 = ptrtoint i8* %293 to i32
  %296 = call i8* @c_fetch_pointer_from_offset(i32 %295)
  %297 = call i1 @c_isTaintedPointerToTaintedMem(i8* %296)
  br i1 %297, label %_Dynamic_check.succeeded237, label %_Dynamic_check.failed236

_Dynamic_check.succeeded237:                      ; preds = %if.end234
  %298 = ptrtoint i8* %294 to i32
  %299 = call i8* @c_fetch_pointer_from_offset(i32 %298)
  %300 = call i1 @c_isTaintedPointerToTaintedMem(i8* %299)
  br i1 %300, label %_Dynamic_check.succeeded239, label %_Dynamic_check.failed238

_Dynamic_check.succeeded239:                      ; preds = %_Dynamic_check.succeeded237
  %call240 = call i8* @t_strcpy(i8* %296, i8* %299)
  %301 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %301, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed236:                         ; preds = %if.end234
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed238:                         ; preds = %_Dynamic_check.succeeded237
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded239, %_Dynamic_check.succeeded232, %_Dynamic_check.succeeded160, %_Dynamic_check.succeeded126, %_Dynamic_check.succeeded97, %_Dynamic_check.succeeded68, %_Dynamic_check.succeeded47, %_Dynamic_check.succeeded26, %_Dynamic_check.succeeded13
  %302 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %302
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %Tstruct.Spl_json_value_t_t* @parse_array_value(i8* %string, i64 %nesting) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %nesting.addr = alloca i64, align 8
  %str_len = alloca i32, align 4
  %str_cpy = alloca i8*, align 4
  %output_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %new_array_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %output_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  store i8* %string, i8** %string.addr, align 4
  store i64 %nesting, i64* %nesting.addr, align 8
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = call i8* @c_fetch_pointer_from_offset(i32 %1)
  %3 = call i1 @c_isTaintedPointerToTaintedMem(i8* %2)
  br i1 %3, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i64 @t_strlen(i8* %2)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %str_len, align 4
  %4 = load i32, i32* %str_len, align 4
  %conv1 = sext i32 %4 to i64
  %mul = mul i64 %conv1, 1
  %call2 = call i8* @parson_string_tainted_malloc(i64 %mul)
  store i8* %call2, i8** %str_cpy, align 4
  %5 = load i8*, i8** %str_cpy, align 4
  %6 = load i8*, i8** %string.addr, align 4
  %7 = ptrtoint i8* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %10 = ptrtoint i8* %6 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %call7 = call i8* @t_strcpy(i8* %8, i8* %11)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %new_array_value, align 4
  store %Tstruct.Spl_json_array_t_t* null, %Tstruct.Spl_json_array_t_t** %output_array, align 4
  %call8 = call %Tstruct.Spl_json_value_t_t* @json_value_init_array()
  %13 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %14 = bitcast %Tstruct.json_value_t_t* %13 to i8*
  %15 = call i64 @c_TPtoO(i8* %14)
  %16 = inttoptr i64 %15 to %Tstruct.json_value_t_t*
  %17 = bitcast %Tstruct.json_value_t_t* %16 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %17, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded6
  %20 = load i8*, i8** %string.addr, align 4
  %21 = load i8*, i8** %str_cpy, align 4
  %22 = ptrtoint i8* %20 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %if.then
  %25 = ptrtoint i8* %21 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %call14 = call i8* @t_strcpy(i8* %23, i8* %26)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed10:                          ; preds = %if.then
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded6
  %28 = load i8*, i8** %str_cpy, align 4
  %29 = ptrtoint i8* %28 to i32
  %30 = call i8* @c_fetch_pointer_from_offset(i32 %29)
  %31 = call i1 @c_isTaintedPointerToTaintedMem(i8* %30)
  br i1 %31, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %if.end
  %32 = load i8, i8* %30, align 1
  %conv17 = sext i8 %32 to i32
  %cmp18 = icmp ne i32 %conv17, 91
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %_Dynamic_check.succeeded16
  %33 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %34 = ptrtoint %Tstruct.Spl_json_value_t_t* %33 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %if.then20
  %37 = bitcast i8* %35 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %37)
  %38 = load i8*, i8** %string.addr, align 4
  %39 = load i8*, i8** %str_cpy, align 4
  %40 = ptrtoint i8* %38 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded22
  %43 = ptrtoint i8* %39 to i32
  %44 = call i8* @c_fetch_pointer_from_offset(i32 %43)
  %45 = call i1 @c_isTaintedPointerToTaintedMem(i8* %44)
  br i1 %45, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded24
  %call27 = call i8* @t_strcpy(i8* %41, i8* %44)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed15:                          ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %if.then20
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #8
  unreachable

if.end28:                                         ; preds = %_Dynamic_check.succeeded16
  %46 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %47 = ptrtoint %Tstruct.Spl_json_value_t_t* %46 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %if.end28
  %50 = bitcast i8* %48 to %Tstruct.Spl_json_value_t_t*
  %call31 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %50)
  %51 = bitcast %Tstruct.Spl_json_array_t_t* %call31 to %Tstruct.json_array_t_t*
  %52 = bitcast %Tstruct.json_array_t_t* %51 to i8*
  %53 = call i64 @c_TPtoO(i8* %52)
  %54 = inttoptr i64 %53 to %Tstruct.json_array_t_t*
  %55 = bitcast %Tstruct.json_array_t_t* %54 to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %55, %Tstruct.Spl_json_array_t_t** %output_array, align 4
  %56 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr, i8** %str_cpy, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %_Dynamic_check.succeeded30
  %57 = load i8*, i8** %str_cpy, align 4
  %58 = ptrtoint i8* %57 to i32
  %59 = call i8* @c_fetch_pointer_from_offset(i32 %58)
  %60 = call i1 @c_isTaintedPointerToTaintedMem(i8* %59)
  br i1 %60, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %while.cond
  %61 = load i8, i8* %59, align 1
  %conv34 = zext i8 %61 to i32
  %call35 = call i32 @isspace(i32 %conv34) #9
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %_Dynamic_check.succeeded33
  %62 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr36, i8** %str_cpy, align 4
  br label %while.cond, !llvm.loop !23

_Dynamic_check.failed29:                          ; preds = %if.end28
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed32:                          ; preds = %while.cond
  call void @llvm.trap() #8
  unreachable

while.end:                                        ; preds = %_Dynamic_check.succeeded33
  %63 = load i8*, i8** %str_cpy, align 4
  %64 = ptrtoint i8* %63 to i32
  %65 = call i8* @c_fetch_pointer_from_offset(i32 %64)
  %66 = call i1 @c_isTaintedPointerToTaintedMem(i8* %65)
  br i1 %66, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %while.end
  %67 = load i8, i8* %65, align 1
  %conv39 = sext i8 %67 to i32
  %cmp40 = icmp eq i32 %conv39, 93
  br i1 %cmp40, label %if.then42, label %if.end49

if.then42:                                        ; preds = %_Dynamic_check.succeeded38
  %68 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr43 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr43, i8** %str_cpy, align 4
  %69 = load i8*, i8** %string.addr, align 4
  %70 = load i8*, i8** %str_cpy, align 4
  %71 = ptrtoint i8* %69 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %if.then42
  %74 = ptrtoint i8* %70 to i32
  %75 = call i8* @c_fetch_pointer_from_offset(i32 %74)
  %76 = call i1 @c_isTaintedPointerToTaintedMem(i8* %75)
  br i1 %76, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded45
  %call48 = call i8* @t_strcpy(i8* %72, i8* %75)
  %77 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %77, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed37:                          ; preds = %while.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed44:                          ; preds = %if.then42
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded45
  call void @llvm.trap() #8
  unreachable

if.end49:                                         ; preds = %_Dynamic_check.succeeded38
  br label %while.cond50

while.cond50:                                     ; preds = %while.end114, %if.end49
  %78 = load i8*, i8** %str_cpy, align 4
  %79 = ptrtoint i8* %78 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %while.cond50
  %82 = load i8, i8* %80, align 1
  %conv53 = sext i8 %82 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %while.body56, label %while.end115

while.body56:                                     ; preds = %_Dynamic_check.succeeded52
  %83 = load i8*, i8** %str_cpy, align 4
  %84 = load i64, i64* %nesting.addr, align 8
  %85 = ptrtoint i8* %83 to i32
  %86 = call i8* @c_fetch_pointer_from_offset(i32 %85)
  %87 = call i1 @c_isTaintedPointerToTaintedMem(i8* %86)
  br i1 %87, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %while.body56
  %call59 = call %Tstruct.Spl_json_value_t_t* @parse_value(i8* %86, i64 %84)
  %88 = bitcast %Tstruct.Spl_json_value_t_t* %call59 to %Tstruct.json_value_t_t*
  %89 = bitcast %Tstruct.json_value_t_t* %88 to i8*
  %90 = call i64 @c_TPtoO(i8* %89)
  %91 = inttoptr i64 %90 to %Tstruct.json_value_t_t*
  %92 = bitcast %Tstruct.json_value_t_t* %91 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %92, %Tstruct.Spl_json_value_t_t** %new_array_value, align 4
  %93 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_array_value, align 4
  %94 = ptrtoint %Tstruct.Spl_json_value_t_t* %93 to i32
  %cmp60 = icmp eq i32 %94, 0
  br i1 %cmp60, label %if.then62, label %if.end70

if.then62:                                        ; preds = %_Dynamic_check.succeeded58
  %95 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %96 = ptrtoint %Tstruct.Spl_json_value_t_t* %95 to i32
  %97 = call i8* @c_fetch_pointer_from_offset(i32 %96)
  %98 = call i1 @c_isTaintedPointerToTaintedMem(i8* %97)
  br i1 %98, label %_Dynamic_check.succeeded64, label %_Dynamic_check.failed63

_Dynamic_check.succeeded64:                       ; preds = %if.then62
  %99 = bitcast i8* %97 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %99)
  %100 = load i8*, i8** %string.addr, align 4
  %101 = load i8*, i8** %str_cpy, align 4
  %102 = ptrtoint i8* %100 to i32
  %103 = call i8* @c_fetch_pointer_from_offset(i32 %102)
  %104 = call i1 @c_isTaintedPointerToTaintedMem(i8* %103)
  br i1 %104, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %_Dynamic_check.succeeded64
  %105 = ptrtoint i8* %101 to i32
  %106 = call i8* @c_fetch_pointer_from_offset(i32 %105)
  %107 = call i1 @c_isTaintedPointerToTaintedMem(i8* %106)
  br i1 %107, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded66
  %call69 = call i8* @t_strcpy(i8* %103, i8* %106)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed51:                          ; preds = %while.cond50
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed57:                          ; preds = %while.body56
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed63:                          ; preds = %if.then62
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed65:                          ; preds = %_Dynamic_check.succeeded64
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded66
  call void @llvm.trap() #8
  unreachable

if.end70:                                         ; preds = %_Dynamic_check.succeeded58
  %108 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %output_array, align 4
  %109 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_array_value, align 4
  %110 = ptrtoint %Tstruct.Spl_json_array_t_t* %108 to i32
  %111 = call i8* @c_fetch_pointer_from_offset(i32 %110)
  %112 = call i1 @c_isTaintedPointerToTaintedMem(i8* %111)
  br i1 %112, label %_Dynamic_check.succeeded72, label %_Dynamic_check.failed71

_Dynamic_check.succeeded72:                       ; preds = %if.end70
  %113 = bitcast i8* %111 to %Tstruct.Spl_json_array_t_t*
  %114 = ptrtoint %Tstruct.Spl_json_value_t_t* %109 to i32
  %115 = call i8* @c_fetch_pointer_from_offset(i32 %114)
  %116 = call i1 @c_isTaintedPointerToTaintedMem(i8* %115)
  br i1 %116, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %_Dynamic_check.succeeded72
  %117 = bitcast i8* %115 to %Tstruct.Spl_json_value_t_t*
  %call75 = call i32 bitcast (i32 (%Tstruct.json_array_t_t*, %Tstruct.json_value_t_t*)* @json_array_add to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %113, %Tstruct.Spl_json_value_t_t* %117)
  %cmp76 = icmp eq i32 %call75, -1
  br i1 %cmp76, label %if.then78, label %if.end88

if.then78:                                        ; preds = %_Dynamic_check.succeeded74
  %118 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_array_value, align 4
  %119 = ptrtoint %Tstruct.Spl_json_value_t_t* %118 to i32
  %120 = call i8* @c_fetch_pointer_from_offset(i32 %119)
  %121 = call i1 @c_isTaintedPointerToTaintedMem(i8* %120)
  br i1 %121, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %if.then78
  %122 = bitcast i8* %120 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %122)
  %123 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %124 = ptrtoint %Tstruct.Spl_json_value_t_t* %123 to i32
  %125 = call i8* @c_fetch_pointer_from_offset(i32 %124)
  %126 = call i1 @c_isTaintedPointerToTaintedMem(i8* %125)
  br i1 %126, label %_Dynamic_check.succeeded82, label %_Dynamic_check.failed81

_Dynamic_check.succeeded82:                       ; preds = %_Dynamic_check.succeeded80
  %127 = bitcast i8* %125 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %127)
  %128 = load i8*, i8** %string.addr, align 4
  %129 = load i8*, i8** %str_cpy, align 4
  %130 = ptrtoint i8* %128 to i32
  %131 = call i8* @c_fetch_pointer_from_offset(i32 %130)
  %132 = call i1 @c_isTaintedPointerToTaintedMem(i8* %131)
  br i1 %132, label %_Dynamic_check.succeeded84, label %_Dynamic_check.failed83

_Dynamic_check.succeeded84:                       ; preds = %_Dynamic_check.succeeded82
  %133 = ptrtoint i8* %129 to i32
  %134 = call i8* @c_fetch_pointer_from_offset(i32 %133)
  %135 = call i1 @c_isTaintedPointerToTaintedMem(i8* %134)
  br i1 %135, label %_Dynamic_check.succeeded86, label %_Dynamic_check.failed85

_Dynamic_check.succeeded86:                       ; preds = %_Dynamic_check.succeeded84
  %call87 = call i8* @t_strcpy(i8* %131, i8* %134)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed71:                          ; preds = %if.end70
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed73:                          ; preds = %_Dynamic_check.succeeded72
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed79:                          ; preds = %if.then78
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed81:                          ; preds = %_Dynamic_check.succeeded80
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed83:                          ; preds = %_Dynamic_check.succeeded82
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed85:                          ; preds = %_Dynamic_check.succeeded84
  call void @llvm.trap() #8
  unreachable

if.end88:                                         ; preds = %_Dynamic_check.succeeded74
  br label %while.cond89

while.cond89:                                     ; preds = %while.body95, %if.end88
  %136 = load i8*, i8** %str_cpy, align 4
  %137 = ptrtoint i8* %136 to i32
  %138 = call i8* @c_fetch_pointer_from_offset(i32 %137)
  %139 = call i1 @c_isTaintedPointerToTaintedMem(i8* %138)
  br i1 %139, label %_Dynamic_check.succeeded91, label %_Dynamic_check.failed90

_Dynamic_check.succeeded91:                       ; preds = %while.cond89
  %140 = load i8, i8* %138, align 1
  %conv92 = zext i8 %140 to i32
  %call93 = call i32 @isspace(i32 %conv92) #9
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %while.body95, label %while.end97

while.body95:                                     ; preds = %_Dynamic_check.succeeded91
  %141 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr96 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr96, i8** %str_cpy, align 4
  br label %while.cond89, !llvm.loop !24

_Dynamic_check.failed90:                          ; preds = %while.cond89
  call void @llvm.trap() #8
  unreachable

while.end97:                                      ; preds = %_Dynamic_check.succeeded91
  %142 = load i8*, i8** %str_cpy, align 4
  %143 = ptrtoint i8* %142 to i32
  %144 = call i8* @c_fetch_pointer_from_offset(i32 %143)
  %145 = call i1 @c_isTaintedPointerToTaintedMem(i8* %144)
  br i1 %145, label %_Dynamic_check.succeeded99, label %_Dynamic_check.failed98

_Dynamic_check.succeeded99:                       ; preds = %while.end97
  %146 = load i8, i8* %144, align 1
  %conv100 = sext i8 %146 to i32
  %cmp101 = icmp ne i32 %conv100, 44
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %_Dynamic_check.succeeded99
  br label %while.end115

_Dynamic_check.failed98:                          ; preds = %while.end97
  call void @llvm.trap() #8
  unreachable

if.end104:                                        ; preds = %_Dynamic_check.succeeded99
  %147 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr105 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr105, i8** %str_cpy, align 4
  br label %while.cond106

while.cond106:                                    ; preds = %while.body112, %if.end104
  %148 = load i8*, i8** %str_cpy, align 4
  %149 = ptrtoint i8* %148 to i32
  %150 = call i8* @c_fetch_pointer_from_offset(i32 %149)
  %151 = call i1 @c_isTaintedPointerToTaintedMem(i8* %150)
  br i1 %151, label %_Dynamic_check.succeeded108, label %_Dynamic_check.failed107

_Dynamic_check.succeeded108:                      ; preds = %while.cond106
  %152 = load i8, i8* %150, align 1
  %conv109 = zext i8 %152 to i32
  %call110 = call i32 @isspace(i32 %conv109) #9
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %while.body112, label %while.end114

while.body112:                                    ; preds = %_Dynamic_check.succeeded108
  %153 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr113 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr113, i8** %str_cpy, align 4
  br label %while.cond106, !llvm.loop !25

_Dynamic_check.failed107:                         ; preds = %while.cond106
  call void @llvm.trap() #8
  unreachable

while.end114:                                     ; preds = %_Dynamic_check.succeeded108
  br label %while.cond50, !llvm.loop !26

while.end115:                                     ; preds = %if.then103, %_Dynamic_check.succeeded52
  br label %while.cond116

while.cond116:                                    ; preds = %while.body122, %while.end115
  %154 = load i8*, i8** %str_cpy, align 4
  %155 = ptrtoint i8* %154 to i32
  %156 = call i8* @c_fetch_pointer_from_offset(i32 %155)
  %157 = call i1 @c_isTaintedPointerToTaintedMem(i8* %156)
  br i1 %157, label %_Dynamic_check.succeeded118, label %_Dynamic_check.failed117

_Dynamic_check.succeeded118:                      ; preds = %while.cond116
  %158 = load i8, i8* %156, align 1
  %conv119 = zext i8 %158 to i32
  %call120 = call i32 @isspace(i32 %conv119) #9
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %while.body122, label %while.end124

while.body122:                                    ; preds = %_Dynamic_check.succeeded118
  %159 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr123 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr123, i8** %str_cpy, align 4
  br label %while.cond116, !llvm.loop !27

_Dynamic_check.failed117:                         ; preds = %while.cond116
  call void @llvm.trap() #8
  unreachable

while.end124:                                     ; preds = %_Dynamic_check.succeeded118
  %160 = load i8*, i8** %str_cpy, align 4
  %161 = ptrtoint i8* %160 to i32
  %162 = call i8* @c_fetch_pointer_from_offset(i32 %161)
  %163 = call i1 @c_isTaintedPointerToTaintedMem(i8* %162)
  br i1 %163, label %_Dynamic_check.succeeded126, label %_Dynamic_check.failed125

_Dynamic_check.succeeded126:                      ; preds = %while.end124
  %164 = load i8, i8* %162, align 1
  %conv127 = sext i8 %164 to i32
  %cmp128 = icmp ne i32 %conv127, 93
  br i1 %cmp128, label %if.then138, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %_Dynamic_check.succeeded126
  %165 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %output_array, align 4
  %166 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %output_array, align 4
  %167 = ptrtoint %Tstruct.Spl_json_array_t_t* %166 to i32
  %168 = call i8* @c_fetch_pointer_from_offset(i32 %167)
  %169 = call i1 @c_isTaintedPointerToTaintedMem(i8* %168)
  br i1 %169, label %_Dynamic_check.succeeded131, label %_Dynamic_check.failed130

_Dynamic_check.succeeded131:                      ; preds = %lor.lhs.false
  %170 = bitcast i8* %168 to %Tstruct.Spl_json_array_t_t*
  %call132 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %170)
  %171 = ptrtoint %Tstruct.Spl_json_array_t_t* %165 to i32
  %172 = call i8* @c_fetch_pointer_from_offset(i32 %171)
  %173 = call i1 @c_isTaintedPointerToTaintedMem(i8* %172)
  br i1 %173, label %_Dynamic_check.succeeded134, label %_Dynamic_check.failed133

_Dynamic_check.succeeded134:                      ; preds = %_Dynamic_check.succeeded131
  %174 = bitcast i8* %172 to %Tstruct.Spl_json_array_t_t*
  %call135 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_resize to i32 (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %174, i64 %call132)
  %cmp136 = icmp eq i32 %call135, -1
  br i1 %cmp136, label %if.then138, label %if.end146

if.then138:                                       ; preds = %_Dynamic_check.succeeded134, %_Dynamic_check.succeeded126
  %175 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %176 = ptrtoint %Tstruct.Spl_json_value_t_t* %175 to i32
  %177 = call i8* @c_fetch_pointer_from_offset(i32 %176)
  %178 = call i1 @c_isTaintedPointerToTaintedMem(i8* %177)
  br i1 %178, label %_Dynamic_check.succeeded140, label %_Dynamic_check.failed139

_Dynamic_check.succeeded140:                      ; preds = %if.then138
  %179 = bitcast i8* %177 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %179)
  %180 = load i8*, i8** %string.addr, align 4
  %181 = load i8*, i8** %str_cpy, align 4
  %182 = ptrtoint i8* %180 to i32
  %183 = call i8* @c_fetch_pointer_from_offset(i32 %182)
  %184 = call i1 @c_isTaintedPointerToTaintedMem(i8* %183)
  br i1 %184, label %_Dynamic_check.succeeded142, label %_Dynamic_check.failed141

_Dynamic_check.succeeded142:                      ; preds = %_Dynamic_check.succeeded140
  %185 = ptrtoint i8* %181 to i32
  %186 = call i8* @c_fetch_pointer_from_offset(i32 %185)
  %187 = call i1 @c_isTaintedPointerToTaintedMem(i8* %186)
  br i1 %187, label %_Dynamic_check.succeeded144, label %_Dynamic_check.failed143

_Dynamic_check.succeeded144:                      ; preds = %_Dynamic_check.succeeded142
  %call145 = call i8* @t_strcpy(i8* %183, i8* %186)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed125:                         ; preds = %while.end124
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed130:                         ; preds = %lor.lhs.false
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed133:                         ; preds = %_Dynamic_check.succeeded131
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed139:                         ; preds = %if.then138
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed141:                         ; preds = %_Dynamic_check.succeeded140
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed143:                         ; preds = %_Dynamic_check.succeeded142
  call void @llvm.trap() #8
  unreachable

if.end146:                                        ; preds = %_Dynamic_check.succeeded134
  %188 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr147 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %incdec.ptr147, i8** %str_cpy, align 4
  %189 = load i8*, i8** %string.addr, align 4
  %190 = load i8*, i8** %str_cpy, align 4
  %191 = ptrtoint i8* %189 to i32
  %192 = call i8* @c_fetch_pointer_from_offset(i32 %191)
  %193 = call i1 @c_isTaintedPointerToTaintedMem(i8* %192)
  br i1 %193, label %_Dynamic_check.succeeded149, label %_Dynamic_check.failed148

_Dynamic_check.succeeded149:                      ; preds = %if.end146
  %194 = ptrtoint i8* %190 to i32
  %195 = call i8* @c_fetch_pointer_from_offset(i32 %194)
  %196 = call i1 @c_isTaintedPointerToTaintedMem(i8* %195)
  br i1 %196, label %_Dynamic_check.succeeded151, label %_Dynamic_check.failed150

_Dynamic_check.succeeded151:                      ; preds = %_Dynamic_check.succeeded149
  %call152 = call i8* @t_strcpy(i8* %192, i8* %195)
  %197 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %197, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed148:                         ; preds = %if.end146
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed150:                         ; preds = %_Dynamic_check.succeeded149
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded151, %_Dynamic_check.succeeded144, %_Dynamic_check.succeeded86, %_Dynamic_check.succeeded68, %_Dynamic_check.succeeded47, %_Dynamic_check.succeeded26, %_Dynamic_check.succeeded13
  %198 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %198
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_array_resize(%Tstruct.json_array_t_t* %array, i64 %new_capacity) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %new_capacity.addr = alloca i64, align 8
  %new_items = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 %new_capacity, i64* %new_capacity.addr, align 8
  %1 = bitcast %Tstruct.Spl_json_value_t_t*** %new_items to i32*
  store i32 0, i32* %1, align 4
  %2 = load i64, i64* %new_capacity.addr, align 8
  %cmp = icmp eq i64 %2, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i64, i64* %new_capacity.addr, align 8
  %4 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %5 = ptrtoint %Tstruct.Spl_json_array_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %8, i32 0, i32 2
  %9 = load i32, i32* %count, align 8
  %conv = zext i32 %9 to i64
  %cmp1 = icmp ult i64 %3, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %10 = load i64, i64* %new_capacity.addr, align 8
  %mul = mul i64 %10, 8
  %call = call i8* @t_malloc(i64 %mul)
  %11 = bitcast i8* %call to %Tstruct.json_value_t_t**
  %12 = bitcast %Tstruct.json_value_t_t** %11 to i8*
  %13 = call i64 @c_TPtoO(i8* %12)
  %14 = inttoptr i64 %13 to %Tstruct.json_value_t_t**
  %15 = bitcast %Tstruct.json_value_t_t** %14 to %Tstruct.Spl_json_value_t_t**
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t** %15 to i32
  %17 = bitcast %Tstruct.Spl_json_value_t_t*** %new_items to i32*
  store i32 %16, i32* %17, align 4
  %18 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %new_items, align 4
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t** %18 to i32
  %cmp3 = icmp eq i32 %19, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %20 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %21 = ptrtoint %Tstruct.Spl_json_array_t_t* %20 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %if.end6
  %24 = bitcast i8* %22 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %24, i32 0, i32 1
  %items9 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %25 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items9, align 4
  %26 = ptrtoint %Tstruct.Spl_json_value_t_t** %25 to i32
  %cmp10 = icmp ne i32 %26, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end72

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded8
  %27 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %28 = ptrtoint %Tstruct.Spl_json_array_t_t* %27 to i32
  %29 = call i8* @c_fetch_pointer_from_offset(i32 %28)
  %30 = call i1 @c_isTaintedPointerToTaintedMem(i8* %29)
  br i1 %30, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %land.lhs.true
  %31 = bitcast i8* %29 to %Tstruct.Spl_json_array_t_t*
  %count14 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %31, i32 0, i32 2
  %32 = load i32, i32* %count14, align 8
  %cmp15 = icmp ugt i32 %32, 0
  br i1 %cmp15, label %if.then17, label %if.end72

if.then17:                                        ; preds = %_Dynamic_check.succeeded13
  %33 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %new_items, align 4
  %_Dynamic_check.is_null = icmp eq %Tstruct.Spl_json_value_t_t** %33, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then17
  %34 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %new_items, align 4
  %35 = bitcast %Tstruct.Spl_json_value_t_t** %34 to i8*
  %36 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %new_items, align 4
  %37 = bitcast %Tstruct.Spl_json_value_t_t** %36 to i8*
  %38 = load i64, i64* %new_capacity.addr, align 8
  %mul18 = mul i64 %38, 8
  %_Dynamic_check.non_null = icmp ne i8* %37, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %mul18
  %39 = bitcast %Tstruct.Spl_json_value_t_t** %33 to i8*
  %40 = bitcast %Tstruct.Spl_json_value_t_t** %33 to i8*
  %41 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %42 = ptrtoint %Tstruct.Spl_json_array_t_t* %41 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded20
  %45 = bitcast i8* %43 to %Tstruct.Spl_json_array_t_t*
  %count23 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %45, i32 0, i32 2
  %46 = load i32, i32* %count23, align 8
  %conv24 = zext i32 %46 to i64
  %mul25 = mul i64 %conv24, 8
  %_Dynamic_check.non_null26 = icmp ne i8* %40, null
  br i1 %_Dynamic_check.non_null26, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded22
  %add.ptr29 = getelementptr inbounds i8, i8* %40, i64 %mul25
  %47 = call i64 @c_TPtoO(i8* %35)
  %48 = inttoptr i64 %47 to i8*
  %49 = call i64 @c_TPtoO(i8* %39)
  %50 = inttoptr i64 %49 to i8*
  %_Dynamic_check.lower = icmp ule i8* %48, %50
  %51 = call i64 @c_TPtoO(i8* %add.ptr29)
  %52 = inttoptr i64 %51 to i8*
  %53 = call i64 @c_TPtoO(i8* %add.ptr)
  %54 = inttoptr i64 %53 to i8*
  %_Dynamic_check.upper = icmp ule i8* %52, %54
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed30

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded28, %if.then17
  %55 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %56 = ptrtoint %Tstruct.Spl_json_array_t_t* %55 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.success
  %59 = bitcast i8* %57 to %Tstruct.Spl_json_array_t_t*
  %items33 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %59, i32 0, i32 1
  %items34 = bitcast i32* %items33 to %Tstruct.Spl_json_value_t_t***
  %60 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items34, align 4
  %_Dynamic_check.is_null35 = icmp eq %Tstruct.Spl_json_value_t_t** %60, null
  br i1 %_Dynamic_check.is_null35, label %_Dynamic_check.success61, label %_Dynamic_check.subsumption36

_Dynamic_check.subsumption36:                     ; preds = %_Dynamic_check.succeeded32
  %61 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %62 = ptrtoint %Tstruct.Spl_json_array_t_t* %61 to i32
  %63 = call i8* @c_fetch_pointer_from_offset(i32 %62)
  %64 = call i1 @c_isTaintedPointerToTaintedMem(i8* %63)
  br i1 %64, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %_Dynamic_check.subsumption36
  %65 = bitcast i8* %63 to %Tstruct.Spl_json_array_t_t*
  %items39 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %65, i32 0, i32 1
  %items40 = bitcast i32* %items39 to %Tstruct.Spl_json_value_t_t***
  %66 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items40, align 4
  %67 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %68 = ptrtoint %Tstruct.Spl_json_array_t_t* %67 to i32
  %69 = call i8* @c_fetch_pointer_from_offset(i32 %68)
  %70 = call i1 @c_isTaintedPointerToTaintedMem(i8* %69)
  br i1 %70, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %_Dynamic_check.succeeded38
  %71 = bitcast i8* %69 to %Tstruct.Spl_json_array_t_t*
  %items43 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %71, i32 0, i32 1
  %items44 = bitcast i32* %items43 to %Tstruct.Spl_json_value_t_t***
  %72 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items44, align 4
  %73 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %74 = ptrtoint %Tstruct.Spl_json_array_t_t* %73 to i32
  %75 = call i8* @c_fetch_pointer_from_offset(i32 %74)
  %76 = call i1 @c_isTaintedPointerToTaintedMem(i8* %75)
  br i1 %76, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded42
  %77 = bitcast i8* %75 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %77, i32 0, i32 3
  %78 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %78 to i64
  %add.ptr47 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %72, i64 %idx.ext
  %79 = bitcast %Tstruct.Spl_json_value_t_t** %60 to i8*
  %80 = bitcast i8* %79 to %Tstruct.Spl_json_value_t_t**
  %81 = bitcast %Tstruct.Spl_json_value_t_t** %60 to i8*
  %82 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %83 = ptrtoint %Tstruct.Spl_json_array_t_t* %82 to i32
  %84 = call i8* @c_fetch_pointer_from_offset(i32 %83)
  %85 = call i1 @c_isTaintedPointerToTaintedMem(i8* %84)
  br i1 %85, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %_Dynamic_check.succeeded46
  %86 = bitcast i8* %84 to %Tstruct.Spl_json_array_t_t*
  %count50 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %86, i32 0, i32 2
  %87 = load i32, i32* %count50, align 8
  %conv51 = zext i32 %87 to i64
  %mul52 = mul i64 %conv51, 8
  %_Dynamic_check.non_null53 = icmp ne i8* %81, null
  br i1 %_Dynamic_check.non_null53, label %_Dynamic_check.succeeded55, label %_Dynamic_check.failed54

_Dynamic_check.succeeded55:                       ; preds = %_Dynamic_check.succeeded49
  %add.ptr56 = getelementptr inbounds i8, i8* %81, i64 %mul52
  %88 = bitcast i8* %add.ptr56 to %Tstruct.Spl_json_value_t_t**
  %89 = bitcast %Tstruct.Spl_json_value_t_t** %66 to i8*
  %90 = call i64 @c_TPtoO(i8* %89)
  %91 = inttoptr i64 %90 to %Tstruct.Spl_json_value_t_t**
  %92 = bitcast %Tstruct.Spl_json_value_t_t** %80 to i8*
  %93 = call i64 @c_TPtoO(i8* %92)
  %94 = inttoptr i64 %93 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower57 = icmp ule %Tstruct.Spl_json_value_t_t** %91, %94
  %95 = bitcast %Tstruct.Spl_json_value_t_t** %88 to i8*
  %96 = call i64 @c_TPtoO(i8* %95)
  %97 = inttoptr i64 %96 to %Tstruct.Spl_json_value_t_t**
  %98 = bitcast %Tstruct.Spl_json_value_t_t** %add.ptr47 to i8*
  %99 = call i64 @c_TPtoO(i8* %98)
  %100 = inttoptr i64 %99 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.upper58 = icmp ule %Tstruct.Spl_json_value_t_t** %97, %100
  %_Dynamic_check.cast59 = and i1 %_Dynamic_check.lower57, %_Dynamic_check.upper58
  br i1 %_Dynamic_check.cast59, label %_Dynamic_check.success61, label %_Dynamic_check.failed60

_Dynamic_check.success61:                         ; preds = %_Dynamic_check.succeeded55, %_Dynamic_check.succeeded32
  %101 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %102 = ptrtoint %Tstruct.Spl_json_array_t_t* %101 to i32
  %103 = call i8* @c_fetch_pointer_from_offset(i32 %102)
  %104 = call i1 @c_isTaintedPointerToTaintedMem(i8* %103)
  br i1 %104, label %_Dynamic_check.succeeded63, label %_Dynamic_check.failed62

_Dynamic_check.succeeded63:                       ; preds = %_Dynamic_check.success61
  %105 = bitcast i8* %103 to %Tstruct.Spl_json_array_t_t*
  %count64 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %105, i32 0, i32 2
  %106 = load i32, i32* %count64, align 8
  %conv65 = zext i32 %106 to i64
  %mul66 = mul i64 %conv65, 8
  %107 = ptrtoint %Tstruct.Spl_json_value_t_t** %33 to i32
  %108 = call i8* @c_fetch_pointer_from_offset(i32 %107)
  %109 = call i1 @c_isTaintedPointerToTaintedMem(i8* %108)
  br i1 %109, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded63
  %110 = bitcast i8* %108 to %Tstruct.Spl_json_value_t_t**
  %111 = bitcast %Tstruct.Spl_json_value_t_t** %110 to i8*
  %112 = ptrtoint %Tstruct.Spl_json_value_t_t** %60 to i32
  %113 = call i8* @c_fetch_pointer_from_offset(i32 %112)
  %114 = call i1 @c_isTaintedPointerToTaintedMem(i8* %113)
  br i1 %114, label %_Dynamic_check.succeeded70, label %_Dynamic_check.failed69

_Dynamic_check.succeeded70:                       ; preds = %_Dynamic_check.succeeded68
  %115 = bitcast i8* %113 to %Tstruct.Spl_json_value_t_t**
  %116 = bitcast %Tstruct.Spl_json_value_t_t** %115 to i8*
  %call71 = call i8* @t_memcpy(i8* %111, i8* %116, i64 %mul66)
  %117 = bitcast i8* %call71 to %Tstruct.json_value_t_t**
  %118 = bitcast %Tstruct.json_value_t_t** %117 to i8*
  %119 = call i64 @c_TPtoO(i8* %118)
  %120 = inttoptr i64 %119 to %Tstruct.json_value_t_t**
  br label %if.end72

_Dynamic_check.failed7:                           ; preds = %if.end6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed12:                          ; preds = %land.lhs.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded28
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed31:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed37:                          ; preds = %_Dynamic_check.subsumption36
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed41:                          ; preds = %_Dynamic_check.succeeded38
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed45:                          ; preds = %_Dynamic_check.succeeded42
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed48:                          ; preds = %_Dynamic_check.succeeded46
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed54:                          ; preds = %_Dynamic_check.succeeded49
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded55
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed62:                          ; preds = %_Dynamic_check.success61
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded63
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed69:                          ; preds = %_Dynamic_check.succeeded68
  call void @llvm.trap() #8
  unreachable

if.end72:                                         ; preds = %_Dynamic_check.succeeded70, %_Dynamic_check.succeeded13, %_Dynamic_check.succeeded8
  %121 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %122 = ptrtoint %Tstruct.Spl_json_array_t_t* %121 to i32
  %123 = call i8* @c_fetch_pointer_from_offset(i32 %122)
  %124 = call i1 @c_isTaintedPointerToTaintedMem(i8* %123)
  br i1 %124, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %if.end72
  %125 = bitcast i8* %123 to %Tstruct.Spl_json_array_t_t*
  %items75 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %125, i32 0, i32 1
  %items76 = bitcast i32* %items75 to %Tstruct.Spl_json_value_t_t***
  %126 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items76, align 4
  %127 = ptrtoint %Tstruct.Spl_json_value_t_t** %126 to i32
  %128 = call i8* @c_fetch_pointer_from_offset(i32 %127)
  %129 = call i1 @c_isTaintedPointerToTaintedMem(i8* %128)
  br i1 %129, label %_Dynamic_check.succeeded78, label %_Dynamic_check.failed77

_Dynamic_check.succeeded78:                       ; preds = %_Dynamic_check.succeeded74
  %130 = bitcast i8* %128 to %Tstruct.Spl_json_value_t_t**
  %131 = bitcast %Tstruct.Spl_json_value_t_t** %130 to i8*
  call void @t_free(i8* %131)
  %132 = load i64, i64* %new_capacity.addr, align 8
  %conv79 = trunc i64 %132 to i32
  %133 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %134 = ptrtoint %Tstruct.Spl_json_array_t_t* %133 to i32
  %135 = call i8* @c_fetch_pointer_from_offset(i32 %134)
  %136 = call i1 @c_isTaintedPointerToTaintedMem(i8* %135)
  br i1 %136, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %_Dynamic_check.succeeded78
  %137 = bitcast i8* %135 to %Tstruct.Spl_json_array_t_t*
  %capacity82 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %137, i32 0, i32 3
  store i32 %conv79, i32* %capacity82, align 4
  %138 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %new_items, align 4
  %139 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %140 = ptrtoint %Tstruct.Spl_json_array_t_t* %139 to i32
  %141 = call i8* @c_fetch_pointer_from_offset(i32 %140)
  %142 = call i1 @c_isTaintedPointerToTaintedMem(i8* %141)
  br i1 %142, label %_Dynamic_check.succeeded84, label %_Dynamic_check.failed83

_Dynamic_check.succeeded84:                       ; preds = %_Dynamic_check.succeeded81
  %143 = bitcast i8* %141 to %Tstruct.Spl_json_array_t_t*
  %items85 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %143, i32 0, i32 1
  %items86 = bitcast i32* %items85 to %Tstruct.Spl_json_value_t_t***
  %144 = ptrtoint %Tstruct.Spl_json_value_t_t** %138 to i32
  %145 = bitcast %Tstruct.Spl_json_value_t_t*** %items86 to i32*
  store i32 %144, i32* %145, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed73:                          ; preds = %if.end72
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed77:                          ; preds = %_Dynamic_check.succeeded74
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed80:                          ; preds = %_Dynamic_check.succeeded78
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed83:                          ; preds = %_Dynamic_check.succeeded81
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded84, %if.then5, %if.then
  %146 = load i32, i32* %retval, align 4
  ret i32 %146
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define internal %Tstruct.json_value_t_t* @parse_boolean_value(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  store i8* %string, i8** %string.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = ptrtoint i8* %call to i64
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %2)
  %call1 = call i32 @w2c_parse_boolean_value(i8* %3, i32 %1)
  %conv = zext i32 %call1 to i64
  %4 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %4
}

declare dso_local i32 @w2c_parse_boolean_value(i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %Tstruct.json_value_t_t* @parse_null_value(i8* %string) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %str_len = alloca i32, align 4
  %str_cpy = alloca i8*, align 4
  %token_size = alloca i64, align 8
  store i8* %string, i8** %string.addr, align 4
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = call i8* @c_fetch_pointer_from_offset(i32 %1)
  %3 = call i1 @c_isTaintedPointerToTaintedMem(i8* %2)
  br i1 %3, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i64 @t_strlen(i8* %2)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %str_len, align 4
  %4 = load i32, i32* %str_len, align 4
  %conv1 = sext i32 %4 to i64
  %mul = mul i64 %conv1, 1
  %call2 = call i8* @parson_string_tainted_malloc(i64 %mul)
  store i8* %call2, i8** %str_cpy, align 4
  %5 = load i8*, i8** %str_cpy, align 4
  %6 = load i8*, i8** %string.addr, align 4
  %7 = ptrtoint i8* %5 to i64
  %8 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %7)
  %9 = ptrtoint i8* %6 to i64
  %10 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %9)
  %call3 = call i8* @t_strcpy(i8* %8, i8* %10)
  store i64 4, i64* %token_size, align 8
  %11 = load i8*, i8** %str_cpy, align 4
  %12 = load i64, i64* %token_size, align 8
  %13 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.11 to i64))
  %14 = ptrtoint i8* %11 to i64
  %15 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %14)
  %call4 = call i32 @t_strncmp(i8* %13, i8* %15, i64 %12)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded
  %16 = load i64, i64* %token_size, align 8
  %17 = load i8*, i8** %str_cpy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 %16
  store i8* %add.ptr, i8** %str_cpy, align 4
  %18 = load i8*, i8** %string.addr, align 4
  %19 = load i8*, i8** %str_cpy, align 4
  %20 = ptrtoint i8* %18 to i64
  %21 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %20)
  %22 = ptrtoint i8* %19 to i64
  %23 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %22)
  %call6 = call i8* @t_strcpy(i8* %21, i8* %23)
  %call7 = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %24 = bitcast %Tstruct.Spl_json_value_t_t* %call7 to %Tstruct.json_value_t_t*
  %25 = bitcast %Tstruct.json_value_t_t* %24 to i8*
  %26 = call i64 @c_TPtoO(i8* %25)
  %27 = inttoptr i64 %26 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %27, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %28 = load i8*, i8** %string.addr, align 4
  %29 = load i8*, i8** %str_cpy, align 4
  %30 = ptrtoint i8* %28 to i64
  %31 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %30)
  %32 = ptrtoint i8* %29 to i64
  %33 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %32)
  %call8 = call i8* @t_strcpy(i8* %31, i8* %33)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %34 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %34
}

declare dso_local i32 @t_strncmp(i8*, i8*, i64) #1

declare dso_local i8* @t_strncpy(i8*, i8*, i64) #1

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare dso_local i64 @ftell(%struct._IO_FILE*) #1

declare dso_local void @rewind(%struct._IO_FILE*) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @ferror(%struct._IO_FILE*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal %Tstruct.json_value_t_t* @json_object_getn_value(%Tstruct.json_object_t_t* %object, i8* %name, i64 %name_len) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %name_len.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %name_length = alloca i64, align 8
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  store i64 %name_len, i64* %name_len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_object_t_t* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %for.cond
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_object_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %6)
  %cmp = icmp ult i64 %1, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded
  %7 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %8 = ptrtoint %Tstruct.Spl_json_object_t_t* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %for.body
  %11 = bitcast i8* %9 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %11, i32 0, i32 1
  %names3 = bitcast i32* %names to i8***
  %12 = load i8**, i8*** %names3, align 4
  %13 = load i64, i64* %i, align 8
  %14 = ptrtoint i8** %12 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded2
  %17 = bitcast i8* %15 to i8**
  %18 = bitcast i8** %17 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %18, i64 %13
  %19 = bitcast i32* %arrayidx to i8**
  %20 = bitcast i8** %19 to i8*
  %21 = call i64 @c_TPtoO(i8* %20)
  %22 = inttoptr i64 %21 to i8**
  %23 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %24 = ptrtoint %Tstruct.Spl_json_object_t_t* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded5
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_object_t_t*
  %names8 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %27, i32 0, i32 1
  %names9 = bitcast i32* %names8 to i8***
  %28 = load i8**, i8*** %names9, align 4
  %29 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %30 = ptrtoint %Tstruct.Spl_json_object_t_t* %29 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded7
  %33 = bitcast i8* %31 to %Tstruct.Spl_json_object_t_t*
  %names12 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %33, i32 0, i32 1
  %names13 = bitcast i32* %names12 to i8***
  %34 = load i8**, i8*** %names13, align 4
  %35 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %36 = ptrtoint %Tstruct.Spl_json_object_t_t* %35 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.succeeded11
  %39 = bitcast i8* %37 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %39, i32 0, i32 4
  %40 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %40 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %34, i64 %idx.ext
  %41 = bitcast i8** %add.ptr to i8*
  %42 = call i64 @c_TPtoO(i8* %41)
  %43 = inttoptr i64 %42 to i8**
  %44 = bitcast i8** %28 to i8*
  %45 = call i64 @c_TPtoO(i8* %44)
  %46 = inttoptr i64 %45 to i8**
  %_Dynamic_check.lower = icmp ule i8** %46, %22
  %_Dynamic_check.upper = icmp ult i8** %22, %43
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.succeeded15
  %47 = load i8*, i8** %19, align 8
  %48 = ptrtoint i8* %47 to i32
  %49 = call i8* @c_fetch_pointer_from_offset(i32 %48)
  %50 = call i1 @c_isTaintedPointerToTaintedMem(i8* %49)
  br i1 %50, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.succeeded17
  %call20 = call i64 @t_strlen(i8* %49)
  store i64 %call20, i64* %name_length, align 8
  %51 = load i64, i64* %name_length, align 8
  %52 = load i64, i64* %name_len.addr, align 8
  %cmp21 = icmp ne i64 %51, %52
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded19
  br label %for.inc

_Dynamic_check.failed:                            ; preds = %for.cond
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.succeeded17
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded19
  %53 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %54 = ptrtoint %Tstruct.Spl_json_object_t_t* %53 to i32
  %55 = call i8* @c_fetch_pointer_from_offset(i32 %54)
  %56 = call i1 @c_isTaintedPointerToTaintedMem(i8* %55)
  br i1 %56, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %if.end
  %57 = bitcast i8* %55 to %Tstruct.Spl_json_object_t_t*
  %names24 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %57, i32 0, i32 1
  %names25 = bitcast i32* %names24 to i8***
  %58 = load i8**, i8*** %names25, align 4
  %59 = load i64, i64* %i, align 8
  %60 = ptrtoint i8** %58 to i32
  %61 = call i8* @c_fetch_pointer_from_offset(i32 %60)
  %62 = call i1 @c_isTaintedPointerToTaintedMem(i8* %61)
  br i1 %62, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded23
  %63 = bitcast i8* %61 to i8**
  %64 = bitcast i8** %63 to i32*
  %arrayidx28 = getelementptr inbounds i32, i32* %64, i64 %59
  %65 = bitcast i32* %arrayidx28 to i8**
  %66 = bitcast i8** %65 to i8*
  %67 = call i64 @c_TPtoO(i8* %66)
  %68 = inttoptr i64 %67 to i8**
  %69 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %70 = ptrtoint %Tstruct.Spl_json_object_t_t* %69 to i32
  %71 = call i8* @c_fetch_pointer_from_offset(i32 %70)
  %72 = call i1 @c_isTaintedPointerToTaintedMem(i8* %71)
  br i1 %72, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %_Dynamic_check.succeeded27
  %73 = bitcast i8* %71 to %Tstruct.Spl_json_object_t_t*
  %names31 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %73, i32 0, i32 1
  %names32 = bitcast i32* %names31 to i8***
  %74 = load i8**, i8*** %names32, align 4
  %75 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %76 = ptrtoint %Tstruct.Spl_json_object_t_t* %75 to i32
  %77 = call i8* @c_fetch_pointer_from_offset(i32 %76)
  %78 = call i1 @c_isTaintedPointerToTaintedMem(i8* %77)
  br i1 %78, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %_Dynamic_check.succeeded30
  %79 = bitcast i8* %77 to %Tstruct.Spl_json_object_t_t*
  %names35 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %79, i32 0, i32 1
  %names36 = bitcast i32* %names35 to i8***
  %80 = load i8**, i8*** %names36, align 4
  %81 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %82 = ptrtoint %Tstruct.Spl_json_object_t_t* %81 to i32
  %83 = call i8* @c_fetch_pointer_from_offset(i32 %82)
  %84 = call i1 @c_isTaintedPointerToTaintedMem(i8* %83)
  br i1 %84, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %_Dynamic_check.succeeded34
  %85 = bitcast i8* %83 to %Tstruct.Spl_json_object_t_t*
  %capacity39 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %85, i32 0, i32 4
  %86 = load i32, i32* %capacity39, align 8
  %idx.ext40 = zext i32 %86 to i64
  %add.ptr41 = getelementptr inbounds i8*, i8** %80, i64 %idx.ext40
  %87 = bitcast i8** %add.ptr41 to i8*
  %88 = call i64 @c_TPtoO(i8* %87)
  %89 = inttoptr i64 %88 to i8**
  %90 = bitcast i8** %74 to i8*
  %91 = call i64 @c_TPtoO(i8* %90)
  %92 = inttoptr i64 %91 to i8**
  %_Dynamic_check.lower42 = icmp ule i8** %92, %68
  %_Dynamic_check.upper43 = icmp ult i8** %68, %89
  %_Dynamic_check.range44 = and i1 %_Dynamic_check.lower42, %_Dynamic_check.upper43
  br i1 %_Dynamic_check.range44, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded38
  %93 = load i8*, i8** %65, align 8
  %94 = load i8*, i8** %name.addr, align 4
  %95 = load i64, i64* %name_len.addr, align 8
  %96 = ptrtoint i8* %93 to i64
  %97 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %96)
  %98 = ptrtoint i8* %94 to i64
  %99 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %98)
  %call47 = call i32 @t_strncmp(i8* %97, i8* %99, i64 %95)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end74

if.then49:                                        ; preds = %_Dynamic_check.succeeded46
  %100 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %101 = ptrtoint %Tstruct.Spl_json_object_t_t* %100 to i32
  %102 = call i8* @c_fetch_pointer_from_offset(i32 %101)
  %103 = call i1 @c_isTaintedPointerToTaintedMem(i8* %102)
  br i1 %103, label %_Dynamic_check.succeeded51, label %_Dynamic_check.failed50

_Dynamic_check.succeeded51:                       ; preds = %if.then49
  %104 = bitcast i8* %102 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %104, i32 0, i32 2
  %values52 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %105 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values52, align 4
  %106 = load i64, i64* %i, align 8
  %107 = ptrtoint %Tstruct.Spl_json_value_t_t** %105 to i32
  %108 = call i8* @c_fetch_pointer_from_offset(i32 %107)
  %109 = call i1 @c_isTaintedPointerToTaintedMem(i8* %108)
  br i1 %109, label %_Dynamic_check.succeeded54, label %_Dynamic_check.failed53

_Dynamic_check.succeeded54:                       ; preds = %_Dynamic_check.succeeded51
  %110 = bitcast i8* %108 to %Tstruct.Spl_json_value_t_t**
  %111 = bitcast %Tstruct.Spl_json_value_t_t** %110 to i32*
  %arrayidx55 = getelementptr inbounds i32, i32* %111, i64 %106
  %112 = bitcast i32* %arrayidx55 to %Tstruct.Spl_json_value_t_t**
  %113 = bitcast %Tstruct.Spl_json_value_t_t** %112 to i8*
  %114 = call i64 @c_TPtoO(i8* %113)
  %115 = inttoptr i64 %114 to %Tstruct.Spl_json_value_t_t**
  %116 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %117 = ptrtoint %Tstruct.Spl_json_object_t_t* %116 to i32
  %118 = call i8* @c_fetch_pointer_from_offset(i32 %117)
  %119 = call i1 @c_isTaintedPointerToTaintedMem(i8* %118)
  br i1 %119, label %_Dynamic_check.succeeded57, label %_Dynamic_check.failed56

_Dynamic_check.succeeded57:                       ; preds = %_Dynamic_check.succeeded54
  %120 = bitcast i8* %118 to %Tstruct.Spl_json_object_t_t*
  %values58 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %120, i32 0, i32 2
  %values59 = bitcast i32* %values58 to %Tstruct.Spl_json_value_t_t***
  %121 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values59, align 4
  %122 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %123 = ptrtoint %Tstruct.Spl_json_object_t_t* %122 to i32
  %124 = call i8* @c_fetch_pointer_from_offset(i32 %123)
  %125 = call i1 @c_isTaintedPointerToTaintedMem(i8* %124)
  br i1 %125, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded57
  %126 = bitcast i8* %124 to %Tstruct.Spl_json_object_t_t*
  %values62 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %126, i32 0, i32 2
  %values63 = bitcast i32* %values62 to %Tstruct.Spl_json_value_t_t***
  %127 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values63, align 4
  %128 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %129 = ptrtoint %Tstruct.Spl_json_object_t_t* %128 to i32
  %130 = call i8* @c_fetch_pointer_from_offset(i32 %129)
  %131 = call i1 @c_isTaintedPointerToTaintedMem(i8* %130)
  br i1 %131, label %_Dynamic_check.succeeded65, label %_Dynamic_check.failed64

_Dynamic_check.succeeded65:                       ; preds = %_Dynamic_check.succeeded61
  %132 = bitcast i8* %130 to %Tstruct.Spl_json_object_t_t*
  %capacity66 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %132, i32 0, i32 4
  %133 = load i32, i32* %capacity66, align 8
  %idx.ext67 = zext i32 %133 to i64
  %add.ptr68 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %127, i64 %idx.ext67
  %134 = bitcast %Tstruct.Spl_json_value_t_t** %127 to i32*
  %135 = getelementptr inbounds i32, i32* %134, i64 %idx.ext67
  %136 = bitcast i32* %135 to %Tstruct.Spl_json_value_t_t**
  %137 = bitcast %Tstruct.Spl_json_value_t_t** %136 to i8*
  %138 = call i64 @c_TPtoO(i8* %137)
  %139 = inttoptr i64 %138 to %Tstruct.Spl_json_value_t_t**
  %140 = bitcast %Tstruct.Spl_json_value_t_t** %121 to i8*
  %141 = call i64 @c_TPtoO(i8* %140)
  %142 = inttoptr i64 %141 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower69 = icmp ule %Tstruct.Spl_json_value_t_t** %142, %115
  %_Dynamic_check.upper70 = icmp ult %Tstruct.Spl_json_value_t_t** %115, %139
  %_Dynamic_check.range71 = and i1 %_Dynamic_check.lower69, %_Dynamic_check.upper70
  br i1 %_Dynamic_check.range71, label %_Dynamic_check.succeeded73, label %_Dynamic_check.failed72

_Dynamic_check.succeeded73:                       ; preds = %_Dynamic_check.succeeded65
  %143 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %112, align 4
  store %Tstruct.Spl_json_value_t_t* %143, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed22:                          ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed29:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed33:                          ; preds = %_Dynamic_check.succeeded30
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed37:                          ; preds = %_Dynamic_check.succeeded34
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed45:                          ; preds = %_Dynamic_check.succeeded38
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed50:                          ; preds = %if.then49
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed53:                          ; preds = %_Dynamic_check.succeeded51
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed56:                          ; preds = %_Dynamic_check.succeeded54
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded57
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed64:                          ; preds = %_Dynamic_check.succeeded61
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed72:                          ; preds = %_Dynamic_check.succeeded65
  call void @llvm.trap() #8
  unreachable

if.end74:                                         ; preds = %_Dynamic_check.succeeded46
  br label %for.inc

for.inc:                                          ; preds = %if.end74, %if.then
  %144 = load i64, i64* %i, align 8
  %inc = add i64 %144, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %_Dynamic_check.succeeded
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %_Dynamic_check.succeeded73
  %145 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %145
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_array_free(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_array_t_t* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %for.cond
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %6, i32 0, i32 2
  %7 = load i32, i32* %count, align 8
  %conv = zext i32 %7 to i64
  %cmp = icmp ult i64 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded
  %8 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_array_t_t* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %for.body
  %12 = bitcast i8* %10 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %12, i32 0, i32 1
  %items4 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %13 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items4, align 4
  %14 = load i64, i64* %i, align 8
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t** %13 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_value_t_t**
  %19 = bitcast %Tstruct.Spl_json_value_t_t** %18 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %14
  %20 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %21 = bitcast %Tstruct.Spl_json_value_t_t** %20 to i8*
  %22 = call i64 @c_TPtoO(i8* %21)
  %23 = inttoptr i64 %22 to %Tstruct.Spl_json_value_t_t**
  %24 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %25 = ptrtoint %Tstruct.Spl_json_array_t_t* %24 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_array_t_t*
  %items9 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %28, i32 0, i32 1
  %items10 = bitcast i32* %items9 to %Tstruct.Spl_json_value_t_t***
  %29 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items10, align 4
  %30 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %31 = ptrtoint %Tstruct.Spl_json_array_t_t* %30 to i32
  %32 = call i8* @c_fetch_pointer_from_offset(i32 %31)
  %33 = call i1 @c_isTaintedPointerToTaintedMem(i8* %32)
  br i1 %33, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded8
  %34 = bitcast i8* %32 to %Tstruct.Spl_json_array_t_t*
  %items13 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %34, i32 0, i32 1
  %items14 = bitcast i32* %items13 to %Tstruct.Spl_json_value_t_t***
  %35 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items14, align 4
  %36 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %37 = ptrtoint %Tstruct.Spl_json_array_t_t* %36 to i32
  %38 = call i8* @c_fetch_pointer_from_offset(i32 %37)
  %39 = call i1 @c_isTaintedPointerToTaintedMem(i8* %38)
  br i1 %39, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %40 = bitcast i8* %38 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %40, i32 0, i32 3
  %41 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %41 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %35, i64 %idx.ext
  %42 = bitcast %Tstruct.Spl_json_value_t_t** %35 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 %idx.ext
  %44 = bitcast i32* %43 to %Tstruct.Spl_json_value_t_t**
  %45 = bitcast %Tstruct.Spl_json_value_t_t** %44 to i8*
  %46 = call i64 @c_TPtoO(i8* %45)
  %47 = inttoptr i64 %46 to %Tstruct.Spl_json_value_t_t**
  %48 = bitcast %Tstruct.Spl_json_value_t_t** %29 to i8*
  %49 = call i64 @c_TPtoO(i8* %48)
  %50 = inttoptr i64 %49 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %50, %23
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %23, %47
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  %51 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %20, align 4
  %52 = ptrtoint %Tstruct.Spl_json_value_t_t* %51 to i32
  %53 = call i8* @c_fetch_pointer_from_offset(i32 %52)
  %54 = call i1 @c_isTaintedPointerToTaintedMem(i8* %53)
  br i1 %54, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.succeeded18
  %55 = bitcast i8* %53 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %55)
  br label %for.inc

for.inc:                                          ; preds = %_Dynamic_check.succeeded20
  %56 = load i64, i64* %i, align 8
  %inc = add i64 %56, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !29

_Dynamic_check.failed:                            ; preds = %for.cond
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed2:                           ; preds = %for.body
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #8
  unreachable

for.end:                                          ; preds = %_Dynamic_check.succeeded
  %57 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %58 = ptrtoint %Tstruct.Spl_json_array_t_t* %57 to i32
  %59 = call i8* @c_fetch_pointer_from_offset(i32 %58)
  %60 = call i1 @c_isTaintedPointerToTaintedMem(i8* %59)
  br i1 %60, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %for.end
  %61 = bitcast i8* %59 to %Tstruct.Spl_json_array_t_t*
  %items23 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %61, i32 0, i32 1
  %items24 = bitcast i32* %items23 to %Tstruct.Spl_json_value_t_t***
  %62 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items24, align 4
  %_Dynamic_check.is_null = icmp eq %Tstruct.Spl_json_value_t_t** %62, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded22
  %63 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %64 = ptrtoint %Tstruct.Spl_json_array_t_t* %63 to i32
  %65 = call i8* @c_fetch_pointer_from_offset(i32 %64)
  %66 = call i1 @c_isTaintedPointerToTaintedMem(i8* %65)
  br i1 %66, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.subsumption
  %67 = bitcast i8* %65 to %Tstruct.Spl_json_array_t_t*
  %items27 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %67, i32 0, i32 1
  %items28 = bitcast i32* %items27 to %Tstruct.Spl_json_value_t_t***
  %68 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items28, align 4
  %69 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %70 = ptrtoint %Tstruct.Spl_json_array_t_t* %69 to i32
  %71 = call i8* @c_fetch_pointer_from_offset(i32 %70)
  %72 = call i1 @c_isTaintedPointerToTaintedMem(i8* %71)
  br i1 %72, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %_Dynamic_check.succeeded26
  %73 = bitcast i8* %71 to %Tstruct.Spl_json_array_t_t*
  %items31 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %73, i32 0, i32 1
  %items32 = bitcast i32* %items31 to %Tstruct.Spl_json_value_t_t***
  %74 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items32, align 4
  %75 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %76 = ptrtoint %Tstruct.Spl_json_array_t_t* %75 to i32
  %77 = call i8* @c_fetch_pointer_from_offset(i32 %76)
  %78 = call i1 @c_isTaintedPointerToTaintedMem(i8* %77)
  br i1 %78, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %_Dynamic_check.succeeded30
  %79 = bitcast i8* %77 to %Tstruct.Spl_json_array_t_t*
  %capacity35 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %79, i32 0, i32 3
  %80 = load i32, i32* %capacity35, align 4
  %idx.ext36 = zext i32 %80 to i64
  %add.ptr37 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %74, i64 %idx.ext36
  %81 = bitcast %Tstruct.Spl_json_value_t_t** %62 to i8*
  %82 = bitcast i8* %81 to %Tstruct.Spl_json_value_t_t**
  %83 = bitcast %Tstruct.Spl_json_value_t_t** %62 to i8*
  %_Dynamic_check.non_null = icmp ne i8* %83, null
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %_Dynamic_check.succeeded34
  %add.ptr40 = getelementptr inbounds i8, i8* %83, i64 0
  %84 = bitcast i8* %add.ptr40 to %Tstruct.Spl_json_value_t_t**
  %85 = bitcast %Tstruct.Spl_json_value_t_t** %68 to i8*
  %86 = call i64 @c_TPtoO(i8* %85)
  %87 = inttoptr i64 %86 to %Tstruct.Spl_json_value_t_t**
  %88 = bitcast %Tstruct.Spl_json_value_t_t** %82 to i8*
  %89 = call i64 @c_TPtoO(i8* %88)
  %90 = inttoptr i64 %89 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower41 = icmp ule %Tstruct.Spl_json_value_t_t** %87, %90
  %91 = bitcast %Tstruct.Spl_json_value_t_t** %84 to i8*
  %92 = call i64 @c_TPtoO(i8* %91)
  %93 = inttoptr i64 %92 to %Tstruct.Spl_json_value_t_t**
  %94 = bitcast %Tstruct.Spl_json_value_t_t** %add.ptr37 to i8*
  %95 = call i64 @c_TPtoO(i8* %94)
  %96 = inttoptr i64 %95 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.upper42 = icmp ule %Tstruct.Spl_json_value_t_t** %93, %96
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower41, %_Dynamic_check.upper42
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed43

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded39, %_Dynamic_check.succeeded22
  %97 = ptrtoint %Tstruct.Spl_json_value_t_t** %62 to i32
  %98 = call i8* @c_fetch_pointer_from_offset(i32 %97)
  %99 = call i1 @c_isTaintedPointerToTaintedMem(i8* %98)
  br i1 %99, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %_Dynamic_check.success
  %100 = bitcast i8* %98 to %Tstruct.Spl_json_value_t_t**
  %101 = bitcast %Tstruct.Spl_json_value_t_t** %100 to i8*
  call void @t_free(i8* %101)
  %102 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %_Dynamic_check.is_null46 = icmp eq %Tstruct.Spl_json_array_t_t* %102, null
  br i1 %_Dynamic_check.is_null46, label %_Dynamic_check.success57, label %_Dynamic_check.subsumption47

_Dynamic_check.subsumption47:                     ; preds = %_Dynamic_check.succeeded45
  %103 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %104 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %add.ptr48 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %104, i64 1
  %105 = bitcast %Tstruct.Spl_json_array_t_t* %102 to i8*
  %106 = bitcast i8* %105 to %Tstruct.Spl_json_array_t_t*
  %107 = bitcast %Tstruct.Spl_json_array_t_t* %102 to i8*
  %_Dynamic_check.non_null49 = icmp ne i8* %107, null
  br i1 %_Dynamic_check.non_null49, label %_Dynamic_check.succeeded51, label %_Dynamic_check.failed50

_Dynamic_check.succeeded51:                       ; preds = %_Dynamic_check.subsumption47
  %add.ptr52 = getelementptr inbounds i8, i8* %107, i64 0
  %108 = bitcast i8* %add.ptr52 to %Tstruct.Spl_json_array_t_t*
  %109 = bitcast %Tstruct.Spl_json_array_t_t* %103 to i8*
  %110 = call i64 @c_TPtoO(i8* %109)
  %111 = inttoptr i64 %110 to %Tstruct.Spl_json_array_t_t*
  %112 = bitcast %Tstruct.Spl_json_array_t_t* %106 to i8*
  %113 = call i64 @c_TPtoO(i8* %112)
  %114 = inttoptr i64 %113 to %Tstruct.Spl_json_array_t_t*
  %_Dynamic_check.lower53 = icmp ule %Tstruct.Spl_json_array_t_t* %111, %114
  %115 = bitcast %Tstruct.Spl_json_array_t_t* %108 to i8*
  %116 = call i64 @c_TPtoO(i8* %115)
  %117 = inttoptr i64 %116 to %Tstruct.Spl_json_array_t_t*
  %118 = bitcast %Tstruct.Spl_json_array_t_t* %add.ptr48 to i8*
  %119 = call i64 @c_TPtoO(i8* %118)
  %120 = inttoptr i64 %119 to %Tstruct.Spl_json_array_t_t*
  %_Dynamic_check.upper54 = icmp ule %Tstruct.Spl_json_array_t_t* %117, %120
  %_Dynamic_check.cast55 = and i1 %_Dynamic_check.lower53, %_Dynamic_check.upper54
  br i1 %_Dynamic_check.cast55, label %_Dynamic_check.success57, label %_Dynamic_check.failed56

_Dynamic_check.success57:                         ; preds = %_Dynamic_check.succeeded51, %_Dynamic_check.succeeded45
  %121 = ptrtoint %Tstruct.Spl_json_array_t_t* %102 to i32
  %122 = call i8* @c_fetch_pointer_from_offset(i32 %121)
  %123 = call i1 @c_isTaintedPointerToTaintedMem(i8* %122)
  br i1 %123, label %_Dynamic_check.succeeded59, label %_Dynamic_check.failed58

_Dynamic_check.succeeded59:                       ; preds = %_Dynamic_check.success57
  %124 = bitcast i8* %122 to %Tstruct.Spl_json_array_t_t*
  %125 = bitcast %Tstruct.Spl_json_array_t_t* %124 to i8*
  call void @t_free(i8* %125)
  ret void

_Dynamic_check.failed21:                          ; preds = %for.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed29:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed33:                          ; preds = %_Dynamic_check.succeeded30
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed38:                          ; preds = %_Dynamic_check.succeeded34
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded39
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed44:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed50:                          ; preds = %_Dynamic_check.subsumption47
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed56:                          ; preds = %_Dynamic_check.succeeded51
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed58:                          ; preds = %_Dynamic_check.success57
  call void @llvm.trap() #8
  unreachable
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define internal %Tstruct.json_value_t_t* @json_value_init_string_no_copy(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  store i8* %string, i8** %string.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %0 = load i8*, i8** %string.addr, align 4
  %1 = ptrtoint i8* %0 to i32
  %2 = ptrtoint i8* %call to i64
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %2)
  %call1 = call i32 @w2c_json_value_init_string_no_copy(i8* %3, i32 %1)
  %conv = zext i32 %call1 to i64
  %4 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %4
}

declare dso_local i32 @w2c_json_value_init_string_no_copy(i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_array_add(%Tstruct.json_array_t_t* %array, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %new_capacity = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  store %Tstruct.Spl_json_array_t_t* %0, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %1 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %1, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %3 = ptrtoint %Tstruct.Spl_json_array_t_t* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %6 = bitcast i8* %4 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %6, i32 0, i32 2
  %7 = load i32, i32* %count, align 8
  %8 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_array_t_t* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %12 = bitcast i8* %10 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %12, i32 0, i32 3
  %13 = load i32, i32* %capacity, align 4
  %cmp = icmp uge i32 %7, %13
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %_Dynamic_check.succeeded2
  %14 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %15 = ptrtoint %Tstruct.Spl_json_array_t_t* %14 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %if.then
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_array_t_t*
  %capacity5 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %18, i32 0, i32 3
  %19 = load i32, i32* %capacity5, align 4
  %mul = mul i32 %19, 2
  %cmp6 = icmp ugt i32 %mul, 16
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded4
  %20 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %21 = ptrtoint %Tstruct.Spl_json_array_t_t* %20 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %cond.true
  %24 = bitcast i8* %22 to %Tstruct.Spl_json_array_t_t*
  %capacity9 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %24, i32 0, i32 3
  %25 = load i32, i32* %capacity9, align 4
  %mul10 = mul i32 %25, 2
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded8
  %cond = phi i32 [ %mul10, %_Dynamic_check.succeeded8 ], [ 16, %cond.false ]
  %conv = zext i32 %cond to i64
  store i64 %conv, i64* %new_capacity, align 8
  %26 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %27 = load i64, i64* %new_capacity, align 8
  %28 = ptrtoint %Tstruct.Spl_json_array_t_t* %26 to i32
  %29 = call i8* @c_fetch_pointer_from_offset(i32 %28)
  %30 = call i1 @c_isTaintedPointerToTaintedMem(i8* %29)
  br i1 %30, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %cond.end
  %31 = bitcast i8* %29 to %Tstruct.Spl_json_array_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_resize to i32 (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %31, i64 %27)
  %cmp13 = icmp eq i32 %call, -1
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %_Dynamic_check.succeeded12
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %if.then
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed7:                           ; preds = %cond.true
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed11:                          ; preds = %cond.end
  call void @llvm.trap() #8
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded12
  br label %if.end16

if.end16:                                         ; preds = %if.end, %_Dynamic_check.succeeded2
  %32 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %33 = ptrtoint %Tstruct.Spl_json_array_t_t* %32 to i32
  %34 = call i8* @c_fetch_pointer_from_offset(i32 %33)
  %35 = call i1 @c_isTaintedPointerToTaintedMem(i8* %34)
  br i1 %35, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %if.end16
  %36 = bitcast i8* %34 to %Tstruct.Spl_json_array_t_t*
  %call19 = call %Tstruct.Spl_json_value_t_t* @json_array_get_wrapping_value(%Tstruct.Spl_json_array_t_t* %36)
  %37 = bitcast %Tstruct.Spl_json_value_t_t* %call19 to %Tstruct.json_value_t_t*
  %38 = bitcast %Tstruct.json_value_t_t* %37 to i8*
  %39 = call i64 @c_TPtoO(i8* %38)
  %40 = inttoptr i64 %39 to %Tstruct.json_value_t_t*
  %41 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %42 = ptrtoint %Tstruct.Spl_json_value_t_t* %41 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.succeeded18
  %45 = bitcast i8* %43 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %45, i32 0, i32 0
  %parent22 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %46 = bitcast %Tstruct.json_value_t_t* %40 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %46, %Tstruct.Spl_json_value_t_t** %parent22, align 4
  %47 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %48 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %49 = ptrtoint %Tstruct.Spl_json_array_t_t* %48 to i32
  %50 = call i8* @c_fetch_pointer_from_offset(i32 %49)
  %51 = call i1 @c_isTaintedPointerToTaintedMem(i8* %50)
  br i1 %51, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded21
  %52 = bitcast i8* %50 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %52, i32 0, i32 1
  %items25 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %53 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items25, align 4
  %54 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %55 = ptrtoint %Tstruct.Spl_json_array_t_t* %54 to i32
  %56 = call i8* @c_fetch_pointer_from_offset(i32 %55)
  %57 = call i1 @c_isTaintedPointerToTaintedMem(i8* %56)
  br i1 %57, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded24
  %58 = bitcast i8* %56 to %Tstruct.Spl_json_array_t_t*
  %count28 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %58, i32 0, i32 2
  %59 = load i32, i32* %count28, align 8
  %idxprom = zext i32 %59 to i64
  %60 = ptrtoint %Tstruct.Spl_json_value_t_t** %53 to i32
  %61 = call i8* @c_fetch_pointer_from_offset(i32 %60)
  %62 = call i1 @c_isTaintedPointerToTaintedMem(i8* %61)
  br i1 %62, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %_Dynamic_check.succeeded27
  %63 = bitcast i8* %61 to %Tstruct.Spl_json_value_t_t**
  %64 = bitcast %Tstruct.Spl_json_value_t_t** %63 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %64, i64 %idxprom
  %65 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %66 = bitcast %Tstruct.Spl_json_value_t_t** %65 to i8*
  %67 = call i64 @c_TPtoO(i8* %66)
  %68 = inttoptr i64 %67 to %Tstruct.Spl_json_value_t_t**
  %69 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %70 = ptrtoint %Tstruct.Spl_json_array_t_t* %69 to i32
  %71 = call i8* @c_fetch_pointer_from_offset(i32 %70)
  %72 = call i1 @c_isTaintedPointerToTaintedMem(i8* %71)
  br i1 %72, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.succeeded30
  %73 = bitcast i8* %71 to %Tstruct.Spl_json_array_t_t*
  %items33 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %73, i32 0, i32 1
  %items34 = bitcast i32* %items33 to %Tstruct.Spl_json_value_t_t***
  %74 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items34, align 4
  %75 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %76 = ptrtoint %Tstruct.Spl_json_array_t_t* %75 to i32
  %77 = call i8* @c_fetch_pointer_from_offset(i32 %76)
  %78 = call i1 @c_isTaintedPointerToTaintedMem(i8* %77)
  br i1 %78, label %_Dynamic_check.succeeded36, label %_Dynamic_check.failed35

_Dynamic_check.succeeded36:                       ; preds = %_Dynamic_check.succeeded32
  %79 = bitcast i8* %77 to %Tstruct.Spl_json_array_t_t*
  %items37 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %79, i32 0, i32 1
  %items38 = bitcast i32* %items37 to %Tstruct.Spl_json_value_t_t***
  %80 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items38, align 4
  %81 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %82 = ptrtoint %Tstruct.Spl_json_array_t_t* %81 to i32
  %83 = call i8* @c_fetch_pointer_from_offset(i32 %82)
  %84 = call i1 @c_isTaintedPointerToTaintedMem(i8* %83)
  br i1 %84, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %_Dynamic_check.succeeded36
  %85 = bitcast i8* %83 to %Tstruct.Spl_json_array_t_t*
  %capacity41 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %85, i32 0, i32 3
  %86 = load i32, i32* %capacity41, align 4
  %idx.ext = zext i32 %86 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %80, i64 %idx.ext
  %87 = bitcast %Tstruct.Spl_json_value_t_t** %80 to i32*
  %88 = getelementptr inbounds i32, i32* %87, i64 %idx.ext
  %89 = bitcast i32* %88 to %Tstruct.Spl_json_value_t_t**
  %90 = bitcast %Tstruct.Spl_json_value_t_t** %89 to i8*
  %91 = call i64 @c_TPtoO(i8* %90)
  %92 = inttoptr i64 %91 to %Tstruct.Spl_json_value_t_t**
  %93 = bitcast %Tstruct.Spl_json_value_t_t** %74 to i8*
  %94 = call i64 @c_TPtoO(i8* %93)
  %95 = inttoptr i64 %94 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %95, %68
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %68, %92
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %_Dynamic_check.succeeded40
  store %Tstruct.Spl_json_value_t_t* %47, %Tstruct.Spl_json_value_t_t** %65, align 4
  %96 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %97 = ptrtoint %Tstruct.Spl_json_array_t_t* %96 to i32
  %98 = call i8* @c_fetch_pointer_from_offset(i32 %97)
  %99 = call i1 @c_isTaintedPointerToTaintedMem(i8* %98)
  br i1 %99, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %_Dynamic_check.succeeded43
  %100 = bitcast i8* %98 to %Tstruct.Spl_json_array_t_t*
  %count46 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %100, i32 0, i32 2
  %101 = load i32, i32* %count46, align 8
  %inc = add i32 %101, 1
  store i32 %inc, i32* %count46, align 8
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed17:                          ; preds = %if.end16
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed29:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed31:                          ; preds = %_Dynamic_check.succeeded30
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed35:                          ; preds = %_Dynamic_check.succeeded32
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed39:                          ; preds = %_Dynamic_check.succeeded36
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed42:                          ; preds = %_Dynamic_check.succeeded40
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed44:                          ; preds = %_Dynamic_check.succeeded43
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded45, %if.then15
  %102 = load i32, i32* %retval, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_object_add(%Tstruct.json_object_t_t* %object, i8* %name, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %nameLen = alloca i64, align 8
  %name_with_len = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  store %Tstruct.Spl_json_object_t_t* %0, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  store i8* %name, i8** %name.addr, align 4
  %1 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %1, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %2 = load i8*, i8** %name.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %call = call i64 @t_strlen(i8* %6)
  store i64 %call, i64* %nameLen, align 8
  store i8* null, i8** %name_with_len, align 4
  %8 = load i8*, i8** %name.addr, align 4
  store i8* %8, i8** %name_with_len, align 4
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %10 = load i8*, i8** %name_with_len, align 4
  %11 = load i64, i64* %nameLen, align 8
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %13 = ptrtoint %Tstruct.Spl_json_object_t_t* %9 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_object_t_t*
  %17 = ptrtoint i8* %10 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %20 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %23 = bitcast i8* %21 to %Tstruct.Spl_json_value_t_t*
  %call7 = call i32 @json_object_addn(%Tstruct.Spl_json_object_t_t* %16, i8* %18, i64 %11, %Tstruct.Spl_json_value_t_t* %23)
  store i32 %call7, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #8
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #8
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded6, %if.then
  %24 = load i32, i32* %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

attributes #0 = { noinline nounwind optnone tainted uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { cold noreturn nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/CheckCBox_Compiler.git d8784631b68553f2e7166e813a4ba458ddaef209)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = distinct !{!4, !3}
!5 = distinct !{!5, !3}
!6 = distinct !{!6, !3}
!7 = distinct !{!7, !3}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3}
!14 = distinct !{!14, !3}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !3}
!17 = distinct !{!17, !3}
!18 = distinct !{!18, !3}
!19 = distinct !{!19, !3}
!20 = distinct !{!20, !3}
!21 = distinct !{!21, !3}
!22 = distinct !{!22, !3}
!23 = distinct !{!23, !3}
!24 = distinct !{!24, !3}
!25 = distinct !{!25, !3}
!26 = distinct !{!26, !3}
!27 = distinct !{!27, !3}
!28 = distinct !{!28, !3}
!29 = distinct !{!29, !3}
