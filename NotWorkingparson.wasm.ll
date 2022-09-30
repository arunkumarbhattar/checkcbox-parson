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
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  store i64 %n, i64* %n.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = load i64, i64* %n.addr, align 8
  %5 = ptrtoint i8* %call to i64
  %6 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %5)
  %call1 = call i32 @w2c_tainted_parson_strndup(i8* %6, i32 %3, i64 %4)
  %conv = zext i32 %call1 to i64
  %7 = inttoptr i64 %conv to i8*
  ret i8* %7
}

declare dso_local i32 @w2c_tainted_parson_strndup(i8*, i32, i64) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @tainted_parson_strdup(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = ptrtoint i8* %call to i64
  %5 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %4)
  %call1 = call i32 @w2c_tainted_parson_strdup(i8* %5, i32 %3)
  %conv = zext i32 %call1 to i64
  %6 = inttoptr i64 %conv to i8*
  ret i8* %6
}

declare dso_local i32 @w2c_tainted_parson_strdup(i8*, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @verify_utf8_sequence(i8* %s, i32* %len) #0 {
entry:
  %s.addr = alloca i8*, align 4
  %len.addr = alloca i32*, align 4
  %0 = ptrtoint i8* %s to i32
  %1 = bitcast i8** %s.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = ptrtoint i32* %len to i32
  %3 = bitcast i32** %len.addr to i32*
  store i32 %2, i32* %3, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %4 = load i8*, i8** %s.addr, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = load i32*, i32** %len.addr, align 4
  %7 = ptrtoint i32* %6 to i32
  %8 = ptrtoint i8* %call to i64
  %9 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %8)
  %call1 = call i64 @w2c_verify_utf8_sequence(i8* %9, i32 %5, i32 %7)
  %conv = trunc i64 %call1 to i32
  ret i32 %conv
}

declare dso_local i64 @w2c_verify_utf8_sequence(i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @is_decimal(i8* %string, i64 %length) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %length.addr = alloca i64, align 8
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  store i64 %length, i64* %length.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = load i64, i64* %length.addr, align 8
  %5 = ptrtoint i8* %call to i64
  %6 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %5)
  %call1 = call i64 @w2c_is_decimal(i8* %6, i32 %3, i64 %4)
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  store i64 %name_len, i64* %name_len.addr, align 8
  %5 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i32
  %7 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %6, i32* %7, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %8 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_object_t_t* %8 to i32
  %10 = load i8*, i8** %name.addr, align 4
  %11 = ptrtoint i8* %10 to i32
  %12 = load i64, i64* %name_len.addr, align 8
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = ptrtoint i8* %call to i64
  %16 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %15)
  %call1 = call i64 @w2c_json_object_addn(i8* %16, i32 %9, i32 %11, i64 %12, i32 %14)
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %new_capacity, i64* %new_capacity.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %5 = load i64, i64* %new_capacity.addr, align 8
  %6 = ptrtoint i8* %call to i64
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %6)
  %call1 = call i64 @w2c_json_object_resize(i8* %7, i32 %4, i64 %5)
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  store i32 %free_value, i32* %free_value.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %7 = load i8*, i8** %name.addr, align 4
  %8 = ptrtoint i8* %7 to i32
  %9 = load i32, i32* %free_value.addr, align 4
  %conv = sext i32 %9 to i64
  %10 = ptrtoint i8* %call to i64
  %11 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %10)
  %call1 = call i64 @w2c_json_object_remove_internal(i8* %11, i32 %6, i32 %8, i64 %conv)
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  store i32 %free_value, i32* %free_value.addr, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %7 = load i8*, i8** %name.addr, align 4
  %8 = ptrtoint i8* %7 to i32
  %9 = load i32, i32* %free_value.addr, align 4
  %conv = sext i32 %9 to i64
  %10 = ptrtoint i8* %call to i64
  %11 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %10)
  %call1 = call i64 @w2c_json_object_dotremove_internal(i8* %11, i32 %6, i32 %8, i64 %conv)
  %conv2 = trunc i64 %call1 to i32
  ret i32 %conv2
}

declare dso_local i64 @w2c_json_object_dotremove_internal(i8*, i32, i32, i64) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local void @json_object_free(%Tstruct.json_object_t_t* %object) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %5 = ptrtoint i8* %call to i64
  %6 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %5)
  %call1 = call i32 @w2c_json_object_free(i8* %6, i32 %4)
  ret void
}

declare dso_local i32 @w2c_json_object_free(i8*, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @parse_utf16(i8* %unprocessed, i8* %processed) #0 {
entry:
  %unprocessed.addr = alloca i8*, align 4
  %processed.addr = alloca i8*, align 4
  %0 = ptrtoint i8* %unprocessed to i32
  %1 = bitcast i8** %unprocessed.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = ptrtoint i8* %processed to i32
  %3 = bitcast i8** %processed.addr to i32*
  store i32 %2, i32* %3, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %4 = load i8*, i8** %unprocessed.addr, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = load i8*, i8** %processed.addr, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = ptrtoint i8* %call to i64
  %9 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %8)
  %call1 = call i64 @w2c_parse_utf16(i8* %9, i32 %5, i32 %7)
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
  %1 = ptrtoint i8* %call to i32
  %2 = bitcast i8** %first_arg to i32*
  store i32 %1, i32* %2, align 4
  %3 = load i8*, i8** %first_arg, align 4
  %4 = load i64, i64* %arg_2.addr, align 8
  %5 = ptrtoint i8* %3 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call1 = call i8* @process_string(i8* %6, i64 %4)
  %8 = call i32 @c_TPtoO(i8* %call1)
  %9 = inttoptr i32 %8 to i8*
  %10 = ptrtoint i8* %9 to i64
  %11 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %10)
  %call2 = call i32 @c_fetch_pointer_offset(i8* %11)
  ret i32 %call2

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
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
  %0 = ptrtoint i8* %input to i32
  %1 = bitcast i8** %input.addr to i32*
  store i32 %0, i32* %1, align 4
  store i64 %len, i64* %len.addr, align 8
  %2 = load i8*, i8** %input.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i64 @t_strlen(i8* %4)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %str_len, align 4
  %6 = load i32, i32* %str_len, align 4
  %conv1 = sext i32 %6 to i64
  %mul = mul i64 %conv1, 1
  %call2 = call i8* @parson_string_tainted_malloc(i64 %mul)
  %7 = call i32 @c_TPtoO(i8* %call2)
  %8 = inttoptr i32 %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = bitcast i8** %input_ptr to i32*
  store i32 %9, i32* %10, align 4
  %11 = load i8*, i8** %input_ptr, align 4
  %12 = load i8*, i8** %input.addr, align 4
  %13 = ptrtoint i8* %11 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %16 = ptrtoint i8* %12 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %call7 = call i8* @t_strcpy(i8* %14, i8* %17)
  %19 = call i32 @c_TPtoO(i8* %call7)
  %20 = inttoptr i32 %19 to i8*
  %21 = load i64, i64* %len.addr, align 8
  %add = add i64 %21, 1
  %mul8 = mul i64 %add, 1
  store i64 %mul8, i64* %initial_size, align 8
  store i64 0, i64* %final_size, align 8
  %22 = bitcast i8** %output to i32*
  store i32 0, i32* %22, align 4
  %23 = load i64, i64* %initial_size, align 8
  %call9 = call i8* @parson_string_tainted_malloc(i64 %23)
  %24 = call i32 @c_TPtoO(i8* %call9)
  %25 = inttoptr i32 %24 to i8*
  %26 = ptrtoint i8* %25 to i32
  %27 = bitcast i8** %output to i32*
  store i32 %26, i32* %27, align 4
  %28 = bitcast i8** %output_ptr to i32*
  store i32 0, i32* %28, align 4
  %29 = load i8*, i8** %output, align 4
  %30 = ptrtoint i8* %29 to i32
  %cmp = icmp eq i32 %30, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded6
  br label %error

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded6
  %31 = load i8*, i8** %output, align 4
  %32 = ptrtoint i8* %31 to i32
  %33 = bitcast i8** %output_ptr to i32*
  store i32 %32, i32* %33, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end78, %if.end
  %34 = load i8*, i8** %input_ptr, align 4
  %35 = ptrtoint i8* %34 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %while.cond
  %38 = load i8, i8* %36, align 1
  %conv13 = sext i8 %38 to i32
  %cmp14 = icmp ne i32 %conv13, 0
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %_Dynamic_check.succeeded12
  %39 = load i8*, i8** %input.addr, align 4
  %40 = ptrtoint i8* %39 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %land.rhs
  %call18 = call i64 @t_strlen(i8* %41)
  %43 = load i8*, i8** %input_ptr, align 4
  %44 = ptrtoint i8* %43 to i32
  %45 = call i8* @c_fetch_pointer_from_offset(i32 %44)
  %46 = call i1 @c_isTaintedPointerToTaintedMem(i8* %45)
  br i1 %46, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.succeeded17
  %call21 = call i64 @t_strlen(i8* %45)
  %sub = sub i64 %call18, %call21
  %47 = load i64, i64* %len.addr, align 8
  %cmp22 = icmp ult i64 %sub, %47
  br label %land.end

land.end:                                         ; preds = %_Dynamic_check.succeeded20, %_Dynamic_check.succeeded12
  %48 = phi i1 [ false, %_Dynamic_check.succeeded12 ], [ %cmp22, %_Dynamic_check.succeeded20 ]
  br i1 %48, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %49 = load i8*, i8** %input_ptr, align 4
  %50 = ptrtoint i8* %49 to i32
  %51 = call i8* @c_fetch_pointer_from_offset(i32 %50)
  %52 = call i1 @c_isTaintedPointerToTaintedMem(i8* %51)
  br i1 %52, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %while.body
  %53 = load i8, i8* %51, align 1
  %conv26 = sext i8 %53 to i32
  %cmp27 = icmp eq i32 %conv26, 92
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %_Dynamic_check.succeeded25
  %54 = load i8*, i8** %input_ptr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %54, i32 1
  %55 = ptrtoint i8* %incdec.ptr to i32
  %56 = bitcast i8** %input_ptr to i32*
  store i32 %55, i32* %56, align 4
  %57 = load i8*, i8** %input_ptr, align 4
  %58 = ptrtoint i8* %57 to i32
  %59 = call i8* @c_fetch_pointer_from_offset(i32 %58)
  %60 = call i1 @c_isTaintedPointerToTaintedMem(i8* %59)
  br i1 %60, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %if.then29
  %61 = load i8, i8* %59, align 1
  %conv32 = sext i8 %61 to i32
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
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed16:                          ; preds = %land.rhs
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.succeeded17
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed24:                          ; preds = %while.body
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed30:                          ; preds = %if.then29
  call void @llvm.trap() #9
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded31
  %62 = load i8*, i8** %output_ptr, align 4
  %63 = ptrtoint i8* %62 to i32
  %64 = call i8* @c_fetch_pointer_from_offset(i32 %63)
  %65 = call i1 @c_isTaintedPointerToTaintedMem(i8* %64)
  br i1 %65, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %sw.bb
  store i8 34, i8* %64, align 1
  br label %sw.epilog

_Dynamic_check.failed33:                          ; preds = %sw.bb
  call void @llvm.trap() #9
  unreachable

sw.bb35:                                          ; preds = %_Dynamic_check.succeeded31
  %66 = load i8*, i8** %output_ptr, align 4
  %67 = ptrtoint i8* %66 to i32
  %68 = call i8* @c_fetch_pointer_from_offset(i32 %67)
  %69 = call i1 @c_isTaintedPointerToTaintedMem(i8* %68)
  br i1 %69, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %sw.bb35
  store i8 92, i8* %68, align 1
  br label %sw.epilog

_Dynamic_check.failed36:                          ; preds = %sw.bb35
  call void @llvm.trap() #9
  unreachable

sw.bb38:                                          ; preds = %_Dynamic_check.succeeded31
  %70 = load i8*, i8** %output_ptr, align 4
  %71 = ptrtoint i8* %70 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %sw.bb38
  store i8 47, i8* %72, align 1
  br label %sw.epilog

_Dynamic_check.failed39:                          ; preds = %sw.bb38
  call void @llvm.trap() #9
  unreachable

sw.bb41:                                          ; preds = %_Dynamic_check.succeeded31
  %74 = load i8*, i8** %output_ptr, align 4
  %75 = ptrtoint i8* %74 to i32
  %76 = call i8* @c_fetch_pointer_from_offset(i32 %75)
  %77 = call i1 @c_isTaintedPointerToTaintedMem(i8* %76)
  br i1 %77, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %sw.bb41
  store i8 8, i8* %76, align 1
  br label %sw.epilog

_Dynamic_check.failed42:                          ; preds = %sw.bb41
  call void @llvm.trap() #9
  unreachable

sw.bb44:                                          ; preds = %_Dynamic_check.succeeded31
  %78 = load i8*, i8** %output_ptr, align 4
  %79 = ptrtoint i8* %78 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %sw.bb44
  store i8 12, i8* %80, align 1
  br label %sw.epilog

_Dynamic_check.failed45:                          ; preds = %sw.bb44
  call void @llvm.trap() #9
  unreachable

sw.bb47:                                          ; preds = %_Dynamic_check.succeeded31
  %82 = load i8*, i8** %output_ptr, align 4
  %83 = ptrtoint i8* %82 to i32
  %84 = call i8* @c_fetch_pointer_from_offset(i32 %83)
  %85 = call i1 @c_isTaintedPointerToTaintedMem(i8* %84)
  br i1 %85, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %sw.bb47
  store i8 10, i8* %84, align 1
  br label %sw.epilog

_Dynamic_check.failed48:                          ; preds = %sw.bb47
  call void @llvm.trap() #9
  unreachable

sw.bb50:                                          ; preds = %_Dynamic_check.succeeded31
  %86 = load i8*, i8** %output_ptr, align 4
  %87 = ptrtoint i8* %86 to i32
  %88 = call i8* @c_fetch_pointer_from_offset(i32 %87)
  %89 = call i1 @c_isTaintedPointerToTaintedMem(i8* %88)
  br i1 %89, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %sw.bb50
  store i8 13, i8* %88, align 1
  br label %sw.epilog

_Dynamic_check.failed51:                          ; preds = %sw.bb50
  call void @llvm.trap() #9
  unreachable

sw.bb53:                                          ; preds = %_Dynamic_check.succeeded31
  %90 = load i8*, i8** %output_ptr, align 4
  %91 = ptrtoint i8* %90 to i32
  %92 = call i8* @c_fetch_pointer_from_offset(i32 %91)
  %93 = call i1 @c_isTaintedPointerToTaintedMem(i8* %92)
  br i1 %93, label %_Dynamic_check.succeeded55, label %_Dynamic_check.failed54

_Dynamic_check.succeeded55:                       ; preds = %sw.bb53
  store i8 9, i8* %92, align 1
  br label %sw.epilog

_Dynamic_check.failed54:                          ; preds = %sw.bb53
  call void @llvm.trap() #9
  unreachable

sw.bb56:                                          ; preds = %_Dynamic_check.succeeded31
  %94 = load i8*, i8** %input_ptr, align 4
  %95 = ptrtoint i8* %94 to i32
  %96 = bitcast i8** %input_tmp to i32*
  store i32 %95, i32* %96, align 4
  %97 = load i8*, i8** %output_ptr, align 4
  %98 = ptrtoint i8* %97 to i32
  %99 = bitcast i8** %output_tmp to i32*
  store i32 %98, i32* %99, align 4
  %100 = load i8*, i8** %input_ptr, align 4
  %101 = load i8*, i8** %output_ptr, align 4
  %102 = ptrtoint i8* %100 to i32
  %103 = call i8* @c_fetch_pointer_from_offset(i32 %102)
  %104 = call i1 @c_isTaintedPointerToTaintedMem(i8* %103)
  br i1 %104, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %sw.bb56
  %105 = ptrtoint i8* %101 to i32
  %106 = call i8* @c_fetch_pointer_from_offset(i32 %105)
  %107 = call i1 @c_isTaintedPointerToTaintedMem(i8* %106)
  br i1 %107, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %_Dynamic_check.succeeded58
  %call61 = call i32 @parse_utf16(i8* %103, i8* %106)
  %cmp62 = icmp eq i32 %call61, -1
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %_Dynamic_check.succeeded60
  br label %error

_Dynamic_check.failed57:                          ; preds = %sw.bb56
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed59:                          ; preds = %_Dynamic_check.succeeded58
  call void @llvm.trap() #9
  unreachable

if.end65:                                         ; preds = %_Dynamic_check.succeeded60
  %108 = load i8*, i8** %input_tmp, align 4
  %109 = ptrtoint i8* %108 to i32
  %110 = bitcast i8** %input_ptr to i32*
  store i32 %109, i32* %110, align 4
  %111 = load i8*, i8** %output_tmp, align 4
  %112 = ptrtoint i8* %111 to i32
  %113 = bitcast i8** %output_ptr to i32*
  store i32 %112, i32* %113, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %_Dynamic_check.succeeded31
  br label %error

sw.epilog:                                        ; preds = %if.end65, %_Dynamic_check.succeeded55, %_Dynamic_check.succeeded52, %_Dynamic_check.succeeded49, %_Dynamic_check.succeeded46, %_Dynamic_check.succeeded43, %_Dynamic_check.succeeded40, %_Dynamic_check.succeeded37, %_Dynamic_check.succeeded34
  br label %if.end78

if.else:                                          ; preds = %_Dynamic_check.succeeded25
  %114 = load i8*, i8** %input_ptr, align 4
  %115 = ptrtoint i8* %114 to i32
  %116 = call i8* @c_fetch_pointer_from_offset(i32 %115)
  %117 = call i1 @c_isTaintedPointerToTaintedMem(i8* %116)
  br i1 %117, label %_Dynamic_check.succeeded67, label %_Dynamic_check.failed66

_Dynamic_check.succeeded67:                       ; preds = %if.else
  %118 = load i8, i8* %116, align 1
  %conv68 = zext i8 %118 to i32
  %cmp69 = icmp slt i32 %conv68, 32
  br i1 %cmp69, label %if.then71, label %if.else72

if.then71:                                        ; preds = %_Dynamic_check.succeeded67
  br label %error

_Dynamic_check.failed66:                          ; preds = %if.else
  call void @llvm.trap() #9
  unreachable

if.else72:                                        ; preds = %_Dynamic_check.succeeded67
  %119 = load i8*, i8** %input_ptr, align 4
  %120 = ptrtoint i8* %119 to i32
  %121 = call i8* @c_fetch_pointer_from_offset(i32 %120)
  %122 = call i1 @c_isTaintedPointerToTaintedMem(i8* %121)
  br i1 %122, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %if.else72
  %123 = load i8, i8* %121, align 1
  %124 = load i8*, i8** %output_ptr, align 4
  %125 = ptrtoint i8* %124 to i32
  %126 = call i8* @c_fetch_pointer_from_offset(i32 %125)
  %127 = call i1 @c_isTaintedPointerToTaintedMem(i8* %126)
  br i1 %127, label %_Dynamic_check.succeeded76, label %_Dynamic_check.failed75

_Dynamic_check.succeeded76:                       ; preds = %_Dynamic_check.succeeded74
  store i8 %123, i8* %126, align 1
  br label %if.end77

_Dynamic_check.failed73:                          ; preds = %if.else72
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed75:                          ; preds = %_Dynamic_check.succeeded74
  call void @llvm.trap() #9
  unreachable

if.end77:                                         ; preds = %_Dynamic_check.succeeded76
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %sw.epilog
  %128 = load i8*, i8** %output_ptr, align 4
  %incdec.ptr79 = getelementptr inbounds i8, i8* %128, i32 1
  %129 = ptrtoint i8* %incdec.ptr79 to i32
  %130 = bitcast i8** %output_ptr to i32*
  store i32 %129, i32* %130, align 4
  %131 = load i8*, i8** %input_ptr, align 4
  %incdec.ptr80 = getelementptr inbounds i8, i8* %131, i32 1
  %132 = ptrtoint i8* %incdec.ptr80 to i32
  %133 = bitcast i8** %input_ptr to i32*
  store i32 %132, i32* %133, align 4
  br label %while.cond, !llvm.loop !2

while.end:                                        ; preds = %land.end
  %134 = load i8*, i8** %output_ptr, align 4
  %135 = ptrtoint i8* %134 to i32
  %136 = call i8* @c_fetch_pointer_from_offset(i32 %135)
  %137 = call i1 @c_isTaintedPointerToTaintedMem(i8* %136)
  br i1 %137, label %_Dynamic_check.succeeded82, label %_Dynamic_check.failed81

_Dynamic_check.succeeded82:                       ; preds = %while.end
  store i8 0, i8* %136, align 1
  %138 = load i8*, i8** %output_ptr, align 4
  %139 = load i8*, i8** %output, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %138 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %139 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add83 = add nsw i32 %sub.ptr.sub, 1
  %conv84 = sext i32 %add83 to i64
  store i64 %conv84, i64* %final_size, align 8
  %140 = load i64, i64* %final_size, align 8
  %call85 = call i8* @parson_string_tainted_malloc(i64 %140)
  %141 = call i32 @c_TPtoO(i8* %call85)
  %142 = inttoptr i32 %141 to i8*
  %143 = ptrtoint i8* %142 to i32
  %144 = bitcast i8** %resized_output to i32*
  store i32 %143, i32* %144, align 4
  %145 = load i8*, i8** %resized_output, align 4
  %146 = ptrtoint i8* %145 to i32
  %cmp86 = icmp eq i32 %146, 0
  br i1 %cmp86, label %if.then88, label %if.end89

if.then88:                                        ; preds = %_Dynamic_check.succeeded82
  br label %error

_Dynamic_check.failed81:                          ; preds = %while.end
  call void @llvm.trap() #9
  unreachable

if.end89:                                         ; preds = %_Dynamic_check.succeeded82
  %147 = load i8*, i8** %resized_output, align 4
  %148 = load i8*, i8** %output, align 4
  %149 = call i32 @c_TPtoO(i8* %148)
  %150 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %149, %150
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.end89
  %151 = load i8*, i8** %output, align 4
  %152 = load i8*, i8** %output, align 4
  %153 = load i64, i64* %initial_size, align 8
  %add.ptr = getelementptr inbounds i8, i8* %152, i64 %153
  %154 = load i64, i64* %final_size, align 8
  %add.ptr90 = getelementptr inbounds i8, i8* %148, i64 %154
  %155 = call i32 @c_TPtoO(i8* %151)
  %156 = inttoptr i32 %155 to i8*
  %157 = call i32 @c_TPtoO(i8* %148)
  %158 = inttoptr i32 %157 to i8*
  %159 = call i32 @c_TPtoO(i8* %156)
  %160 = call i32 @c_TPtoO(i8* %158)
  %_Dynamic_check.lower = icmp ule i32 %159, %160
  %161 = call i32 @c_TPtoO(i8* %add.ptr90)
  %162 = inttoptr i32 %161 to i8*
  %163 = call i32 @c_TPtoO(i8* %add.ptr)
  %164 = inttoptr i32 %163 to i8*
  %165 = call i32 @c_TPtoO(i8* %162)
  %166 = call i32 @c_TPtoO(i8* %164)
  %_Dynamic_check.upper = icmp ule i32 %165, %166
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed91

_Dynamic_check.success:                           ; preds = %_Dynamic_check.subsumption, %if.end89
  %167 = load i64, i64* %final_size, align 8
  %168 = ptrtoint i8* %147 to i32
  %169 = call i8* @c_fetch_pointer_from_offset(i32 %168)
  %170 = call i1 @c_isTaintedPointerToTaintedMem(i8* %169)
  br i1 %170, label %_Dynamic_check.succeeded93, label %_Dynamic_check.failed92

_Dynamic_check.succeeded93:                       ; preds = %_Dynamic_check.success
  %171 = ptrtoint i8* %148 to i32
  %172 = call i8* @c_fetch_pointer_from_offset(i32 %171)
  %173 = call i1 @c_isTaintedPointerToTaintedMem(i8* %172)
  br i1 %173, label %_Dynamic_check.succeeded95, label %_Dynamic_check.failed94

_Dynamic_check.succeeded95:                       ; preds = %_Dynamic_check.succeeded93
  %call96 = call i8* @t_memcpy(i8* %169, i8* %172, i64 %167)
  %174 = call i32 @c_TPtoO(i8* %call96)
  %175 = inttoptr i32 %174 to i8*
  %176 = load i8*, i8** %output, align 4
  %177 = call i32 @c_TPtoO(i8* %176)
  %178 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null97 = icmp eq i32 %177, %178
  br i1 %_Dynamic_check.is_null97, label %_Dynamic_check.success107, label %_Dynamic_check.subsumption98

_Dynamic_check.subsumption98:                     ; preds = %_Dynamic_check.succeeded95
  %179 = load i8*, i8** %output, align 4
  %180 = load i8*, i8** %output, align 4
  %181 = load i64, i64* %initial_size, align 8
  %add.ptr99 = getelementptr inbounds i8, i8* %180, i64 %181
  %182 = call i32 @c_TPtoO(i8* %176)
  %183 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %182, %183
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded101, label %_Dynamic_check.failed100

_Dynamic_check.succeeded101:                      ; preds = %_Dynamic_check.subsumption98
  %add.ptr102 = getelementptr inbounds i8, i8* %176, i64 0
  %184 = call i32 @c_TPtoO(i8* %179)
  %185 = inttoptr i32 %184 to i8*
  %186 = call i32 @c_TPtoO(i8* %176)
  %187 = inttoptr i32 %186 to i8*
  %188 = call i32 @c_TPtoO(i8* %185)
  %189 = call i32 @c_TPtoO(i8* %187)
  %_Dynamic_check.lower103 = icmp ule i32 %188, %189
  %190 = call i32 @c_TPtoO(i8* %add.ptr102)
  %191 = inttoptr i32 %190 to i8*
  %192 = call i32 @c_TPtoO(i8* %add.ptr99)
  %193 = inttoptr i32 %192 to i8*
  %194 = call i32 @c_TPtoO(i8* %191)
  %195 = call i32 @c_TPtoO(i8* %193)
  %_Dynamic_check.upper104 = icmp ule i32 %194, %195
  %_Dynamic_check.cast105 = and i1 %_Dynamic_check.lower103, %_Dynamic_check.upper104
  br i1 %_Dynamic_check.cast105, label %_Dynamic_check.success107, label %_Dynamic_check.failed106

_Dynamic_check.success107:                        ; preds = %_Dynamic_check.succeeded101, %_Dynamic_check.succeeded95
  %196 = ptrtoint i8* %176 to i32
  %197 = call i8* @c_fetch_pointer_from_offset(i32 %196)
  %198 = call i1 @c_isTaintedPointerToTaintedMem(i8* %197)
  br i1 %198, label %_Dynamic_check.succeeded109, label %_Dynamic_check.failed108

_Dynamic_check.succeeded109:                      ; preds = %_Dynamic_check.success107
  call void @t_free(i8* %197)
  %199 = load i8*, i8** %resized_output, align 4
  store i8* %199, i8** %retval, align 8
  br label %return

_Dynamic_check.failed91:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed92:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed94:                          ; preds = %_Dynamic_check.succeeded93
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed100:                         ; preds = %_Dynamic_check.subsumption98
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed106:                         ; preds = %_Dynamic_check.succeeded101
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed108:                         ; preds = %_Dynamic_check.success107
  call void @llvm.trap() #9
  unreachable

error:                                            ; preds = %if.then88, %if.then71, %sw.default, %if.then64, %if.then
  %200 = load i8*, i8** %output, align 4
  %201 = call i32 @c_TPtoO(i8* %200)
  %202 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null110 = icmp eq i32 %201, %202
  br i1 %_Dynamic_check.is_null110, label %_Dynamic_check.success121, label %_Dynamic_check.subsumption111

_Dynamic_check.subsumption111:                    ; preds = %error
  %203 = load i8*, i8** %output, align 4
  %204 = load i8*, i8** %output, align 4
  %205 = load i64, i64* %initial_size, align 8
  %add.ptr112 = getelementptr inbounds i8, i8* %204, i64 %205
  %206 = call i32 @c_TPtoO(i8* %200)
  %207 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null113 = icmp ne i32 %206, %207
  br i1 %_Dynamic_check.non_null113, label %_Dynamic_check.succeeded115, label %_Dynamic_check.failed114

_Dynamic_check.succeeded115:                      ; preds = %_Dynamic_check.subsumption111
  %add.ptr116 = getelementptr inbounds i8, i8* %200, i64 0
  %208 = call i32 @c_TPtoO(i8* %203)
  %209 = inttoptr i32 %208 to i8*
  %210 = call i32 @c_TPtoO(i8* %200)
  %211 = inttoptr i32 %210 to i8*
  %212 = call i32 @c_TPtoO(i8* %209)
  %213 = call i32 @c_TPtoO(i8* %211)
  %_Dynamic_check.lower117 = icmp ule i32 %212, %213
  %214 = call i32 @c_TPtoO(i8* %add.ptr116)
  %215 = inttoptr i32 %214 to i8*
  %216 = call i32 @c_TPtoO(i8* %add.ptr112)
  %217 = inttoptr i32 %216 to i8*
  %218 = call i32 @c_TPtoO(i8* %215)
  %219 = call i32 @c_TPtoO(i8* %217)
  %_Dynamic_check.upper118 = icmp ule i32 %218, %219
  %_Dynamic_check.cast119 = and i1 %_Dynamic_check.lower117, %_Dynamic_check.upper118
  br i1 %_Dynamic_check.cast119, label %_Dynamic_check.success121, label %_Dynamic_check.failed120

_Dynamic_check.success121:                        ; preds = %_Dynamic_check.succeeded115, %error
  %220 = ptrtoint i8* %200 to i32
  %221 = call i8* @c_fetch_pointer_from_offset(i32 %220)
  %222 = call i1 @c_isTaintedPointerToTaintedMem(i8* %221)
  br i1 %222, label %_Dynamic_check.succeeded123, label %_Dynamic_check.failed122

_Dynamic_check.succeeded123:                      ; preds = %_Dynamic_check.success121
  call void @t_free(i8* %221)
  store i8* null, i8** %retval, align 8
  br label %return

_Dynamic_check.failed114:                         ; preds = %_Dynamic_check.subsumption111
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed120:                         ; preds = %_Dynamic_check.succeeded115
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed122:                         ; preds = %_Dynamic_check.success121
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded123, %_Dynamic_check.succeeded109
  %223 = load i8*, i8** %retval, align 8
  ret i8* %223
}

declare i1 @c_isTaintedPointerToTaintedMem(i8*)

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #4

declare i32 @c_TPtoO(i8*)

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @get_quoted_string(i8* %string, i8* (i8*, i64)* %process_string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %process_string.addr = alloca i8* (i8*, i64)*, align 4
  %ret_param_types = alloca [3 x i32], align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = ptrtoint i8* (i8*, i64)* %process_string to i32
  %3 = bitcast i8* (i8*, i64)** %process_string.addr to i32*
  store i32 %2, i32* %3, align 4
  %4 = bitcast [3 x i32]* %ret_param_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([3 x i32]* @__const.get_quoted_string.ret_param_types to i8*), i64 12, i1 false)
  %call = call i8* (...) @c_fetch_sandbox_address()
  %5 = load i8*, i8** %string.addr, align 4
  %6 = ptrtoint i8* %5 to i32
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %ret_param_types, i64 0, i64 0
  %call1 = call i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...) bitcast (i32 (...)* @sbx_register_callback to i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...)*)(i32 (i32, i32, i64)* @process_string_trampoline, i32 2, i32 1, i32* %arraydecay)
  %7 = ptrtoint i8* %call to i64
  %8 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %7)
  %call2 = call i32 @w2c_get_quoted_string(i8* %8, i32 %6, i32 %call1)
  %conv = zext i32 %call2 to i64
  %9 = inttoptr i64 %conv to i8*
  ret i8* %9
}

declare dso_local i32 @w2c_get_quoted_string(i8*, i32, i32) #1

declare dso_local i32 @sbx_register_callback(...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @parse_value(i8* %string, i64 %nesting) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %nesting.addr = alloca i64, align 8
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  store i64 %nesting, i64* %nesting.addr, align 8
  %2 = load i64, i64* %nesting.addr, align 8
  %cmp = icmp ugt i64 %2, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load i8*, i8** %string.addr, align 4
  %4 = ptrtoint i8* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %while.cond
  %7 = load i8, i8* %5, align 1
  %conv = zext i8 %7 to i32
  %call = call i32 @isspace(i32 %conv) #10
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %_Dynamic_check.succeeded
  %8 = load i8*, i8** %string.addr, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %8, i32 1
  %9 = ptrtoint i8* %incdec.ptr to i32
  %10 = bitcast i8** %string.addr to i32*
  store i32 %9, i32* %10, align 4
  br label %while.cond, !llvm.loop !4

_Dynamic_check.failed:                            ; preds = %while.cond
  call void @llvm.trap() #9
  unreachable

while.end:                                        ; preds = %_Dynamic_check.succeeded
  %11 = load i8*, i8** %string.addr, align 4
  %12 = ptrtoint i8* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %while.end
  %15 = load i8, i8* %13, align 1
  %conv3 = sext i8 %15 to i32
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
  call void @llvm.trap() #9
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded2
  %16 = load i8*, i8** %string.addr, align 4
  %17 = load i64, i64* %nesting.addr, align 8
  %add = add i64 %17, 1
  %18 = ptrtoint i8* %16 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %sw.bb
  %call6 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*, i64)* @parse_object_value to %Tstruct.Spl_json_value_t_t* (i8*, i64)*)(i8* %19, i64 %add)
  %21 = bitcast %Tstruct.Spl_json_value_t_t* %call6 to %Tstruct.json_value_t_t*
  %22 = bitcast %Tstruct.json_value_t_t* %21 to i8*
  %23 = call i32 @c_TPtoO(i8* %22)
  %24 = inttoptr i32 %23 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %24, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed4:                           ; preds = %sw.bb
  call void @llvm.trap() #9
  unreachable

sw.bb7:                                           ; preds = %_Dynamic_check.succeeded2
  %25 = load i8*, i8** %string.addr, align 4
  %26 = load i64, i64* %nesting.addr, align 8
  %add8 = add i64 %26, 1
  %27 = ptrtoint i8* %25 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %sw.bb7
  %call11 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*, i64)* @parse_array_value to %Tstruct.Spl_json_value_t_t* (i8*, i64)*)(i8* %28, i64 %add8)
  %30 = bitcast %Tstruct.Spl_json_value_t_t* %call11 to %Tstruct.json_value_t_t*
  %31 = bitcast %Tstruct.json_value_t_t* %30 to i8*
  %32 = call i32 @c_TPtoO(i8* %31)
  %33 = inttoptr i32 %32 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %33, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed9:                           ; preds = %sw.bb7
  call void @llvm.trap() #9
  unreachable

sw.bb12:                                          ; preds = %_Dynamic_check.succeeded2
  %34 = load i8*, i8** %string.addr, align 4
  %35 = ptrtoint i8* %34 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %sw.bb12
  %call15 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*, i8* (i8*, i64)*)* @parse_string_value to %Tstruct.Spl_json_value_t_t* (i8*, i8* (i8*, i64)*)*)(i8* %36, i8* (i8*, i64)* @process_string)
  %38 = bitcast %Tstruct.Spl_json_value_t_t* %call15 to %Tstruct.json_value_t_t*
  %39 = bitcast %Tstruct.json_value_t_t* %38 to i8*
  %40 = call i32 @c_TPtoO(i8* %39)
  %41 = inttoptr i32 %40 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %41, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed13:                          ; preds = %sw.bb12
  call void @llvm.trap() #9
  unreachable

sw.bb16:                                          ; preds = %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2
  %42 = load i8*, i8** %string.addr, align 4
  %43 = ptrtoint i8* %42 to i32
  %44 = call i8* @c_fetch_pointer_from_offset(i32 %43)
  %45 = call i1 @c_isTaintedPointerToTaintedMem(i8* %44)
  br i1 %45, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %sw.bb16
  %call19 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*)* @parse_boolean_value to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %44)
  %46 = bitcast %Tstruct.Spl_json_value_t_t* %call19 to %Tstruct.json_value_t_t*
  %47 = bitcast %Tstruct.json_value_t_t* %46 to i8*
  %48 = call i32 @c_TPtoO(i8* %47)
  %49 = inttoptr i32 %48 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %49, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed17:                          ; preds = %sw.bb16
  call void @llvm.trap() #9
  unreachable

sw.bb20:                                          ; preds = %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2, %_Dynamic_check.succeeded2
  %50 = load i8*, i8** %string.addr, align 4
  %51 = ptrtoint i8* %50 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %sw.bb20
  %call23 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @parse_number_value to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %52)
  %54 = bitcast %Tstruct.Spl_json_value_t_t* %call23 to %Tstruct.json_value_t_t*
  %55 = bitcast %Tstruct.json_value_t_t* %54 to i8*
  %56 = call i32 @c_TPtoO(i8* %55)
  %57 = inttoptr i32 %56 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %57, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed21:                          ; preds = %sw.bb20
  call void @llvm.trap() #9
  unreachable

sw.bb24:                                          ; preds = %_Dynamic_check.succeeded2
  %58 = load i8*, i8** %string.addr, align 4
  %59 = ptrtoint i8* %58 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %sw.bb24
  %call27 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*)* @parse_null_value to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %60)
  %62 = bitcast %Tstruct.Spl_json_value_t_t* %call27 to %Tstruct.json_value_t_t*
  %63 = bitcast %Tstruct.json_value_t_t* %62 to i8*
  %64 = call i32 @c_TPtoO(i8* %63)
  %65 = inttoptr i32 %64 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %65, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed25:                          ; preds = %sw.bb24
  call void @llvm.trap() #9
  unreachable

sw.default:                                       ; preds = %_Dynamic_check.succeeded2
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %_Dynamic_check.succeeded26, %_Dynamic_check.succeeded22, %_Dynamic_check.succeeded18, %_Dynamic_check.succeeded14, %_Dynamic_check.succeeded10, %_Dynamic_check.succeeded5, %if.then
  %66 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %66
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isspace(i32) #5

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.json_value_t_t* @parse_string_value(i8* %string, i8* (i8*, i64)* %process_string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %process_string.addr = alloca i8* (i8*, i64)*, align 4
  %ret_param_types = alloca [3 x i32], align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = ptrtoint i8* (i8*, i64)* %process_string to i32
  %3 = bitcast i8* (i8*, i64)** %process_string.addr to i32*
  store i32 %2, i32* %3, align 4
  %4 = bitcast [3 x i32]* %ret_param_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([3 x i32]* @__const.parse_string_value.ret_param_types to i8*), i64 12, i1 false)
  %call = call i8* (...) @c_fetch_sandbox_address()
  %5 = load i8*, i8** %string.addr, align 4
  %6 = ptrtoint i8* %5 to i32
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %ret_param_types, i64 0, i64 0
  %call1 = call i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...) bitcast (i32 (...)* @sbx_register_callback to i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...)*)(i32 (i32, i32, i64)* @process_string_trampoline, i32 2, i32 1, i32* %arraydecay)
  %7 = ptrtoint i8* %call to i64
  %8 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %7)
  %call2 = call i32 @w2c_parse_string_value(i8* %8, i32 %6, i32 %call1)
  %conv = zext i32 %call2 to i64
  %9 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %9
}

declare dso_local i32 @w2c_parse_string_value(i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @parse_number_value(i8* %string) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %str_len = alloca i32, align 4
  %str_cpy = alloca i8*, align 4
  %end = alloca i8**, align 4
  %number = alloca double, align 8
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i64 @t_strlen(i8* %4)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %str_len, align 4
  %6 = load i32, i32* %str_len, align 4
  %conv1 = sext i32 %6 to i64
  %mul = mul i64 %conv1, 1
  %call2 = call i8* @parson_string_tainted_malloc(i64 %mul)
  %7 = call i32 @c_TPtoO(i8* %call2)
  %8 = inttoptr i32 %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = bitcast i8** %str_cpy to i32*
  store i32 %9, i32* %10, align 4
  %11 = load i8*, i8** %str_cpy, align 4
  %12 = load i8*, i8** %string.addr, align 4
  %13 = ptrtoint i8* %11 to i64
  %14 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %13)
  %15 = ptrtoint i8* %12 to i64
  %16 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %15)
  %call3 = call i8* @t_strcpy(i8* %14, i8* %16)
  %17 = call i32 @c_TPtoO(i8* %call3)
  %18 = inttoptr i32 %17 to i8*
  %call4 = call i8* @t_malloc(i64 8)
  %19 = bitcast i8* %call4 to i8**
  %20 = bitcast i8** %19 to i8*
  %21 = call i32 @c_TPtoO(i8* %20)
  %22 = inttoptr i32 %21 to i8**
  %23 = ptrtoint i8** %22 to i32
  %24 = bitcast i8*** %end to i32*
  store i32 %23, i32* %24, align 4
  %25 = load i8**, i8*** %end, align 4
  %26 = ptrtoint i8** %25 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded
  %29 = bitcast i8* %27 to i8**
  %30 = bitcast i8** %29 to i32*
  store i32 0, i32* %30, align 4
  store double 0.000000e+00, double* %number, align 8
  %31 = load i8*, i8** %str_cpy, align 4
  %32 = load i8**, i8*** %end, align 4
  %33 = ptrtoint i8* %31 to i32
  %34 = call i8* @c_fetch_pointer_from_offset(i32 %33)
  %35 = call i1 @c_isTaintedPointerToTaintedMem(i8* %34)
  br i1 %35, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %36 = ptrtoint i8** %32 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded8
  %39 = bitcast i8* %37 to i8**
  %call11 = call double @t_strtod(i8* %34, i8** %39)
  store double %call11, double* %number, align 8
  %40 = load i8*, i8** %str_cpy, align 4
  %41 = load i8*, i8** %string.addr, align 4
  %42 = ptrtoint i8* %41 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded10
  %call14 = call i64 @t_strlen(i8* %43)
  %45 = load i8**, i8*** %end, align 4
  %46 = ptrtoint i8** %45 to i32
  %47 = call i8* @c_fetch_pointer_from_offset(i32 %46)
  %48 = call i1 @c_isTaintedPointerToTaintedMem(i8* %47)
  br i1 %48, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded13
  %49 = bitcast i8* %47 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  %call19 = call i64 @t_strlen(i8* %52)
  %sub = sub i64 %call14, %call19
  %54 = ptrtoint i8* %40 to i32
  %55 = call i8* @c_fetch_pointer_from_offset(i32 %54)
  %56 = call i1 @c_isTaintedPointerToTaintedMem(i8* %55)
  br i1 %56, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.succeeded18
  %call22 = call i32 @is_decimal(i8* %55, i64 %sub)
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %_Dynamic_check.succeeded21
  %57 = load i8*, i8** %string.addr, align 4
  %58 = load i8*, i8** %str_cpy, align 4
  %59 = ptrtoint i8* %57 to i64
  %60 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %59)
  %61 = ptrtoint i8* %58 to i64
  %62 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %61)
  %call23 = call i8* @t_strcpy(i8* %60, i8* %62)
  %63 = call i32 @c_TPtoO(i8* %call23)
  %64 = inttoptr i32 %63 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded13
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded21
  %65 = load i8**, i8*** %end, align 4
  %66 = ptrtoint i8** %65 to i32
  %67 = call i8* @c_fetch_pointer_from_offset(i32 %66)
  %68 = call i1 @c_isTaintedPointerToTaintedMem(i8* %67)
  br i1 %68, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %if.end
  %69 = bitcast i8* %67 to i8**
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = bitcast i8** %str_cpy to i32*
  store i32 %71, i32* %72, align 4
  %73 = load i8*, i8** %string.addr, align 4
  %74 = load i8*, i8** %str_cpy, align 4
  %75 = ptrtoint i8* %73 to i64
  %76 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %75)
  %77 = ptrtoint i8* %74 to i64
  %78 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %77)
  %call26 = call i8* @t_strcpy(i8* %76, i8* %78)
  %79 = call i32 @c_TPtoO(i8* %call26)
  %80 = inttoptr i32 %79 to i8*
  %81 = load i8**, i8*** %end, align 4
  %82 = ptrtoint i8** %81 to i32
  %83 = call i8* @c_fetch_pointer_from_offset(i32 %82)
  %84 = call i1 @c_isTaintedPointerToTaintedMem(i8* %83)
  br i1 %84, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded25
  %85 = bitcast i8* %83 to i8**
  %86 = bitcast i8** %85 to i8*
  call void @t_free(i8* %86)
  %87 = load double, double* %number, align 8
  %call29 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (double)* @json_value_init_number to %Tstruct.Spl_json_value_t_t* (double)*)(double %87)
  %88 = bitcast %Tstruct.Spl_json_value_t_t* %call29 to %Tstruct.json_value_t_t*
  %89 = bitcast %Tstruct.json_value_t_t* %88 to i8*
  %90 = call i32 @c_TPtoO(i8* %89)
  %91 = inttoptr i32 %90 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %91, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed24:                          ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded28, %if.then
  %92 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %92
}

declare dso_local i64 @t_strlen(i8*) #1

declare dso_local i8* @t_strcpy(i8*, i8*) #1

declare dso_local i8* @t_malloc(i64) #1

declare dso_local double @t_strtod(i8*, i8**) #1

declare dso_local void @t_free(i8*) #1

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
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %buf to i32
  %4 = bitcast i8** %buf.addr to i32*
  store i32 %3, i32* %4, align 4
  store i32 %level, i32* %level.addr, align 4
  store i32 %is_pretty, i32* %is_pretty.addr, align 4
  %5 = ptrtoint i8* %num_buf to i32
  %6 = bitcast i8** %num_buf.addr to i32*
  store i32 %5, i32* %6, align 4
  %7 = ptrtoint i8* %buf_start to i32
  %8 = bitcast i8** %buf_start.addr to i32*
  store i32 %7, i32* %8, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  %9 = bitcast i8** %key to i32*
  store i32 0, i32* %9, align 4
  %10 = bitcast i8** %string to i32*
  store i32 0, i32* %10, align 4
  %11 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 0, i32* %11, align 4
  %12 = bitcast %Tstruct.Spl_json_array_t_t** %array to i32*
  store i32 0, i32* %12, align 4
  %13 = bitcast %Tstruct.Spl_json_object_t_t** %object to i32*
  store i32 0, i32* %13, align 4
  store i64 0, i64* %i, align 8
  store i64 0, i64* %count, align 8
  store double 0.000000e+00, double* %num, align 8
  store i32 -1, i32* %written, align 4
  store i32 0, i32* %written_total, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %15 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %18)
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
  call void @llvm.trap() #9
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded
  %19 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %20 = ptrtoint %Tstruct.Spl_json_value_t_t* %19 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %sw.bb
  %23 = bitcast i8* %21 to %Tstruct.Spl_json_value_t_t*
  %call3 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %23)
  %24 = bitcast %Tstruct.Spl_json_array_t_t* %call3 to %Tstruct.json_array_t_t*
  %25 = bitcast %Tstruct.json_array_t_t* %24 to i8*
  %26 = call i32 @c_TPtoO(i8* %25)
  %27 = inttoptr i32 %26 to %Tstruct.json_array_t_t*
  %28 = bitcast %Tstruct.json_array_t_t* %27 to %Tstruct.Spl_json_array_t_t*
  %29 = ptrtoint %Tstruct.Spl_json_array_t_t* %28 to i32
  %30 = bitcast %Tstruct.Spl_json_array_t_t** %array to i32*
  store i32 %29, i32* %30, align 4
  %31 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array, align 4
  %32 = ptrtoint %Tstruct.Spl_json_array_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded2
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_array_t_t*
  %call6 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %35)
  store i64 %call6, i64* %count, align 8
  br label %do.body

do.body:                                          ; preds = %_Dynamic_check.succeeded5
  %36 = load i8*, i8** %buf.addr, align 4
  %37 = load i8*, i8** %buf_start.addr, align 4
  %38 = load i64, i64* %buf_len.addr, align 8
  %39 = ptrtoint i8* %36 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %do.body
  %42 = ptrtoint i8* %37 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded8
  %call11 = call i32 @append_string(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %43, i64 %38)
  store i32 %call11, i32* %written, align 4
  %45 = load i32, i32* %written, align 4
  %cmp = icmp slt i32 %45, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded10
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed1:                           ; preds = %sw.bb
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %do.body
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded10
  %46 = load i8*, i8** %buf.addr, align 4
  %47 = ptrtoint i8* %46 to i32
  %cmp12 = icmp ne i32 %47, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end
  %48 = load i32, i32* %written, align 4
  %49 = load i8*, i8** %buf.addr, align 4
  %idx.ext = sext i32 %48 to i64
  %add.ptr = getelementptr inbounds i8, i8* %49, i64 %idx.ext
  %50 = ptrtoint i8* %add.ptr to i32
  %51 = bitcast i8** %buf.addr to i32*
  store i32 %50, i32* %51, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end
  %52 = load i32, i32* %written, align 4
  %53 = load i32, i32* %written_total, align 4
  %add = add nsw i32 %53, %52
  store i32 %add, i32* %written_total, align 4
  br label %do.end

do.end:                                           ; preds = %if.end14
  %54 = load i64, i64* %count, align 8
  %cmp15 = icmp ugt i64 %54, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %do.end
  %55 = load i32, i32* %is_pretty.addr, align 4
  %tobool = icmp ne i32 %55, 0
  br i1 %tobool, label %if.then16, label %if.end33

if.then16:                                        ; preds = %land.lhs.true
  br label %do.body17

do.body17:                                        ; preds = %if.then16
  %56 = load i8*, i8** %buf.addr, align 4
  %57 = load i8*, i8** %buf_start.addr, align 4
  %58 = load i64, i64* %buf_len.addr, align 8
  %59 = ptrtoint i8* %56 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %do.body17
  %62 = ptrtoint i8* %57 to i32
  %63 = call i8* @c_fetch_pointer_from_offset(i32 %62)
  %64 = call i1 @c_isTaintedPointerToTaintedMem(i8* %63)
  br i1 %64, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.succeeded19
  %call22 = call i32 @append_string(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %63, i64 %58)
  store i32 %call22, i32* %written, align 4
  %65 = load i32, i32* %written, align 4
  %cmp23 = icmp slt i32 %65, 0
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %_Dynamic_check.succeeded21
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed18:                          ; preds = %do.body17
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded19
  call void @llvm.trap() #9
  unreachable

if.end25:                                         ; preds = %_Dynamic_check.succeeded21
  %66 = load i8*, i8** %buf.addr, align 4
  %67 = ptrtoint i8* %66 to i32
  %cmp26 = icmp ne i32 %67, 0
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end25
  %68 = load i32, i32* %written, align 4
  %69 = load i8*, i8** %buf.addr, align 4
  %idx.ext28 = sext i32 %68 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %69, i64 %idx.ext28
  %70 = ptrtoint i8* %add.ptr29 to i32
  %71 = bitcast i8** %buf.addr to i32*
  store i32 %70, i32* %71, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end25
  %72 = load i32, i32* %written, align 4
  %73 = load i32, i32* %written_total, align 4
  %add31 = add nsw i32 %73, %72
  store i32 %add31, i32* %written_total, align 4
  br label %do.end32

do.end32:                                         ; preds = %if.end30
  br label %if.end33

if.end33:                                         ; preds = %do.end32, %land.lhs.true, %do.end
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end33
  %74 = load i64, i64* %i, align 8
  %75 = load i64, i64* %count, align 8
  %cmp34 = icmp ult i64 %74, %75
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %76 = load i32, i32* %is_pretty.addr, align 4
  %tobool35 = icmp ne i32 %76, 0
  br i1 %tobool35, label %if.then36, label %if.end54

if.then36:                                        ; preds = %for.body
  br label %do.body37

do.body37:                                        ; preds = %if.then36
  %77 = load i8*, i8** %buf.addr, align 4
  %78 = load i32, i32* %level.addr, align 4
  %add38 = add nsw i32 %78, 1
  %79 = load i8*, i8** %buf_start.addr, align 4
  %80 = load i64, i64* %buf_len.addr, align 8
  %81 = ptrtoint i8* %77 to i32
  %82 = call i8* @c_fetch_pointer_from_offset(i32 %81)
  %83 = call i1 @c_isTaintedPointerToTaintedMem(i8* %82)
  br i1 %83, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %do.body37
  %84 = ptrtoint i8* %79 to i32
  %85 = call i8* @c_fetch_pointer_from_offset(i32 %84)
  %86 = call i1 @c_isTaintedPointerToTaintedMem(i8* %85)
  br i1 %86, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %_Dynamic_check.succeeded40
  %call43 = call i32 @append_indent(i8* %82, i32 %add38, i8* %85, i64 %80)
  store i32 %call43, i32* %written, align 4
  %87 = load i32, i32* %written, align 4
  %cmp44 = icmp slt i32 %87, 0
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %_Dynamic_check.succeeded42
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed39:                          ; preds = %do.body37
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed41:                          ; preds = %_Dynamic_check.succeeded40
  call void @llvm.trap() #9
  unreachable

if.end46:                                         ; preds = %_Dynamic_check.succeeded42
  %88 = load i8*, i8** %buf.addr, align 4
  %89 = ptrtoint i8* %88 to i32
  %cmp47 = icmp ne i32 %89, 0
  br i1 %cmp47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end46
  %90 = load i32, i32* %written, align 4
  %91 = load i8*, i8** %buf.addr, align 4
  %idx.ext49 = sext i32 %90 to i64
  %add.ptr50 = getelementptr inbounds i8, i8* %91, i64 %idx.ext49
  %92 = ptrtoint i8* %add.ptr50 to i32
  %93 = bitcast i8** %buf.addr to i32*
  store i32 %92, i32* %93, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end46
  %94 = load i32, i32* %written, align 4
  %95 = load i32, i32* %written_total, align 4
  %add52 = add nsw i32 %95, %94
  store i32 %add52, i32* %written_total, align 4
  br label %do.end53

do.end53:                                         ; preds = %if.end51
  br label %if.end54

if.end54:                                         ; preds = %do.end53, %for.body
  %96 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array, align 4
  %97 = load i64, i64* %i, align 8
  %98 = ptrtoint %Tstruct.Spl_json_array_t_t* %96 to i32
  %99 = call i8* @c_fetch_pointer_from_offset(i32 %98)
  %100 = call i1 @c_isTaintedPointerToTaintedMem(i8* %99)
  br i1 %100, label %_Dynamic_check.succeeded56, label %_Dynamic_check.failed55

_Dynamic_check.succeeded56:                       ; preds = %if.end54
  %101 = bitcast i8* %99 to %Tstruct.Spl_json_array_t_t*
  %call57 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %101, i64 %97)
  %102 = bitcast %Tstruct.Spl_json_value_t_t* %call57 to %Tstruct.json_value_t_t*
  %103 = bitcast %Tstruct.json_value_t_t* %102 to i8*
  %104 = call i32 @c_TPtoO(i8* %103)
  %105 = inttoptr i32 %104 to %Tstruct.json_value_t_t*
  %106 = bitcast %Tstruct.json_value_t_t* %105 to %Tstruct.Spl_json_value_t_t*
  %107 = ptrtoint %Tstruct.Spl_json_value_t_t* %106 to i32
  %108 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %107, i32* %108, align 4
  %109 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %110 = load i8*, i8** %buf.addr, align 4
  %111 = load i32, i32* %level.addr, align 4
  %add58 = add nsw i32 %111, 1
  %112 = load i32, i32* %is_pretty.addr, align 4
  %113 = load i8*, i8** %num_buf.addr, align 4
  %114 = load i8*, i8** %buf_start.addr, align 4
  %115 = load i64, i64* %buf_len.addr, align 8
  %116 = ptrtoint %Tstruct.Spl_json_value_t_t* %109 to i32
  %117 = call i8* @c_fetch_pointer_from_offset(i32 %116)
  %118 = call i1 @c_isTaintedPointerToTaintedMem(i8* %117)
  br i1 %118, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %_Dynamic_check.succeeded56
  %119 = bitcast i8* %117 to %Tstruct.Spl_json_value_t_t*
  %120 = ptrtoint i8* %110 to i32
  %121 = call i8* @c_fetch_pointer_from_offset(i32 %120)
  %122 = call i1 @c_isTaintedPointerToTaintedMem(i8* %121)
  br i1 %122, label %_Dynamic_check.succeeded62, label %_Dynamic_check.failed61

_Dynamic_check.succeeded62:                       ; preds = %_Dynamic_check.succeeded60
  %123 = ptrtoint i8* %113 to i32
  %124 = call i8* @c_fetch_pointer_from_offset(i32 %123)
  %125 = call i1 @c_isTaintedPointerToTaintedMem(i8* %124)
  br i1 %125, label %_Dynamic_check.succeeded64, label %_Dynamic_check.failed63

_Dynamic_check.succeeded64:                       ; preds = %_Dynamic_check.succeeded62
  %126 = ptrtoint i8* %114 to i32
  %127 = call i8* @c_fetch_pointer_from_offset(i32 %126)
  %128 = call i1 @c_isTaintedPointerToTaintedMem(i8* %127)
  br i1 %128, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %_Dynamic_check.succeeded64
  %call67 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %119, i8* %121, i32 %add58, i32 %112, i8* %124, i8* %127, i64 %115)
  store i32 %call67, i32* %written, align 4
  %129 = load i32, i32* %written, align 4
  %cmp68 = icmp slt i32 %129, 0
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %_Dynamic_check.succeeded66
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed55:                          ; preds = %if.end54
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed59:                          ; preds = %_Dynamic_check.succeeded56
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed61:                          ; preds = %_Dynamic_check.succeeded60
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed63:                          ; preds = %_Dynamic_check.succeeded62
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed65:                          ; preds = %_Dynamic_check.succeeded64
  call void @llvm.trap() #9
  unreachable

if.end70:                                         ; preds = %_Dynamic_check.succeeded66
  %130 = load i8*, i8** %buf.addr, align 4
  %131 = ptrtoint i8* %130 to i32
  %cmp71 = icmp ne i32 %131, 0
  br i1 %cmp71, label %if.then72, label %if.end75

if.then72:                                        ; preds = %if.end70
  %132 = load i32, i32* %written, align 4
  %133 = load i8*, i8** %buf.addr, align 4
  %idx.ext73 = sext i32 %132 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %133, i64 %idx.ext73
  %134 = ptrtoint i8* %add.ptr74 to i32
  %135 = bitcast i8** %buf.addr to i32*
  store i32 %134, i32* %135, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %if.end70
  %136 = load i32, i32* %written, align 4
  %137 = load i32, i32* %written_total, align 4
  %add76 = add nsw i32 %137, %136
  store i32 %add76, i32* %written_total, align 4
  %138 = load i64, i64* %i, align 8
  %139 = load i64, i64* %count, align 8
  %sub = sub i64 %139, 1
  %cmp77 = icmp ult i64 %138, %sub
  br i1 %cmp77, label %if.then78, label %if.end95

if.then78:                                        ; preds = %if.end75
  br label %do.body79

do.body79:                                        ; preds = %if.then78
  %140 = load i8*, i8** %buf.addr, align 4
  %141 = load i8*, i8** %buf_start.addr, align 4
  %142 = load i64, i64* %buf_len.addr, align 8
  %143 = ptrtoint i8* %140 to i32
  %144 = call i8* @c_fetch_pointer_from_offset(i32 %143)
  %145 = call i1 @c_isTaintedPointerToTaintedMem(i8* %144)
  br i1 %145, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %do.body79
  %146 = ptrtoint i8* %141 to i32
  %147 = call i8* @c_fetch_pointer_from_offset(i32 %146)
  %148 = call i1 @c_isTaintedPointerToTaintedMem(i8* %147)
  br i1 %148, label %_Dynamic_check.succeeded83, label %_Dynamic_check.failed82

_Dynamic_check.succeeded83:                       ; preds = %_Dynamic_check.succeeded81
  %call84 = call i32 @append_string(i8* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %147, i64 %142)
  store i32 %call84, i32* %written, align 4
  %149 = load i32, i32* %written, align 4
  %cmp85 = icmp slt i32 %149, 0
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %_Dynamic_check.succeeded83
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed80:                          ; preds = %do.body79
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed82:                          ; preds = %_Dynamic_check.succeeded81
  call void @llvm.trap() #9
  unreachable

if.end87:                                         ; preds = %_Dynamic_check.succeeded83
  %150 = load i8*, i8** %buf.addr, align 4
  %151 = ptrtoint i8* %150 to i32
  %cmp88 = icmp ne i32 %151, 0
  br i1 %cmp88, label %if.then89, label %if.end92

if.then89:                                        ; preds = %if.end87
  %152 = load i32, i32* %written, align 4
  %153 = load i8*, i8** %buf.addr, align 4
  %idx.ext90 = sext i32 %152 to i64
  %add.ptr91 = getelementptr inbounds i8, i8* %153, i64 %idx.ext90
  %154 = ptrtoint i8* %add.ptr91 to i32
  %155 = bitcast i8** %buf.addr to i32*
  store i32 %154, i32* %155, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end87
  %156 = load i32, i32* %written, align 4
  %157 = load i32, i32* %written_total, align 4
  %add93 = add nsw i32 %157, %156
  store i32 %add93, i32* %written_total, align 4
  br label %do.end94

do.end94:                                         ; preds = %if.end92
  br label %if.end95

if.end95:                                         ; preds = %do.end94, %if.end75
  %158 = load i32, i32* %is_pretty.addr, align 4
  %tobool96 = icmp ne i32 %158, 0
  br i1 %tobool96, label %if.then97, label %if.end114

if.then97:                                        ; preds = %if.end95
  br label %do.body98

do.body98:                                        ; preds = %if.then97
  %159 = load i8*, i8** %buf.addr, align 4
  %160 = load i8*, i8** %buf_start.addr, align 4
  %161 = load i64, i64* %buf_len.addr, align 8
  %162 = ptrtoint i8* %159 to i32
  %163 = call i8* @c_fetch_pointer_from_offset(i32 %162)
  %164 = call i1 @c_isTaintedPointerToTaintedMem(i8* %163)
  br i1 %164, label %_Dynamic_check.succeeded100, label %_Dynamic_check.failed99

_Dynamic_check.succeeded100:                      ; preds = %do.body98
  %165 = ptrtoint i8* %160 to i32
  %166 = call i8* @c_fetch_pointer_from_offset(i32 %165)
  %167 = call i1 @c_isTaintedPointerToTaintedMem(i8* %166)
  br i1 %167, label %_Dynamic_check.succeeded102, label %_Dynamic_check.failed101

_Dynamic_check.succeeded102:                      ; preds = %_Dynamic_check.succeeded100
  %call103 = call i32 @append_string(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %166, i64 %161)
  store i32 %call103, i32* %written, align 4
  %168 = load i32, i32* %written, align 4
  %cmp104 = icmp slt i32 %168, 0
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %_Dynamic_check.succeeded102
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed99:                          ; preds = %do.body98
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed101:                         ; preds = %_Dynamic_check.succeeded100
  call void @llvm.trap() #9
  unreachable

if.end106:                                        ; preds = %_Dynamic_check.succeeded102
  %169 = load i8*, i8** %buf.addr, align 4
  %170 = ptrtoint i8* %169 to i32
  %cmp107 = icmp ne i32 %170, 0
  br i1 %cmp107, label %if.then108, label %if.end111

if.then108:                                       ; preds = %if.end106
  %171 = load i32, i32* %written, align 4
  %172 = load i8*, i8** %buf.addr, align 4
  %idx.ext109 = sext i32 %171 to i64
  %add.ptr110 = getelementptr inbounds i8, i8* %172, i64 %idx.ext109
  %173 = ptrtoint i8* %add.ptr110 to i32
  %174 = bitcast i8** %buf.addr to i32*
  store i32 %173, i32* %174, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end106
  %175 = load i32, i32* %written, align 4
  %176 = load i32, i32* %written_total, align 4
  %add112 = add nsw i32 %176, %175
  store i32 %add112, i32* %written_total, align 4
  br label %do.end113

do.end113:                                        ; preds = %if.end111
  br label %if.end114

if.end114:                                        ; preds = %do.end113, %if.end95
  br label %for.inc

for.inc:                                          ; preds = %if.end114
  %177 = load i64, i64* %i, align 8
  %inc = add i64 %177, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %178 = load i64, i64* %count, align 8
  %cmp115 = icmp ugt i64 %178, 0
  br i1 %cmp115, label %land.lhs.true116, label %if.end135

land.lhs.true116:                                 ; preds = %for.end
  %179 = load i32, i32* %is_pretty.addr, align 4
  %tobool117 = icmp ne i32 %179, 0
  br i1 %tobool117, label %if.then118, label %if.end135

if.then118:                                       ; preds = %land.lhs.true116
  br label %do.body119

do.body119:                                       ; preds = %if.then118
  %180 = load i8*, i8** %buf.addr, align 4
  %181 = load i32, i32* %level.addr, align 4
  %182 = load i8*, i8** %buf_start.addr, align 4
  %183 = load i64, i64* %buf_len.addr, align 8
  %184 = ptrtoint i8* %180 to i32
  %185 = call i8* @c_fetch_pointer_from_offset(i32 %184)
  %186 = call i1 @c_isTaintedPointerToTaintedMem(i8* %185)
  br i1 %186, label %_Dynamic_check.succeeded121, label %_Dynamic_check.failed120

_Dynamic_check.succeeded121:                      ; preds = %do.body119
  %187 = ptrtoint i8* %182 to i32
  %188 = call i8* @c_fetch_pointer_from_offset(i32 %187)
  %189 = call i1 @c_isTaintedPointerToTaintedMem(i8* %188)
  br i1 %189, label %_Dynamic_check.succeeded123, label %_Dynamic_check.failed122

_Dynamic_check.succeeded123:                      ; preds = %_Dynamic_check.succeeded121
  %call124 = call i32 @append_indent(i8* %185, i32 %181, i8* %188, i64 %183)
  store i32 %call124, i32* %written, align 4
  %190 = load i32, i32* %written, align 4
  %cmp125 = icmp slt i32 %190, 0
  br i1 %cmp125, label %if.then126, label %if.end127

if.then126:                                       ; preds = %_Dynamic_check.succeeded123
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed120:                         ; preds = %do.body119
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed122:                         ; preds = %_Dynamic_check.succeeded121
  call void @llvm.trap() #9
  unreachable

if.end127:                                        ; preds = %_Dynamic_check.succeeded123
  %191 = load i8*, i8** %buf.addr, align 4
  %192 = ptrtoint i8* %191 to i32
  %cmp128 = icmp ne i32 %192, 0
  br i1 %cmp128, label %if.then129, label %if.end132

if.then129:                                       ; preds = %if.end127
  %193 = load i32, i32* %written, align 4
  %194 = load i8*, i8** %buf.addr, align 4
  %idx.ext130 = sext i32 %193 to i64
  %add.ptr131 = getelementptr inbounds i8, i8* %194, i64 %idx.ext130
  %195 = ptrtoint i8* %add.ptr131 to i32
  %196 = bitcast i8** %buf.addr to i32*
  store i32 %195, i32* %196, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then129, %if.end127
  %197 = load i32, i32* %written, align 4
  %198 = load i32, i32* %written_total, align 4
  %add133 = add nsw i32 %198, %197
  store i32 %add133, i32* %written_total, align 4
  br label %do.end134

do.end134:                                        ; preds = %if.end132
  br label %if.end135

if.end135:                                        ; preds = %do.end134, %land.lhs.true116, %for.end
  br label %do.body136

do.body136:                                       ; preds = %if.end135
  %199 = load i8*, i8** %buf.addr, align 4
  %200 = load i8*, i8** %buf_start.addr, align 4
  %201 = load i64, i64* %buf_len.addr, align 8
  %202 = ptrtoint i8* %199 to i32
  %203 = call i8* @c_fetch_pointer_from_offset(i32 %202)
  %204 = call i1 @c_isTaintedPointerToTaintedMem(i8* %203)
  br i1 %204, label %_Dynamic_check.succeeded138, label %_Dynamic_check.failed137

_Dynamic_check.succeeded138:                      ; preds = %do.body136
  %205 = ptrtoint i8* %200 to i32
  %206 = call i8* @c_fetch_pointer_from_offset(i32 %205)
  %207 = call i1 @c_isTaintedPointerToTaintedMem(i8* %206)
  br i1 %207, label %_Dynamic_check.succeeded140, label %_Dynamic_check.failed139

_Dynamic_check.succeeded140:                      ; preds = %_Dynamic_check.succeeded138
  %call141 = call i32 @append_string(i8* %203, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* %206, i64 %201)
  store i32 %call141, i32* %written, align 4
  %208 = load i32, i32* %written, align 4
  %cmp142 = icmp slt i32 %208, 0
  br i1 %cmp142, label %if.then143, label %if.end144

if.then143:                                       ; preds = %_Dynamic_check.succeeded140
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed137:                         ; preds = %do.body136
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed139:                         ; preds = %_Dynamic_check.succeeded138
  call void @llvm.trap() #9
  unreachable

if.end144:                                        ; preds = %_Dynamic_check.succeeded140
  %209 = load i8*, i8** %buf.addr, align 4
  %210 = ptrtoint i8* %209 to i32
  %cmp145 = icmp ne i32 %210, 0
  br i1 %cmp145, label %if.then146, label %if.end149

if.then146:                                       ; preds = %if.end144
  %211 = load i32, i32* %written, align 4
  %212 = load i8*, i8** %buf.addr, align 4
  %idx.ext147 = sext i32 %211 to i64
  %add.ptr148 = getelementptr inbounds i8, i8* %212, i64 %idx.ext147
  %213 = ptrtoint i8* %add.ptr148 to i32
  %214 = bitcast i8** %buf.addr to i32*
  store i32 %213, i32* %214, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %if.end144
  %215 = load i32, i32* %written, align 4
  %216 = load i32, i32* %written_total, align 4
  %add150 = add nsw i32 %216, %215
  store i32 %add150, i32* %written_total, align 4
  br label %do.end151

do.end151:                                        ; preds = %if.end149
  %217 = load i32, i32* %written_total, align 4
  store i32 %217, i32* %retval, align 4
  br label %return

sw.bb152:                                         ; preds = %_Dynamic_check.succeeded
  %218 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %219 = ptrtoint %Tstruct.Spl_json_value_t_t* %218 to i32
  %220 = call i8* @c_fetch_pointer_from_offset(i32 %219)
  %221 = call i1 @c_isTaintedPointerToTaintedMem(i8* %220)
  br i1 %221, label %_Dynamic_check.succeeded154, label %_Dynamic_check.failed153

_Dynamic_check.succeeded154:                      ; preds = %sw.bb152
  %222 = bitcast i8* %220 to %Tstruct.Spl_json_value_t_t*
  %call155 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %222)
  %223 = bitcast %Tstruct.Spl_json_object_t_t* %call155 to %Tstruct.json_object_t_t*
  %224 = bitcast %Tstruct.json_object_t_t* %223 to i8*
  %225 = call i32 @c_TPtoO(i8* %224)
  %226 = inttoptr i32 %225 to %Tstruct.json_object_t_t*
  %227 = bitcast %Tstruct.json_object_t_t* %226 to %Tstruct.Spl_json_object_t_t*
  %228 = ptrtoint %Tstruct.Spl_json_object_t_t* %227 to i32
  %229 = bitcast %Tstruct.Spl_json_object_t_t** %object to i32*
  store i32 %228, i32* %229, align 4
  %230 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object, align 4
  %231 = ptrtoint %Tstruct.Spl_json_object_t_t* %230 to i32
  %232 = call i8* @c_fetch_pointer_from_offset(i32 %231)
  %233 = call i1 @c_isTaintedPointerToTaintedMem(i8* %232)
  br i1 %233, label %_Dynamic_check.succeeded157, label %_Dynamic_check.failed156

_Dynamic_check.succeeded157:                      ; preds = %_Dynamic_check.succeeded154
  %234 = bitcast i8* %232 to %Tstruct.Spl_json_object_t_t*
  %call158 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %234)
  store i64 %call158, i64* %count, align 8
  br label %do.body159

do.body159:                                       ; preds = %_Dynamic_check.succeeded157
  %235 = load i8*, i8** %buf.addr, align 4
  %236 = load i8*, i8** %buf_start.addr, align 4
  %237 = load i64, i64* %buf_len.addr, align 8
  %238 = ptrtoint i8* %235 to i32
  %239 = call i8* @c_fetch_pointer_from_offset(i32 %238)
  %240 = call i1 @c_isTaintedPointerToTaintedMem(i8* %239)
  br i1 %240, label %_Dynamic_check.succeeded161, label %_Dynamic_check.failed160

_Dynamic_check.succeeded161:                      ; preds = %do.body159
  %241 = ptrtoint i8* %236 to i32
  %242 = call i8* @c_fetch_pointer_from_offset(i32 %241)
  %243 = call i1 @c_isTaintedPointerToTaintedMem(i8* %242)
  br i1 %243, label %_Dynamic_check.succeeded163, label %_Dynamic_check.failed162

_Dynamic_check.succeeded163:                      ; preds = %_Dynamic_check.succeeded161
  %call164 = call i32 @append_string(i8* %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* %242, i64 %237)
  store i32 %call164, i32* %written, align 4
  %244 = load i32, i32* %written, align 4
  %cmp165 = icmp slt i32 %244, 0
  br i1 %cmp165, label %if.then166, label %if.end167

if.then166:                                       ; preds = %_Dynamic_check.succeeded163
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed153:                         ; preds = %sw.bb152
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed156:                         ; preds = %_Dynamic_check.succeeded154
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed160:                         ; preds = %do.body159
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed162:                         ; preds = %_Dynamic_check.succeeded161
  call void @llvm.trap() #9
  unreachable

if.end167:                                        ; preds = %_Dynamic_check.succeeded163
  %245 = load i8*, i8** %buf.addr, align 4
  %246 = ptrtoint i8* %245 to i32
  %cmp168 = icmp ne i32 %246, 0
  br i1 %cmp168, label %if.then169, label %if.end172

if.then169:                                       ; preds = %if.end167
  %247 = load i32, i32* %written, align 4
  %248 = load i8*, i8** %buf.addr, align 4
  %idx.ext170 = sext i32 %247 to i64
  %add.ptr171 = getelementptr inbounds i8, i8* %248, i64 %idx.ext170
  %249 = ptrtoint i8* %add.ptr171 to i32
  %250 = bitcast i8** %buf.addr to i32*
  store i32 %249, i32* %250, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then169, %if.end167
  %251 = load i32, i32* %written, align 4
  %252 = load i32, i32* %written_total, align 4
  %add173 = add nsw i32 %252, %251
  store i32 %add173, i32* %written_total, align 4
  br label %do.end174

do.end174:                                        ; preds = %if.end172
  %253 = load i64, i64* %count, align 8
  %cmp175 = icmp ugt i64 %253, 0
  br i1 %cmp175, label %land.lhs.true176, label %if.end195

land.lhs.true176:                                 ; preds = %do.end174
  %254 = load i32, i32* %is_pretty.addr, align 4
  %tobool177 = icmp ne i32 %254, 0
  br i1 %tobool177, label %if.then178, label %if.end195

if.then178:                                       ; preds = %land.lhs.true176
  br label %do.body179

do.body179:                                       ; preds = %if.then178
  %255 = load i8*, i8** %buf.addr, align 4
  %256 = load i8*, i8** %buf_start.addr, align 4
  %257 = load i64, i64* %buf_len.addr, align 8
  %258 = ptrtoint i8* %255 to i32
  %259 = call i8* @c_fetch_pointer_from_offset(i32 %258)
  %260 = call i1 @c_isTaintedPointerToTaintedMem(i8* %259)
  br i1 %260, label %_Dynamic_check.succeeded181, label %_Dynamic_check.failed180

_Dynamic_check.succeeded181:                      ; preds = %do.body179
  %261 = ptrtoint i8* %256 to i32
  %262 = call i8* @c_fetch_pointer_from_offset(i32 %261)
  %263 = call i1 @c_isTaintedPointerToTaintedMem(i8* %262)
  br i1 %263, label %_Dynamic_check.succeeded183, label %_Dynamic_check.failed182

_Dynamic_check.succeeded183:                      ; preds = %_Dynamic_check.succeeded181
  %call184 = call i32 @append_string(i8* %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %262, i64 %257)
  store i32 %call184, i32* %written, align 4
  %264 = load i32, i32* %written, align 4
  %cmp185 = icmp slt i32 %264, 0
  br i1 %cmp185, label %if.then186, label %if.end187

if.then186:                                       ; preds = %_Dynamic_check.succeeded183
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed180:                         ; preds = %do.body179
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed182:                         ; preds = %_Dynamic_check.succeeded181
  call void @llvm.trap() #9
  unreachable

if.end187:                                        ; preds = %_Dynamic_check.succeeded183
  %265 = load i8*, i8** %buf.addr, align 4
  %266 = ptrtoint i8* %265 to i32
  %cmp188 = icmp ne i32 %266, 0
  br i1 %cmp188, label %if.then189, label %if.end192

if.then189:                                       ; preds = %if.end187
  %267 = load i32, i32* %written, align 4
  %268 = load i8*, i8** %buf.addr, align 4
  %idx.ext190 = sext i32 %267 to i64
  %add.ptr191 = getelementptr inbounds i8, i8* %268, i64 %idx.ext190
  %269 = ptrtoint i8* %add.ptr191 to i32
  %270 = bitcast i8** %buf.addr to i32*
  store i32 %269, i32* %270, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then189, %if.end187
  %271 = load i32, i32* %written, align 4
  %272 = load i32, i32* %written_total, align 4
  %add193 = add nsw i32 %272, %271
  store i32 %add193, i32* %written_total, align 4
  br label %do.end194

do.end194:                                        ; preds = %if.end192
  br label %if.end195

if.end195:                                        ; preds = %do.end194, %land.lhs.true176, %do.end174
  store i64 0, i64* %i, align 8
  br label %for.cond196

for.cond196:                                      ; preds = %for.inc339, %if.end195
  %273 = load i64, i64* %i, align 8
  %274 = load i64, i64* %count, align 8
  %cmp197 = icmp ult i64 %273, %274
  br i1 %cmp197, label %for.body198, label %for.end341

for.body198:                                      ; preds = %for.cond196
  %275 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object, align 4
  %276 = load i64, i64* %i, align 8
  %277 = ptrtoint %Tstruct.Spl_json_object_t_t* %275 to i32
  %278 = call i8* @c_fetch_pointer_from_offset(i32 %277)
  %279 = call i1 @c_isTaintedPointerToTaintedMem(i8* %278)
  br i1 %279, label %_Dynamic_check.succeeded200, label %_Dynamic_check.failed199

_Dynamic_check.succeeded200:                      ; preds = %for.body198
  %280 = bitcast i8* %278 to %Tstruct.Spl_json_object_t_t*
  %call201 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %280, i64 %276)
  %281 = call i32 @c_TPtoO(i8* %call201)
  %282 = inttoptr i32 %281 to i8*
  %283 = ptrtoint i8* %282 to i32
  %284 = bitcast i8** %key to i32*
  store i32 %283, i32* %284, align 4
  %285 = load i8*, i8** %key, align 4
  %286 = ptrtoint i8* %285 to i32
  %cmp202 = icmp eq i32 %286, 0
  br i1 %cmp202, label %if.then203, label %if.end204

if.then203:                                       ; preds = %_Dynamic_check.succeeded200
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed199:                         ; preds = %for.body198
  call void @llvm.trap() #9
  unreachable

if.end204:                                        ; preds = %_Dynamic_check.succeeded200
  %287 = load i32, i32* %is_pretty.addr, align 4
  %tobool205 = icmp ne i32 %287, 0
  br i1 %tobool205, label %if.then206, label %if.end224

if.then206:                                       ; preds = %if.end204
  br label %do.body207

do.body207:                                       ; preds = %if.then206
  %288 = load i8*, i8** %buf.addr, align 4
  %289 = load i32, i32* %level.addr, align 4
  %add208 = add nsw i32 %289, 1
  %290 = load i8*, i8** %buf_start.addr, align 4
  %291 = load i64, i64* %buf_len.addr, align 8
  %292 = ptrtoint i8* %288 to i32
  %293 = call i8* @c_fetch_pointer_from_offset(i32 %292)
  %294 = call i1 @c_isTaintedPointerToTaintedMem(i8* %293)
  br i1 %294, label %_Dynamic_check.succeeded210, label %_Dynamic_check.failed209

_Dynamic_check.succeeded210:                      ; preds = %do.body207
  %295 = ptrtoint i8* %290 to i32
  %296 = call i8* @c_fetch_pointer_from_offset(i32 %295)
  %297 = call i1 @c_isTaintedPointerToTaintedMem(i8* %296)
  br i1 %297, label %_Dynamic_check.succeeded212, label %_Dynamic_check.failed211

_Dynamic_check.succeeded212:                      ; preds = %_Dynamic_check.succeeded210
  %call213 = call i32 @append_indent(i8* %293, i32 %add208, i8* %296, i64 %291)
  store i32 %call213, i32* %written, align 4
  %298 = load i32, i32* %written, align 4
  %cmp214 = icmp slt i32 %298, 0
  br i1 %cmp214, label %if.then215, label %if.end216

if.then215:                                       ; preds = %_Dynamic_check.succeeded212
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed209:                         ; preds = %do.body207
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed211:                         ; preds = %_Dynamic_check.succeeded210
  call void @llvm.trap() #9
  unreachable

if.end216:                                        ; preds = %_Dynamic_check.succeeded212
  %299 = load i8*, i8** %buf.addr, align 4
  %300 = ptrtoint i8* %299 to i32
  %cmp217 = icmp ne i32 %300, 0
  br i1 %cmp217, label %if.then218, label %if.end221

if.then218:                                       ; preds = %if.end216
  %301 = load i32, i32* %written, align 4
  %302 = load i8*, i8** %buf.addr, align 4
  %idx.ext219 = sext i32 %301 to i64
  %add.ptr220 = getelementptr inbounds i8, i8* %302, i64 %idx.ext219
  %303 = ptrtoint i8* %add.ptr220 to i32
  %304 = bitcast i8** %buf.addr to i32*
  store i32 %303, i32* %304, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then218, %if.end216
  %305 = load i32, i32* %written, align 4
  %306 = load i32, i32* %written_total, align 4
  %add222 = add nsw i32 %306, %305
  store i32 %add222, i32* %written_total, align 4
  br label %do.end223

do.end223:                                        ; preds = %if.end221
  br label %if.end224

if.end224:                                        ; preds = %do.end223, %if.end204
  %307 = load i8*, i8** %key, align 4
  %308 = load i8*, i8** %buf.addr, align 4
  %309 = load i8*, i8** %buf_start.addr, align 4
  %310 = load i64, i64* %buf_len.addr, align 8
  %311 = ptrtoint i8* %307 to i32
  %312 = call i8* @c_fetch_pointer_from_offset(i32 %311)
  %313 = call i1 @c_isTaintedPointerToTaintedMem(i8* %312)
  br i1 %313, label %_Dynamic_check.succeeded226, label %_Dynamic_check.failed225

_Dynamic_check.succeeded226:                      ; preds = %if.end224
  %314 = ptrtoint i8* %308 to i32
  %315 = call i8* @c_fetch_pointer_from_offset(i32 %314)
  %316 = call i1 @c_isTaintedPointerToTaintedMem(i8* %315)
  br i1 %316, label %_Dynamic_check.succeeded228, label %_Dynamic_check.failed227

_Dynamic_check.succeeded228:                      ; preds = %_Dynamic_check.succeeded226
  %317 = ptrtoint i8* %309 to i32
  %318 = call i8* @c_fetch_pointer_from_offset(i32 %317)
  %319 = call i1 @c_isTaintedPointerToTaintedMem(i8* %318)
  br i1 %319, label %_Dynamic_check.succeeded230, label %_Dynamic_check.failed229

_Dynamic_check.succeeded230:                      ; preds = %_Dynamic_check.succeeded228
  %call231 = call i32 @json_serialize_string(i8* %312, i8* %315, i8* %318, i64 %310)
  store i32 %call231, i32* %written, align 4
  %320 = load i32, i32* %written, align 4
  %cmp232 = icmp slt i32 %320, 0
  br i1 %cmp232, label %if.then233, label %if.end234

if.then233:                                       ; preds = %_Dynamic_check.succeeded230
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed225:                         ; preds = %if.end224
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed227:                         ; preds = %_Dynamic_check.succeeded226
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed229:                         ; preds = %_Dynamic_check.succeeded228
  call void @llvm.trap() #9
  unreachable

if.end234:                                        ; preds = %_Dynamic_check.succeeded230
  %321 = load i8*, i8** %buf.addr, align 4
  %322 = ptrtoint i8* %321 to i32
  %cmp235 = icmp ne i32 %322, 0
  br i1 %cmp235, label %if.then236, label %if.end239

if.then236:                                       ; preds = %if.end234
  %323 = load i32, i32* %written, align 4
  %324 = load i8*, i8** %buf.addr, align 4
  %idx.ext237 = sext i32 %323 to i64
  %add.ptr238 = getelementptr inbounds i8, i8* %324, i64 %idx.ext237
  %325 = ptrtoint i8* %add.ptr238 to i32
  %326 = bitcast i8** %buf.addr to i32*
  store i32 %325, i32* %326, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then236, %if.end234
  %327 = load i32, i32* %written, align 4
  %328 = load i32, i32* %written_total, align 4
  %add240 = add nsw i32 %328, %327
  store i32 %add240, i32* %written_total, align 4
  br label %do.body241

do.body241:                                       ; preds = %if.end239
  %329 = load i8*, i8** %buf.addr, align 4
  %330 = load i8*, i8** %buf_start.addr, align 4
  %331 = load i64, i64* %buf_len.addr, align 8
  %332 = ptrtoint i8* %329 to i32
  %333 = call i8* @c_fetch_pointer_from_offset(i32 %332)
  %334 = call i1 @c_isTaintedPointerToTaintedMem(i8* %333)
  br i1 %334, label %_Dynamic_check.succeeded243, label %_Dynamic_check.failed242

_Dynamic_check.succeeded243:                      ; preds = %do.body241
  %335 = ptrtoint i8* %330 to i32
  %336 = call i8* @c_fetch_pointer_from_offset(i32 %335)
  %337 = call i1 @c_isTaintedPointerToTaintedMem(i8* %336)
  br i1 %337, label %_Dynamic_check.succeeded245, label %_Dynamic_check.failed244

_Dynamic_check.succeeded245:                      ; preds = %_Dynamic_check.succeeded243
  %call246 = call i32 @append_string(i8* %333, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* %336, i64 %331)
  store i32 %call246, i32* %written, align 4
  %338 = load i32, i32* %written, align 4
  %cmp247 = icmp slt i32 %338, 0
  br i1 %cmp247, label %if.then248, label %if.end249

if.then248:                                       ; preds = %_Dynamic_check.succeeded245
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed242:                         ; preds = %do.body241
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed244:                         ; preds = %_Dynamic_check.succeeded243
  call void @llvm.trap() #9
  unreachable

if.end249:                                        ; preds = %_Dynamic_check.succeeded245
  %339 = load i8*, i8** %buf.addr, align 4
  %340 = ptrtoint i8* %339 to i32
  %cmp250 = icmp ne i32 %340, 0
  br i1 %cmp250, label %if.then251, label %if.end254

if.then251:                                       ; preds = %if.end249
  %341 = load i32, i32* %written, align 4
  %342 = load i8*, i8** %buf.addr, align 4
  %idx.ext252 = sext i32 %341 to i64
  %add.ptr253 = getelementptr inbounds i8, i8* %342, i64 %idx.ext252
  %343 = ptrtoint i8* %add.ptr253 to i32
  %344 = bitcast i8** %buf.addr to i32*
  store i32 %343, i32* %344, align 4
  br label %if.end254

if.end254:                                        ; preds = %if.then251, %if.end249
  %345 = load i32, i32* %written, align 4
  %346 = load i32, i32* %written_total, align 4
  %add255 = add nsw i32 %346, %345
  store i32 %add255, i32* %written_total, align 4
  br label %do.end256

do.end256:                                        ; preds = %if.end254
  %347 = load i32, i32* %is_pretty.addr, align 4
  %tobool257 = icmp ne i32 %347, 0
  br i1 %tobool257, label %if.then258, label %if.end275

if.then258:                                       ; preds = %do.end256
  br label %do.body259

do.body259:                                       ; preds = %if.then258
  %348 = load i8*, i8** %buf.addr, align 4
  %349 = load i8*, i8** %buf_start.addr, align 4
  %350 = load i64, i64* %buf_len.addr, align 8
  %351 = ptrtoint i8* %348 to i32
  %352 = call i8* @c_fetch_pointer_from_offset(i32 %351)
  %353 = call i1 @c_isTaintedPointerToTaintedMem(i8* %352)
  br i1 %353, label %_Dynamic_check.succeeded261, label %_Dynamic_check.failed260

_Dynamic_check.succeeded261:                      ; preds = %do.body259
  %354 = ptrtoint i8* %349 to i32
  %355 = call i8* @c_fetch_pointer_from_offset(i32 %354)
  %356 = call i1 @c_isTaintedPointerToTaintedMem(i8* %355)
  br i1 %356, label %_Dynamic_check.succeeded263, label %_Dynamic_check.failed262

_Dynamic_check.succeeded263:                      ; preds = %_Dynamic_check.succeeded261
  %call264 = call i32 @append_string(i8* %352, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* %355, i64 %350)
  store i32 %call264, i32* %written, align 4
  %357 = load i32, i32* %written, align 4
  %cmp265 = icmp slt i32 %357, 0
  br i1 %cmp265, label %if.then266, label %if.end267

if.then266:                                       ; preds = %_Dynamic_check.succeeded263
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed260:                         ; preds = %do.body259
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed262:                         ; preds = %_Dynamic_check.succeeded261
  call void @llvm.trap() #9
  unreachable

if.end267:                                        ; preds = %_Dynamic_check.succeeded263
  %358 = load i8*, i8** %buf.addr, align 4
  %359 = ptrtoint i8* %358 to i32
  %cmp268 = icmp ne i32 %359, 0
  br i1 %cmp268, label %if.then269, label %if.end272

if.then269:                                       ; preds = %if.end267
  %360 = load i32, i32* %written, align 4
  %361 = load i8*, i8** %buf.addr, align 4
  %idx.ext270 = sext i32 %360 to i64
  %add.ptr271 = getelementptr inbounds i8, i8* %361, i64 %idx.ext270
  %362 = ptrtoint i8* %add.ptr271 to i32
  %363 = bitcast i8** %buf.addr to i32*
  store i32 %362, i32* %363, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then269, %if.end267
  %364 = load i32, i32* %written, align 4
  %365 = load i32, i32* %written_total, align 4
  %add273 = add nsw i32 %365, %364
  store i32 %add273, i32* %written_total, align 4
  br label %do.end274

do.end274:                                        ; preds = %if.end272
  br label %if.end275

if.end275:                                        ; preds = %do.end274, %do.end256
  %366 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object, align 4
  %367 = load i8*, i8** %key, align 4
  %368 = ptrtoint %Tstruct.Spl_json_object_t_t* %366 to i32
  %369 = call i8* @c_fetch_pointer_from_offset(i32 %368)
  %370 = call i1 @c_isTaintedPointerToTaintedMem(i8* %369)
  br i1 %370, label %_Dynamic_check.succeeded277, label %_Dynamic_check.failed276

_Dynamic_check.succeeded277:                      ; preds = %if.end275
  %371 = bitcast i8* %369 to %Tstruct.Spl_json_object_t_t*
  %372 = ptrtoint i8* %367 to i32
  %373 = call i8* @c_fetch_pointer_from_offset(i32 %372)
  %374 = call i1 @c_isTaintedPointerToTaintedMem(i8* %373)
  br i1 %374, label %_Dynamic_check.succeeded279, label %_Dynamic_check.failed278

_Dynamic_check.succeeded279:                      ; preds = %_Dynamic_check.succeeded277
  %call280 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %371, i8* %373)
  %375 = bitcast %Tstruct.Spl_json_value_t_t* %call280 to %Tstruct.json_value_t_t*
  %376 = bitcast %Tstruct.json_value_t_t* %375 to i8*
  %377 = call i32 @c_TPtoO(i8* %376)
  %378 = inttoptr i32 %377 to %Tstruct.json_value_t_t*
  %379 = bitcast %Tstruct.json_value_t_t* %378 to %Tstruct.Spl_json_value_t_t*
  %380 = ptrtoint %Tstruct.Spl_json_value_t_t* %379 to i32
  %381 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %380, i32* %381, align 4
  %382 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %383 = load i8*, i8** %buf.addr, align 4
  %384 = load i32, i32* %level.addr, align 4
  %add281 = add nsw i32 %384, 1
  %385 = load i32, i32* %is_pretty.addr, align 4
  %386 = load i8*, i8** %num_buf.addr, align 4
  %387 = load i8*, i8** %buf_start.addr, align 4
  %388 = load i64, i64* %buf_len.addr, align 8
  %389 = ptrtoint %Tstruct.Spl_json_value_t_t* %382 to i32
  %390 = call i8* @c_fetch_pointer_from_offset(i32 %389)
  %391 = call i1 @c_isTaintedPointerToTaintedMem(i8* %390)
  br i1 %391, label %_Dynamic_check.succeeded283, label %_Dynamic_check.failed282

_Dynamic_check.succeeded283:                      ; preds = %_Dynamic_check.succeeded279
  %392 = bitcast i8* %390 to %Tstruct.Spl_json_value_t_t*
  %393 = ptrtoint i8* %383 to i32
  %394 = call i8* @c_fetch_pointer_from_offset(i32 %393)
  %395 = call i1 @c_isTaintedPointerToTaintedMem(i8* %394)
  br i1 %395, label %_Dynamic_check.succeeded285, label %_Dynamic_check.failed284

_Dynamic_check.succeeded285:                      ; preds = %_Dynamic_check.succeeded283
  %396 = ptrtoint i8* %386 to i32
  %397 = call i8* @c_fetch_pointer_from_offset(i32 %396)
  %398 = call i1 @c_isTaintedPointerToTaintedMem(i8* %397)
  br i1 %398, label %_Dynamic_check.succeeded287, label %_Dynamic_check.failed286

_Dynamic_check.succeeded287:                      ; preds = %_Dynamic_check.succeeded285
  %399 = ptrtoint i8* %387 to i32
  %400 = call i8* @c_fetch_pointer_from_offset(i32 %399)
  %401 = call i1 @c_isTaintedPointerToTaintedMem(i8* %400)
  br i1 %401, label %_Dynamic_check.succeeded289, label %_Dynamic_check.failed288

_Dynamic_check.succeeded289:                      ; preds = %_Dynamic_check.succeeded287
  %call290 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %392, i8* %394, i32 %add281, i32 %385, i8* %397, i8* %400, i64 %388)
  store i32 %call290, i32* %written, align 4
  %402 = load i32, i32* %written, align 4
  %cmp291 = icmp slt i32 %402, 0
  br i1 %cmp291, label %if.then292, label %if.end293

if.then292:                                       ; preds = %_Dynamic_check.succeeded289
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed276:                         ; preds = %if.end275
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed278:                         ; preds = %_Dynamic_check.succeeded277
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed282:                         ; preds = %_Dynamic_check.succeeded279
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed284:                         ; preds = %_Dynamic_check.succeeded283
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed286:                         ; preds = %_Dynamic_check.succeeded285
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed288:                         ; preds = %_Dynamic_check.succeeded287
  call void @llvm.trap() #9
  unreachable

if.end293:                                        ; preds = %_Dynamic_check.succeeded289
  %403 = load i8*, i8** %buf.addr, align 4
  %404 = ptrtoint i8* %403 to i32
  %cmp294 = icmp ne i32 %404, 0
  br i1 %cmp294, label %if.then295, label %if.end298

if.then295:                                       ; preds = %if.end293
  %405 = load i32, i32* %written, align 4
  %406 = load i8*, i8** %buf.addr, align 4
  %idx.ext296 = sext i32 %405 to i64
  %add.ptr297 = getelementptr inbounds i8, i8* %406, i64 %idx.ext296
  %407 = ptrtoint i8* %add.ptr297 to i32
  %408 = bitcast i8** %buf.addr to i32*
  store i32 %407, i32* %408, align 4
  br label %if.end298

if.end298:                                        ; preds = %if.then295, %if.end293
  %409 = load i32, i32* %written, align 4
  %410 = load i32, i32* %written_total, align 4
  %add299 = add nsw i32 %410, %409
  store i32 %add299, i32* %written_total, align 4
  %411 = load i64, i64* %i, align 8
  %412 = load i64, i64* %count, align 8
  %sub300 = sub i64 %412, 1
  %cmp301 = icmp ult i64 %411, %sub300
  br i1 %cmp301, label %if.then302, label %if.end319

if.then302:                                       ; preds = %if.end298
  br label %do.body303

do.body303:                                       ; preds = %if.then302
  %413 = load i8*, i8** %buf.addr, align 4
  %414 = load i8*, i8** %buf_start.addr, align 4
  %415 = load i64, i64* %buf_len.addr, align 8
  %416 = ptrtoint i8* %413 to i32
  %417 = call i8* @c_fetch_pointer_from_offset(i32 %416)
  %418 = call i1 @c_isTaintedPointerToTaintedMem(i8* %417)
  br i1 %418, label %_Dynamic_check.succeeded305, label %_Dynamic_check.failed304

_Dynamic_check.succeeded305:                      ; preds = %do.body303
  %419 = ptrtoint i8* %414 to i32
  %420 = call i8* @c_fetch_pointer_from_offset(i32 %419)
  %421 = call i1 @c_isTaintedPointerToTaintedMem(i8* %420)
  br i1 %421, label %_Dynamic_check.succeeded307, label %_Dynamic_check.failed306

_Dynamic_check.succeeded307:                      ; preds = %_Dynamic_check.succeeded305
  %call308 = call i32 @append_string(i8* %417, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %420, i64 %415)
  store i32 %call308, i32* %written, align 4
  %422 = load i32, i32* %written, align 4
  %cmp309 = icmp slt i32 %422, 0
  br i1 %cmp309, label %if.then310, label %if.end311

if.then310:                                       ; preds = %_Dynamic_check.succeeded307
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed304:                         ; preds = %do.body303
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed306:                         ; preds = %_Dynamic_check.succeeded305
  call void @llvm.trap() #9
  unreachable

if.end311:                                        ; preds = %_Dynamic_check.succeeded307
  %423 = load i8*, i8** %buf.addr, align 4
  %424 = ptrtoint i8* %423 to i32
  %cmp312 = icmp ne i32 %424, 0
  br i1 %cmp312, label %if.then313, label %if.end316

if.then313:                                       ; preds = %if.end311
  %425 = load i32, i32* %written, align 4
  %426 = load i8*, i8** %buf.addr, align 4
  %idx.ext314 = sext i32 %425 to i64
  %add.ptr315 = getelementptr inbounds i8, i8* %426, i64 %idx.ext314
  %427 = ptrtoint i8* %add.ptr315 to i32
  %428 = bitcast i8** %buf.addr to i32*
  store i32 %427, i32* %428, align 4
  br label %if.end316

if.end316:                                        ; preds = %if.then313, %if.end311
  %429 = load i32, i32* %written, align 4
  %430 = load i32, i32* %written_total, align 4
  %add317 = add nsw i32 %430, %429
  store i32 %add317, i32* %written_total, align 4
  br label %do.end318

do.end318:                                        ; preds = %if.end316
  br label %if.end319

if.end319:                                        ; preds = %do.end318, %if.end298
  %431 = load i32, i32* %is_pretty.addr, align 4
  %tobool320 = icmp ne i32 %431, 0
  br i1 %tobool320, label %if.then321, label %if.end338

if.then321:                                       ; preds = %if.end319
  br label %do.body322

do.body322:                                       ; preds = %if.then321
  %432 = load i8*, i8** %buf.addr, align 4
  %433 = load i8*, i8** %buf_start.addr, align 4
  %434 = load i64, i64* %buf_len.addr, align 8
  %435 = ptrtoint i8* %432 to i32
  %436 = call i8* @c_fetch_pointer_from_offset(i32 %435)
  %437 = call i1 @c_isTaintedPointerToTaintedMem(i8* %436)
  br i1 %437, label %_Dynamic_check.succeeded324, label %_Dynamic_check.failed323

_Dynamic_check.succeeded324:                      ; preds = %do.body322
  %438 = ptrtoint i8* %433 to i32
  %439 = call i8* @c_fetch_pointer_from_offset(i32 %438)
  %440 = call i1 @c_isTaintedPointerToTaintedMem(i8* %439)
  br i1 %440, label %_Dynamic_check.succeeded326, label %_Dynamic_check.failed325

_Dynamic_check.succeeded326:                      ; preds = %_Dynamic_check.succeeded324
  %call327 = call i32 @append_string(i8* %436, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %439, i64 %434)
  store i32 %call327, i32* %written, align 4
  %441 = load i32, i32* %written, align 4
  %cmp328 = icmp slt i32 %441, 0
  br i1 %cmp328, label %if.then329, label %if.end330

if.then329:                                       ; preds = %_Dynamic_check.succeeded326
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed323:                         ; preds = %do.body322
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed325:                         ; preds = %_Dynamic_check.succeeded324
  call void @llvm.trap() #9
  unreachable

if.end330:                                        ; preds = %_Dynamic_check.succeeded326
  %442 = load i8*, i8** %buf.addr, align 4
  %443 = ptrtoint i8* %442 to i32
  %cmp331 = icmp ne i32 %443, 0
  br i1 %cmp331, label %if.then332, label %if.end335

if.then332:                                       ; preds = %if.end330
  %444 = load i32, i32* %written, align 4
  %445 = load i8*, i8** %buf.addr, align 4
  %idx.ext333 = sext i32 %444 to i64
  %add.ptr334 = getelementptr inbounds i8, i8* %445, i64 %idx.ext333
  %446 = ptrtoint i8* %add.ptr334 to i32
  %447 = bitcast i8** %buf.addr to i32*
  store i32 %446, i32* %447, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.then332, %if.end330
  %448 = load i32, i32* %written, align 4
  %449 = load i32, i32* %written_total, align 4
  %add336 = add nsw i32 %449, %448
  store i32 %add336, i32* %written_total, align 4
  br label %do.end337

do.end337:                                        ; preds = %if.end335
  br label %if.end338

if.end338:                                        ; preds = %do.end337, %if.end319
  br label %for.inc339

for.inc339:                                       ; preds = %if.end338
  %450 = load i64, i64* %i, align 8
  %inc340 = add i64 %450, 1
  store i64 %inc340, i64* %i, align 8
  br label %for.cond196, !llvm.loop !6

for.end341:                                       ; preds = %for.cond196
  %451 = load i64, i64* %count, align 8
  %cmp342 = icmp ugt i64 %451, 0
  br i1 %cmp342, label %land.lhs.true343, label %if.end362

land.lhs.true343:                                 ; preds = %for.end341
  %452 = load i32, i32* %is_pretty.addr, align 4
  %tobool344 = icmp ne i32 %452, 0
  br i1 %tobool344, label %if.then345, label %if.end362

if.then345:                                       ; preds = %land.lhs.true343
  br label %do.body346

do.body346:                                       ; preds = %if.then345
  %453 = load i8*, i8** %buf.addr, align 4
  %454 = load i32, i32* %level.addr, align 4
  %455 = load i8*, i8** %buf_start.addr, align 4
  %456 = load i64, i64* %buf_len.addr, align 8
  %457 = ptrtoint i8* %453 to i32
  %458 = call i8* @c_fetch_pointer_from_offset(i32 %457)
  %459 = call i1 @c_isTaintedPointerToTaintedMem(i8* %458)
  br i1 %459, label %_Dynamic_check.succeeded348, label %_Dynamic_check.failed347

_Dynamic_check.succeeded348:                      ; preds = %do.body346
  %460 = ptrtoint i8* %455 to i32
  %461 = call i8* @c_fetch_pointer_from_offset(i32 %460)
  %462 = call i1 @c_isTaintedPointerToTaintedMem(i8* %461)
  br i1 %462, label %_Dynamic_check.succeeded350, label %_Dynamic_check.failed349

_Dynamic_check.succeeded350:                      ; preds = %_Dynamic_check.succeeded348
  %call351 = call i32 @append_indent(i8* %458, i32 %454, i8* %461, i64 %456)
  store i32 %call351, i32* %written, align 4
  %463 = load i32, i32* %written, align 4
  %cmp352 = icmp slt i32 %463, 0
  br i1 %cmp352, label %if.then353, label %if.end354

if.then353:                                       ; preds = %_Dynamic_check.succeeded350
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed347:                         ; preds = %do.body346
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed349:                         ; preds = %_Dynamic_check.succeeded348
  call void @llvm.trap() #9
  unreachable

if.end354:                                        ; preds = %_Dynamic_check.succeeded350
  %464 = load i8*, i8** %buf.addr, align 4
  %465 = ptrtoint i8* %464 to i32
  %cmp355 = icmp ne i32 %465, 0
  br i1 %cmp355, label %if.then356, label %if.end359

if.then356:                                       ; preds = %if.end354
  %466 = load i32, i32* %written, align 4
  %467 = load i8*, i8** %buf.addr, align 4
  %idx.ext357 = sext i32 %466 to i64
  %add.ptr358 = getelementptr inbounds i8, i8* %467, i64 %idx.ext357
  %468 = ptrtoint i8* %add.ptr358 to i32
  %469 = bitcast i8** %buf.addr to i32*
  store i32 %468, i32* %469, align 4
  br label %if.end359

if.end359:                                        ; preds = %if.then356, %if.end354
  %470 = load i32, i32* %written, align 4
  %471 = load i32, i32* %written_total, align 4
  %add360 = add nsw i32 %471, %470
  store i32 %add360, i32* %written_total, align 4
  br label %do.end361

do.end361:                                        ; preds = %if.end359
  br label %if.end362

if.end362:                                        ; preds = %do.end361, %land.lhs.true343, %for.end341
  br label %do.body363

do.body363:                                       ; preds = %if.end362
  %472 = load i8*, i8** %buf.addr, align 4
  %473 = load i8*, i8** %buf_start.addr, align 4
  %474 = load i64, i64* %buf_len.addr, align 8
  %475 = ptrtoint i8* %472 to i32
  %476 = call i8* @c_fetch_pointer_from_offset(i32 %475)
  %477 = call i1 @c_isTaintedPointerToTaintedMem(i8* %476)
  br i1 %477, label %_Dynamic_check.succeeded365, label %_Dynamic_check.failed364

_Dynamic_check.succeeded365:                      ; preds = %do.body363
  %478 = ptrtoint i8* %473 to i32
  %479 = call i8* @c_fetch_pointer_from_offset(i32 %478)
  %480 = call i1 @c_isTaintedPointerToTaintedMem(i8* %479)
  br i1 %480, label %_Dynamic_check.succeeded367, label %_Dynamic_check.failed366

_Dynamic_check.succeeded367:                      ; preds = %_Dynamic_check.succeeded365
  %call368 = call i32 @append_string(i8* %476, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* %479, i64 %474)
  store i32 %call368, i32* %written, align 4
  %481 = load i32, i32* %written, align 4
  %cmp369 = icmp slt i32 %481, 0
  br i1 %cmp369, label %if.then370, label %if.end371

if.then370:                                       ; preds = %_Dynamic_check.succeeded367
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed364:                         ; preds = %do.body363
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed366:                         ; preds = %_Dynamic_check.succeeded365
  call void @llvm.trap() #9
  unreachable

if.end371:                                        ; preds = %_Dynamic_check.succeeded367
  %482 = load i8*, i8** %buf.addr, align 4
  %483 = ptrtoint i8* %482 to i32
  %cmp372 = icmp ne i32 %483, 0
  br i1 %cmp372, label %if.then373, label %if.end376

if.then373:                                       ; preds = %if.end371
  %484 = load i32, i32* %written, align 4
  %485 = load i8*, i8** %buf.addr, align 4
  %idx.ext374 = sext i32 %484 to i64
  %add.ptr375 = getelementptr inbounds i8, i8* %485, i64 %idx.ext374
  %486 = ptrtoint i8* %add.ptr375 to i32
  %487 = bitcast i8** %buf.addr to i32*
  store i32 %486, i32* %487, align 4
  br label %if.end376

if.end376:                                        ; preds = %if.then373, %if.end371
  %488 = load i32, i32* %written, align 4
  %489 = load i32, i32* %written_total, align 4
  %add377 = add nsw i32 %489, %488
  store i32 %add377, i32* %written_total, align 4
  br label %do.end378

do.end378:                                        ; preds = %if.end376
  %490 = load i32, i32* %written_total, align 4
  store i32 %490, i32* %retval, align 4
  br label %return

sw.bb379:                                         ; preds = %_Dynamic_check.succeeded
  %491 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %492 = ptrtoint %Tstruct.Spl_json_value_t_t* %491 to i32
  %493 = call i8* @c_fetch_pointer_from_offset(i32 %492)
  %494 = call i1 @c_isTaintedPointerToTaintedMem(i8* %493)
  br i1 %494, label %_Dynamic_check.succeeded381, label %_Dynamic_check.failed380

_Dynamic_check.succeeded381:                      ; preds = %sw.bb379
  %495 = bitcast i8* %493 to %Tstruct.Spl_json_value_t_t*
  %call382 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %495)
  %496 = call i32 @c_TPtoO(i8* %call382)
  %497 = inttoptr i32 %496 to i8*
  %498 = ptrtoint i8* %497 to i32
  %499 = bitcast i8** %string to i32*
  store i32 %498, i32* %499, align 4
  %500 = load i8*, i8** %string, align 4
  %501 = ptrtoint i8* %500 to i32
  %cmp383 = icmp eq i32 %501, 0
  br i1 %cmp383, label %if.then384, label %if.end385

if.then384:                                       ; preds = %_Dynamic_check.succeeded381
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed380:                         ; preds = %sw.bb379
  call void @llvm.trap() #9
  unreachable

if.end385:                                        ; preds = %_Dynamic_check.succeeded381
  %502 = load i8*, i8** %string, align 4
  %503 = load i8*, i8** %buf.addr, align 4
  %504 = load i8*, i8** %buf_start.addr, align 4
  %505 = load i64, i64* %buf_len.addr, align 8
  %506 = ptrtoint i8* %502 to i32
  %507 = call i8* @c_fetch_pointer_from_offset(i32 %506)
  %508 = call i1 @c_isTaintedPointerToTaintedMem(i8* %507)
  br i1 %508, label %_Dynamic_check.succeeded387, label %_Dynamic_check.failed386

_Dynamic_check.succeeded387:                      ; preds = %if.end385
  %509 = ptrtoint i8* %503 to i32
  %510 = call i8* @c_fetch_pointer_from_offset(i32 %509)
  %511 = call i1 @c_isTaintedPointerToTaintedMem(i8* %510)
  br i1 %511, label %_Dynamic_check.succeeded389, label %_Dynamic_check.failed388

_Dynamic_check.succeeded389:                      ; preds = %_Dynamic_check.succeeded387
  %512 = ptrtoint i8* %504 to i32
  %513 = call i8* @c_fetch_pointer_from_offset(i32 %512)
  %514 = call i1 @c_isTaintedPointerToTaintedMem(i8* %513)
  br i1 %514, label %_Dynamic_check.succeeded391, label %_Dynamic_check.failed390

_Dynamic_check.succeeded391:                      ; preds = %_Dynamic_check.succeeded389
  %call392 = call i32 @json_serialize_string(i8* %507, i8* %510, i8* %513, i64 %505)
  store i32 %call392, i32* %written, align 4
  %515 = load i32, i32* %written, align 4
  %cmp393 = icmp slt i32 %515, 0
  br i1 %cmp393, label %if.then394, label %if.end395

if.then394:                                       ; preds = %_Dynamic_check.succeeded391
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed386:                         ; preds = %if.end385
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed388:                         ; preds = %_Dynamic_check.succeeded387
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed390:                         ; preds = %_Dynamic_check.succeeded389
  call void @llvm.trap() #9
  unreachable

if.end395:                                        ; preds = %_Dynamic_check.succeeded391
  %516 = load i8*, i8** %buf.addr, align 4
  %517 = ptrtoint i8* %516 to i32
  %cmp396 = icmp ne i32 %517, 0
  br i1 %cmp396, label %if.then397, label %if.end400

if.then397:                                       ; preds = %if.end395
  %518 = load i32, i32* %written, align 4
  %519 = load i8*, i8** %buf.addr, align 4
  %idx.ext398 = sext i32 %518 to i64
  %add.ptr399 = getelementptr inbounds i8, i8* %519, i64 %idx.ext398
  %520 = ptrtoint i8* %add.ptr399 to i32
  %521 = bitcast i8** %buf.addr to i32*
  store i32 %520, i32* %521, align 4
  br label %if.end400

if.end400:                                        ; preds = %if.then397, %if.end395
  %522 = load i32, i32* %written, align 4
  %523 = load i32, i32* %written_total, align 4
  %add401 = add nsw i32 %523, %522
  store i32 %add401, i32* %written_total, align 4
  %524 = load i32, i32* %written_total, align 4
  store i32 %524, i32* %retval, align 4
  br label %return

sw.bb402:                                         ; preds = %_Dynamic_check.succeeded
  %525 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %526 = ptrtoint %Tstruct.Spl_json_value_t_t* %525 to i32
  %527 = call i8* @c_fetch_pointer_from_offset(i32 %526)
  %528 = call i1 @c_isTaintedPointerToTaintedMem(i8* %527)
  br i1 %528, label %_Dynamic_check.succeeded404, label %_Dynamic_check.failed403

_Dynamic_check.succeeded404:                      ; preds = %sw.bb402
  %529 = bitcast i8* %527 to %Tstruct.Spl_json_value_t_t*
  %call405 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %529)
  %tobool406 = icmp ne i32 %call405, 0
  br i1 %tobool406, label %if.then407, label %if.else

if.then407:                                       ; preds = %_Dynamic_check.succeeded404
  br label %do.body408

do.body408:                                       ; preds = %if.then407
  %530 = load i8*, i8** %buf.addr, align 4
  %531 = load i8*, i8** %buf_start.addr, align 4
  %532 = load i64, i64* %buf_len.addr, align 8
  %533 = ptrtoint i8* %530 to i32
  %534 = call i8* @c_fetch_pointer_from_offset(i32 %533)
  %535 = call i1 @c_isTaintedPointerToTaintedMem(i8* %534)
  br i1 %535, label %_Dynamic_check.succeeded410, label %_Dynamic_check.failed409

_Dynamic_check.succeeded410:                      ; preds = %do.body408
  %536 = ptrtoint i8* %531 to i32
  %537 = call i8* @c_fetch_pointer_from_offset(i32 %536)
  %538 = call i1 @c_isTaintedPointerToTaintedMem(i8* %537)
  br i1 %538, label %_Dynamic_check.succeeded412, label %_Dynamic_check.failed411

_Dynamic_check.succeeded412:                      ; preds = %_Dynamic_check.succeeded410
  %call413 = call i32 @append_string(i8* %534, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* %537, i64 %532)
  store i32 %call413, i32* %written, align 4
  %539 = load i32, i32* %written, align 4
  %cmp414 = icmp slt i32 %539, 0
  br i1 %cmp414, label %if.then415, label %if.end416

if.then415:                                       ; preds = %_Dynamic_check.succeeded412
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed403:                         ; preds = %sw.bb402
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed409:                         ; preds = %do.body408
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed411:                         ; preds = %_Dynamic_check.succeeded410
  call void @llvm.trap() #9
  unreachable

if.end416:                                        ; preds = %_Dynamic_check.succeeded412
  %540 = load i8*, i8** %buf.addr, align 4
  %541 = ptrtoint i8* %540 to i32
  %cmp417 = icmp ne i32 %541, 0
  br i1 %cmp417, label %if.then418, label %if.end421

if.then418:                                       ; preds = %if.end416
  %542 = load i32, i32* %written, align 4
  %543 = load i8*, i8** %buf.addr, align 4
  %idx.ext419 = sext i32 %542 to i64
  %add.ptr420 = getelementptr inbounds i8, i8* %543, i64 %idx.ext419
  %544 = ptrtoint i8* %add.ptr420 to i32
  %545 = bitcast i8** %buf.addr to i32*
  store i32 %544, i32* %545, align 4
  br label %if.end421

if.end421:                                        ; preds = %if.then418, %if.end416
  %546 = load i32, i32* %written, align 4
  %547 = load i32, i32* %written_total, align 4
  %add422 = add nsw i32 %547, %546
  store i32 %add422, i32* %written_total, align 4
  br label %do.end423

do.end423:                                        ; preds = %if.end421
  br label %if.end440

if.else:                                          ; preds = %_Dynamic_check.succeeded404
  br label %do.body424

do.body424:                                       ; preds = %if.else
  %548 = load i8*, i8** %buf.addr, align 4
  %549 = load i8*, i8** %buf_start.addr, align 4
  %550 = load i64, i64* %buf_len.addr, align 8
  %551 = ptrtoint i8* %548 to i32
  %552 = call i8* @c_fetch_pointer_from_offset(i32 %551)
  %553 = call i1 @c_isTaintedPointerToTaintedMem(i8* %552)
  br i1 %553, label %_Dynamic_check.succeeded426, label %_Dynamic_check.failed425

_Dynamic_check.succeeded426:                      ; preds = %do.body424
  %554 = ptrtoint i8* %549 to i32
  %555 = call i8* @c_fetch_pointer_from_offset(i32 %554)
  %556 = call i1 @c_isTaintedPointerToTaintedMem(i8* %555)
  br i1 %556, label %_Dynamic_check.succeeded428, label %_Dynamic_check.failed427

_Dynamic_check.succeeded428:                      ; preds = %_Dynamic_check.succeeded426
  %call429 = call i32 @append_string(i8* %552, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* %555, i64 %550)
  store i32 %call429, i32* %written, align 4
  %557 = load i32, i32* %written, align 4
  %cmp430 = icmp slt i32 %557, 0
  br i1 %cmp430, label %if.then431, label %if.end432

if.then431:                                       ; preds = %_Dynamic_check.succeeded428
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed425:                         ; preds = %do.body424
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed427:                         ; preds = %_Dynamic_check.succeeded426
  call void @llvm.trap() #9
  unreachable

if.end432:                                        ; preds = %_Dynamic_check.succeeded428
  %558 = load i8*, i8** %buf.addr, align 4
  %559 = ptrtoint i8* %558 to i32
  %cmp433 = icmp ne i32 %559, 0
  br i1 %cmp433, label %if.then434, label %if.end437

if.then434:                                       ; preds = %if.end432
  %560 = load i32, i32* %written, align 4
  %561 = load i8*, i8** %buf.addr, align 4
  %idx.ext435 = sext i32 %560 to i64
  %add.ptr436 = getelementptr inbounds i8, i8* %561, i64 %idx.ext435
  %562 = ptrtoint i8* %add.ptr436 to i32
  %563 = bitcast i8** %buf.addr to i32*
  store i32 %562, i32* %563, align 4
  br label %if.end437

if.end437:                                        ; preds = %if.then434, %if.end432
  %564 = load i32, i32* %written, align 4
  %565 = load i32, i32* %written_total, align 4
  %add438 = add nsw i32 %565, %564
  store i32 %add438, i32* %written_total, align 4
  br label %do.end439

do.end439:                                        ; preds = %if.end437
  br label %if.end440

if.end440:                                        ; preds = %do.end439, %do.end423
  %566 = load i32, i32* %written_total, align 4
  store i32 %566, i32* %retval, align 4
  br label %return

sw.bb441:                                         ; preds = %_Dynamic_check.succeeded
  %567 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %568 = ptrtoint %Tstruct.Spl_json_value_t_t* %567 to i32
  %569 = call i8* @c_fetch_pointer_from_offset(i32 %568)
  %570 = call i1 @c_isTaintedPointerToTaintedMem(i8* %569)
  br i1 %570, label %_Dynamic_check.succeeded443, label %_Dynamic_check.failed442

_Dynamic_check.succeeded443:                      ; preds = %sw.bb441
  %571 = bitcast i8* %569 to %Tstruct.Spl_json_value_t_t*
  %call444 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %571)
  store double %call444, double* %num, align 8
  %572 = load i8*, i8** %buf.addr, align 4
  %573 = ptrtoint i8* %572 to i32
  %cmp445 = icmp ne i32 %573, 0
  br i1 %cmp445, label %if.then446, label %if.end447

if.then446:                                       ; preds = %_Dynamic_check.succeeded443
  %574 = load i8*, i8** %buf.addr, align 4
  %575 = ptrtoint i8* %574 to i32
  %576 = bitcast i8** %temp_buf to i32*
  store i32 %575, i32* %576, align 4
  %577 = load i8*, i8** %temp_buf, align 4
  %578 = ptrtoint i8* %577 to i32
  %579 = bitcast i8** %num_buf.addr to i32*
  store i32 %578, i32* %579, align 4
  br label %if.end447

_Dynamic_check.failed442:                         ; preds = %sw.bb441
  call void @llvm.trap() #9
  unreachable

if.end447:                                        ; preds = %if.then446, %_Dynamic_check.succeeded443
  %580 = load i8*, i8** %num_buf.addr, align 4
  %581 = load double, double* %num, align 8
  %582 = ptrtoint i8* %580 to i32
  %583 = call i8* @c_fetch_pointer_from_offset(i32 %582)
  %584 = call i1 @c_isTaintedPointerToTaintedMem(i8* %583)
  br i1 %584, label %_Dynamic_check.succeeded449, label %_Dynamic_check.failed448

_Dynamic_check.succeeded449:                      ; preds = %if.end447
  %call450 = call i32 (i8*, i8*, ...) @t_sprintf(i8* %583, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), double %581)
  store i32 %call450, i32* %written, align 4
  %585 = load i32, i32* %written, align 4
  %cmp451 = icmp slt i32 %585, 0
  br i1 %cmp451, label %if.then452, label %if.end453

if.then452:                                       ; preds = %_Dynamic_check.succeeded449
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed448:                         ; preds = %if.end447
  call void @llvm.trap() #9
  unreachable

if.end453:                                        ; preds = %_Dynamic_check.succeeded449
  %586 = load i8*, i8** %buf.addr, align 4
  %587 = ptrtoint i8* %586 to i32
  %cmp454 = icmp ne i32 %587, 0
  br i1 %cmp454, label %if.then455, label %if.end458

if.then455:                                       ; preds = %if.end453
  %588 = load i32, i32* %written, align 4
  %589 = load i8*, i8** %buf.addr, align 4
  %idx.ext456 = sext i32 %588 to i64
  %add.ptr457 = getelementptr inbounds i8, i8* %589, i64 %idx.ext456
  %590 = ptrtoint i8* %add.ptr457 to i32
  %591 = bitcast i8** %buf.addr to i32*
  store i32 %590, i32* %591, align 4
  br label %if.end458

if.end458:                                        ; preds = %if.then455, %if.end453
  %592 = load i32, i32* %written, align 4
  %593 = load i32, i32* %written_total, align 4
  %add459 = add nsw i32 %593, %592
  store i32 %add459, i32* %written_total, align 4
  %594 = load i32, i32* %written_total, align 4
  store i32 %594, i32* %retval, align 4
  br label %return

sw.bb460:                                         ; preds = %_Dynamic_check.succeeded
  br label %do.body461

do.body461:                                       ; preds = %sw.bb460
  %595 = load i8*, i8** %buf.addr, align 4
  %596 = load i8*, i8** %buf_start.addr, align 4
  %597 = load i64, i64* %buf_len.addr, align 8
  %598 = ptrtoint i8* %595 to i32
  %599 = call i8* @c_fetch_pointer_from_offset(i32 %598)
  %600 = call i1 @c_isTaintedPointerToTaintedMem(i8* %599)
  br i1 %600, label %_Dynamic_check.succeeded463, label %_Dynamic_check.failed462

_Dynamic_check.succeeded463:                      ; preds = %do.body461
  %601 = ptrtoint i8* %596 to i32
  %602 = call i8* @c_fetch_pointer_from_offset(i32 %601)
  %603 = call i1 @c_isTaintedPointerToTaintedMem(i8* %602)
  br i1 %603, label %_Dynamic_check.succeeded465, label %_Dynamic_check.failed464

_Dynamic_check.succeeded465:                      ; preds = %_Dynamic_check.succeeded463
  %call466 = call i32 @append_string(i8* %599, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %602, i64 %597)
  store i32 %call466, i32* %written, align 4
  %604 = load i32, i32* %written, align 4
  %cmp467 = icmp slt i32 %604, 0
  br i1 %cmp467, label %if.then468, label %if.end469

if.then468:                                       ; preds = %_Dynamic_check.succeeded465
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed462:                         ; preds = %do.body461
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed464:                         ; preds = %_Dynamic_check.succeeded463
  call void @llvm.trap() #9
  unreachable

if.end469:                                        ; preds = %_Dynamic_check.succeeded465
  %605 = load i8*, i8** %buf.addr, align 4
  %606 = ptrtoint i8* %605 to i32
  %cmp470 = icmp ne i32 %606, 0
  br i1 %cmp470, label %if.then471, label %if.end474

if.then471:                                       ; preds = %if.end469
  %607 = load i32, i32* %written, align 4
  %608 = load i8*, i8** %buf.addr, align 4
  %idx.ext472 = sext i32 %607 to i64
  %add.ptr473 = getelementptr inbounds i8, i8* %608, i64 %idx.ext472
  %609 = ptrtoint i8* %add.ptr473 to i32
  %610 = bitcast i8** %buf.addr to i32*
  store i32 %609, i32* %610, align 4
  br label %if.end474

if.end474:                                        ; preds = %if.then471, %if.end469
  %611 = load i32, i32* %written, align 4
  %612 = load i32, i32* %written_total, align 4
  %add475 = add nsw i32 %612, %611
  store i32 %add475, i32* %written_total, align 4
  br label %do.end476

do.end476:                                        ; preds = %if.end474
  %613 = load i32, i32* %written_total, align 4
  store i32 %613, i32* %retval, align 4
  br label %return

sw.bb477:                                         ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb477, %do.end476, %if.then468, %if.end458, %if.then452, %if.end440, %if.then431, %if.then415, %if.end400, %if.then394, %if.then384, %do.end378, %if.then370, %if.then353, %if.then329, %if.then310, %if.then292, %if.then266, %if.then248, %if.then233, %if.then215, %if.then203, %if.then186, %if.then166, %do.end151, %if.then143, %if.then126, %if.then105, %if.then86, %if.then69, %if.then45, %if.then24, %if.then
  %614 = load i32, i32* %retval, align 4
  ret i32 %614
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
  %0 = ptrtoint i8* %buf to i32
  %1 = bitcast i8** %buf.addr to i32*
  store i32 %0, i32* %1, align 4
  store i8* %string, i8** %string.addr, align 8
  %2 = ptrtoint i8* %buf_start to i32
  %3 = bitcast i8** %buf_start.addr to i32*
  store i32 %2, i32* %3, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  %4 = load i8*, i8** %string.addr, align 8
  %5 = ptrtoint i8* %4 to i64
  %6 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %5)
  %call = call i64 @strlen(i8* %6) #10
  store i64 %call, i64* %len, align 8
  %7 = load i8*, i8** %buf.addr, align 4
  %8 = ptrtoint i8* %7 to i32
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load i64, i64* %len, align 8
  %conv = trunc i64 %9 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i8* null, i8** %boundedString, align 8
  %10 = load i8*, i8** %string.addr, align 8
  store i8* %10, i8** %boundedString, align 8
  %11 = load i64, i64* %len, align 8
  %mul = mul i64 %11, 1
  %call1 = call i8* @parson_string_tainted_malloc(i64 %mul)
  %12 = call i32 @c_TPtoO(i8* %call1)
  %13 = inttoptr i32 %12 to i8*
  %14 = ptrtoint i8* %13 to i32
  %15 = bitcast i8** %tainted_bounded_string to i32*
  store i32 %14, i32* %15, align 4
  %16 = load i8*, i8** %tainted_bounded_string, align 4
  %17 = load i8*, i8** %string.addr, align 8
  %18 = load i64, i64* %len, align 8
  %19 = ptrtoint i8* %16 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %22 = ptrtoint i8* %17 to i64
  %23 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %22)
  %call2 = call i8* @t_strncpy(i8* %20, i8* %23, i64 %18)
  %24 = call i32 @c_TPtoO(i8* %call2)
  %25 = inttoptr i32 %24 to i8*
  %26 = load i8*, i8** %buf.addr, align 4
  %27 = load i8*, i8** %buf_start.addr, align 4
  %28 = ptrtoint i8* %26 to i32
  %29 = ptrtoint i8* %27 to i32
  %cmp3 = icmp uge i32 %28, %29
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %_Dynamic_check.succeeded
  %30 = load i8*, i8** %buf.addr, align 4
  %31 = load i64, i64* %len, align 8
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %31
  %32 = load i8*, i8** %buf_start.addr, align 4
  %33 = load i64, i64* %buf_len.addr, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %32, i64 %33
  %34 = ptrtoint i8* %add.ptr to i32
  %35 = ptrtoint i8* %add.ptr5 to i32
  %cmp6 = icmp ult i32 %34, %35
  br label %land.end

land.end:                                         ; preds = %land.rhs, %_Dynamic_check.succeeded
  %36 = phi i1 [ false, %_Dynamic_check.succeeded ], [ %cmp6, %land.rhs ]
  br i1 %36, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %land.end
  %37 = load i8*, i8** %buf.addr, align 4
  %38 = call i32 @c_TPtoO(i8* %37)
  %39 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %38, %39
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded9
  %40 = load i8*, i8** %buf_start.addr, align 4
  %41 = load i8*, i8** %buf_start.addr, align 4
  %42 = load i64, i64* %buf_len.addr, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %41, i64 %42
  %43 = load i64, i64* %len, align 8
  %add.ptr11 = getelementptr inbounds i8, i8* %37, i64 %43
  %44 = call i32 @c_TPtoO(i8* %40)
  %45 = inttoptr i32 %44 to i8*
  %46 = call i32 @c_TPtoO(i8* %37)
  %47 = inttoptr i32 %46 to i8*
  %48 = call i32 @c_TPtoO(i8* %45)
  %49 = call i32 @c_TPtoO(i8* %47)
  %_Dynamic_check.lower = icmp ule i32 %48, %49
  %50 = call i32 @c_TPtoO(i8* %add.ptr11)
  %51 = inttoptr i32 %50 to i8*
  %52 = call i32 @c_TPtoO(i8* %add.ptr10)
  %53 = inttoptr i32 %52 to i8*
  %54 = call i32 @c_TPtoO(i8* %51)
  %55 = call i32 @c_TPtoO(i8* %53)
  %_Dynamic_check.upper = icmp ule i32 %54, %55
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed12

_Dynamic_check.success:                           ; preds = %_Dynamic_check.subsumption, %_Dynamic_check.succeeded9
  %56 = ptrtoint i8* %37 to i32
  %57 = bitcast i8** %buf_tmp to i32*
  store i32 %56, i32* %57, align 4
  %58 = load i8*, i8** %buf_tmp, align 4
  %59 = load i8*, i8** %tainted_bounded_string, align 4
  %60 = load i64, i64* %len, align 8
  %61 = ptrtoint i8* %58 to i32
  %62 = call i8* @c_fetch_pointer_from_offset(i32 %61)
  %63 = call i1 @c_isTaintedPointerToTaintedMem(i8* %62)
  br i1 %63, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.success
  %64 = ptrtoint i8* %59 to i32
  %65 = call i8* @c_fetch_pointer_from_offset(i32 %64)
  %66 = call i1 @c_isTaintedPointerToTaintedMem(i8* %65)
  br i1 %66, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded14
  %call17 = call i8* @t_memcpy(i8* %62, i8* %65, i64 %60)
  %67 = call i32 @c_TPtoO(i8* %call17)
  %68 = inttoptr i32 %67 to i8*
  %69 = load i8*, i8** %buf.addr, align 4
  %70 = load i64, i64* %len, align 8
  %71 = ptrtoint i8* %69 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.succeeded16
  %arrayidx = getelementptr inbounds i8, i8* %72, i64 %70
  %74 = call i32 @c_TPtoO(i8* %arrayidx)
  %75 = inttoptr i32 %74 to i8*
  %76 = load i8*, i8** %buf_start.addr, align 4
  %77 = load i8*, i8** %buf_start.addr, align 4
  %78 = load i64, i64* %buf_len.addr, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %77, i64 %78
  %79 = call i32 @c_TPtoO(i8* %add.ptr20)
  %80 = inttoptr i32 %79 to i8*
  %81 = call i32 @c_TPtoO(i8* %76)
  %82 = inttoptr i32 %81 to i8*
  %83 = call i32 @c_TPtoO(i8* %82)
  %84 = call i32 @c_TPtoO(i8* %75)
  %_Dynamic_check.lower21 = icmp ule i32 %83, %84
  %85 = call i32 @c_TPtoO(i8* %75)
  %86 = call i32 @c_TPtoO(i8* %80)
  %_Dynamic_check.upper22 = icmp ult i32 %85, %86
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower21, %_Dynamic_check.upper22
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded19
  store i8 0, i8* %arrayidx, align 1
  %87 = load i64, i64* %len, align 8
  %conv25 = trunc i64 %87 to i32
  store i32 %conv25, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %land.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded19
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded24, %if.then
  %88 = load i32, i32* %retval, align 4
  ret i32 %88
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
  %0 = ptrtoint i8* %buf to i32
  %1 = bitcast i8** %buf.addr to i32*
  store i32 %0, i32* %1, align 4
  store i32 %level, i32* %level.addr, align 4
  %2 = ptrtoint i8* %buf_start to i32
  %3 = bitcast i8** %buf_start.addr to i32*
  store i32 %2, i32* %3, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  store i32 -1, i32* %written, align 4
  store i32 0, i32* %written_total, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %level.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load i8*, i8** %buf.addr, align 4
  %7 = load i8*, i8** %buf_start.addr, align 4
  %8 = load i64, i64* %buf_len.addr, align 8
  %9 = ptrtoint i8* %6 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %do.body
  %12 = ptrtoint i8* %7 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call i32 @append_string(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* %13, i64 %8)
  store i32 %call, i32* %written, align 4
  %15 = load i32, i32* %written, align 4
  %cmp3 = icmp slt i32 %15, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %do.body
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded2
  %16 = load i8*, i8** %buf.addr, align 4
  %17 = ptrtoint i8* %16 to i32
  %cmp4 = icmp ne i32 %17, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %18 = load i32, i32* %written, align 4
  %19 = load i8*, i8** %buf.addr, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 %idx.ext
  %20 = ptrtoint i8* %add.ptr to i32
  %21 = bitcast i8** %buf.addr to i32*
  store i32 %20, i32* %21, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %22 = load i32, i32* %written, align 4
  %23 = load i32, i32* %written_total, align 4
  %add = add nsw i32 %23, %22
  store i32 %add, i32* %written_total, align 4
  br label %do.end

do.end:                                           ; preds = %if.end6
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !7

for.end:                                          ; preds = %for.cond
  %25 = load i32, i32* %written_total, align 4
  store i32 %25, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %26 = load i32, i32* %retval, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_serialize_string(i8* %str_unbounded, i8* %buf, i8* %buf_start, i64 %buf_len) #0 {
entry:
  %str_unbounded.addr = alloca i8*, align 4
  %buf.addr = alloca i8*, align 4
  %buf_start.addr = alloca i8*, align 4
  %buf_len.addr = alloca i64, align 8
  %0 = ptrtoint i8* %str_unbounded to i32
  %1 = bitcast i8** %str_unbounded.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = ptrtoint i8* %buf to i32
  %3 = bitcast i8** %buf.addr to i32*
  store i32 %2, i32* %3, align 4
  %4 = ptrtoint i8* %buf_start to i32
  %5 = bitcast i8** %buf_start.addr to i32*
  store i32 %4, i32* %5, align 4
  store i64 %buf_len, i64* %buf_len.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %6 = load i8*, i8** %str_unbounded.addr, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = load i8*, i8** %buf.addr, align 4
  %9 = ptrtoint i8* %8 to i32
  %10 = load i8*, i8** %buf_start.addr, align 4
  %11 = ptrtoint i8* %10 to i32
  %12 = load i64, i64* %buf_len.addr, align 8
  %13 = ptrtoint i8* %call to i64
  %14 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %13)
  %call1 = call i64 @w2c_json_serialize_string(i8* %14, i32 %7, i32 %9, i32 %11, i64 %12)
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
  %1 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 0, i32* %1, align 4
  %2 = load i8*, i8** %file_contents, align 8
  %3 = call i32 @c_TPtoO(i8* %2)
  %4 = call i32 @c_TPtoO(i8* null)
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %5 = bitcast i8** %Tainted_file_contents to i32*
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %file_contents, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %7)
  %call1 = call i64 @strlen(i8* %8) #10
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %9 = load i32, i32* %len, align 4
  %conv2 = sext i32 %9 to i64
  %mul = mul i64 %conv2, 1
  %call3 = call i8* @parson_string_tainted_malloc(i64 %mul)
  %10 = call i32 @c_TPtoO(i8* %call3)
  %11 = inttoptr i32 %10 to i8*
  %12 = ptrtoint i8* %11 to i32
  %13 = bitcast i8** %Tainted_file_contents to i32*
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %Tainted_file_contents, align 4
  %15 = load i8*, i8** %file_contents, align 8
  %16 = ptrtoint i8* %14 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %19 = ptrtoint i8* %15 to i64
  %20 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %19)
  %call4 = call i8* @tc_strcpy(i8* %17, i8* %20)
  %21 = call i32 @c_TPtoO(i8* %call4)
  %22 = inttoptr i32 %21 to i8*
  %23 = load i8*, i8** %Tainted_file_contents, align 4
  %24 = ptrtoint i8* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded
  %call7 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_parse_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %25)
  %27 = bitcast %Tstruct.Spl_json_value_t_t* %call7 to %Tstruct.json_value_t_t*
  %28 = bitcast %Tstruct.json_value_t_t* %27 to i8*
  %29 = call i32 @c_TPtoO(i8* %28)
  %30 = inttoptr i32 %29 to %Tstruct.json_value_t_t*
  %31 = bitcast %Tstruct.json_value_t_t* %30 to %Tstruct.Spl_json_value_t_t*
  %32 = ptrtoint %Tstruct.Spl_json_value_t_t* %31 to i32
  %33 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 %32, i32* %33, align 4
  %34 = load i8*, i8** %Tainted_file_contents, align 4
  %35 = call i32 @c_TPtoO(i8* %34)
  %36 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %35, %36
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded6
  %37 = load i8*, i8** %Tainted_file_contents, align 4
  %38 = load i8*, i8** %Tainted_file_contents, align 4
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 0
  %39 = call i32 @c_TPtoO(i8* %34)
  %40 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %39, %40
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.subsumption
  %add.ptr10 = getelementptr inbounds i8, i8* %34, i64 0
  %41 = call i32 @c_TPtoO(i8* %37)
  %42 = inttoptr i32 %41 to i8*
  %43 = call i32 @c_TPtoO(i8* %34)
  %44 = inttoptr i32 %43 to i8*
  %45 = call i32 @c_TPtoO(i8* %42)
  %46 = call i32 @c_TPtoO(i8* %44)
  %_Dynamic_check.lower = icmp ule i32 %45, %46
  %47 = call i32 @c_TPtoO(i8* %add.ptr10)
  %48 = inttoptr i32 %47 to i8*
  %49 = call i32 @c_TPtoO(i8* %add.ptr)
  %50 = inttoptr i32 %49 to i8*
  %51 = call i32 @c_TPtoO(i8* %48)
  %52 = call i32 @c_TPtoO(i8* %50)
  %_Dynamic_check.upper = icmp ule i32 %51, %52
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed11

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded9, %_Dynamic_check.succeeded6
  %53 = ptrtoint i8* %34 to i32
  %54 = call i8* @c_fetch_pointer_from_offset(i32 %53)
  %55 = call i1 @c_isTaintedPointerToTaintedMem(i8* %54)
  br i1 %55, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.success
  call void @t_free(i8* %54)
  %56 = load i8*, i8** %file_contents, align 8
  %57 = call i32 @c_TPtoO(i8* %56)
  %58 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null14 = icmp eq i32 %57, %58
  br i1 %_Dynamic_check.is_null14, label %_Dynamic_check.success28, label %_Dynamic_check.subsumption15

_Dynamic_check.subsumption15:                     ; preds = %_Dynamic_check.succeeded13
  %59 = load i8*, i8** %file_contents, align 8
  %60 = load i8*, i8** %file_contents, align 8
  %61 = call i32 @c_TPtoO(i8* %60)
  %62 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null16 = icmp ne i32 %61, %62
  br i1 %_Dynamic_check.non_null16, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.subsumption15
  %add.ptr19 = getelementptr inbounds i8, i8* %60, i64 0
  %63 = call i32 @c_TPtoO(i8* %56)
  %64 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null20 = icmp ne i32 %63, %64
  br i1 %_Dynamic_check.non_null20, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded18
  %add.ptr23 = getelementptr inbounds i8, i8* %56, i64 0
  %65 = call i32 @c_TPtoO(i8* %59)
  %66 = inttoptr i32 %65 to i8*
  %67 = call i32 @c_TPtoO(i8* %56)
  %68 = inttoptr i32 %67 to i8*
  %69 = call i32 @c_TPtoO(i8* %66)
  %70 = call i32 @c_TPtoO(i8* %68)
  %_Dynamic_check.lower24 = icmp ule i32 %69, %70
  %71 = call i32 @c_TPtoO(i8* %add.ptr23)
  %72 = inttoptr i32 %71 to i8*
  %73 = call i32 @c_TPtoO(i8* %add.ptr19)
  %74 = inttoptr i32 %73 to i8*
  %75 = call i32 @c_TPtoO(i8* %72)
  %76 = call i32 @c_TPtoO(i8* %74)
  %_Dynamic_check.upper25 = icmp ule i32 %75, %76
  %_Dynamic_check.cast26 = and i1 %_Dynamic_check.lower24, %_Dynamic_check.upper25
  br i1 %_Dynamic_check.cast26, label %_Dynamic_check.success28, label %_Dynamic_check.failed27

_Dynamic_check.success28:                         ; preds = %_Dynamic_check.succeeded22, %_Dynamic_check.succeeded13
  call void @free(i8* %56) #11
  %77 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %77, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded9
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.subsumption15
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.success28, %if.then
  %78 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %78
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
  %call = call i32* @__errno_location() #12
  store i32 0, i32* %call, align 4
  %0 = load i8*, i8** %filename.addr, align 8
  %call1 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  store i64 0, i64* %size_to_read, align 8
  store i64 0, i64* %size_read, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i32 @fseek(%struct._IO_FILE* %2, i64 0, i32 2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i64 @ftell(%struct._IO_FILE* %3)
  store i64 %call3, i64* %pos, align 8
  %4 = load i64, i64* %pos, align 8
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 @fclose(%struct._IO_FILE* %5)
  store i8* null, i8** %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %6 = load i64, i64* %pos, align 8
  store i64 %6, i64* %size_to_read, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @rewind(%struct._IO_FILE* %7)
  %8 = load i64, i64* %size_to_read, align 8
  %mul = mul i64 1, %8
  %call7 = call i8* @parson_string_malloc(i64 %mul)
  store i8* %call7, i8** %file_contents, align 8
  %9 = load i8*, i8** %file_contents, align 8
  %10 = call i32 @c_TPtoO(i8* %9)
  %11 = call i32 @c_TPtoO(i8* null)
  %tobool8 = icmp ne i32 %10, %11
  br i1 %tobool8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call10 = call i32 @fclose(%struct._IO_FILE* %12)
  store i8* null, i8** %retval, align 8
  br label %return

if.end11:                                         ; preds = %if.end6
  %13 = load i8*, i8** %file_contents, align 8
  %14 = load i64, i64* %size_to_read, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i64 @fread(i8* %13, i64 1, i64 %14, %struct._IO_FILE* %15)
  store i64 %call12, i64* %size_read, align 8
  %16 = load i64, i64* %size_read, align 8
  %cmp13 = icmp eq i64 %16, 0
  br i1 %cmp13, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i32 @ferror(%struct._IO_FILE* %17) #11
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %lor.lhs.false, %if.end11
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call17 = call i32 @fclose(%struct._IO_FILE* %18)
  store i8* null, i8** %retval, align 8
  br label %return

if.end18:                                         ; preds = %lor.lhs.false
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i32 @fclose(%struct._IO_FILE* %19)
  %20 = load i8*, i8** %file_contents, align 8
  %21 = load i64, i64* %size_read, align 8
  %22 = call i32 @c_TPtoO(i8* %20)
  %23 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %22, %23
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end18
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 %21
  %24 = call i32 @c_TPtoO(i8* %arrayidx)
  %25 = inttoptr i32 %24 to i8*
  %26 = load i8*, i8** %file_contents, align 8
  %27 = load i8*, i8** %file_contents, align 8
  %28 = load i64, i64* %size_to_read, align 8
  %mul20 = mul i64 1, %28
  %29 = call i32 @c_TPtoO(i8* %27)
  %30 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null21 = icmp ne i32 %29, %30
  br i1 %_Dynamic_check.non_null21, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %mul20
  %31 = call i32 @c_TPtoO(i8* %add.ptr)
  %32 = inttoptr i32 %31 to i8*
  %33 = call i32 @c_TPtoO(i8* %26)
  %34 = inttoptr i32 %33 to i8*
  %35 = call i32 @c_TPtoO(i8* %34)
  %36 = call i32 @c_TPtoO(i8* %25)
  %_Dynamic_check.lower = icmp ule i32 %35, %36
  %37 = call i32 @c_TPtoO(i8* %25)
  %38 = call i32 @c_TPtoO(i8* %32)
  %_Dynamic_check.upper = icmp ult i32 %37, %38
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded25, label %_Nullterm_range_check.failed

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded23, %_Nullterm_range_check.failed
  store i8 0, i8* %arrayidx, align 1
  %39 = load i8*, i8** %file_contents, align 8
  store i8* %39, i8** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end18
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Nullterm_range_check.failed:                     ; preds = %_Dynamic_check.succeeded23
  %40 = call i32 @c_TPtoO(i8* %25)
  %41 = call i32 @c_TPtoO(i8* %32)
  %_Dynamic_check.at_upper = icmp eq i32 %40, %41
  %_Dynamic_check.nt_upper_bound = and i1 %_Dynamic_check.lower, %_Dynamic_check.at_upper
  br i1 %_Dynamic_check.nt_upper_bound, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.failed24:                          ; preds = %_Nullterm_range_check.failed
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded25, %if.then16, %if.then9, %if.then4, %if.then
  %42 = load i8*, i8** %retval, align 8
  ret i8* %42
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @tc_strcpy(i8*, i8*) #1

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
  %1 = ptrtoint i8* %call to i32
  %2 = bitcast i8** %first_arg to i32*
  store i32 %1, i32* %2, align 4
  %3 = load i8*, i8** %first_arg, align 4
  %4 = load i64, i64* %arg_2.addr, align 8
  %5 = ptrtoint i8* %3 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call1 = call %Tstruct.Spl_json_value_t_t* @parse_value(i8* %6, i64 %4)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call1 to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = call i32 @c_TPtoO(i8* %9)
  %11 = inttoptr i32 %10 to %Tstruct.json_value_t_t*
  %12 = bitcast %Tstruct.json_value_t_t* %11 to i8*
  %13 = ptrtoint i8* %12 to i64
  %14 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %13)
  %call2 = call i32 @c_fetch_pointer_offset(i8* %14)
  ret i32 %call2

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
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
  %0 = ptrtoint %Tstruct.Spl_json_value_t_t* (i8*, i64)* %parse_value to i32
  %1 = bitcast %Tstruct.Spl_json_value_t_t* (i8*, i64)** %parse_value.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @read_file(i8* %2)
  store i8* %call, i8** %file_contents, align 8
  %3 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 0, i32* %3, align 4
  %4 = load i8*, i8** %file_contents, align 8
  %5 = call i32 @c_TPtoO(i8* %4)
  %6 = call i32 @c_TPtoO(i8* null)
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %7 = bitcast i8** %Tainted_file_contents to i32*
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %file_contents, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %9)
  %call1 = call i64 @strlen(i8* %10) #10
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %11 = load i32, i32* %len, align 4
  %conv2 = sext i32 %11 to i64
  %mul = mul i64 %conv2, 1
  %call3 = call i8* @parson_string_tainted_malloc(i64 %mul)
  %12 = call i32 @c_TPtoO(i8* %call3)
  %13 = inttoptr i32 %12 to i8*
  %14 = ptrtoint i8* %13 to i32
  %15 = bitcast i8** %Tainted_file_contents to i32*
  store i32 %14, i32* %15, align 4
  %16 = load i8*, i8** %Tainted_file_contents, align 4
  %17 = load i8*, i8** %file_contents, align 8
  %18 = ptrtoint i8* %16 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %21 = ptrtoint i8* %17 to i64
  %22 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %21)
  %call4 = call i8* @tc_strcpy(i8* %19, i8* %22)
  %23 = call i32 @c_TPtoO(i8* %call4)
  %24 = inttoptr i32 %23 to i8*
  %25 = load i8*, i8** %Tainted_file_contents, align 4
  %26 = load %Tstruct.Spl_json_value_t_t* (i8*, i64)*, %Tstruct.Spl_json_value_t_t* (i8*, i64)** %parse_value.addr, align 4
  %27 = ptrtoint i8* %25 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded
  %call7 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*, %Tstruct.Spl_json_value_t_t* (i8*, i64)*)* @json_parse_string_with_comments to %Tstruct.Spl_json_value_t_t* (i8*, %Tstruct.Spl_json_value_t_t* (i8*, i64)*)*)(i8* %28, %Tstruct.Spl_json_value_t_t* (i8*, i64)* %26)
  %30 = bitcast %Tstruct.Spl_json_value_t_t* %call7 to %Tstruct.json_value_t_t*
  %31 = bitcast %Tstruct.json_value_t_t* %30 to i8*
  %32 = call i32 @c_TPtoO(i8* %31)
  %33 = inttoptr i32 %32 to %Tstruct.json_value_t_t*
  %34 = bitcast %Tstruct.json_value_t_t* %33 to %Tstruct.Spl_json_value_t_t*
  %35 = ptrtoint %Tstruct.Spl_json_value_t_t* %34 to i32
  %36 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 %35, i32* %36, align 4
  %37 = load i8*, i8** %Tainted_file_contents, align 4
  %38 = call i32 @c_TPtoO(i8* %37)
  %39 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %38, %39
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded6
  %40 = load i8*, i8** %Tainted_file_contents, align 4
  %41 = load i8*, i8** %Tainted_file_contents, align 4
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 0
  %42 = call i32 @c_TPtoO(i8* %37)
  %43 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %42, %43
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.subsumption
  %add.ptr10 = getelementptr inbounds i8, i8* %37, i64 0
  %44 = call i32 @c_TPtoO(i8* %40)
  %45 = inttoptr i32 %44 to i8*
  %46 = call i32 @c_TPtoO(i8* %37)
  %47 = inttoptr i32 %46 to i8*
  %48 = call i32 @c_TPtoO(i8* %45)
  %49 = call i32 @c_TPtoO(i8* %47)
  %_Dynamic_check.lower = icmp ule i32 %48, %49
  %50 = call i32 @c_TPtoO(i8* %add.ptr10)
  %51 = inttoptr i32 %50 to i8*
  %52 = call i32 @c_TPtoO(i8* %add.ptr)
  %53 = inttoptr i32 %52 to i8*
  %54 = call i32 @c_TPtoO(i8* %51)
  %55 = call i32 @c_TPtoO(i8* %53)
  %_Dynamic_check.upper = icmp ule i32 %54, %55
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed11

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded9, %_Dynamic_check.succeeded6
  %56 = ptrtoint i8* %37 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.success
  call void @t_free(i8* %57)
  %59 = load i8*, i8** %file_contents, align 8
  %60 = call i32 @c_TPtoO(i8* %59)
  %61 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null14 = icmp eq i32 %60, %61
  br i1 %_Dynamic_check.is_null14, label %_Dynamic_check.success28, label %_Dynamic_check.subsumption15

_Dynamic_check.subsumption15:                     ; preds = %_Dynamic_check.succeeded13
  %62 = load i8*, i8** %file_contents, align 8
  %63 = load i8*, i8** %file_contents, align 8
  %64 = call i32 @c_TPtoO(i8* %63)
  %65 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null16 = icmp ne i32 %64, %65
  br i1 %_Dynamic_check.non_null16, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.subsumption15
  %add.ptr19 = getelementptr inbounds i8, i8* %63, i64 0
  %66 = call i32 @c_TPtoO(i8* %59)
  %67 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null20 = icmp ne i32 %66, %67
  br i1 %_Dynamic_check.non_null20, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded18
  %add.ptr23 = getelementptr inbounds i8, i8* %59, i64 0
  %68 = call i32 @c_TPtoO(i8* %62)
  %69 = inttoptr i32 %68 to i8*
  %70 = call i32 @c_TPtoO(i8* %59)
  %71 = inttoptr i32 %70 to i8*
  %72 = call i32 @c_TPtoO(i8* %69)
  %73 = call i32 @c_TPtoO(i8* %71)
  %_Dynamic_check.lower24 = icmp ule i32 %72, %73
  %74 = call i32 @c_TPtoO(i8* %add.ptr23)
  %75 = inttoptr i32 %74 to i8*
  %76 = call i32 @c_TPtoO(i8* %add.ptr19)
  %77 = inttoptr i32 %76 to i8*
  %78 = call i32 @c_TPtoO(i8* %75)
  %79 = call i32 @c_TPtoO(i8* %77)
  %_Dynamic_check.upper25 = icmp ule i32 %78, %79
  %_Dynamic_check.cast26 = and i1 %_Dynamic_check.lower24, %_Dynamic_check.upper25
  br i1 %_Dynamic_check.cast26, label %_Dynamic_check.success28, label %_Dynamic_check.failed27

_Dynamic_check.success28:                         ; preds = %_Dynamic_check.succeeded22, %_Dynamic_check.succeeded13
  call void @free(i8* %59) #11
  %80 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %80, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded9
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.subsumption15
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.success28, %if.then
  %81 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %81
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_parse_string(i8* %string) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %string.addr, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp1 = icmp eq i32 %conv, -17
  br i1 %cmp1, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded
  %9 = load i8*, i8** %string.addr, align 4
  %10 = ptrtoint i8* %9 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %land.lhs.true
  %arrayidx5 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %13 to i32
  %cmp7 = icmp eq i32 %conv6, -69
  br i1 %cmp7, label %land.lhs.true9, label %if.end17

land.lhs.true9:                                   ; preds = %_Dynamic_check.succeeded4
  %14 = load i8*, i8** %string.addr, align 4
  %15 = ptrtoint i8* %14 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %land.lhs.true9
  %arrayidx12 = getelementptr inbounds i8, i8* %16, i64 2
  %18 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %18 to i32
  %cmp14 = icmp eq i32 %conv13, -65
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %_Dynamic_check.succeeded11
  %19 = load i8*, i8** %string.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %19, i64 3
  %20 = ptrtoint i8* %add.ptr to i32
  %21 = bitcast i8** %string.addr to i32*
  store i32 %20, i32* %21, align 4
  br label %if.end17

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %land.lhs.true
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed10:                          ; preds = %land.lhs.true9
  call void @llvm.trap() #9
  unreachable

if.end17:                                         ; preds = %if.then16, %_Dynamic_check.succeeded11, %_Dynamic_check.succeeded4, %_Dynamic_check.succeeded
  %22 = load i8*, i8** %string.addr, align 4
  %23 = ptrtoint i8* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %if.end17
  %call = call %Tstruct.Spl_json_value_t_t* @parse_value(i8* %24, i64 0)
  %26 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %27 = bitcast %Tstruct.json_value_t_t* %26 to i8*
  %28 = call i32 @c_TPtoO(i8* %27)
  %29 = inttoptr i32 %28 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %29, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed18:                          ; preds = %if.end17
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded19, %if.then
  %30 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %30
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.json_value_t_t* @json_parse_string_with_comments(i8* %string, %Tstruct.Spl_json_value_t_t* (i8*, i64)* %parse_value) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %parse_value.addr = alloca %Tstruct.Spl_json_value_t_t* (i8*, i64)*, align 4
  %ret_param_types = alloca [3 x i32], align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = ptrtoint %Tstruct.Spl_json_value_t_t* (i8*, i64)* %parse_value to i32
  %3 = bitcast %Tstruct.Spl_json_value_t_t* (i8*, i64)** %parse_value.addr to i32*
  store i32 %2, i32* %3, align 4
  %4 = bitcast [3 x i32]* %ret_param_types to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast ([3 x i32]* @__const.json_parse_string_with_comments.ret_param_types to i8*), i64 12, i1 false)
  %call = call i8* (...) @c_fetch_sandbox_address()
  %5 = load i8*, i8** %string.addr, align 4
  %6 = ptrtoint i8* %5 to i32
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %ret_param_types, i64 0, i64 0
  %call1 = call i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...) bitcast (i32 (...)* @sbx_register_callback to i32 (i32 (i32, i32, i64)*, i32, i32, i32*, ...)*)(i32 (i32, i32, i64)* @parse_value_trampoline, i32 2, i32 1, i32* %arraydecay)
  %7 = ptrtoint i8* %call to i64
  %8 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %7)
  %call2 = call i32 @w2c_json_parse_string_with_comments(i8* %8, i32 %6, i32 %call1)
  %conv = zext i32 %call2 to i64
  %9 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %9
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %7 = load i8*, i8** %name.addr, align 4
  %8 = ptrtoint i8* %7 to i32
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i8*, i8** %name.addr, align 4
  %10 = ptrtoint i8* %9 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %call = call i64 @t_strlen(i8* %11)
  store i64 %call, i64* %nameLen, align 8
  %13 = bitcast i8** %name_with_len to i32*
  store i32 0, i32* %13, align 4
  %14 = load i8*, i8** %name.addr, align 4
  %15 = ptrtoint i8* %14 to i32
  %16 = bitcast i8** %name_with_len to i32*
  store i32 %15, i32* %16, align 4
  %17 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %18 = load i8*, i8** %name_with_len, align 4
  %19 = load i64, i64* %nameLen, align 8
  %20 = ptrtoint %Tstruct.Spl_json_object_t_t* %17 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %23 = bitcast i8* %21 to %Tstruct.Spl_json_object_t_t*
  %24 = ptrtoint i8* %18 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded3
  %call6 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (%Tstruct.json_object_t_t*, i8*, i64)* @json_object_getn_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*, i64)*)(%Tstruct.Spl_json_object_t_t* %23, i8* %25, i64 %19)
  %27 = bitcast %Tstruct.Spl_json_value_t_t* %call6 to %Tstruct.json_value_t_t*
  %28 = bitcast %Tstruct.json_value_t_t* %27 to i8*
  %29 = call i32 @c_TPtoO(i8* %28)
  %30 = inttoptr i32 %29 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %30, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded5, %if.then
  %31 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_get_string(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  %22 = call i32 @c_TPtoO(i8* %call5)
  %23 = inttoptr i32 %22 to i8*
  ret i8* %23

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_object_get_number(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  ret double %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_object_t_t* @json_object_get_object(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  %22 = bitcast %Tstruct.Spl_json_object_t_t* %call5 to %Tstruct.json_object_t_t*
  %23 = bitcast %Tstruct.json_object_t_t* %22 to i8*
  %24 = call i32 @c_TPtoO(i8* %23)
  %25 = inttoptr i32 %24 to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %25

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  %22 = bitcast %Tstruct.Spl_json_array_t_t* %call5 to %Tstruct.json_array_t_t*
  %23 = bitcast %Tstruct.json_array_t_t* %22 to i8*
  %24 = call i32 @c_TPtoO(i8* %23)
  %25 = inttoptr i32 %24 to %Tstruct.Spl_json_array_t_t*
  ret %Tstruct.Spl_json_array_t_t* %25

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_get_boolean(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  ret i32 %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load i8*, i8** %name.addr, align 4
  %6 = ptrtoint i8* %5 to i32
  %7 = call i8* @c_fetch_pointer_from_offset(i32 %6)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i8* @t_strchr(i8* %7, i32 46)
  %9 = call i32 @c_TPtoO(i8* %call)
  %10 = inttoptr i32 %9 to i8*
  %11 = ptrtoint i8* %10 to i32
  %12 = bitcast i8** %dot_position to i32*
  store i32 %11, i32* %12, align 4
  %13 = load i8*, i8** %dot_position, align 4
  %14 = call i32 @c_TPtoO(i8* %13)
  %15 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %14, %15
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %_Dynamic_check.succeeded
  %16 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %17 = load i8*, i8** %name.addr, align 4
  %18 = ptrtoint %Tstruct.Spl_json_object_t_t* %16 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %if.then
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_object_t_t*
  %22 = ptrtoint i8* %17 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %call5 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %21, i8* %23)
  %25 = bitcast %Tstruct.Spl_json_value_t_t* %call5 to %Tstruct.json_value_t_t*
  %26 = bitcast %Tstruct.json_value_t_t* %25 to i8*
  %27 = call i32 @c_TPtoO(i8* %26)
  %28 = inttoptr i32 %27 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %28, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %if.then
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %29 = bitcast i8** %after_dot to i32*
  store i32 0, i32* %29, align 4
  %30 = load i8*, i8** %name.addr, align 4
  %31 = ptrtoint i8* %30 to i32
  %32 = bitcast i8** %after_dot to i32*
  store i32 %31, i32* %32, align 4
  %33 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %34 = load i8*, i8** %after_dot, align 4
  %35 = load i8*, i8** %dot_position, align 4
  %36 = load i8*, i8** %name.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %35 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %36 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sext i32 %sub.ptr.sub to i64
  %37 = ptrtoint %Tstruct.Spl_json_object_t_t* %33 to i32
  %38 = call i8* @c_fetch_pointer_from_offset(i32 %37)
  %39 = call i1 @c_isTaintedPointerToTaintedMem(i8* %38)
  br i1 %39, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.end
  %40 = bitcast i8* %38 to %Tstruct.Spl_json_object_t_t*
  %41 = ptrtoint i8* %34 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded7
  %call10 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (%Tstruct.json_object_t_t*, i8*, i64)* @json_object_getn_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*, i64)*)(%Tstruct.Spl_json_object_t_t* %40, i8* %42, i64 %conv)
  %44 = bitcast %Tstruct.Spl_json_value_t_t* %call10 to %Tstruct.json_value_t_t*
  %45 = bitcast %Tstruct.json_value_t_t* %44 to i8*
  %46 = call i32 @c_TPtoO(i8* %45)
  %47 = inttoptr i32 %46 to %Tstruct.Spl_json_value_t_t*
  %48 = ptrtoint %Tstruct.Spl_json_value_t_t* %47 to i32
  %49 = call i8* @c_fetch_pointer_from_offset(i32 %48)
  %50 = call i1 @c_isTaintedPointerToTaintedMem(i8* %49)
  br i1 %50, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded9
  %51 = bitcast i8* %49 to %Tstruct.Spl_json_value_t_t*
  %call13 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %51)
  %52 = bitcast %Tstruct.Spl_json_object_t_t* %call13 to %Tstruct.json_object_t_t*
  %53 = bitcast %Tstruct.json_object_t_t* %52 to i8*
  %54 = call i32 @c_TPtoO(i8* %53)
  %55 = inttoptr i32 %54 to %Tstruct.json_object_t_t*
  %56 = bitcast %Tstruct.json_object_t_t* %55 to %Tstruct.Spl_json_object_t_t*
  %57 = ptrtoint %Tstruct.Spl_json_object_t_t* %56 to i32
  %58 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %57, i32* %58, align 4
  %59 = bitcast i8** %one_past_dot to i32*
  store i32 0, i32* %59, align 4
  %60 = load i8*, i8** %dot_position, align 4
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 1
  %61 = ptrtoint i8* %add.ptr to i32
  %62 = bitcast i8** %one_past_dot to i32*
  store i32 %61, i32* %62, align 4
  %63 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %64 = load i8*, i8** %one_past_dot, align 4
  %65 = ptrtoint %Tstruct.Spl_json_object_t_t* %63 to i32
  %66 = call i8* @c_fetch_pointer_from_offset(i32 %65)
  %67 = call i1 @c_isTaintedPointerToTaintedMem(i8* %66)
  br i1 %67, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.succeeded12
  %68 = bitcast i8* %66 to %Tstruct.Spl_json_object_t_t*
  %69 = ptrtoint i8* %64 to i32
  %70 = call i8* @c_fetch_pointer_from_offset(i32 %69)
  %71 = call i1 @c_isTaintedPointerToTaintedMem(i8* %70)
  br i1 %71, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.succeeded15
  %call18 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %68, i8* %70)
  %72 = bitcast %Tstruct.Spl_json_value_t_t* %call18 to %Tstruct.json_value_t_t*
  %73 = bitcast %Tstruct.json_value_t_t* %72 to i8*
  %74 = call i32 @c_TPtoO(i8* %73)
  %75 = inttoptr i32 %74 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %75, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed6:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded9
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded17, %_Dynamic_check.succeeded4
  %76 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %76
}

declare dso_local i8* @t_strchr(i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_dotget_string(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  %22 = call i32 @c_TPtoO(i8* %call5)
  %23 = inttoptr i32 %22 to i8*
  ret i8* %23

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_object_dotget_number(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  ret double %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_object_t_t* @json_object_dotget_object(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  %22 = bitcast %Tstruct.Spl_json_object_t_t* %call5 to %Tstruct.json_object_t_t*
  %23 = bitcast %Tstruct.json_object_t_t* %22 to i8*
  %24 = call i32 @c_TPtoO(i8* %23)
  %25 = inttoptr i32 %24 to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %25

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_array_t_t* @json_object_dotget_array(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  %22 = bitcast %Tstruct.Spl_json_array_t_t* %call5 to %Tstruct.json_array_t_t*
  %23 = bitcast %Tstruct.json_array_t_t* %22 to i8*
  %24 = call i32 @c_TPtoO(i8* %23)
  %25 = inttoptr i32 %24 to %Tstruct.Spl_json_array_t_t*
  ret %Tstruct.Spl_json_array_t_t* %25

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.Spl_json_value_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  ret i32 %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_object_get_count(%Tstruct.json_object_t_t* %object) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = bitcast %Tstruct.Spl_json_object_t_t* %3 to i8*
  %5 = call i32 @c_TPtoO(i8* %4)
  %6 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %5, %6
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %8 = ptrtoint %Tstruct.Spl_json_object_t_t* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %11 = bitcast i8* %9 to %Tstruct.Spl_json_object_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %11, i32 0, i32 3
  %12 = load i32, i32* %count, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi i32 [ %12, %_Dynamic_check.succeeded ], [ 0, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_object_get_name(%Tstruct.json_object_t_t* %object, i64 %index) #2 {
entry:
  %retval = alloca i8*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %index.addr, align 8
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %10)
  %cmp1 = icmp uge i64 %5, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %entry
  store i8* null, i8** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %11 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %if.end
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %15, i32 0, i32 1
  %names4 = bitcast i32* %names to i8***
  %16 = load i8**, i8*** %names4, align 4
  %17 = load i64, i64* %index.addr, align 8
  %18 = ptrtoint i8** %16 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %21 = bitcast i8* %19 to i8**
  %22 = bitcast i8** %21 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %17
  %23 = bitcast i32* %arrayidx to i8**
  %24 = bitcast i8** %23 to i8*
  %25 = call i32 @c_TPtoO(i8* %24)
  %26 = inttoptr i32 %25 to i8**
  %27 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %28 = ptrtoint %Tstruct.Spl_json_object_t_t* %27 to i32
  %29 = call i8* @c_fetch_pointer_from_offset(i32 %28)
  %30 = call i1 @c_isTaintedPointerToTaintedMem(i8* %29)
  br i1 %30, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %31 = bitcast i8* %29 to %Tstruct.Spl_json_object_t_t*
  %names9 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %31, i32 0, i32 1
  %names10 = bitcast i32* %names9 to i8***
  %32 = load i8**, i8*** %names10, align 4
  %33 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %34 = ptrtoint %Tstruct.Spl_json_object_t_t* %33 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded8
  %37 = bitcast i8* %35 to %Tstruct.Spl_json_object_t_t*
  %names13 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %37, i32 0, i32 1
  %names14 = bitcast i32* %names13 to i8***
  %38 = load i8**, i8*** %names14, align 4
  %39 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %40 = ptrtoint %Tstruct.Spl_json_object_t_t* %39 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %43 = bitcast i8* %41 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %43, i32 0, i32 4
  %44 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %38, i64 %idx.ext
  %45 = bitcast i8** %add.ptr to i8*
  %46 = call i32 @c_TPtoO(i8* %45)
  %47 = inttoptr i32 %46 to i8**
  %48 = bitcast i8** %32 to i8*
  %49 = call i32 @c_TPtoO(i8* %48)
  %50 = inttoptr i32 %49 to i8**
  %51 = bitcast i8** %50 to i8*
  %52 = call i32 @c_TPtoO(i8* %51)
  %53 = bitcast i8** %26 to i8*
  %54 = call i32 @c_TPtoO(i8* %53)
  %_Dynamic_check.lower = icmp ule i32 %52, %54
  %55 = bitcast i8** %26 to i8*
  %56 = call i32 @c_TPtoO(i8* %55)
  %57 = bitcast i8** %47 to i8*
  %58 = call i32 @c_TPtoO(i8* %57)
  %_Dynamic_check.upper = icmp ult i32 %56, %58
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  %59 = load i8*, i8** %23, align 8
  store i8* %59, i8** %retval, align 8
  br label %return

_Dynamic_check.failed2:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded18, %if.then
  %60 = load i8*, i8** %retval, align 8
  ret i8* %60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_value_t_t* @json_object_get_value_at(%Tstruct.json_object_t_t* %object, i64 %index) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %index.addr, align 8
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %10)
  %cmp1 = icmp uge i64 %5, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %11 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %if.end
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %15, i32 0, i32 2
  %values4 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %16 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values4, align 4
  %17 = load i64, i64* %index.addr, align 8
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t** %16 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t**
  %22 = bitcast %Tstruct.Spl_json_value_t_t** %21 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %17
  %23 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %24 = bitcast %Tstruct.Spl_json_value_t_t** %23 to i8*
  %25 = call i32 @c_TPtoO(i8* %24)
  %26 = inttoptr i32 %25 to %Tstruct.Spl_json_value_t_t**
  %27 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %28 = ptrtoint %Tstruct.Spl_json_object_t_t* %27 to i32
  %29 = call i8* @c_fetch_pointer_from_offset(i32 %28)
  %30 = call i1 @c_isTaintedPointerToTaintedMem(i8* %29)
  br i1 %30, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %31 = bitcast i8* %29 to %Tstruct.Spl_json_object_t_t*
  %values9 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %31, i32 0, i32 2
  %values10 = bitcast i32* %values9 to %Tstruct.Spl_json_value_t_t***
  %32 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values10, align 4
  %33 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %34 = ptrtoint %Tstruct.Spl_json_object_t_t* %33 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded8
  %37 = bitcast i8* %35 to %Tstruct.Spl_json_object_t_t*
  %values13 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %37, i32 0, i32 2
  %values14 = bitcast i32* %values13 to %Tstruct.Spl_json_value_t_t***
  %38 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values14, align 4
  %39 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %40 = ptrtoint %Tstruct.Spl_json_object_t_t* %39 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %43 = bitcast i8* %41 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %43, i32 0, i32 4
  %44 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %44 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %38, i64 %idx.ext
  %45 = bitcast %Tstruct.Spl_json_value_t_t** %38 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 %idx.ext
  %47 = bitcast i32* %46 to %Tstruct.Spl_json_value_t_t**
  %48 = bitcast %Tstruct.Spl_json_value_t_t** %47 to i8*
  %49 = call i32 @c_TPtoO(i8* %48)
  %50 = inttoptr i32 %49 to %Tstruct.Spl_json_value_t_t**
  %51 = bitcast %Tstruct.Spl_json_value_t_t** %32 to i8*
  %52 = call i32 @c_TPtoO(i8* %51)
  %53 = inttoptr i32 %52 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %53, %26
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %26, %50
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  %54 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %23, align 4
  %_Dynamic_check.is_null = icmp eq %Tstruct.Spl_json_value_t_t* %54, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded18
  %55 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %56 = ptrtoint %Tstruct.Spl_json_object_t_t* %55 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.subsumption
  %59 = bitcast i8* %57 to %Tstruct.Spl_json_object_t_t*
  %values21 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %59, i32 0, i32 2
  %values22 = bitcast i32* %values21 to %Tstruct.Spl_json_value_t_t***
  %60 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values22, align 4
  %61 = load i64, i64* %index.addr, align 8
  %62 = ptrtoint %Tstruct.Spl_json_value_t_t** %60 to i32
  %63 = call i8* @c_fetch_pointer_from_offset(i32 %62)
  %64 = call i1 @c_isTaintedPointerToTaintedMem(i8* %63)
  br i1 %64, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded20
  %65 = bitcast i8* %63 to %Tstruct.Spl_json_value_t_t**
  %66 = bitcast %Tstruct.Spl_json_value_t_t** %65 to i32*
  %arrayidx25 = getelementptr inbounds i32, i32* %66, i64 %61
  %67 = bitcast i32* %arrayidx25 to %Tstruct.Spl_json_value_t_t**
  %68 = bitcast %Tstruct.Spl_json_value_t_t** %67 to i8*
  %69 = call i32 @c_TPtoO(i8* %68)
  %70 = inttoptr i32 %69 to %Tstruct.Spl_json_value_t_t**
  %71 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %72 = ptrtoint %Tstruct.Spl_json_object_t_t* %71 to i32
  %73 = call i8* @c_fetch_pointer_from_offset(i32 %72)
  %74 = call i1 @c_isTaintedPointerToTaintedMem(i8* %73)
  br i1 %74, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded24
  %75 = bitcast i8* %73 to %Tstruct.Spl_json_object_t_t*
  %values28 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %75, i32 0, i32 2
  %values29 = bitcast i32* %values28 to %Tstruct.Spl_json_value_t_t***
  %76 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values29, align 4
  %77 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %78 = ptrtoint %Tstruct.Spl_json_object_t_t* %77 to i32
  %79 = call i8* @c_fetch_pointer_from_offset(i32 %78)
  %80 = call i1 @c_isTaintedPointerToTaintedMem(i8* %79)
  br i1 %80, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded27
  %81 = bitcast i8* %79 to %Tstruct.Spl_json_object_t_t*
  %values32 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %81, i32 0, i32 2
  %values33 = bitcast i32* %values32 to %Tstruct.Spl_json_value_t_t***
  %82 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values33, align 4
  %83 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %84 = ptrtoint %Tstruct.Spl_json_object_t_t* %83 to i32
  %85 = call i8* @c_fetch_pointer_from_offset(i32 %84)
  %86 = call i1 @c_isTaintedPointerToTaintedMem(i8* %85)
  br i1 %86, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %_Dynamic_check.succeeded31
  %87 = bitcast i8* %85 to %Tstruct.Spl_json_object_t_t*
  %capacity36 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %87, i32 0, i32 4
  %88 = load i32, i32* %capacity36, align 8
  %idx.ext37 = zext i32 %88 to i64
  %add.ptr38 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %82, i64 %idx.ext37
  %89 = bitcast %Tstruct.Spl_json_value_t_t** %82 to i32*
  %90 = getelementptr inbounds i32, i32* %89, i64 %idx.ext37
  %91 = bitcast i32* %90 to %Tstruct.Spl_json_value_t_t**
  %92 = bitcast %Tstruct.Spl_json_value_t_t** %91 to i8*
  %93 = call i32 @c_TPtoO(i8* %92)
  %94 = inttoptr i32 %93 to %Tstruct.Spl_json_value_t_t**
  %95 = bitcast %Tstruct.Spl_json_value_t_t** %76 to i8*
  %96 = call i32 @c_TPtoO(i8* %95)
  %97 = inttoptr i32 %96 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower39 = icmp ule %Tstruct.Spl_json_value_t_t** %97, %70
  %_Dynamic_check.upper40 = icmp ult %Tstruct.Spl_json_value_t_t** %70, %94
  %_Dynamic_check.range41 = and i1 %_Dynamic_check.lower39, %_Dynamic_check.upper40
  br i1 %_Dynamic_check.range41, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %_Dynamic_check.succeeded35
  %98 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %67, align 4
  %99 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %100 = ptrtoint %Tstruct.Spl_json_object_t_t* %99 to i32
  %101 = call i8* @c_fetch_pointer_from_offset(i32 %100)
  %102 = call i1 @c_isTaintedPointerToTaintedMem(i8* %101)
  br i1 %102, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %_Dynamic_check.succeeded43
  %103 = bitcast i8* %101 to %Tstruct.Spl_json_object_t_t*
  %values46 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %103, i32 0, i32 2
  %values47 = bitcast i32* %values46 to %Tstruct.Spl_json_value_t_t***
  %104 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values47, align 4
  %105 = load i64, i64* %index.addr, align 8
  %106 = ptrtoint %Tstruct.Spl_json_value_t_t** %104 to i32
  %107 = call i8* @c_fetch_pointer_from_offset(i32 %106)
  %108 = call i1 @c_isTaintedPointerToTaintedMem(i8* %107)
  br i1 %108, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %_Dynamic_check.succeeded45
  %109 = bitcast i8* %107 to %Tstruct.Spl_json_value_t_t**
  %110 = bitcast %Tstruct.Spl_json_value_t_t** %109 to i32*
  %arrayidx50 = getelementptr inbounds i32, i32* %110, i64 %105
  %111 = bitcast i32* %arrayidx50 to %Tstruct.Spl_json_value_t_t**
  %112 = bitcast %Tstruct.Spl_json_value_t_t** %111 to i8*
  %113 = call i32 @c_TPtoO(i8* %112)
  %114 = inttoptr i32 %113 to %Tstruct.Spl_json_value_t_t**
  %115 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %116 = ptrtoint %Tstruct.Spl_json_object_t_t* %115 to i32
  %117 = call i8* @c_fetch_pointer_from_offset(i32 %116)
  %118 = call i1 @c_isTaintedPointerToTaintedMem(i8* %117)
  br i1 %118, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %_Dynamic_check.succeeded49
  %119 = bitcast i8* %117 to %Tstruct.Spl_json_object_t_t*
  %values53 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %119, i32 0, i32 2
  %values54 = bitcast i32* %values53 to %Tstruct.Spl_json_value_t_t***
  %120 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values54, align 4
  %121 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %122 = ptrtoint %Tstruct.Spl_json_object_t_t* %121 to i32
  %123 = call i8* @c_fetch_pointer_from_offset(i32 %122)
  %124 = call i1 @c_isTaintedPointerToTaintedMem(i8* %123)
  br i1 %124, label %_Dynamic_check.succeeded56, label %_Dynamic_check.failed55

_Dynamic_check.succeeded56:                       ; preds = %_Dynamic_check.succeeded52
  %125 = bitcast i8* %123 to %Tstruct.Spl_json_object_t_t*
  %values57 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %125, i32 0, i32 2
  %values58 = bitcast i32* %values57 to %Tstruct.Spl_json_value_t_t***
  %126 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values58, align 4
  %127 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %128 = ptrtoint %Tstruct.Spl_json_object_t_t* %127 to i32
  %129 = call i8* @c_fetch_pointer_from_offset(i32 %128)
  %130 = call i1 @c_isTaintedPointerToTaintedMem(i8* %129)
  br i1 %130, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %_Dynamic_check.succeeded56
  %131 = bitcast i8* %129 to %Tstruct.Spl_json_object_t_t*
  %capacity61 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %131, i32 0, i32 4
  %132 = load i32, i32* %capacity61, align 8
  %idx.ext62 = zext i32 %132 to i64
  %add.ptr63 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %126, i64 %idx.ext62
  %133 = bitcast %Tstruct.Spl_json_value_t_t** %126 to i32*
  %134 = getelementptr inbounds i32, i32* %133, i64 %idx.ext62
  %135 = bitcast i32* %134 to %Tstruct.Spl_json_value_t_t**
  %136 = bitcast %Tstruct.Spl_json_value_t_t** %135 to i8*
  %137 = call i32 @c_TPtoO(i8* %136)
  %138 = inttoptr i32 %137 to %Tstruct.Spl_json_value_t_t**
  %139 = bitcast %Tstruct.Spl_json_value_t_t** %120 to i8*
  %140 = call i32 @c_TPtoO(i8* %139)
  %141 = inttoptr i32 %140 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower64 = icmp ule %Tstruct.Spl_json_value_t_t** %141, %114
  %_Dynamic_check.upper65 = icmp ult %Tstruct.Spl_json_value_t_t** %114, %138
  %_Dynamic_check.range66 = and i1 %_Dynamic_check.lower64, %_Dynamic_check.upper65
  br i1 %_Dynamic_check.range66, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded60
  %142 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %111, align 4
  %add.ptr69 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %142, i64 1
  %143 = bitcast %Tstruct.Spl_json_value_t_t* %54 to %Tstruct.json_value_t_t*
  %144 = bitcast %Tstruct.json_value_t_t* %143 to %Tstruct.Spl_json_value_t_t*
  %145 = bitcast %Tstruct.Spl_json_value_t_t* %54 to %Tstruct.json_value_t_t*
  %146 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %147 = ptrtoint %Tstruct.Spl_json_object_t_t* %146 to i32
  %148 = call i8* @c_fetch_pointer_from_offset(i32 %147)
  %149 = call i1 @c_isTaintedPointerToTaintedMem(i8* %148)
  br i1 %149, label %_Dynamic_check.succeeded71, label %_Dynamic_check.failed70

_Dynamic_check.succeeded71:                       ; preds = %_Dynamic_check.succeeded68
  %150 = bitcast i8* %148 to %Tstruct.Spl_json_object_t_t*
  %capacity72 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %150, i32 0, i32 4
  %151 = load i32, i32* %capacity72, align 8
  %idx.ext73 = zext i32 %151 to i64
  %add.ptr74 = getelementptr inbounds %Tstruct.json_value_t_t, %Tstruct.json_value_t_t* %145, i64 %idx.ext73
  %152 = bitcast %Tstruct.json_value_t_t* %add.ptr74 to %Tstruct.Spl_json_value_t_t*
  %153 = bitcast %Tstruct.Spl_json_value_t_t* %98 to i8*
  %154 = call i32 @c_TPtoO(i8* %153)
  %155 = inttoptr i32 %154 to %Tstruct.Spl_json_value_t_t*
  %156 = bitcast %Tstruct.Spl_json_value_t_t* %144 to i8*
  %157 = call i32 @c_TPtoO(i8* %156)
  %158 = inttoptr i32 %157 to %Tstruct.Spl_json_value_t_t*
  %_Dynamic_check.lower75 = icmp ule %Tstruct.Spl_json_value_t_t* %155, %158
  %159 = bitcast %Tstruct.Spl_json_value_t_t* %152 to i8*
  %160 = call i32 @c_TPtoO(i8* %159)
  %161 = inttoptr i32 %160 to %Tstruct.Spl_json_value_t_t*
  %162 = bitcast %Tstruct.Spl_json_value_t_t* %add.ptr69 to i8*
  %163 = call i32 @c_TPtoO(i8* %162)
  %164 = inttoptr i32 %163 to %Tstruct.Spl_json_value_t_t*
  %_Dynamic_check.upper76 = icmp ule %Tstruct.Spl_json_value_t_t* %161, %164
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower75, %_Dynamic_check.upper76
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed77

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded71, %_Dynamic_check.succeeded18
  store %Tstruct.Spl_json_value_t_t* %54, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed2:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed34:                          ; preds = %_Dynamic_check.succeeded31
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed42:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed44:                          ; preds = %_Dynamic_check.succeeded43
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed48:                          ; preds = %_Dynamic_check.succeeded45
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed51:                          ; preds = %_Dynamic_check.succeeded49
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed55:                          ; preds = %_Dynamic_check.succeeded52
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed59:                          ; preds = %_Dynamic_check.succeeded56
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded60
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed70:                          ; preds = %_Dynamic_check.succeeded68
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed77:                          ; preds = %_Dynamic_check.succeeded71
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.success, %if.then
  %165 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_object_get_wrapping_value(%Tstruct.json_object_t_t* %object) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %g1 = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_object_t_t*
  %wrapping_value = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %7, i32 0, i32 0
  %wrapping_value1 = bitcast i32* %wrapping_value to %Tstruct.Spl_json_value_t_t**
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value1, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %g1 to i32*
  store i32 %9, i32* %10, align 4
  %11 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_object_t_t*
  %wrapping_value4 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %15, i32 0, i32 0
  %wrapping_value5 = bitcast i32* %wrapping_value4 to %Tstruct.Spl_json_value_t_t**
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value5, align 4
  ret %Tstruct.Spl_json_value_t_t* %16

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_has_value(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.json_value_t_t*
  %18 = bitcast %Tstruct.json_value_t_t* %17 to %Tstruct.Spl_json_value_t_t*
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %cmp = icmp ne i32 %19, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  store i32 %type, i32* %type.addr, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.json_value_t_t*
  %18 = bitcast %Tstruct.json_value_t_t* %17 to %Tstruct.Spl_json_value_t_t*
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %20 = bitcast %Tstruct.Spl_json_value_t_t** %val to i32*
  store i32 %19, i32* %20, align 4
  %21 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %22 = ptrtoint %Tstruct.Spl_json_value_t_t* %21 to i32
  %cmp = icmp ne i32 %22, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %_Dynamic_check.succeeded2
  %23 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %land.rhs
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %27)
  %28 = load i32, i32* %type.addr, align 4
  %cmp6 = icmp eq i32 %call5, %28
  br label %land.end

land.end:                                         ; preds = %_Dynamic_check.succeeded4, %_Dynamic_check.succeeded2
  %29 = phi i1 [ false, %_Dynamic_check.succeeded2 ], [ %cmp6, %_Dynamic_check.succeeded4 ]
  %land.ext = zext i1 %29 to i32
  ret i32 %land.ext

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %land.rhs
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dothas_value(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.json_value_t_t*
  %18 = bitcast %Tstruct.json_value_t_t* %17 to %Tstruct.Spl_json_value_t_t*
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %cmp = icmp ne i32 %19, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  store i32 %type, i32* %type.addr, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_dotget_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %10, i8* %12)
  %14 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to i8*
  %16 = call i32 @c_TPtoO(i8* %15)
  %17 = inttoptr i32 %16 to %Tstruct.json_value_t_t*
  %18 = bitcast %Tstruct.json_value_t_t* %17 to %Tstruct.Spl_json_value_t_t*
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %20 = bitcast %Tstruct.Spl_json_value_t_t** %val to i32*
  store i32 %19, i32* %20, align 4
  %21 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %22 = ptrtoint %Tstruct.Spl_json_value_t_t* %21 to i32
  %cmp = icmp ne i32 %22, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %_Dynamic_check.succeeded2
  %23 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %val, align 4
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %land.rhs
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %27)
  %28 = load i32, i32* %type.addr, align 4
  %cmp6 = icmp eq i32 %call5, %28
  br label %land.end

land.end:                                         ; preds = %_Dynamic_check.succeeded4, %_Dynamic_check.succeeded2
  %29 = phi i1 [ false, %_Dynamic_check.succeeded2 ], [ %cmp6, %_Dynamic_check.succeeded4 ]
  %land.ext = zext i1 %29 to i32
  ret i32 %land.ext

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %land.rhs
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_array_get_value(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %index.addr, align 8
  %6 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_array_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %10)
  %cmp1 = icmp uge i64 %5, %call
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %11 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %12 = ptrtoint %Tstruct.Spl_json_array_t_t* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %if.end
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %15, i32 0, i32 1
  %items4 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %16 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items4, align 4
  %17 = load i64, i64* %index.addr, align 8
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t** %16 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t**
  %22 = bitcast %Tstruct.Spl_json_value_t_t** %21 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %17
  %23 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %24 = bitcast %Tstruct.Spl_json_value_t_t** %23 to i8*
  %25 = call i32 @c_TPtoO(i8* %24)
  %26 = inttoptr i32 %25 to %Tstruct.Spl_json_value_t_t**
  %27 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %28 = ptrtoint %Tstruct.Spl_json_array_t_t* %27 to i32
  %29 = call i8* @c_fetch_pointer_from_offset(i32 %28)
  %30 = call i1 @c_isTaintedPointerToTaintedMem(i8* %29)
  br i1 %30, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %31 = bitcast i8* %29 to %Tstruct.Spl_json_array_t_t*
  %items9 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %31, i32 0, i32 1
  %items10 = bitcast i32* %items9 to %Tstruct.Spl_json_value_t_t***
  %32 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items10, align 4
  %33 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %34 = ptrtoint %Tstruct.Spl_json_array_t_t* %33 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded8
  %37 = bitcast i8* %35 to %Tstruct.Spl_json_array_t_t*
  %items13 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %37, i32 0, i32 1
  %items14 = bitcast i32* %items13 to %Tstruct.Spl_json_value_t_t***
  %38 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items14, align 4
  %39 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %40 = ptrtoint %Tstruct.Spl_json_array_t_t* %39 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %43 = bitcast i8* %41 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %43, i32 0, i32 3
  %44 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %44 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %38, i64 %idx.ext
  %45 = bitcast %Tstruct.Spl_json_value_t_t** %38 to i32*
  %46 = getelementptr inbounds i32, i32* %45, i64 %idx.ext
  %47 = bitcast i32* %46 to %Tstruct.Spl_json_value_t_t**
  %48 = bitcast %Tstruct.Spl_json_value_t_t** %47 to i8*
  %49 = call i32 @c_TPtoO(i8* %48)
  %50 = inttoptr i32 %49 to %Tstruct.Spl_json_value_t_t**
  %51 = bitcast %Tstruct.Spl_json_value_t_t** %32 to i8*
  %52 = call i32 @c_TPtoO(i8* %51)
  %53 = inttoptr i32 %52 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %53, %26
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %26, %50
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  %54 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %23, align 4
  store %Tstruct.Spl_json_value_t_t* %54, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed2:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded18, %if.then
  %55 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_array_get_string(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i64, i64* %index.addr, align 8
  %5 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_array_t_t*
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %8, i64 %4)
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to i8*
  %11 = call i32 @c_TPtoO(i8* %10)
  %12 = inttoptr i32 %11 to %Tstruct.Spl_json_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %16)
  %17 = call i32 @c_TPtoO(i8* %call3)
  %18 = inttoptr i32 %17 to i8*
  ret i8* %18

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_array_get_number(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i64, i64* %index.addr, align 8
  %5 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_array_t_t*
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %8, i64 %4)
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to i8*
  %11 = call i32 @c_TPtoO(i8* %10)
  %12 = inttoptr i32 %11 to %Tstruct.Spl_json_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_t_t*
  %call3 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %16)
  ret double %call3

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_object_t_t* @json_array_get_object(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i64, i64* %index.addr, align 8
  %5 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_array_t_t*
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %8, i64 %4)
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to i8*
  %11 = call i32 @c_TPtoO(i8* %10)
  %12 = inttoptr i32 %11 to %Tstruct.Spl_json_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_t_t*
  %call3 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %16)
  %17 = bitcast %Tstruct.Spl_json_object_t_t* %call3 to %Tstruct.json_object_t_t*
  %18 = bitcast %Tstruct.json_object_t_t* %17 to i8*
  %19 = call i32 @c_TPtoO(i8* %18)
  %20 = inttoptr i32 %19 to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %20

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.json_array_t_t* @json_array_get_array(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i64, i64* %index.addr, align 8
  %5 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_array_t_t*
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %8, i64 %4)
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to i8*
  %11 = call i32 @c_TPtoO(i8* %10)
  %12 = inttoptr i32 %11 to %Tstruct.Spl_json_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_t_t*
  %call3 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %16)
  %17 = bitcast %Tstruct.Spl_json_array_t_t* %call3 to %Tstruct.json_array_t_t*
  %18 = bitcast %Tstruct.json_array_t_t* %17 to i8*
  %19 = call i32 @c_TPtoO(i8* %18)
  %20 = inttoptr i32 %19 to %Tstruct.Spl_json_array_t_t*
  ret %Tstruct.Spl_json_array_t_t* %20

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_get_boolean(%Tstruct.json_array_t_t* %array, i64 %index) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %index.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %index, i64* %index.addr, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = load i64, i64* %index.addr, align 8
  %5 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_array_t_t*
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %8, i64 %4)
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to i8*
  %11 = call i32 @c_TPtoO(i8* %10)
  %12 = inttoptr i32 %11 to %Tstruct.Spl_json_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %16)
  ret i32 %call3

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_array_get_count(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = bitcast %Tstruct.Spl_json_array_t_t* %3 to i8*
  %5 = call i32 @c_TPtoO(i8* %4)
  %6 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %5, %6
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %8 = ptrtoint %Tstruct.Spl_json_array_t_t* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %11 = bitcast i8* %9 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %11, i32 0, i32 2
  %12 = load i32, i32* %count, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi i32 [ %12, %_Dynamic_check.succeeded ], [ 0, %cond.false ]
  %conv = zext i32 %cond to i64
  ret i64 %conv

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_array_get_wrapping_value(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_array_t_t*
  %wrapping_value = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %7, i32 0, i32 0
  %wrapping_value1 = bitcast i32* %wrapping_value to %Tstruct.Spl_json_value_t_t**
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value1, align 4
  ret %Tstruct.Spl_json_value_t_t* %8

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_get_type(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %3 to i8*
  %5 = call i32 @c_TPtoO(i8* %4)
  %6 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %5, %6
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %11 = bitcast i8* %9 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %11, i32 0, i32 1
  %12 = load i32, i32* %type, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi i32 [ %12, %_Dynamic_check.succeeded ], [ -1, %cond.false ]
  ret i32 %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  %cmp = icmp eq i32 %call, 4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %cond.true
  %12 = bitcast i8* %10 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_value_t_t*
  %object = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %16, i32 0, i32 2
  %object7 = bitcast i32* %object to %Tstruct.Spl_json_object_t_t**
  %17 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object7, align 4
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded6
  %cond = phi %Tstruct.Spl_json_object_t_t* [ %17, %_Dynamic_check.succeeded6 ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_object_t_t* %cond

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %cond.true
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_array_t_t* @json_value_get_array(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  %cmp = icmp eq i32 %call, 5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %cond.true
  %12 = bitcast i8* %10 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_value_t_t*
  %array = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %16, i32 0, i32 3
  %array7 = bitcast i32* %array to %Tstruct.Spl_json_array_t_t**
  %17 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array7, align 4
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded6
  %cond = phi %Tstruct.Spl_json_array_t_t* [ %17, %_Dynamic_check.succeeded6 ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_array_t_t* %cond

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %cond.true
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_value_get_string(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  %cmp = icmp eq i32 %call, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %cond.true
  %12 = bitcast i8* %10 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_value_t_t*
  %string = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %16, i32 0, i32 0
  %string7 = bitcast i32* %string to i8**
  %17 = load i8*, i8** %string7, align 8
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded6
  %cond = phi i8* [ %17, %_Dynamic_check.succeeded6 ], [ null, %cond.false ]
  ret i8* %cond

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %cond.true
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_value_get_number(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %cond.true
  %12 = bitcast i8* %10 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_value_t_t*
  %number = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %16, i32 0, i32 1
  %17 = load i32, i32* %number, align 4
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded6
  %cond = phi i32 [ %17, %_Dynamic_check.succeeded6 ], [ 0, %cond.false ]
  %conv = sitofp i32 %cond to double
  ret double %conv

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %cond.true
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_get_boolean(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  %cmp = icmp eq i32 %call, 6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %cond.true
  %12 = bitcast i8* %10 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_value_t_t*
  %boolean = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %16, i32 0, i32 4
  %17 = load i32, i32* %boolean, align 8
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded6
  %cond = phi i32 [ %17, %_Dynamic_check.succeeded6 ], [ -1, %cond.false ]
  ret i32 %cond

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %cond.true
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %3 to i8*
  %5 = call i32 @c_TPtoO(i8* %4)
  %6 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %5, %6
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %cond.true
  %11 = bitcast i8* %9 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %11, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent1, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded
  %cond = phi %Tstruct.Spl_json_value_t_t* [ %12, %_Dynamic_check.succeeded ], [ null, %cond.false ]
  ret %Tstruct.Spl_json_value_t_t* %cond

_Dynamic_check.failed:                            ; preds = %cond.true
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_value_free(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  switch i32 %call, label %sw.default [
    i32 4, label %sw.bb
    i32 2, label %sw.bb10
    i32 5, label %sw.bb40
  ]

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %sw.bb
  %12 = bitcast i8* %10 to %Tstruct.Spl_json_value_t_t*
  %value3 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %12, i32 0, i32 2
  %value4 = bitcast %Tstruct.Spl_json_value_value_t_t* %value3 to %Tstruct.Spl_json_value_value_t_t*
  %13 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value4 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded2
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_value_value_t_t*
  %object = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %16, i32 0, i32 2
  %object7 = bitcast i32* %object to %Tstruct.Spl_json_object_t_t**
  %17 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object7, align 4
  %18 = ptrtoint %Tstruct.Spl_json_object_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded6
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_object_t_t*
  call void @json_object_free(%Tstruct.Spl_json_object_t_t* %21)
  br label %sw.epilog

_Dynamic_check.failed1:                           ; preds = %sw.bb
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #9
  unreachable

sw.bb10:                                          ; preds = %_Dynamic_check.succeeded
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %23 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %sw.bb10
  %26 = bitcast i8* %24 to %Tstruct.Spl_json_value_t_t*
  %value13 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %26, i32 0, i32 2
  %value14 = bitcast %Tstruct.Spl_json_value_value_t_t* %value13 to %Tstruct.Spl_json_value_value_t_t*
  %27 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value14 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %30 = bitcast i8* %28 to %Tstruct.Spl_json_value_value_t_t*
  %string = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %30, i32 0, i32 0
  %string17 = bitcast i32* %string to i8**
  %31 = load i8*, i8** %string17, align 8
  %32 = bitcast i8* %31 to i8**
  %33 = bitcast i8** %32 to i8*
  %34 = call i32 @c_TPtoO(i8* %33)
  %35 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %34, %35
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded16
  %36 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %37 = ptrtoint %Tstruct.Spl_json_value_t_t* %36 to i32
  %38 = call i8* @c_fetch_pointer_from_offset(i32 %37)
  %39 = call i1 @c_isTaintedPointerToTaintedMem(i8* %38)
  br i1 %39, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.subsumption
  %40 = bitcast i8* %38 to %Tstruct.Spl_json_value_t_t*
  %value20 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %40, i32 0, i32 2
  %value21 = bitcast %Tstruct.Spl_json_value_value_t_t* %value20 to %Tstruct.Spl_json_value_value_t_t*
  %41 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value21 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded19
  %44 = bitcast i8* %42 to %Tstruct.Spl_json_value_value_t_t*
  %string24 = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %44, i32 0, i32 0
  %string25 = bitcast i32* %string24 to i8**
  %45 = load i8*, i8** %string25, align 8
  %46 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %47 = ptrtoint %Tstruct.Spl_json_value_t_t* %46 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded23
  %50 = bitcast i8* %48 to %Tstruct.Spl_json_value_t_t*
  %value28 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %50, i32 0, i32 2
  %value29 = bitcast %Tstruct.Spl_json_value_value_t_t* %value28 to %Tstruct.Spl_json_value_value_t_t*
  %51 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value29 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded27
  %54 = bitcast i8* %52 to %Tstruct.Spl_json_value_value_t_t*
  %string32 = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %54, i32 0, i32 0
  %string33 = bitcast i32* %string32 to i8**
  %55 = load i8*, i8** %string33, align 8
  %add.ptr = getelementptr inbounds i8, i8* %55, i64 0
  %56 = call i32 @c_TPtoO(i8* %31)
  %57 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %56, %57
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %_Dynamic_check.succeeded31
  %add.ptr36 = getelementptr inbounds i8, i8* %31, i64 0
  %58 = call i32 @c_TPtoO(i8* %45)
  %59 = inttoptr i32 %58 to i8*
  %60 = call i32 @c_TPtoO(i8* %31)
  %61 = inttoptr i32 %60 to i8*
  %62 = call i32 @c_TPtoO(i8* %59)
  %63 = call i32 @c_TPtoO(i8* %61)
  %_Dynamic_check.lower = icmp ule i32 %62, %63
  %64 = call i32 @c_TPtoO(i8* %add.ptr36)
  %65 = inttoptr i32 %64 to i8*
  %66 = call i32 @c_TPtoO(i8* %add.ptr)
  %67 = inttoptr i32 %66 to i8*
  %68 = call i32 @c_TPtoO(i8* %65)
  %69 = call i32 @c_TPtoO(i8* %67)
  %_Dynamic_check.upper = icmp ule i32 %68, %69
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed37

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded35, %_Dynamic_check.succeeded16
  %70 = ptrtoint i8** %32 to i32
  %71 = call i8* @c_fetch_pointer_from_offset(i32 %70)
  %72 = call i1 @c_isTaintedPointerToTaintedMem(i8* %71)
  br i1 %72, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %_Dynamic_check.success
  %73 = bitcast i8* %71 to i8**
  %74 = bitcast i8** %73 to i8*
  call void @t_free(i8* %74)
  br label %sw.epilog

_Dynamic_check.failed11:                          ; preds = %sw.bb10
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded19
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed34:                          ; preds = %_Dynamic_check.succeeded31
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed37:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed38:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

sw.bb40:                                          ; preds = %_Dynamic_check.succeeded
  %75 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %76 = ptrtoint %Tstruct.Spl_json_value_t_t* %75 to i32
  %77 = call i8* @c_fetch_pointer_from_offset(i32 %76)
  %78 = call i1 @c_isTaintedPointerToTaintedMem(i8* %77)
  br i1 %78, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %sw.bb40
  %79 = bitcast i8* %77 to %Tstruct.Spl_json_value_t_t*
  %value43 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %79, i32 0, i32 2
  %value44 = bitcast %Tstruct.Spl_json_value_value_t_t* %value43 to %Tstruct.Spl_json_value_value_t_t*
  %80 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value44 to i32
  %81 = call i8* @c_fetch_pointer_from_offset(i32 %80)
  %82 = call i1 @c_isTaintedPointerToTaintedMem(i8* %81)
  br i1 %82, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded42
  %83 = bitcast i8* %81 to %Tstruct.Spl_json_value_value_t_t*
  %array = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %83, i32 0, i32 3
  %array47 = bitcast i32* %array to %Tstruct.Spl_json_array_t_t**
  %84 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array47, align 4
  %85 = ptrtoint %Tstruct.Spl_json_array_t_t* %84 to i32
  %86 = call i8* @c_fetch_pointer_from_offset(i32 %85)
  %87 = call i1 @c_isTaintedPointerToTaintedMem(i8* %86)
  br i1 %87, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %_Dynamic_check.succeeded46
  %88 = bitcast i8* %86 to %Tstruct.Spl_json_array_t_t*
  call void bitcast (void (%Tstruct.Spl_json_array_t_t*)* @json_array_free to void (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %88)
  br label %sw.epilog

_Dynamic_check.failed41:                          ; preds = %sw.bb40
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed45:                          ; preds = %_Dynamic_check.succeeded42
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed48:                          ; preds = %_Dynamic_check.succeeded46
  call void @llvm.trap() #9
  unreachable

sw.default:                                       ; preds = %_Dynamic_check.succeeded
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %_Dynamic_check.succeeded49, %_Dynamic_check.succeeded39, %_Dynamic_check.succeeded9
  %89 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %90 = bitcast %Tstruct.Spl_json_value_t_t* %89 to i8*
  %91 = call i32 @c_TPtoO(i8* %90)
  %92 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null50 = icmp eq i32 %91, %92
  br i1 %_Dynamic_check.is_null50, label %_Dynamic_check.success61, label %_Dynamic_check.subsumption51

_Dynamic_check.subsumption51:                     ; preds = %sw.epilog
  %93 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %94 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %add.ptr52 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %94, i64 1
  %95 = bitcast %Tstruct.Spl_json_value_t_t* %89 to i8*
  %96 = bitcast i8* %95 to %Tstruct.Spl_json_value_t_t*
  %97 = bitcast %Tstruct.Spl_json_value_t_t* %89 to i8*
  %98 = call i32 @c_TPtoO(i8* %97)
  %99 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null53 = icmp ne i32 %98, %99
  br i1 %_Dynamic_check.non_null53, label %_Dynamic_check.succeeded55, label %_Dynamic_check.failed54

_Dynamic_check.succeeded55:                       ; preds = %_Dynamic_check.subsumption51
  %add.ptr56 = getelementptr inbounds i8, i8* %97, i64 0
  %100 = bitcast i8* %add.ptr56 to %Tstruct.Spl_json_value_t_t*
  %101 = bitcast %Tstruct.Spl_json_value_t_t* %93 to i8*
  %102 = call i32 @c_TPtoO(i8* %101)
  %103 = inttoptr i32 %102 to %Tstruct.Spl_json_value_t_t*
  %104 = bitcast %Tstruct.Spl_json_value_t_t* %96 to i8*
  %105 = call i32 @c_TPtoO(i8* %104)
  %106 = inttoptr i32 %105 to %Tstruct.Spl_json_value_t_t*
  %107 = bitcast %Tstruct.Spl_json_value_t_t* %103 to i8*
  %108 = call i32 @c_TPtoO(i8* %107)
  %109 = bitcast %Tstruct.Spl_json_value_t_t* %106 to i8*
  %110 = call i32 @c_TPtoO(i8* %109)
  %_Dynamic_check.lower57 = icmp ule i32 %108, %110
  %111 = bitcast %Tstruct.Spl_json_value_t_t* %100 to i8*
  %112 = call i32 @c_TPtoO(i8* %111)
  %113 = inttoptr i32 %112 to %Tstruct.Spl_json_value_t_t*
  %114 = bitcast %Tstruct.Spl_json_value_t_t* %add.ptr52 to i8*
  %115 = call i32 @c_TPtoO(i8* %114)
  %116 = inttoptr i32 %115 to %Tstruct.Spl_json_value_t_t*
  %117 = bitcast %Tstruct.Spl_json_value_t_t* %113 to i8*
  %118 = call i32 @c_TPtoO(i8* %117)
  %119 = bitcast %Tstruct.Spl_json_value_t_t* %116 to i8*
  %120 = call i32 @c_TPtoO(i8* %119)
  %_Dynamic_check.upper58 = icmp ule i32 %118, %120
  %_Dynamic_check.cast59 = and i1 %_Dynamic_check.lower57, %_Dynamic_check.upper58
  br i1 %_Dynamic_check.cast59, label %_Dynamic_check.success61, label %_Dynamic_check.failed60

_Dynamic_check.success61:                         ; preds = %_Dynamic_check.succeeded55, %sw.epilog
  %121 = ptrtoint %Tstruct.Spl_json_value_t_t* %89 to i32
  %122 = call i8* @c_fetch_pointer_from_offset(i32 %121)
  %123 = call i1 @c_isTaintedPointerToTaintedMem(i8* %122)
  br i1 %123, label %_Dynamic_check.succeeded63, label %_Dynamic_check.failed62

_Dynamic_check.succeeded63:                       ; preds = %_Dynamic_check.success61
  %124 = bitcast i8* %122 to %Tstruct.Spl_json_value_t_t*
  %125 = bitcast %Tstruct.Spl_json_value_t_t* %124 to i8*
  call void @t_free(i8* %125)
  ret void

_Dynamic_check.failed54:                          ; preds = %_Dynamic_check.subsumption51
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded55
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed62:                          ; preds = %_Dynamic_check.success61
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local %Tstruct.Spl_json_object_t_t* @json_object_init(%Tstruct.json_value_t_t* %wrapping_value_ip) #0 {
entry:
  %wrapping_value_ip.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %wrapping_value_ip to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %wrapping_value_ip.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value_ip.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = ptrtoint i8* %call to i64
  %6 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %5)
  %call1 = call i32 @w2c_json_object_init(i8* %6, i32 %4)
  %conv = zext i32 %call1 to i64
  %7 = inttoptr i64 %conv to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %7
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
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %new_value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %call = call i8* @t_malloc(i64 56)
  %0 = bitcast i8* %call to %Tstruct.json_value_t_t*
  %1 = bitcast %Tstruct.json_value_t_t* %0 to i8*
  %2 = call i32 @c_TPtoO(i8* %1)
  %3 = inttoptr i32 %2 to %Tstruct.json_value_t_t*
  %4 = bitcast %Tstruct.json_value_t_t* %3 to %Tstruct.Spl_json_value_t_t*
  %5 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %6 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %5, i32* %6, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %7 to i8*
  %9 = call i32 @c_TPtoO(i8* %8)
  %10 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %9, %10
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %15, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %16 = bitcast %Tstruct.Spl_json_value_t_t** %parent1 to i32*
  store i32 0, i32* %16, align 4
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %21, i32 0, i32 1
  store i32 5, i32* %type, align 4
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %23 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded3
  %26 = bitcast i8* %24 to %Tstruct.Spl_json_value_t_t*
  %call6 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.json_array_t_t* (%Tstruct.json_value_t_t*)* @json_array_init to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %26)
  %27 = bitcast %Tstruct.Spl_json_array_t_t* %call6 to %Tstruct.json_array_t_t*
  %28 = bitcast %Tstruct.json_array_t_t* %27 to i8*
  %29 = call i32 @c_TPtoO(i8* %28)
  %30 = inttoptr i32 %29 to %Tstruct.json_array_t_t*
  %31 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %32 = ptrtoint %Tstruct.Spl_json_value_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded5
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_value_t_t*
  %value = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %35, i32 0, i32 2
  %value9 = bitcast %Tstruct.Spl_json_value_value_t_t* %value to %Tstruct.Spl_json_value_value_t_t*
  %36 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value9 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %39 = bitcast i8* %37 to %Tstruct.Spl_json_value_value_t_t*
  %array = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %39, i32 0, i32 3
  %array12 = bitcast i32* %array to %Tstruct.Spl_json_array_t_t**
  %40 = bitcast %Tstruct.json_array_t_t* %30 to %Tstruct.Spl_json_array_t_t*
  %41 = ptrtoint %Tstruct.Spl_json_array_t_t* %40 to i32
  %42 = bitcast %Tstruct.Spl_json_array_t_t** %array12 to i32*
  store i32 %41, i32* %42, align 4
  %43 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %44 = ptrtoint %Tstruct.Spl_json_value_t_t* %43 to i32
  %45 = call i8* @c_fetch_pointer_from_offset(i32 %44)
  %46 = call i1 @c_isTaintedPointerToTaintedMem(i8* %45)
  br i1 %46, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.succeeded11
  %47 = bitcast i8* %45 to %Tstruct.Spl_json_value_t_t*
  %value15 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %47, i32 0, i32 2
  %value16 = bitcast %Tstruct.Spl_json_value_value_t_t* %value15 to %Tstruct.Spl_json_value_value_t_t*
  %48 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value16 to i32
  %49 = call i8* @c_fetch_pointer_from_offset(i32 %48)
  %50 = call i1 @c_isTaintedPointerToTaintedMem(i8* %49)
  br i1 %50, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded14
  %51 = bitcast i8* %49 to %Tstruct.Spl_json_value_value_t_t*
  %array19 = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %51, i32 0, i32 3
  %array20 = bitcast i32* %array19 to %Tstruct.Spl_json_array_t_t**
  %52 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array20, align 4
  %53 = bitcast %Tstruct.Spl_json_array_t_t* %52 to i8*
  %54 = call i32 @c_TPtoO(i8* %53)
  %55 = call i32 @c_TPtoO(i8* null)
  %tobool21 = icmp ne i32 %54, %55
  br i1 %tobool21, label %if.end25, label %if.then22

if.then22:                                        ; preds = %_Dynamic_check.succeeded18
  %56 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %57 = ptrtoint %Tstruct.Spl_json_value_t_t* %56 to i32
  %58 = call i8* @c_fetch_pointer_from_offset(i32 %57)
  %59 = call i1 @c_isTaintedPointerToTaintedMem(i8* %58)
  br i1 %59, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.then22
  %60 = bitcast i8* %58 to %Tstruct.Spl_json_value_t_t*
  %61 = bitcast %Tstruct.Spl_json_value_t_t* %60 to i8*
  call void @t_free(i8* %61)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed23:                          ; preds = %if.then22
  call void @llvm.trap() #9
  unreachable

if.end25:                                         ; preds = %_Dynamic_check.succeeded18
  %62 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_value_t_t* %62, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end25, %_Dynamic_check.succeeded24, %if.then
  %63 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %63
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_value_t_t* @json_value_init_string(i8* %string) #2 {
entry:
  %retval = alloca %Tstruct.Spl_json_value_t_t*, align 8
  %string.addr = alloca i8*, align 4
  %copy = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %string_len = alloca i64, align 8
  %str_with_len = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = bitcast i8** %copy to i32*
  store i32 0, i32* %2, align 4
  %3 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 0, i32* %3, align 4
  store i64 0, i64* %string_len, align 8
  %4 = load i8*, i8** %string.addr, align 4
  %5 = ptrtoint i8* %4 to i32
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %string.addr, align 4
  %7 = ptrtoint i8* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %call = call i64 @t_strlen(i8* %8)
  store i64 %call, i64* %string_len, align 8
  %10 = bitcast i8** %str_with_len to i32*
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %string.addr, align 4
  %12 = ptrtoint i8* %11 to i32
  %13 = bitcast i8** %str_with_len to i32*
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %str_with_len, align 4
  %15 = load i64, i64* %string_len, align 8
  %16 = ptrtoint i8* %14 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call3 = call i32 @is_valid_utf8(i8* %17, i64 %15)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end5, label %if.then4

if.then4:                                         ; preds = %_Dynamic_check.succeeded2
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

if.end5:                                          ; preds = %_Dynamic_check.succeeded2
  %19 = load i8*, i8** %str_with_len, align 4
  %20 = load i64, i64* %string_len, align 8
  %21 = ptrtoint i8* %19 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.end5
  %call8 = call i8* @tainted_parson_strndup(i8* %22, i64 %20)
  %24 = call i32 @c_TPtoO(i8* %call8)
  %25 = inttoptr i32 %24 to i8*
  %26 = ptrtoint i8* %25 to i32
  %27 = bitcast i8** %copy to i32*
  store i32 %26, i32* %27, align 4
  %28 = load i8*, i8** %copy, align 4
  %29 = ptrtoint i8* %28 to i32
  %cmp9 = icmp eq i32 %29, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %_Dynamic_check.succeeded7
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed6:                           ; preds = %if.end5
  call void @llvm.trap() #9
  unreachable

if.end11:                                         ; preds = %_Dynamic_check.succeeded7
  %30 = load i8*, i8** %copy, align 4
  %31 = ptrtoint i8* %30 to i32
  %32 = call i8* @c_fetch_pointer_from_offset(i32 %31)
  %33 = call i1 @c_isTaintedPointerToTaintedMem(i8* %32)
  br i1 %33, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %if.end11
  %call14 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*)* @json_value_init_string_no_copy to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %32)
  %34 = bitcast %Tstruct.Spl_json_value_t_t* %call14 to %Tstruct.json_value_t_t*
  %35 = bitcast %Tstruct.json_value_t_t* %34 to i8*
  %36 = call i32 @c_TPtoO(i8* %35)
  %37 = inttoptr i32 %36 to %Tstruct.json_value_t_t*
  %38 = bitcast %Tstruct.json_value_t_t* %37 to %Tstruct.Spl_json_value_t_t*
  %39 = ptrtoint %Tstruct.Spl_json_value_t_t* %38 to i32
  %40 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %39, i32* %40, align 4
  %41 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %42 = ptrtoint %Tstruct.Spl_json_value_t_t* %41 to i32
  %cmp15 = icmp eq i32 %42, 0
  br i1 %cmp15, label %if.then16, label %if.end23

if.then16:                                        ; preds = %_Dynamic_check.succeeded13
  %43 = load i8*, i8** %copy, align 4
  %44 = call i32 @c_TPtoO(i8* %43)
  %45 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %44, %45
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then16
  %46 = load i8*, i8** %copy, align 4
  %47 = load i8*, i8** %copy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %47, i64 0
  %48 = call i32 @c_TPtoO(i8* %43)
  %49 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %48, %49
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr19 = getelementptr inbounds i8, i8* %43, i64 0
  %50 = call i32 @c_TPtoO(i8* %46)
  %51 = inttoptr i32 %50 to i8*
  %52 = call i32 @c_TPtoO(i8* %43)
  %53 = inttoptr i32 %52 to i8*
  %54 = call i32 @c_TPtoO(i8* %51)
  %55 = call i32 @c_TPtoO(i8* %53)
  %_Dynamic_check.lower = icmp ule i32 %54, %55
  %56 = call i32 @c_TPtoO(i8* %add.ptr19)
  %57 = inttoptr i32 %56 to i8*
  %58 = call i32 @c_TPtoO(i8* %add.ptr)
  %59 = inttoptr i32 %58 to i8*
  %60 = call i32 @c_TPtoO(i8* %57)
  %61 = call i32 @c_TPtoO(i8* %59)
  %_Dynamic_check.upper = icmp ule i32 %60, %61
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed20

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded18, %if.then16
  %62 = ptrtoint i8* %43 to i32
  %63 = call i8* @c_fetch_pointer_from_offset(i32 %62)
  %64 = call i1 @c_isTaintedPointerToTaintedMem(i8* %63)
  br i1 %64, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.success
  call void @t_free(i8* %63)
  br label %if.end23

_Dynamic_check.failed12:                          ; preds = %if.end11
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

if.end23:                                         ; preds = %_Dynamic_check.succeeded22, %_Dynamic_check.succeeded13
  %65 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  store %Tstruct.Spl_json_value_t_t* %65, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end23, %if.then10, %if.then4, %if.then
  %66 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_utf8(i8* %string, i64 %string_len) #2 {
entry:
  %retval = alloca i32, align 4
  %string.addr = alloca i8*, align 4
  %string_len.addr = alloca i64, align 8
  %len = alloca i32*, align 4
  %string_end = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  store i64 %string_len, i64* %string_len.addr, align 8
  %call = call i8* @t_malloc(i64 4)
  %2 = call i32 @c_TPtoO(i8* %call)
  %3 = inttoptr i32 %2 to i8*
  %4 = bitcast i8* %3 to i32*
  %5 = ptrtoint i32* %4 to i32
  %6 = bitcast i32** %len to i32*
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %len, align 4
  %8 = ptrtoint i32* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %11 = bitcast i8* %9 to i32*
  store i32 0, i32* %11, align 4
  %12 = load i8*, i8** %string.addr, align 4
  %13 = load i64, i64* %string_len.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %13
  %14 = call i32 @c_TPtoO(i8* %add.ptr)
  %15 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %14, %15
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded
  %16 = load i8*, i8** %string.addr, align 4
  %17 = load i8*, i8** %string.addr, align 4
  %18 = load i64, i64* %string_len.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %17, i64 %18
  %add.ptr2 = getelementptr inbounds i8, i8* %add.ptr, i64 0
  %19 = call i32 @c_TPtoO(i8* %16)
  %20 = inttoptr i32 %19 to i8*
  %21 = call i32 @c_TPtoO(i8* %add.ptr)
  %22 = inttoptr i32 %21 to i8*
  %23 = call i32 @c_TPtoO(i8* %20)
  %24 = call i32 @c_TPtoO(i8* %22)
  %_Dynamic_check.lower = icmp ule i32 %23, %24
  %25 = call i32 @c_TPtoO(i8* %add.ptr2)
  %26 = inttoptr i32 %25 to i8*
  %27 = call i32 @c_TPtoO(i8* %add.ptr1)
  %28 = inttoptr i32 %27 to i8*
  %29 = call i32 @c_TPtoO(i8* %26)
  %30 = call i32 @c_TPtoO(i8* %28)
  %_Dynamic_check.upper = icmp ule i32 %29, %30
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed3

_Dynamic_check.success:                           ; preds = %_Dynamic_check.subsumption, %_Dynamic_check.succeeded
  %31 = ptrtoint i8* %add.ptr to i32
  %32 = bitcast i8** %string_end to i32*
  store i32 %31, i32* %32, align 4
  br label %while.cond

while.cond:                                       ; preds = %_Dynamic_check.succeeded21, %_Dynamic_check.success
  %33 = load i8*, i8** %string.addr, align 4
  %34 = load i8*, i8** %string_end, align 4
  %35 = ptrtoint i8* %33 to i32
  %36 = ptrtoint i8* %34 to i32
  %cmp = icmp ult i32 %35, %36
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %37 = load i8*, i8** %string.addr, align 4
  %38 = call i32 @c_TPtoO(i8* %37)
  %39 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null4 = icmp eq i32 %38, %39
  br i1 %_Dynamic_check.is_null4, label %_Dynamic_check.success12, label %_Dynamic_check.subsumption5

_Dynamic_check.subsumption5:                      ; preds = %while.body
  %40 = load i8*, i8** %string.addr, align 4
  %41 = load i8*, i8** %string.addr, align 4
  %42 = load i64, i64* %string_len.addr, align 8
  %add.ptr6 = getelementptr inbounds i8, i8* %41, i64 %42
  %add.ptr7 = getelementptr inbounds i8, i8* %37, i64 0
  %43 = call i32 @c_TPtoO(i8* %40)
  %44 = inttoptr i32 %43 to i8*
  %45 = call i32 @c_TPtoO(i8* %37)
  %46 = inttoptr i32 %45 to i8*
  %47 = call i32 @c_TPtoO(i8* %44)
  %48 = call i32 @c_TPtoO(i8* %46)
  %_Dynamic_check.lower8 = icmp ule i32 %47, %48
  %49 = call i32 @c_TPtoO(i8* %add.ptr7)
  %50 = inttoptr i32 %49 to i8*
  %51 = call i32 @c_TPtoO(i8* %add.ptr6)
  %52 = inttoptr i32 %51 to i8*
  %53 = call i32 @c_TPtoO(i8* %50)
  %54 = call i32 @c_TPtoO(i8* %52)
  %_Dynamic_check.upper9 = icmp ule i32 %53, %54
  %_Dynamic_check.cast10 = and i1 %_Dynamic_check.lower8, %_Dynamic_check.upper9
  br i1 %_Dynamic_check.cast10, label %_Dynamic_check.success12, label %_Dynamic_check.failed11

_Dynamic_check.success12:                         ; preds = %_Dynamic_check.subsumption5, %while.body
  %55 = load i32*, i32** %len, align 4
  %56 = ptrtoint i8* %37 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.success12
  %59 = ptrtoint i32* %55 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded14
  %62 = bitcast i8* %60 to i32*
  %call17 = call i32 @verify_utf8_sequence(i8* %57, i32* %62)
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %_Dynamic_check.succeeded16
  %63 = load i32*, i32** %len, align 4
  %64 = bitcast i32* %63 to i8*
  %65 = ptrtoint i8* %64 to i32
  %66 = call i8* @c_fetch_pointer_from_offset(i32 %65)
  %67 = call i1 @c_isTaintedPointerToTaintedMem(i8* %66)
  br i1 %67, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %if.then
  call void @t_free(i8* %66)
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.subsumption5
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.success12
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed18:                          ; preds = %if.then
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded16
  %68 = load i32*, i32** %len, align 4
  %69 = ptrtoint i32* %68 to i32
  %70 = call i8* @c_fetch_pointer_from_offset(i32 %69)
  %71 = call i1 @c_isTaintedPointerToTaintedMem(i8* %70)
  br i1 %71, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %if.end
  %72 = bitcast i8* %70 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %string.addr, align 4
  %idx.ext = sext i32 %73 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %74, i64 %idx.ext
  %75 = ptrtoint i8* %add.ptr22 to i32
  %76 = bitcast i8** %string.addr to i32*
  store i32 %75, i32* %76, align 4
  br label %while.cond, !llvm.loop !8

_Dynamic_check.failed20:                          ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

while.end:                                        ; preds = %while.cond
  %77 = load i32*, i32** %len, align 4
  %78 = bitcast i32* %77 to i8*
  %79 = ptrtoint i8* %78 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %while.end
  call void @t_free(i8* %80)
  store i32 1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed23:                          ; preds = %while.end
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded24, %_Dynamic_check.succeeded19
  %82 = load i32, i32* %retval, align 4
  ret i32 %82
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
  %2 = call i32 @c_TPtoO(i8* %1)
  %3 = inttoptr i32 %2 to %Tstruct.json_value_t_t*
  %4 = bitcast %Tstruct.json_value_t_t* %3 to %Tstruct.Spl_json_value_t_t*
  %5 = ptrtoint %Tstruct.Spl_json_value_t_t* %4 to i32
  %6 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %5, i32* %6, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %7 to i8*
  %9 = call i32 @c_TPtoO(i8* %8)
  %10 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %9, %10
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %15, i32 0, i32 0
  %parent1 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %16 = bitcast %Tstruct.Spl_json_value_t_t** %parent1 to i32*
  store i32 0, i32* %16, align 4
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %type = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %21, i32 0, i32 1
  store i32 6, i32* %type, align 4
  %22 = load i32, i32* %boolean.addr, align 4
  %tobool4 = icmp ne i32 %22, 0
  %23 = zext i1 %tobool4 to i64
  %cond = select i1 %tobool4, i32 1, i32 0
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %25 = ptrtoint %Tstruct.Spl_json_value_t_t* %24 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_value_t_t*
  %value = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %28, i32 0, i32 2
  %value7 = bitcast %Tstruct.Spl_json_value_value_t_t* %value to %Tstruct.Spl_json_value_value_t_t*
  %29 = ptrtoint %Tstruct.Spl_json_value_value_t_t* %value7 to i32
  %30 = call i8* @c_fetch_pointer_from_offset(i32 %29)
  %31 = call i1 @c_isTaintedPointerToTaintedMem(i8* %30)
  br i1 %31, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded6
  %32 = bitcast i8* %30 to %Tstruct.Spl_json_value_value_t_t*
  %boolean10 = getelementptr inbounds %Tstruct.Spl_json_value_value_t_t, %Tstruct.Spl_json_value_value_t_t* %32, i32 0, i32 4
  store i32 %cond, i32* %boolean10, align 8
  %33 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  store %Tstruct.Spl_json_value_t_t* %33, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded9, %if.then
  %34 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %34
}

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
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 0, i64* %i, align 8
  %3 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 0, i32* %3, align 4
  %4 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value_copy to i32*
  store i32 0, i32* %4, align 4
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 0, i32* %5, align 4
  %6 = bitcast i8** %temp_string to i32*
  store i32 0, i32* %6, align 4
  %7 = bitcast i8** %temp_key to i32*
  store i32 0, i32* %7, align 4
  %8 = bitcast i8** %temp_string_copy to i32*
  store i32 0, i32* %8, align 4
  %9 = bitcast %Tstruct.Spl_json_array_t_t** %temp_array to i32*
  store i32 0, i32* %9, align 4
  %10 = bitcast %Tstruct.Spl_json_array_t_t** %temp_array_copy to i32*
  store i32 0, i32* %10, align 4
  %11 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object to i32*
  store i32 0, i32* %11, align 4
  %12 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object_copy to i32*
  store i32 0, i32* %12, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
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
  call void @llvm.trap() #9
  unreachable

sw.bb:                                            ; preds = %_Dynamic_check.succeeded
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %sw.bb
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  %call3 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %22)
  %23 = bitcast %Tstruct.Spl_json_array_t_t* %call3 to %Tstruct.json_array_t_t*
  %24 = bitcast %Tstruct.json_array_t_t* %23 to i8*
  %25 = call i32 @c_TPtoO(i8* %24)
  %26 = inttoptr i32 %25 to %Tstruct.json_array_t_t*
  %27 = bitcast %Tstruct.json_array_t_t* %26 to %Tstruct.Spl_json_array_t_t*
  %28 = ptrtoint %Tstruct.Spl_json_array_t_t* %27 to i32
  %29 = bitcast %Tstruct.Spl_json_array_t_t** %temp_array to i32*
  store i32 %28, i32* %29, align 4
  %call4 = call %Tstruct.Spl_json_value_t_t* @json_value_init_array()
  %30 = bitcast %Tstruct.Spl_json_value_t_t* %call4 to %Tstruct.json_value_t_t*
  %31 = bitcast %Tstruct.json_value_t_t* %30 to i8*
  %32 = call i32 @c_TPtoO(i8* %31)
  %33 = inttoptr i32 %32 to %Tstruct.json_value_t_t*
  %34 = bitcast %Tstruct.json_value_t_t* %33 to %Tstruct.Spl_json_value_t_t*
  %35 = ptrtoint %Tstruct.Spl_json_value_t_t* %34 to i32
  %36 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 %35, i32* %36, align 4
  %37 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %38 = ptrtoint %Tstruct.Spl_json_value_t_t* %37 to i32
  %cmp = icmp eq i32 %38, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded2
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed1:                           ; preds = %sw.bb
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded2
  %39 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %40 = ptrtoint %Tstruct.Spl_json_value_t_t* %39 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %if.end
  %43 = bitcast i8* %41 to %Tstruct.Spl_json_value_t_t*
  %call7 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %43)
  %44 = bitcast %Tstruct.Spl_json_array_t_t* %call7 to %Tstruct.json_array_t_t*
  %45 = bitcast %Tstruct.json_array_t_t* %44 to i8*
  %46 = call i32 @c_TPtoO(i8* %45)
  %47 = inttoptr i32 %46 to %Tstruct.json_array_t_t*
  %48 = bitcast %Tstruct.json_array_t_t* %47 to %Tstruct.Spl_json_array_t_t*
  %49 = ptrtoint %Tstruct.Spl_json_array_t_t* %48 to i32
  %50 = bitcast %Tstruct.Spl_json_array_t_t** %temp_array_copy to i32*
  store i32 %49, i32* %50, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %_Dynamic_check.succeeded6
  %51 = load i64, i64* %i, align 8
  %52 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array, align 4
  %53 = ptrtoint %Tstruct.Spl_json_array_t_t* %52 to i32
  %54 = call i8* @c_fetch_pointer_from_offset(i32 %53)
  %55 = call i1 @c_isTaintedPointerToTaintedMem(i8* %54)
  br i1 %55, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %for.cond
  %56 = bitcast i8* %54 to %Tstruct.Spl_json_array_t_t*
  %call10 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %56)
  %cmp11 = icmp ult i64 %51, %call10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded9
  %57 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array, align 4
  %58 = load i64, i64* %i, align 8
  %59 = ptrtoint %Tstruct.Spl_json_array_t_t* %57 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %for.body
  %62 = bitcast i8* %60 to %Tstruct.Spl_json_array_t_t*
  %call14 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %62, i64 %58)
  %63 = bitcast %Tstruct.Spl_json_value_t_t* %call14 to %Tstruct.json_value_t_t*
  %64 = bitcast %Tstruct.json_value_t_t* %63 to i8*
  %65 = call i32 @c_TPtoO(i8* %64)
  %66 = inttoptr i32 %65 to %Tstruct.json_value_t_t*
  %67 = bitcast %Tstruct.json_value_t_t* %66 to %Tstruct.Spl_json_value_t_t*
  %68 = ptrtoint %Tstruct.Spl_json_value_t_t* %67 to i32
  %69 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %68, i32* %69, align 4
  %70 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %71 = ptrtoint %Tstruct.Spl_json_value_t_t* %70 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded13
  %74 = bitcast i8* %72 to %Tstruct.Spl_json_value_t_t*
  %call17 = call %Tstruct.Spl_json_value_t_t* @json_value_deep_copy(%Tstruct.Spl_json_value_t_t* %74)
  %75 = bitcast %Tstruct.Spl_json_value_t_t* %call17 to %Tstruct.json_value_t_t*
  %76 = bitcast %Tstruct.json_value_t_t* %75 to i8*
  %77 = call i32 @c_TPtoO(i8* %76)
  %78 = inttoptr i32 %77 to %Tstruct.json_value_t_t*
  %79 = bitcast %Tstruct.json_value_t_t* %78 to %Tstruct.Spl_json_value_t_t*
  %80 = ptrtoint %Tstruct.Spl_json_value_t_t* %79 to i32
  %81 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value_copy to i32*
  store i32 %80, i32* %81, align 4
  %82 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %83 = ptrtoint %Tstruct.Spl_json_value_t_t* %82 to i32
  %cmp18 = icmp eq i32 %83, 0
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %_Dynamic_check.succeeded16
  %84 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %85 = ptrtoint %Tstruct.Spl_json_value_t_t* %84 to i32
  %86 = call i8* @c_fetch_pointer_from_offset(i32 %85)
  %87 = call i1 @c_isTaintedPointerToTaintedMem(i8* %86)
  br i1 %87, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %if.then19
  %88 = bitcast i8* %86 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %88)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed5:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %for.cond
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %for.body
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded13
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed20:                          ; preds = %if.then19
  call void @llvm.trap() #9
  unreachable

if.end22:                                         ; preds = %_Dynamic_check.succeeded16
  %89 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %temp_array_copy, align 4
  %90 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %91 = ptrtoint %Tstruct.Spl_json_array_t_t* %89 to i32
  %92 = call i8* @c_fetch_pointer_from_offset(i32 %91)
  %93 = call i1 @c_isTaintedPointerToTaintedMem(i8* %92)
  br i1 %93, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end22
  %94 = bitcast i8* %92 to %Tstruct.Spl_json_array_t_t*
  %95 = ptrtoint %Tstruct.Spl_json_value_t_t* %90 to i32
  %96 = call i8* @c_fetch_pointer_from_offset(i32 %95)
  %97 = call i1 @c_isTaintedPointerToTaintedMem(i8* %96)
  br i1 %97, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded24
  %98 = bitcast i8* %96 to %Tstruct.Spl_json_value_t_t*
  %call27 = call i32 bitcast (i32 (%Tstruct.json_array_t_t*, %Tstruct.json_value_t_t*)* @json_array_add to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %94, %Tstruct.Spl_json_value_t_t* %98)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %if.then29, label %if.end34

if.then29:                                        ; preds = %_Dynamic_check.succeeded26
  %99 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %100 = ptrtoint %Tstruct.Spl_json_value_t_t* %99 to i32
  %101 = call i8* @c_fetch_pointer_from_offset(i32 %100)
  %102 = call i1 @c_isTaintedPointerToTaintedMem(i8* %101)
  br i1 %102, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %if.then29
  %103 = bitcast i8* %101 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %103)
  %104 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %105 = ptrtoint %Tstruct.Spl_json_value_t_t* %104 to i32
  %106 = call i8* @c_fetch_pointer_from_offset(i32 %105)
  %107 = call i1 @c_isTaintedPointerToTaintedMem(i8* %106)
  br i1 %107, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %_Dynamic_check.succeeded31
  %108 = bitcast i8* %106 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %108)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed23:                          ; preds = %if.end22
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed30:                          ; preds = %if.then29
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed32:                          ; preds = %_Dynamic_check.succeeded31
  call void @llvm.trap() #9
  unreachable

if.end34:                                         ; preds = %_Dynamic_check.succeeded26
  br label %for.inc

for.inc:                                          ; preds = %if.end34
  %109 = load i64, i64* %i, align 8
  %inc = add i64 %109, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %_Dynamic_check.succeeded9
  %110 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %110, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb35:                                          ; preds = %_Dynamic_check.succeeded
  %111 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %112 = ptrtoint %Tstruct.Spl_json_value_t_t* %111 to i32
  %113 = call i8* @c_fetch_pointer_from_offset(i32 %112)
  %114 = call i1 @c_isTaintedPointerToTaintedMem(i8* %113)
  br i1 %114, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %sw.bb35
  %115 = bitcast i8* %113 to %Tstruct.Spl_json_value_t_t*
  %call38 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %115)
  %116 = bitcast %Tstruct.Spl_json_object_t_t* %call38 to %Tstruct.json_object_t_t*
  %117 = bitcast %Tstruct.json_object_t_t* %116 to i8*
  %118 = call i32 @c_TPtoO(i8* %117)
  %119 = inttoptr i32 %118 to %Tstruct.json_object_t_t*
  %120 = bitcast %Tstruct.json_object_t_t* %119 to %Tstruct.Spl_json_object_t_t*
  %121 = ptrtoint %Tstruct.Spl_json_object_t_t* %120 to i32
  %122 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object to i32*
  store i32 %121, i32* %122, align 4
  %call39 = call %Tstruct.Spl_json_value_t_t* @json_value_init_object()
  %123 = bitcast %Tstruct.Spl_json_value_t_t* %call39 to %Tstruct.json_value_t_t*
  %124 = bitcast %Tstruct.json_value_t_t* %123 to i8*
  %125 = call i32 @c_TPtoO(i8* %124)
  %126 = inttoptr i32 %125 to %Tstruct.json_value_t_t*
  %127 = bitcast %Tstruct.json_value_t_t* %126 to %Tstruct.Spl_json_value_t_t*
  %128 = ptrtoint %Tstruct.Spl_json_value_t_t* %127 to i32
  %129 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 %128, i32* %129, align 4
  %130 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %131 = ptrtoint %Tstruct.Spl_json_value_t_t* %130 to i32
  %cmp40 = icmp eq i32 %131, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %_Dynamic_check.succeeded37
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed36:                          ; preds = %sw.bb35
  call void @llvm.trap() #9
  unreachable

if.end42:                                         ; preds = %_Dynamic_check.succeeded37
  %132 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %133 = ptrtoint %Tstruct.Spl_json_value_t_t* %132 to i32
  %134 = call i8* @c_fetch_pointer_from_offset(i32 %133)
  %135 = call i1 @c_isTaintedPointerToTaintedMem(i8* %134)
  br i1 %135, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %if.end42
  %136 = bitcast i8* %134 to %Tstruct.Spl_json_value_t_t*
  %call45 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %136)
  %137 = bitcast %Tstruct.Spl_json_object_t_t* %call45 to %Tstruct.json_object_t_t*
  %138 = bitcast %Tstruct.json_object_t_t* %137 to i8*
  %139 = call i32 @c_TPtoO(i8* %138)
  %140 = inttoptr i32 %139 to %Tstruct.json_object_t_t*
  %141 = bitcast %Tstruct.json_object_t_t* %140 to %Tstruct.Spl_json_object_t_t*
  %142 = ptrtoint %Tstruct.Spl_json_object_t_t* %141 to i32
  %143 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object_copy to i32*
  store i32 %142, i32* %143, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc82, %_Dynamic_check.succeeded44
  %144 = load i64, i64* %i, align 8
  %145 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %146 = ptrtoint %Tstruct.Spl_json_object_t_t* %145 to i32
  %147 = call i8* @c_fetch_pointer_from_offset(i32 %146)
  %148 = call i1 @c_isTaintedPointerToTaintedMem(i8* %147)
  br i1 %148, label %_Dynamic_check.succeeded48, label %_Dynamic_check.failed47

_Dynamic_check.succeeded48:                       ; preds = %for.cond46
  %149 = bitcast i8* %147 to %Tstruct.Spl_json_object_t_t*
  %call49 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %149)
  %cmp50 = icmp ult i64 %144, %call49
  br i1 %cmp50, label %for.body51, label %for.end84

for.body51:                                       ; preds = %_Dynamic_check.succeeded48
  %150 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %151 = load i64, i64* %i, align 8
  %152 = ptrtoint %Tstruct.Spl_json_object_t_t* %150 to i32
  %153 = call i8* @c_fetch_pointer_from_offset(i32 %152)
  %154 = call i1 @c_isTaintedPointerToTaintedMem(i8* %153)
  br i1 %154, label %_Dynamic_check.succeeded53, label %_Dynamic_check.failed52

_Dynamic_check.succeeded53:                       ; preds = %for.body51
  %155 = bitcast i8* %153 to %Tstruct.Spl_json_object_t_t*
  %call54 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %155, i64 %151)
  %156 = call i32 @c_TPtoO(i8* %call54)
  %157 = inttoptr i32 %156 to i8*
  %158 = ptrtoint i8* %157 to i32
  %159 = bitcast i8** %temp_key to i32*
  store i32 %158, i32* %159, align 4
  %160 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %161 = load i8*, i8** %temp_key, align 4
  %162 = ptrtoint %Tstruct.Spl_json_object_t_t* %160 to i32
  %163 = call i8* @c_fetch_pointer_from_offset(i32 %162)
  %164 = call i1 @c_isTaintedPointerToTaintedMem(i8* %163)
  br i1 %164, label %_Dynamic_check.succeeded56, label %_Dynamic_check.failed55

_Dynamic_check.succeeded56:                       ; preds = %_Dynamic_check.succeeded53
  %165 = bitcast i8* %163 to %Tstruct.Spl_json_object_t_t*
  %166 = ptrtoint i8* %161 to i32
  %167 = call i8* @c_fetch_pointer_from_offset(i32 %166)
  %168 = call i1 @c_isTaintedPointerToTaintedMem(i8* %167)
  br i1 %168, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %_Dynamic_check.succeeded56
  %call59 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %165, i8* %167)
  %169 = bitcast %Tstruct.Spl_json_value_t_t* %call59 to %Tstruct.json_value_t_t*
  %170 = bitcast %Tstruct.json_value_t_t* %169 to i8*
  %171 = call i32 @c_TPtoO(i8* %170)
  %172 = inttoptr i32 %171 to %Tstruct.json_value_t_t*
  %173 = bitcast %Tstruct.json_value_t_t* %172 to %Tstruct.Spl_json_value_t_t*
  %174 = ptrtoint %Tstruct.Spl_json_value_t_t* %173 to i32
  %175 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %174, i32* %175, align 4
  %176 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %177 = ptrtoint %Tstruct.Spl_json_value_t_t* %176 to i32
  %178 = call i8* @c_fetch_pointer_from_offset(i32 %177)
  %179 = call i1 @c_isTaintedPointerToTaintedMem(i8* %178)
  br i1 %179, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded58
  %180 = bitcast i8* %178 to %Tstruct.Spl_json_value_t_t*
  %call62 = call %Tstruct.Spl_json_value_t_t* @json_value_deep_copy(%Tstruct.Spl_json_value_t_t* %180)
  %181 = bitcast %Tstruct.Spl_json_value_t_t* %call62 to %Tstruct.json_value_t_t*
  %182 = bitcast %Tstruct.json_value_t_t* %181 to i8*
  %183 = call i32 @c_TPtoO(i8* %182)
  %184 = inttoptr i32 %183 to %Tstruct.json_value_t_t*
  %185 = bitcast %Tstruct.json_value_t_t* %184 to %Tstruct.Spl_json_value_t_t*
  %186 = ptrtoint %Tstruct.Spl_json_value_t_t* %185 to i32
  %187 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value_copy to i32*
  store i32 %186, i32* %187, align 4
  %188 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %189 = ptrtoint %Tstruct.Spl_json_value_t_t* %188 to i32
  %cmp63 = icmp eq i32 %189, 0
  br i1 %cmp63, label %if.then64, label %if.end67

if.then64:                                        ; preds = %_Dynamic_check.succeeded61
  %190 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %191 = ptrtoint %Tstruct.Spl_json_value_t_t* %190 to i32
  %192 = call i8* @c_fetch_pointer_from_offset(i32 %191)
  %193 = call i1 @c_isTaintedPointerToTaintedMem(i8* %192)
  br i1 %193, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %if.then64
  %194 = bitcast i8* %192 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %194)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed43:                          ; preds = %if.end42
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed47:                          ; preds = %for.cond46
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed52:                          ; preds = %for.body51
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed55:                          ; preds = %_Dynamic_check.succeeded53
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed57:                          ; preds = %_Dynamic_check.succeeded56
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded58
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed65:                          ; preds = %if.then64
  call void @llvm.trap() #9
  unreachable

if.end67:                                         ; preds = %_Dynamic_check.succeeded61
  %195 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object_copy, align 4
  %196 = load i8*, i8** %temp_key, align 4
  %197 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %198 = ptrtoint %Tstruct.Spl_json_object_t_t* %195 to i32
  %199 = call i8* @c_fetch_pointer_from_offset(i32 %198)
  %200 = call i1 @c_isTaintedPointerToTaintedMem(i8* %199)
  br i1 %200, label %_Dynamic_check.succeeded69, label %_Dynamic_check.failed68

_Dynamic_check.succeeded69:                       ; preds = %if.end67
  %201 = bitcast i8* %199 to %Tstruct.Spl_json_object_t_t*
  %202 = ptrtoint i8* %196 to i32
  %203 = call i8* @c_fetch_pointer_from_offset(i32 %202)
  %204 = call i1 @c_isTaintedPointerToTaintedMem(i8* %203)
  br i1 %204, label %_Dynamic_check.succeeded71, label %_Dynamic_check.failed70

_Dynamic_check.succeeded71:                       ; preds = %_Dynamic_check.succeeded69
  %205 = ptrtoint %Tstruct.Spl_json_value_t_t* %197 to i32
  %206 = call i8* @c_fetch_pointer_from_offset(i32 %205)
  %207 = call i1 @c_isTaintedPointerToTaintedMem(i8* %206)
  br i1 %207, label %_Dynamic_check.succeeded73, label %_Dynamic_check.failed72

_Dynamic_check.succeeded73:                       ; preds = %_Dynamic_check.succeeded71
  %208 = bitcast i8* %206 to %Tstruct.Spl_json_value_t_t*
  %call74 = call i32 bitcast (i32 (%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*)* @json_object_add to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %201, i8* %203, %Tstruct.Spl_json_value_t_t* %208)
  %cmp75 = icmp eq i32 %call74, -1
  br i1 %cmp75, label %if.then76, label %if.end81

if.then76:                                        ; preds = %_Dynamic_check.succeeded73
  %209 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %210 = ptrtoint %Tstruct.Spl_json_value_t_t* %209 to i32
  %211 = call i8* @c_fetch_pointer_from_offset(i32 %210)
  %212 = call i1 @c_isTaintedPointerToTaintedMem(i8* %211)
  br i1 %212, label %_Dynamic_check.succeeded78, label %_Dynamic_check.failed77

_Dynamic_check.succeeded78:                       ; preds = %if.then76
  %213 = bitcast i8* %211 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %213)
  %214 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value_copy, align 4
  %215 = ptrtoint %Tstruct.Spl_json_value_t_t* %214 to i32
  %216 = call i8* @c_fetch_pointer_from_offset(i32 %215)
  %217 = call i1 @c_isTaintedPointerToTaintedMem(i8* %216)
  br i1 %217, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %_Dynamic_check.succeeded78
  %218 = bitcast i8* %216 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %218)
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed68:                          ; preds = %if.end67
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed70:                          ; preds = %_Dynamic_check.succeeded69
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed72:                          ; preds = %_Dynamic_check.succeeded71
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed77:                          ; preds = %if.then76
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed79:                          ; preds = %_Dynamic_check.succeeded78
  call void @llvm.trap() #9
  unreachable

if.end81:                                         ; preds = %_Dynamic_check.succeeded73
  br label %for.inc82

for.inc82:                                        ; preds = %if.end81
  %219 = load i64, i64* %i, align 8
  %inc83 = add i64 %219, 1
  store i64 %inc83, i64* %i, align 8
  br label %for.cond46, !llvm.loop !10

for.end84:                                        ; preds = %_Dynamic_check.succeeded48
  %220 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %220, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb85:                                          ; preds = %_Dynamic_check.succeeded
  %221 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %222 = ptrtoint %Tstruct.Spl_json_value_t_t* %221 to i32
  %223 = call i8* @c_fetch_pointer_from_offset(i32 %222)
  %224 = call i1 @c_isTaintedPointerToTaintedMem(i8* %223)
  br i1 %224, label %_Dynamic_check.succeeded87, label %_Dynamic_check.failed86

_Dynamic_check.succeeded87:                       ; preds = %sw.bb85
  %225 = bitcast i8* %223 to %Tstruct.Spl_json_value_t_t*
  %call88 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %225)
  %call89 = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %call88)
  %226 = bitcast %Tstruct.Spl_json_value_t_t* %call89 to %Tstruct.json_value_t_t*
  %227 = bitcast %Tstruct.json_value_t_t* %226 to i8*
  %228 = call i32 @c_TPtoO(i8* %227)
  %229 = inttoptr i32 %228 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %229, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed86:                          ; preds = %sw.bb85
  call void @llvm.trap() #9
  unreachable

sw.bb90:                                          ; preds = %_Dynamic_check.succeeded
  %230 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %231 = ptrtoint %Tstruct.Spl_json_value_t_t* %230 to i32
  %232 = call i8* @c_fetch_pointer_from_offset(i32 %231)
  %233 = call i1 @c_isTaintedPointerToTaintedMem(i8* %232)
  br i1 %233, label %_Dynamic_check.succeeded92, label %_Dynamic_check.failed91

_Dynamic_check.succeeded92:                       ; preds = %sw.bb90
  %234 = bitcast i8* %232 to %Tstruct.Spl_json_value_t_t*
  %call93 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %234)
  %call94 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (double)* @json_value_init_number to %Tstruct.Spl_json_value_t_t* (double)*)(double %call93)
  %235 = bitcast %Tstruct.Spl_json_value_t_t* %call94 to %Tstruct.json_value_t_t*
  %236 = bitcast %Tstruct.json_value_t_t* %235 to i8*
  %237 = call i32 @c_TPtoO(i8* %236)
  %238 = inttoptr i32 %237 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %238, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed91:                          ; preds = %sw.bb90
  call void @llvm.trap() #9
  unreachable

sw.bb95:                                          ; preds = %_Dynamic_check.succeeded
  %239 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %240 = ptrtoint %Tstruct.Spl_json_value_t_t* %239 to i32
  %241 = call i8* @c_fetch_pointer_from_offset(i32 %240)
  %242 = call i1 @c_isTaintedPointerToTaintedMem(i8* %241)
  br i1 %242, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %sw.bb95
  %243 = bitcast i8* %241 to %Tstruct.Spl_json_value_t_t*
  %call98 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %243)
  %244 = call i32 @c_TPtoO(i8* %call98)
  %245 = inttoptr i32 %244 to i8*
  %246 = ptrtoint i8* %245 to i32
  %247 = bitcast i8** %temp_string to i32*
  store i32 %246, i32* %247, align 4
  %248 = load i8*, i8** %temp_string, align 4
  %249 = ptrtoint i8* %248 to i32
  %cmp99 = icmp eq i32 %249, 0
  br i1 %cmp99, label %if.then100, label %if.end101

if.then100:                                       ; preds = %_Dynamic_check.succeeded97
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed96:                          ; preds = %sw.bb95
  call void @llvm.trap() #9
  unreachable

if.end101:                                        ; preds = %_Dynamic_check.succeeded97
  %250 = load i8*, i8** %temp_string, align 4
  %251 = ptrtoint i8* %250 to i32
  %252 = call i8* @c_fetch_pointer_from_offset(i32 %251)
  %253 = call i1 @c_isTaintedPointerToTaintedMem(i8* %252)
  br i1 %253, label %_Dynamic_check.succeeded103, label %_Dynamic_check.failed102

_Dynamic_check.succeeded103:                      ; preds = %if.end101
  %call104 = call i8* @tainted_parson_strdup(i8* %252)
  %254 = call i32 @c_TPtoO(i8* %call104)
  %255 = inttoptr i32 %254 to i8*
  %256 = ptrtoint i8* %255 to i32
  %257 = bitcast i8** %temp_string_copy to i32*
  store i32 %256, i32* %257, align 4
  %258 = load i8*, i8** %temp_string_copy, align 4
  %259 = ptrtoint i8* %258 to i32
  %cmp105 = icmp eq i32 %259, 0
  br i1 %cmp105, label %if.then106, label %if.end107

if.then106:                                       ; preds = %_Dynamic_check.succeeded103
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed102:                         ; preds = %if.end101
  call void @llvm.trap() #9
  unreachable

if.end107:                                        ; preds = %_Dynamic_check.succeeded103
  %260 = load i8*, i8** %temp_string_copy, align 4
  %261 = ptrtoint i8* %260 to i32
  %262 = call i8* @c_fetch_pointer_from_offset(i32 %261)
  %263 = call i1 @c_isTaintedPointerToTaintedMem(i8* %262)
  br i1 %263, label %_Dynamic_check.succeeded109, label %_Dynamic_check.failed108

_Dynamic_check.succeeded109:                      ; preds = %if.end107
  %call110 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (i8*)* @json_value_init_string_no_copy to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %262)
  %264 = bitcast %Tstruct.Spl_json_value_t_t* %call110 to %Tstruct.json_value_t_t*
  %265 = bitcast %Tstruct.json_value_t_t* %264 to i8*
  %266 = call i32 @c_TPtoO(i8* %265)
  %267 = inttoptr i32 %266 to %Tstruct.json_value_t_t*
  %268 = bitcast %Tstruct.json_value_t_t* %267 to %Tstruct.Spl_json_value_t_t*
  %269 = ptrtoint %Tstruct.Spl_json_value_t_t* %268 to i32
  %270 = bitcast %Tstruct.Spl_json_value_t_t** %return_value to i32*
  store i32 %269, i32* %270, align 4
  %271 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  %272 = ptrtoint %Tstruct.Spl_json_value_t_t* %271 to i32
  %cmp111 = icmp eq i32 %272, 0
  br i1 %cmp111, label %if.then112, label %if.end119

if.then112:                                       ; preds = %_Dynamic_check.succeeded109
  %273 = load i8*, i8** %temp_string_copy, align 4
  %274 = call i32 @c_TPtoO(i8* %273)
  %275 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %274, %275
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then112
  %276 = load i8*, i8** %temp_string_copy, align 4
  %277 = load i8*, i8** %temp_string_copy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %277, i64 0
  %278 = call i32 @c_TPtoO(i8* %273)
  %279 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %278, %279
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded114, label %_Dynamic_check.failed113

_Dynamic_check.succeeded114:                      ; preds = %_Dynamic_check.subsumption
  %add.ptr115 = getelementptr inbounds i8, i8* %273, i64 0
  %280 = call i32 @c_TPtoO(i8* %276)
  %281 = inttoptr i32 %280 to i8*
  %282 = call i32 @c_TPtoO(i8* %273)
  %283 = inttoptr i32 %282 to i8*
  %284 = call i32 @c_TPtoO(i8* %281)
  %285 = call i32 @c_TPtoO(i8* %283)
  %_Dynamic_check.lower = icmp ule i32 %284, %285
  %286 = call i32 @c_TPtoO(i8* %add.ptr115)
  %287 = inttoptr i32 %286 to i8*
  %288 = call i32 @c_TPtoO(i8* %add.ptr)
  %289 = inttoptr i32 %288 to i8*
  %290 = call i32 @c_TPtoO(i8* %287)
  %291 = call i32 @c_TPtoO(i8* %289)
  %_Dynamic_check.upper = icmp ule i32 %290, %291
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed116

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded114, %if.then112
  %292 = ptrtoint i8* %273 to i32
  %293 = call i8* @c_fetch_pointer_from_offset(i32 %292)
  %294 = call i1 @c_isTaintedPointerToTaintedMem(i8* %293)
  br i1 %294, label %_Dynamic_check.succeeded118, label %_Dynamic_check.failed117

_Dynamic_check.succeeded118:                      ; preds = %_Dynamic_check.success
  call void @t_free(i8* %293)
  br label %if.end119

_Dynamic_check.failed108:                         ; preds = %if.end107
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed113:                         ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed116:                         ; preds = %_Dynamic_check.succeeded114
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed117:                         ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

if.end119:                                        ; preds = %_Dynamic_check.succeeded118, %_Dynamic_check.succeeded109
  %295 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %return_value, align 4
  store %Tstruct.Spl_json_value_t_t* %295, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb120:                                         ; preds = %_Dynamic_check.succeeded
  %call121 = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %296 = bitcast %Tstruct.Spl_json_value_t_t* %call121 to %Tstruct.json_value_t_t*
  %297 = bitcast %Tstruct.json_value_t_t* %296 to i8*
  %298 = call i32 @c_TPtoO(i8* %297)
  %299 = inttoptr i32 %298 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %299, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.bb122:                                         ; preds = %_Dynamic_check.succeeded
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

sw.default:                                       ; preds = %_Dynamic_check.succeeded
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %sw.default, %sw.bb122, %sw.bb120, %if.end119, %if.then106, %if.then100, %_Dynamic_check.succeeded92, %_Dynamic_check.succeeded87, %for.end84, %_Dynamic_check.succeeded80, %_Dynamic_check.succeeded66, %if.then41, %for.end, %_Dynamic_check.succeeded33, %_Dynamic_check.succeeded21, %if.then
  %300 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %300
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @json_serialization_size(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %num_buf = alloca i8*, align 4
  %res = alloca i32, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* @parson_string_tainted_malloc(i64 64)
  %3 = call i32 @c_TPtoO(i8* %call)
  %4 = inttoptr i32 %3 to i8*
  %5 = ptrtoint i8* %4 to i32
  %6 = bitcast i8** %num_buf to i32*
  store i32 %5, i32* %6, align 4
  %7 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %8 = load i8*, i8** %num_buf, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %10 = call i8* @c_fetch_pointer_from_offset(i32 %9)
  %11 = call i1 @c_isTaintedPointerToTaintedMem(i8* %10)
  br i1 %11, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %12 = bitcast i8* %10 to %Tstruct.Spl_json_value_t_t*
  %13 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %15 = ptrtoint i8* %8 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %18 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %call7 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %12, i8* %13, i32 0, i32 0, i8* %16, i8* %18, i64 0)
  store i32 %call7, i32* %res, align 4
  %20 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %20, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded6
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded6
  %21 = load i32, i32* %res, align 4
  %add = add nsw i32 %21, 1
  %conv = sext i32 %add to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %conv, %cond.false ]
  ret i64 %cond

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #9
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
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %buf to i32
  %4 = bitcast i8** %buf.addr to i32*
  store i32 %3, i32* %4, align 4
  store i64 %buf_size_in_bytes, i64* %buf_size_in_bytes.addr, align 8
  store i32 -1, i32* %written, align 4
  %5 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i32
  %7 = call i8* @c_fetch_pointer_from_offset(i32 %6)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %9 = bitcast i8* %7 to %Tstruct.Spl_json_value_t_t*
  %call = call i64 @json_serialization_size(%Tstruct.Spl_json_value_t_t* %9)
  store i64 %call, i64* %needed_size_in_bytes, align 8
  %10 = load i64, i64* %needed_size_in_bytes, align 8
  %cmp = icmp eq i64 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %_Dynamic_check.succeeded
  %11 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %12 = load i64, i64* %needed_size_in_bytes, align 8
  %cmp1 = icmp ult i64 %11, %12
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %14 = load i8*, i8** %buf.addr, align 4
  %15 = load i8*, i8** %buf.addr, align 4
  %16 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %17 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %if.end
  %20 = bitcast i8* %18 to %Tstruct.Spl_json_value_t_t*
  %21 = ptrtoint i8* %14 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded3
  %24 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded5
  %26 = ptrtoint i8* %15 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded7
  %call10 = call i32 @json_serialize_to_buffer_r(%Tstruct.Spl_json_value_t_t* %20, i8* %22, i32 0, i32 0, i8* %24, i8* %27, i64 %16)
  store i32 %call10, i32* %written, align 4
  %29 = load i32, i32* %written, align 4
  %cmp11 = icmp slt i32 %29, 0
  br i1 %cmp11, label %if.then12, label %if.end19

if.then12:                                        ; preds = %_Dynamic_check.succeeded9
  %30 = load i8*, i8** %buf.addr, align 4
  %31 = ptrtoint i8* %30 to i32
  %32 = call i8* @c_fetch_pointer_from_offset(i32 %31)
  %33 = call i1 @c_isTaintedPointerToTaintedMem(i8* %32)
  br i1 %33, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.then12
  %arrayidx = getelementptr inbounds i8, i8* %32, i64 0
  %34 = call i32 @c_TPtoO(i8* %arrayidx)
  %35 = inttoptr i32 %34 to i8*
  %36 = load i8*, i8** %buf.addr, align 4
  %37 = load i8*, i8** %buf.addr, align 4
  %38 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %39 = call i32 @c_TPtoO(i8* %37)
  %40 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %39, %40
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded14
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %38
  %41 = call i32 @c_TPtoO(i8* %add.ptr)
  %42 = inttoptr i32 %41 to i8*
  %43 = call i32 @c_TPtoO(i8* %36)
  %44 = inttoptr i32 %43 to i8*
  %45 = call i32 @c_TPtoO(i8* %44)
  %46 = call i32 @c_TPtoO(i8* %35)
  %_Dynamic_check.lower = icmp ule i32 %45, %46
  %47 = call i32 @c_TPtoO(i8* %35)
  %48 = call i32 @c_TPtoO(i8* %42)
  %_Dynamic_check.upper = icmp ult i32 %47, %48
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  store i8 0, i8* %arrayidx, align 1
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed2:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed13:                          ; preds = %if.then12
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #9
  unreachable

if.end19:                                         ; preds = %_Dynamic_check.succeeded9
  %49 = load i8*, i8** %buf.addr, align 4
  %50 = load i32, i32* %written, align 4
  %idxprom = sext i32 %50 to i64
  %51 = ptrtoint i8* %49 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %if.end19
  %arrayidx22 = getelementptr inbounds i8, i8* %52, i64 %idxprom
  %54 = call i32 @c_TPtoO(i8* %arrayidx22)
  %55 = inttoptr i32 %54 to i8*
  %56 = load i8*, i8** %buf.addr, align 4
  %57 = load i8*, i8** %buf.addr, align 4
  %58 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %59 = call i32 @c_TPtoO(i8* %57)
  %60 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null23 = icmp ne i32 %59, %60
  br i1 %_Dynamic_check.non_null23, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded21
  %add.ptr26 = getelementptr inbounds i8, i8* %57, i64 %58
  %61 = call i32 @c_TPtoO(i8* %add.ptr26)
  %62 = inttoptr i32 %61 to i8*
  %63 = call i32 @c_TPtoO(i8* %56)
  %64 = inttoptr i32 %63 to i8*
  %65 = call i32 @c_TPtoO(i8* %64)
  %66 = call i32 @c_TPtoO(i8* %55)
  %_Dynamic_check.lower27 = icmp ule i32 %65, %66
  %67 = call i32 @c_TPtoO(i8* %55)
  %68 = call i32 @c_TPtoO(i8* %62)
  %_Dynamic_check.upper28 = icmp ult i32 %67, %68
  %_Dynamic_check.range29 = and i1 %_Dynamic_check.lower27, %_Dynamic_check.upper28
  br i1 %_Dynamic_check.range29, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded25
  store i8 0, i8* %arrayidx22, align 1
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed20:                          ; preds = %if.end19
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded31, %_Dynamic_check.succeeded18, %if.then
  %69 = load i32, i32* %retval, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_serialize_to_buffer_pretty(%Tstruct.json_value_t_t* %value, i8* %buf, i64 %buf_size_in_bytes) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %buf.addr = alloca i8*, align 4
  %buf_size_in_bytes.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %buf to i32
  %4 = bitcast i8** %buf.addr to i32*
  store i32 %3, i32* %4, align 4
  store i64 %buf_size_in_bytes, i64* %buf_size_in_bytes.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %5 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i32
  %7 = load i8*, i8** %buf.addr, align 4
  %8 = ptrtoint i8* %7 to i32
  %9 = load i64, i64* %buf_size_in_bytes.addr, align 8
  %10 = ptrtoint i8* %call to i64
  %11 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %10)
  %call1 = call i64 @w2c_json_serialize_to_buffer_pretty(i8* %11, i32 %6, i32 %8, i64 %9)
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
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  store i32 -1, i32* %serialization_result, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i64 @json_serialization_size(%Tstruct.Spl_json_value_t_t* %7)
  store i64 %call, i64* %buf_size_bytes, align 8
  %8 = bitcast i8** %buf to i32*
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* %buf_size_bytes, align 8
  %cmp = icmp eq i64 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded
  store i8* null, i8** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %10 = load i64, i64* %buf_size_bytes, align 8
  %call1 = call i8* @parson_string_tainted_malloc(i64 %10)
  %11 = call i32 @c_TPtoO(i8* %call1)
  %12 = inttoptr i32 %11 to i8*
  %13 = ptrtoint i8* %12 to i32
  %14 = bitcast i8** %buf to i32*
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** %buf, align 4
  %16 = ptrtoint i8* %15 to i32
  %cmp2 = icmp eq i32 %16, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8
  br label %return

if.end4:                                          ; preds = %if.end
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %18 = load i8*, i8** %buf, align 4
  %19 = load i64, i64* %buf_size_bytes, align 8
  %20 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %if.end4
  %23 = bitcast i8* %21 to %Tstruct.Spl_json_value_t_t*
  %24 = ptrtoint i8* %18 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %call9 = call i32 @json_serialize_to_buffer(%Tstruct.Spl_json_value_t_t* %23, i8* %25, i64 %19)
  store i32 %call9, i32* %serialization_result, align 4
  %27 = load i32, i32* %serialization_result, align 4
  %cmp10 = icmp eq i32 %27, -1
  br i1 %cmp10, label %if.then11, label %if.end18

if.then11:                                        ; preds = %_Dynamic_check.succeeded8
  %28 = load i8*, i8** %buf, align 4
  %29 = call i32 @c_TPtoO(i8* %28)
  %30 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %29, %30
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then11
  %31 = load i8*, i8** %buf, align 4
  %32 = load i8*, i8** %buf, align 4
  %33 = load i64, i64* %buf_size_bytes, align 8
  %34 = call i32 @c_TPtoO(i8* %32)
  %35 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %34, %35
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr = getelementptr inbounds i8, i8* %32, i64 %33
  %add.ptr14 = getelementptr inbounds i8, i8* %28, i64 0
  %36 = call i32 @c_TPtoO(i8* %31)
  %37 = inttoptr i32 %36 to i8*
  %38 = call i32 @c_TPtoO(i8* %28)
  %39 = inttoptr i32 %38 to i8*
  %40 = call i32 @c_TPtoO(i8* %37)
  %41 = call i32 @c_TPtoO(i8* %39)
  %_Dynamic_check.lower = icmp ule i32 %40, %41
  %42 = call i32 @c_TPtoO(i8* %add.ptr14)
  %43 = inttoptr i32 %42 to i8*
  %44 = call i32 @c_TPtoO(i8* %add.ptr)
  %45 = inttoptr i32 %44 to i8*
  %46 = call i32 @c_TPtoO(i8* %43)
  %47 = call i32 @c_TPtoO(i8* %45)
  %_Dynamic_check.upper = icmp ule i32 %46, %47
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed15

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded13, %if.then11
  %48 = ptrtoint i8* %28 to i32
  %49 = call i8* @c_fetch_pointer_from_offset(i32 %48)
  %50 = call i1 @c_isTaintedPointerToTaintedMem(i8* %49)
  br i1 %50, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.success
  call void @json_free_serialized_string(i8* %49)
  store i8* null, i8** %retval, align 8
  br label %return

_Dynamic_check.failed5:                           ; preds = %if.end4
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded13
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

if.end18:                                         ; preds = %_Dynamic_check.succeeded8
  %51 = load i8*, i8** %buf, align 4
  store i8* %51, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end18, %_Dynamic_check.succeeded17, %if.then3, %if.then
  %52 = load i8*, i8** %retval, align 8
  ret i8* %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_free_serialized_string(i8* %string) #2 {
entry:
  %string.addr = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = load i8*, i8** %string.addr, align 4
  %3 = call i32 @c_TPtoO(i8* %2)
  %4 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %3, %4
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %entry
  %5 = load i8*, i8** %string.addr, align 4
  %6 = load i8*, i8** %string.addr, align 4
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 0
  %7 = call i32 @c_TPtoO(i8* %2)
  %8 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %7, %8
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %_Dynamic_check.subsumption
  %add.ptr1 = getelementptr inbounds i8, i8* %2, i64 0
  %9 = call i32 @c_TPtoO(i8* %5)
  %10 = inttoptr i32 %9 to i8*
  %11 = call i32 @c_TPtoO(i8* %2)
  %12 = inttoptr i32 %11 to i8*
  %13 = call i32 @c_TPtoO(i8* %10)
  %14 = call i32 @c_TPtoO(i8* %12)
  %_Dynamic_check.lower = icmp ule i32 %13, %14
  %15 = call i32 @c_TPtoO(i8* %add.ptr1)
  %16 = inttoptr i32 %15 to i8*
  %17 = call i32 @c_TPtoO(i8* %add.ptr)
  %18 = inttoptr i32 %17 to i8*
  %19 = call i32 @c_TPtoO(i8* %16)
  %20 = call i32 @c_TPtoO(i8* %18)
  %_Dynamic_check.upper = icmp ule i32 %19, %20
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed2

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded, %entry
  %21 = ptrtoint i8* %2 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.success
  call void @t_free(i8* %22)
  ret void

_Dynamic_check.failed:                            ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i64 @json_serialization_size_pretty(%Tstruct.json_value_t_t* %value) #0 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = ptrtoint i8* %call to i64
  %6 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %5)
  %call1 = call i64 @w2c_json_serialization_size_pretty(i8* %6, i32 %4)
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
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* %return_code, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_serialize_to_string_pretty to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  %8 = call i32 @c_TPtoO(i8* %call)
  %9 = inttoptr i32 %8 to i8*
  %10 = ptrtoint i8* %9 to i32
  %11 = bitcast i8** %serialized_string to i32*
  store i32 %10, i32* %11, align 4
  store i8* null, i8** %checked_serialized_string, align 8
  %12 = load i8*, i8** %serialized_string, align 4
  %13 = ptrtoint i8* %12 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call3 = call i64 @t_strlen(i8* %14)
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %len, align 4
  %16 = load i32, i32* %len, align 4
  %conv4 = sext i32 %16 to i64
  %mul = mul i64 %conv4, 1
  %call5 = call i8* @parson_string_malloc(i64 %mul)
  store i8* %call5, i8** %checked_serialized_string, align 8
  %17 = load i8*, i8** %checked_serialized_string, align 8
  %18 = load i8*, i8** %serialized_string, align 4
  %19 = ptrtoint i8* %17 to i64
  %20 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %19)
  %21 = ptrtoint i8* %18 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded2
  %call8 = call i8* @ct_strcpy(i8* %20, i8* %22)
  %24 = call i32 @c_TPtoO(i8* %call8)
  %25 = inttoptr i32 %24 to i8*
  %26 = load i8*, i8** %serialized_string, align 4
  %27 = ptrtoint i8* %26 to i32
  %cmp = icmp eq i32 %27, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded7
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded7
  %28 = load i8*, i8** %filename.addr, align 8
  %call10 = call %struct._IO_FILE* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store %struct._IO_FILE* %call10, %struct._IO_FILE** %fp, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %30 = bitcast %struct._IO_FILE* %29 to i8*
  %31 = call i32 @c_TPtoO(i8* %30)
  %32 = call i32 @c_TPtoO(i8* null)
  %cmp11 = icmp eq i32 %31, %32
  br i1 %cmp11, label %if.then13, label %if.end23

if.then13:                                        ; preds = %if.end
  %33 = load i8*, i8** %serialized_string, align 4
  %34 = ptrtoint i8* %33 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %if.then13
  call void @json_free_serialized_string(i8* %35)
  %37 = load i8*, i8** %checked_serialized_string, align 8
  %38 = call i32 @c_TPtoO(i8* %37)
  %39 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %38, %39
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded15
  %40 = load i8*, i8** %checked_serialized_string, align 8
  %41 = load i8*, i8** %checked_serialized_string, align 8
  %42 = call i32 @c_TPtoO(i8* %41)
  %43 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %42, %43
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 0
  %44 = call i32 @c_TPtoO(i8* %37)
  %45 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null18 = icmp ne i32 %44, %45
  br i1 %_Dynamic_check.non_null18, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.succeeded17
  %add.ptr21 = getelementptr inbounds i8, i8* %37, i64 0
  %46 = call i32 @c_TPtoO(i8* %40)
  %47 = inttoptr i32 %46 to i8*
  %48 = call i32 @c_TPtoO(i8* %37)
  %49 = inttoptr i32 %48 to i8*
  %50 = call i32 @c_TPtoO(i8* %47)
  %51 = call i32 @c_TPtoO(i8* %49)
  %_Dynamic_check.lower = icmp ule i32 %50, %51
  %52 = call i32 @c_TPtoO(i8* %add.ptr21)
  %53 = inttoptr i32 %52 to i8*
  %54 = call i32 @c_TPtoO(i8* %add.ptr)
  %55 = inttoptr i32 %54 to i8*
  %56 = call i32 @c_TPtoO(i8* %53)
  %57 = call i32 @c_TPtoO(i8* %55)
  %_Dynamic_check.upper = icmp ule i32 %56, %57
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed22

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded20, %_Dynamic_check.succeeded15
  call void @free(i8* %37) #11
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed14:                          ; preds = %if.then13
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.succeeded17
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #9
  unreachable

if.end23:                                         ; preds = %if.end
  %58 = load i8*, i8** %checked_serialized_string, align 8
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call24 = call i32 @fputs(i8* %58, %struct._IO_FILE* %59)
  %cmp25 = icmp eq i32 %call24, -1
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end23
  store i32 -1, i32* %return_code, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end23
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call29 = call i32 @fclose(%struct._IO_FILE* %60)
  %cmp30 = icmp eq i32 %call29, -1
  br i1 %cmp30, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.end28
  store i32 -1, i32* %return_code, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end28
  %61 = load i8*, i8** %serialized_string, align 4
  %62 = ptrtoint i8* %61 to i32
  %63 = call i8* @c_fetch_pointer_from_offset(i32 %62)
  %64 = call i1 @c_isTaintedPointerToTaintedMem(i8* %63)
  br i1 %64, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %if.end33
  call void @json_free_serialized_string(i8* %63)
  %65 = load i8*, i8** %checked_serialized_string, align 8
  %66 = call i32 @c_TPtoO(i8* %65)
  %67 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null36 = icmp eq i32 %66, %67
  br i1 %_Dynamic_check.is_null36, label %_Dynamic_check.success50, label %_Dynamic_check.subsumption37

_Dynamic_check.subsumption37:                     ; preds = %_Dynamic_check.succeeded35
  %68 = load i8*, i8** %checked_serialized_string, align 8
  %69 = load i8*, i8** %checked_serialized_string, align 8
  %70 = call i32 @c_TPtoO(i8* %69)
  %71 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null38 = icmp ne i32 %70, %71
  br i1 %_Dynamic_check.non_null38, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %_Dynamic_check.subsumption37
  %add.ptr41 = getelementptr inbounds i8, i8* %69, i64 0
  %72 = call i32 @c_TPtoO(i8* %65)
  %73 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null42 = icmp ne i32 %72, %73
  br i1 %_Dynamic_check.non_null42, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %_Dynamic_check.succeeded40
  %add.ptr45 = getelementptr inbounds i8, i8* %65, i64 0
  %74 = call i32 @c_TPtoO(i8* %68)
  %75 = inttoptr i32 %74 to i8*
  %76 = call i32 @c_TPtoO(i8* %65)
  %77 = inttoptr i32 %76 to i8*
  %78 = call i32 @c_TPtoO(i8* %75)
  %79 = call i32 @c_TPtoO(i8* %77)
  %_Dynamic_check.lower46 = icmp ule i32 %78, %79
  %80 = call i32 @c_TPtoO(i8* %add.ptr45)
  %81 = inttoptr i32 %80 to i8*
  %82 = call i32 @c_TPtoO(i8* %add.ptr41)
  %83 = inttoptr i32 %82 to i8*
  %84 = call i32 @c_TPtoO(i8* %81)
  %85 = call i32 @c_TPtoO(i8* %83)
  %_Dynamic_check.upper47 = icmp ule i32 %84, %85
  %_Dynamic_check.cast48 = and i1 %_Dynamic_check.lower46, %_Dynamic_check.upper47
  br i1 %_Dynamic_check.cast48, label %_Dynamic_check.success50, label %_Dynamic_check.failed49

_Dynamic_check.success50:                         ; preds = %_Dynamic_check.succeeded44, %_Dynamic_check.succeeded35
  call void @free(i8* %65) #11
  %86 = load i32, i32* %return_code, align 4
  store i32 %86, i32* %retval, align 4
  br label %return

_Dynamic_check.failed34:                          ; preds = %if.end33
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed39:                          ; preds = %_Dynamic_check.subsumption37
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded40
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed49:                          ; preds = %_Dynamic_check.succeeded44
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.success50, %_Dynamic_check.success, %if.then
  %87 = load i32, i32* %retval, align 4
  ret i32 %87
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
  %call = call noalias i8* @malloc(i64 %add) #11
  store i8* %call, i8** %p, align 8
  %2 = load i8*, i8** %p, align 8
  %3 = call i32 @c_TPtoO(i8* %2)
  %4 = call i32 @c_TPtoO(i8* null)
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %5 = load i8*, i8** %p, align 8
  %6 = load i64, i64* %sz.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %6
  store i8 0, i8* %arrayidx, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %7 = load i8*, i8** %p, align 8
  store i8* %7, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %8 = load i8*, i8** %retval, align 8
  ret i8* %8
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
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = ptrtoint i8* %call to i64
  %6 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %5)
  %call1 = call i32 @w2c_json_serialize_to_string_pretty(i8* %6, i32 %4)
  %conv = zext i32 %call1 to i64
  %7 = inttoptr i64 %conv to i8*
  ret i8* %7
}

declare dso_local i32 @w2c_json_serialize_to_string_pretty(i8*, i32) #1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_array_remove(%Tstruct.json_array_t_t* %array, i64 %ix) #0 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %ix.addr = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %ix, i64* %ix.addr, align 8
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %5 = load i64, i64* %ix.addr, align 8
  %6 = ptrtoint i8* %call to i64
  %7 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %6)
  %call1 = call i64 @w2c_json_array_remove(i8* %7, i32 %4, i64 %5)
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
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %ix, i64* %ix.addr, align 8
  %3 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %4, i32* %5, align 4
  %6 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %6 to i32
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false2
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %14, i32 0, i32 0
  %parent3 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent3, align 4
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %cmp4 = icmp ne i32 %16, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %_Dynamic_check.succeeded
  %17 = load i64, i64* %ix.addr, align 8
  %18 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %19 = ptrtoint %Tstruct.Spl_json_array_t_t* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %lor.lhs.false5
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_array_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %22)
  %cmp8 = icmp uge i64 %17, %call
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded7, %_Dynamic_check.succeeded, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %lor.lhs.false5
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded7
  %23 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %24 = load i64, i64* %ix.addr, align 8
  %25 = ptrtoint %Tstruct.Spl_json_array_t_t* %23 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %if.end
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_array_t_t*
  %call11 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %28, i64 %24)
  %29 = bitcast %Tstruct.Spl_json_value_t_t* %call11 to %Tstruct.json_value_t_t*
  %30 = bitcast %Tstruct.json_value_t_t* %29 to i8*
  %31 = call i32 @c_TPtoO(i8* %30)
  %32 = inttoptr i32 %31 to %Tstruct.Spl_json_value_t_t*
  %33 = ptrtoint %Tstruct.Spl_json_value_t_t* %32 to i32
  %34 = call i8* @c_fetch_pointer_from_offset(i32 %33)
  %35 = call i1 @c_isTaintedPointerToTaintedMem(i8* %34)
  br i1 %35, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded10
  %36 = bitcast i8* %34 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %36)
  %37 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %38 = ptrtoint %Tstruct.Spl_json_array_t_t* %37 to i32
  %39 = call i8* @c_fetch_pointer_from_offset(i32 %38)
  %40 = call i1 @c_isTaintedPointerToTaintedMem(i8* %39)
  br i1 %40, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.succeeded13
  %41 = bitcast i8* %39 to %Tstruct.Spl_json_array_t_t*
  %call16 = call %Tstruct.Spl_json_value_t_t* @json_array_get_wrapping_value(%Tstruct.Spl_json_array_t_t* %41)
  %42 = bitcast %Tstruct.Spl_json_value_t_t* %call16 to %Tstruct.json_value_t_t*
  %43 = bitcast %Tstruct.json_value_t_t* %42 to i8*
  %44 = call i32 @c_TPtoO(i8* %43)
  %45 = inttoptr i32 %44 to %Tstruct.json_value_t_t*
  %46 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %47 = ptrtoint %Tstruct.Spl_json_value_t_t* %46 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded15
  %50 = bitcast i8* %48 to %Tstruct.Spl_json_value_t_t*
  %parent19 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %50, i32 0, i32 0
  %parent20 = bitcast i32* %parent19 to %Tstruct.Spl_json_value_t_t**
  %51 = bitcast %Tstruct.json_value_t_t* %45 to %Tstruct.Spl_json_value_t_t*
  %52 = ptrtoint %Tstruct.Spl_json_value_t_t* %51 to i32
  %53 = bitcast %Tstruct.Spl_json_value_t_t** %parent20 to i32*
  store i32 %52, i32* %53, align 4
  %54 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %55 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %56 = ptrtoint %Tstruct.Spl_json_array_t_t* %55 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded18
  %59 = bitcast i8* %57 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %59, i32 0, i32 1
  %items23 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %60 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items23, align 4
  %61 = load i64, i64* %ix.addr, align 8
  %62 = ptrtoint %Tstruct.Spl_json_value_t_t** %60 to i32
  %63 = call i8* @c_fetch_pointer_from_offset(i32 %62)
  %64 = call i1 @c_isTaintedPointerToTaintedMem(i8* %63)
  br i1 %64, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded22
  %65 = bitcast i8* %63 to %Tstruct.Spl_json_value_t_t**
  %66 = bitcast %Tstruct.Spl_json_value_t_t** %65 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %66, i64 %61
  %67 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %68 = bitcast %Tstruct.Spl_json_value_t_t** %67 to i8*
  %69 = call i32 @c_TPtoO(i8* %68)
  %70 = inttoptr i32 %69 to %Tstruct.Spl_json_value_t_t**
  %71 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %72 = ptrtoint %Tstruct.Spl_json_array_t_t* %71 to i32
  %73 = call i8* @c_fetch_pointer_from_offset(i32 %72)
  %74 = call i1 @c_isTaintedPointerToTaintedMem(i8* %73)
  br i1 %74, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded25
  %75 = bitcast i8* %73 to %Tstruct.Spl_json_array_t_t*
  %items28 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %75, i32 0, i32 1
  %items29 = bitcast i32* %items28 to %Tstruct.Spl_json_value_t_t***
  %76 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items29, align 4
  %77 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %78 = ptrtoint %Tstruct.Spl_json_array_t_t* %77 to i32
  %79 = call i8* @c_fetch_pointer_from_offset(i32 %78)
  %80 = call i1 @c_isTaintedPointerToTaintedMem(i8* %79)
  br i1 %80, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded27
  %81 = bitcast i8* %79 to %Tstruct.Spl_json_array_t_t*
  %items32 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %81, i32 0, i32 1
  %items33 = bitcast i32* %items32 to %Tstruct.Spl_json_value_t_t***
  %82 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items33, align 4
  %83 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %84 = ptrtoint %Tstruct.Spl_json_array_t_t* %83 to i32
  %85 = call i8* @c_fetch_pointer_from_offset(i32 %84)
  %86 = call i1 @c_isTaintedPointerToTaintedMem(i8* %85)
  br i1 %86, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %_Dynamic_check.succeeded31
  %87 = bitcast i8* %85 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %87, i32 0, i32 3
  %88 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %88 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %82, i64 %idx.ext
  %89 = bitcast %Tstruct.Spl_json_value_t_t** %82 to i32*
  %90 = getelementptr inbounds i32, i32* %89, i64 %idx.ext
  %91 = bitcast i32* %90 to %Tstruct.Spl_json_value_t_t**
  %92 = bitcast %Tstruct.Spl_json_value_t_t** %91 to i8*
  %93 = call i32 @c_TPtoO(i8* %92)
  %94 = inttoptr i32 %93 to %Tstruct.Spl_json_value_t_t**
  %95 = bitcast %Tstruct.Spl_json_value_t_t** %76 to i8*
  %96 = call i32 @c_TPtoO(i8* %95)
  %97 = inttoptr i32 %96 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %97, %70
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %70, %94
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %_Dynamic_check.succeeded35
  %98 = ptrtoint %Tstruct.Spl_json_value_t_t* %54 to i32
  %99 = bitcast %Tstruct.Spl_json_value_t_t** %67 to i32*
  store i32 %98, i32* %99, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed9:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.succeeded13
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed34:                          ; preds = %_Dynamic_check.succeeded31
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed36:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded37, %if.then
  %100 = load i32, i32* %retval, align 4
  ret i32 %100
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
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %i, i64* %i.addr, align 8
  %3 = ptrtoint i8* %string to i32
  %4 = bitcast i8** %string.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load i8*, i8** %string.addr, align 4
  %6 = ptrtoint i8* %5 to i32
  %7 = call i8* @c_fetch_pointer_from_offset(i32 %6)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %7)
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to i8*
  %11 = call i32 @c_TPtoO(i8* %10)
  %12 = inttoptr i32 %11 to %Tstruct.json_value_t_t*
  %13 = bitcast %Tstruct.json_value_t_t* %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %14, i32* %15, align 4
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %17 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %18 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %19 = load i64, i64* %i.addr, align 8
  %20 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %21 = ptrtoint %Tstruct.Spl_json_array_t_t* %18 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %if.end
  %24 = bitcast i8* %22 to %Tstruct.Spl_json_array_t_t*
  %25 = ptrtoint %Tstruct.Spl_json_value_t_t* %20 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %24, i64 %19, %Tstruct.Spl_json_value_t_t* %28)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %_Dynamic_check.succeeded4
  %29 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %30 = ptrtoint %Tstruct.Spl_json_value_t_t* %29 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %if.then7
  %33 = bitcast i8* %31 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %33)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed1:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %if.then7
  call void @llvm.trap() #9
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %_Dynamic_check.succeeded9, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
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
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %i, i64* %i.addr, align 8
  store double %number, double* %number.addr, align 8
  %3 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (double)* @json_value_init_number to %Tstruct.Spl_json_value_t_t* (double)*)(double %3)
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to i8*
  %6 = call i32 @c_TPtoO(i8* %5)
  %7 = inttoptr i32 %6 to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to %Tstruct.Spl_json_value_t_t*
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %9, i32* %10, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %14 = load i64, i64* %i.addr, align 8
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %16 = ptrtoint %Tstruct.Spl_json_array_t_t* %13 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %19 = bitcast i8* %17 to %Tstruct.Spl_json_array_t_t*
  %20 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %23 = bitcast i8* %21 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %19, i64 %14, %Tstruct.Spl_json_value_t_t* %23)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %25 = ptrtoint %Tstruct.Spl_json_value_t_t* %24 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %28)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #9
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
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
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %i, i64* %i.addr, align 8
  store i32 %boolean, i32* %boolean.addr, align 4
  %3 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %3)
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to i8*
  %6 = call i32 @c_TPtoO(i8* %5)
  %7 = inttoptr i32 %6 to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to %Tstruct.Spl_json_value_t_t*
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %9, i32* %10, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %14 = load i64, i64* %i.addr, align 8
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %16 = ptrtoint %Tstruct.Spl_json_array_t_t* %13 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %19 = bitcast i8* %17 to %Tstruct.Spl_json_array_t_t*
  %20 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %23 = bitcast i8* %21 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %19, i64 %14, %Tstruct.Spl_json_value_t_t* %23)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %24 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %25 = ptrtoint %Tstruct.Spl_json_value_t_t* %24 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %28)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #9
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %29 = load i32, i32* %retval, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_replace_null(%Tstruct.json_array_t_t* %array, i64 %i) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i.addr = alloca i64, align 8
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %i, i64* %i.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %3 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %4 = bitcast %Tstruct.json_value_t_t* %3 to i8*
  %5 = call i32 @c_TPtoO(i8* %4)
  %6 = inttoptr i32 %5 to %Tstruct.json_value_t_t*
  %7 = bitcast %Tstruct.json_value_t_t* %6 to %Tstruct.Spl_json_value_t_t*
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %8, i32* %9, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %13 = load i64, i64* %i.addr, align 8
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %15 = ptrtoint %Tstruct.Spl_json_array_t_t* %12 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_array_t_t*
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 @json_array_replace_value(%Tstruct.Spl_json_array_t_t* %18, i64 %13, %Tstruct.Spl_json_value_t_t* %22)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %23 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %27)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #9
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_clear(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 0, i64* %i, align 8
  %3 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_array_t_t* %3 to i32
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %i, align 8
  %6 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %for.cond
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_array_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %10)
  %cmp1 = icmp ult i64 %5, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded
  %11 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %12 = load i64, i64* %i, align 8
  %13 = ptrtoint %Tstruct.Spl_json_array_t_t* %11 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %for.body
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_array_t_t*
  %call4 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %16, i64 %12)
  %17 = bitcast %Tstruct.Spl_json_value_t_t* %call4 to %Tstruct.json_value_t_t*
  %18 = bitcast %Tstruct.json_value_t_t* %17 to i8*
  %19 = call i32 @c_TPtoO(i8* %18)
  %20 = inttoptr i32 %19 to %Tstruct.Spl_json_value_t_t*
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %20 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %24 = bitcast i8* %22 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %24)
  br label %for.inc

for.inc:                                          ; preds = %_Dynamic_check.succeeded6
  %25 = load i64, i64* %i, align 8
  %inc = add i64 %25, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !11

_Dynamic_check.failed:                            ; preds = %for.cond
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed2:                           ; preds = %for.body
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #9
  unreachable

for.end:                                          ; preds = %_Dynamic_check.succeeded
  %26 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %27 = ptrtoint %Tstruct.Spl_json_array_t_t* %26 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %for.end
  %30 = bitcast i8* %28 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %30, i32 0, i32 2
  store i32 0, i32* %count, align 8
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed7:                           ; preds = %for.end
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded8, %if.then
  %31 = load i32, i32* %retval, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_value(%Tstruct.json_array_t_t* %array, %Tstruct.json_value_t_t* %value) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %4, i32* %5, align 4
  %6 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %6 to i32
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false2
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %14, i32 0, i32 0
  %parent3 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent3, align 4
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %cmp4 = icmp ne i32 %16, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false2
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %17 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %19 = ptrtoint %Tstruct.Spl_json_array_t_t* %17 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %if.end
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_array_t_t*
  %23 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %26 = bitcast i8* %24 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.json_array_t_t*, %Tstruct.json_value_t_t*)* @json_array_add to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %22, %Tstruct.Spl_json_value_t_t* %26)
  store i32 %call, i32* %retval, align 4
  br label %return

_Dynamic_check.failed5:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded8, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_string(%Tstruct.json_array_t_t* %array, i8* %string) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %string.addr = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %string to i32
  %4 = bitcast i8** %string.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load i8*, i8** %string.addr, align 4
  %6 = ptrtoint i8* %5 to i32
  %7 = call i8* @c_fetch_pointer_from_offset(i32 %6)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %7)
  %9 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to i8*
  %11 = call i32 @c_TPtoO(i8* %10)
  %12 = inttoptr i32 %11 to %Tstruct.json_value_t_t*
  %13 = bitcast %Tstruct.json_value_t_t* %12 to %Tstruct.Spl_json_value_t_t*
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %14, i32* %15, align 4
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %17 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %cmp = icmp eq i32 %17, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %18 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %19 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %20 = ptrtoint %Tstruct.Spl_json_array_t_t* %18 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %if.end
  %23 = bitcast i8* %21 to %Tstruct.Spl_json_array_t_t*
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %19 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %23, %Tstruct.Spl_json_value_t_t* %27)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %_Dynamic_check.succeeded4
  %28 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %29 = ptrtoint %Tstruct.Spl_json_value_t_t* %28 to i32
  %30 = call i8* @c_fetch_pointer_from_offset(i32 %29)
  %31 = call i1 @c_isTaintedPointerToTaintedMem(i8* %30)
  br i1 %31, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %if.then7
  %32 = bitcast i8* %30 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %32)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed1:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %if.then7
  call void @llvm.trap() #9
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %_Dynamic_check.succeeded9, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_number(%Tstruct.json_array_t_t* %array, double %number) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %number.addr = alloca double, align 8
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store double %number, double* %number.addr, align 8
  %3 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (double)* @json_value_init_number to %Tstruct.Spl_json_value_t_t* (double)*)(double %3)
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to i8*
  %6 = call i32 @c_TPtoO(i8* %5)
  %7 = inttoptr i32 %6 to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to %Tstruct.Spl_json_value_t_t*
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %9, i32* %10, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %15 = ptrtoint %Tstruct.Spl_json_array_t_t* %13 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_array_t_t*
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %18, %Tstruct.Spl_json_value_t_t* %22)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %23 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %27)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #9
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_boolean(%Tstruct.json_array_t_t* %array, i32 %boolean) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %boolean.addr = alloca i32, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %3 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %3)
  %4 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %5 = bitcast %Tstruct.json_value_t_t* %4 to i8*
  %6 = call i32 @c_TPtoO(i8* %5)
  %7 = inttoptr i32 %6 to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to %Tstruct.Spl_json_value_t_t*
  %9 = ptrtoint %Tstruct.Spl_json_value_t_t* %8 to i32
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %9, i32* %10, align 4
  %11 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %12 = ptrtoint %Tstruct.Spl_json_value_t_t* %11 to i32
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %13 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %14 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %15 = ptrtoint %Tstruct.Spl_json_array_t_t* %13 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %18 = bitcast i8* %16 to %Tstruct.Spl_json_array_t_t*
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %14 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %18, %Tstruct.Spl_json_value_t_t* %22)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %23 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %23 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %27)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #9
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %28 = load i32, i32* %retval, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_array_append_null(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %3 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %4 = bitcast %Tstruct.json_value_t_t* %3 to i8*
  %5 = call i32 @c_TPtoO(i8* %4)
  %6 = inttoptr i32 %5 to %Tstruct.json_value_t_t*
  %7 = bitcast %Tstruct.json_value_t_t* %6 to %Tstruct.Spl_json_value_t_t*
  %8 = ptrtoint %Tstruct.Spl_json_value_t_t* %7 to i32
  %9 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %8, i32* %9, align 4
  %10 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %14 = ptrtoint %Tstruct.Spl_json_array_t_t* %12 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_array_t_t*
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_array_append_value to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %17, %Tstruct.Spl_json_value_t_t* %21)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then5, label %if.end8

if.then5:                                         ; preds = %_Dynamic_check.succeeded2
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %23 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %26 = bitcast i8* %24 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %26)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #9
  unreachable

if.end8:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %_Dynamic_check.succeeded7, %if.then
  %27 = load i32, i32* %retval, align 4
  ret i32 %27
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i32
  %7 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %6, i32* %7, align 4
  store i64 0, i64* %i, align 8
  %8 = bitcast %Tstruct.Spl_json_value_t_t** %old_value to i32*
  store i32 0, i32* %8, align 4
  %9 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %10 = ptrtoint %Tstruct.Spl_json_object_t_t* %9 to i32
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load i8*, i8** %name.addr, align 4
  %12 = ptrtoint i8* %11 to i32
  %cmp1 = icmp eq i32 %12, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %cmp3 = icmp eq i32 %14, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false4
  %19 = bitcast i8* %17 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %19, i32 0, i32 0
  %parent5 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %20 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %parent5, align 4
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t* %20 to i32
  %cmp6 = icmp ne i32 %21, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false4
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %22 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %23 = load i8*, i8** %name.addr, align 4
  %24 = ptrtoint %Tstruct.Spl_json_object_t_t* %22 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %if.end
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_object_t_t*
  %28 = ptrtoint i8* %23 to i32
  %29 = call i8* @c_fetch_pointer_from_offset(i32 %28)
  %30 = call i1 @c_isTaintedPointerToTaintedMem(i8* %29)
  br i1 %30, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %_Dynamic_check.succeeded8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %27, i8* %29)
  %31 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %32 = bitcast %Tstruct.json_value_t_t* %31 to i8*
  %33 = call i32 @c_TPtoO(i8* %32)
  %34 = inttoptr i32 %33 to %Tstruct.json_value_t_t*
  %35 = bitcast %Tstruct.json_value_t_t* %34 to %Tstruct.Spl_json_value_t_t*
  %36 = ptrtoint %Tstruct.Spl_json_value_t_t* %35 to i32
  %37 = bitcast %Tstruct.Spl_json_value_t_t** %old_value to i32*
  store i32 %36, i32* %37, align 4
  %38 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %old_value, align 4
  %39 = ptrtoint %Tstruct.Spl_json_value_t_t* %38 to i32
  %cmp11 = icmp ne i32 %39, 0
  br i1 %cmp11, label %if.then12, label %if.end71

if.then12:                                        ; preds = %_Dynamic_check.succeeded10
  %40 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %old_value, align 4
  %41 = ptrtoint %Tstruct.Spl_json_value_t_t* %40 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.then12
  %44 = bitcast i8* %42 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %44)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %_Dynamic_check.succeeded14
  %45 = load i64, i64* %i, align 8
  %46 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %47 = ptrtoint %Tstruct.Spl_json_object_t_t* %46 to i32
  %48 = call i8* @c_fetch_pointer_from_offset(i32 %47)
  %49 = call i1 @c_isTaintedPointerToTaintedMem(i8* %48)
  br i1 %49, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %for.cond
  %50 = bitcast i8* %48 to %Tstruct.Spl_json_object_t_t*
  %call17 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %50)
  %cmp18 = icmp ult i64 %45, %call17
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded16
  %51 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %52 = ptrtoint %Tstruct.Spl_json_object_t_t* %51 to i32
  %53 = call i8* @c_fetch_pointer_from_offset(i32 %52)
  %54 = call i1 @c_isTaintedPointerToTaintedMem(i8* %53)
  br i1 %54, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %for.body
  %55 = bitcast i8* %53 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %55, i32 0, i32 1
  %names21 = bitcast i32* %names to i8***
  %56 = load i8**, i8*** %names21, align 4
  %57 = load i64, i64* %i, align 8
  %58 = ptrtoint i8** %56 to i32
  %59 = call i8* @c_fetch_pointer_from_offset(i32 %58)
  %60 = call i1 @c_isTaintedPointerToTaintedMem(i8* %59)
  br i1 %60, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded20
  %61 = bitcast i8* %59 to i8**
  %62 = bitcast i8** %61 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %62, i64 %57
  %63 = bitcast i32* %arrayidx to i8**
  %64 = bitcast i8** %63 to i8*
  %65 = call i32 @c_TPtoO(i8* %64)
  %66 = inttoptr i32 %65 to i8**
  %67 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %68 = ptrtoint %Tstruct.Spl_json_object_t_t* %67 to i32
  %69 = call i8* @c_fetch_pointer_from_offset(i32 %68)
  %70 = call i1 @c_isTaintedPointerToTaintedMem(i8* %69)
  br i1 %70, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %_Dynamic_check.succeeded23
  %71 = bitcast i8* %69 to %Tstruct.Spl_json_object_t_t*
  %names26 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %71, i32 0, i32 1
  %names27 = bitcast i32* %names26 to i8***
  %72 = load i8**, i8*** %names27, align 4
  %73 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %74 = ptrtoint %Tstruct.Spl_json_object_t_t* %73 to i32
  %75 = call i8* @c_fetch_pointer_from_offset(i32 %74)
  %76 = call i1 @c_isTaintedPointerToTaintedMem(i8* %75)
  br i1 %76, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %_Dynamic_check.succeeded25
  %77 = bitcast i8* %75 to %Tstruct.Spl_json_object_t_t*
  %names30 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %77, i32 0, i32 1
  %names31 = bitcast i32* %names30 to i8***
  %78 = load i8**, i8*** %names31, align 4
  %79 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %80 = ptrtoint %Tstruct.Spl_json_object_t_t* %79 to i32
  %81 = call i8* @c_fetch_pointer_from_offset(i32 %80)
  %82 = call i1 @c_isTaintedPointerToTaintedMem(i8* %81)
  br i1 %82, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %_Dynamic_check.succeeded29
  %83 = bitcast i8* %81 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %83, i32 0, i32 4
  %84 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %84 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %78, i64 %idx.ext
  %85 = bitcast i8** %add.ptr to i8*
  %86 = call i32 @c_TPtoO(i8* %85)
  %87 = inttoptr i32 %86 to i8**
  %88 = bitcast i8** %72 to i8*
  %89 = call i32 @c_TPtoO(i8* %88)
  %90 = inttoptr i32 %89 to i8**
  %91 = bitcast i8** %90 to i8*
  %92 = call i32 @c_TPtoO(i8* %91)
  %93 = bitcast i8** %66 to i8*
  %94 = call i32 @c_TPtoO(i8* %93)
  %_Dynamic_check.lower = icmp ule i32 %92, %94
  %95 = bitcast i8** %66 to i8*
  %96 = call i32 @c_TPtoO(i8* %95)
  %97 = bitcast i8** %87 to i8*
  %98 = call i32 @c_TPtoO(i8* %97)
  %_Dynamic_check.upper = icmp ult i32 %96, %98
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %_Dynamic_check.succeeded33
  %99 = load i8*, i8** %63, align 8
  %100 = load i8*, i8** %name.addr, align 4
  %101 = ptrtoint i8* %99 to i64
  %102 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %101)
  %103 = ptrtoint i8* %100 to i64
  %104 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %103)
  %call36 = call i32 @t_strcmp(i8* %102, i8* %104)
  %cmp37 = icmp eq i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %if.end70

if.then38:                                        ; preds = %_Dynamic_check.succeeded35
  %105 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %106 = ptrtoint %Tstruct.Spl_json_object_t_t* %105 to i32
  %107 = call i8* @c_fetch_pointer_from_offset(i32 %106)
  %108 = call i1 @c_isTaintedPointerToTaintedMem(i8* %107)
  br i1 %108, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %if.then38
  %109 = bitcast i8* %107 to %Tstruct.Spl_json_object_t_t*
  %call41 = call %Tstruct.Spl_json_value_t_t* @json_object_get_wrapping_value(%Tstruct.Spl_json_object_t_t* %109)
  %110 = bitcast %Tstruct.Spl_json_value_t_t* %call41 to %Tstruct.json_value_t_t*
  %111 = bitcast %Tstruct.json_value_t_t* %110 to i8*
  %112 = call i32 @c_TPtoO(i8* %111)
  %113 = inttoptr i32 %112 to %Tstruct.json_value_t_t*
  %114 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %115 = ptrtoint %Tstruct.Spl_json_value_t_t* %114 to i32
  %116 = call i8* @c_fetch_pointer_from_offset(i32 %115)
  %117 = call i1 @c_isTaintedPointerToTaintedMem(i8* %116)
  br i1 %117, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %_Dynamic_check.succeeded40
  %118 = bitcast i8* %116 to %Tstruct.Spl_json_value_t_t*
  %parent44 = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %118, i32 0, i32 0
  %parent45 = bitcast i32* %parent44 to %Tstruct.Spl_json_value_t_t**
  %119 = bitcast %Tstruct.json_value_t_t* %113 to %Tstruct.Spl_json_value_t_t*
  %120 = ptrtoint %Tstruct.Spl_json_value_t_t* %119 to i32
  %121 = bitcast %Tstruct.Spl_json_value_t_t** %parent45 to i32*
  store i32 %120, i32* %121, align 4
  %122 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %123 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %124 = ptrtoint %Tstruct.Spl_json_object_t_t* %123 to i32
  %125 = call i8* @c_fetch_pointer_from_offset(i32 %124)
  %126 = call i1 @c_isTaintedPointerToTaintedMem(i8* %125)
  br i1 %126, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded43
  %127 = bitcast i8* %125 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %127, i32 0, i32 2
  %values48 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %128 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values48, align 4
  %129 = load i64, i64* %i, align 8
  %130 = ptrtoint %Tstruct.Spl_json_value_t_t** %128 to i32
  %131 = call i8* @c_fetch_pointer_from_offset(i32 %130)
  %132 = call i1 @c_isTaintedPointerToTaintedMem(i8* %131)
  br i1 %132, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %_Dynamic_check.succeeded47
  %133 = bitcast i8* %131 to %Tstruct.Spl_json_value_t_t**
  %134 = bitcast %Tstruct.Spl_json_value_t_t** %133 to i32*
  %arrayidx51 = getelementptr inbounds i32, i32* %134, i64 %129
  %135 = bitcast i32* %arrayidx51 to %Tstruct.Spl_json_value_t_t**
  %136 = bitcast %Tstruct.Spl_json_value_t_t** %135 to i8*
  %137 = call i32 @c_TPtoO(i8* %136)
  %138 = inttoptr i32 %137 to %Tstruct.Spl_json_value_t_t**
  %139 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %140 = ptrtoint %Tstruct.Spl_json_object_t_t* %139 to i32
  %141 = call i8* @c_fetch_pointer_from_offset(i32 %140)
  %142 = call i1 @c_isTaintedPointerToTaintedMem(i8* %141)
  br i1 %142, label %_Dynamic_check.succeeded53, label %_Dynamic_check.failed52

_Dynamic_check.succeeded53:                       ; preds = %_Dynamic_check.succeeded50
  %143 = bitcast i8* %141 to %Tstruct.Spl_json_object_t_t*
  %values54 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %143, i32 0, i32 2
  %values55 = bitcast i32* %values54 to %Tstruct.Spl_json_value_t_t***
  %144 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values55, align 4
  %145 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %146 = ptrtoint %Tstruct.Spl_json_object_t_t* %145 to i32
  %147 = call i8* @c_fetch_pointer_from_offset(i32 %146)
  %148 = call i1 @c_isTaintedPointerToTaintedMem(i8* %147)
  br i1 %148, label %_Dynamic_check.succeeded57, label %_Dynamic_check.failed56

_Dynamic_check.succeeded57:                       ; preds = %_Dynamic_check.succeeded53
  %149 = bitcast i8* %147 to %Tstruct.Spl_json_object_t_t*
  %values58 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %149, i32 0, i32 2
  %values59 = bitcast i32* %values58 to %Tstruct.Spl_json_value_t_t***
  %150 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values59, align 4
  %151 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %152 = ptrtoint %Tstruct.Spl_json_object_t_t* %151 to i32
  %153 = call i8* @c_fetch_pointer_from_offset(i32 %152)
  %154 = call i1 @c_isTaintedPointerToTaintedMem(i8* %153)
  br i1 %154, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded57
  %155 = bitcast i8* %153 to %Tstruct.Spl_json_object_t_t*
  %capacity62 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %155, i32 0, i32 4
  %156 = load i32, i32* %capacity62, align 8
  %idx.ext63 = zext i32 %156 to i64
  %add.ptr64 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %150, i64 %idx.ext63
  %157 = bitcast %Tstruct.Spl_json_value_t_t** %150 to i32*
  %158 = getelementptr inbounds i32, i32* %157, i64 %idx.ext63
  %159 = bitcast i32* %158 to %Tstruct.Spl_json_value_t_t**
  %160 = bitcast %Tstruct.Spl_json_value_t_t** %159 to i8*
  %161 = call i32 @c_TPtoO(i8* %160)
  %162 = inttoptr i32 %161 to %Tstruct.Spl_json_value_t_t**
  %163 = bitcast %Tstruct.Spl_json_value_t_t** %144 to i8*
  %164 = call i32 @c_TPtoO(i8* %163)
  %165 = inttoptr i32 %164 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower65 = icmp ule %Tstruct.Spl_json_value_t_t** %165, %138
  %_Dynamic_check.upper66 = icmp ult %Tstruct.Spl_json_value_t_t** %138, %162
  %_Dynamic_check.range67 = and i1 %_Dynamic_check.lower65, %_Dynamic_check.upper66
  br i1 %_Dynamic_check.range67, label %_Dynamic_check.succeeded69, label %_Dynamic_check.failed68

_Dynamic_check.succeeded69:                       ; preds = %_Dynamic_check.succeeded61
  %166 = ptrtoint %Tstruct.Spl_json_value_t_t* %122 to i32
  %167 = bitcast %Tstruct.Spl_json_value_t_t** %135 to i32*
  store i32 %166, i32* %167, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed7:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed9:                           ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed13:                          ; preds = %if.then12
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %for.cond
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed19:                          ; preds = %for.body
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed24:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed28:                          ; preds = %_Dynamic_check.succeeded25
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed32:                          ; preds = %_Dynamic_check.succeeded29
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed34:                          ; preds = %_Dynamic_check.succeeded33
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed39:                          ; preds = %if.then38
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed42:                          ; preds = %_Dynamic_check.succeeded40
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded43
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed49:                          ; preds = %_Dynamic_check.succeeded47
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed52:                          ; preds = %_Dynamic_check.succeeded50
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed56:                          ; preds = %_Dynamic_check.succeeded53
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded57
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed68:                          ; preds = %_Dynamic_check.succeeded61
  call void @llvm.trap() #9
  unreachable

if.end70:                                         ; preds = %_Dynamic_check.succeeded35
  br label %for.inc

for.inc:                                          ; preds = %if.end70
  %168 = load i64, i64* %i, align 8
  %inc = add i64 %168, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %_Dynamic_check.succeeded16
  br label %if.end71

if.end71:                                         ; preds = %for.end, %_Dynamic_check.succeeded10
  %169 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %170 = load i8*, i8** %name.addr, align 4
  %171 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %172 = ptrtoint %Tstruct.Spl_json_object_t_t* %169 to i32
  %173 = call i8* @c_fetch_pointer_from_offset(i32 %172)
  %174 = call i1 @c_isTaintedPointerToTaintedMem(i8* %173)
  br i1 %174, label %_Dynamic_check.succeeded73, label %_Dynamic_check.failed72

_Dynamic_check.succeeded73:                       ; preds = %if.end71
  %175 = bitcast i8* %173 to %Tstruct.Spl_json_object_t_t*
  %176 = ptrtoint i8* %170 to i32
  %177 = call i8* @c_fetch_pointer_from_offset(i32 %176)
  %178 = call i1 @c_isTaintedPointerToTaintedMem(i8* %177)
  br i1 %178, label %_Dynamic_check.succeeded75, label %_Dynamic_check.failed74

_Dynamic_check.succeeded75:                       ; preds = %_Dynamic_check.succeeded73
  %179 = ptrtoint %Tstruct.Spl_json_value_t_t* %171 to i32
  %180 = call i8* @c_fetch_pointer_from_offset(i32 %179)
  %181 = call i1 @c_isTaintedPointerToTaintedMem(i8* %180)
  br i1 %181, label %_Dynamic_check.succeeded77, label %_Dynamic_check.failed76

_Dynamic_check.succeeded77:                       ; preds = %_Dynamic_check.succeeded75
  %182 = bitcast i8* %180 to %Tstruct.Spl_json_value_t_t*
  %call78 = call i32 bitcast (i32 (%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*)* @json_object_add to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %175, i8* %177, %Tstruct.Spl_json_value_t_t* %182)
  store i32 %call78, i32* %retval, align 4
  br label %return

_Dynamic_check.failed72:                          ; preds = %if.end71
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed74:                          ; preds = %_Dynamic_check.succeeded73
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed76:                          ; preds = %_Dynamic_check.succeeded75
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded77, %_Dynamic_check.succeeded69, %if.then
  %183 = load i32, i32* %retval, align 4
  ret i32 %183
}

declare dso_local i32 @t_strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_string(%Tstruct.json_object_t_t* %object, i8* %name, i8* %string) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %string.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = ptrtoint i8* %string to i32
  %6 = bitcast i8** %string.addr to i32*
  store i32 %5, i32* %6, align 4
  %7 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %8 = load i8*, i8** %name.addr, align 4
  %9 = load i8*, i8** %string.addr, align 4
  %10 = ptrtoint i8* %9 to i32
  %11 = call i8* @c_fetch_pointer_from_offset(i32 %10)
  %12 = call i1 @c_isTaintedPointerToTaintedMem(i8* %11)
  br i1 %12, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %11)
  %13 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %14 = bitcast %Tstruct.json_value_t_t* %13 to i8*
  %15 = call i32 @c_TPtoO(i8* %14)
  %16 = inttoptr i32 %15 to %Tstruct.Spl_json_value_t_t*
  %17 = ptrtoint %Tstruct.Spl_json_object_t_t* %7 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %20 = bitcast i8* %18 to %Tstruct.Spl_json_object_t_t*
  %21 = ptrtoint i8* %8 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  %call7 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %20, i8* %22, %Tstruct.Spl_json_value_t_t* %27)
  ret i32 %call7

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_number(%Tstruct.json_object_t_t* %object, i8* %name, double %number) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %number.addr = alloca double, align 8
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  store double %number, double* %number.addr, align 8
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (double)* @json_value_init_number to %Tstruct.Spl_json_value_t_t* (double)*)(double %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = call i32 @c_TPtoO(i8* %9)
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_object_t_t*
  %16 = ptrtoint i8* %6 to i32
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
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %15, i8* %17, %Tstruct.Spl_json_value_t_t* %22)
  ret i32 %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_boolean(%Tstruct.json_object_t_t* %object, i8* %name, i32 %boolean) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %boolean.addr = alloca i32, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %7)
  %8 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to i8*
  %10 = call i32 @c_TPtoO(i8* %9)
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_value_t_t*
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_object_t_t*
  %16 = ptrtoint i8* %6 to i32
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
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %15, i8* %17, %Tstruct.Spl_json_value_t_t* %22)
  ret i32 %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_set_null(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %7 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %8 = bitcast %Tstruct.json_value_t_t* %7 to i8*
  %9 = call i32 @c_TPtoO(i8* %8)
  %10 = inttoptr i32 %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_object_t_t*
  %15 = ptrtoint i8* %6 to i32
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
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %14, i8* %16, %Tstruct.Spl_json_value_t_t* %21)
  ret i32 %call5

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i32
  %7 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %6, i32* %7, align 4
  %8 = bitcast i8** %dot_pos to i32*
  store i32 0, i32* %8, align 4
  %9 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 0, i32* %9, align 4
  %10 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 0, i32* %10, align 4
  %11 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object to i32*
  store i32 0, i32* %11, align 4
  %12 = bitcast %Tstruct.Spl_json_object_t_t** %new_object to i32*
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %status, align 4
  store i64 0, i64* %name_len, align 8
  %13 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %14 = ptrtoint %Tstruct.Spl_json_object_t_t* %13 to i32
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load i8*, i8** %name.addr, align 4
  %16 = ptrtoint i8* %15 to i32
  %cmp1 = icmp eq i32 %16, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %cmp3 = icmp eq i32 %18, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  %19 = load i8*, i8** %name.addr, align 4
  %20 = ptrtoint i8* %19 to i32
  %21 = call i8* @c_fetch_pointer_from_offset(i32 %20)
  %22 = call i1 @c_isTaintedPointerToTaintedMem(i8* %21)
  br i1 %22, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %call = call i8* @t_strchr(i8* %21, i32 46)
  %23 = call i32 @c_TPtoO(i8* %call)
  %24 = inttoptr i32 %23 to i8*
  %25 = ptrtoint i8* %24 to i32
  %26 = bitcast i8** %dot_pos to i32*
  store i32 %25, i32* %26, align 4
  %27 = load i8*, i8** %dot_pos, align 4
  %28 = ptrtoint i8* %27 to i32
  %cmp4 = icmp eq i32 %28, 0
  br i1 %cmp4, label %if.then5, label %if.end13

if.then5:                                         ; preds = %_Dynamic_check.succeeded
  %29 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %30 = load i8*, i8** %name.addr, align 4
  %31 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %32 = ptrtoint %Tstruct.Spl_json_object_t_t* %29 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %if.then5
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_object_t_t*
  %36 = ptrtoint i8* %30 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded7
  %39 = ptrtoint %Tstruct.Spl_json_value_t_t* %31 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded9
  %42 = bitcast i8* %40 to %Tstruct.Spl_json_value_t_t*
  %call12 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_set_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %35, i8* %37, %Tstruct.Spl_json_value_t_t* %42)
  store i32 %call12, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %if.then5
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded9
  call void @llvm.trap() #9
  unreachable

if.end13:                                         ; preds = %_Dynamic_check.succeeded
  %43 = bitcast i8** %after_dot to i32*
  store i32 0, i32* %43, align 4
  %44 = load i8*, i8** %dot_pos, align 4
  %add.ptr = getelementptr inbounds i8, i8* %44, i64 1
  %45 = ptrtoint i8* %add.ptr to i32
  %46 = bitcast i8** %after_dot to i32*
  store i32 %45, i32* %46, align 4
  %47 = load i8*, i8** %dot_pos, align 4
  %48 = load i8*, i8** %name.addr, align 4
  %sub.ptr.lhs.cast = ptrtoint i8* %47 to i32
  %sub.ptr.rhs.cast = ptrtoint i8* %48 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sext i32 %sub.ptr.sub to i64
  store i64 %conv, i64* %name_len, align 8
  %49 = bitcast i8** %name_with_len to i32*
  store i32 0, i32* %49, align 4
  %50 = load i8*, i8** %name.addr, align 4
  %51 = ptrtoint i8* %50 to i32
  %52 = bitcast i8** %name_with_len to i32*
  store i32 %51, i32* %52, align 4
  %53 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %54 = load i8*, i8** %name_with_len, align 4
  %55 = load i64, i64* %name_len, align 8
  %56 = ptrtoint %Tstruct.Spl_json_object_t_t* %53 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %if.end13
  %59 = bitcast i8* %57 to %Tstruct.Spl_json_object_t_t*
  %60 = ptrtoint i8* %54 to i32
  %61 = call i8* @c_fetch_pointer_from_offset(i32 %60)
  %62 = call i1 @c_isTaintedPointerToTaintedMem(i8* %61)
  br i1 %62, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.succeeded15
  %call18 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.json_value_t_t* (%Tstruct.json_object_t_t*, i8*, i64)* @json_object_getn_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*, i64)*)(%Tstruct.Spl_json_object_t_t* %59, i8* %61, i64 %55)
  %63 = bitcast %Tstruct.Spl_json_value_t_t* %call18 to %Tstruct.json_value_t_t*
  %64 = bitcast %Tstruct.json_value_t_t* %63 to i8*
  %65 = call i32 @c_TPtoO(i8* %64)
  %66 = inttoptr i32 %65 to %Tstruct.json_value_t_t*
  %67 = bitcast %Tstruct.json_value_t_t* %66 to %Tstruct.Spl_json_value_t_t*
  %68 = ptrtoint %Tstruct.Spl_json_value_t_t* %67 to i32
  %69 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %68, i32* %69, align 4
  %70 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %71 = bitcast %Tstruct.Spl_json_value_t_t* %70 to i8*
  %72 = call i32 @c_TPtoO(i8* %71)
  %73 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %72, %73
  br i1 %tobool, label %if.then19, label %if.end37

if.then19:                                        ; preds = %_Dynamic_check.succeeded17
  %74 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %75 = ptrtoint %Tstruct.Spl_json_value_t_t* %74 to i32
  %76 = call i8* @c_fetch_pointer_from_offset(i32 %75)
  %77 = call i1 @c_isTaintedPointerToTaintedMem(i8* %76)
  br i1 %77, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %if.then19
  %78 = bitcast i8* %76 to %Tstruct.Spl_json_value_t_t*
  %call22 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %78)
  %cmp23 = icmp ne i32 %call22, 4
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %_Dynamic_check.succeeded21
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed14:                          ; preds = %if.end13
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed20:                          ; preds = %if.then19
  call void @llvm.trap() #9
  unreachable

if.end26:                                         ; preds = %_Dynamic_check.succeeded21
  %79 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %80 = ptrtoint %Tstruct.Spl_json_value_t_t* %79 to i32
  %81 = call i8* @c_fetch_pointer_from_offset(i32 %80)
  %82 = call i1 @c_isTaintedPointerToTaintedMem(i8* %81)
  br i1 %82, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %if.end26
  %83 = bitcast i8* %81 to %Tstruct.Spl_json_value_t_t*
  %call29 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %83)
  %84 = bitcast %Tstruct.Spl_json_object_t_t* %call29 to %Tstruct.json_object_t_t*
  %85 = bitcast %Tstruct.json_object_t_t* %84 to i8*
  %86 = call i32 @c_TPtoO(i8* %85)
  %87 = inttoptr i32 %86 to %Tstruct.json_object_t_t*
  %88 = bitcast %Tstruct.json_object_t_t* %87 to %Tstruct.Spl_json_object_t_t*
  %89 = ptrtoint %Tstruct.Spl_json_object_t_t* %88 to i32
  %90 = bitcast %Tstruct.Spl_json_object_t_t** %temp_object to i32*
  store i32 %89, i32* %90, align 4
  %91 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %temp_object, align 4
  %92 = load i8*, i8** %after_dot, align 4
  %93 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %94 = ptrtoint %Tstruct.Spl_json_object_t_t* %91 to i32
  %95 = call i8* @c_fetch_pointer_from_offset(i32 %94)
  %96 = call i1 @c_isTaintedPointerToTaintedMem(i8* %95)
  br i1 %96, label %_Dynamic_check.succeeded31, label %_Dynamic_check.failed30

_Dynamic_check.succeeded31:                       ; preds = %_Dynamic_check.succeeded28
  %97 = bitcast i8* %95 to %Tstruct.Spl_json_object_t_t*
  %98 = ptrtoint i8* %92 to i32
  %99 = call i8* @c_fetch_pointer_from_offset(i32 %98)
  %100 = call i1 @c_isTaintedPointerToTaintedMem(i8* %99)
  br i1 %100, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %_Dynamic_check.succeeded31
  %101 = ptrtoint %Tstruct.Spl_json_value_t_t* %93 to i32
  %102 = call i8* @c_fetch_pointer_from_offset(i32 %101)
  %103 = call i1 @c_isTaintedPointerToTaintedMem(i8* %102)
  br i1 %103, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %_Dynamic_check.succeeded33
  %104 = bitcast i8* %102 to %Tstruct.Spl_json_value_t_t*
  %call36 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %97, i8* %99, %Tstruct.Spl_json_value_t_t* %104)
  store i32 %call36, i32* %retval, align 4
  br label %return

_Dynamic_check.failed27:                          ; preds = %if.end26
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded28
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed32:                          ; preds = %_Dynamic_check.succeeded31
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed34:                          ; preds = %_Dynamic_check.succeeded33
  call void @llvm.trap() #9
  unreachable

if.end37:                                         ; preds = %_Dynamic_check.succeeded17
  %call38 = call %Tstruct.Spl_json_value_t_t* @json_value_init_object()
  %105 = bitcast %Tstruct.Spl_json_value_t_t* %call38 to %Tstruct.json_value_t_t*
  %106 = bitcast %Tstruct.json_value_t_t* %105 to i8*
  %107 = call i32 @c_TPtoO(i8* %106)
  %108 = inttoptr i32 %107 to %Tstruct.json_value_t_t*
  %109 = bitcast %Tstruct.json_value_t_t* %108 to %Tstruct.Spl_json_value_t_t*
  %110 = ptrtoint %Tstruct.Spl_json_value_t_t* %109 to i32
  %111 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %110, i32* %111, align 4
  %112 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %113 = ptrtoint %Tstruct.Spl_json_value_t_t* %112 to i32
  %cmp39 = icmp eq i32 %113, 0
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end37
  store i32 -1, i32* %retval, align 4
  br label %return

if.end42:                                         ; preds = %if.end37
  %114 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %115 = ptrtoint %Tstruct.Spl_json_value_t_t* %114 to i32
  %116 = call i8* @c_fetch_pointer_from_offset(i32 %115)
  %117 = call i1 @c_isTaintedPointerToTaintedMem(i8* %116)
  br i1 %117, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %if.end42
  %118 = bitcast i8* %116 to %Tstruct.Spl_json_value_t_t*
  %call45 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %118)
  %119 = bitcast %Tstruct.Spl_json_object_t_t* %call45 to %Tstruct.json_object_t_t*
  %120 = bitcast %Tstruct.json_object_t_t* %119 to i8*
  %121 = call i32 @c_TPtoO(i8* %120)
  %122 = inttoptr i32 %121 to %Tstruct.json_object_t_t*
  %123 = bitcast %Tstruct.json_object_t_t* %122 to %Tstruct.Spl_json_object_t_t*
  %124 = ptrtoint %Tstruct.Spl_json_object_t_t* %123 to i32
  %125 = bitcast %Tstruct.Spl_json_object_t_t** %new_object to i32*
  store i32 %124, i32* %125, align 4
  %126 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %new_object, align 4
  %127 = load i8*, i8** %after_dot, align 4
  %128 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %129 = ptrtoint %Tstruct.Spl_json_object_t_t* %126 to i32
  %130 = call i8* @c_fetch_pointer_from_offset(i32 %129)
  %131 = call i1 @c_isTaintedPointerToTaintedMem(i8* %130)
  br i1 %131, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded44
  %132 = bitcast i8* %130 to %Tstruct.Spl_json_object_t_t*
  %133 = ptrtoint i8* %127 to i32
  %134 = call i8* @c_fetch_pointer_from_offset(i32 %133)
  %135 = call i1 @c_isTaintedPointerToTaintedMem(i8* %134)
  br i1 %135, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %_Dynamic_check.succeeded47
  %136 = ptrtoint %Tstruct.Spl_json_value_t_t* %128 to i32
  %137 = call i8* @c_fetch_pointer_from_offset(i32 %136)
  %138 = call i1 @c_isTaintedPointerToTaintedMem(i8* %137)
  br i1 %138, label %_Dynamic_check.succeeded51, label %_Dynamic_check.failed50

_Dynamic_check.succeeded51:                       ; preds = %_Dynamic_check.succeeded49
  %139 = bitcast i8* %137 to %Tstruct.Spl_json_value_t_t*
  %call52 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %132, i8* %134, %Tstruct.Spl_json_value_t_t* %139)
  store i32 %call52, i32* %status, align 4
  %140 = load i32, i32* %status, align 4
  %cmp53 = icmp ne i32 %140, 0
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %_Dynamic_check.succeeded51
  %141 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %142 = ptrtoint %Tstruct.Spl_json_value_t_t* %141 to i32
  %143 = call i8* @c_fetch_pointer_from_offset(i32 %142)
  %144 = call i1 @c_isTaintedPointerToTaintedMem(i8* %143)
  br i1 %144, label %_Dynamic_check.succeeded57, label %_Dynamic_check.failed56

_Dynamic_check.succeeded57:                       ; preds = %if.then55
  %145 = bitcast i8* %143 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %145)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed43:                          ; preds = %if.end42
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded44
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed48:                          ; preds = %_Dynamic_check.succeeded47
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed50:                          ; preds = %_Dynamic_check.succeeded49
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed56:                          ; preds = %if.then55
  call void @llvm.trap() #9
  unreachable

if.end58:                                         ; preds = %_Dynamic_check.succeeded51
  %146 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %147 = load i8*, i8** %name_with_len, align 4
  %148 = load i64, i64* %name_len, align 8
  %149 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %150 = ptrtoint %Tstruct.Spl_json_object_t_t* %146 to i32
  %151 = call i8* @c_fetch_pointer_from_offset(i32 %150)
  %152 = call i1 @c_isTaintedPointerToTaintedMem(i8* %151)
  br i1 %152, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %if.end58
  %153 = bitcast i8* %151 to %Tstruct.Spl_json_object_t_t*
  %154 = ptrtoint i8* %147 to i32
  %155 = call i8* @c_fetch_pointer_from_offset(i32 %154)
  %156 = call i1 @c_isTaintedPointerToTaintedMem(i8* %155)
  br i1 %156, label %_Dynamic_check.succeeded62, label %_Dynamic_check.failed61

_Dynamic_check.succeeded62:                       ; preds = %_Dynamic_check.succeeded60
  %157 = ptrtoint %Tstruct.Spl_json_value_t_t* %149 to i32
  %158 = call i8* @c_fetch_pointer_from_offset(i32 %157)
  %159 = call i1 @c_isTaintedPointerToTaintedMem(i8* %158)
  br i1 %159, label %_Dynamic_check.succeeded64, label %_Dynamic_check.failed63

_Dynamic_check.succeeded64:                       ; preds = %_Dynamic_check.succeeded62
  %160 = bitcast i8* %158 to %Tstruct.Spl_json_value_t_t*
  %call65 = call i32 @json_object_addn(%Tstruct.Spl_json_object_t_t* %153, i8* %155, i64 %148, %Tstruct.Spl_json_value_t_t* %160)
  store i32 %call65, i32* %status, align 4
  %161 = load i32, i32* %status, align 4
  %cmp66 = icmp ne i32 %161, 0
  br i1 %cmp66, label %if.then68, label %if.end76

if.then68:                                        ; preds = %_Dynamic_check.succeeded64
  %162 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %new_object, align 4
  %163 = load i8*, i8** %after_dot, align 4
  %164 = ptrtoint %Tstruct.Spl_json_object_t_t* %162 to i32
  %165 = call i8* @c_fetch_pointer_from_offset(i32 %164)
  %166 = call i1 @c_isTaintedPointerToTaintedMem(i8* %165)
  br i1 %166, label %_Dynamic_check.succeeded70, label %_Dynamic_check.failed69

_Dynamic_check.succeeded70:                       ; preds = %if.then68
  %167 = bitcast i8* %165 to %Tstruct.Spl_json_object_t_t*
  %168 = ptrtoint i8* %163 to i32
  %169 = call i8* @c_fetch_pointer_from_offset(i32 %168)
  %170 = call i1 @c_isTaintedPointerToTaintedMem(i8* %169)
  br i1 %170, label %_Dynamic_check.succeeded72, label %_Dynamic_check.failed71

_Dynamic_check.succeeded72:                       ; preds = %_Dynamic_check.succeeded70
  %call73 = call i32 @json_object_dotremove_internal(%Tstruct.Spl_json_object_t_t* %167, i8* %169, i32 0)
  %171 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %172 = ptrtoint %Tstruct.Spl_json_value_t_t* %171 to i32
  %173 = call i8* @c_fetch_pointer_from_offset(i32 %172)
  %174 = call i1 @c_isTaintedPointerToTaintedMem(i8* %173)
  br i1 %174, label %_Dynamic_check.succeeded75, label %_Dynamic_check.failed74

_Dynamic_check.succeeded75:                       ; preds = %_Dynamic_check.succeeded72
  %175 = bitcast i8* %173 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %175)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed59:                          ; preds = %if.end58
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed61:                          ; preds = %_Dynamic_check.succeeded60
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed63:                          ; preds = %_Dynamic_check.succeeded62
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed69:                          ; preds = %if.then68
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed71:                          ; preds = %_Dynamic_check.succeeded70
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed74:                          ; preds = %_Dynamic_check.succeeded72
  call void @llvm.trap() #9
  unreachable

if.end76:                                         ; preds = %_Dynamic_check.succeeded64
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end76, %_Dynamic_check.succeeded75, %_Dynamic_check.succeeded57, %if.then41, %_Dynamic_check.succeeded35, %if.then25, %_Dynamic_check.succeeded11, %if.then
  %176 = load i32, i32* %retval, align 4
  ret i32 %176
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = ptrtoint i8* %string to i32
  %6 = bitcast i8** %string.addr to i32*
  store i32 %5, i32* %6, align 4
  %7 = load i8*, i8** %string.addr, align 4
  %8 = ptrtoint i8* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (i8*)* @json_value_init_string to %Tstruct.Spl_json_value_t_t* (i8*)*)(i8* %9)
  %11 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %12 = bitcast %Tstruct.json_value_t_t* %11 to i8*
  %13 = call i32 @c_TPtoO(i8* %12)
  %14 = inttoptr i32 %13 to %Tstruct.json_value_t_t*
  %15 = bitcast %Tstruct.json_value_t_t* %14 to %Tstruct.Spl_json_value_t_t*
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %17 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %16, i32* %17, align 4
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %cmp = icmp eq i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %20 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %21 = load i8*, i8** %name.addr, align 4
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %23 = ptrtoint %Tstruct.Spl_json_object_t_t* %20 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %if.end
  %26 = bitcast i8* %24 to %Tstruct.Spl_json_object_t_t*
  %27 = ptrtoint i8* %21 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %30 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %33 = bitcast i8* %31 to %Tstruct.Spl_json_value_t_t*
  %call7 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %26, i8* %28, %Tstruct.Spl_json_value_t_t* %33)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %_Dynamic_check.succeeded6
  %34 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %35 = ptrtoint %Tstruct.Spl_json_value_t_t* %34 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %if.then9
  %38 = bitcast i8* %36 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %38)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed1:                           ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed10:                          ; preds = %if.then9
  call void @llvm.trap() #9
  unreachable

if.end12:                                         ; preds = %_Dynamic_check.succeeded6
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %_Dynamic_check.succeeded11, %if.then
  %39 = load i32, i32* %retval, align 4
  ret i32 %39
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  store double %number, double* %number.addr, align 8
  %5 = load double, double* %number.addr, align 8
  %call = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (double)* @json_value_init_number to %Tstruct.Spl_json_value_t_t* (double)*)(double %5)
  %6 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %7 = bitcast %Tstruct.json_value_t_t* %6 to i8*
  %8 = call i32 @c_TPtoO(i8* %7)
  %9 = inttoptr i32 %8 to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %11, i32* %12, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %16 = load i8*, i8** %name.addr, align 4
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %18 = ptrtoint %Tstruct.Spl_json_object_t_t* %15 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_object_t_t*
  %22 = ptrtoint i8* %16 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %25 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %21, i8* %23, %Tstruct.Spl_json_value_t_t* %28)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %_Dynamic_check.succeeded4
  %29 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %30 = ptrtoint %Tstruct.Spl_json_value_t_t* %29 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %if.then7
  %33 = bitcast i8* %31 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %33)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %if.then7
  call void @llvm.trap() #9
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %_Dynamic_check.succeeded9, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  store i32 %boolean, i32* %boolean.addr, align 4
  %5 = load i32, i32* %boolean.addr, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_boolean(i32 %5)
  %6 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %7 = bitcast %Tstruct.json_value_t_t* %6 to i8*
  %8 = call i32 @c_TPtoO(i8* %7)
  %9 = inttoptr i32 %8 to %Tstruct.json_value_t_t*
  %10 = bitcast %Tstruct.json_value_t_t* %9 to %Tstruct.Spl_json_value_t_t*
  %11 = ptrtoint %Tstruct.Spl_json_value_t_t* %10 to i32
  %12 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %11, i32* %12, align 4
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %15 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %16 = load i8*, i8** %name.addr, align 4
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %18 = ptrtoint %Tstruct.Spl_json_object_t_t* %15 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_object_t_t*
  %22 = ptrtoint i8* %16 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %25 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %21, i8* %23, %Tstruct.Spl_json_value_t_t* %28)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %_Dynamic_check.succeeded4
  %29 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %30 = ptrtoint %Tstruct.Spl_json_value_t_t* %29 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %if.then7
  %33 = bitcast i8* %31 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %33)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %if.then7
  call void @llvm.trap() #9
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %_Dynamic_check.succeeded9, %if.then
  %34 = load i32, i32* %retval, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotset_null(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %value = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %call = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %5 = bitcast %Tstruct.Spl_json_value_t_t* %call to %Tstruct.json_value_t_t*
  %6 = bitcast %Tstruct.json_value_t_t* %5 to i8*
  %7 = call i32 @c_TPtoO(i8* %6)
  %8 = inttoptr i32 %7 to %Tstruct.json_value_t_t*
  %9 = bitcast %Tstruct.json_value_t_t* %8 to %Tstruct.Spl_json_value_t_t*
  %10 = ptrtoint %Tstruct.Spl_json_value_t_t* %9 to i32
  %11 = bitcast %Tstruct.Spl_json_value_t_t** %value to i32*
  store i32 %10, i32* %11, align 4
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %13 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %14 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %15 = load i8*, i8** %name.addr, align 4
  %16 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %17 = ptrtoint %Tstruct.Spl_json_object_t_t* %14 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %20 = bitcast i8* %18 to %Tstruct.Spl_json_object_t_t*
  %21 = ptrtoint i8* %15 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %24 = ptrtoint %Tstruct.Spl_json_value_t_t* %16 to i32
  %25 = call i8* @c_fetch_pointer_from_offset(i32 %24)
  %26 = call i1 @c_isTaintedPointerToTaintedMem(i8* %25)
  br i1 %26, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %27 = bitcast i8* %25 to %Tstruct.Spl_json_value_t_t*
  %call5 = call i32 bitcast (i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)* @json_object_dotset_value to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %20, i8* %22, %Tstruct.Spl_json_value_t_t* %27)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %_Dynamic_check.succeeded4
  %28 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value, align 4
  %29 = ptrtoint %Tstruct.Spl_json_value_t_t* %28 to i32
  %30 = call i8* @c_fetch_pointer_from_offset(i32 %29)
  %31 = call i1 @c_isTaintedPointerToTaintedMem(i8* %30)
  br i1 %31, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %if.then7
  %32 = bitcast i8* %30 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %32)
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %if.then7
  call void @llvm.trap() #9
  unreachable

if.end10:                                         ; preds = %_Dynamic_check.succeeded4
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end10, %_Dynamic_check.succeeded9, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_remove(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call i32 @json_object_remove_internal(%Tstruct.Spl_json_object_t_t* %10, i8* %12, i32 1)
  ret i32 %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_object_dotremove(%Tstruct.json_object_t_t* %object, i8* %name) #2 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %name.addr = alloca i8*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %6 = load i8*, i8** %name.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %5 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %11 = ptrtoint i8* %6 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %call = call i32 @json_object_dotremove_internal(%Tstruct.Spl_json_object_t_t* %10, i8* %12, i32 1)
  ret i32 %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i32 @json_object_clear(%Tstruct.json_object_t_t* %object) #0 {
entry:
  %object.addr = alloca %Tstruct.Spl_json_object_t_t*, align 4
  %0 = bitcast %Tstruct.json_object_t_t* %object to %Tstruct.Spl_json_object_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %3 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_object_t_t* %3 to i32
  %5 = ptrtoint i8* %call to i64
  %6 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %5)
  %call1 = call i64 @w2c_json_object_clear(i8* %6, i32 %4)
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
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %schema.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %4, i32* %5, align 4
  %6 = bitcast %Tstruct.Spl_json_value_t_t** %temp_schema_value to i32*
  store i32 0, i32* %6, align 4
  %7 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 0, i32* %7, align 4
  %8 = bitcast %Tstruct.Spl_json_array_t_t** %schema_array to i32*
  store i32 0, i32* %8, align 4
  %9 = bitcast %Tstruct.Spl_json_array_t_t** %value_array to i32*
  store i32 0, i32* %9, align 4
  %10 = bitcast %Tstruct.Spl_json_object_t_t** %schema_object to i32*
  store i32 0, i32* %10, align 4
  %11 = bitcast %Tstruct.Spl_json_object_t_t** %value_object to i32*
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %schema_type, align 4
  store i32 -1, i32* %value_type, align 4
  %12 = bitcast i8** %key to i32*
  store i32 0, i32* %12, align 4
  store i64 0, i64* %i, align 8
  store i64 0, i64* %count, align 8
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %15 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %16 = ptrtoint %Tstruct.Spl_json_value_t_t* %15 to i32
  %cmp1 = icmp eq i32 %16, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %17 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %17 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %21 = bitcast i8* %19 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %21)
  store i32 %call, i32* %schema_type, align 4
  %22 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %23 = ptrtoint %Tstruct.Spl_json_value_t_t* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %_Dynamic_check.succeeded
  %26 = bitcast i8* %24 to %Tstruct.Spl_json_value_t_t*
  %call4 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %26)
  store i32 %call4, i32* %value_type, align 4
  %27 = load i32, i32* %schema_type, align 4
  %28 = load i32, i32* %value_type, align 4
  %cmp5 = icmp ne i32 %27, %28
  br i1 %cmp5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded3
  %29 = load i32, i32* %schema_type, align 4
  %cmp6 = icmp ne i32 %29, 1
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed2:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

if.end8:                                          ; preds = %land.lhs.true, %_Dynamic_check.succeeded3
  %30 = load i32, i32* %schema_type, align 4
  switch i32 %30, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb39
    i32 2, label %sw.bb88
    i32 3, label %sw.bb88
    i32 6, label %sw.bb88
    i32 1, label %sw.bb88
    i32 -1, label %sw.bb89
  ]

sw.bb:                                            ; preds = %if.end8
  %31 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %32 = ptrtoint %Tstruct.Spl_json_value_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded10, label %_Dynamic_check.failed9

_Dynamic_check.succeeded10:                       ; preds = %sw.bb
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_value_t_t*
  %call11 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %35)
  %36 = bitcast %Tstruct.Spl_json_array_t_t* %call11 to %Tstruct.json_array_t_t*
  %37 = bitcast %Tstruct.json_array_t_t* %36 to i8*
  %38 = call i32 @c_TPtoO(i8* %37)
  %39 = inttoptr i32 %38 to %Tstruct.json_array_t_t*
  %40 = bitcast %Tstruct.json_array_t_t* %39 to %Tstruct.Spl_json_array_t_t*
  %41 = ptrtoint %Tstruct.Spl_json_array_t_t* %40 to i32
  %42 = bitcast %Tstruct.Spl_json_array_t_t** %schema_array to i32*
  store i32 %41, i32* %42, align 4
  %43 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %44 = ptrtoint %Tstruct.Spl_json_value_t_t* %43 to i32
  %45 = call i8* @c_fetch_pointer_from_offset(i32 %44)
  %46 = call i1 @c_isTaintedPointerToTaintedMem(i8* %45)
  br i1 %46, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded10
  %47 = bitcast i8* %45 to %Tstruct.Spl_json_value_t_t*
  %call14 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %47)
  %48 = bitcast %Tstruct.Spl_json_array_t_t* %call14 to %Tstruct.json_array_t_t*
  %49 = bitcast %Tstruct.json_array_t_t* %48 to i8*
  %50 = call i32 @c_TPtoO(i8* %49)
  %51 = inttoptr i32 %50 to %Tstruct.json_array_t_t*
  %52 = bitcast %Tstruct.json_array_t_t* %51 to %Tstruct.Spl_json_array_t_t*
  %53 = ptrtoint %Tstruct.Spl_json_array_t_t* %52 to i32
  %54 = bitcast %Tstruct.Spl_json_array_t_t** %value_array to i32*
  store i32 %53, i32* %54, align 4
  %55 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %schema_array, align 4
  %56 = ptrtoint %Tstruct.Spl_json_array_t_t* %55 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded13
  %59 = bitcast i8* %57 to %Tstruct.Spl_json_array_t_t*
  %call17 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %59)
  store i64 %call17, i64* %count, align 8
  %60 = load i64, i64* %count, align 8
  %cmp18 = icmp eq i64 %60, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %_Dynamic_check.succeeded16
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed9:                           ; preds = %sw.bb
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded10
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded13
  call void @llvm.trap() #9
  unreachable

if.end20:                                         ; preds = %_Dynamic_check.succeeded16
  %61 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %schema_array, align 4
  %62 = ptrtoint %Tstruct.Spl_json_array_t_t* %61 to i32
  %63 = call i8* @c_fetch_pointer_from_offset(i32 %62)
  %64 = call i1 @c_isTaintedPointerToTaintedMem(i8* %63)
  br i1 %64, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %if.end20
  %65 = bitcast i8* %63 to %Tstruct.Spl_json_array_t_t*
  %call23 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %65, i64 0)
  %66 = bitcast %Tstruct.Spl_json_value_t_t* %call23 to %Tstruct.json_value_t_t*
  %67 = bitcast %Tstruct.json_value_t_t* %66 to i8*
  %68 = call i32 @c_TPtoO(i8* %67)
  %69 = inttoptr i32 %68 to %Tstruct.json_value_t_t*
  %70 = bitcast %Tstruct.json_value_t_t* %69 to %Tstruct.Spl_json_value_t_t*
  %71 = ptrtoint %Tstruct.Spl_json_value_t_t* %70 to i32
  %72 = bitcast %Tstruct.Spl_json_value_t_t** %temp_schema_value to i32*
  store i32 %71, i32* %72, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %_Dynamic_check.succeeded22
  %73 = load i64, i64* %i, align 8
  %74 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %value_array, align 4
  %75 = ptrtoint %Tstruct.Spl_json_array_t_t* %74 to i32
  %76 = call i8* @c_fetch_pointer_from_offset(i32 %75)
  %77 = call i1 @c_isTaintedPointerToTaintedMem(i8* %76)
  br i1 %77, label %_Dynamic_check.succeeded25, label %_Dynamic_check.failed24

_Dynamic_check.succeeded25:                       ; preds = %for.cond
  %78 = bitcast i8* %76 to %Tstruct.Spl_json_array_t_t*
  %call26 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %78)
  %cmp27 = icmp ult i64 %73, %call26
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded25
  %79 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %value_array, align 4
  %80 = load i64, i64* %i, align 8
  %81 = ptrtoint %Tstruct.Spl_json_array_t_t* %79 to i32
  %82 = call i8* @c_fetch_pointer_from_offset(i32 %81)
  %83 = call i1 @c_isTaintedPointerToTaintedMem(i8* %82)
  br i1 %83, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %for.body
  %84 = bitcast i8* %82 to %Tstruct.Spl_json_array_t_t*
  %call30 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %84, i64 %80)
  %85 = bitcast %Tstruct.Spl_json_value_t_t* %call30 to %Tstruct.json_value_t_t*
  %86 = bitcast %Tstruct.json_value_t_t* %85 to i8*
  %87 = call i32 @c_TPtoO(i8* %86)
  %88 = inttoptr i32 %87 to %Tstruct.json_value_t_t*
  %89 = bitcast %Tstruct.json_value_t_t* %88 to %Tstruct.Spl_json_value_t_t*
  %90 = ptrtoint %Tstruct.Spl_json_value_t_t* %89 to i32
  %91 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %90, i32* %91, align 4
  %92 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_schema_value, align 4
  %93 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %94 = ptrtoint %Tstruct.Spl_json_value_t_t* %92 to i32
  %95 = call i8* @c_fetch_pointer_from_offset(i32 %94)
  %96 = call i1 @c_isTaintedPointerToTaintedMem(i8* %95)
  br i1 %96, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.succeeded29
  %97 = bitcast i8* %95 to %Tstruct.Spl_json_value_t_t*
  %98 = ptrtoint %Tstruct.Spl_json_value_t_t* %93 to i32
  %99 = call i8* @c_fetch_pointer_from_offset(i32 %98)
  %100 = call i1 @c_isTaintedPointerToTaintedMem(i8* %99)
  br i1 %100, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %_Dynamic_check.succeeded32
  %101 = bitcast i8* %99 to %Tstruct.Spl_json_value_t_t*
  %call35 = call i32 @json_validate(%Tstruct.Spl_json_value_t_t* %97, %Tstruct.Spl_json_value_t_t* %101)
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %_Dynamic_check.succeeded34
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed21:                          ; preds = %if.end20
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed24:                          ; preds = %for.cond
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed28:                          ; preds = %for.body
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed31:                          ; preds = %_Dynamic_check.succeeded29
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed33:                          ; preds = %_Dynamic_check.succeeded32
  call void @llvm.trap() #9
  unreachable

if.end38:                                         ; preds = %_Dynamic_check.succeeded34
  br label %for.inc

for.inc:                                          ; preds = %if.end38
  %102 = load i64, i64* %i, align 8
  %inc = add i64 %102, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %_Dynamic_check.succeeded25
  store i32 0, i32* %retval, align 4
  br label %return

sw.bb39:                                          ; preds = %if.end8
  %103 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %schema.addr, align 4
  %104 = ptrtoint %Tstruct.Spl_json_value_t_t* %103 to i32
  %105 = call i8* @c_fetch_pointer_from_offset(i32 %104)
  %106 = call i1 @c_isTaintedPointerToTaintedMem(i8* %105)
  br i1 %106, label %_Dynamic_check.succeeded41, label %_Dynamic_check.failed40

_Dynamic_check.succeeded41:                       ; preds = %sw.bb39
  %107 = bitcast i8* %105 to %Tstruct.Spl_json_value_t_t*
  %call42 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %107)
  %108 = bitcast %Tstruct.Spl_json_object_t_t* %call42 to %Tstruct.json_object_t_t*
  %109 = bitcast %Tstruct.json_object_t_t* %108 to i8*
  %110 = call i32 @c_TPtoO(i8* %109)
  %111 = inttoptr i32 %110 to %Tstruct.json_object_t_t*
  %112 = bitcast %Tstruct.json_object_t_t* %111 to %Tstruct.Spl_json_object_t_t*
  %113 = ptrtoint %Tstruct.Spl_json_object_t_t* %112 to i32
  %114 = bitcast %Tstruct.Spl_json_object_t_t** %schema_object to i32*
  store i32 %113, i32* %114, align 4
  %115 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %116 = ptrtoint %Tstruct.Spl_json_value_t_t* %115 to i32
  %117 = call i8* @c_fetch_pointer_from_offset(i32 %116)
  %118 = call i1 @c_isTaintedPointerToTaintedMem(i8* %117)
  br i1 %118, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %_Dynamic_check.succeeded41
  %119 = bitcast i8* %117 to %Tstruct.Spl_json_value_t_t*
  %call45 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %119)
  %120 = bitcast %Tstruct.Spl_json_object_t_t* %call45 to %Tstruct.json_object_t_t*
  %121 = bitcast %Tstruct.json_object_t_t* %120 to i8*
  %122 = call i32 @c_TPtoO(i8* %121)
  %123 = inttoptr i32 %122 to %Tstruct.json_object_t_t*
  %124 = bitcast %Tstruct.json_object_t_t* %123 to %Tstruct.Spl_json_object_t_t*
  %125 = ptrtoint %Tstruct.Spl_json_object_t_t* %124 to i32
  %126 = bitcast %Tstruct.Spl_json_object_t_t** %value_object to i32*
  store i32 %125, i32* %126, align 4
  %127 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  %128 = ptrtoint %Tstruct.Spl_json_object_t_t* %127 to i32
  %129 = call i8* @c_fetch_pointer_from_offset(i32 %128)
  %130 = call i1 @c_isTaintedPointerToTaintedMem(i8* %129)
  br i1 %130, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded44
  %131 = bitcast i8* %129 to %Tstruct.Spl_json_object_t_t*
  %call48 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %131)
  store i64 %call48, i64* %count, align 8
  %132 = load i64, i64* %count, align 8
  %cmp49 = icmp eq i64 %132, 0
  br i1 %cmp49, label %if.then50, label %if.else

if.then50:                                        ; preds = %_Dynamic_check.succeeded47
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed40:                          ; preds = %sw.bb39
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded41
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded44
  call void @llvm.trap() #9
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded47
  %133 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %value_object, align 4
  %134 = ptrtoint %Tstruct.Spl_json_object_t_t* %133 to i32
  %135 = call i8* @c_fetch_pointer_from_offset(i32 %134)
  %136 = call i1 @c_isTaintedPointerToTaintedMem(i8* %135)
  br i1 %136, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %if.else
  %137 = bitcast i8* %135 to %Tstruct.Spl_json_object_t_t*
  %call53 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %137)
  %138 = load i64, i64* %count, align 8
  %cmp54 = icmp ult i64 %call53, %138
  br i1 %cmp54, label %if.then55, label %if.end56

if.then55:                                        ; preds = %_Dynamic_check.succeeded52
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed51:                          ; preds = %if.else
  call void @llvm.trap() #9
  unreachable

if.end56:                                         ; preds = %_Dynamic_check.succeeded52
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  store i64 0, i64* %i, align 8
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc85, %if.end57
  %139 = load i64, i64* %i, align 8
  %140 = load i64, i64* %count, align 8
  %cmp59 = icmp ult i64 %139, %140
  br i1 %cmp59, label %for.body60, label %for.end87

for.body60:                                       ; preds = %for.cond58
  %141 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  %142 = load i64, i64* %i, align 8
  %143 = ptrtoint %Tstruct.Spl_json_object_t_t* %141 to i32
  %144 = call i8* @c_fetch_pointer_from_offset(i32 %143)
  %145 = call i1 @c_isTaintedPointerToTaintedMem(i8* %144)
  br i1 %145, label %_Dynamic_check.succeeded62, label %_Dynamic_check.failed61

_Dynamic_check.succeeded62:                       ; preds = %for.body60
  %146 = bitcast i8* %144 to %Tstruct.Spl_json_object_t_t*
  %call63 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %146, i64 %142)
  %147 = call i32 @c_TPtoO(i8* %call63)
  %148 = inttoptr i32 %147 to i8*
  %149 = ptrtoint i8* %148 to i32
  %150 = bitcast i8** %key to i32*
  store i32 %149, i32* %150, align 4
  %151 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %schema_object, align 4
  %152 = load i8*, i8** %key, align 4
  %153 = ptrtoint %Tstruct.Spl_json_object_t_t* %151 to i32
  %154 = call i8* @c_fetch_pointer_from_offset(i32 %153)
  %155 = call i1 @c_isTaintedPointerToTaintedMem(i8* %154)
  br i1 %155, label %_Dynamic_check.succeeded65, label %_Dynamic_check.failed64

_Dynamic_check.succeeded65:                       ; preds = %_Dynamic_check.succeeded62
  %156 = bitcast i8* %154 to %Tstruct.Spl_json_object_t_t*
  %157 = ptrtoint i8* %152 to i32
  %158 = call i8* @c_fetch_pointer_from_offset(i32 %157)
  %159 = call i1 @c_isTaintedPointerToTaintedMem(i8* %158)
  br i1 %159, label %_Dynamic_check.succeeded67, label %_Dynamic_check.failed66

_Dynamic_check.succeeded67:                       ; preds = %_Dynamic_check.succeeded65
  %call68 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %156, i8* %158)
  %160 = bitcast %Tstruct.Spl_json_value_t_t* %call68 to %Tstruct.json_value_t_t*
  %161 = bitcast %Tstruct.json_value_t_t* %160 to i8*
  %162 = call i32 @c_TPtoO(i8* %161)
  %163 = inttoptr i32 %162 to %Tstruct.json_value_t_t*
  %164 = bitcast %Tstruct.json_value_t_t* %163 to %Tstruct.Spl_json_value_t_t*
  %165 = ptrtoint %Tstruct.Spl_json_value_t_t* %164 to i32
  %166 = bitcast %Tstruct.Spl_json_value_t_t** %temp_schema_value to i32*
  store i32 %165, i32* %166, align 4
  %167 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %value_object, align 4
  %168 = load i8*, i8** %key, align 4
  %169 = ptrtoint %Tstruct.Spl_json_object_t_t* %167 to i32
  %170 = call i8* @c_fetch_pointer_from_offset(i32 %169)
  %171 = call i1 @c_isTaintedPointerToTaintedMem(i8* %170)
  br i1 %171, label %_Dynamic_check.succeeded70, label %_Dynamic_check.failed69

_Dynamic_check.succeeded70:                       ; preds = %_Dynamic_check.succeeded67
  %172 = bitcast i8* %170 to %Tstruct.Spl_json_object_t_t*
  %173 = ptrtoint i8* %168 to i32
  %174 = call i8* @c_fetch_pointer_from_offset(i32 %173)
  %175 = call i1 @c_isTaintedPointerToTaintedMem(i8* %174)
  br i1 %175, label %_Dynamic_check.succeeded72, label %_Dynamic_check.failed71

_Dynamic_check.succeeded72:                       ; preds = %_Dynamic_check.succeeded70
  %call73 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %172, i8* %174)
  %176 = bitcast %Tstruct.Spl_json_value_t_t* %call73 to %Tstruct.json_value_t_t*
  %177 = bitcast %Tstruct.json_value_t_t* %176 to i8*
  %178 = call i32 @c_TPtoO(i8* %177)
  %179 = inttoptr i32 %178 to %Tstruct.json_value_t_t*
  %180 = bitcast %Tstruct.json_value_t_t* %179 to %Tstruct.Spl_json_value_t_t*
  %181 = ptrtoint %Tstruct.Spl_json_value_t_t* %180 to i32
  %182 = bitcast %Tstruct.Spl_json_value_t_t** %temp_value to i32*
  store i32 %181, i32* %182, align 4
  %183 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %184 = ptrtoint %Tstruct.Spl_json_value_t_t* %183 to i32
  %cmp74 = icmp eq i32 %184, 0
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %_Dynamic_check.succeeded72
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed61:                          ; preds = %for.body60
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed64:                          ; preds = %_Dynamic_check.succeeded62
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed66:                          ; preds = %_Dynamic_check.succeeded65
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed69:                          ; preds = %_Dynamic_check.succeeded67
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed71:                          ; preds = %_Dynamic_check.succeeded70
  call void @llvm.trap() #9
  unreachable

if.end76:                                         ; preds = %_Dynamic_check.succeeded72
  %185 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_schema_value, align 4
  %186 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %temp_value, align 4
  %187 = ptrtoint %Tstruct.Spl_json_value_t_t* %185 to i32
  %188 = call i8* @c_fetch_pointer_from_offset(i32 %187)
  %189 = call i1 @c_isTaintedPointerToTaintedMem(i8* %188)
  br i1 %189, label %_Dynamic_check.succeeded78, label %_Dynamic_check.failed77

_Dynamic_check.succeeded78:                       ; preds = %if.end76
  %190 = bitcast i8* %188 to %Tstruct.Spl_json_value_t_t*
  %191 = ptrtoint %Tstruct.Spl_json_value_t_t* %186 to i32
  %192 = call i8* @c_fetch_pointer_from_offset(i32 %191)
  %193 = call i1 @c_isTaintedPointerToTaintedMem(i8* %192)
  br i1 %193, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %_Dynamic_check.succeeded78
  %194 = bitcast i8* %192 to %Tstruct.Spl_json_value_t_t*
  %call81 = call i32 @json_validate(%Tstruct.Spl_json_value_t_t* %190, %Tstruct.Spl_json_value_t_t* %194)
  %cmp82 = icmp eq i32 %call81, -1
  br i1 %cmp82, label %if.then83, label %if.end84

if.then83:                                        ; preds = %_Dynamic_check.succeeded80
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed77:                          ; preds = %if.end76
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed79:                          ; preds = %_Dynamic_check.succeeded78
  call void @llvm.trap() #9
  unreachable

if.end84:                                         ; preds = %_Dynamic_check.succeeded80
  br label %for.inc85

for.inc85:                                        ; preds = %if.end84
  %195 = load i64, i64* %i, align 8
  %inc86 = add i64 %195, 1
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
  %196 = load i32, i32* %retval, align 4
  ret i32 %196
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
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %a.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = bitcast %Tstruct.json_value_t_t* %b to %Tstruct.Spl_json_value_t_t*
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %b.addr to i32*
  store i32 %4, i32* %5, align 4
  %6 = bitcast %Tstruct.Spl_json_object_t_t** %a_object to i32*
  store i32 0, i32* %6, align 4
  %7 = bitcast %Tstruct.Spl_json_object_t_t** %b_object to i32*
  store i32 0, i32* %7, align 4
  %8 = bitcast %Tstruct.Spl_json_array_t_t** %a_array to i32*
  store i32 0, i32* %8, align 4
  %9 = bitcast %Tstruct.Spl_json_array_t_t** %b_array to i32*
  store i32 0, i32* %9, align 4
  %10 = bitcast i8** %a_string to i32*
  store i32 0, i32* %10, align 4
  %11 = bitcast i8** %b_string to i32*
  store i32 0, i32* %11, align 4
  %12 = bitcast i8** %key to i32*
  store i32 0, i32* %12, align 4
  store i64 0, i64* %a_count, align 8
  store i64 0, i64* %b_count, align 8
  store i64 0, i64* %i, align 8
  %13 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %14 = ptrtoint %Tstruct.Spl_json_value_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %17)
  store i32 %call, i32* %a_type, align 4
  %18 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %19 = ptrtoint %Tstruct.Spl_json_value_t_t* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_value_t_t*
  %call3 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %22)
  store i32 %call3, i32* %b_type, align 4
  %23 = load i32, i32* %a_type, align 4
  %24 = load i32, i32* %b_type, align 4
  %cmp = icmp ne i32 %23, %24
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded2
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded2
  %25 = load i32, i32* %a_type, align 4
  switch i32 %25, label %sw.default [
    i32 5, label %sw.bb
    i32 4, label %sw.bb33
    i32 2, label %sw.bb76
    i32 6, label %sw.bb93
    i32 3, label %sw.bb102
    i32 -1, label %sw.bb111
    i32 1, label %sw.bb112
  ]

sw.bb:                                            ; preds = %if.end
  %26 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %27 = ptrtoint %Tstruct.Spl_json_value_t_t* %26 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %sw.bb
  %30 = bitcast i8* %28 to %Tstruct.Spl_json_value_t_t*
  %call6 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %30)
  %31 = bitcast %Tstruct.Spl_json_array_t_t* %call6 to %Tstruct.json_array_t_t*
  %32 = bitcast %Tstruct.json_array_t_t* %31 to i8*
  %33 = call i32 @c_TPtoO(i8* %32)
  %34 = inttoptr i32 %33 to %Tstruct.json_array_t_t*
  %35 = bitcast %Tstruct.json_array_t_t* %34 to %Tstruct.Spl_json_array_t_t*
  %36 = ptrtoint %Tstruct.Spl_json_array_t_t* %35 to i32
  %37 = bitcast %Tstruct.Spl_json_array_t_t** %a_array to i32*
  store i32 %36, i32* %37, align 4
  %38 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %39 = ptrtoint %Tstruct.Spl_json_value_t_t* %38 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded5
  %42 = bitcast i8* %40 to %Tstruct.Spl_json_value_t_t*
  %call9 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %42)
  %43 = bitcast %Tstruct.Spl_json_array_t_t* %call9 to %Tstruct.json_array_t_t*
  %44 = bitcast %Tstruct.json_array_t_t* %43 to i8*
  %45 = call i32 @c_TPtoO(i8* %44)
  %46 = inttoptr i32 %45 to %Tstruct.json_array_t_t*
  %47 = bitcast %Tstruct.json_array_t_t* %46 to %Tstruct.Spl_json_array_t_t*
  %48 = ptrtoint %Tstruct.Spl_json_array_t_t* %47 to i32
  %49 = bitcast %Tstruct.Spl_json_array_t_t** %b_array to i32*
  store i32 %48, i32* %49, align 4
  %50 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %a_array, align 4
  %51 = ptrtoint %Tstruct.Spl_json_array_t_t* %50 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %54 = bitcast i8* %52 to %Tstruct.Spl_json_array_t_t*
  %call12 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %54)
  store i64 %call12, i64* %a_count, align 8
  %55 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %b_array, align 4
  %56 = ptrtoint %Tstruct.Spl_json_array_t_t* %55 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %_Dynamic_check.succeeded11
  %59 = bitcast i8* %57 to %Tstruct.Spl_json_array_t_t*
  %call15 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %59)
  store i64 %call15, i64* %b_count, align 8
  %60 = load i64, i64* %a_count, align 8
  %61 = load i64, i64* %b_count, align 8
  %cmp16 = icmp ne i64 %60, %61
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %_Dynamic_check.succeeded14
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed4:                           ; preds = %sw.bb
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed13:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #9
  unreachable

if.end18:                                         ; preds = %_Dynamic_check.succeeded14
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end18
  %62 = load i64, i64* %i, align 8
  %63 = load i64, i64* %a_count, align 8
  %cmp19 = icmp ult i64 %62, %63
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %a_array, align 4
  %65 = load i64, i64* %i, align 8
  %66 = ptrtoint %Tstruct.Spl_json_array_t_t* %64 to i32
  %67 = call i8* @c_fetch_pointer_from_offset(i32 %66)
  %68 = call i1 @c_isTaintedPointerToTaintedMem(i8* %67)
  br i1 %68, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %for.body
  %69 = bitcast i8* %67 to %Tstruct.Spl_json_array_t_t*
  %call22 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %69, i64 %65)
  %70 = bitcast %Tstruct.Spl_json_value_t_t* %call22 to %Tstruct.json_value_t_t*
  %71 = bitcast %Tstruct.json_value_t_t* %70 to i8*
  %72 = call i32 @c_TPtoO(i8* %71)
  %73 = inttoptr i32 %72 to %Tstruct.Spl_json_value_t_t*
  %74 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %b_array, align 4
  %75 = load i64, i64* %i, align 8
  %76 = ptrtoint %Tstruct.Spl_json_array_t_t* %74 to i32
  %77 = call i8* @c_fetch_pointer_from_offset(i32 %76)
  %78 = call i1 @c_isTaintedPointerToTaintedMem(i8* %77)
  br i1 %78, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded21
  %79 = bitcast i8* %77 to %Tstruct.Spl_json_array_t_t*
  %call25 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %79, i64 %75)
  %80 = bitcast %Tstruct.Spl_json_value_t_t* %call25 to %Tstruct.json_value_t_t*
  %81 = bitcast %Tstruct.json_value_t_t* %80 to i8*
  %82 = call i32 @c_TPtoO(i8* %81)
  %83 = inttoptr i32 %82 to %Tstruct.Spl_json_value_t_t*
  %84 = ptrtoint %Tstruct.Spl_json_value_t_t* %73 to i32
  %85 = call i8* @c_fetch_pointer_from_offset(i32 %84)
  %86 = call i1 @c_isTaintedPointerToTaintedMem(i8* %85)
  br i1 %86, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded24
  %87 = bitcast i8* %85 to %Tstruct.Spl_json_value_t_t*
  %88 = ptrtoint %Tstruct.Spl_json_value_t_t* %83 to i32
  %89 = call i8* @c_fetch_pointer_from_offset(i32 %88)
  %90 = call i1 @c_isTaintedPointerToTaintedMem(i8* %89)
  br i1 %90, label %_Dynamic_check.succeeded29, label %_Dynamic_check.failed28

_Dynamic_check.succeeded29:                       ; preds = %_Dynamic_check.succeeded27
  %91 = bitcast i8* %89 to %Tstruct.Spl_json_value_t_t*
  %call30 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_value_equals to i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %87, %Tstruct.Spl_json_value_t_t* %91)
  %tobool = icmp ne i32 %call30, 0
  br i1 %tobool, label %if.end32, label %if.then31

if.then31:                                        ; preds = %_Dynamic_check.succeeded29
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed20:                          ; preds = %for.body
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed28:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #9
  unreachable

if.end32:                                         ; preds = %_Dynamic_check.succeeded29
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %92 = load i64, i64* %i, align 8
  %inc = add i64 %92, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb33:                                          ; preds = %if.end
  %93 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %94 = ptrtoint %Tstruct.Spl_json_value_t_t* %93 to i32
  %95 = call i8* @c_fetch_pointer_from_offset(i32 %94)
  %96 = call i1 @c_isTaintedPointerToTaintedMem(i8* %95)
  br i1 %96, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %sw.bb33
  %97 = bitcast i8* %95 to %Tstruct.Spl_json_value_t_t*
  %call36 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %97)
  %98 = bitcast %Tstruct.Spl_json_object_t_t* %call36 to %Tstruct.json_object_t_t*
  %99 = bitcast %Tstruct.json_object_t_t* %98 to i8*
  %100 = call i32 @c_TPtoO(i8* %99)
  %101 = inttoptr i32 %100 to %Tstruct.json_object_t_t*
  %102 = bitcast %Tstruct.json_object_t_t* %101 to %Tstruct.Spl_json_object_t_t*
  %103 = ptrtoint %Tstruct.Spl_json_object_t_t* %102 to i32
  %104 = bitcast %Tstruct.Spl_json_object_t_t** %a_object to i32*
  store i32 %103, i32* %104, align 4
  %105 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %106 = ptrtoint %Tstruct.Spl_json_value_t_t* %105 to i32
  %107 = call i8* @c_fetch_pointer_from_offset(i32 %106)
  %108 = call i1 @c_isTaintedPointerToTaintedMem(i8* %107)
  br i1 %108, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %_Dynamic_check.succeeded35
  %109 = bitcast i8* %107 to %Tstruct.Spl_json_value_t_t*
  %call39 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %109)
  %110 = bitcast %Tstruct.Spl_json_object_t_t* %call39 to %Tstruct.json_object_t_t*
  %111 = bitcast %Tstruct.json_object_t_t* %110 to i8*
  %112 = call i32 @c_TPtoO(i8* %111)
  %113 = inttoptr i32 %112 to %Tstruct.json_object_t_t*
  %114 = bitcast %Tstruct.json_object_t_t* %113 to %Tstruct.Spl_json_object_t_t*
  %115 = ptrtoint %Tstruct.Spl_json_object_t_t* %114 to i32
  %116 = bitcast %Tstruct.Spl_json_object_t_t** %b_object to i32*
  store i32 %115, i32* %116, align 4
  %117 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  %118 = ptrtoint %Tstruct.Spl_json_object_t_t* %117 to i32
  %119 = call i8* @c_fetch_pointer_from_offset(i32 %118)
  %120 = call i1 @c_isTaintedPointerToTaintedMem(i8* %119)
  br i1 %120, label %_Dynamic_check.succeeded41, label %_Dynamic_check.failed40

_Dynamic_check.succeeded41:                       ; preds = %_Dynamic_check.succeeded38
  %121 = bitcast i8* %119 to %Tstruct.Spl_json_object_t_t*
  %call42 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %121)
  store i64 %call42, i64* %a_count, align 8
  %122 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %b_object, align 4
  %123 = ptrtoint %Tstruct.Spl_json_object_t_t* %122 to i32
  %124 = call i8* @c_fetch_pointer_from_offset(i32 %123)
  %125 = call i1 @c_isTaintedPointerToTaintedMem(i8* %124)
  br i1 %125, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %_Dynamic_check.succeeded41
  %126 = bitcast i8* %124 to %Tstruct.Spl_json_object_t_t*
  %call45 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %126)
  store i64 %call45, i64* %b_count, align 8
  %127 = load i64, i64* %a_count, align 8
  %128 = load i64, i64* %b_count, align 8
  %cmp46 = icmp ne i64 %127, %128
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %_Dynamic_check.succeeded44
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed34:                          ; preds = %sw.bb33
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed37:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed40:                          ; preds = %_Dynamic_check.succeeded38
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded41
  call void @llvm.trap() #9
  unreachable

if.end48:                                         ; preds = %_Dynamic_check.succeeded44
  store i64 0, i64* %i, align 8
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc73, %if.end48
  %129 = load i64, i64* %i, align 8
  %130 = load i64, i64* %a_count, align 8
  %cmp50 = icmp ult i64 %129, %130
  br i1 %cmp50, label %for.body51, label %for.end75

for.body51:                                       ; preds = %for.cond49
  %131 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  %132 = load i64, i64* %i, align 8
  %133 = ptrtoint %Tstruct.Spl_json_object_t_t* %131 to i32
  %134 = call i8* @c_fetch_pointer_from_offset(i32 %133)
  %135 = call i1 @c_isTaintedPointerToTaintedMem(i8* %134)
  br i1 %135, label %_Dynamic_check.succeeded53, label %_Dynamic_check.failed52

_Dynamic_check.succeeded53:                       ; preds = %for.body51
  %136 = bitcast i8* %134 to %Tstruct.Spl_json_object_t_t*
  %call54 = call i8* bitcast (i8* (%Tstruct.Spl_json_object_t_t*, i64)* @json_object_get_name to i8* (%Tstruct.Spl_json_object_t_t*, i64)*)(%Tstruct.Spl_json_object_t_t* %136, i64 %132)
  %137 = call i32 @c_TPtoO(i8* %call54)
  %138 = inttoptr i32 %137 to i8*
  %139 = ptrtoint i8* %138 to i32
  %140 = bitcast i8** %key to i32*
  store i32 %139, i32* %140, align 4
  %141 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %a_object, align 4
  %142 = load i8*, i8** %key, align 4
  %143 = ptrtoint %Tstruct.Spl_json_object_t_t* %141 to i32
  %144 = call i8* @c_fetch_pointer_from_offset(i32 %143)
  %145 = call i1 @c_isTaintedPointerToTaintedMem(i8* %144)
  br i1 %145, label %_Dynamic_check.succeeded56, label %_Dynamic_check.failed55

_Dynamic_check.succeeded56:                       ; preds = %_Dynamic_check.succeeded53
  %146 = bitcast i8* %144 to %Tstruct.Spl_json_object_t_t*
  %147 = ptrtoint i8* %142 to i32
  %148 = call i8* @c_fetch_pointer_from_offset(i32 %147)
  %149 = call i1 @c_isTaintedPointerToTaintedMem(i8* %148)
  br i1 %149, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %_Dynamic_check.succeeded56
  %call59 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %146, i8* %148)
  %150 = bitcast %Tstruct.Spl_json_value_t_t* %call59 to %Tstruct.json_value_t_t*
  %151 = bitcast %Tstruct.json_value_t_t* %150 to i8*
  %152 = call i32 @c_TPtoO(i8* %151)
  %153 = inttoptr i32 %152 to %Tstruct.Spl_json_value_t_t*
  %154 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %b_object, align 4
  %155 = load i8*, i8** %key, align 4
  %156 = ptrtoint %Tstruct.Spl_json_object_t_t* %154 to i32
  %157 = call i8* @c_fetch_pointer_from_offset(i32 %156)
  %158 = call i1 @c_isTaintedPointerToTaintedMem(i8* %157)
  br i1 %158, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded58
  %159 = bitcast i8* %157 to %Tstruct.Spl_json_object_t_t*
  %160 = ptrtoint i8* %155 to i32
  %161 = call i8* @c_fetch_pointer_from_offset(i32 %160)
  %162 = call i1 @c_isTaintedPointerToTaintedMem(i8* %161)
  br i1 %162, label %_Dynamic_check.succeeded63, label %_Dynamic_check.failed62

_Dynamic_check.succeeded63:                       ; preds = %_Dynamic_check.succeeded61
  %call64 = call %Tstruct.Spl_json_value_t_t* bitcast (%Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)* @json_object_get_value to %Tstruct.Spl_json_value_t_t* (%Tstruct.Spl_json_object_t_t*, i8*)*)(%Tstruct.Spl_json_object_t_t* %159, i8* %161)
  %163 = bitcast %Tstruct.Spl_json_value_t_t* %call64 to %Tstruct.json_value_t_t*
  %164 = bitcast %Tstruct.json_value_t_t* %163 to i8*
  %165 = call i32 @c_TPtoO(i8* %164)
  %166 = inttoptr i32 %165 to %Tstruct.Spl_json_value_t_t*
  %167 = ptrtoint %Tstruct.Spl_json_value_t_t* %153 to i32
  %168 = call i8* @c_fetch_pointer_from_offset(i32 %167)
  %169 = call i1 @c_isTaintedPointerToTaintedMem(i8* %168)
  br i1 %169, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %_Dynamic_check.succeeded63
  %170 = bitcast i8* %168 to %Tstruct.Spl_json_value_t_t*
  %171 = ptrtoint %Tstruct.Spl_json_value_t_t* %166 to i32
  %172 = call i8* @c_fetch_pointer_from_offset(i32 %171)
  %173 = call i1 @c_isTaintedPointerToTaintedMem(i8* %172)
  br i1 %173, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded66
  %174 = bitcast i8* %172 to %Tstruct.Spl_json_value_t_t*
  %call69 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)* @json_value_equals to i32 (%Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %170, %Tstruct.Spl_json_value_t_t* %174)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end72, label %if.then71

if.then71:                                        ; preds = %_Dynamic_check.succeeded68
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed52:                          ; preds = %for.body51
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed55:                          ; preds = %_Dynamic_check.succeeded53
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed57:                          ; preds = %_Dynamic_check.succeeded56
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded58
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed62:                          ; preds = %_Dynamic_check.succeeded61
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed65:                          ; preds = %_Dynamic_check.succeeded63
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded66
  call void @llvm.trap() #9
  unreachable

if.end72:                                         ; preds = %_Dynamic_check.succeeded68
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %175 = load i64, i64* %i, align 8
  %inc74 = add i64 %175, 1
  store i64 %inc74, i64* %i, align 8
  br label %for.cond49, !llvm.loop !16

for.end75:                                        ; preds = %for.cond49
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb76:                                          ; preds = %if.end
  %176 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %177 = ptrtoint %Tstruct.Spl_json_value_t_t* %176 to i32
  %178 = call i8* @c_fetch_pointer_from_offset(i32 %177)
  %179 = call i1 @c_isTaintedPointerToTaintedMem(i8* %178)
  br i1 %179, label %_Dynamic_check.succeeded78, label %_Dynamic_check.failed77

_Dynamic_check.succeeded78:                       ; preds = %sw.bb76
  %180 = bitcast i8* %178 to %Tstruct.Spl_json_value_t_t*
  %call79 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %180)
  %181 = call i32 @c_TPtoO(i8* %call79)
  %182 = inttoptr i32 %181 to i8*
  %183 = ptrtoint i8* %182 to i32
  %184 = bitcast i8** %a_string to i32*
  store i32 %183, i32* %184, align 4
  %185 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %186 = ptrtoint %Tstruct.Spl_json_value_t_t* %185 to i32
  %187 = call i8* @c_fetch_pointer_from_offset(i32 %186)
  %188 = call i1 @c_isTaintedPointerToTaintedMem(i8* %187)
  br i1 %188, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %_Dynamic_check.succeeded78
  %189 = bitcast i8* %187 to %Tstruct.Spl_json_value_t_t*
  %call82 = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %189)
  %190 = call i32 @c_TPtoO(i8* %call82)
  %191 = inttoptr i32 %190 to i8*
  %192 = ptrtoint i8* %191 to i32
  %193 = bitcast i8** %b_string to i32*
  store i32 %192, i32* %193, align 4
  %194 = load i8*, i8** %a_string, align 4
  %195 = ptrtoint i8* %194 to i32
  %cmp83 = icmp eq i32 %195, 0
  br i1 %cmp83, label %if.then85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %_Dynamic_check.succeeded81
  %196 = load i8*, i8** %b_string, align 4
  %197 = ptrtoint i8* %196 to i32
  %cmp84 = icmp eq i32 %197, 0
  br i1 %cmp84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %lor.lhs.false, %_Dynamic_check.succeeded81
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed77:                          ; preds = %sw.bb76
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed80:                          ; preds = %_Dynamic_check.succeeded78
  call void @llvm.trap() #9
  unreachable

if.end86:                                         ; preds = %lor.lhs.false
  %198 = load i8*, i8** %a_string, align 4
  %199 = load i8*, i8** %b_string, align 4
  %200 = ptrtoint i8* %198 to i32
  %201 = call i8* @c_fetch_pointer_from_offset(i32 %200)
  %202 = call i1 @c_isTaintedPointerToTaintedMem(i8* %201)
  br i1 %202, label %_Dynamic_check.succeeded88, label %_Dynamic_check.failed87

_Dynamic_check.succeeded88:                       ; preds = %if.end86
  %203 = ptrtoint i8* %199 to i32
  %204 = call i8* @c_fetch_pointer_from_offset(i32 %203)
  %205 = call i1 @c_isTaintedPointerToTaintedMem(i8* %204)
  br i1 %205, label %_Dynamic_check.succeeded90, label %_Dynamic_check.failed89

_Dynamic_check.succeeded90:                       ; preds = %_Dynamic_check.succeeded88
  %call91 = call i32 @t_strcmp(i8* %201, i8* %204)
  %cmp92 = icmp eq i32 %call91, 0
  %conv = zext i1 %cmp92 to i32
  store i32 %conv, i32* %retval, align 4
  br label %return

_Dynamic_check.failed87:                          ; preds = %if.end86
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed89:                          ; preds = %_Dynamic_check.succeeded88
  call void @llvm.trap() #9
  unreachable

sw.bb93:                                          ; preds = %if.end
  %206 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %207 = ptrtoint %Tstruct.Spl_json_value_t_t* %206 to i32
  %208 = call i8* @c_fetch_pointer_from_offset(i32 %207)
  %209 = call i1 @c_isTaintedPointerToTaintedMem(i8* %208)
  br i1 %209, label %_Dynamic_check.succeeded95, label %_Dynamic_check.failed94

_Dynamic_check.succeeded95:                       ; preds = %sw.bb93
  %210 = bitcast i8* %208 to %Tstruct.Spl_json_value_t_t*
  %call96 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %210)
  %211 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %212 = ptrtoint %Tstruct.Spl_json_value_t_t* %211 to i32
  %213 = call i8* @c_fetch_pointer_from_offset(i32 %212)
  %214 = call i1 @c_isTaintedPointerToTaintedMem(i8* %213)
  br i1 %214, label %_Dynamic_check.succeeded98, label %_Dynamic_check.failed97

_Dynamic_check.succeeded98:                       ; preds = %_Dynamic_check.succeeded95
  %215 = bitcast i8* %213 to %Tstruct.Spl_json_value_t_t*
  %call99 = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %215)
  %cmp100 = icmp eq i32 %call96, %call99
  %conv101 = zext i1 %cmp100 to i32
  store i32 %conv101, i32* %retval, align 4
  br label %return

_Dynamic_check.failed94:                          ; preds = %sw.bb93
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed97:                          ; preds = %_Dynamic_check.succeeded95
  call void @llvm.trap() #9
  unreachable

sw.bb102:                                         ; preds = %if.end
  %216 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %a.addr, align 4
  %217 = ptrtoint %Tstruct.Spl_json_value_t_t* %216 to i32
  %218 = call i8* @c_fetch_pointer_from_offset(i32 %217)
  %219 = call i1 @c_isTaintedPointerToTaintedMem(i8* %218)
  br i1 %219, label %_Dynamic_check.succeeded104, label %_Dynamic_check.failed103

_Dynamic_check.succeeded104:                      ; preds = %sw.bb102
  %220 = bitcast i8* %218 to %Tstruct.Spl_json_value_t_t*
  %call105 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %220)
  %221 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %b.addr, align 4
  %222 = ptrtoint %Tstruct.Spl_json_value_t_t* %221 to i32
  %223 = call i8* @c_fetch_pointer_from_offset(i32 %222)
  %224 = call i1 @c_isTaintedPointerToTaintedMem(i8* %223)
  br i1 %224, label %_Dynamic_check.succeeded107, label %_Dynamic_check.failed106

_Dynamic_check.succeeded107:                      ; preds = %_Dynamic_check.succeeded104
  %225 = bitcast i8* %223 to %Tstruct.Spl_json_value_t_t*
  %call108 = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %225)
  %sub = fsub double %call105, %call108
  %226 = call double @llvm.fabs.f64(double %sub)
  %cmp109 = fcmp olt double %226, 0x3EB0C6F7A0B5ED8D
  %conv110 = zext i1 %cmp109 to i32
  store i32 %conv110, i32* %retval, align 4
  br label %return

_Dynamic_check.failed103:                         ; preds = %sw.bb102
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed106:                         ; preds = %_Dynamic_check.succeeded104
  call void @llvm.trap() #9
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
  %227 = load i32, i32* %retval, align 4
  ret i32 %227
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_type(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_type to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  ret i32 %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_object_t_t* @json_object(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  %8 = bitcast %Tstruct.Spl_json_object_t_t* %call to %Tstruct.json_object_t_t*
  %9 = bitcast %Tstruct.json_object_t_t* %8 to i8*
  %10 = call i32 @c_TPtoO(i8* %9)
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_object_t_t*
  ret %Tstruct.Spl_json_object_t_t* %11

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %Tstruct.Spl_json_array_t_t* @json_array(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  %8 = bitcast %Tstruct.Spl_json_array_t_t* %call to %Tstruct.json_array_t_t*
  %9 = bitcast %Tstruct.json_array_t_t* %8 to i8*
  %10 = call i32 @c_TPtoO(i8* %9)
  %11 = inttoptr i32 %10 to %Tstruct.Spl_json_array_t_t*
  ret %Tstruct.Spl_json_array_t_t* %11

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @json_string(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i8* bitcast (i8* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_string to i8* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  %8 = call i32 @c_TPtoO(i8* %call)
  %9 = inttoptr i32 %8 to i8*
  ret i8* %9

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @json_number(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call double bitcast (double (%Tstruct.Spl_json_value_t_t*)* @json_value_get_number to double (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  ret double %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_boolean(%Tstruct.json_value_t_t* %value) #2 {
entry:
  %value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %7 = bitcast i8* %5 to %Tstruct.Spl_json_value_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_value_t_t*)* @json_value_get_boolean to i32 (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %7)
  ret i32 %call

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_set_allocation_functions(i8* (i64)* %malloc_fun, void (i8*)* %free_fun) #2 {
entry:
  %malloc_fun.addr = alloca i8* (i64)*, align 4
  %free_fun.addr = alloca void (i8*)*, align 4
  %0 = ptrtoint i8* (i64)* %malloc_fun to i32
  %1 = bitcast i8* (i64)** %malloc_fun.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = ptrtoint void (i8*)* %free_fun to i32
  %3 = bitcast void (i8*)** %free_fun.addr to i32*
  store i32 %2, i32* %3, align 4
  %4 = load i8* (i64)*, i8* (i64)** %malloc_fun.addr, align 4
  %5 = bitcast i8* (i64)* %4 to i8*
  %6 = call i32 @c_TPtoO(i8* %5)
  %7 = call i32 @c_TPtoO(i8* null)
  %tobool = icmp ne i32 %6, %7
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load void (i8*)*, void (i8*)** %free_fun.addr, align 4
  %9 = bitcast void (i8*)* %8 to i8*
  %10 = call i32 @c_TPtoO(i8* %9)
  %11 = call i32 @c_TPtoO(i8* null)
  %tobool1 = icmp ne i32 %10, %11
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load i8* (i64)*, i8* (i64)** %malloc_fun.addr, align 4
  %13 = ptrtoint i8* (i64)* %12 to i32
  store i32 %13, i32* bitcast (i8* (i64)** @parson_tainted_malloc to i32*), align 4
  %14 = load void (i8*)*, void (i8*)** %free_fun.addr, align 4
  %15 = ptrtoint void (i8*)* %14 to i32
  store i32 %15, i32* bitcast (void (i8*)** @parson_tainted_free to i32*), align 4
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
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  store i64 %nesting, i64* %nesting.addr, align 8
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i64 @t_strlen(i8* %4)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %str_len, align 4
  %6 = load i32, i32* %str_len, align 4
  %conv1 = sext i32 %6 to i64
  %mul = mul i64 %conv1, 1
  %call2 = call i8* @parson_string_tainted_malloc(i64 %mul)
  %7 = call i32 @c_TPtoO(i8* %call2)
  %8 = inttoptr i32 %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = bitcast i8** %str_cpy to i32*
  store i32 %9, i32* %10, align 4
  %11 = load i8*, i8** %str_cpy, align 4
  %12 = load i8*, i8** %string.addr, align 4
  %13 = ptrtoint i8* %11 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %16 = ptrtoint i8* %12 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %call7 = call i8* @t_strcpy(i8* %14, i8* %17)
  %19 = call i32 @c_TPtoO(i8* %call7)
  %20 = inttoptr i32 %19 to i8*
  %21 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 0, i32* %21, align 4
  %22 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 0, i32* %22, align 4
  %23 = bitcast %Tstruct.Spl_json_object_t_t** %output_object to i32*
  store i32 0, i32* %23, align 4
  %24 = bitcast i8** %new_key to i32*
  store i32 0, i32* %24, align 4
  %call8 = call %Tstruct.Spl_json_value_t_t* @json_value_init_object()
  %25 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %26 = bitcast %Tstruct.json_value_t_t* %25 to i8*
  %27 = call i32 @c_TPtoO(i8* %26)
  %28 = inttoptr i32 %27 to %Tstruct.json_value_t_t*
  %29 = bitcast %Tstruct.json_value_t_t* %28 to %Tstruct.Spl_json_value_t_t*
  %30 = ptrtoint %Tstruct.Spl_json_value_t_t* %29 to i32
  %31 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 %30, i32* %31, align 4
  %32 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %33 = ptrtoint %Tstruct.Spl_json_value_t_t* %32 to i32
  %cmp = icmp eq i32 %33, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded6
  %34 = load i8*, i8** %string.addr, align 4
  %35 = load i8*, i8** %str_cpy, align 4
  %36 = ptrtoint i8* %34 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %if.then
  %39 = ptrtoint i8* %35 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %call14 = call i8* @t_strcpy(i8* %37, i8* %40)
  %42 = call i32 @c_TPtoO(i8* %call14)
  %43 = inttoptr i32 %42 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed10:                          ; preds = %if.then
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded6
  %44 = load i8*, i8** %str_cpy, align 4
  %45 = ptrtoint i8* %44 to i32
  %46 = call i8* @c_fetch_pointer_from_offset(i32 %45)
  %47 = call i1 @c_isTaintedPointerToTaintedMem(i8* %46)
  br i1 %47, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %if.end
  %48 = load i8, i8* %46, align 1
  %conv17 = sext i8 %48 to i32
  %cmp18 = icmp ne i32 %conv17, 123
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %_Dynamic_check.succeeded16
  %49 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %50 = ptrtoint %Tstruct.Spl_json_value_t_t* %49 to i32
  %51 = call i8* @c_fetch_pointer_from_offset(i32 %50)
  %52 = call i1 @c_isTaintedPointerToTaintedMem(i8* %51)
  br i1 %52, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %if.then20
  %53 = bitcast i8* %51 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %53)
  %54 = load i8*, i8** %string.addr, align 4
  %55 = load i8*, i8** %str_cpy, align 4
  %56 = ptrtoint i8* %54 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded22
  %59 = ptrtoint i8* %55 to i32
  %60 = call i8* @c_fetch_pointer_from_offset(i32 %59)
  %61 = call i1 @c_isTaintedPointerToTaintedMem(i8* %60)
  br i1 %61, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded24
  %call27 = call i8* @t_strcpy(i8* %57, i8* %60)
  %62 = call i32 @c_TPtoO(i8* %call27)
  %63 = inttoptr i32 %62 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed15:                          ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed21:                          ; preds = %if.then20
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #9
  unreachable

if.end28:                                         ; preds = %_Dynamic_check.succeeded16
  %64 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %65 = ptrtoint %Tstruct.Spl_json_value_t_t* %64 to i32
  %66 = call i8* @c_fetch_pointer_from_offset(i32 %65)
  %67 = call i1 @c_isTaintedPointerToTaintedMem(i8* %66)
  br i1 %67, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %if.end28
  %68 = bitcast i8* %66 to %Tstruct.Spl_json_value_t_t*
  %call31 = call %Tstruct.Spl_json_object_t_t* bitcast (%Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_object to %Tstruct.Spl_json_object_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %68)
  %69 = bitcast %Tstruct.Spl_json_object_t_t* %call31 to %Tstruct.json_object_t_t*
  %70 = bitcast %Tstruct.json_object_t_t* %69 to i8*
  %71 = call i32 @c_TPtoO(i8* %70)
  %72 = inttoptr i32 %71 to %Tstruct.json_object_t_t*
  %73 = bitcast %Tstruct.json_object_t_t* %72 to %Tstruct.Spl_json_object_t_t*
  %74 = ptrtoint %Tstruct.Spl_json_object_t_t* %73 to i32
  %75 = bitcast %Tstruct.Spl_json_object_t_t** %output_object to i32*
  store i32 %74, i32* %75, align 4
  %76 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %76, i32 1
  %77 = ptrtoint i8* %incdec.ptr to i32
  %78 = bitcast i8** %str_cpy to i32*
  store i32 %77, i32* %78, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %_Dynamic_check.succeeded30
  %79 = load i8*, i8** %str_cpy, align 4
  %80 = ptrtoint i8* %79 to i32
  %81 = call i8* @c_fetch_pointer_from_offset(i32 %80)
  %82 = call i1 @c_isTaintedPointerToTaintedMem(i8* %81)
  br i1 %82, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %while.cond
  %83 = load i8, i8* %81, align 1
  %conv34 = zext i8 %83 to i32
  %call35 = call i32 @isspace(i32 %conv34) #10
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %_Dynamic_check.succeeded33
  %84 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %84, i32 1
  %85 = ptrtoint i8* %incdec.ptr36 to i32
  %86 = bitcast i8** %str_cpy to i32*
  store i32 %85, i32* %86, align 4
  br label %while.cond, !llvm.loop !17

_Dynamic_check.failed29:                          ; preds = %if.end28
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed32:                          ; preds = %while.cond
  call void @llvm.trap() #9
  unreachable

while.end:                                        ; preds = %_Dynamic_check.succeeded33
  %87 = load i8*, i8** %str_cpy, align 4
  %88 = ptrtoint i8* %87 to i32
  %89 = call i8* @c_fetch_pointer_from_offset(i32 %88)
  %90 = call i1 @c_isTaintedPointerToTaintedMem(i8* %89)
  br i1 %90, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %while.end
  %91 = load i8, i8* %89, align 1
  %conv39 = sext i8 %91 to i32
  %cmp40 = icmp eq i32 %conv39, 125
  br i1 %cmp40, label %if.then42, label %if.end49

if.then42:                                        ; preds = %_Dynamic_check.succeeded38
  %92 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr43 = getelementptr inbounds i8, i8* %92, i32 1
  %93 = ptrtoint i8* %incdec.ptr43 to i32
  %94 = bitcast i8** %str_cpy to i32*
  store i32 %93, i32* %94, align 4
  %95 = load i8*, i8** %string.addr, align 4
  %96 = load i8*, i8** %str_cpy, align 4
  %97 = ptrtoint i8* %95 to i32
  %98 = call i8* @c_fetch_pointer_from_offset(i32 %97)
  %99 = call i1 @c_isTaintedPointerToTaintedMem(i8* %98)
  br i1 %99, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %if.then42
  %100 = ptrtoint i8* %96 to i32
  %101 = call i8* @c_fetch_pointer_from_offset(i32 %100)
  %102 = call i1 @c_isTaintedPointerToTaintedMem(i8* %101)
  br i1 %102, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded45
  %call48 = call i8* @t_strcpy(i8* %98, i8* %101)
  %103 = call i32 @c_TPtoO(i8* %call48)
  %104 = inttoptr i32 %103 to i8*
  %105 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %105, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed37:                          ; preds = %while.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed44:                          ; preds = %if.then42
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded45
  call void @llvm.trap() #9
  unreachable

if.end49:                                         ; preds = %_Dynamic_check.succeeded38
  br label %while.cond50

while.cond50:                                     ; preds = %while.end202, %if.end49
  %106 = load i8*, i8** %str_cpy, align 4
  %107 = ptrtoint i8* %106 to i32
  %108 = call i8* @c_fetch_pointer_from_offset(i32 %107)
  %109 = call i1 @c_isTaintedPointerToTaintedMem(i8* %108)
  br i1 %109, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %while.cond50
  %110 = load i8, i8* %108, align 1
  %conv53 = sext i8 %110 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %while.body56, label %while.end203

while.body56:                                     ; preds = %_Dynamic_check.succeeded52
  %111 = load i8*, i8** %str_cpy, align 4
  %112 = ptrtoint i8* %111 to i32
  %113 = call i8* @c_fetch_pointer_from_offset(i32 %112)
  %114 = call i1 @c_isTaintedPointerToTaintedMem(i8* %113)
  br i1 %114, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %while.body56
  %call59 = call i8* @get_quoted_string(i8* %113, i8* (i8*, i64)* @process_string)
  %115 = call i32 @c_TPtoO(i8* %call59)
  %116 = inttoptr i32 %115 to i8*
  %117 = ptrtoint i8* %116 to i32
  %118 = bitcast i8** %new_key to i32*
  store i32 %117, i32* %118, align 4
  %119 = load i8*, i8** %new_key, align 4
  %120 = ptrtoint i8* %119 to i32
  %cmp60 = icmp eq i32 %120, 0
  br i1 %cmp60, label %if.then62, label %if.end70

if.then62:                                        ; preds = %_Dynamic_check.succeeded58
  %121 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %122 = ptrtoint %Tstruct.Spl_json_value_t_t* %121 to i32
  %123 = call i8* @c_fetch_pointer_from_offset(i32 %122)
  %124 = call i1 @c_isTaintedPointerToTaintedMem(i8* %123)
  br i1 %124, label %_Dynamic_check.succeeded64, label %_Dynamic_check.failed63

_Dynamic_check.succeeded64:                       ; preds = %if.then62
  %125 = bitcast i8* %123 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %125)
  %126 = load i8*, i8** %string.addr, align 4
  %127 = load i8*, i8** %str_cpy, align 4
  %128 = ptrtoint i8* %126 to i32
  %129 = call i8* @c_fetch_pointer_from_offset(i32 %128)
  %130 = call i1 @c_isTaintedPointerToTaintedMem(i8* %129)
  br i1 %130, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %_Dynamic_check.succeeded64
  %131 = ptrtoint i8* %127 to i32
  %132 = call i8* @c_fetch_pointer_from_offset(i32 %131)
  %133 = call i1 @c_isTaintedPointerToTaintedMem(i8* %132)
  br i1 %133, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded66
  %call69 = call i8* @t_strcpy(i8* %129, i8* %132)
  %134 = call i32 @c_TPtoO(i8* %call69)
  %135 = inttoptr i32 %134 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed51:                          ; preds = %while.cond50
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed57:                          ; preds = %while.body56
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed63:                          ; preds = %if.then62
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed65:                          ; preds = %_Dynamic_check.succeeded64
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded66
  call void @llvm.trap() #9
  unreachable

if.end70:                                         ; preds = %_Dynamic_check.succeeded58
  br label %while.cond71

while.cond71:                                     ; preds = %while.body77, %if.end70
  %136 = load i8*, i8** %str_cpy, align 4
  %137 = ptrtoint i8* %136 to i32
  %138 = call i8* @c_fetch_pointer_from_offset(i32 %137)
  %139 = call i1 @c_isTaintedPointerToTaintedMem(i8* %138)
  br i1 %139, label %_Dynamic_check.succeeded73, label %_Dynamic_check.failed72

_Dynamic_check.succeeded73:                       ; preds = %while.cond71
  %140 = load i8, i8* %138, align 1
  %conv74 = zext i8 %140 to i32
  %call75 = call i32 @isspace(i32 %conv74) #10
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %while.body77, label %while.end79

while.body77:                                     ; preds = %_Dynamic_check.succeeded73
  %141 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr78 = getelementptr inbounds i8, i8* %141, i32 1
  %142 = ptrtoint i8* %incdec.ptr78 to i32
  %143 = bitcast i8** %str_cpy to i32*
  store i32 %142, i32* %143, align 4
  br label %while.cond71, !llvm.loop !18

_Dynamic_check.failed72:                          ; preds = %while.cond71
  call void @llvm.trap() #9
  unreachable

while.end79:                                      ; preds = %_Dynamic_check.succeeded73
  %144 = load i8*, i8** %str_cpy, align 4
  %145 = ptrtoint i8* %144 to i32
  %146 = call i8* @c_fetch_pointer_from_offset(i32 %145)
  %147 = call i1 @c_isTaintedPointerToTaintedMem(i8* %146)
  br i1 %147, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %while.end79
  %148 = load i8, i8* %146, align 1
  %conv82 = sext i8 %148 to i32
  %cmp83 = icmp ne i32 %conv82, 58
  br i1 %cmp83, label %if.then85, label %if.end99

if.then85:                                        ; preds = %_Dynamic_check.succeeded81
  %149 = load i8*, i8** %new_key, align 4
  %150 = call i32 @c_TPtoO(i8* %149)
  %151 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null = icmp eq i32 %150, %151
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then85
  %152 = load i8*, i8** %new_key, align 4
  %153 = load i8*, i8** %new_key, align 4
  %add.ptr = getelementptr inbounds i8, i8* %153, i64 0
  %154 = call i32 @c_TPtoO(i8* %149)
  %155 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %154, %155
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded87, label %_Dynamic_check.failed86

_Dynamic_check.succeeded87:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr88 = getelementptr inbounds i8, i8* %149, i64 0
  %156 = call i32 @c_TPtoO(i8* %152)
  %157 = inttoptr i32 %156 to i8*
  %158 = call i32 @c_TPtoO(i8* %149)
  %159 = inttoptr i32 %158 to i8*
  %160 = call i32 @c_TPtoO(i8* %157)
  %161 = call i32 @c_TPtoO(i8* %159)
  %_Dynamic_check.lower = icmp ule i32 %160, %161
  %162 = call i32 @c_TPtoO(i8* %add.ptr88)
  %163 = inttoptr i32 %162 to i8*
  %164 = call i32 @c_TPtoO(i8* %add.ptr)
  %165 = inttoptr i32 %164 to i8*
  %166 = call i32 @c_TPtoO(i8* %163)
  %167 = call i32 @c_TPtoO(i8* %165)
  %_Dynamic_check.upper = icmp ule i32 %166, %167
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed89

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded87, %if.then85
  %168 = ptrtoint i8* %149 to i32
  %169 = call i8* @c_fetch_pointer_from_offset(i32 %168)
  %170 = call i1 @c_isTaintedPointerToTaintedMem(i8* %169)
  br i1 %170, label %_Dynamic_check.succeeded91, label %_Dynamic_check.failed90

_Dynamic_check.succeeded91:                       ; preds = %_Dynamic_check.success
  call void @t_free(i8* %169)
  %171 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %172 = ptrtoint %Tstruct.Spl_json_value_t_t* %171 to i32
  %173 = call i8* @c_fetch_pointer_from_offset(i32 %172)
  %174 = call i1 @c_isTaintedPointerToTaintedMem(i8* %173)
  br i1 %174, label %_Dynamic_check.succeeded93, label %_Dynamic_check.failed92

_Dynamic_check.succeeded93:                       ; preds = %_Dynamic_check.succeeded91
  %175 = bitcast i8* %173 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %175)
  %176 = load i8*, i8** %string.addr, align 4
  %177 = load i8*, i8** %str_cpy, align 4
  %178 = ptrtoint i8* %176 to i32
  %179 = call i8* @c_fetch_pointer_from_offset(i32 %178)
  %180 = call i1 @c_isTaintedPointerToTaintedMem(i8* %179)
  br i1 %180, label %_Dynamic_check.succeeded95, label %_Dynamic_check.failed94

_Dynamic_check.succeeded95:                       ; preds = %_Dynamic_check.succeeded93
  %181 = ptrtoint i8* %177 to i32
  %182 = call i8* @c_fetch_pointer_from_offset(i32 %181)
  %183 = call i1 @c_isTaintedPointerToTaintedMem(i8* %182)
  br i1 %183, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %_Dynamic_check.succeeded95
  %call98 = call i8* @t_strcpy(i8* %179, i8* %182)
  %184 = call i32 @c_TPtoO(i8* %call98)
  %185 = inttoptr i32 %184 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed80:                          ; preds = %while.end79
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed86:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed89:                          ; preds = %_Dynamic_check.succeeded87
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed90:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed92:                          ; preds = %_Dynamic_check.succeeded91
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed94:                          ; preds = %_Dynamic_check.succeeded93
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed96:                          ; preds = %_Dynamic_check.succeeded95
  call void @llvm.trap() #9
  unreachable

if.end99:                                         ; preds = %_Dynamic_check.succeeded81
  %186 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr100 = getelementptr inbounds i8, i8* %186, i32 1
  %187 = ptrtoint i8* %incdec.ptr100 to i32
  %188 = bitcast i8** %str_cpy to i32*
  store i32 %187, i32* %188, align 4
  %189 = load i8*, i8** %str_cpy, align 4
  %190 = load i64, i64* %nesting.addr, align 8
  %191 = ptrtoint i8* %189 to i32
  %192 = call i8* @c_fetch_pointer_from_offset(i32 %191)
  %193 = call i1 @c_isTaintedPointerToTaintedMem(i8* %192)
  br i1 %193, label %_Dynamic_check.succeeded102, label %_Dynamic_check.failed101

_Dynamic_check.succeeded102:                      ; preds = %if.end99
  %call103 = call %Tstruct.Spl_json_value_t_t* @parse_value(i8* %192, i64 %190)
  %194 = bitcast %Tstruct.Spl_json_value_t_t* %call103 to %Tstruct.json_value_t_t*
  %195 = bitcast %Tstruct.json_value_t_t* %194 to i8*
  %196 = call i32 @c_TPtoO(i8* %195)
  %197 = inttoptr i32 %196 to %Tstruct.json_value_t_t*
  %198 = bitcast %Tstruct.json_value_t_t* %197 to %Tstruct.Spl_json_value_t_t*
  %199 = ptrtoint %Tstruct.Spl_json_value_t_t* %198 to i32
  %200 = bitcast %Tstruct.Spl_json_value_t_t** %new_value to i32*
  store i32 %199, i32* %200, align 4
  %201 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %202 = ptrtoint %Tstruct.Spl_json_value_t_t* %201 to i32
  %cmp104 = icmp eq i32 %202, 0
  br i1 %cmp104, label %if.then106, label %if.end128

if.then106:                                       ; preds = %_Dynamic_check.succeeded102
  %203 = load i8*, i8** %new_key, align 4
  %204 = call i32 @c_TPtoO(i8* %203)
  %205 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null107 = icmp eq i32 %204, %205
  br i1 %_Dynamic_check.is_null107, label %_Dynamic_check.success118, label %_Dynamic_check.subsumption108

_Dynamic_check.subsumption108:                    ; preds = %if.then106
  %206 = load i8*, i8** %new_key, align 4
  %207 = load i8*, i8** %new_key, align 4
  %add.ptr109 = getelementptr inbounds i8, i8* %207, i64 0
  %208 = call i32 @c_TPtoO(i8* %203)
  %209 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null110 = icmp ne i32 %208, %209
  br i1 %_Dynamic_check.non_null110, label %_Dynamic_check.succeeded112, label %_Dynamic_check.failed111

_Dynamic_check.succeeded112:                      ; preds = %_Dynamic_check.subsumption108
  %add.ptr113 = getelementptr inbounds i8, i8* %203, i64 0
  %210 = call i32 @c_TPtoO(i8* %206)
  %211 = inttoptr i32 %210 to i8*
  %212 = call i32 @c_TPtoO(i8* %203)
  %213 = inttoptr i32 %212 to i8*
  %214 = call i32 @c_TPtoO(i8* %211)
  %215 = call i32 @c_TPtoO(i8* %213)
  %_Dynamic_check.lower114 = icmp ule i32 %214, %215
  %216 = call i32 @c_TPtoO(i8* %add.ptr113)
  %217 = inttoptr i32 %216 to i8*
  %218 = call i32 @c_TPtoO(i8* %add.ptr109)
  %219 = inttoptr i32 %218 to i8*
  %220 = call i32 @c_TPtoO(i8* %217)
  %221 = call i32 @c_TPtoO(i8* %219)
  %_Dynamic_check.upper115 = icmp ule i32 %220, %221
  %_Dynamic_check.cast116 = and i1 %_Dynamic_check.lower114, %_Dynamic_check.upper115
  br i1 %_Dynamic_check.cast116, label %_Dynamic_check.success118, label %_Dynamic_check.failed117

_Dynamic_check.success118:                        ; preds = %_Dynamic_check.succeeded112, %if.then106
  %222 = ptrtoint i8* %203 to i32
  %223 = call i8* @c_fetch_pointer_from_offset(i32 %222)
  %224 = call i1 @c_isTaintedPointerToTaintedMem(i8* %223)
  br i1 %224, label %_Dynamic_check.succeeded120, label %_Dynamic_check.failed119

_Dynamic_check.succeeded120:                      ; preds = %_Dynamic_check.success118
  call void @t_free(i8* %223)
  %225 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %226 = ptrtoint %Tstruct.Spl_json_value_t_t* %225 to i32
  %227 = call i8* @c_fetch_pointer_from_offset(i32 %226)
  %228 = call i1 @c_isTaintedPointerToTaintedMem(i8* %227)
  br i1 %228, label %_Dynamic_check.succeeded122, label %_Dynamic_check.failed121

_Dynamic_check.succeeded122:                      ; preds = %_Dynamic_check.succeeded120
  %229 = bitcast i8* %227 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %229)
  %230 = load i8*, i8** %string.addr, align 4
  %231 = load i8*, i8** %str_cpy, align 4
  %232 = ptrtoint i8* %230 to i32
  %233 = call i8* @c_fetch_pointer_from_offset(i32 %232)
  %234 = call i1 @c_isTaintedPointerToTaintedMem(i8* %233)
  br i1 %234, label %_Dynamic_check.succeeded124, label %_Dynamic_check.failed123

_Dynamic_check.succeeded124:                      ; preds = %_Dynamic_check.succeeded122
  %235 = ptrtoint i8* %231 to i32
  %236 = call i8* @c_fetch_pointer_from_offset(i32 %235)
  %237 = call i1 @c_isTaintedPointerToTaintedMem(i8* %236)
  br i1 %237, label %_Dynamic_check.succeeded126, label %_Dynamic_check.failed125

_Dynamic_check.succeeded126:                      ; preds = %_Dynamic_check.succeeded124
  %call127 = call i8* @t_strcpy(i8* %233, i8* %236)
  %238 = call i32 @c_TPtoO(i8* %call127)
  %239 = inttoptr i32 %238 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed101:                         ; preds = %if.end99
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed111:                         ; preds = %_Dynamic_check.subsumption108
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed117:                         ; preds = %_Dynamic_check.succeeded112
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed119:                         ; preds = %_Dynamic_check.success118
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed121:                         ; preds = %_Dynamic_check.succeeded120
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed123:                         ; preds = %_Dynamic_check.succeeded122
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed125:                         ; preds = %_Dynamic_check.succeeded124
  call void @llvm.trap() #9
  unreachable

if.end128:                                        ; preds = %_Dynamic_check.succeeded102
  %240 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %output_object, align 4
  %241 = load i8*, i8** %new_key, align 4
  %242 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %243 = ptrtoint %Tstruct.Spl_json_object_t_t* %240 to i32
  %244 = call i8* @c_fetch_pointer_from_offset(i32 %243)
  %245 = call i1 @c_isTaintedPointerToTaintedMem(i8* %244)
  br i1 %245, label %_Dynamic_check.succeeded130, label %_Dynamic_check.failed129

_Dynamic_check.succeeded130:                      ; preds = %if.end128
  %246 = bitcast i8* %244 to %Tstruct.Spl_json_object_t_t*
  %247 = ptrtoint i8* %241 to i32
  %248 = call i8* @c_fetch_pointer_from_offset(i32 %247)
  %249 = call i1 @c_isTaintedPointerToTaintedMem(i8* %248)
  br i1 %249, label %_Dynamic_check.succeeded132, label %_Dynamic_check.failed131

_Dynamic_check.succeeded132:                      ; preds = %_Dynamic_check.succeeded130
  %250 = ptrtoint %Tstruct.Spl_json_value_t_t* %242 to i32
  %251 = call i8* @c_fetch_pointer_from_offset(i32 %250)
  %252 = call i1 @c_isTaintedPointerToTaintedMem(i8* %251)
  br i1 %252, label %_Dynamic_check.succeeded134, label %_Dynamic_check.failed133

_Dynamic_check.succeeded134:                      ; preds = %_Dynamic_check.succeeded132
  %253 = bitcast i8* %251 to %Tstruct.Spl_json_value_t_t*
  %call135 = call i32 bitcast (i32 (%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*)* @json_object_add to i32 (%Tstruct.Spl_json_object_t_t*, i8*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_object_t_t* %246, i8* %248, %Tstruct.Spl_json_value_t_t* %253)
  %cmp136 = icmp eq i32 %call135, -1
  br i1 %cmp136, label %if.then138, label %if.end162

if.then138:                                       ; preds = %_Dynamic_check.succeeded134
  %254 = load i8*, i8** %new_key, align 4
  %255 = call i32 @c_TPtoO(i8* %254)
  %256 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null139 = icmp eq i32 %255, %256
  br i1 %_Dynamic_check.is_null139, label %_Dynamic_check.success150, label %_Dynamic_check.subsumption140

_Dynamic_check.subsumption140:                    ; preds = %if.then138
  %257 = load i8*, i8** %new_key, align 4
  %258 = load i8*, i8** %new_key, align 4
  %add.ptr141 = getelementptr inbounds i8, i8* %258, i64 0
  %259 = call i32 @c_TPtoO(i8* %254)
  %260 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null142 = icmp ne i32 %259, %260
  br i1 %_Dynamic_check.non_null142, label %_Dynamic_check.succeeded144, label %_Dynamic_check.failed143

_Dynamic_check.succeeded144:                      ; preds = %_Dynamic_check.subsumption140
  %add.ptr145 = getelementptr inbounds i8, i8* %254, i64 0
  %261 = call i32 @c_TPtoO(i8* %257)
  %262 = inttoptr i32 %261 to i8*
  %263 = call i32 @c_TPtoO(i8* %254)
  %264 = inttoptr i32 %263 to i8*
  %265 = call i32 @c_TPtoO(i8* %262)
  %266 = call i32 @c_TPtoO(i8* %264)
  %_Dynamic_check.lower146 = icmp ule i32 %265, %266
  %267 = call i32 @c_TPtoO(i8* %add.ptr145)
  %268 = inttoptr i32 %267 to i8*
  %269 = call i32 @c_TPtoO(i8* %add.ptr141)
  %270 = inttoptr i32 %269 to i8*
  %271 = call i32 @c_TPtoO(i8* %268)
  %272 = call i32 @c_TPtoO(i8* %270)
  %_Dynamic_check.upper147 = icmp ule i32 %271, %272
  %_Dynamic_check.cast148 = and i1 %_Dynamic_check.lower146, %_Dynamic_check.upper147
  br i1 %_Dynamic_check.cast148, label %_Dynamic_check.success150, label %_Dynamic_check.failed149

_Dynamic_check.success150:                        ; preds = %_Dynamic_check.succeeded144, %if.then138
  %273 = ptrtoint i8* %254 to i32
  %274 = call i8* @c_fetch_pointer_from_offset(i32 %273)
  %275 = call i1 @c_isTaintedPointerToTaintedMem(i8* %274)
  br i1 %275, label %_Dynamic_check.succeeded152, label %_Dynamic_check.failed151

_Dynamic_check.succeeded152:                      ; preds = %_Dynamic_check.success150
  call void @t_free(i8* %274)
  %276 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_value, align 4
  %277 = ptrtoint %Tstruct.Spl_json_value_t_t* %276 to i32
  %278 = call i8* @c_fetch_pointer_from_offset(i32 %277)
  %279 = call i1 @c_isTaintedPointerToTaintedMem(i8* %278)
  br i1 %279, label %_Dynamic_check.succeeded154, label %_Dynamic_check.failed153

_Dynamic_check.succeeded154:                      ; preds = %_Dynamic_check.succeeded152
  %280 = bitcast i8* %278 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %280)
  %281 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %282 = ptrtoint %Tstruct.Spl_json_value_t_t* %281 to i32
  %283 = call i8* @c_fetch_pointer_from_offset(i32 %282)
  %284 = call i1 @c_isTaintedPointerToTaintedMem(i8* %283)
  br i1 %284, label %_Dynamic_check.succeeded156, label %_Dynamic_check.failed155

_Dynamic_check.succeeded156:                      ; preds = %_Dynamic_check.succeeded154
  %285 = bitcast i8* %283 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %285)
  %286 = load i8*, i8** %string.addr, align 4
  %287 = load i8*, i8** %str_cpy, align 4
  %288 = ptrtoint i8* %286 to i32
  %289 = call i8* @c_fetch_pointer_from_offset(i32 %288)
  %290 = call i1 @c_isTaintedPointerToTaintedMem(i8* %289)
  br i1 %290, label %_Dynamic_check.succeeded158, label %_Dynamic_check.failed157

_Dynamic_check.succeeded158:                      ; preds = %_Dynamic_check.succeeded156
  %291 = ptrtoint i8* %287 to i32
  %292 = call i8* @c_fetch_pointer_from_offset(i32 %291)
  %293 = call i1 @c_isTaintedPointerToTaintedMem(i8* %292)
  br i1 %293, label %_Dynamic_check.succeeded160, label %_Dynamic_check.failed159

_Dynamic_check.succeeded160:                      ; preds = %_Dynamic_check.succeeded158
  %call161 = call i8* @t_strcpy(i8* %289, i8* %292)
  %294 = call i32 @c_TPtoO(i8* %call161)
  %295 = inttoptr i32 %294 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed129:                         ; preds = %if.end128
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed131:                         ; preds = %_Dynamic_check.succeeded130
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed133:                         ; preds = %_Dynamic_check.succeeded132
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed143:                         ; preds = %_Dynamic_check.subsumption140
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed149:                         ; preds = %_Dynamic_check.succeeded144
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed151:                         ; preds = %_Dynamic_check.success150
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed153:                         ; preds = %_Dynamic_check.succeeded152
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed155:                         ; preds = %_Dynamic_check.succeeded154
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed157:                         ; preds = %_Dynamic_check.succeeded156
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed159:                         ; preds = %_Dynamic_check.succeeded158
  call void @llvm.trap() #9
  unreachable

if.end162:                                        ; preds = %_Dynamic_check.succeeded134
  %296 = load i8*, i8** %new_key, align 4
  %297 = call i32 @c_TPtoO(i8* %296)
  %298 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null163 = icmp eq i32 %297, %298
  br i1 %_Dynamic_check.is_null163, label %_Dynamic_check.success174, label %_Dynamic_check.subsumption164

_Dynamic_check.subsumption164:                    ; preds = %if.end162
  %299 = load i8*, i8** %new_key, align 4
  %300 = load i8*, i8** %new_key, align 4
  %add.ptr165 = getelementptr inbounds i8, i8* %300, i64 0
  %301 = call i32 @c_TPtoO(i8* %296)
  %302 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null166 = icmp ne i32 %301, %302
  br i1 %_Dynamic_check.non_null166, label %_Dynamic_check.succeeded168, label %_Dynamic_check.failed167

_Dynamic_check.succeeded168:                      ; preds = %_Dynamic_check.subsumption164
  %add.ptr169 = getelementptr inbounds i8, i8* %296, i64 0
  %303 = call i32 @c_TPtoO(i8* %299)
  %304 = inttoptr i32 %303 to i8*
  %305 = call i32 @c_TPtoO(i8* %296)
  %306 = inttoptr i32 %305 to i8*
  %307 = call i32 @c_TPtoO(i8* %304)
  %308 = call i32 @c_TPtoO(i8* %306)
  %_Dynamic_check.lower170 = icmp ule i32 %307, %308
  %309 = call i32 @c_TPtoO(i8* %add.ptr169)
  %310 = inttoptr i32 %309 to i8*
  %311 = call i32 @c_TPtoO(i8* %add.ptr165)
  %312 = inttoptr i32 %311 to i8*
  %313 = call i32 @c_TPtoO(i8* %310)
  %314 = call i32 @c_TPtoO(i8* %312)
  %_Dynamic_check.upper171 = icmp ule i32 %313, %314
  %_Dynamic_check.cast172 = and i1 %_Dynamic_check.lower170, %_Dynamic_check.upper171
  br i1 %_Dynamic_check.cast172, label %_Dynamic_check.success174, label %_Dynamic_check.failed173

_Dynamic_check.success174:                        ; preds = %_Dynamic_check.succeeded168, %if.end162
  %315 = ptrtoint i8* %296 to i32
  %316 = call i8* @c_fetch_pointer_from_offset(i32 %315)
  %317 = call i1 @c_isTaintedPointerToTaintedMem(i8* %316)
  br i1 %317, label %_Dynamic_check.succeeded176, label %_Dynamic_check.failed175

_Dynamic_check.succeeded176:                      ; preds = %_Dynamic_check.success174
  call void @t_free(i8* %316)
  br label %while.cond177

while.cond177:                                    ; preds = %while.body183, %_Dynamic_check.succeeded176
  %318 = load i8*, i8** %str_cpy, align 4
  %319 = ptrtoint i8* %318 to i32
  %320 = call i8* @c_fetch_pointer_from_offset(i32 %319)
  %321 = call i1 @c_isTaintedPointerToTaintedMem(i8* %320)
  br i1 %321, label %_Dynamic_check.succeeded179, label %_Dynamic_check.failed178

_Dynamic_check.succeeded179:                      ; preds = %while.cond177
  %322 = load i8, i8* %320, align 1
  %conv180 = zext i8 %322 to i32
  %call181 = call i32 @isspace(i32 %conv180) #10
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %while.body183, label %while.end185

while.body183:                                    ; preds = %_Dynamic_check.succeeded179
  %323 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr184 = getelementptr inbounds i8, i8* %323, i32 1
  %324 = ptrtoint i8* %incdec.ptr184 to i32
  %325 = bitcast i8** %str_cpy to i32*
  store i32 %324, i32* %325, align 4
  br label %while.cond177, !llvm.loop !19

_Dynamic_check.failed167:                         ; preds = %_Dynamic_check.subsumption164
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed173:                         ; preds = %_Dynamic_check.succeeded168
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed175:                         ; preds = %_Dynamic_check.success174
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed178:                         ; preds = %while.cond177
  call void @llvm.trap() #9
  unreachable

while.end185:                                     ; preds = %_Dynamic_check.succeeded179
  %326 = load i8*, i8** %str_cpy, align 4
  %327 = ptrtoint i8* %326 to i32
  %328 = call i8* @c_fetch_pointer_from_offset(i32 %327)
  %329 = call i1 @c_isTaintedPointerToTaintedMem(i8* %328)
  br i1 %329, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %while.end185
  %330 = load i8, i8* %328, align 1
  %conv188 = sext i8 %330 to i32
  %cmp189 = icmp ne i32 %conv188, 44
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %_Dynamic_check.succeeded187
  br label %while.end203

_Dynamic_check.failed186:                         ; preds = %while.end185
  call void @llvm.trap() #9
  unreachable

if.end192:                                        ; preds = %_Dynamic_check.succeeded187
  %331 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr193 = getelementptr inbounds i8, i8* %331, i32 1
  %332 = ptrtoint i8* %incdec.ptr193 to i32
  %333 = bitcast i8** %str_cpy to i32*
  store i32 %332, i32* %333, align 4
  br label %while.cond194

while.cond194:                                    ; preds = %while.body200, %if.end192
  %334 = load i8*, i8** %str_cpy, align 4
  %335 = ptrtoint i8* %334 to i32
  %336 = call i8* @c_fetch_pointer_from_offset(i32 %335)
  %337 = call i1 @c_isTaintedPointerToTaintedMem(i8* %336)
  br i1 %337, label %_Dynamic_check.succeeded196, label %_Dynamic_check.failed195

_Dynamic_check.succeeded196:                      ; preds = %while.cond194
  %338 = load i8, i8* %336, align 1
  %conv197 = zext i8 %338 to i32
  %call198 = call i32 @isspace(i32 %conv197) #10
  %tobool199 = icmp ne i32 %call198, 0
  br i1 %tobool199, label %while.body200, label %while.end202

while.body200:                                    ; preds = %_Dynamic_check.succeeded196
  %339 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr201 = getelementptr inbounds i8, i8* %339, i32 1
  %340 = ptrtoint i8* %incdec.ptr201 to i32
  %341 = bitcast i8** %str_cpy to i32*
  store i32 %340, i32* %341, align 4
  br label %while.cond194, !llvm.loop !20

_Dynamic_check.failed195:                         ; preds = %while.cond194
  call void @llvm.trap() #9
  unreachable

while.end202:                                     ; preds = %_Dynamic_check.succeeded196
  br label %while.cond50, !llvm.loop !21

while.end203:                                     ; preds = %if.then191, %_Dynamic_check.succeeded52
  br label %while.cond204

while.cond204:                                    ; preds = %while.body210, %while.end203
  %342 = load i8*, i8** %str_cpy, align 4
  %343 = ptrtoint i8* %342 to i32
  %344 = call i8* @c_fetch_pointer_from_offset(i32 %343)
  %345 = call i1 @c_isTaintedPointerToTaintedMem(i8* %344)
  br i1 %345, label %_Dynamic_check.succeeded206, label %_Dynamic_check.failed205

_Dynamic_check.succeeded206:                      ; preds = %while.cond204
  %346 = load i8, i8* %344, align 1
  %conv207 = zext i8 %346 to i32
  %call208 = call i32 @isspace(i32 %conv207) #10
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %while.body210, label %while.end212

while.body210:                                    ; preds = %_Dynamic_check.succeeded206
  %347 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr211 = getelementptr inbounds i8, i8* %347, i32 1
  %348 = ptrtoint i8* %incdec.ptr211 to i32
  %349 = bitcast i8** %str_cpy to i32*
  store i32 %348, i32* %349, align 4
  br label %while.cond204, !llvm.loop !22

_Dynamic_check.failed205:                         ; preds = %while.cond204
  call void @llvm.trap() #9
  unreachable

while.end212:                                     ; preds = %_Dynamic_check.succeeded206
  %350 = load i8*, i8** %str_cpy, align 4
  %351 = ptrtoint i8* %350 to i32
  %352 = call i8* @c_fetch_pointer_from_offset(i32 %351)
  %353 = call i1 @c_isTaintedPointerToTaintedMem(i8* %352)
  br i1 %353, label %_Dynamic_check.succeeded214, label %_Dynamic_check.failed213

_Dynamic_check.succeeded214:                      ; preds = %while.end212
  %354 = load i8, i8* %352, align 1
  %conv215 = sext i8 %354 to i32
  %cmp216 = icmp ne i32 %conv215, 125
  br i1 %cmp216, label %if.then226, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %_Dynamic_check.succeeded214
  %355 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %output_object, align 4
  %356 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %output_object, align 4
  %357 = ptrtoint %Tstruct.Spl_json_object_t_t* %356 to i32
  %358 = call i8* @c_fetch_pointer_from_offset(i32 %357)
  %359 = call i1 @c_isTaintedPointerToTaintedMem(i8* %358)
  br i1 %359, label %_Dynamic_check.succeeded219, label %_Dynamic_check.failed218

_Dynamic_check.succeeded219:                      ; preds = %lor.lhs.false
  %360 = bitcast i8* %358 to %Tstruct.Spl_json_object_t_t*
  %call220 = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %360)
  %361 = ptrtoint %Tstruct.Spl_json_object_t_t* %355 to i32
  %362 = call i8* @c_fetch_pointer_from_offset(i32 %361)
  %363 = call i1 @c_isTaintedPointerToTaintedMem(i8* %362)
  br i1 %363, label %_Dynamic_check.succeeded222, label %_Dynamic_check.failed221

_Dynamic_check.succeeded222:                      ; preds = %_Dynamic_check.succeeded219
  %364 = bitcast i8* %362 to %Tstruct.Spl_json_object_t_t*
  %call223 = call i32 @json_object_resize(%Tstruct.Spl_json_object_t_t* %364, i64 %call220)
  %cmp224 = icmp eq i32 %call223, -1
  br i1 %cmp224, label %if.then226, label %if.end234

if.then226:                                       ; preds = %_Dynamic_check.succeeded222, %_Dynamic_check.succeeded214
  %365 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %366 = ptrtoint %Tstruct.Spl_json_value_t_t* %365 to i32
  %367 = call i8* @c_fetch_pointer_from_offset(i32 %366)
  %368 = call i1 @c_isTaintedPointerToTaintedMem(i8* %367)
  br i1 %368, label %_Dynamic_check.succeeded228, label %_Dynamic_check.failed227

_Dynamic_check.succeeded228:                      ; preds = %if.then226
  %369 = bitcast i8* %367 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %369)
  %370 = load i8*, i8** %string.addr, align 4
  %371 = load i8*, i8** %str_cpy, align 4
  %372 = ptrtoint i8* %370 to i32
  %373 = call i8* @c_fetch_pointer_from_offset(i32 %372)
  %374 = call i1 @c_isTaintedPointerToTaintedMem(i8* %373)
  br i1 %374, label %_Dynamic_check.succeeded230, label %_Dynamic_check.failed229

_Dynamic_check.succeeded230:                      ; preds = %_Dynamic_check.succeeded228
  %375 = ptrtoint i8* %371 to i32
  %376 = call i8* @c_fetch_pointer_from_offset(i32 %375)
  %377 = call i1 @c_isTaintedPointerToTaintedMem(i8* %376)
  br i1 %377, label %_Dynamic_check.succeeded232, label %_Dynamic_check.failed231

_Dynamic_check.succeeded232:                      ; preds = %_Dynamic_check.succeeded230
  %call233 = call i8* @t_strcpy(i8* %373, i8* %376)
  %378 = call i32 @c_TPtoO(i8* %call233)
  %379 = inttoptr i32 %378 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed213:                         ; preds = %while.end212
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed218:                         ; preds = %lor.lhs.false
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed221:                         ; preds = %_Dynamic_check.succeeded219
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed227:                         ; preds = %if.then226
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed229:                         ; preds = %_Dynamic_check.succeeded228
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed231:                         ; preds = %_Dynamic_check.succeeded230
  call void @llvm.trap() #9
  unreachable

if.end234:                                        ; preds = %_Dynamic_check.succeeded222
  %380 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr235 = getelementptr inbounds i8, i8* %380, i32 1
  %381 = ptrtoint i8* %incdec.ptr235 to i32
  %382 = bitcast i8** %str_cpy to i32*
  store i32 %381, i32* %382, align 4
  %383 = load i8*, i8** %string.addr, align 4
  %384 = load i8*, i8** %str_cpy, align 4
  %385 = ptrtoint i8* %383 to i32
  %386 = call i8* @c_fetch_pointer_from_offset(i32 %385)
  %387 = call i1 @c_isTaintedPointerToTaintedMem(i8* %386)
  br i1 %387, label %_Dynamic_check.succeeded237, label %_Dynamic_check.failed236

_Dynamic_check.succeeded237:                      ; preds = %if.end234
  %388 = ptrtoint i8* %384 to i32
  %389 = call i8* @c_fetch_pointer_from_offset(i32 %388)
  %390 = call i1 @c_isTaintedPointerToTaintedMem(i8* %389)
  br i1 %390, label %_Dynamic_check.succeeded239, label %_Dynamic_check.failed238

_Dynamic_check.succeeded239:                      ; preds = %_Dynamic_check.succeeded237
  %call240 = call i8* @t_strcpy(i8* %386, i8* %389)
  %391 = call i32 @c_TPtoO(i8* %call240)
  %392 = inttoptr i32 %391 to i8*
  %393 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %393, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed236:                         ; preds = %if.end234
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed238:                         ; preds = %_Dynamic_check.succeeded237
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded239, %_Dynamic_check.succeeded232, %_Dynamic_check.succeeded160, %_Dynamic_check.succeeded126, %_Dynamic_check.succeeded97, %_Dynamic_check.succeeded68, %_Dynamic_check.succeeded47, %_Dynamic_check.succeeded26, %_Dynamic_check.succeeded13
  %394 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %394
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
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  store i64 %nesting, i64* %nesting.addr, align 8
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i64 @t_strlen(i8* %4)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %str_len, align 4
  %6 = load i32, i32* %str_len, align 4
  %conv1 = sext i32 %6 to i64
  %mul = mul i64 %conv1, 1
  %call2 = call i8* @parson_string_tainted_malloc(i64 %mul)
  %7 = call i32 @c_TPtoO(i8* %call2)
  %8 = inttoptr i32 %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = bitcast i8** %str_cpy to i32*
  store i32 %9, i32* %10, align 4
  %11 = load i8*, i8** %str_cpy, align 4
  %12 = load i8*, i8** %string.addr, align 4
  %13 = ptrtoint i8* %11 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %16 = ptrtoint i8* %12 to i32
  %17 = call i8* @c_fetch_pointer_from_offset(i32 %16)
  %18 = call i1 @c_isTaintedPointerToTaintedMem(i8* %17)
  br i1 %18, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %call7 = call i8* @t_strcpy(i8* %14, i8* %17)
  %19 = call i32 @c_TPtoO(i8* %call7)
  %20 = inttoptr i32 %19 to i8*
  %21 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 0, i32* %21, align 4
  %22 = bitcast %Tstruct.Spl_json_value_t_t** %new_array_value to i32*
  store i32 0, i32* %22, align 4
  %23 = bitcast %Tstruct.Spl_json_array_t_t** %output_array to i32*
  store i32 0, i32* %23, align 4
  %call8 = call %Tstruct.Spl_json_value_t_t* @json_value_init_array()
  %24 = bitcast %Tstruct.Spl_json_value_t_t* %call8 to %Tstruct.json_value_t_t*
  %25 = bitcast %Tstruct.json_value_t_t* %24 to i8*
  %26 = call i32 @c_TPtoO(i8* %25)
  %27 = inttoptr i32 %26 to %Tstruct.json_value_t_t*
  %28 = bitcast %Tstruct.json_value_t_t* %27 to %Tstruct.Spl_json_value_t_t*
  %29 = ptrtoint %Tstruct.Spl_json_value_t_t* %28 to i32
  %30 = bitcast %Tstruct.Spl_json_value_t_t** %output_value to i32*
  store i32 %29, i32* %30, align 4
  %31 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %32 = ptrtoint %Tstruct.Spl_json_value_t_t* %31 to i32
  %cmp = icmp eq i32 %32, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded6
  %33 = load i8*, i8** %string.addr, align 4
  %34 = load i8*, i8** %str_cpy, align 4
  %35 = ptrtoint i8* %33 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %if.then
  %38 = ptrtoint i8* %34 to i32
  %39 = call i8* @c_fetch_pointer_from_offset(i32 %38)
  %40 = call i1 @c_isTaintedPointerToTaintedMem(i8* %39)
  br i1 %40, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %call14 = call i8* @t_strcpy(i8* %36, i8* %39)
  %41 = call i32 @c_TPtoO(i8* %call14)
  %42 = inttoptr i32 %41 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed10:                          ; preds = %if.then
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded6
  %43 = load i8*, i8** %str_cpy, align 4
  %44 = ptrtoint i8* %43 to i32
  %45 = call i8* @c_fetch_pointer_from_offset(i32 %44)
  %46 = call i1 @c_isTaintedPointerToTaintedMem(i8* %45)
  br i1 %46, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %if.end
  %47 = load i8, i8* %45, align 1
  %conv17 = sext i8 %47 to i32
  %cmp18 = icmp ne i32 %conv17, 91
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %_Dynamic_check.succeeded16
  %48 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %49 = ptrtoint %Tstruct.Spl_json_value_t_t* %48 to i32
  %50 = call i8* @c_fetch_pointer_from_offset(i32 %49)
  %51 = call i1 @c_isTaintedPointerToTaintedMem(i8* %50)
  br i1 %51, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %if.then20
  %52 = bitcast i8* %50 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %52)
  %53 = load i8*, i8** %string.addr, align 4
  %54 = load i8*, i8** %str_cpy, align 4
  %55 = ptrtoint i8* %53 to i32
  %56 = call i8* @c_fetch_pointer_from_offset(i32 %55)
  %57 = call i1 @c_isTaintedPointerToTaintedMem(i8* %56)
  br i1 %57, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded22
  %58 = ptrtoint i8* %54 to i32
  %59 = call i8* @c_fetch_pointer_from_offset(i32 %58)
  %60 = call i1 @c_isTaintedPointerToTaintedMem(i8* %59)
  br i1 %60, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded24
  %call27 = call i8* @t_strcpy(i8* %56, i8* %59)
  %61 = call i32 @c_TPtoO(i8* %call27)
  %62 = inttoptr i32 %61 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed15:                          ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed21:                          ; preds = %if.then20
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #9
  unreachable

if.end28:                                         ; preds = %_Dynamic_check.succeeded16
  %63 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %64 = ptrtoint %Tstruct.Spl_json_value_t_t* %63 to i32
  %65 = call i8* @c_fetch_pointer_from_offset(i32 %64)
  %66 = call i1 @c_isTaintedPointerToTaintedMem(i8* %65)
  br i1 %66, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %if.end28
  %67 = bitcast i8* %65 to %Tstruct.Spl_json_value_t_t*
  %call31 = call %Tstruct.Spl_json_array_t_t* bitcast (%Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)* @json_value_get_array to %Tstruct.Spl_json_array_t_t* (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %67)
  %68 = bitcast %Tstruct.Spl_json_array_t_t* %call31 to %Tstruct.json_array_t_t*
  %69 = bitcast %Tstruct.json_array_t_t* %68 to i8*
  %70 = call i32 @c_TPtoO(i8* %69)
  %71 = inttoptr i32 %70 to %Tstruct.json_array_t_t*
  %72 = bitcast %Tstruct.json_array_t_t* %71 to %Tstruct.Spl_json_array_t_t*
  %73 = ptrtoint %Tstruct.Spl_json_array_t_t* %72 to i32
  %74 = bitcast %Tstruct.Spl_json_array_t_t** %output_array to i32*
  store i32 %73, i32* %74, align 4
  %75 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr = getelementptr inbounds i8, i8* %75, i32 1
  %76 = ptrtoint i8* %incdec.ptr to i32
  %77 = bitcast i8** %str_cpy to i32*
  store i32 %76, i32* %77, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %_Dynamic_check.succeeded30
  %78 = load i8*, i8** %str_cpy, align 4
  %79 = ptrtoint i8* %78 to i32
  %80 = call i8* @c_fetch_pointer_from_offset(i32 %79)
  %81 = call i1 @c_isTaintedPointerToTaintedMem(i8* %80)
  br i1 %81, label %_Dynamic_check.succeeded33, label %_Dynamic_check.failed32

_Dynamic_check.succeeded33:                       ; preds = %while.cond
  %82 = load i8, i8* %80, align 1
  %conv34 = zext i8 %82 to i32
  %call35 = call i32 @isspace(i32 %conv34) #10
  %tobool = icmp ne i32 %call35, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %_Dynamic_check.succeeded33
  %83 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr36 = getelementptr inbounds i8, i8* %83, i32 1
  %84 = ptrtoint i8* %incdec.ptr36 to i32
  %85 = bitcast i8** %str_cpy to i32*
  store i32 %84, i32* %85, align 4
  br label %while.cond, !llvm.loop !23

_Dynamic_check.failed29:                          ; preds = %if.end28
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed32:                          ; preds = %while.cond
  call void @llvm.trap() #9
  unreachable

while.end:                                        ; preds = %_Dynamic_check.succeeded33
  %86 = load i8*, i8** %str_cpy, align 4
  %87 = ptrtoint i8* %86 to i32
  %88 = call i8* @c_fetch_pointer_from_offset(i32 %87)
  %89 = call i1 @c_isTaintedPointerToTaintedMem(i8* %88)
  br i1 %89, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %while.end
  %90 = load i8, i8* %88, align 1
  %conv39 = sext i8 %90 to i32
  %cmp40 = icmp eq i32 %conv39, 93
  br i1 %cmp40, label %if.then42, label %if.end49

if.then42:                                        ; preds = %_Dynamic_check.succeeded38
  %91 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr43 = getelementptr inbounds i8, i8* %91, i32 1
  %92 = ptrtoint i8* %incdec.ptr43 to i32
  %93 = bitcast i8** %str_cpy to i32*
  store i32 %92, i32* %93, align 4
  %94 = load i8*, i8** %string.addr, align 4
  %95 = load i8*, i8** %str_cpy, align 4
  %96 = ptrtoint i8* %94 to i32
  %97 = call i8* @c_fetch_pointer_from_offset(i32 %96)
  %98 = call i1 @c_isTaintedPointerToTaintedMem(i8* %97)
  br i1 %98, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %if.then42
  %99 = ptrtoint i8* %95 to i32
  %100 = call i8* @c_fetch_pointer_from_offset(i32 %99)
  %101 = call i1 @c_isTaintedPointerToTaintedMem(i8* %100)
  br i1 %101, label %_Dynamic_check.succeeded47, label %_Dynamic_check.failed46

_Dynamic_check.succeeded47:                       ; preds = %_Dynamic_check.succeeded45
  %call48 = call i8* @t_strcpy(i8* %97, i8* %100)
  %102 = call i32 @c_TPtoO(i8* %call48)
  %103 = inttoptr i32 %102 to i8*
  %104 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %104, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed37:                          ; preds = %while.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed44:                          ; preds = %if.then42
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed46:                          ; preds = %_Dynamic_check.succeeded45
  call void @llvm.trap() #9
  unreachable

if.end49:                                         ; preds = %_Dynamic_check.succeeded38
  br label %while.cond50

while.cond50:                                     ; preds = %while.end114, %if.end49
  %105 = load i8*, i8** %str_cpy, align 4
  %106 = ptrtoint i8* %105 to i32
  %107 = call i8* @c_fetch_pointer_from_offset(i32 %106)
  %108 = call i1 @c_isTaintedPointerToTaintedMem(i8* %107)
  br i1 %108, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %while.cond50
  %109 = load i8, i8* %107, align 1
  %conv53 = sext i8 %109 to i32
  %cmp54 = icmp ne i32 %conv53, 0
  br i1 %cmp54, label %while.body56, label %while.end115

while.body56:                                     ; preds = %_Dynamic_check.succeeded52
  %110 = load i8*, i8** %str_cpy, align 4
  %111 = load i64, i64* %nesting.addr, align 8
  %112 = ptrtoint i8* %110 to i32
  %113 = call i8* @c_fetch_pointer_from_offset(i32 %112)
  %114 = call i1 @c_isTaintedPointerToTaintedMem(i8* %113)
  br i1 %114, label %_Dynamic_check.succeeded58, label %_Dynamic_check.failed57

_Dynamic_check.succeeded58:                       ; preds = %while.body56
  %call59 = call %Tstruct.Spl_json_value_t_t* @parse_value(i8* %113, i64 %111)
  %115 = bitcast %Tstruct.Spl_json_value_t_t* %call59 to %Tstruct.json_value_t_t*
  %116 = bitcast %Tstruct.json_value_t_t* %115 to i8*
  %117 = call i32 @c_TPtoO(i8* %116)
  %118 = inttoptr i32 %117 to %Tstruct.json_value_t_t*
  %119 = bitcast %Tstruct.json_value_t_t* %118 to %Tstruct.Spl_json_value_t_t*
  %120 = ptrtoint %Tstruct.Spl_json_value_t_t* %119 to i32
  %121 = bitcast %Tstruct.Spl_json_value_t_t** %new_array_value to i32*
  store i32 %120, i32* %121, align 4
  %122 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_array_value, align 4
  %123 = ptrtoint %Tstruct.Spl_json_value_t_t* %122 to i32
  %cmp60 = icmp eq i32 %123, 0
  br i1 %cmp60, label %if.then62, label %if.end70

if.then62:                                        ; preds = %_Dynamic_check.succeeded58
  %124 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %125 = ptrtoint %Tstruct.Spl_json_value_t_t* %124 to i32
  %126 = call i8* @c_fetch_pointer_from_offset(i32 %125)
  %127 = call i1 @c_isTaintedPointerToTaintedMem(i8* %126)
  br i1 %127, label %_Dynamic_check.succeeded64, label %_Dynamic_check.failed63

_Dynamic_check.succeeded64:                       ; preds = %if.then62
  %128 = bitcast i8* %126 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %128)
  %129 = load i8*, i8** %string.addr, align 4
  %130 = load i8*, i8** %str_cpy, align 4
  %131 = ptrtoint i8* %129 to i32
  %132 = call i8* @c_fetch_pointer_from_offset(i32 %131)
  %133 = call i1 @c_isTaintedPointerToTaintedMem(i8* %132)
  br i1 %133, label %_Dynamic_check.succeeded66, label %_Dynamic_check.failed65

_Dynamic_check.succeeded66:                       ; preds = %_Dynamic_check.succeeded64
  %134 = ptrtoint i8* %130 to i32
  %135 = call i8* @c_fetch_pointer_from_offset(i32 %134)
  %136 = call i1 @c_isTaintedPointerToTaintedMem(i8* %135)
  br i1 %136, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded66
  %call69 = call i8* @t_strcpy(i8* %132, i8* %135)
  %137 = call i32 @c_TPtoO(i8* %call69)
  %138 = inttoptr i32 %137 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed51:                          ; preds = %while.cond50
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed57:                          ; preds = %while.body56
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed63:                          ; preds = %if.then62
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed65:                          ; preds = %_Dynamic_check.succeeded64
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded66
  call void @llvm.trap() #9
  unreachable

if.end70:                                         ; preds = %_Dynamic_check.succeeded58
  %139 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %output_array, align 4
  %140 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_array_value, align 4
  %141 = ptrtoint %Tstruct.Spl_json_array_t_t* %139 to i32
  %142 = call i8* @c_fetch_pointer_from_offset(i32 %141)
  %143 = call i1 @c_isTaintedPointerToTaintedMem(i8* %142)
  br i1 %143, label %_Dynamic_check.succeeded72, label %_Dynamic_check.failed71

_Dynamic_check.succeeded72:                       ; preds = %if.end70
  %144 = bitcast i8* %142 to %Tstruct.Spl_json_array_t_t*
  %145 = ptrtoint %Tstruct.Spl_json_value_t_t* %140 to i32
  %146 = call i8* @c_fetch_pointer_from_offset(i32 %145)
  %147 = call i1 @c_isTaintedPointerToTaintedMem(i8* %146)
  br i1 %147, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %_Dynamic_check.succeeded72
  %148 = bitcast i8* %146 to %Tstruct.Spl_json_value_t_t*
  %call75 = call i32 bitcast (i32 (%Tstruct.json_array_t_t*, %Tstruct.json_value_t_t*)* @json_array_add to i32 (%Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_array_t_t* %144, %Tstruct.Spl_json_value_t_t* %148)
  %cmp76 = icmp eq i32 %call75, -1
  br i1 %cmp76, label %if.then78, label %if.end88

if.then78:                                        ; preds = %_Dynamic_check.succeeded74
  %149 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %new_array_value, align 4
  %150 = ptrtoint %Tstruct.Spl_json_value_t_t* %149 to i32
  %151 = call i8* @c_fetch_pointer_from_offset(i32 %150)
  %152 = call i1 @c_isTaintedPointerToTaintedMem(i8* %151)
  br i1 %152, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %if.then78
  %153 = bitcast i8* %151 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %153)
  %154 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %155 = ptrtoint %Tstruct.Spl_json_value_t_t* %154 to i32
  %156 = call i8* @c_fetch_pointer_from_offset(i32 %155)
  %157 = call i1 @c_isTaintedPointerToTaintedMem(i8* %156)
  br i1 %157, label %_Dynamic_check.succeeded82, label %_Dynamic_check.failed81

_Dynamic_check.succeeded82:                       ; preds = %_Dynamic_check.succeeded80
  %158 = bitcast i8* %156 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %158)
  %159 = load i8*, i8** %string.addr, align 4
  %160 = load i8*, i8** %str_cpy, align 4
  %161 = ptrtoint i8* %159 to i32
  %162 = call i8* @c_fetch_pointer_from_offset(i32 %161)
  %163 = call i1 @c_isTaintedPointerToTaintedMem(i8* %162)
  br i1 %163, label %_Dynamic_check.succeeded84, label %_Dynamic_check.failed83

_Dynamic_check.succeeded84:                       ; preds = %_Dynamic_check.succeeded82
  %164 = ptrtoint i8* %160 to i32
  %165 = call i8* @c_fetch_pointer_from_offset(i32 %164)
  %166 = call i1 @c_isTaintedPointerToTaintedMem(i8* %165)
  br i1 %166, label %_Dynamic_check.succeeded86, label %_Dynamic_check.failed85

_Dynamic_check.succeeded86:                       ; preds = %_Dynamic_check.succeeded84
  %call87 = call i8* @t_strcpy(i8* %162, i8* %165)
  %167 = call i32 @c_TPtoO(i8* %call87)
  %168 = inttoptr i32 %167 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed71:                          ; preds = %if.end70
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed73:                          ; preds = %_Dynamic_check.succeeded72
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed79:                          ; preds = %if.then78
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed81:                          ; preds = %_Dynamic_check.succeeded80
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed83:                          ; preds = %_Dynamic_check.succeeded82
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed85:                          ; preds = %_Dynamic_check.succeeded84
  call void @llvm.trap() #9
  unreachable

if.end88:                                         ; preds = %_Dynamic_check.succeeded74
  br label %while.cond89

while.cond89:                                     ; preds = %while.body95, %if.end88
  %169 = load i8*, i8** %str_cpy, align 4
  %170 = ptrtoint i8* %169 to i32
  %171 = call i8* @c_fetch_pointer_from_offset(i32 %170)
  %172 = call i1 @c_isTaintedPointerToTaintedMem(i8* %171)
  br i1 %172, label %_Dynamic_check.succeeded91, label %_Dynamic_check.failed90

_Dynamic_check.succeeded91:                       ; preds = %while.cond89
  %173 = load i8, i8* %171, align 1
  %conv92 = zext i8 %173 to i32
  %call93 = call i32 @isspace(i32 %conv92) #10
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %while.body95, label %while.end97

while.body95:                                     ; preds = %_Dynamic_check.succeeded91
  %174 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr96 = getelementptr inbounds i8, i8* %174, i32 1
  %175 = ptrtoint i8* %incdec.ptr96 to i32
  %176 = bitcast i8** %str_cpy to i32*
  store i32 %175, i32* %176, align 4
  br label %while.cond89, !llvm.loop !24

_Dynamic_check.failed90:                          ; preds = %while.cond89
  call void @llvm.trap() #9
  unreachable

while.end97:                                      ; preds = %_Dynamic_check.succeeded91
  %177 = load i8*, i8** %str_cpy, align 4
  %178 = ptrtoint i8* %177 to i32
  %179 = call i8* @c_fetch_pointer_from_offset(i32 %178)
  %180 = call i1 @c_isTaintedPointerToTaintedMem(i8* %179)
  br i1 %180, label %_Dynamic_check.succeeded99, label %_Dynamic_check.failed98

_Dynamic_check.succeeded99:                       ; preds = %while.end97
  %181 = load i8, i8* %179, align 1
  %conv100 = sext i8 %181 to i32
  %cmp101 = icmp ne i32 %conv100, 44
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %_Dynamic_check.succeeded99
  br label %while.end115

_Dynamic_check.failed98:                          ; preds = %while.end97
  call void @llvm.trap() #9
  unreachable

if.end104:                                        ; preds = %_Dynamic_check.succeeded99
  %182 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr105 = getelementptr inbounds i8, i8* %182, i32 1
  %183 = ptrtoint i8* %incdec.ptr105 to i32
  %184 = bitcast i8** %str_cpy to i32*
  store i32 %183, i32* %184, align 4
  br label %while.cond106

while.cond106:                                    ; preds = %while.body112, %if.end104
  %185 = load i8*, i8** %str_cpy, align 4
  %186 = ptrtoint i8* %185 to i32
  %187 = call i8* @c_fetch_pointer_from_offset(i32 %186)
  %188 = call i1 @c_isTaintedPointerToTaintedMem(i8* %187)
  br i1 %188, label %_Dynamic_check.succeeded108, label %_Dynamic_check.failed107

_Dynamic_check.succeeded108:                      ; preds = %while.cond106
  %189 = load i8, i8* %187, align 1
  %conv109 = zext i8 %189 to i32
  %call110 = call i32 @isspace(i32 %conv109) #10
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %while.body112, label %while.end114

while.body112:                                    ; preds = %_Dynamic_check.succeeded108
  %190 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr113 = getelementptr inbounds i8, i8* %190, i32 1
  %191 = ptrtoint i8* %incdec.ptr113 to i32
  %192 = bitcast i8** %str_cpy to i32*
  store i32 %191, i32* %192, align 4
  br label %while.cond106, !llvm.loop !25

_Dynamic_check.failed107:                         ; preds = %while.cond106
  call void @llvm.trap() #9
  unreachable

while.end114:                                     ; preds = %_Dynamic_check.succeeded108
  br label %while.cond50, !llvm.loop !26

while.end115:                                     ; preds = %if.then103, %_Dynamic_check.succeeded52
  br label %while.cond116

while.cond116:                                    ; preds = %while.body122, %while.end115
  %193 = load i8*, i8** %str_cpy, align 4
  %194 = ptrtoint i8* %193 to i32
  %195 = call i8* @c_fetch_pointer_from_offset(i32 %194)
  %196 = call i1 @c_isTaintedPointerToTaintedMem(i8* %195)
  br i1 %196, label %_Dynamic_check.succeeded118, label %_Dynamic_check.failed117

_Dynamic_check.succeeded118:                      ; preds = %while.cond116
  %197 = load i8, i8* %195, align 1
  %conv119 = zext i8 %197 to i32
  %call120 = call i32 @isspace(i32 %conv119) #10
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %while.body122, label %while.end124

while.body122:                                    ; preds = %_Dynamic_check.succeeded118
  %198 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr123 = getelementptr inbounds i8, i8* %198, i32 1
  %199 = ptrtoint i8* %incdec.ptr123 to i32
  %200 = bitcast i8** %str_cpy to i32*
  store i32 %199, i32* %200, align 4
  br label %while.cond116, !llvm.loop !27

_Dynamic_check.failed117:                         ; preds = %while.cond116
  call void @llvm.trap() #9
  unreachable

while.end124:                                     ; preds = %_Dynamic_check.succeeded118
  %201 = load i8*, i8** %str_cpy, align 4
  %202 = ptrtoint i8* %201 to i32
  %203 = call i8* @c_fetch_pointer_from_offset(i32 %202)
  %204 = call i1 @c_isTaintedPointerToTaintedMem(i8* %203)
  br i1 %204, label %_Dynamic_check.succeeded126, label %_Dynamic_check.failed125

_Dynamic_check.succeeded126:                      ; preds = %while.end124
  %205 = load i8, i8* %203, align 1
  %conv127 = sext i8 %205 to i32
  %cmp128 = icmp ne i32 %conv127, 93
  br i1 %cmp128, label %if.then138, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %_Dynamic_check.succeeded126
  %206 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %output_array, align 4
  %207 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %output_array, align 4
  %208 = ptrtoint %Tstruct.Spl_json_array_t_t* %207 to i32
  %209 = call i8* @c_fetch_pointer_from_offset(i32 %208)
  %210 = call i1 @c_isTaintedPointerToTaintedMem(i8* %209)
  br i1 %210, label %_Dynamic_check.succeeded131, label %_Dynamic_check.failed130

_Dynamic_check.succeeded131:                      ; preds = %lor.lhs.false
  %211 = bitcast i8* %209 to %Tstruct.Spl_json_array_t_t*
  %call132 = call i64 bitcast (i64 (%Tstruct.Spl_json_array_t_t*)* @json_array_get_count to i64 (%Tstruct.Spl_json_array_t_t*)*)(%Tstruct.Spl_json_array_t_t* %211)
  %212 = ptrtoint %Tstruct.Spl_json_array_t_t* %206 to i32
  %213 = call i8* @c_fetch_pointer_from_offset(i32 %212)
  %214 = call i1 @c_isTaintedPointerToTaintedMem(i8* %213)
  br i1 %214, label %_Dynamic_check.succeeded134, label %_Dynamic_check.failed133

_Dynamic_check.succeeded134:                      ; preds = %_Dynamic_check.succeeded131
  %215 = bitcast i8* %213 to %Tstruct.Spl_json_array_t_t*
  %call135 = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_resize to i32 (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %215, i64 %call132)
  %cmp136 = icmp eq i32 %call135, -1
  br i1 %cmp136, label %if.then138, label %if.end146

if.then138:                                       ; preds = %_Dynamic_check.succeeded134, %_Dynamic_check.succeeded126
  %216 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  %217 = ptrtoint %Tstruct.Spl_json_value_t_t* %216 to i32
  %218 = call i8* @c_fetch_pointer_from_offset(i32 %217)
  %219 = call i1 @c_isTaintedPointerToTaintedMem(i8* %218)
  br i1 %219, label %_Dynamic_check.succeeded140, label %_Dynamic_check.failed139

_Dynamic_check.succeeded140:                      ; preds = %if.then138
  %220 = bitcast i8* %218 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %220)
  %221 = load i8*, i8** %string.addr, align 4
  %222 = load i8*, i8** %str_cpy, align 4
  %223 = ptrtoint i8* %221 to i32
  %224 = call i8* @c_fetch_pointer_from_offset(i32 %223)
  %225 = call i1 @c_isTaintedPointerToTaintedMem(i8* %224)
  br i1 %225, label %_Dynamic_check.succeeded142, label %_Dynamic_check.failed141

_Dynamic_check.succeeded142:                      ; preds = %_Dynamic_check.succeeded140
  %226 = ptrtoint i8* %222 to i32
  %227 = call i8* @c_fetch_pointer_from_offset(i32 %226)
  %228 = call i1 @c_isTaintedPointerToTaintedMem(i8* %227)
  br i1 %228, label %_Dynamic_check.succeeded144, label %_Dynamic_check.failed143

_Dynamic_check.succeeded144:                      ; preds = %_Dynamic_check.succeeded142
  %call145 = call i8* @t_strcpy(i8* %224, i8* %227)
  %229 = call i32 @c_TPtoO(i8* %call145)
  %230 = inttoptr i32 %229 to i8*
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed125:                         ; preds = %while.end124
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed130:                         ; preds = %lor.lhs.false
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed133:                         ; preds = %_Dynamic_check.succeeded131
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed139:                         ; preds = %if.then138
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed141:                         ; preds = %_Dynamic_check.succeeded140
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed143:                         ; preds = %_Dynamic_check.succeeded142
  call void @llvm.trap() #9
  unreachable

if.end146:                                        ; preds = %_Dynamic_check.succeeded134
  %231 = load i8*, i8** %str_cpy, align 4
  %incdec.ptr147 = getelementptr inbounds i8, i8* %231, i32 1
  %232 = ptrtoint i8* %incdec.ptr147 to i32
  %233 = bitcast i8** %str_cpy to i32*
  store i32 %232, i32* %233, align 4
  %234 = load i8*, i8** %string.addr, align 4
  %235 = load i8*, i8** %str_cpy, align 4
  %236 = ptrtoint i8* %234 to i32
  %237 = call i8* @c_fetch_pointer_from_offset(i32 %236)
  %238 = call i1 @c_isTaintedPointerToTaintedMem(i8* %237)
  br i1 %238, label %_Dynamic_check.succeeded149, label %_Dynamic_check.failed148

_Dynamic_check.succeeded149:                      ; preds = %if.end146
  %239 = ptrtoint i8* %235 to i32
  %240 = call i8* @c_fetch_pointer_from_offset(i32 %239)
  %241 = call i1 @c_isTaintedPointerToTaintedMem(i8* %240)
  br i1 %241, label %_Dynamic_check.succeeded151, label %_Dynamic_check.failed150

_Dynamic_check.succeeded151:                      ; preds = %_Dynamic_check.succeeded149
  %call152 = call i8* @t_strcpy(i8* %237, i8* %240)
  %242 = call i32 @c_TPtoO(i8* %call152)
  %243 = inttoptr i32 %242 to i8*
  %244 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %output_value, align 4
  store %Tstruct.Spl_json_value_t_t* %244, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed148:                         ; preds = %if.end146
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed150:                         ; preds = %_Dynamic_check.succeeded149
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded151, %_Dynamic_check.succeeded144, %_Dynamic_check.succeeded86, %_Dynamic_check.succeeded68, %_Dynamic_check.succeeded47, %_Dynamic_check.succeeded26, %_Dynamic_check.succeeded13
  %245 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %245
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_array_resize(%Tstruct.json_array_t_t* %array, i64 %new_capacity) #2 {
entry:
  %retval = alloca i32, align 4
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %new_capacity.addr = alloca i64, align 8
  %new_items = alloca %Tstruct.Spl_json_value_t_t**, align 4
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 %new_capacity, i64* %new_capacity.addr, align 8
  %3 = bitcast %Tstruct.Spl_json_value_t_t*** %new_items to i32*
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* %new_capacity.addr, align 8
  %cmp = icmp eq i64 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i64, i64* %new_capacity.addr, align 8
  %6 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %lor.lhs.false
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %10, i32 0, i32 2
  %11 = load i32, i32* %count, align 8
  %conv = zext i32 %11 to i64
  %cmp1 = icmp ult i64 %5, %conv
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded, %entry
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %lor.lhs.false
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %12 = load i64, i64* %new_capacity.addr, align 8
  %mul = mul i64 %12, 8
  %call = call i8* @t_malloc(i64 %mul)
  %13 = bitcast i8* %call to %Tstruct.json_value_t_t**
  %14 = bitcast %Tstruct.json_value_t_t** %13 to i8*
  %15 = call i32 @c_TPtoO(i8* %14)
  %16 = inttoptr i32 %15 to %Tstruct.json_value_t_t**
  %17 = bitcast %Tstruct.json_value_t_t** %16 to %Tstruct.Spl_json_value_t_t**
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t** %17 to i32
  %19 = bitcast %Tstruct.Spl_json_value_t_t*** %new_items to i32*
  store i32 %18, i32* %19, align 4
  %20 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %new_items, align 4
  %21 = ptrtoint %Tstruct.Spl_json_value_t_t** %20 to i32
  %cmp3 = icmp eq i32 %21, 0
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 -1, i32* %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %22 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %23 = ptrtoint %Tstruct.Spl_json_array_t_t* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %if.end6
  %26 = bitcast i8* %24 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %26, i32 0, i32 1
  %items9 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %27 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items9, align 4
  %28 = ptrtoint %Tstruct.Spl_json_value_t_t** %27 to i32
  %cmp10 = icmp ne i32 %28, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end72

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded8
  %29 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %30 = ptrtoint %Tstruct.Spl_json_array_t_t* %29 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %land.lhs.true
  %33 = bitcast i8* %31 to %Tstruct.Spl_json_array_t_t*
  %count14 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %33, i32 0, i32 2
  %34 = load i32, i32* %count14, align 8
  %cmp15 = icmp ugt i32 %34, 0
  br i1 %cmp15, label %if.then17, label %if.end72

if.then17:                                        ; preds = %_Dynamic_check.succeeded13
  %35 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %new_items, align 4
  %_Dynamic_check.is_null = icmp eq %Tstruct.Spl_json_value_t_t** %35, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %if.then17
  %36 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %new_items, align 4
  %37 = bitcast %Tstruct.Spl_json_value_t_t** %36 to i8*
  %38 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %new_items, align 4
  %39 = bitcast %Tstruct.Spl_json_value_t_t** %38 to i8*
  %40 = load i64, i64* %new_capacity.addr, align 8
  %mul18 = mul i64 %40, 8
  %41 = call i32 @c_TPtoO(i8* %39)
  %42 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %41, %42
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.subsumption
  %add.ptr = getelementptr inbounds i8, i8* %39, i64 %mul18
  %43 = bitcast %Tstruct.Spl_json_value_t_t** %35 to i8*
  %44 = bitcast %Tstruct.Spl_json_value_t_t** %35 to i8*
  %45 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %46 = ptrtoint %Tstruct.Spl_json_array_t_t* %45 to i32
  %47 = call i8* @c_fetch_pointer_from_offset(i32 %46)
  %48 = call i1 @c_isTaintedPointerToTaintedMem(i8* %47)
  br i1 %48, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded20
  %49 = bitcast i8* %47 to %Tstruct.Spl_json_array_t_t*
  %count23 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %49, i32 0, i32 2
  %50 = load i32, i32* %count23, align 8
  %conv24 = zext i32 %50 to i64
  %mul25 = mul i64 %conv24, 8
  %51 = call i32 @c_TPtoO(i8* %44)
  %52 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null26 = icmp ne i32 %51, %52
  br i1 %_Dynamic_check.non_null26, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded22
  %add.ptr29 = getelementptr inbounds i8, i8* %44, i64 %mul25
  %53 = call i32 @c_TPtoO(i8* %37)
  %54 = inttoptr i32 %53 to i8*
  %55 = call i32 @c_TPtoO(i8* %43)
  %56 = inttoptr i32 %55 to i8*
  %57 = call i32 @c_TPtoO(i8* %54)
  %58 = call i32 @c_TPtoO(i8* %56)
  %_Dynamic_check.lower = icmp ule i32 %57, %58
  %59 = call i32 @c_TPtoO(i8* %add.ptr29)
  %60 = inttoptr i32 %59 to i8*
  %61 = call i32 @c_TPtoO(i8* %add.ptr)
  %62 = inttoptr i32 %61 to i8*
  %63 = call i32 @c_TPtoO(i8* %60)
  %64 = call i32 @c_TPtoO(i8* %62)
  %_Dynamic_check.upper = icmp ule i32 %63, %64
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed30

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded28, %if.then17
  %65 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %66 = ptrtoint %Tstruct.Spl_json_array_t_t* %65 to i32
  %67 = call i8* @c_fetch_pointer_from_offset(i32 %66)
  %68 = call i1 @c_isTaintedPointerToTaintedMem(i8* %67)
  br i1 %68, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.success
  %69 = bitcast i8* %67 to %Tstruct.Spl_json_array_t_t*
  %items33 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %69, i32 0, i32 1
  %items34 = bitcast i32* %items33 to %Tstruct.Spl_json_value_t_t***
  %70 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items34, align 4
  %_Dynamic_check.is_null35 = icmp eq %Tstruct.Spl_json_value_t_t** %70, null
  br i1 %_Dynamic_check.is_null35, label %_Dynamic_check.success61, label %_Dynamic_check.subsumption36

_Dynamic_check.subsumption36:                     ; preds = %_Dynamic_check.succeeded32
  %71 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %72 = ptrtoint %Tstruct.Spl_json_array_t_t* %71 to i32
  %73 = call i8* @c_fetch_pointer_from_offset(i32 %72)
  %74 = call i1 @c_isTaintedPointerToTaintedMem(i8* %73)
  br i1 %74, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %_Dynamic_check.subsumption36
  %75 = bitcast i8* %73 to %Tstruct.Spl_json_array_t_t*
  %items39 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %75, i32 0, i32 1
  %items40 = bitcast i32* %items39 to %Tstruct.Spl_json_value_t_t***
  %76 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items40, align 4
  %77 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %78 = ptrtoint %Tstruct.Spl_json_array_t_t* %77 to i32
  %79 = call i8* @c_fetch_pointer_from_offset(i32 %78)
  %80 = call i1 @c_isTaintedPointerToTaintedMem(i8* %79)
  br i1 %80, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %_Dynamic_check.succeeded38
  %81 = bitcast i8* %79 to %Tstruct.Spl_json_array_t_t*
  %items43 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %81, i32 0, i32 1
  %items44 = bitcast i32* %items43 to %Tstruct.Spl_json_value_t_t***
  %82 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items44, align 4
  %83 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %84 = ptrtoint %Tstruct.Spl_json_array_t_t* %83 to i32
  %85 = call i8* @c_fetch_pointer_from_offset(i32 %84)
  %86 = call i1 @c_isTaintedPointerToTaintedMem(i8* %85)
  br i1 %86, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded42
  %87 = bitcast i8* %85 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %87, i32 0, i32 3
  %88 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %88 to i64
  %add.ptr47 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %82, i64 %idx.ext
  %89 = bitcast %Tstruct.Spl_json_value_t_t** %70 to i8*
  %90 = bitcast i8* %89 to %Tstruct.Spl_json_value_t_t**
  %91 = bitcast %Tstruct.Spl_json_value_t_t** %70 to i8*
  %92 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %93 = ptrtoint %Tstruct.Spl_json_array_t_t* %92 to i32
  %94 = call i8* @c_fetch_pointer_from_offset(i32 %93)
  %95 = call i1 @c_isTaintedPointerToTaintedMem(i8* %94)
  br i1 %95, label %_Dynamic_check.succeeded49, label %_Dynamic_check.failed48

_Dynamic_check.succeeded49:                       ; preds = %_Dynamic_check.succeeded46
  %96 = bitcast i8* %94 to %Tstruct.Spl_json_array_t_t*
  %count50 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %96, i32 0, i32 2
  %97 = load i32, i32* %count50, align 8
  %conv51 = zext i32 %97 to i64
  %mul52 = mul i64 %conv51, 8
  %98 = call i32 @c_TPtoO(i8* %91)
  %99 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null53 = icmp ne i32 %98, %99
  br i1 %_Dynamic_check.non_null53, label %_Dynamic_check.succeeded55, label %_Dynamic_check.failed54

_Dynamic_check.succeeded55:                       ; preds = %_Dynamic_check.succeeded49
  %add.ptr56 = getelementptr inbounds i8, i8* %91, i64 %mul52
  %100 = bitcast i8* %add.ptr56 to %Tstruct.Spl_json_value_t_t**
  %101 = bitcast %Tstruct.Spl_json_value_t_t** %76 to i8*
  %102 = call i32 @c_TPtoO(i8* %101)
  %103 = inttoptr i32 %102 to %Tstruct.Spl_json_value_t_t**
  %104 = bitcast %Tstruct.Spl_json_value_t_t** %90 to i8*
  %105 = call i32 @c_TPtoO(i8* %104)
  %106 = inttoptr i32 %105 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower57 = icmp ule %Tstruct.Spl_json_value_t_t** %103, %106
  %107 = bitcast %Tstruct.Spl_json_value_t_t** %100 to i8*
  %108 = call i32 @c_TPtoO(i8* %107)
  %109 = inttoptr i32 %108 to %Tstruct.Spl_json_value_t_t**
  %110 = bitcast %Tstruct.Spl_json_value_t_t** %add.ptr47 to i8*
  %111 = call i32 @c_TPtoO(i8* %110)
  %112 = inttoptr i32 %111 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.upper58 = icmp ule %Tstruct.Spl_json_value_t_t** %109, %112
  %_Dynamic_check.cast59 = and i1 %_Dynamic_check.lower57, %_Dynamic_check.upper58
  br i1 %_Dynamic_check.cast59, label %_Dynamic_check.success61, label %_Dynamic_check.failed60

_Dynamic_check.success61:                         ; preds = %_Dynamic_check.succeeded55, %_Dynamic_check.succeeded32
  %113 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %114 = ptrtoint %Tstruct.Spl_json_array_t_t* %113 to i32
  %115 = call i8* @c_fetch_pointer_from_offset(i32 %114)
  %116 = call i1 @c_isTaintedPointerToTaintedMem(i8* %115)
  br i1 %116, label %_Dynamic_check.succeeded63, label %_Dynamic_check.failed62

_Dynamic_check.succeeded63:                       ; preds = %_Dynamic_check.success61
  %117 = bitcast i8* %115 to %Tstruct.Spl_json_array_t_t*
  %count64 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %117, i32 0, i32 2
  %118 = load i32, i32* %count64, align 8
  %conv65 = zext i32 %118 to i64
  %mul66 = mul i64 %conv65, 8
  %119 = ptrtoint %Tstruct.Spl_json_value_t_t** %35 to i32
  %120 = call i8* @c_fetch_pointer_from_offset(i32 %119)
  %121 = call i1 @c_isTaintedPointerToTaintedMem(i8* %120)
  br i1 %121, label %_Dynamic_check.succeeded68, label %_Dynamic_check.failed67

_Dynamic_check.succeeded68:                       ; preds = %_Dynamic_check.succeeded63
  %122 = bitcast i8* %120 to %Tstruct.Spl_json_value_t_t**
  %123 = bitcast %Tstruct.Spl_json_value_t_t** %122 to i8*
  %124 = ptrtoint %Tstruct.Spl_json_value_t_t** %70 to i32
  %125 = call i8* @c_fetch_pointer_from_offset(i32 %124)
  %126 = call i1 @c_isTaintedPointerToTaintedMem(i8* %125)
  br i1 %126, label %_Dynamic_check.succeeded70, label %_Dynamic_check.failed69

_Dynamic_check.succeeded70:                       ; preds = %_Dynamic_check.succeeded68
  %127 = bitcast i8* %125 to %Tstruct.Spl_json_value_t_t**
  %128 = bitcast %Tstruct.Spl_json_value_t_t** %127 to i8*
  %call71 = call i8* @t_memcpy(i8* %123, i8* %128, i64 %mul66)
  %129 = bitcast i8* %call71 to %Tstruct.json_value_t_t**
  %130 = bitcast %Tstruct.json_value_t_t** %129 to i8*
  %131 = call i32 @c_TPtoO(i8* %130)
  %132 = inttoptr i32 %131 to %Tstruct.json_value_t_t**
  br label %if.end72

_Dynamic_check.failed7:                           ; preds = %if.end6
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed12:                          ; preds = %land.lhs.true
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded22
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed30:                          ; preds = %_Dynamic_check.succeeded28
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed31:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed37:                          ; preds = %_Dynamic_check.subsumption36
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed41:                          ; preds = %_Dynamic_check.succeeded38
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed45:                          ; preds = %_Dynamic_check.succeeded42
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed48:                          ; preds = %_Dynamic_check.succeeded46
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed54:                          ; preds = %_Dynamic_check.succeeded49
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded55
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed62:                          ; preds = %_Dynamic_check.success61
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed67:                          ; preds = %_Dynamic_check.succeeded63
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed69:                          ; preds = %_Dynamic_check.succeeded68
  call void @llvm.trap() #9
  unreachable

if.end72:                                         ; preds = %_Dynamic_check.succeeded70, %_Dynamic_check.succeeded13, %_Dynamic_check.succeeded8
  %133 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %134 = ptrtoint %Tstruct.Spl_json_array_t_t* %133 to i32
  %135 = call i8* @c_fetch_pointer_from_offset(i32 %134)
  %136 = call i1 @c_isTaintedPointerToTaintedMem(i8* %135)
  br i1 %136, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %if.end72
  %137 = bitcast i8* %135 to %Tstruct.Spl_json_array_t_t*
  %items75 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %137, i32 0, i32 1
  %items76 = bitcast i32* %items75 to %Tstruct.Spl_json_value_t_t***
  %138 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items76, align 4
  %139 = ptrtoint %Tstruct.Spl_json_value_t_t** %138 to i32
  %140 = call i8* @c_fetch_pointer_from_offset(i32 %139)
  %141 = call i1 @c_isTaintedPointerToTaintedMem(i8* %140)
  br i1 %141, label %_Dynamic_check.succeeded78, label %_Dynamic_check.failed77

_Dynamic_check.succeeded78:                       ; preds = %_Dynamic_check.succeeded74
  %142 = bitcast i8* %140 to %Tstruct.Spl_json_value_t_t**
  %143 = bitcast %Tstruct.Spl_json_value_t_t** %142 to i8*
  call void @t_free(i8* %143)
  %144 = load i64, i64* %new_capacity.addr, align 8
  %conv79 = trunc i64 %144 to i32
  %145 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %146 = ptrtoint %Tstruct.Spl_json_array_t_t* %145 to i32
  %147 = call i8* @c_fetch_pointer_from_offset(i32 %146)
  %148 = call i1 @c_isTaintedPointerToTaintedMem(i8* %147)
  br i1 %148, label %_Dynamic_check.succeeded81, label %_Dynamic_check.failed80

_Dynamic_check.succeeded81:                       ; preds = %_Dynamic_check.succeeded78
  %149 = bitcast i8* %147 to %Tstruct.Spl_json_array_t_t*
  %capacity82 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %149, i32 0, i32 3
  store i32 %conv79, i32* %capacity82, align 4
  %150 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %new_items, align 4
  %151 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %152 = ptrtoint %Tstruct.Spl_json_array_t_t* %151 to i32
  %153 = call i8* @c_fetch_pointer_from_offset(i32 %152)
  %154 = call i1 @c_isTaintedPointerToTaintedMem(i8* %153)
  br i1 %154, label %_Dynamic_check.succeeded84, label %_Dynamic_check.failed83

_Dynamic_check.succeeded84:                       ; preds = %_Dynamic_check.succeeded81
  %155 = bitcast i8* %153 to %Tstruct.Spl_json_array_t_t*
  %items85 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %155, i32 0, i32 1
  %items86 = bitcast i32* %items85 to %Tstruct.Spl_json_value_t_t***
  %156 = ptrtoint %Tstruct.Spl_json_value_t_t** %150 to i32
  %157 = bitcast %Tstruct.Spl_json_value_t_t*** %items86 to i32*
  store i32 %156, i32* %157, align 4
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed73:                          ; preds = %if.end72
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed77:                          ; preds = %_Dynamic_check.succeeded74
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed80:                          ; preds = %_Dynamic_check.succeeded78
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed83:                          ; preds = %_Dynamic_check.succeeded81
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded84, %if.then5, %if.then
  %158 = load i32, i32* %retval, align 4
  ret i32 %158
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define internal %Tstruct.json_value_t_t* @parse_boolean_value(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = ptrtoint i8* %call to i64
  %5 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %4)
  %call1 = call i32 @w2c_parse_boolean_value(i8* %5, i32 %3)
  %conv = zext i32 %call1 to i64
  %6 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %6
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
  %i = alloca i32, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call = call i64 @t_strlen(i8* %4)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %str_len, align 4
  %6 = load i32, i32* %str_len, align 4
  %conv1 = sext i32 %6 to i64
  %mul = mul i64 %conv1, 1
  %call2 = call i8* @parson_string_tainted_malloc(i64 %mul)
  %7 = call i32 @c_TPtoO(i8* %call2)
  %8 = inttoptr i32 %7 to i8*
  %9 = ptrtoint i8* %8 to i32
  %10 = bitcast i8** %str_cpy to i32*
  store i32 %9, i32* %10, align 4
  %11 = load i8*, i8** %str_cpy, align 4
  %12 = load i8*, i8** %string.addr, align 4
  %13 = ptrtoint i8* %11 to i64
  %14 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %13)
  %15 = ptrtoint i8* %12 to i64
  %16 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %15)
  %call3 = call i8* @t_strcpy(i8* %14, i8* %16)
  %17 = call i32 @c_TPtoO(i8* %call3)
  %18 = inttoptr i32 %17 to i8*
  store i64 4, i64* %token_size, align 8
  %19 = load i8*, i8** %str_cpy, align 4
  %20 = load i64, i64* %token_size, align 8
  %21 = ptrtoint i8* %19 to i64
  %22 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %21)
  %call4 = call i32 @t_strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %22, i64 %20)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded
  %23 = load i64, i64* %token_size, align 8
  %24 = load i8*, i8** %str_cpy, align 4
  %add.ptr = getelementptr inbounds i8, i8* %24, i64 %23
  %25 = ptrtoint i8* %add.ptr to i32
  %26 = bitcast i8** %str_cpy to i32*
  store i32 %25, i32* %26, align 4
  %27 = load i8*, i8** %string.addr, align 4
  %28 = load i8*, i8** %str_cpy, align 4
  %29 = ptrtoint i8* %27 to i64
  %30 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %29)
  %31 = ptrtoint i8* %28 to i64
  %32 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %31)
  %call6 = call i8* @t_strcpy(i8* %30, i8* %32)
  %33 = call i32 @c_TPtoO(i8* %call6)
  %34 = inttoptr i32 %33 to i8*
  %call7 = call %Tstruct.Spl_json_value_t_t* @json_value_init_null()
  %35 = bitcast %Tstruct.Spl_json_value_t_t* %call7 to %Tstruct.json_value_t_t*
  %36 = bitcast %Tstruct.json_value_t_t* %35 to i8*
  %37 = call i32 @c_TPtoO(i8* %36)
  %38 = inttoptr i32 %37 to %Tstruct.Spl_json_value_t_t*
  store %Tstruct.Spl_json_value_t_t* %38, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded
  %39 = load i8*, i8** %string.addr, align 4
  %40 = load i8*, i8** %str_cpy, align 4
  %41 = ptrtoint i8* %39 to i64
  %42 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %41)
  %43 = ptrtoint i8* %40 to i64
  %44 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %43)
  %call8 = call i8* @t_strcpy(i8* %42, i8* %44)
  %45 = call i32 @c_TPtoO(i8* %call8)
  %46 = inttoptr i32 %45 to i8*
  %47 = load i8*, i8** %str_cpy, align 4
  %48 = load i64, i64* %token_size, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %49)
  %call9 = call i32 @t_strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %50, i64 %48)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end
  store i32 10, i32* %i, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then
  %51 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %51
}

declare dso_local i32 @t_strncmp(i8*, i8*, i64) #1

declare dso_local i8* @t_strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #8

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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  store i64 %name_len, i64* %name_len.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, i64* %i, align 8
  %6 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_object_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %for.cond
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_object_t_t*
  %call = call i64 bitcast (i64 (%Tstruct.Spl_json_object_t_t*)* @json_object_get_count to i64 (%Tstruct.Spl_json_object_t_t*)*)(%Tstruct.Spl_json_object_t_t* %10)
  %cmp = icmp ult i64 %5, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded
  %11 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %12 = ptrtoint %Tstruct.Spl_json_object_t_t* %11 to i32
  %13 = call i8* @c_fetch_pointer_from_offset(i32 %12)
  %14 = call i1 @c_isTaintedPointerToTaintedMem(i8* %13)
  br i1 %14, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %for.body
  %15 = bitcast i8* %13 to %Tstruct.Spl_json_object_t_t*
  %names = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %15, i32 0, i32 1
  %names3 = bitcast i32* %names to i8***
  %16 = load i8**, i8*** %names3, align 4
  %17 = load i64, i64* %i, align 8
  %18 = ptrtoint i8** %16 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded2
  %21 = bitcast i8* %19 to i8**
  %22 = bitcast i8** %21 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %17
  %23 = bitcast i32* %arrayidx to i8**
  %24 = bitcast i8** %23 to i8*
  %25 = call i32 @c_TPtoO(i8* %24)
  %26 = inttoptr i32 %25 to i8**
  %27 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %28 = ptrtoint %Tstruct.Spl_json_object_t_t* %27 to i32
  %29 = call i8* @c_fetch_pointer_from_offset(i32 %28)
  %30 = call i1 @c_isTaintedPointerToTaintedMem(i8* %29)
  br i1 %30, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded5
  %31 = bitcast i8* %29 to %Tstruct.Spl_json_object_t_t*
  %names8 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %31, i32 0, i32 1
  %names9 = bitcast i32* %names8 to i8***
  %32 = load i8**, i8*** %names9, align 4
  %33 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %34 = ptrtoint %Tstruct.Spl_json_object_t_t* %33 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded7
  %37 = bitcast i8* %35 to %Tstruct.Spl_json_object_t_t*
  %names12 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %37, i32 0, i32 1
  %names13 = bitcast i32* %names12 to i8***
  %38 = load i8**, i8*** %names13, align 4
  %39 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %40 = ptrtoint %Tstruct.Spl_json_object_t_t* %39 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded15, label %_Dynamic_check.failed14

_Dynamic_check.succeeded15:                       ; preds = %_Dynamic_check.succeeded11
  %43 = bitcast i8* %41 to %Tstruct.Spl_json_object_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %43, i32 0, i32 4
  %44 = load i32, i32* %capacity, align 8
  %idx.ext = zext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %38, i64 %idx.ext
  %45 = bitcast i8** %add.ptr to i8*
  %46 = call i32 @c_TPtoO(i8* %45)
  %47 = inttoptr i32 %46 to i8**
  %48 = bitcast i8** %32 to i8*
  %49 = call i32 @c_TPtoO(i8* %48)
  %50 = inttoptr i32 %49 to i8**
  %51 = bitcast i8** %50 to i8*
  %52 = call i32 @c_TPtoO(i8* %51)
  %53 = bitcast i8** %26 to i8*
  %54 = call i32 @c_TPtoO(i8* %53)
  %_Dynamic_check.lower = icmp ule i32 %52, %54
  %55 = bitcast i8** %26 to i8*
  %56 = call i32 @c_TPtoO(i8* %55)
  %57 = bitcast i8** %47 to i8*
  %58 = call i32 @c_TPtoO(i8* %57)
  %_Dynamic_check.upper = icmp ult i32 %56, %58
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded17, label %_Dynamic_check.failed16

_Dynamic_check.succeeded17:                       ; preds = %_Dynamic_check.succeeded15
  %59 = load i8*, i8** %23, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = call i8* @c_fetch_pointer_from_offset(i32 %60)
  %62 = call i1 @c_isTaintedPointerToTaintedMem(i8* %61)
  br i1 %62, label %_Dynamic_check.succeeded19, label %_Dynamic_check.failed18

_Dynamic_check.succeeded19:                       ; preds = %_Dynamic_check.succeeded17
  %call20 = call i64 @t_strlen(i8* %61)
  store i64 %call20, i64* %name_length, align 8
  %63 = load i64, i64* %name_length, align 8
  %64 = load i64, i64* %name_len.addr, align 8
  %cmp21 = icmp ne i64 %63, %64
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %_Dynamic_check.succeeded19
  br label %for.inc

_Dynamic_check.failed:                            ; preds = %for.cond
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %for.body
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed14:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed16:                          ; preds = %_Dynamic_check.succeeded15
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed18:                          ; preds = %_Dynamic_check.succeeded17
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded19
  %65 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %66 = ptrtoint %Tstruct.Spl_json_object_t_t* %65 to i32
  %67 = call i8* @c_fetch_pointer_from_offset(i32 %66)
  %68 = call i1 @c_isTaintedPointerToTaintedMem(i8* %67)
  br i1 %68, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %if.end
  %69 = bitcast i8* %67 to %Tstruct.Spl_json_object_t_t*
  %names24 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %69, i32 0, i32 1
  %names25 = bitcast i32* %names24 to i8***
  %70 = load i8**, i8*** %names25, align 4
  %71 = load i64, i64* %i, align 8
  %72 = ptrtoint i8** %70 to i32
  %73 = call i8* @c_fetch_pointer_from_offset(i32 %72)
  %74 = call i1 @c_isTaintedPointerToTaintedMem(i8* %73)
  br i1 %74, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded23
  %75 = bitcast i8* %73 to i8**
  %76 = bitcast i8** %75 to i32*
  %arrayidx28 = getelementptr inbounds i32, i32* %76, i64 %71
  %77 = bitcast i32* %arrayidx28 to i8**
  %78 = bitcast i8** %77 to i8*
  %79 = call i32 @c_TPtoO(i8* %78)
  %80 = inttoptr i32 %79 to i8**
  %81 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %82 = ptrtoint %Tstruct.Spl_json_object_t_t* %81 to i32
  %83 = call i8* @c_fetch_pointer_from_offset(i32 %82)
  %84 = call i1 @c_isTaintedPointerToTaintedMem(i8* %83)
  br i1 %84, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %_Dynamic_check.succeeded27
  %85 = bitcast i8* %83 to %Tstruct.Spl_json_object_t_t*
  %names31 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %85, i32 0, i32 1
  %names32 = bitcast i32* %names31 to i8***
  %86 = load i8**, i8*** %names32, align 4
  %87 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %88 = ptrtoint %Tstruct.Spl_json_object_t_t* %87 to i32
  %89 = call i8* @c_fetch_pointer_from_offset(i32 %88)
  %90 = call i1 @c_isTaintedPointerToTaintedMem(i8* %89)
  br i1 %90, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %_Dynamic_check.succeeded30
  %91 = bitcast i8* %89 to %Tstruct.Spl_json_object_t_t*
  %names35 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %91, i32 0, i32 1
  %names36 = bitcast i32* %names35 to i8***
  %92 = load i8**, i8*** %names36, align 4
  %93 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %94 = ptrtoint %Tstruct.Spl_json_object_t_t* %93 to i32
  %95 = call i8* @c_fetch_pointer_from_offset(i32 %94)
  %96 = call i1 @c_isTaintedPointerToTaintedMem(i8* %95)
  br i1 %96, label %_Dynamic_check.succeeded38, label %_Dynamic_check.failed37

_Dynamic_check.succeeded38:                       ; preds = %_Dynamic_check.succeeded34
  %97 = bitcast i8* %95 to %Tstruct.Spl_json_object_t_t*
  %capacity39 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %97, i32 0, i32 4
  %98 = load i32, i32* %capacity39, align 8
  %idx.ext40 = zext i32 %98 to i64
  %add.ptr41 = getelementptr inbounds i8*, i8** %92, i64 %idx.ext40
  %99 = bitcast i8** %add.ptr41 to i8*
  %100 = call i32 @c_TPtoO(i8* %99)
  %101 = inttoptr i32 %100 to i8**
  %102 = bitcast i8** %86 to i8*
  %103 = call i32 @c_TPtoO(i8* %102)
  %104 = inttoptr i32 %103 to i8**
  %105 = bitcast i8** %104 to i8*
  %106 = call i32 @c_TPtoO(i8* %105)
  %107 = bitcast i8** %80 to i8*
  %108 = call i32 @c_TPtoO(i8* %107)
  %_Dynamic_check.lower42 = icmp ule i32 %106, %108
  %109 = bitcast i8** %80 to i8*
  %110 = call i32 @c_TPtoO(i8* %109)
  %111 = bitcast i8** %101 to i8*
  %112 = call i32 @c_TPtoO(i8* %111)
  %_Dynamic_check.upper43 = icmp ult i32 %110, %112
  %_Dynamic_check.range44 = and i1 %_Dynamic_check.lower42, %_Dynamic_check.upper43
  br i1 %_Dynamic_check.range44, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded38
  %113 = load i8*, i8** %77, align 8
  %114 = load i8*, i8** %name.addr, align 4
  %115 = load i64, i64* %name_len.addr, align 8
  %116 = ptrtoint i8* %113 to i64
  %117 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %116)
  %118 = ptrtoint i8* %114 to i64
  %119 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %118)
  %call47 = call i32 @t_strncmp(i8* %117, i8* %119, i64 %115)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.end74

if.then49:                                        ; preds = %_Dynamic_check.succeeded46
  %120 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %121 = ptrtoint %Tstruct.Spl_json_object_t_t* %120 to i32
  %122 = call i8* @c_fetch_pointer_from_offset(i32 %121)
  %123 = call i1 @c_isTaintedPointerToTaintedMem(i8* %122)
  br i1 %123, label %_Dynamic_check.succeeded51, label %_Dynamic_check.failed50

_Dynamic_check.succeeded51:                       ; preds = %if.then49
  %124 = bitcast i8* %122 to %Tstruct.Spl_json_object_t_t*
  %values = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %124, i32 0, i32 2
  %values52 = bitcast i32* %values to %Tstruct.Spl_json_value_t_t***
  %125 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values52, align 4
  %126 = load i64, i64* %i, align 8
  %127 = ptrtoint %Tstruct.Spl_json_value_t_t** %125 to i32
  %128 = call i8* @c_fetch_pointer_from_offset(i32 %127)
  %129 = call i1 @c_isTaintedPointerToTaintedMem(i8* %128)
  br i1 %129, label %_Dynamic_check.succeeded54, label %_Dynamic_check.failed53

_Dynamic_check.succeeded54:                       ; preds = %_Dynamic_check.succeeded51
  %130 = bitcast i8* %128 to %Tstruct.Spl_json_value_t_t**
  %131 = bitcast %Tstruct.Spl_json_value_t_t** %130 to i32*
  %arrayidx55 = getelementptr inbounds i32, i32* %131, i64 %126
  %132 = bitcast i32* %arrayidx55 to %Tstruct.Spl_json_value_t_t**
  %133 = bitcast %Tstruct.Spl_json_value_t_t** %132 to i8*
  %134 = call i32 @c_TPtoO(i8* %133)
  %135 = inttoptr i32 %134 to %Tstruct.Spl_json_value_t_t**
  %136 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %137 = ptrtoint %Tstruct.Spl_json_object_t_t* %136 to i32
  %138 = call i8* @c_fetch_pointer_from_offset(i32 %137)
  %139 = call i1 @c_isTaintedPointerToTaintedMem(i8* %138)
  br i1 %139, label %_Dynamic_check.succeeded57, label %_Dynamic_check.failed56

_Dynamic_check.succeeded57:                       ; preds = %_Dynamic_check.succeeded54
  %140 = bitcast i8* %138 to %Tstruct.Spl_json_object_t_t*
  %values58 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %140, i32 0, i32 2
  %values59 = bitcast i32* %values58 to %Tstruct.Spl_json_value_t_t***
  %141 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values59, align 4
  %142 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %143 = ptrtoint %Tstruct.Spl_json_object_t_t* %142 to i32
  %144 = call i8* @c_fetch_pointer_from_offset(i32 %143)
  %145 = call i1 @c_isTaintedPointerToTaintedMem(i8* %144)
  br i1 %145, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded57
  %146 = bitcast i8* %144 to %Tstruct.Spl_json_object_t_t*
  %values62 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %146, i32 0, i32 2
  %values63 = bitcast i32* %values62 to %Tstruct.Spl_json_value_t_t***
  %147 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %values63, align 4
  %148 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %149 = ptrtoint %Tstruct.Spl_json_object_t_t* %148 to i32
  %150 = call i8* @c_fetch_pointer_from_offset(i32 %149)
  %151 = call i1 @c_isTaintedPointerToTaintedMem(i8* %150)
  br i1 %151, label %_Dynamic_check.succeeded65, label %_Dynamic_check.failed64

_Dynamic_check.succeeded65:                       ; preds = %_Dynamic_check.succeeded61
  %152 = bitcast i8* %150 to %Tstruct.Spl_json_object_t_t*
  %capacity66 = getelementptr inbounds %Tstruct.Spl_json_object_t_t, %Tstruct.Spl_json_object_t_t* %152, i32 0, i32 4
  %153 = load i32, i32* %capacity66, align 8
  %idx.ext67 = zext i32 %153 to i64
  %add.ptr68 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %147, i64 %idx.ext67
  %154 = bitcast %Tstruct.Spl_json_value_t_t** %147 to i32*
  %155 = getelementptr inbounds i32, i32* %154, i64 %idx.ext67
  %156 = bitcast i32* %155 to %Tstruct.Spl_json_value_t_t**
  %157 = bitcast %Tstruct.Spl_json_value_t_t** %156 to i8*
  %158 = call i32 @c_TPtoO(i8* %157)
  %159 = inttoptr i32 %158 to %Tstruct.Spl_json_value_t_t**
  %160 = bitcast %Tstruct.Spl_json_value_t_t** %141 to i8*
  %161 = call i32 @c_TPtoO(i8* %160)
  %162 = inttoptr i32 %161 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower69 = icmp ule %Tstruct.Spl_json_value_t_t** %162, %135
  %_Dynamic_check.upper70 = icmp ult %Tstruct.Spl_json_value_t_t** %135, %159
  %_Dynamic_check.range71 = and i1 %_Dynamic_check.lower69, %_Dynamic_check.upper70
  br i1 %_Dynamic_check.range71, label %_Dynamic_check.succeeded73, label %_Dynamic_check.failed72

_Dynamic_check.succeeded73:                       ; preds = %_Dynamic_check.succeeded65
  %163 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %132, align 4
  store %Tstruct.Spl_json_value_t_t* %163, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed22:                          ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed29:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed33:                          ; preds = %_Dynamic_check.succeeded30
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed37:                          ; preds = %_Dynamic_check.succeeded34
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed45:                          ; preds = %_Dynamic_check.succeeded38
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed50:                          ; preds = %if.then49
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed53:                          ; preds = %_Dynamic_check.succeeded51
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed56:                          ; preds = %_Dynamic_check.succeeded54
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded57
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed64:                          ; preds = %_Dynamic_check.succeeded61
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed72:                          ; preds = %_Dynamic_check.succeeded65
  call void @llvm.trap() #9
  unreachable

if.end74:                                         ; preds = %_Dynamic_check.succeeded46
  br label %for.inc

for.inc:                                          ; preds = %if.end74, %if.then
  %164 = load i64, i64* %i, align 8
  %inc = add i64 %164, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %_Dynamic_check.succeeded
  store %Tstruct.Spl_json_value_t_t* null, %Tstruct.Spl_json_value_t_t** %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %_Dynamic_check.succeeded73
  %165 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %retval, align 4
  ret %Tstruct.Spl_json_value_t_t* %165
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @json_array_free(%Tstruct.json_array_t_t* %array) #2 {
entry:
  %array.addr = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %i = alloca i64, align 8
  %0 = bitcast %Tstruct.json_array_t_t* %array to %Tstruct.Spl_json_array_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %i, align 8
  %4 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %5 = ptrtoint %Tstruct.Spl_json_array_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %for.cond
  %8 = bitcast i8* %6 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %8, i32 0, i32 2
  %9 = load i32, i32* %count, align 8
  %conv = zext i32 %9 to i64
  %cmp = icmp ult i64 %3, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded
  %10 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %11 = ptrtoint %Tstruct.Spl_json_array_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded3, label %_Dynamic_check.failed2

_Dynamic_check.succeeded3:                        ; preds = %for.body
  %14 = bitcast i8* %12 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %14, i32 0, i32 1
  %items4 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %15 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items4, align 4
  %16 = load i64, i64* %i, align 8
  %17 = ptrtoint %Tstruct.Spl_json_value_t_t** %15 to i32
  %18 = call i8* @c_fetch_pointer_from_offset(i32 %17)
  %19 = call i1 @c_isTaintedPointerToTaintedMem(i8* %18)
  br i1 %19, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded3
  %20 = bitcast i8* %18 to %Tstruct.Spl_json_value_t_t**
  %21 = bitcast %Tstruct.Spl_json_value_t_t** %20 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %21, i64 %16
  %22 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %23 = bitcast %Tstruct.Spl_json_value_t_t** %22 to i8*
  %24 = call i32 @c_TPtoO(i8* %23)
  %25 = inttoptr i32 %24 to %Tstruct.Spl_json_value_t_t**
  %26 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %27 = ptrtoint %Tstruct.Spl_json_array_t_t* %26 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded6
  %30 = bitcast i8* %28 to %Tstruct.Spl_json_array_t_t*
  %items9 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %30, i32 0, i32 1
  %items10 = bitcast i32* %items9 to %Tstruct.Spl_json_value_t_t***
  %31 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items10, align 4
  %32 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %33 = ptrtoint %Tstruct.Spl_json_array_t_t* %32 to i32
  %34 = call i8* @c_fetch_pointer_from_offset(i32 %33)
  %35 = call i1 @c_isTaintedPointerToTaintedMem(i8* %34)
  br i1 %35, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %_Dynamic_check.succeeded8
  %36 = bitcast i8* %34 to %Tstruct.Spl_json_array_t_t*
  %items13 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %36, i32 0, i32 1
  %items14 = bitcast i32* %items13 to %Tstruct.Spl_json_value_t_t***
  %37 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items14, align 4
  %38 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %39 = ptrtoint %Tstruct.Spl_json_array_t_t* %38 to i32
  %40 = call i8* @c_fetch_pointer_from_offset(i32 %39)
  %41 = call i1 @c_isTaintedPointerToTaintedMem(i8* %40)
  br i1 %41, label %_Dynamic_check.succeeded16, label %_Dynamic_check.failed15

_Dynamic_check.succeeded16:                       ; preds = %_Dynamic_check.succeeded12
  %42 = bitcast i8* %40 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %42, i32 0, i32 3
  %43 = load i32, i32* %capacity, align 4
  %idx.ext = zext i32 %43 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %37, i64 %idx.ext
  %44 = bitcast %Tstruct.Spl_json_value_t_t** %37 to i32*
  %45 = getelementptr inbounds i32, i32* %44, i64 %idx.ext
  %46 = bitcast i32* %45 to %Tstruct.Spl_json_value_t_t**
  %47 = bitcast %Tstruct.Spl_json_value_t_t** %46 to i8*
  %48 = call i32 @c_TPtoO(i8* %47)
  %49 = inttoptr i32 %48 to %Tstruct.Spl_json_value_t_t**
  %50 = bitcast %Tstruct.Spl_json_value_t_t** %31 to i8*
  %51 = call i32 @c_TPtoO(i8* %50)
  %52 = inttoptr i32 %51 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %52, %25
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %25, %49
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %_Dynamic_check.succeeded16
  %53 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %22, align 4
  %54 = ptrtoint %Tstruct.Spl_json_value_t_t* %53 to i32
  %55 = call i8* @c_fetch_pointer_from_offset(i32 %54)
  %56 = call i1 @c_isTaintedPointerToTaintedMem(i8* %55)
  br i1 %56, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.succeeded18
  %57 = bitcast i8* %55 to %Tstruct.Spl_json_value_t_t*
  call void bitcast (void (%Tstruct.Spl_json_value_t_t*)* @json_value_free to void (%Tstruct.Spl_json_value_t_t*)*)(%Tstruct.Spl_json_value_t_t* %57)
  br label %for.inc

for.inc:                                          ; preds = %_Dynamic_check.succeeded20
  %58 = load i64, i64* %i, align 8
  %inc = add i64 %58, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !29

_Dynamic_check.failed:                            ; preds = %for.cond
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed2:                           ; preds = %for.body
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded3
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded6
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed11:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed15:                          ; preds = %_Dynamic_check.succeeded12
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed17:                          ; preds = %_Dynamic_check.succeeded16
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #9
  unreachable

for.end:                                          ; preds = %_Dynamic_check.succeeded
  %59 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %60 = ptrtoint %Tstruct.Spl_json_array_t_t* %59 to i32
  %61 = call i8* @c_fetch_pointer_from_offset(i32 %60)
  %62 = call i1 @c_isTaintedPointerToTaintedMem(i8* %61)
  br i1 %62, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %for.end
  %63 = bitcast i8* %61 to %Tstruct.Spl_json_array_t_t*
  %items23 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %63, i32 0, i32 1
  %items24 = bitcast i32* %items23 to %Tstruct.Spl_json_value_t_t***
  %64 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items24, align 4
  %_Dynamic_check.is_null = icmp eq %Tstruct.Spl_json_value_t_t** %64, null
  br i1 %_Dynamic_check.is_null, label %_Dynamic_check.success, label %_Dynamic_check.subsumption

_Dynamic_check.subsumption:                       ; preds = %_Dynamic_check.succeeded22
  %65 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %66 = ptrtoint %Tstruct.Spl_json_array_t_t* %65 to i32
  %67 = call i8* @c_fetch_pointer_from_offset(i32 %66)
  %68 = call i1 @c_isTaintedPointerToTaintedMem(i8* %67)
  br i1 %68, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.subsumption
  %69 = bitcast i8* %67 to %Tstruct.Spl_json_array_t_t*
  %items27 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %69, i32 0, i32 1
  %items28 = bitcast i32* %items27 to %Tstruct.Spl_json_value_t_t***
  %70 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items28, align 4
  %71 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %72 = ptrtoint %Tstruct.Spl_json_array_t_t* %71 to i32
  %73 = call i8* @c_fetch_pointer_from_offset(i32 %72)
  %74 = call i1 @c_isTaintedPointerToTaintedMem(i8* %73)
  br i1 %74, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %_Dynamic_check.succeeded26
  %75 = bitcast i8* %73 to %Tstruct.Spl_json_array_t_t*
  %items31 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %75, i32 0, i32 1
  %items32 = bitcast i32* %items31 to %Tstruct.Spl_json_value_t_t***
  %76 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items32, align 4
  %77 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %78 = ptrtoint %Tstruct.Spl_json_array_t_t* %77 to i32
  %79 = call i8* @c_fetch_pointer_from_offset(i32 %78)
  %80 = call i1 @c_isTaintedPointerToTaintedMem(i8* %79)
  br i1 %80, label %_Dynamic_check.succeeded34, label %_Dynamic_check.failed33

_Dynamic_check.succeeded34:                       ; preds = %_Dynamic_check.succeeded30
  %81 = bitcast i8* %79 to %Tstruct.Spl_json_array_t_t*
  %capacity35 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %81, i32 0, i32 3
  %82 = load i32, i32* %capacity35, align 4
  %idx.ext36 = zext i32 %82 to i64
  %add.ptr37 = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %76, i64 %idx.ext36
  %83 = bitcast %Tstruct.Spl_json_value_t_t** %64 to i8*
  %84 = bitcast i8* %83 to %Tstruct.Spl_json_value_t_t**
  %85 = bitcast %Tstruct.Spl_json_value_t_t** %64 to i8*
  %86 = call i32 @c_TPtoO(i8* %85)
  %87 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null = icmp ne i32 %86, %87
  br i1 %_Dynamic_check.non_null, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %_Dynamic_check.succeeded34
  %add.ptr40 = getelementptr inbounds i8, i8* %85, i64 0
  %88 = bitcast i8* %add.ptr40 to %Tstruct.Spl_json_value_t_t**
  %89 = bitcast %Tstruct.Spl_json_value_t_t** %70 to i8*
  %90 = call i32 @c_TPtoO(i8* %89)
  %91 = inttoptr i32 %90 to %Tstruct.Spl_json_value_t_t**
  %92 = bitcast %Tstruct.Spl_json_value_t_t** %84 to i8*
  %93 = call i32 @c_TPtoO(i8* %92)
  %94 = inttoptr i32 %93 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower41 = icmp ule %Tstruct.Spl_json_value_t_t** %91, %94
  %95 = bitcast %Tstruct.Spl_json_value_t_t** %88 to i8*
  %96 = call i32 @c_TPtoO(i8* %95)
  %97 = inttoptr i32 %96 to %Tstruct.Spl_json_value_t_t**
  %98 = bitcast %Tstruct.Spl_json_value_t_t** %add.ptr37 to i8*
  %99 = call i32 @c_TPtoO(i8* %98)
  %100 = inttoptr i32 %99 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.upper42 = icmp ule %Tstruct.Spl_json_value_t_t** %97, %100
  %_Dynamic_check.cast = and i1 %_Dynamic_check.lower41, %_Dynamic_check.upper42
  br i1 %_Dynamic_check.cast, label %_Dynamic_check.success, label %_Dynamic_check.failed43

_Dynamic_check.success:                           ; preds = %_Dynamic_check.succeeded39, %_Dynamic_check.succeeded22
  %101 = ptrtoint %Tstruct.Spl_json_value_t_t** %64 to i32
  %102 = call i8* @c_fetch_pointer_from_offset(i32 %101)
  %103 = call i1 @c_isTaintedPointerToTaintedMem(i8* %102)
  br i1 %103, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %_Dynamic_check.success
  %104 = bitcast i8* %102 to %Tstruct.Spl_json_value_t_t**
  %105 = bitcast %Tstruct.Spl_json_value_t_t** %104 to i8*
  call void @t_free(i8* %105)
  %106 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %107 = bitcast %Tstruct.Spl_json_array_t_t* %106 to i8*
  %108 = call i32 @c_TPtoO(i8* %107)
  %109 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.is_null46 = icmp eq i32 %108, %109
  br i1 %_Dynamic_check.is_null46, label %_Dynamic_check.success57, label %_Dynamic_check.subsumption47

_Dynamic_check.subsumption47:                     ; preds = %_Dynamic_check.succeeded45
  %110 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %111 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %add.ptr48 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %111, i64 1
  %112 = bitcast %Tstruct.Spl_json_array_t_t* %106 to i8*
  %113 = bitcast i8* %112 to %Tstruct.Spl_json_array_t_t*
  %114 = bitcast %Tstruct.Spl_json_array_t_t* %106 to i8*
  %115 = call i32 @c_TPtoO(i8* %114)
  %116 = call i32 @c_TPtoO(i8* null)
  %_Dynamic_check.non_null49 = icmp ne i32 %115, %116
  br i1 %_Dynamic_check.non_null49, label %_Dynamic_check.succeeded51, label %_Dynamic_check.failed50

_Dynamic_check.succeeded51:                       ; preds = %_Dynamic_check.subsumption47
  %add.ptr52 = getelementptr inbounds i8, i8* %114, i64 0
  %117 = bitcast i8* %add.ptr52 to %Tstruct.Spl_json_array_t_t*
  %118 = bitcast %Tstruct.Spl_json_array_t_t* %110 to i8*
  %119 = call i32 @c_TPtoO(i8* %118)
  %120 = inttoptr i32 %119 to %Tstruct.Spl_json_array_t_t*
  %121 = bitcast %Tstruct.Spl_json_array_t_t* %113 to i8*
  %122 = call i32 @c_TPtoO(i8* %121)
  %123 = inttoptr i32 %122 to %Tstruct.Spl_json_array_t_t*
  %124 = bitcast %Tstruct.Spl_json_array_t_t* %120 to i8*
  %125 = call i32 @c_TPtoO(i8* %124)
  %126 = bitcast %Tstruct.Spl_json_array_t_t* %123 to i8*
  %127 = call i32 @c_TPtoO(i8* %126)
  %_Dynamic_check.lower53 = icmp ule i32 %125, %127
  %128 = bitcast %Tstruct.Spl_json_array_t_t* %117 to i8*
  %129 = call i32 @c_TPtoO(i8* %128)
  %130 = inttoptr i32 %129 to %Tstruct.Spl_json_array_t_t*
  %131 = bitcast %Tstruct.Spl_json_array_t_t* %add.ptr48 to i8*
  %132 = call i32 @c_TPtoO(i8* %131)
  %133 = inttoptr i32 %132 to %Tstruct.Spl_json_array_t_t*
  %134 = bitcast %Tstruct.Spl_json_array_t_t* %130 to i8*
  %135 = call i32 @c_TPtoO(i8* %134)
  %136 = bitcast %Tstruct.Spl_json_array_t_t* %133 to i8*
  %137 = call i32 @c_TPtoO(i8* %136)
  %_Dynamic_check.upper54 = icmp ule i32 %135, %137
  %_Dynamic_check.cast55 = and i1 %_Dynamic_check.lower53, %_Dynamic_check.upper54
  br i1 %_Dynamic_check.cast55, label %_Dynamic_check.success57, label %_Dynamic_check.failed56

_Dynamic_check.success57:                         ; preds = %_Dynamic_check.succeeded51, %_Dynamic_check.succeeded45
  %138 = ptrtoint %Tstruct.Spl_json_array_t_t* %106 to i32
  %139 = call i8* @c_fetch_pointer_from_offset(i32 %138)
  %140 = call i1 @c_isTaintedPointerToTaintedMem(i8* %139)
  br i1 %140, label %_Dynamic_check.succeeded59, label %_Dynamic_check.failed58

_Dynamic_check.succeeded59:                       ; preds = %_Dynamic_check.success57
  %141 = bitcast i8* %139 to %Tstruct.Spl_json_array_t_t*
  %142 = bitcast %Tstruct.Spl_json_array_t_t* %141 to i8*
  call void @t_free(i8* %142)
  ret void

_Dynamic_check.failed21:                          ; preds = %for.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.subsumption
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed29:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed33:                          ; preds = %_Dynamic_check.succeeded30
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed38:                          ; preds = %_Dynamic_check.succeeded34
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded39
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed44:                          ; preds = %_Dynamic_check.success
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed50:                          ; preds = %_Dynamic_check.subsumption47
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed56:                          ; preds = %_Dynamic_check.succeeded51
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed58:                          ; preds = %_Dynamic_check.success57
  call void @llvm.trap() #9
  unreachable
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define internal %Tstruct.json_array_t_t* @json_array_init(%Tstruct.json_value_t_t* %wrapping_value) #0 {
entry:
  %retval = alloca %Tstruct.Spl_json_array_t_t*, align 8
  %wrapping_value.addr = alloca %Tstruct.Spl_json_value_t_t*, align 4
  %new_array = alloca %Tstruct.Spl_json_array_t_t*, align 4
  %0 = bitcast %Tstruct.json_value_t_t* %wrapping_value to %Tstruct.Spl_json_value_t_t*
  %1 = ptrtoint %Tstruct.Spl_json_value_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_value_t_t** %wrapping_value.addr to i32*
  store i32 %1, i32* %2, align 4
  %call = call i8* @t_malloc(i64 24)
  %3 = bitcast i8* %call to %Tstruct.json_array_t_t*
  %4 = bitcast %Tstruct.json_array_t_t* %3 to i8*
  %5 = call i32 @c_TPtoO(i8* %4)
  %6 = inttoptr i32 %5 to %Tstruct.json_array_t_t*
  %7 = bitcast %Tstruct.json_array_t_t* %6 to %Tstruct.Spl_json_array_t_t*
  %8 = ptrtoint %Tstruct.Spl_json_array_t_t* %7 to i32
  %9 = bitcast %Tstruct.Spl_json_array_t_t** %new_array to i32*
  store i32 %8, i32* %9, align 4
  %10 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %new_array, align 4
  %11 = ptrtoint %Tstruct.Spl_json_array_t_t* %10 to i32
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %Tstruct.Spl_json_array_t_t* null, %Tstruct.Spl_json_array_t_t** %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %12 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %wrapping_value.addr, align 4
  %13 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %new_array, align 4
  %14 = ptrtoint %Tstruct.Spl_json_array_t_t* %13 to i32
  %15 = call i8* @c_fetch_pointer_from_offset(i32 %14)
  %16 = call i1 @c_isTaintedPointerToTaintedMem(i8* %15)
  br i1 %16, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %17 = bitcast i8* %15 to %Tstruct.Spl_json_array_t_t*
  %wrapping_value1 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %17, i32 0, i32 0
  %wrapping_value2 = bitcast i32* %wrapping_value1 to %Tstruct.Spl_json_value_t_t**
  %18 = ptrtoint %Tstruct.Spl_json_value_t_t* %12 to i32
  %19 = bitcast %Tstruct.Spl_json_value_t_t** %wrapping_value2 to i32*
  store i32 %18, i32* %19, align 4
  %20 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %new_array, align 4
  %21 = ptrtoint %Tstruct.Spl_json_array_t_t* %20 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded
  %24 = bitcast i8* %22 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %24, i32 0, i32 1
  %items5 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %25 = bitcast %Tstruct.Spl_json_value_t_t*** %items5 to i32*
  store i32 0, i32* %25, align 4
  %26 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %new_array, align 4
  %27 = ptrtoint %Tstruct.Spl_json_array_t_t* %26 to i32
  %28 = call i8* @c_fetch_pointer_from_offset(i32 %27)
  %29 = call i1 @c_isTaintedPointerToTaintedMem(i8* %28)
  br i1 %29, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded4
  %30 = bitcast i8* %28 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %30, i32 0, i32 3
  store i32 0, i32* %capacity, align 4
  %31 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %new_array, align 4
  %32 = ptrtoint %Tstruct.Spl_json_array_t_t* %31 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded9, label %_Dynamic_check.failed8

_Dynamic_check.succeeded9:                        ; preds = %_Dynamic_check.succeeded7
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %35, i32 0, i32 2
  store i32 0, i32* %count, align 8
  %36 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %new_array, align 4
  store %Tstruct.Spl_json_array_t_t* %36, %Tstruct.Spl_json_array_t_t** %retval, align 8
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed8:                           ; preds = %_Dynamic_check.succeeded7
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded9, %if.then
  %37 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %retval, align 4
  ret %Tstruct.Spl_json_array_t_t* %37
}

; Function Attrs: noinline nounwind optnone tainted uwtable
define internal %Tstruct.json_value_t_t* @json_value_init_string_no_copy(i8* %string) #0 {
entry:
  %string.addr = alloca i8*, align 4
  %0 = ptrtoint i8* %string to i32
  %1 = bitcast i8** %string.addr to i32*
  store i32 %0, i32* %1, align 4
  %call = call i8* (...) @c_fetch_sandbox_address()
  %2 = load i8*, i8** %string.addr, align 4
  %3 = ptrtoint i8* %2 to i32
  %4 = ptrtoint i8* %call to i64
  %5 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %4)
  %call1 = call i32 @w2c_json_value_init_string_no_copy(i8* %5, i32 %3)
  %conv = zext i32 %call1 to i64
  %6 = inttoptr i64 %conv to %Tstruct.Spl_json_value_t_t*
  ret %Tstruct.Spl_json_value_t_t* %6
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
  %1 = ptrtoint %Tstruct.Spl_json_array_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_array_t_t** %array.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %4 = ptrtoint %Tstruct.Spl_json_value_t_t* %3 to i32
  %5 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %4, i32* %5, align 4
  %6 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %7 = ptrtoint %Tstruct.Spl_json_array_t_t* %6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %10 = bitcast i8* %8 to %Tstruct.Spl_json_array_t_t*
  %count = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %10, i32 0, i32 2
  %11 = load i32, i32* %count, align 8
  %12 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %13 = ptrtoint %Tstruct.Spl_json_array_t_t* %12 to i32
  %14 = call i8* @c_fetch_pointer_from_offset(i32 %13)
  %15 = call i1 @c_isTaintedPointerToTaintedMem(i8* %14)
  br i1 %15, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %16 = bitcast i8* %14 to %Tstruct.Spl_json_array_t_t*
  %capacity = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %16, i32 0, i32 3
  %17 = load i32, i32* %capacity, align 4
  %cmp = icmp uge i32 %11, %17
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %_Dynamic_check.succeeded2
  %18 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %19 = ptrtoint %Tstruct.Spl_json_array_t_t* %18 to i32
  %20 = call i8* @c_fetch_pointer_from_offset(i32 %19)
  %21 = call i1 @c_isTaintedPointerToTaintedMem(i8* %20)
  br i1 %21, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %if.then
  %22 = bitcast i8* %20 to %Tstruct.Spl_json_array_t_t*
  %capacity5 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %22, i32 0, i32 3
  %23 = load i32, i32* %capacity5, align 4
  %mul = mul i32 %23, 2
  %cmp6 = icmp ugt i32 %mul, 16
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %_Dynamic_check.succeeded4
  %24 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %25 = ptrtoint %Tstruct.Spl_json_array_t_t* %24 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %cond.true
  %28 = bitcast i8* %26 to %Tstruct.Spl_json_array_t_t*
  %capacity9 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %28, i32 0, i32 3
  %29 = load i32, i32* %capacity9, align 4
  %mul10 = mul i32 %29, 2
  br label %cond.end

cond.false:                                       ; preds = %_Dynamic_check.succeeded4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %_Dynamic_check.succeeded8
  %cond = phi i32 [ %mul10, %_Dynamic_check.succeeded8 ], [ 16, %cond.false ]
  %conv = zext i32 %cond to i64
  store i64 %conv, i64* %new_capacity, align 8
  %30 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %31 = load i64, i64* %new_capacity, align 8
  %32 = ptrtoint %Tstruct.Spl_json_array_t_t* %30 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded12, label %_Dynamic_check.failed11

_Dynamic_check.succeeded12:                       ; preds = %cond.end
  %35 = bitcast i8* %33 to %Tstruct.Spl_json_array_t_t*
  %call = call i32 bitcast (i32 (%Tstruct.Spl_json_array_t_t*, i64)* @json_array_resize to i32 (%Tstruct.Spl_json_array_t_t*, i64)*)(%Tstruct.Spl_json_array_t_t* %35, i64 %31)
  %cmp13 = icmp eq i32 %call, -1
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %_Dynamic_check.succeeded12
  store i32 -1, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %if.then
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed7:                           ; preds = %cond.true
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed11:                          ; preds = %cond.end
  call void @llvm.trap() #9
  unreachable

if.end:                                           ; preds = %_Dynamic_check.succeeded12
  br label %if.end16

if.end16:                                         ; preds = %if.end, %_Dynamic_check.succeeded2
  %36 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %37 = ptrtoint %Tstruct.Spl_json_array_t_t* %36 to i32
  %38 = call i8* @c_fetch_pointer_from_offset(i32 %37)
  %39 = call i1 @c_isTaintedPointerToTaintedMem(i8* %38)
  br i1 %39, label %_Dynamic_check.succeeded18, label %_Dynamic_check.failed17

_Dynamic_check.succeeded18:                       ; preds = %if.end16
  %40 = bitcast i8* %38 to %Tstruct.Spl_json_array_t_t*
  %call19 = call %Tstruct.Spl_json_value_t_t* @json_array_get_wrapping_value(%Tstruct.Spl_json_array_t_t* %40)
  %41 = bitcast %Tstruct.Spl_json_value_t_t* %call19 to %Tstruct.json_value_t_t*
  %42 = bitcast %Tstruct.json_value_t_t* %41 to i8*
  %43 = call i32 @c_TPtoO(i8* %42)
  %44 = inttoptr i32 %43 to %Tstruct.json_value_t_t*
  %45 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %46 = ptrtoint %Tstruct.Spl_json_value_t_t* %45 to i32
  %47 = call i8* @c_fetch_pointer_from_offset(i32 %46)
  %48 = call i1 @c_isTaintedPointerToTaintedMem(i8* %47)
  br i1 %48, label %_Dynamic_check.succeeded21, label %_Dynamic_check.failed20

_Dynamic_check.succeeded21:                       ; preds = %_Dynamic_check.succeeded18
  %49 = bitcast i8* %47 to %Tstruct.Spl_json_value_t_t*
  %parent = getelementptr inbounds %Tstruct.Spl_json_value_t_t, %Tstruct.Spl_json_value_t_t* %49, i32 0, i32 0
  %parent22 = bitcast i32* %parent to %Tstruct.Spl_json_value_t_t**
  %50 = bitcast %Tstruct.json_value_t_t* %44 to %Tstruct.Spl_json_value_t_t*
  %51 = ptrtoint %Tstruct.Spl_json_value_t_t* %50 to i32
  %52 = bitcast %Tstruct.Spl_json_value_t_t** %parent22 to i32*
  store i32 %51, i32* %52, align 4
  %53 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %54 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %55 = ptrtoint %Tstruct.Spl_json_array_t_t* %54 to i32
  %56 = call i8* @c_fetch_pointer_from_offset(i32 %55)
  %57 = call i1 @c_isTaintedPointerToTaintedMem(i8* %56)
  br i1 %57, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %_Dynamic_check.succeeded21
  %58 = bitcast i8* %56 to %Tstruct.Spl_json_array_t_t*
  %items = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %58, i32 0, i32 1
  %items25 = bitcast i32* %items to %Tstruct.Spl_json_value_t_t***
  %59 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items25, align 4
  %60 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %61 = ptrtoint %Tstruct.Spl_json_array_t_t* %60 to i32
  %62 = call i8* @c_fetch_pointer_from_offset(i32 %61)
  %63 = call i1 @c_isTaintedPointerToTaintedMem(i8* %62)
  br i1 %63, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded24
  %64 = bitcast i8* %62 to %Tstruct.Spl_json_array_t_t*
  %count28 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %64, i32 0, i32 2
  %65 = load i32, i32* %count28, align 8
  %idxprom = zext i32 %65 to i64
  %66 = ptrtoint %Tstruct.Spl_json_value_t_t** %59 to i32
  %67 = call i8* @c_fetch_pointer_from_offset(i32 %66)
  %68 = call i1 @c_isTaintedPointerToTaintedMem(i8* %67)
  br i1 %68, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %_Dynamic_check.succeeded27
  %69 = bitcast i8* %67 to %Tstruct.Spl_json_value_t_t**
  %70 = bitcast %Tstruct.Spl_json_value_t_t** %69 to i32*
  %arrayidx = getelementptr inbounds i32, i32* %70, i64 %idxprom
  %71 = bitcast i32* %arrayidx to %Tstruct.Spl_json_value_t_t**
  %72 = bitcast %Tstruct.Spl_json_value_t_t** %71 to i8*
  %73 = call i32 @c_TPtoO(i8* %72)
  %74 = inttoptr i32 %73 to %Tstruct.Spl_json_value_t_t**
  %75 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %76 = ptrtoint %Tstruct.Spl_json_array_t_t* %75 to i32
  %77 = call i8* @c_fetch_pointer_from_offset(i32 %76)
  %78 = call i1 @c_isTaintedPointerToTaintedMem(i8* %77)
  br i1 %78, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.succeeded30
  %79 = bitcast i8* %77 to %Tstruct.Spl_json_array_t_t*
  %items33 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %79, i32 0, i32 1
  %items34 = bitcast i32* %items33 to %Tstruct.Spl_json_value_t_t***
  %80 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items34, align 4
  %81 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %82 = ptrtoint %Tstruct.Spl_json_array_t_t* %81 to i32
  %83 = call i8* @c_fetch_pointer_from_offset(i32 %82)
  %84 = call i1 @c_isTaintedPointerToTaintedMem(i8* %83)
  br i1 %84, label %_Dynamic_check.succeeded36, label %_Dynamic_check.failed35

_Dynamic_check.succeeded36:                       ; preds = %_Dynamic_check.succeeded32
  %85 = bitcast i8* %83 to %Tstruct.Spl_json_array_t_t*
  %items37 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %85, i32 0, i32 1
  %items38 = bitcast i32* %items37 to %Tstruct.Spl_json_value_t_t***
  %86 = load %Tstruct.Spl_json_value_t_t**, %Tstruct.Spl_json_value_t_t*** %items38, align 4
  %87 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %88 = ptrtoint %Tstruct.Spl_json_array_t_t* %87 to i32
  %89 = call i8* @c_fetch_pointer_from_offset(i32 %88)
  %90 = call i1 @c_isTaintedPointerToTaintedMem(i8* %89)
  br i1 %90, label %_Dynamic_check.succeeded40, label %_Dynamic_check.failed39

_Dynamic_check.succeeded40:                       ; preds = %_Dynamic_check.succeeded36
  %91 = bitcast i8* %89 to %Tstruct.Spl_json_array_t_t*
  %capacity41 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %91, i32 0, i32 3
  %92 = load i32, i32* %capacity41, align 4
  %idx.ext = zext i32 %92 to i64
  %add.ptr = getelementptr inbounds %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %86, i64 %idx.ext
  %93 = bitcast %Tstruct.Spl_json_value_t_t** %86 to i32*
  %94 = getelementptr inbounds i32, i32* %93, i64 %idx.ext
  %95 = bitcast i32* %94 to %Tstruct.Spl_json_value_t_t**
  %96 = bitcast %Tstruct.Spl_json_value_t_t** %95 to i8*
  %97 = call i32 @c_TPtoO(i8* %96)
  %98 = inttoptr i32 %97 to %Tstruct.Spl_json_value_t_t**
  %99 = bitcast %Tstruct.Spl_json_value_t_t** %80 to i8*
  %100 = call i32 @c_TPtoO(i8* %99)
  %101 = inttoptr i32 %100 to %Tstruct.Spl_json_value_t_t**
  %_Dynamic_check.lower = icmp ule %Tstruct.Spl_json_value_t_t** %101, %74
  %_Dynamic_check.upper = icmp ult %Tstruct.Spl_json_value_t_t** %74, %98
  %_Dynamic_check.range = and i1 %_Dynamic_check.lower, %_Dynamic_check.upper
  br i1 %_Dynamic_check.range, label %_Dynamic_check.succeeded43, label %_Dynamic_check.failed42

_Dynamic_check.succeeded43:                       ; preds = %_Dynamic_check.succeeded40
  %102 = ptrtoint %Tstruct.Spl_json_value_t_t* %53 to i32
  %103 = bitcast %Tstruct.Spl_json_value_t_t** %71 to i32*
  store i32 %102, i32* %103, align 4
  %104 = load %Tstruct.Spl_json_array_t_t*, %Tstruct.Spl_json_array_t_t** %array.addr, align 4
  %105 = ptrtoint %Tstruct.Spl_json_array_t_t* %104 to i32
  %106 = call i8* @c_fetch_pointer_from_offset(i32 %105)
  %107 = call i1 @c_isTaintedPointerToTaintedMem(i8* %106)
  br i1 %107, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %_Dynamic_check.succeeded43
  %108 = bitcast i8* %106 to %Tstruct.Spl_json_array_t_t*
  %count46 = getelementptr inbounds %Tstruct.Spl_json_array_t_t, %Tstruct.Spl_json_array_t_t* %108, i32 0, i32 2
  %109 = load i32, i32* %count46, align 8
  %inc = add i32 %109, 1
  store i32 %inc, i32* %count46, align 8
  store i32 0, i32* %retval, align 4
  br label %return

_Dynamic_check.failed17:                          ; preds = %if.end16
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed20:                          ; preds = %_Dynamic_check.succeeded18
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed23:                          ; preds = %_Dynamic_check.succeeded21
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed29:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed31:                          ; preds = %_Dynamic_check.succeeded30
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed35:                          ; preds = %_Dynamic_check.succeeded32
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed39:                          ; preds = %_Dynamic_check.succeeded36
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed42:                          ; preds = %_Dynamic_check.succeeded40
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed44:                          ; preds = %_Dynamic_check.succeeded43
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded45, %if.then15
  %110 = load i32, i32* %retval, align 4
  ret i32 %110
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
  %1 = ptrtoint %Tstruct.Spl_json_object_t_t* %0 to i32
  %2 = bitcast %Tstruct.Spl_json_object_t_t** %object.addr to i32*
  store i32 %1, i32* %2, align 4
  %3 = ptrtoint i8* %name to i32
  %4 = bitcast i8** %name.addr to i32*
  store i32 %3, i32* %4, align 4
  %5 = bitcast %Tstruct.json_value_t_t* %value to %Tstruct.Spl_json_value_t_t*
  %6 = ptrtoint %Tstruct.Spl_json_value_t_t* %5 to i32
  %7 = bitcast %Tstruct.Spl_json_value_t_t** %value.addr to i32*
  store i32 %6, i32* %7, align 4
  %8 = load i8*, i8** %name.addr, align 4
  %9 = ptrtoint i8* %8 to i32
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %10 = load i8*, i8** %name.addr, align 4
  %11 = ptrtoint i8* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %call = call i64 @t_strlen(i8* %12)
  store i64 %call, i64* %nameLen, align 8
  %14 = bitcast i8** %name_with_len to i32*
  store i32 0, i32* %14, align 4
  %15 = load i8*, i8** %name.addr, align 4
  %16 = ptrtoint i8* %15 to i32
  %17 = bitcast i8** %name_with_len to i32*
  store i32 %16, i32* %17, align 4
  %18 = load %Tstruct.Spl_json_object_t_t*, %Tstruct.Spl_json_object_t_t** %object.addr, align 4
  %19 = load i8*, i8** %name_with_len, align 4
  %20 = load i64, i64* %nameLen, align 8
  %21 = load %Tstruct.Spl_json_value_t_t*, %Tstruct.Spl_json_value_t_t** %value.addr, align 4
  %22 = ptrtoint %Tstruct.Spl_json_object_t_t* %18 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded2, label %_Dynamic_check.failed1

_Dynamic_check.succeeded2:                        ; preds = %_Dynamic_check.succeeded
  %25 = bitcast i8* %23 to %Tstruct.Spl_json_object_t_t*
  %26 = ptrtoint i8* %19 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded4, label %_Dynamic_check.failed3

_Dynamic_check.succeeded4:                        ; preds = %_Dynamic_check.succeeded2
  %29 = ptrtoint %Tstruct.Spl_json_value_t_t* %21 to i32
  %30 = call i8* @c_fetch_pointer_from_offset(i32 %29)
  %31 = call i1 @c_isTaintedPointerToTaintedMem(i8* %30)
  br i1 %31, label %_Dynamic_check.succeeded6, label %_Dynamic_check.failed5

_Dynamic_check.succeeded6:                        ; preds = %_Dynamic_check.succeeded4
  %32 = bitcast i8* %30 to %Tstruct.Spl_json_value_t_t*
  %call7 = call i32 @json_object_addn(%Tstruct.Spl_json_object_t_t* %25, i8* %27, i64 %20, %Tstruct.Spl_json_value_t_t* %32)
  store i32 %call7, i32* %retval, align 4
  br label %return

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed1:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed3:                           ; preds = %_Dynamic_check.succeeded2
  call void @llvm.trap() #9
  unreachable

_Dynamic_check.failed5:                           ; preds = %_Dynamic_check.succeeded4
  call void @llvm.trap() #9
  unreachable

return:                                           ; preds = %_Dynamic_check.succeeded6, %if.then
  %33 = load i32, i32* %retval, align 4
  ret i32 %33
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
attributes #8 = { nounwind readnone "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/CheckCBox_Compiler.git 6a0809672e2dae8a6dacd88b66fc53acdcab3614)"}
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
