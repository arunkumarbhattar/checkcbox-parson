; ModuleID = 'tests.c'
source_filename = "tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%Tstruct.json_value_t_t = type opaque
%Tstruct.json_object_t_t = type opaque
%Tstruct.json_array_t_t = type opaque

@counted_malloc = internal global i8* (i64)* null, align 8
@counted_free = internal global void (i8*)* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Tests failed: %d\0A\00", align 1
@tests_failed = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Tests passed: %d\0A\00", align 1
@tests_passed = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"%d %-72s-\00", align 1
@.str.3 = private unnamed_addr constant [102 x i8] c"(val_tainted = json_parse_file(\22/home/twinturbo/Desktop/checkedc-parson/tests/test_1_1.txt\22)) != NULL\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_1_1.txt\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" OK\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" FAIL\00", align 1
@.str.7 = private unnamed_addr constant [89 x i8] c"json_value_equals(json_parse_string(json_serialize_to_string(val_tainted)), val_tainted)\00", align 1
@.str.8 = private unnamed_addr constant [96 x i8] c"json_value_equals(json_parse_string(json_serialize_to_string_pretty(val_tainted)), val_tainted)\00", align 1
@.str.9 = private unnamed_addr constant [102 x i8] c"(val_tainted = json_parse_file(\22/home/twinturbo/Desktop/checkedc-parson/tests/test_1_2.txt\22)) == NULL\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_1_2.txt\00", align 1
@.str.11 = private unnamed_addr constant [102 x i8] c"(val_tainted = json_parse_file(\22/home/twinturbo/Desktop/checkedc-parson/tests/test_1_3.txt\22)) != NULL\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_1_3.txt\00", align 1
@.str.13 = private unnamed_addr constant [130 x i8] c"(val_tainted = json_parse_file_with_comments(\22/home/twinturbo/Desktop/checkedc-parson/tests/test_1_1.txt\22, &parse_value)) != NULL\00", align 1
@.str.14 = private unnamed_addr constant [130 x i8] c"(val_tainted = json_parse_file_with_comments(\22/home/twinturbo/Desktop/checkedc-parson/tests/test_1_3.txt\22, &parse_value)) != NULL\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"root_value\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"json_value_get_type(root_value) == JSONObject\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"json_object_has_value(root_object, value_type)\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"_string\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"!json_object_has_value(root_object, value_type)\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"object\00", align 1
@.str.22 = private unnamed_addr constant [67 x i8] c"json_object_has_value_of_type(root_object, value_type, JSONObject)\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"string array\00", align 1
@.str.24 = private unnamed_addr constant [67 x i8] c"!json_object_has_value_of_type(root_object,value_type, JSONObject)\00", align 1
@.str.25 = private unnamed_addr constant [66 x i8] c"json_object_has_value_of_type(root_object,value_type , JSONArray)\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"!json_object_has_value_of_type(root_object, value_type, JSONArray)\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"json_object_has_value_of_type(root_object, value_type, JSONString)\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"positive one\00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"!json_object_has_value_of_type(root_object, value_type, JSONString)\00", align 1
@.str.30 = private unnamed_addr constant [67 x i8] c"json_object_has_value_of_type(root_object, value_type, JSONNumber)\00", align 1
@.str.31 = private unnamed_addr constant [68 x i8] c"!json_object_has_value_of_type(root_object, value_type, JSONNumber)\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"boolean true\00", align 1
@.str.33 = private unnamed_addr constant [68 x i8] c"json_object_has_value_of_type(root_object, value_type, JSONBoolean)\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"!json_object_has_value_of_type(root_object, value_type, JSONBoolean)\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.36 = private unnamed_addr constant [65 x i8] c"json_object_has_value_of_type(root_object, value_type, JSONNull)\00", align 1
@.str.37 = private unnamed_addr constant [66 x i8] c"!json_object_has_value_of_type(root_object, value_type, JSONNull)\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"object.nested array\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"json_object_dothas_value(root_object, value_type)\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"_object.nested array\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"!json_object_dothas_value(root_object, value_type)\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"object.nested object\00", align 1
@.str.43 = private unnamed_addr constant [70 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONObject)\00", align 1
@.str.44 = private unnamed_addr constant [71 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONObject)\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONArray)\00", align 1
@.str.46 = private unnamed_addr constant [70 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONArray)\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"object.nested string\00", align 1
@.str.48 = private unnamed_addr constant [70 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONString)\00", align 1
@.str.49 = private unnamed_addr constant [21 x i8] c"object.nested number\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONString)\00", align 1
@.str.51 = private unnamed_addr constant [70 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONNumber)\00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c"_object.nested whatever\00", align 1
@.str.53 = private unnamed_addr constant [71 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONNumber)\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"object.nested true\00", align 1
@.str.55 = private unnamed_addr constant [71 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONBoolean)\00", align 1
@.str.56 = private unnamed_addr constant [72 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONBoolean)\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"object.nested null\00", align 1
@.str.58 = private unnamed_addr constant [68 x i8] c"json_object_dothas_value_of_type(root_object, value_type, JSONNull)\00", align 1
@.str.59 = private unnamed_addr constant [69 x i8] c"!json_object_dothas_value_of_type(root_object, value_type, JSONNull)\00", align 1
@.str.60 = private unnamed_addr constant [70 x i8] c"STREQ(json_object_get_string(root_object, value_type), \22lorem ipsum\22)\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"lorem ipsum\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"utf string\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"utf-8 string\00", align 1
@.str.64 = private unnamed_addr constant [74 x i8] c"STREQ(json_object_get_string(root_object, value_type), \22\E3\81\82\E3\81\84\E3\81\86\E3\81\88\E3\81\8A\22)\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"\E3\81\82\E3\81\84\E3\81\86\E3\81\88\E3\81\8A\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"surrogate string\00", align 1
@.str.67 = private unnamed_addr constant [81 x i8] c"STREQ(json_object_get_string(root_object,value_type), \22lorem\F0\9D\84\9Eipsum\F0\9D\8D\A7lorem\22)\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"lorem\F0\9D\84\9Eipsum\F0\9D\8D\A7lorem\00", align 1
@.str.69 = private unnamed_addr constant [55 x i8] c"json_object_get_number(root_object, value_type) == 1.0\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"negative one\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"json_object_get_number(root_object, value_type) == -1.0\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"hard to parse number\00", align 1
@.str.73 = private unnamed_addr constant [78 x i8] c"fabs(json_object_get_number(root_object, value_type) - (-0.000314)) < EPSILON\00", align 1
@.str.74 = private unnamed_addr constant [54 x i8] c"json_object_get_boolean(root_object, value_type) == 1\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"boolean false\00", align 1
@.str.76 = private unnamed_addr constant [54 x i8] c"json_object_get_boolean(root_object, value_type) == 0\00", align 1
@.str.77 = private unnamed_addr constant [80 x i8] c"json_value_get_type(json_object_get_value(root_object, value_type)) == JSONNull\00", align 1
@.str.78 = private unnamed_addr constant [48 x i8] c"STREQ(json_array_get_string(array, 0), \22lorem\22)\00", align 1
@.str.79 = private unnamed_addr constant [6 x i8] c"lorem\00", align 1
@.str.80 = private unnamed_addr constant [48 x i8] c"STREQ(json_array_get_string(array, 1), \22ipsum\22)\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"ipsum\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"x^2 array\00", align 1
@.str.83 = private unnamed_addr constant [43 x i8] c"json_array_get_number(array, i) == (i * i)\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"non existent array\00", align 1
@.str.85 = private unnamed_addr constant [55 x i8] c"json_object_get_array(root_object, value_type) == NULL\00", align 1
@.str.86 = private unnamed_addr constant [65 x i8] c"STREQ(json_object_dotget_string(root_object, value_type), \22str\22)\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.88 = private unnamed_addr constant [57 x i8] c"json_object_dotget_boolean(root_object, value_type) == 1\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"object.nested false\00", align 1
@.str.90 = private unnamed_addr constant [57 x i8] c"json_object_dotget_boolean(root_object, value_type) == 0\00", align 1
@.str.91 = private unnamed_addr constant [58 x i8] c"json_object_dotget_value(root_object, value_type) != NULL\00", align 1
@.str.92 = private unnamed_addr constant [58 x i8] c"json_object_dotget_number(root_object, value_type) == 123\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"should.be.null\00", align 1
@.str.94 = private unnamed_addr constant [58 x i8] c"json_object_dotget_value(root_object, value_type) == NULL\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"should.be.null.\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.97 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"array != NULL\00", align 1
@.str.99 = private unnamed_addr constant [32 x i8] c"json_array_get_count(array) > 1\00", align 1
@.str.100 = private unnamed_addr constant [51 x i8] c"STREQ(json_array_get_string(array, 0), value_type)\00", align 1
@.str.101 = private unnamed_addr constant [51 x i8] c"STREQ(json_array_get_string(array, 1), value_type)\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"/**/\00", align 1
@.str.103 = private unnamed_addr constant [66 x i8] c"STREQ(json_object_get_string(root_object, value_type), \22comment\22)\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"url\00", align 1
@.str.107 = private unnamed_addr constant [97 x i8] c"STREQ(json_object_get_string(root_object, value_type), \22https://www.example.com/search?q=12345\22)\00", align 1
@.str.108 = private unnamed_addr constant [39 x i8] c"https://www.example.com/search?q=12345\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"escaped chars\00", align 1
@.str.110 = private unnamed_addr constant [66 x i8] c"STREQ(json_object_get_string(root_object, value_type), \22\\\22 \\\\ /\22)\00", align 1
@.str.111 = private unnamed_addr constant [6 x i8] c"\22 \\ /\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"empty object\00", align 1
@.str.113 = private unnamed_addr constant [56 x i8] c"json_object_get_object(root_object, value_type) != NULL\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c"empty array\00", align 1
@.str.115 = private unnamed_addr constant [55 x i8] c"json_object_get_array(root_object, value_type) != NULL\00", align 1
@.str.116 = private unnamed_addr constant [58 x i8] c"json_object_get_wrapping_value(root_object) == root_value\00", align 1
@.str.117 = private unnamed_addr constant [52 x i8] c"json_array_get_wrapping_value(array) == array_value\00", align 1
@.str.118 = private unnamed_addr constant [49 x i8] c"json_value_get_parent(array_value) == root_value\00", align 1
@.str.119 = private unnamed_addr constant [42 x i8] c"json_value_get_parent(root_value) == NULL\00", align 1
@.str.120 = private unnamed_addr constant [57 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_2.txt\00", align 1
@.str.121 = private unnamed_addr constant [87 x i8] c"json_value_equals(root_value, json_parse_string(json_serialize_to_string(root_value)))\00", align 1
@.str.122 = private unnamed_addr constant [94 x i8] c"json_value_equals(root_value, json_parse_string(json_serialize_to_string_pretty(root_value)))\00", align 1
@.str.123 = private unnamed_addr constant [66 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_2_comments.txt\00", align 1
@.str.124 = private unnamed_addr constant [23 x i8] c"Testing valid strings:\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"{\22lorem\22:\22ipsum\22}\00", align 1
@.str.126 = private unnamed_addr constant [36 x i8] c"json_parse_string(filename) != NULL\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"[\22lorem\22]\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.129 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.130 = private unnamed_addr constant [9 x i8] c"\22string\22\00", align 1
@.str.131 = private unnamed_addr constant [4 x i8] c"123\00", align 1
@.str.132 = private unnamed_addr constant [21 x i8] c"Test UTF-16 parsing:\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"\22\\u0024x\22\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"STREQ(temp_string, \22$x\22)\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"$x\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"\22\\u00A2x\22\00", align 1
@.str.137 = private unnamed_addr constant [26 x i8] c"STREQ(temp_string, \22\C2\A2x\22)\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"\C2\A2x\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"\22\\u20ACx\22\00", align 1
@.str.140 = private unnamed_addr constant [27 x i8] c"STREQ(temp_string, \22\E2\82\ACx\22)\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"\E2\82\ACx\00", align 1
@.str.142 = private unnamed_addr constant [16 x i8] c"\22\\uD801\\uDC37x\22\00", align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"STREQ(temp_string, \22\F0\90\90\B7x\22)\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"\F0\90\90\B7x\00", align 1
@.str.145 = private unnamed_addr constant [25 x i8] c"Testing invalid strings:\00", align 1
@malloc_count = internal global i32 0, align 4
@.str.146 = private unnamed_addr constant [32 x i8] c"json_parse_string(NULL) == NULL\00", align 1
@.str.147 = private unnamed_addr constant [36 x i8] c"json_parse_string(filename) == NULL\00", align 1
@.str.148 = private unnamed_addr constant [11 x i8] c"[\22lorem\22,]\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"{\22lorem\22:\22ipsum\22,}\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"{lorem:ipsum}\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"[,]\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"[,\00", align 1
@.str.153 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.154 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"{\22a\22:0,\22a\22:0}\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"{:,}\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"{,}\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"{,\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"{:\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.161 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.163 = private unnamed_addr constant [13 x i8] c"{:\22no name\22}\00", align 1
@.str.164 = private unnamed_addr constant [20 x i8] c"[,\22no first value\22]\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"{\22key\22\22value\22}\00", align 1
@.str.166 = private unnamed_addr constant [6 x i8] c"{\22a\22}\00", align 1
@.str.167 = private unnamed_addr constant [11 x i8] c"[\22\\u00zz\22]\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"[\22\\u00\22]\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"[\22\\u\22]\00", align 1
@.str.170 = private unnamed_addr constant [6 x i8] c"[\22\\\22]\00", align 1
@.str.171 = private unnamed_addr constant [6 x i8] c"[\22\22\22]\00", align 1
@.str.172 = private unnamed_addr constant [6 x i8] c"[\22\00\22]\00", align 1
@.str.173 = private unnamed_addr constant [6 x i8] c"[\22\07\22]\00", align 1
@.str.174 = private unnamed_addr constant [6 x i8] c"[\22\08\22]\00", align 1
@.str.175 = private unnamed_addr constant [6 x i8] c"[\22\09\22]\00", align 1
@.str.176 = private unnamed_addr constant [6 x i8] c"[\22\0A\22]\00", align 1
@.str.177 = private unnamed_addr constant [6 x i8] c"[\22\0C\22]\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"[\22\0D\22]\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"[0x2]\00", align 1
@.str.180 = private unnamed_addr constant [6 x i8] c"[0X2]\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"[07]\00", align 1
@.str.182 = private unnamed_addr constant [7 x i8] c"[0070]\00", align 1
@.str.183 = private unnamed_addr constant [7 x i8] c"[07.0]\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"[-07]\00", align 1
@.str.185 = private unnamed_addr constant [7 x i8] c"[-007]\00", align 1
@.str.186 = private unnamed_addr constant [8 x i8] c"[-07.0]\00", align 1
@.str.187 = private unnamed_addr constant [17 x i8] c"[\22\\uDF67\\uD834\22]\00", align 1
@.str.188 = private unnamed_addr constant [25 x i8] c"[1.7976931348623157e309]\00", align 1
@.str.189 = private unnamed_addr constant [26 x i8] c"[-1.7976931348623157e309]\00", align 1
@.str.190 = private unnamed_addr constant [18 x i8] c"malloc_count == 0\00", align 1
@.str.191 = private unnamed_addr constant [13 x i8] c"Testing %s:\0A\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"res\00", align 1
@.str.193 = private unnamed_addr constant [15 x i8] c"a_copy != NULL\00", align 1
@.str.194 = private unnamed_addr constant [29 x i8] c"json_value_equals(a, a_copy)\00", align 1
@.str.195 = private unnamed_addr constant [57 x i8] c"/home/twinturbo/Desktop/checkedc-parson/tests/test_5.txt\00", align 1
@.str.196 = private unnamed_addr constant [12 x i8] c"val != NULL\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"obj != NULL\00", align 1
@.str.198 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.199 = private unnamed_addr constant [5 x i8] c"John\00", align 1
@.str.200 = private unnamed_addr constant [63 x i8] c"json_object_set_string(obj, string_1, string_2) == JSONSuccess\00", align 1
@.str.201 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"Doe\00", align 1
@.str.203 = private unnamed_addr constant [4 x i8] c"age\00", align 1
@.str.204 = private unnamed_addr constant [57 x i8] c"json_object_set_number(obj, string_1, 25) == JSONSuccess\00", align 1
@.str.205 = private unnamed_addr constant [11 x i8] c"registered\00", align 1
@.str.206 = private unnamed_addr constant [57 x i8] c"json_object_set_boolean(obj, string_1, 1) == JSONSuccess\00", align 1
@.str.207 = private unnamed_addr constant [10 x i8] c"interests\00", align 1
@.str.208 = private unnamed_addr constant [77 x i8] c"json_object_set_value(obj, string_1, json_value_init_array()) == JSONSuccess\00", align 1
@.str.209 = private unnamed_addr constant [22 x i8] c"interests_arr != NULL\00", align 1
@.str.210 = private unnamed_addr constant [8 x i8] c"Writing\00", align 1
@.str.211 = private unnamed_addr constant [65 x i8] c"json_array_append_string(interests_arr, string_1) == JSONSuccess\00", align 1
@.str.212 = private unnamed_addr constant [16 x i8] c"Mountain Biking\00", align 1
@.str.213 = private unnamed_addr constant [8 x i8] c"Reading\00", align 1
@.str.214 = private unnamed_addr constant [69 x i8] c"json_array_replace_string(interests_arr, 0, string_1) == JSONSuccess\00", align 1
@.str.215 = private unnamed_addr constant [16 x i8] c"favorites.color\00", align 1
@.str.216 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@.str.217 = private unnamed_addr constant [66 x i8] c"json_object_dotset_string(obj, string_1, string_2) == JSONSuccess\00", align 1
@.str.218 = private unnamed_addr constant [8 x i8] c"running\00", align 1
@.str.219 = private unnamed_addr constant [16 x i8] c"favorites.fruit\00", align 1
@.str.220 = private unnamed_addr constant [6 x i8] c"apple\00", align 1
@.str.221 = private unnamed_addr constant [52 x i8] c"json_object_dotremove(obj, string_1) == JSONSuccess\00", align 1
@.str.222 = private unnamed_addr constant [13 x i8] c"windows path\00", align 1
@.str.223 = private unnamed_addr constant [16 x i8] c"C:\\Windows\\Path\00", align 1
@.str.224 = private unnamed_addr constant [38 x i8] c"json_value_equals(val_from_file, val)\00", align 1
@.str.225 = private unnamed_addr constant [59 x i8] c"json_object_set_string(obj, NULL, string_1) == JSONFailure\00", align 1
@.str.226 = private unnamed_addr constant [59 x i8] c"json_object_set_string(obj, string_1, NULL) == JSONFailure\00", align 1
@.str.227 = private unnamed_addr constant [55 x i8] c"json_object_set_string(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.228 = private unnamed_addr constant [54 x i8] c"json_object_set_value(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.229 = private unnamed_addr constant [62 x i8] c"json_object_dotset_string(obj, NULL, string_1) == JSONFailure\00", align 1
@.str.230 = private unnamed_addr constant [62 x i8] c"json_object_dotset_string(obj, string_1, NULL) == JSONFailure\00", align 1
@.str.231 = private unnamed_addr constant [58 x i8] c"json_object_dotset_string(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.232 = private unnamed_addr constant [57 x i8] c"json_object_dotset_value(obj, NULL, NULL) == JSONFailure\00", align 1
@.str.233 = private unnamed_addr constant [56 x i8] c"json_array_append_string(NULL, string_1) == JSONFailure\00", align 1
@.str.234 = private unnamed_addr constant [60 x i8] c"json_array_append_value(interests_arr, NULL) == JSONFailure\00", align 1
@.str.235 = private unnamed_addr constant [51 x i8] c"json_array_append_value(NULL, NULL) == JSONFailure\00", align 1
@.str.236 = private unnamed_addr constant [64 x i8] c"json_array_replace_value(interests_arr, 0, NULL) == JSONFailure\00", align 1
@.str.237 = private unnamed_addr constant [60 x i8] c"json_array_replace_string(NULL, 0, string_1) == JSONFailure\00", align 1
@.str.238 = private unnamed_addr constant [13 x i8] c"not existing\00", align 1
@.str.239 = private unnamed_addr constant [71 x i8] c"json_array_replace_string(interests_arr, 100, string_1) == JSONFailure\00", align 1
@.str.240 = private unnamed_addr constant [84 x i8] c"json_array_append_string(json_object_get_array(obj, string_1), NULL) == JSONFailure\00", align 1
@.str.241 = private unnamed_addr constant [51 x i8] c"json_array_remove(interests_arr, 0) == JSONSuccess\00", align 1
@.str.242 = private unnamed_addr constant [51 x i8] c"json_array_remove(interests_arr, 1) == JSONSuccess\00", align 1
@.str.243 = private unnamed_addr constant [51 x i8] c"json_array_remove(interests_arr, 0) == JSONFailure\00", align 1
@.str.244 = private unnamed_addr constant [64 x i8] c"json_object_set_value(obj, string_1, val_parent) == JSONSuccess\00", align 1
@.str.245 = private unnamed_addr constant [64 x i8] c"json_object_set_value(obj, string_1, val_parent) == JSONFailure\00", align 1
@.str.246 = private unnamed_addr constant [66 x i8] c"json_array_append_value(interests_arr, val_parent) == JSONSuccess\00", align 1
@.str.247 = private unnamed_addr constant [66 x i8] c"json_array_append_value(interests_arr, val_parent) == JSONFailure\00", align 1
@.str.248 = private unnamed_addr constant [70 x i8] c"json_array_replace_value(interests_arr, 0, val_parent) == JSONSuccess\00", align 1
@.str.249 = private unnamed_addr constant [70 x i8] c"json_array_replace_value(interests_arr, 0, val_parent) == JSONFailure\00", align 1
@.str.250 = private unnamed_addr constant [48 x i8] c"json_object_remove(obj,string_1) == JSONSuccess\00", align 1
@.str.251 = private unnamed_addr constant [15 x i8] c"correct string\00", align 1
@.str.252 = private unnamed_addr constant [12 x i8] c"\CE\BA\E1\BD\B9\CF\83\CE\BC\CE\B5\00", align 1
@.str.253 = private unnamed_addr constant [11 x i8] c"boundary 1\00", align 1
@.str.254 = private unnamed_addr constant [4 x i8] c"\ED\9F\BF\00", align 1
@.str.255 = private unnamed_addr constant [11 x i8] c"boundary 2\00", align 1
@.str.256 = private unnamed_addr constant [4 x i8] c"\EE\80\80\00", align 1
@.str.257 = private unnamed_addr constant [11 x i8] c"boundary 3\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"\EF\BF\BD\00", align 1
@.str.259 = private unnamed_addr constant [11 x i8] c"boundary 4\00", align 1
@.str.260 = private unnamed_addr constant [5 x i8] c"\F4\8F\BF\BF\00", align 1
@.str.261 = private unnamed_addr constant [24 x i8] c"first continuation byte\00", align 1
@.str.262 = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str.263 = private unnamed_addr constant [63 x i8] c"json_object_set_string(obj, string_1, string_2) == JSONFailure\00", align 1
@.str.264 = private unnamed_addr constant [23 x i8] c"last continuation byte\00", align 1
@.str.265 = private unnamed_addr constant [2 x i8] c"\BF\00", align 1
@.str.266 = private unnamed_addr constant [22 x i8] c"impossible sequence 1\00", align 1
@.str.267 = private unnamed_addr constant [2 x i8] c"\FE\00", align 1
@.str.268 = private unnamed_addr constant [22 x i8] c"impossible sequence 2\00", align 1
@.str.269 = private unnamed_addr constant [2 x i8] c"\FF\00", align 1
@.str.270 = private unnamed_addr constant [22 x i8] c"impossible sequence 3\00", align 1
@.str.271 = private unnamed_addr constant [5 x i8] c"\FE\FE\FF\FF\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"overlong 1\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c"\C0\AF\00", align 1
@.str.274 = private unnamed_addr constant [11 x i8] c"overlong 2\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"\C1\BF\00", align 1
@.str.276 = private unnamed_addr constant [11 x i8] c"overlong 3\00", align 1
@.str.277 = private unnamed_addr constant [4 x i8] c"\E0\80\AF\00", align 1
@.str.278 = private unnamed_addr constant [11 x i8] c"overlong 4\00", align 1
@.str.279 = private unnamed_addr constant [4 x i8] c"\E0\9F\BF\00", align 1
@.str.280 = private unnamed_addr constant [11 x i8] c"overlong 5\00", align 1
@.str.281 = private unnamed_addr constant [5 x i8] c"\F0\80\80\AF\00", align 1
@.str.282 = private unnamed_addr constant [11 x i8] c"overlong 6\00", align 1
@.str.283 = private unnamed_addr constant [5 x i8] c"\F0\8F\BF\BF\00", align 1
@.str.284 = private unnamed_addr constant [11 x i8] c"overlong 7\00", align 1
@.str.285 = private unnamed_addr constant [16 x i8] c"overlong null 1\00", align 1
@.str.286 = private unnamed_addr constant [3 x i8] c"\C0\80\00", align 1
@.str.287 = private unnamed_addr constant [16 x i8] c"overlong null 2\00", align 1
@.str.288 = private unnamed_addr constant [4 x i8] c"\E0\80\80\00", align 1
@.str.289 = private unnamed_addr constant [16 x i8] c"overlong null 3\00", align 1
@.str.290 = private unnamed_addr constant [5 x i8] c"\F0\80\80\80\00", align 1
@.str.291 = private unnamed_addr constant [16 x i8] c"overlong null 4\00", align 1
@.str.292 = private unnamed_addr constant [6 x i8] c"\F8\80\80\80\80\00", align 1
@.str.293 = private unnamed_addr constant [16 x i8] c"overlong null 5\00", align 1
@.str.294 = private unnamed_addr constant [7 x i8] c"\FC\80\80\80\80\80\00", align 1
@.str.295 = private unnamed_addr constant [19 x i8] c"single surrogate 1\00", align 1
@.str.296 = private unnamed_addr constant [4 x i8] c"\ED\A0\80\00", align 1
@.str.297 = private unnamed_addr constant [19 x i8] c"single surrogate 2\00", align 1
@.str.298 = private unnamed_addr constant [4 x i8] c"\ED\AF\BF\00", align 1
@.str.299 = private unnamed_addr constant [19 x i8] c"single surrogate 3\00", align 1
@.str.300 = private unnamed_addr constant [4 x i8] c"\ED\BF\BF\00", align 1
@.str.301 = private unnamed_addr constant [16 x i8] c"[1, 2, 3, 4, 5]\00", align 1
@.str.302 = private unnamed_addr constant [13 x i8] c"[1, 2, 4, 5]\00", align 1
@.str.303 = private unnamed_addr constant [64 x i8] c"json_value_equals(remove_test_val, json_parse_string(string_1))\00", align 1
@.str.304 = private unnamed_addr constant [10 x i8] c"[2, 4, 5]\00", align 1
@.str.305 = private unnamed_addr constant [7 x i8] c"[2, 4]\00", align 1
@.str.306 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.307 = private unnamed_addr constant [65 x i8] c"json_object_set_number(obj, string_1, 0.0 / zero) == JSONFailure\00", align 1
@.str.308 = private unnamed_addr constant [65 x i8] c"json_object_set_number(obj,string_1 , 1.0 / zero) == JSONFailure\00", align 1

; Function Attrs: noinline nounwind optnone tainted uwtable
define dso_local i8* @string_malloc(i64 %sz) #0 {
entry:
  %retval = alloca i8*, align 8
  %sz.addr = alloca i64, align 8
  %p = alloca i8*, align 4
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
  %call = call i8* @t_malloc(i64 %add)
  store i8* %call, i8** %p, align 4
  %2 = load i8*, i8** %p, align 4
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load i8*, i8** %p, align 4
  %4 = load i64, i64* %sz.addr, align 8
  %5 = ptrtoint i8* %3 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.then2
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %4
  store i8 0, i8* %arrayidx, align 1
  br label %if.end3

_Dynamic_check.failed:                            ; preds = %if.then2
  call void @llvm.trap() #6
  unreachable

if.end3:                                          ; preds = %_Dynamic_check.succeeded, %if.end
  %8 = load i8*, i8** %p, align 4
  store i8* %8, i8** %retval, align 8
  br label %return

return:                                           ; preds = %if.end3, %if.then
  %9 = load i8*, i8** %retval, align 8
  ret i8* %9
}

declare dso_local i8* @t_malloc(i64) #1

declare i8* @c_fetch_pointer_from_offset(i32)

declare i1 @c_isTaintedPointerToTaintedMem(i8*)

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = load i8* (i64)*, i8* (i64)** @counted_malloc, align 8
  %1 = load void (i8*)*, void (i8*)** @counted_free, align 8
  call void @json_set_allocation_functions(i8* (i64)* %0, void (i8*)* %1)
  call void @test_suite_1()
  call void @test_suite_2_no_comments()
  call void @test_suite_2_with_comments()
  call void @test_suite_3()
  call void @test_suite_4()
  call void @test_suite_5()
  %2 = load i32, i32* @tests_failed, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %2)
  %3 = load i32, i32* @tests_passed, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  ret i32 0
}

declare dso_local void @json_set_allocation_functions(i8* (i64)*, void (i8*)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_1() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_tainted, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 111, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.3, i64 0, i64 0))
  %call1 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call1, %Tstruct.json_value_t_t** %val_tainted, align 4
  %cmp = icmp ne %Tstruct.json_value_t_t* %call1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %0 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call3 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1 = load i32, i32* @tests_failed, align 4
  %inc4 = add nsw i32 %1, 1
  store i32 %inc4, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 115, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %2 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %3 = ptrtoint %Tstruct.json_value_t_t* %2 to i32
  %4 = call i8* @c_fetch_pointer_from_offset(i32 %3)
  %5 = call i1 @c_isTaintedPointerToTaintedMem(i8* %4)
  br i1 %5, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %6 = bitcast i8* %4 to %Tstruct.json_value_t_t*
  %call6 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %6)
  %7 = ptrtoint i8* %call6 to i32
  %8 = call i8* @c_fetch_pointer_from_offset(i32 %7)
  %9 = call i1 @c_isTaintedPointerToTaintedMem(i8* %8)
  br i1 %9, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded
  %call9 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %8)
  %10 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %11 = ptrtoint %Tstruct.json_value_t_t* %call9 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %14 = bitcast i8* %12 to %Tstruct.json_value_t_t*
  %15 = ptrtoint %Tstruct.json_value_t_t* %10 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %18 = bitcast i8* %16 to %Tstruct.json_value_t_t*
  %call14 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %14, %Tstruct.json_value_t_t* %18)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then15, label %if.else18

if.then15:                                        ; preds = %_Dynamic_check.succeeded13
  %call16 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %19 = load i32, i32* @tests_passed, align 4
  %inc17 = add nsw i32 %19, 1
  store i32 %inc17, i32* @tests_passed, align 4
  br label %if.end21

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #6
  unreachable

if.else18:                                        ; preds = %_Dynamic_check.succeeded13
  %call19 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %20 = load i32, i32* @tests_failed, align 4
  %inc20 = add nsw i32 %20, 1
  store i32 %inc20, i32* @tests_failed, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then15
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 116, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %21 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %22 = ptrtoint %Tstruct.json_value_t_t* %21 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end21
  %25 = bitcast i8* %23 to %Tstruct.json_value_t_t*
  %call25 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %25)
  %26 = ptrtoint i8* %call25 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded27, label %_Dynamic_check.failed26

_Dynamic_check.succeeded27:                       ; preds = %_Dynamic_check.succeeded24
  %call28 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %27)
  %29 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %30 = ptrtoint %Tstruct.json_value_t_t* %call28 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded30, label %_Dynamic_check.failed29

_Dynamic_check.succeeded30:                       ; preds = %_Dynamic_check.succeeded27
  %33 = bitcast i8* %31 to %Tstruct.json_value_t_t*
  %34 = ptrtoint %Tstruct.json_value_t_t* %29 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded32, label %_Dynamic_check.failed31

_Dynamic_check.succeeded32:                       ; preds = %_Dynamic_check.succeeded30
  %37 = bitcast i8* %35 to %Tstruct.json_value_t_t*
  %call33 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %33, %Tstruct.json_value_t_t* %37)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then35, label %if.else38

if.then35:                                        ; preds = %_Dynamic_check.succeeded32
  %call36 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i32, i32* @tests_passed, align 4
  %inc37 = add nsw i32 %38, 1
  store i32 %inc37, i32* @tests_passed, align 4
  br label %if.end41

_Dynamic_check.failed23:                          ; preds = %if.end21
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed26:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed29:                          ; preds = %_Dynamic_check.succeeded27
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed31:                          ; preds = %_Dynamic_check.succeeded30
  call void @llvm.trap() #6
  unreachable

if.else38:                                        ; preds = %_Dynamic_check.succeeded32
  %call39 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %39 = load i32, i32* @tests_failed, align 4
  %inc40 = add nsw i32 %39, 1
  store i32 %inc40, i32* @tests_failed, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else38, %if.then35
  %40 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %tobool42 = icmp ne %Tstruct.json_value_t_t* %40, null
  br i1 %tobool42, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end41
  %41 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %42 = ptrtoint %Tstruct.json_value_t_t* %41 to i32
  %43 = call i8* @c_fetch_pointer_from_offset(i32 %42)
  %44 = call i1 @c_isTaintedPointerToTaintedMem(i8* %43)
  br i1 %44, label %_Dynamic_check.succeeded45, label %_Dynamic_check.failed44

_Dynamic_check.succeeded45:                       ; preds = %if.then43
  %45 = bitcast i8* %43 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %45)
  br label %if.end46

_Dynamic_check.failed44:                          ; preds = %if.then43
  call void @llvm.trap() #6
  unreachable

if.end46:                                         ; preds = %_Dynamic_check.succeeded45, %if.end41
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 119, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.9, i64 0, i64 0))
  %call48 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call48, %Tstruct.json_value_t_t** %val_tainted, align 4
  %cmp49 = icmp eq %Tstruct.json_value_t_t* %call48, null
  br i1 %cmp49, label %if.then50, label %if.else53

if.then50:                                        ; preds = %if.end46
  %call51 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %46 = load i32, i32* @tests_passed, align 4
  %inc52 = add nsw i32 %46, 1
  store i32 %inc52, i32* @tests_passed, align 4
  br label %if.end56

if.else53:                                        ; preds = %if.end46
  %call54 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32, i32* @tests_failed, align 4
  %inc55 = add nsw i32 %47, 1
  store i32 %inc55, i32* @tests_failed, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.else53, %if.then50
  %48 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %tobool57 = icmp ne %Tstruct.json_value_t_t* %48, null
  br i1 %tobool57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end56
  %49 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %50 = ptrtoint %Tstruct.json_value_t_t* %49 to i32
  %51 = call i8* @c_fetch_pointer_from_offset(i32 %50)
  %52 = call i1 @c_isTaintedPointerToTaintedMem(i8* %51)
  br i1 %52, label %_Dynamic_check.succeeded60, label %_Dynamic_check.failed59

_Dynamic_check.succeeded60:                       ; preds = %if.then58
  %53 = bitcast i8* %51 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %53)
  br label %if.end61

_Dynamic_check.failed59:                          ; preds = %if.then58
  call void @llvm.trap() #6
  unreachable

if.end61:                                         ; preds = %_Dynamic_check.succeeded60, %if.end56
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.11, i64 0, i64 0))
  %call63 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call63, %Tstruct.json_value_t_t** %val_tainted, align 4
  %cmp64 = icmp ne %Tstruct.json_value_t_t* %call63, null
  br i1 %cmp64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.end61
  %call66 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32, i32* @tests_passed, align 4
  %inc67 = add nsw i32 %54, 1
  store i32 %inc67, i32* @tests_passed, align 4
  br label %if.end71

if.else68:                                        ; preds = %if.end61
  %call69 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %55 = load i32, i32* @tests_failed, align 4
  %inc70 = add nsw i32 %55, 1
  store i32 %inc70, i32* @tests_failed, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then65
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 124, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %56 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %57 = ptrtoint %Tstruct.json_value_t_t* %56 to i32
  %58 = call i8* @c_fetch_pointer_from_offset(i32 %57)
  %59 = call i1 @c_isTaintedPointerToTaintedMem(i8* %58)
  br i1 %59, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %if.end71
  %60 = bitcast i8* %58 to %Tstruct.json_value_t_t*
  %call75 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %60)
  %61 = ptrtoint i8* %call75 to i32
  %62 = call i8* @c_fetch_pointer_from_offset(i32 %61)
  %63 = call i1 @c_isTaintedPointerToTaintedMem(i8* %62)
  br i1 %63, label %_Dynamic_check.succeeded77, label %_Dynamic_check.failed76

_Dynamic_check.succeeded77:                       ; preds = %_Dynamic_check.succeeded74
  %call78 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %62)
  %64 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %65 = ptrtoint %Tstruct.json_value_t_t* %call78 to i32
  %66 = call i8* @c_fetch_pointer_from_offset(i32 %65)
  %67 = call i1 @c_isTaintedPointerToTaintedMem(i8* %66)
  br i1 %67, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %_Dynamic_check.succeeded77
  %68 = bitcast i8* %66 to %Tstruct.json_value_t_t*
  %69 = ptrtoint %Tstruct.json_value_t_t* %64 to i32
  %70 = call i8* @c_fetch_pointer_from_offset(i32 %69)
  %71 = call i1 @c_isTaintedPointerToTaintedMem(i8* %70)
  br i1 %71, label %_Dynamic_check.succeeded82, label %_Dynamic_check.failed81

_Dynamic_check.succeeded82:                       ; preds = %_Dynamic_check.succeeded80
  %72 = bitcast i8* %70 to %Tstruct.json_value_t_t*
  %call83 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %68, %Tstruct.json_value_t_t* %72)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else88

if.then85:                                        ; preds = %_Dynamic_check.succeeded82
  %call86 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @tests_passed, align 4
  %inc87 = add nsw i32 %73, 1
  store i32 %inc87, i32* @tests_passed, align 4
  br label %if.end91

_Dynamic_check.failed73:                          ; preds = %if.end71
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed76:                          ; preds = %_Dynamic_check.succeeded74
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed79:                          ; preds = %_Dynamic_check.succeeded77
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed81:                          ; preds = %_Dynamic_check.succeeded80
  call void @llvm.trap() #6
  unreachable

if.else88:                                        ; preds = %_Dynamic_check.succeeded82
  %call89 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32, i32* @tests_failed, align 4
  %inc90 = add nsw i32 %74, 1
  store i32 %inc90, i32* @tests_failed, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else88, %if.then85
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 125, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %75 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %76 = ptrtoint %Tstruct.json_value_t_t* %75 to i32
  %77 = call i8* @c_fetch_pointer_from_offset(i32 %76)
  %78 = call i1 @c_isTaintedPointerToTaintedMem(i8* %77)
  br i1 %78, label %_Dynamic_check.succeeded94, label %_Dynamic_check.failed93

_Dynamic_check.succeeded94:                       ; preds = %if.end91
  %79 = bitcast i8* %77 to %Tstruct.json_value_t_t*
  %call95 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %79)
  %80 = ptrtoint i8* %call95 to i32
  %81 = call i8* @c_fetch_pointer_from_offset(i32 %80)
  %82 = call i1 @c_isTaintedPointerToTaintedMem(i8* %81)
  br i1 %82, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %_Dynamic_check.succeeded94
  %call98 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %81)
  %83 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %84 = ptrtoint %Tstruct.json_value_t_t* %call98 to i32
  %85 = call i8* @c_fetch_pointer_from_offset(i32 %84)
  %86 = call i1 @c_isTaintedPointerToTaintedMem(i8* %85)
  br i1 %86, label %_Dynamic_check.succeeded100, label %_Dynamic_check.failed99

_Dynamic_check.succeeded100:                      ; preds = %_Dynamic_check.succeeded97
  %87 = bitcast i8* %85 to %Tstruct.json_value_t_t*
  %88 = ptrtoint %Tstruct.json_value_t_t* %83 to i32
  %89 = call i8* @c_fetch_pointer_from_offset(i32 %88)
  %90 = call i1 @c_isTaintedPointerToTaintedMem(i8* %89)
  br i1 %90, label %_Dynamic_check.succeeded102, label %_Dynamic_check.failed101

_Dynamic_check.succeeded102:                      ; preds = %_Dynamic_check.succeeded100
  %91 = bitcast i8* %89 to %Tstruct.json_value_t_t*
  %call103 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %87, %Tstruct.json_value_t_t* %91)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then105, label %if.else108

if.then105:                                       ; preds = %_Dynamic_check.succeeded102
  %call106 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %92 = load i32, i32* @tests_passed, align 4
  %inc107 = add nsw i32 %92, 1
  store i32 %inc107, i32* @tests_passed, align 4
  br label %if.end111

_Dynamic_check.failed93:                          ; preds = %if.end91
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed96:                          ; preds = %_Dynamic_check.succeeded94
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed99:                          ; preds = %_Dynamic_check.succeeded97
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed101:                         ; preds = %_Dynamic_check.succeeded100
  call void @llvm.trap() #6
  unreachable

if.else108:                                       ; preds = %_Dynamic_check.succeeded102
  %call109 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @tests_failed, align 4
  %inc110 = add nsw i32 %93, 1
  store i32 %inc110, i32* @tests_failed, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.else108, %if.then105
  %94 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %tobool112 = icmp ne %Tstruct.json_value_t_t* %94, null
  br i1 %tobool112, label %if.then113, label %if.end116

if.then113:                                       ; preds = %if.end111
  %95 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %96 = ptrtoint %Tstruct.json_value_t_t* %95 to i32
  %97 = call i8* @c_fetch_pointer_from_offset(i32 %96)
  %98 = call i1 @c_isTaintedPointerToTaintedMem(i8* %97)
  br i1 %98, label %_Dynamic_check.succeeded115, label %_Dynamic_check.failed114

_Dynamic_check.succeeded115:                      ; preds = %if.then113
  %99 = bitcast i8* %97 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %99)
  br label %if.end116

_Dynamic_check.failed114:                         ; preds = %if.then113
  call void @llvm.trap() #6
  unreachable

if.end116:                                        ; preds = %_Dynamic_check.succeeded115, %if.end111
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 129, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.13, i64 0, i64 0))
  %call118 = call %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), %Tstruct.json_value_t_t* (i8*, i64)* @parse_value)
  store %Tstruct.json_value_t_t* %call118, %Tstruct.json_value_t_t** %val_tainted, align 4
  %cmp119 = icmp ne %Tstruct.json_value_t_t* %call118, null
  br i1 %cmp119, label %if.then120, label %if.else123

if.then120:                                       ; preds = %if.end116
  %call121 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %100 = load i32, i32* @tests_passed, align 4
  %inc122 = add nsw i32 %100, 1
  store i32 %inc122, i32* @tests_passed, align 4
  br label %if.end126

if.else123:                                       ; preds = %if.end116
  %call124 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %101 = load i32, i32* @tests_failed, align 4
  %inc125 = add nsw i32 %101, 1
  store i32 %inc125, i32* @tests_failed, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else123, %if.then120
  %call127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 130, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %102 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %103 = ptrtoint %Tstruct.json_value_t_t* %102 to i32
  %104 = call i8* @c_fetch_pointer_from_offset(i32 %103)
  %105 = call i1 @c_isTaintedPointerToTaintedMem(i8* %104)
  br i1 %105, label %_Dynamic_check.succeeded129, label %_Dynamic_check.failed128

_Dynamic_check.succeeded129:                      ; preds = %if.end126
  %106 = bitcast i8* %104 to %Tstruct.json_value_t_t*
  %call130 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %106)
  %107 = ptrtoint i8* %call130 to i32
  %108 = call i8* @c_fetch_pointer_from_offset(i32 %107)
  %109 = call i1 @c_isTaintedPointerToTaintedMem(i8* %108)
  br i1 %109, label %_Dynamic_check.succeeded132, label %_Dynamic_check.failed131

_Dynamic_check.succeeded132:                      ; preds = %_Dynamic_check.succeeded129
  %call133 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %108)
  %110 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %111 = ptrtoint %Tstruct.json_value_t_t* %call133 to i32
  %112 = call i8* @c_fetch_pointer_from_offset(i32 %111)
  %113 = call i1 @c_isTaintedPointerToTaintedMem(i8* %112)
  br i1 %113, label %_Dynamic_check.succeeded135, label %_Dynamic_check.failed134

_Dynamic_check.succeeded135:                      ; preds = %_Dynamic_check.succeeded132
  %114 = bitcast i8* %112 to %Tstruct.json_value_t_t*
  %115 = ptrtoint %Tstruct.json_value_t_t* %110 to i32
  %116 = call i8* @c_fetch_pointer_from_offset(i32 %115)
  %117 = call i1 @c_isTaintedPointerToTaintedMem(i8* %116)
  br i1 %117, label %_Dynamic_check.succeeded137, label %_Dynamic_check.failed136

_Dynamic_check.succeeded137:                      ; preds = %_Dynamic_check.succeeded135
  %118 = bitcast i8* %116 to %Tstruct.json_value_t_t*
  %call138 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %114, %Tstruct.json_value_t_t* %118)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.then140, label %if.else143

if.then140:                                       ; preds = %_Dynamic_check.succeeded137
  %call141 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %119 = load i32, i32* @tests_passed, align 4
  %inc142 = add nsw i32 %119, 1
  store i32 %inc142, i32* @tests_passed, align 4
  br label %if.end146

_Dynamic_check.failed128:                         ; preds = %if.end126
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed131:                         ; preds = %_Dynamic_check.succeeded129
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed134:                         ; preds = %_Dynamic_check.succeeded132
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed136:                         ; preds = %_Dynamic_check.succeeded135
  call void @llvm.trap() #6
  unreachable

if.else143:                                       ; preds = %_Dynamic_check.succeeded137
  %call144 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %120 = load i32, i32* @tests_failed, align 4
  %inc145 = add nsw i32 %120, 1
  store i32 %inc145, i32* @tests_failed, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.else143, %if.then140
  %call147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 131, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %121 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %122 = ptrtoint %Tstruct.json_value_t_t* %121 to i32
  %123 = call i8* @c_fetch_pointer_from_offset(i32 %122)
  %124 = call i1 @c_isTaintedPointerToTaintedMem(i8* %123)
  br i1 %124, label %_Dynamic_check.succeeded149, label %_Dynamic_check.failed148

_Dynamic_check.succeeded149:                      ; preds = %if.end146
  %125 = bitcast i8* %123 to %Tstruct.json_value_t_t*
  %call150 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %125)
  %126 = ptrtoint i8* %call150 to i32
  %127 = call i8* @c_fetch_pointer_from_offset(i32 %126)
  %128 = call i1 @c_isTaintedPointerToTaintedMem(i8* %127)
  br i1 %128, label %_Dynamic_check.succeeded152, label %_Dynamic_check.failed151

_Dynamic_check.succeeded152:                      ; preds = %_Dynamic_check.succeeded149
  %call153 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %127)
  %129 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %130 = ptrtoint %Tstruct.json_value_t_t* %call153 to i32
  %131 = call i8* @c_fetch_pointer_from_offset(i32 %130)
  %132 = call i1 @c_isTaintedPointerToTaintedMem(i8* %131)
  br i1 %132, label %_Dynamic_check.succeeded155, label %_Dynamic_check.failed154

_Dynamic_check.succeeded155:                      ; preds = %_Dynamic_check.succeeded152
  %133 = bitcast i8* %131 to %Tstruct.json_value_t_t*
  %134 = ptrtoint %Tstruct.json_value_t_t* %129 to i32
  %135 = call i8* @c_fetch_pointer_from_offset(i32 %134)
  %136 = call i1 @c_isTaintedPointerToTaintedMem(i8* %135)
  br i1 %136, label %_Dynamic_check.succeeded157, label %_Dynamic_check.failed156

_Dynamic_check.succeeded157:                      ; preds = %_Dynamic_check.succeeded155
  %137 = bitcast i8* %135 to %Tstruct.json_value_t_t*
  %call158 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %133, %Tstruct.json_value_t_t* %137)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.then160, label %if.else163

if.then160:                                       ; preds = %_Dynamic_check.succeeded157
  %call161 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %138 = load i32, i32* @tests_passed, align 4
  %inc162 = add nsw i32 %138, 1
  store i32 %inc162, i32* @tests_passed, align 4
  br label %if.end166

_Dynamic_check.failed148:                         ; preds = %if.end146
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed151:                         ; preds = %_Dynamic_check.succeeded149
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed154:                         ; preds = %_Dynamic_check.succeeded152
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed156:                         ; preds = %_Dynamic_check.succeeded155
  call void @llvm.trap() #6
  unreachable

if.else163:                                       ; preds = %_Dynamic_check.succeeded157
  %call164 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* @tests_failed, align 4
  %inc165 = add nsw i32 %139, 1
  store i32 %inc165, i32* @tests_failed, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else163, %if.then160
  %140 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %tobool167 = icmp ne %Tstruct.json_value_t_t* %140, null
  br i1 %tobool167, label %if.then168, label %if.end171

if.then168:                                       ; preds = %if.end166
  %141 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %142 = ptrtoint %Tstruct.json_value_t_t* %141 to i32
  %143 = call i8* @c_fetch_pointer_from_offset(i32 %142)
  %144 = call i1 @c_isTaintedPointerToTaintedMem(i8* %143)
  br i1 %144, label %_Dynamic_check.succeeded170, label %_Dynamic_check.failed169

_Dynamic_check.succeeded170:                      ; preds = %if.then168
  %145 = bitcast i8* %143 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %145)
  br label %if.end171

_Dynamic_check.failed169:                         ; preds = %if.then168
  call void @llvm.trap() #6
  unreachable

if.end171:                                        ; preds = %_Dynamic_check.succeeded170, %if.end166
  %call172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 138, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.14, i64 0, i64 0))
  %call173 = call %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), %Tstruct.json_value_t_t* (i8*, i64)* @parse_value)
  store %Tstruct.json_value_t_t* %call173, %Tstruct.json_value_t_t** %val_tainted, align 4
  %cmp174 = icmp ne %Tstruct.json_value_t_t* %call173, null
  br i1 %cmp174, label %if.then175, label %if.else178

if.then175:                                       ; preds = %if.end171
  %call176 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %146 = load i32, i32* @tests_passed, align 4
  %inc177 = add nsw i32 %146, 1
  store i32 %inc177, i32* @tests_passed, align 4
  br label %if.end181

if.else178:                                       ; preds = %if.end171
  %call179 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* @tests_failed, align 4
  %inc180 = add nsw i32 %147, 1
  store i32 %inc180, i32* @tests_failed, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %call182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 139, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %148 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %149 = ptrtoint %Tstruct.json_value_t_t* %148 to i32
  %150 = call i8* @c_fetch_pointer_from_offset(i32 %149)
  %151 = call i1 @c_isTaintedPointerToTaintedMem(i8* %150)
  br i1 %151, label %_Dynamic_check.succeeded184, label %_Dynamic_check.failed183

_Dynamic_check.succeeded184:                      ; preds = %if.end181
  %152 = bitcast i8* %150 to %Tstruct.json_value_t_t*
  %call185 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %152)
  %153 = ptrtoint i8* %call185 to i32
  %154 = call i8* @c_fetch_pointer_from_offset(i32 %153)
  %155 = call i1 @c_isTaintedPointerToTaintedMem(i8* %154)
  br i1 %155, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %_Dynamic_check.succeeded184
  %call188 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %154)
  %156 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %157 = ptrtoint %Tstruct.json_value_t_t* %call188 to i32
  %158 = call i8* @c_fetch_pointer_from_offset(i32 %157)
  %159 = call i1 @c_isTaintedPointerToTaintedMem(i8* %158)
  br i1 %159, label %_Dynamic_check.succeeded190, label %_Dynamic_check.failed189

_Dynamic_check.succeeded190:                      ; preds = %_Dynamic_check.succeeded187
  %160 = bitcast i8* %158 to %Tstruct.json_value_t_t*
  %161 = ptrtoint %Tstruct.json_value_t_t* %156 to i32
  %162 = call i8* @c_fetch_pointer_from_offset(i32 %161)
  %163 = call i1 @c_isTaintedPointerToTaintedMem(i8* %162)
  br i1 %163, label %_Dynamic_check.succeeded192, label %_Dynamic_check.failed191

_Dynamic_check.succeeded192:                      ; preds = %_Dynamic_check.succeeded190
  %164 = bitcast i8* %162 to %Tstruct.json_value_t_t*
  %call193 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %160, %Tstruct.json_value_t_t* %164)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then195, label %if.else198

if.then195:                                       ; preds = %_Dynamic_check.succeeded192
  %call196 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %165 = load i32, i32* @tests_passed, align 4
  %inc197 = add nsw i32 %165, 1
  store i32 %inc197, i32* @tests_passed, align 4
  br label %if.end201

_Dynamic_check.failed183:                         ; preds = %if.end181
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed186:                         ; preds = %_Dynamic_check.succeeded184
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed189:                         ; preds = %_Dynamic_check.succeeded187
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed191:                         ; preds = %_Dynamic_check.succeeded190
  call void @llvm.trap() #6
  unreachable

if.else198:                                       ; preds = %_Dynamic_check.succeeded192
  %call199 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %166 = load i32, i32* @tests_failed, align 4
  %inc200 = add nsw i32 %166, 1
  store i32 %inc200, i32* @tests_failed, align 4
  br label %if.end201

if.end201:                                        ; preds = %if.else198, %if.then195
  %call202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 140, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  %167 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %168 = ptrtoint %Tstruct.json_value_t_t* %167 to i32
  %169 = call i8* @c_fetch_pointer_from_offset(i32 %168)
  %170 = call i1 @c_isTaintedPointerToTaintedMem(i8* %169)
  br i1 %170, label %_Dynamic_check.succeeded204, label %_Dynamic_check.failed203

_Dynamic_check.succeeded204:                      ; preds = %if.end201
  %171 = bitcast i8* %169 to %Tstruct.json_value_t_t*
  %call205 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %171)
  %172 = ptrtoint i8* %call205 to i32
  %173 = call i8* @c_fetch_pointer_from_offset(i32 %172)
  %174 = call i1 @c_isTaintedPointerToTaintedMem(i8* %173)
  br i1 %174, label %_Dynamic_check.succeeded207, label %_Dynamic_check.failed206

_Dynamic_check.succeeded207:                      ; preds = %_Dynamic_check.succeeded204
  %call208 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %173)
  %175 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %176 = ptrtoint %Tstruct.json_value_t_t* %call208 to i32
  %177 = call i8* @c_fetch_pointer_from_offset(i32 %176)
  %178 = call i1 @c_isTaintedPointerToTaintedMem(i8* %177)
  br i1 %178, label %_Dynamic_check.succeeded210, label %_Dynamic_check.failed209

_Dynamic_check.succeeded210:                      ; preds = %_Dynamic_check.succeeded207
  %179 = bitcast i8* %177 to %Tstruct.json_value_t_t*
  %180 = ptrtoint %Tstruct.json_value_t_t* %175 to i32
  %181 = call i8* @c_fetch_pointer_from_offset(i32 %180)
  %182 = call i1 @c_isTaintedPointerToTaintedMem(i8* %181)
  br i1 %182, label %_Dynamic_check.succeeded212, label %_Dynamic_check.failed211

_Dynamic_check.succeeded212:                      ; preds = %_Dynamic_check.succeeded210
  %183 = bitcast i8* %181 to %Tstruct.json_value_t_t*
  %call213 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %179, %Tstruct.json_value_t_t* %183)
  %tobool214 = icmp ne i32 %call213, 0
  br i1 %tobool214, label %if.then215, label %if.else218

if.then215:                                       ; preds = %_Dynamic_check.succeeded212
  %call216 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %184 = load i32, i32* @tests_passed, align 4
  %inc217 = add nsw i32 %184, 1
  store i32 %inc217, i32* @tests_passed, align 4
  br label %if.end221

_Dynamic_check.failed203:                         ; preds = %if.end201
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed206:                         ; preds = %_Dynamic_check.succeeded204
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed209:                         ; preds = %_Dynamic_check.succeeded207
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed211:                         ; preds = %_Dynamic_check.succeeded210
  call void @llvm.trap() #6
  unreachable

if.else218:                                       ; preds = %_Dynamic_check.succeeded212
  %call219 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %185 = load i32, i32* @tests_failed, align 4
  %inc220 = add nsw i32 %185, 1
  store i32 %inc220, i32* @tests_failed, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.else218, %if.then215
  %186 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %tobool222 = icmp ne %Tstruct.json_value_t_t* %186, null
  br i1 %tobool222, label %if.then223, label %if.end226

if.then223:                                       ; preds = %if.end221
  %187 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_tainted, align 4
  %188 = ptrtoint %Tstruct.json_value_t_t* %187 to i32
  %189 = call i8* @c_fetch_pointer_from_offset(i32 %188)
  %190 = call i1 @c_isTaintedPointerToTaintedMem(i8* %189)
  br i1 %190, label %_Dynamic_check.succeeded225, label %_Dynamic_check.failed224

_Dynamic_check.succeeded225:                      ; preds = %if.then223
  %191 = bitcast i8* %189 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %191)
  br label %if.end226

_Dynamic_check.failed224:                         ; preds = %if.then223
  call void @llvm.trap() #6
  unreachable

if.end226:                                        ; preds = %_Dynamic_check.succeeded225, %if.end221
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_2_no_comments() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 4
  %filename = alloca i8*, align 4
  %root_value = alloca %Tstruct.json_value_t_t*, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_tainted, align 4
  %call = call i8* @string_malloc(i64 100)
  store i8* %call, i8** %filename, align 4
  %0 = load i8*, i8** %filename, align 4
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([57 x i8]* @.str.120 to i64))
  %call1 = call i8* @t_strcpy(i8* %2, i8* %3)
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %root_value, align 4
  %call2 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call2, %Tstruct.json_value_t_t** %root_value, align 4
  %4 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %5 = ptrtoint %Tstruct.json_value_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %8 = bitcast i8* %6 to %Tstruct.json_value_t_t*
  call void @test_suite_2(%Tstruct.json_value_t_t* %8)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 317, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.121, i64 0, i64 0))
  %9 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %10 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %11 = ptrtoint %Tstruct.json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.json_value_t_t*
  %call6 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %14)
  %15 = ptrtoint i8* %call6 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded5
  %call9 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %16)
  %18 = ptrtoint %Tstruct.json_value_t_t* %9 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %21 = bitcast i8* %19 to %Tstruct.json_value_t_t*
  %22 = ptrtoint %Tstruct.json_value_t_t* %call9 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %25 = bitcast i8* %23 to %Tstruct.json_value_t_t*
  %call14 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %21, %Tstruct.json_value_t_t* %25)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded13
  %call15 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %26 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded13
  %call16 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %27 = load i32, i32* @tests_failed, align 4
  %inc17 = add nsw i32 %27, 1
  store i32 %inc17, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 318, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.122, i64 0, i64 0))
  %28 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %29 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %30 = ptrtoint %Tstruct.json_value_t_t* %29 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %if.end
  %33 = bitcast i8* %31 to %Tstruct.json_value_t_t*
  %call21 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %33)
  %34 = ptrtoint i8* %call21 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded20
  %call24 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %35)
  %37 = ptrtoint %Tstruct.json_value_t_t* %28 to i32
  %38 = call i8* @c_fetch_pointer_from_offset(i32 %37)
  %39 = call i1 @c_isTaintedPointerToTaintedMem(i8* %38)
  br i1 %39, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded23
  %40 = bitcast i8* %38 to %Tstruct.json_value_t_t*
  %41 = ptrtoint %Tstruct.json_value_t_t* %call24 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %44 = bitcast i8* %42 to %Tstruct.json_value_t_t*
  %call29 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %40, %Tstruct.json_value_t_t* %44)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %call32 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %45, 1
  store i32 %inc33, i32* @tests_passed, align 4
  br label %if.end37

_Dynamic_check.failed19:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #6
  unreachable

if.else34:                                        ; preds = %_Dynamic_check.succeeded28
  %call35 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %46 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %46, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %47 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %48 = ptrtoint %Tstruct.json_value_t_t* %47 to i32
  %49 = call i8* @c_fetch_pointer_from_offset(i32 %48)
  %50 = call i1 @c_isTaintedPointerToTaintedMem(i8* %49)
  br i1 %50, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %if.end37
  %51 = bitcast i8* %49 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %51)
  ret void

_Dynamic_check.failed38:                          ; preds = %if.end37
  call void @llvm.trap() #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_2_with_comments() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 4
  %filename = alloca i8*, align 4
  %root_value = alloca %Tstruct.json_value_t_t*, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_tainted, align 4
  %call = call i8* @string_malloc(i64 100)
  store i8* %call, i8** %filename, align 4
  %0 = load i8*, i8** %filename, align 4
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([66 x i8]* @.str.123 to i64))
  %call1 = call i8* @t_strcpy(i8* %2, i8* %3)
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %root_value, align 4
  %call2 = call %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.123, i64 0, i64 0), %Tstruct.json_value_t_t* (i8*, i64)* @parse_value)
  store %Tstruct.json_value_t_t* %call2, %Tstruct.json_value_t_t** %root_value, align 4
  %4 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %5 = ptrtoint %Tstruct.json_value_t_t* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %8 = bitcast i8* %6 to %Tstruct.json_value_t_t*
  call void @test_suite_2(%Tstruct.json_value_t_t* %8)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.121, i64 0, i64 0))
  %9 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %10 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %11 = ptrtoint %Tstruct.json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.json_value_t_t*
  %call6 = call i8* @json_serialize_to_string(%Tstruct.json_value_t_t* %14)
  %15 = ptrtoint i8* %call6 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded8, label %_Dynamic_check.failed7

_Dynamic_check.succeeded8:                        ; preds = %_Dynamic_check.succeeded5
  %call9 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %16)
  %18 = ptrtoint %Tstruct.json_value_t_t* %9 to i32
  %19 = call i8* @c_fetch_pointer_from_offset(i32 %18)
  %20 = call i1 @c_isTaintedPointerToTaintedMem(i8* %19)
  br i1 %20, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %_Dynamic_check.succeeded8
  %21 = bitcast i8* %19 to %Tstruct.json_value_t_t*
  %22 = ptrtoint %Tstruct.json_value_t_t* %call9 to i32
  %23 = call i8* @c_fetch_pointer_from_offset(i32 %22)
  %24 = call i1 @c_isTaintedPointerToTaintedMem(i8* %23)
  br i1 %24, label %_Dynamic_check.succeeded13, label %_Dynamic_check.failed12

_Dynamic_check.succeeded13:                       ; preds = %_Dynamic_check.succeeded11
  %25 = bitcast i8* %23 to %Tstruct.json_value_t_t*
  %call14 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %21, %Tstruct.json_value_t_t* %25)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded13
  %call15 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %26 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed7:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed10:                          ; preds = %_Dynamic_check.succeeded8
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed12:                          ; preds = %_Dynamic_check.succeeded11
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded13
  %call16 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %27 = load i32, i32* @tests_failed, align 4
  %inc17 = add nsw i32 %27, 1
  store i32 %inc17, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 330, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.122, i64 0, i64 0))
  %28 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %29 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %30 = ptrtoint %Tstruct.json_value_t_t* %29 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %if.end
  %33 = bitcast i8* %31 to %Tstruct.json_value_t_t*
  %call21 = call i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t* %33)
  %34 = ptrtoint i8* %call21 to i32
  %35 = call i8* @c_fetch_pointer_from_offset(i32 %34)
  %36 = call i1 @c_isTaintedPointerToTaintedMem(i8* %35)
  br i1 %36, label %_Dynamic_check.succeeded23, label %_Dynamic_check.failed22

_Dynamic_check.succeeded23:                       ; preds = %_Dynamic_check.succeeded20
  %call24 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %35)
  %37 = ptrtoint %Tstruct.json_value_t_t* %28 to i32
  %38 = call i8* @c_fetch_pointer_from_offset(i32 %37)
  %39 = call i1 @c_isTaintedPointerToTaintedMem(i8* %38)
  br i1 %39, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded23
  %40 = bitcast i8* %38 to %Tstruct.json_value_t_t*
  %41 = ptrtoint %Tstruct.json_value_t_t* %call24 to i32
  %42 = call i8* @c_fetch_pointer_from_offset(i32 %41)
  %43 = call i1 @c_isTaintedPointerToTaintedMem(i8* %42)
  br i1 %43, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %44 = bitcast i8* %42 to %Tstruct.json_value_t_t*
  %call29 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %40, %Tstruct.json_value_t_t* %44)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %call32 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %45 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %45, 1
  store i32 %inc33, i32* @tests_passed, align 4
  br label %if.end37

_Dynamic_check.failed19:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed22:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded23
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #6
  unreachable

if.else34:                                        ; preds = %_Dynamic_check.succeeded28
  %call35 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %46 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %46, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %47 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value, align 4
  %48 = ptrtoint %Tstruct.json_value_t_t* %47 to i32
  %49 = call i8* @c_fetch_pointer_from_offset(i32 %48)
  %50 = call i1 @c_isTaintedPointerToTaintedMem(i8* %49)
  br i1 %50, label %_Dynamic_check.succeeded39, label %_Dynamic_check.failed38

_Dynamic_check.succeeded39:                       ; preds = %if.end37
  %51 = bitcast i8* %49 to %Tstruct.json_value_t_t*
  call void @json_value_free(%Tstruct.json_value_t_t* %51)
  ret void

_Dynamic_check.failed38:                          ; preds = %if.end37
  call void @llvm.trap() #6
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_3() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 4
  %filename = alloca i8*, align 4
  %temp_string = alloca i8*, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_tainted, align 4
  %call = call i8* @string_malloc(i64 100)
  store i8* %call, i8** %filename, align 4
  %call1 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.124, i64 0, i64 0))
  %0 = load i8*, i8** %filename, align 4
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([18 x i8]* @.str.125 to i64))
  %call2 = call i8* @t_strcpy(i8* %2, i8* %3)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 340, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %4 = load i8*, i8** %filename, align 4
  %5 = ptrtoint i8* %4 to i32
  %6 = call i8* @c_fetch_pointer_from_offset(i32 %5)
  %7 = call i1 @c_isTaintedPointerToTaintedMem(i8* %6)
  br i1 %7, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call4 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %6)
  %cmp = icmp ne %Tstruct.json_value_t_t* %call4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded
  %call5 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %8 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded
  %call6 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %9 = load i32, i32* @tests_failed, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i8*, i8** %filename, align 4
  %11 = ptrtoint i8* %10 to i64
  %12 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %11)
  %13 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.127 to i64))
  %call8 = call i8* @t_strcpy(i8* %12, i8* %13)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 342, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %14 = load i8*, i8** %filename, align 4
  %15 = ptrtoint i8* %14 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded11, label %_Dynamic_check.failed10

_Dynamic_check.succeeded11:                       ; preds = %if.end
  %call12 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %16)
  %cmp13 = icmp ne %Tstruct.json_value_t_t* %call12, null
  br i1 %cmp13, label %if.then14, label %if.else17

if.then14:                                        ; preds = %_Dynamic_check.succeeded11
  %call15 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %18 = load i32, i32* @tests_passed, align 4
  %inc16 = add nsw i32 %18, 1
  store i32 %inc16, i32* @tests_passed, align 4
  br label %if.end20

_Dynamic_check.failed10:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else17:                                        ; preds = %_Dynamic_check.succeeded11
  %call18 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %19 = load i32, i32* @tests_failed, align 4
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, i32* @tests_failed, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then14
  %20 = load i8*, i8** %filename, align 4
  %21 = ptrtoint i8* %20 to i64
  %22 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %21)
  %23 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.35 to i64))
  %call21 = call i8* @t_strcpy(i8* %22, i8* %23)
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 344, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %24 = load i8*, i8** %filename, align 4
  %25 = ptrtoint i8* %24 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end20
  %call25 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %26)
  %cmp26 = icmp ne %Tstruct.json_value_t_t* %call25, null
  br i1 %cmp26, label %if.then27, label %if.else30

if.then27:                                        ; preds = %_Dynamic_check.succeeded24
  %call28 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* @tests_passed, align 4
  %inc29 = add nsw i32 %28, 1
  store i32 %inc29, i32* @tests_passed, align 4
  br label %if.end33

_Dynamic_check.failed23:                          ; preds = %if.end20
  call void @llvm.trap() #6
  unreachable

if.else30:                                        ; preds = %_Dynamic_check.succeeded24
  %call31 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %29 = load i32, i32* @tests_failed, align 4
  %inc32 = add nsw i32 %29, 1
  store i32 %inc32, i32* @tests_failed, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then27
  %30 = load i8*, i8** %filename, align 4
  %31 = ptrtoint i8* %30 to i64
  %32 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %31)
  %33 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.128 to i64))
  %call34 = call i8* @t_strcpy(i8* %32, i8* %33)
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 346, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %34 = load i8*, i8** %filename, align 4
  %35 = ptrtoint i8* %34 to i32
  %36 = call i8* @c_fetch_pointer_from_offset(i32 %35)
  %37 = call i1 @c_isTaintedPointerToTaintedMem(i8* %36)
  br i1 %37, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %if.end33
  %call38 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %36)
  %cmp39 = icmp ne %Tstruct.json_value_t_t* %call38, null
  br i1 %cmp39, label %if.then40, label %if.else43

if.then40:                                        ; preds = %_Dynamic_check.succeeded37
  %call41 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %38 = load i32, i32* @tests_passed, align 4
  %inc42 = add nsw i32 %38, 1
  store i32 %inc42, i32* @tests_passed, align 4
  br label %if.end46

_Dynamic_check.failed36:                          ; preds = %if.end33
  call void @llvm.trap() #6
  unreachable

if.else43:                                        ; preds = %_Dynamic_check.succeeded37
  %call44 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %39 = load i32, i32* @tests_failed, align 4
  %inc45 = add nsw i32 %39, 1
  store i32 %inc45, i32* @tests_failed, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then40
  %40 = load i8*, i8** %filename, align 4
  %41 = ptrtoint i8* %40 to i64
  %42 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %41)
  %43 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.129 to i64))
  %call47 = call i8* @t_strcpy(i8* %42, i8* %43)
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 348, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %44 = load i8*, i8** %filename, align 4
  %45 = ptrtoint i8* %44 to i32
  %46 = call i8* @c_fetch_pointer_from_offset(i32 %45)
  %47 = call i1 @c_isTaintedPointerToTaintedMem(i8* %46)
  br i1 %47, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %if.end46
  %call51 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %46)
  %cmp52 = icmp ne %Tstruct.json_value_t_t* %call51, null
  br i1 %cmp52, label %if.then53, label %if.else56

if.then53:                                        ; preds = %_Dynamic_check.succeeded50
  %call54 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32, i32* @tests_passed, align 4
  %inc55 = add nsw i32 %48, 1
  store i32 %inc55, i32* @tests_passed, align 4
  br label %if.end59

_Dynamic_check.failed49:                          ; preds = %if.end46
  call void @llvm.trap() #6
  unreachable

if.else56:                                        ; preds = %_Dynamic_check.succeeded50
  %call57 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i32, i32* @tests_failed, align 4
  %inc58 = add nsw i32 %49, 1
  store i32 %inc58, i32* @tests_failed, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.then53
  %50 = load i8*, i8** %filename, align 4
  %51 = ptrtoint i8* %50 to i64
  %52 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %51)
  %53 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([9 x i8]* @.str.130 to i64))
  %call60 = call i8* @t_strcpy(i8* %52, i8* %53)
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 350, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %54 = load i8*, i8** %filename, align 4
  %55 = ptrtoint i8* %54 to i32
  %56 = call i8* @c_fetch_pointer_from_offset(i32 %55)
  %57 = call i1 @c_isTaintedPointerToTaintedMem(i8* %56)
  br i1 %57, label %_Dynamic_check.succeeded63, label %_Dynamic_check.failed62

_Dynamic_check.succeeded63:                       ; preds = %if.end59
  %call64 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %56)
  %cmp65 = icmp ne %Tstruct.json_value_t_t* %call64, null
  br i1 %cmp65, label %if.then66, label %if.else69

if.then66:                                        ; preds = %_Dynamic_check.succeeded63
  %call67 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @tests_passed, align 4
  %inc68 = add nsw i32 %58, 1
  store i32 %inc68, i32* @tests_passed, align 4
  br label %if.end72

_Dynamic_check.failed62:                          ; preds = %if.end59
  call void @llvm.trap() #6
  unreachable

if.else69:                                        ; preds = %_Dynamic_check.succeeded63
  %call70 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32, i32* @tests_failed, align 4
  %inc71 = add nsw i32 %59, 1
  store i32 %inc71, i32* @tests_failed, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.else69, %if.then66
  %60 = load i8*, i8** %filename, align 4
  %61 = ptrtoint i8* %60 to i64
  %62 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %61)
  %63 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.131 to i64))
  %call73 = call i8* @t_strcpy(i8* %62, i8* %63)
  %call74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 352, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.126, i64 0, i64 0))
  %64 = load i8*, i8** %filename, align 4
  %65 = ptrtoint i8* %64 to i32
  %66 = call i8* @c_fetch_pointer_from_offset(i32 %65)
  %67 = call i1 @c_isTaintedPointerToTaintedMem(i8* %66)
  br i1 %67, label %_Dynamic_check.succeeded76, label %_Dynamic_check.failed75

_Dynamic_check.succeeded76:                       ; preds = %if.end72
  %call77 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %66)
  %cmp78 = icmp ne %Tstruct.json_value_t_t* %call77, null
  br i1 %cmp78, label %if.then79, label %if.else82

if.then79:                                        ; preds = %_Dynamic_check.succeeded76
  %call80 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %68 = load i32, i32* @tests_passed, align 4
  %inc81 = add nsw i32 %68, 1
  store i32 %inc81, i32* @tests_passed, align 4
  br label %if.end85

_Dynamic_check.failed75:                          ; preds = %if.end72
  call void @llvm.trap() #6
  unreachable

if.else82:                                        ; preds = %_Dynamic_check.succeeded76
  %call83 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32, i32* @tests_failed, align 4
  %inc84 = add nsw i32 %69, 1
  store i32 %inc84, i32* @tests_failed, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then79
  %call86 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.132, i64 0, i64 0))
  %70 = load i8*, i8** %filename, align 4
  %71 = ptrtoint i8* %70 to i64
  %72 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %71)
  %73 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.133 to i64))
  %call87 = call i8* @t_strcpy(i8* %72, i8* %73)
  %74 = load i8*, i8** %filename, align 4
  %75 = ptrtoint i8* %74 to i32
  %76 = call i8* @c_fetch_pointer_from_offset(i32 %75)
  %77 = call i1 @c_isTaintedPointerToTaintedMem(i8* %76)
  br i1 %77, label %_Dynamic_check.succeeded89, label %_Dynamic_check.failed88

_Dynamic_check.succeeded89:                       ; preds = %if.end85
  %call90 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %76)
  %78 = ptrtoint %Tstruct.json_value_t_t* %call90 to i32
  %79 = call i8* @c_fetch_pointer_from_offset(i32 %78)
  %80 = call i1 @c_isTaintedPointerToTaintedMem(i8* %79)
  br i1 %80, label %_Dynamic_check.succeeded92, label %_Dynamic_check.failed91

_Dynamic_check.succeeded92:                       ; preds = %_Dynamic_check.succeeded89
  %81 = bitcast i8* %79 to %Tstruct.json_value_t_t*
  %call93 = call i8* @json_string(%Tstruct.json_value_t_t* %81)
  store i8* %call93, i8** %temp_string, align 4
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 357, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.134, i64 0, i64 0))
  %82 = load i8*, i8** %temp_string, align 4
  %tobool = icmp ne i8* %82, null
  br i1 %tobool, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded92
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %83 = load i8*, i8** %temp_string, align 4
  %84 = ptrtoint i8* %83 to i64
  %85 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %84)
  %86 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.135 to i64))
  %call95 = call i32 @t_strcmp(i8* %85, i8* %86)
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.else100

cond.false:                                       ; preds = %land.lhs.true, %_Dynamic_check.succeeded92
  br i1 false, label %if.then97, label %if.else100

if.then97:                                        ; preds = %cond.false, %cond.true
  %call98 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* @tests_passed, align 4
  %inc99 = add nsw i32 %87, 1
  store i32 %inc99, i32* @tests_passed, align 4
  br label %if.end103

_Dynamic_check.failed88:                          ; preds = %if.end85
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed91:                          ; preds = %_Dynamic_check.succeeded89
  call void @llvm.trap() #6
  unreachable

if.else100:                                       ; preds = %cond.false, %cond.true
  %call101 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %88 = load i32, i32* @tests_failed, align 4
  %inc102 = add nsw i32 %88, 1
  store i32 %inc102, i32* @tests_failed, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then97
  %89 = load i8*, i8** %filename, align 4
  %90 = ptrtoint i8* %89 to i64
  %91 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %90)
  %92 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.136 to i64))
  %call104 = call i8* @t_strcpy(i8* %91, i8* %92)
  %93 = load i8*, i8** %filename, align 4
  %94 = ptrtoint i8* %93 to i32
  %95 = call i8* @c_fetch_pointer_from_offset(i32 %94)
  %96 = call i1 @c_isTaintedPointerToTaintedMem(i8* %95)
  br i1 %96, label %_Dynamic_check.succeeded106, label %_Dynamic_check.failed105

_Dynamic_check.succeeded106:                      ; preds = %if.end103
  %call107 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %95)
  %97 = ptrtoint %Tstruct.json_value_t_t* %call107 to i32
  %98 = call i8* @c_fetch_pointer_from_offset(i32 %97)
  %99 = call i1 @c_isTaintedPointerToTaintedMem(i8* %98)
  br i1 %99, label %_Dynamic_check.succeeded109, label %_Dynamic_check.failed108

_Dynamic_check.succeeded109:                      ; preds = %_Dynamic_check.succeeded106
  %100 = bitcast i8* %98 to %Tstruct.json_value_t_t*
  %call110 = call i8* @json_string(%Tstruct.json_value_t_t* %100)
  store i8* %call110, i8** %temp_string, align 4
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 360, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.137, i64 0, i64 0))
  %101 = load i8*, i8** %temp_string, align 4
  %tobool112 = icmp ne i8* %101, null
  br i1 %tobool112, label %land.lhs.true113, label %cond.false117

land.lhs.true113:                                 ; preds = %_Dynamic_check.succeeded109
  br i1 true, label %cond.true114, label %cond.false117

cond.true114:                                     ; preds = %land.lhs.true113
  %102 = load i8*, i8** %temp_string, align 4
  %103 = ptrtoint i8* %102 to i64
  %104 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %103)
  %105 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.138 to i64))
  %call115 = call i32 @t_strcmp(i8* %104, i8* %105)
  %cmp116 = icmp eq i32 %call115, 0
  br i1 %cmp116, label %if.then118, label %if.else121

cond.false117:                                    ; preds = %land.lhs.true113, %_Dynamic_check.succeeded109
  br i1 false, label %if.then118, label %if.else121

if.then118:                                       ; preds = %cond.false117, %cond.true114
  %call119 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %106 = load i32, i32* @tests_passed, align 4
  %inc120 = add nsw i32 %106, 1
  store i32 %inc120, i32* @tests_passed, align 4
  br label %if.end124

_Dynamic_check.failed105:                         ; preds = %if.end103
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed108:                         ; preds = %_Dynamic_check.succeeded106
  call void @llvm.trap() #6
  unreachable

if.else121:                                       ; preds = %cond.false117, %cond.true114
  %call122 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %107 = load i32, i32* @tests_failed, align 4
  %inc123 = add nsw i32 %107, 1
  store i32 %inc123, i32* @tests_failed, align 4
  br label %if.end124

if.end124:                                        ; preds = %if.else121, %if.then118
  %108 = load i8*, i8** %filename, align 4
  %109 = ptrtoint i8* %108 to i64
  %110 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %109)
  %111 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.139 to i64))
  %call125 = call i8* @t_strcpy(i8* %110, i8* %111)
  %112 = load i8*, i8** %filename, align 4
  %113 = ptrtoint i8* %112 to i32
  %114 = call i8* @c_fetch_pointer_from_offset(i32 %113)
  %115 = call i1 @c_isTaintedPointerToTaintedMem(i8* %114)
  br i1 %115, label %_Dynamic_check.succeeded127, label %_Dynamic_check.failed126

_Dynamic_check.succeeded127:                      ; preds = %if.end124
  %call128 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %114)
  %116 = ptrtoint %Tstruct.json_value_t_t* %call128 to i32
  %117 = call i8* @c_fetch_pointer_from_offset(i32 %116)
  %118 = call i1 @c_isTaintedPointerToTaintedMem(i8* %117)
  br i1 %118, label %_Dynamic_check.succeeded130, label %_Dynamic_check.failed129

_Dynamic_check.succeeded130:                      ; preds = %_Dynamic_check.succeeded127
  %119 = bitcast i8* %117 to %Tstruct.json_value_t_t*
  %call131 = call i8* @json_string(%Tstruct.json_value_t_t* %119)
  store i8* %call131, i8** %temp_string, align 4
  %call132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 363, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.140, i64 0, i64 0))
  %120 = load i8*, i8** %temp_string, align 4
  %tobool133 = icmp ne i8* %120, null
  br i1 %tobool133, label %land.lhs.true134, label %cond.false138

land.lhs.true134:                                 ; preds = %_Dynamic_check.succeeded130
  br i1 true, label %cond.true135, label %cond.false138

cond.true135:                                     ; preds = %land.lhs.true134
  %121 = load i8*, i8** %temp_string, align 4
  %122 = ptrtoint i8* %121 to i64
  %123 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %122)
  %124 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.141 to i64))
  %call136 = call i32 @t_strcmp(i8* %123, i8* %124)
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.then139, label %if.else142

cond.false138:                                    ; preds = %land.lhs.true134, %_Dynamic_check.succeeded130
  br i1 false, label %if.then139, label %if.else142

if.then139:                                       ; preds = %cond.false138, %cond.true135
  %call140 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* @tests_passed, align 4
  %inc141 = add nsw i32 %125, 1
  store i32 %inc141, i32* @tests_passed, align 4
  br label %if.end145

_Dynamic_check.failed126:                         ; preds = %if.end124
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed129:                         ; preds = %_Dynamic_check.succeeded127
  call void @llvm.trap() #6
  unreachable

if.else142:                                       ; preds = %cond.false138, %cond.true135
  %call143 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i32, i32* @tests_failed, align 4
  %inc144 = add nsw i32 %126, 1
  store i32 %inc144, i32* @tests_failed, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.else142, %if.then139
  %127 = load i8*, i8** %filename, align 4
  %128 = ptrtoint i8* %127 to i64
  %129 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %128)
  %130 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.142 to i64))
  %call146 = call i8* @t_strcpy(i8* %129, i8* %130)
  %131 = load i8*, i8** %filename, align 4
  %132 = ptrtoint i8* %131 to i32
  %133 = call i8* @c_fetch_pointer_from_offset(i32 %132)
  %134 = call i1 @c_isTaintedPointerToTaintedMem(i8* %133)
  br i1 %134, label %_Dynamic_check.succeeded148, label %_Dynamic_check.failed147

_Dynamic_check.succeeded148:                      ; preds = %if.end145
  %call149 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %133)
  %135 = ptrtoint %Tstruct.json_value_t_t* %call149 to i32
  %136 = call i8* @c_fetch_pointer_from_offset(i32 %135)
  %137 = call i1 @c_isTaintedPointerToTaintedMem(i8* %136)
  br i1 %137, label %_Dynamic_check.succeeded151, label %_Dynamic_check.failed150

_Dynamic_check.succeeded151:                      ; preds = %_Dynamic_check.succeeded148
  %138 = bitcast i8* %136 to %Tstruct.json_value_t_t*
  %call152 = call i8* @json_string(%Tstruct.json_value_t_t* %138)
  store i8* %call152, i8** %temp_string, align 4
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 366, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.143, i64 0, i64 0))
  %139 = load i8*, i8** %temp_string, align 4
  %tobool154 = icmp ne i8* %139, null
  br i1 %tobool154, label %land.lhs.true155, label %cond.false159

land.lhs.true155:                                 ; preds = %_Dynamic_check.succeeded151
  br i1 true, label %cond.true156, label %cond.false159

cond.true156:                                     ; preds = %land.lhs.true155
  %140 = load i8*, i8** %temp_string, align 4
  %141 = ptrtoint i8* %140 to i64
  %142 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %141)
  %143 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.144 to i64))
  %call157 = call i32 @t_strcmp(i8* %142, i8* %143)
  %cmp158 = icmp eq i32 %call157, 0
  br i1 %cmp158, label %if.then160, label %if.else163

cond.false159:                                    ; preds = %land.lhs.true155, %_Dynamic_check.succeeded151
  br i1 false, label %if.then160, label %if.else163

if.then160:                                       ; preds = %cond.false159, %cond.true156
  %call161 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %144 = load i32, i32* @tests_passed, align 4
  %inc162 = add nsw i32 %144, 1
  store i32 %inc162, i32* @tests_passed, align 4
  br label %if.end166

_Dynamic_check.failed147:                         ; preds = %if.end145
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed150:                         ; preds = %_Dynamic_check.succeeded148
  call void @llvm.trap() #6
  unreachable

if.else163:                                       ; preds = %cond.false159, %cond.true156
  %call164 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %145 = load i32, i32* @tests_failed, align 4
  %inc165 = add nsw i32 %145, 1
  store i32 %inc165, i32* @tests_failed, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else163, %if.then160
  %call167 = call i32 @puts(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.145, i64 0, i64 0))
  store i32 0, i32* @malloc_count, align 4
  %call168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 370, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.146, i64 0, i64 0))
  %146 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %147 = call i1 @c_isTaintedPointerToTaintedMem(i8* %146)
  br i1 %147, label %_Dynamic_check.succeeded170, label %_Dynamic_check.failed169

_Dynamic_check.succeeded170:                      ; preds = %if.end166
  %call171 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %146)
  %cmp172 = icmp eq %Tstruct.json_value_t_t* %call171, null
  br i1 %cmp172, label %if.then173, label %if.else176

if.then173:                                       ; preds = %_Dynamic_check.succeeded170
  %call174 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* @tests_passed, align 4
  %inc175 = add nsw i32 %148, 1
  store i32 %inc175, i32* @tests_passed, align 4
  br label %if.end179

_Dynamic_check.failed169:                         ; preds = %if.end166
  call void @llvm.trap() #6
  unreachable

if.else176:                                       ; preds = %_Dynamic_check.succeeded170
  %call177 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %149 = load i32, i32* @tests_failed, align 4
  %inc178 = add nsw i32 %149, 1
  store i32 %inc178, i32* @tests_failed, align 4
  br label %if.end179

if.end179:                                        ; preds = %if.else176, %if.then173
  %150 = load i8*, i8** %filename, align 4
  %151 = ptrtoint i8* %150 to i64
  %152 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %151)
  %153 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([1 x i8]* @.str.97 to i64))
  %call180 = call i8* @t_strcpy(i8* %152, i8* %153)
  %call181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 372, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %154 = load i8*, i8** %filename, align 4
  %155 = ptrtoint i8* %154 to i32
  %156 = call i8* @c_fetch_pointer_from_offset(i32 %155)
  %157 = call i1 @c_isTaintedPointerToTaintedMem(i8* %156)
  br i1 %157, label %_Dynamic_check.succeeded183, label %_Dynamic_check.failed182

_Dynamic_check.succeeded183:                      ; preds = %if.end179
  %call184 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %156)
  %cmp185 = icmp eq %Tstruct.json_value_t_t* %call184, null
  br i1 %cmp185, label %if.then186, label %if.else189

if.then186:                                       ; preds = %_Dynamic_check.succeeded183
  %call187 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %158 = load i32, i32* @tests_passed, align 4
  %inc188 = add nsw i32 %158, 1
  store i32 %inc188, i32* @tests_passed, align 4
  br label %if.end192

_Dynamic_check.failed182:                         ; preds = %if.end179
  call void @llvm.trap() #6
  unreachable

if.else189:                                       ; preds = %_Dynamic_check.succeeded183
  %call190 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %159 = load i32, i32* @tests_failed, align 4
  %inc191 = add nsw i32 %159, 1
  store i32 %inc191, i32* @tests_failed, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.else189, %if.then186
  %160 = load i8*, i8** %filename, align 4
  %161 = ptrtoint i8* %160 to i64
  %162 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %161)
  %163 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.148 to i64))
  %call193 = call i8* @t_strcpy(i8* %162, i8* %163)
  %call194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 374, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %164 = load i8*, i8** %filename, align 4
  %165 = ptrtoint i8* %164 to i32
  %166 = call i8* @c_fetch_pointer_from_offset(i32 %165)
  %167 = call i1 @c_isTaintedPointerToTaintedMem(i8* %166)
  br i1 %167, label %_Dynamic_check.succeeded196, label %_Dynamic_check.failed195

_Dynamic_check.succeeded196:                      ; preds = %if.end192
  %call197 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %166)
  %cmp198 = icmp eq %Tstruct.json_value_t_t* %call197, null
  br i1 %cmp198, label %if.then199, label %if.else202

if.then199:                                       ; preds = %_Dynamic_check.succeeded196
  %call200 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %168 = load i32, i32* @tests_passed, align 4
  %inc201 = add nsw i32 %168, 1
  store i32 %inc201, i32* @tests_passed, align 4
  br label %if.end205

_Dynamic_check.failed195:                         ; preds = %if.end192
  call void @llvm.trap() #6
  unreachable

if.else202:                                       ; preds = %_Dynamic_check.succeeded196
  %call203 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %169 = load i32, i32* @tests_failed, align 4
  %inc204 = add nsw i32 %169, 1
  store i32 %inc204, i32* @tests_failed, align 4
  br label %if.end205

if.end205:                                        ; preds = %if.else202, %if.then199
  %170 = load i8*, i8** %filename, align 4
  %171 = ptrtoint i8* %170 to i64
  %172 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %171)
  %173 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.149 to i64))
  %call206 = call i8* @t_strcpy(i8* %172, i8* %173)
  %call207 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 376, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %174 = load i8*, i8** %filename, align 4
  %175 = ptrtoint i8* %174 to i32
  %176 = call i8* @c_fetch_pointer_from_offset(i32 %175)
  %177 = call i1 @c_isTaintedPointerToTaintedMem(i8* %176)
  br i1 %177, label %_Dynamic_check.succeeded209, label %_Dynamic_check.failed208

_Dynamic_check.succeeded209:                      ; preds = %if.end205
  %call210 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %176)
  %cmp211 = icmp eq %Tstruct.json_value_t_t* %call210, null
  br i1 %cmp211, label %if.then212, label %if.else215

if.then212:                                       ; preds = %_Dynamic_check.succeeded209
  %call213 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %178 = load i32, i32* @tests_passed, align 4
  %inc214 = add nsw i32 %178, 1
  store i32 %inc214, i32* @tests_passed, align 4
  br label %if.end218

_Dynamic_check.failed208:                         ; preds = %if.end205
  call void @llvm.trap() #6
  unreachable

if.else215:                                       ; preds = %_Dynamic_check.succeeded209
  %call216 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %179 = load i32, i32* @tests_failed, align 4
  %inc217 = add nsw i32 %179, 1
  store i32 %inc217, i32* @tests_failed, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.else215, %if.then212
  %180 = load i8*, i8** %filename, align 4
  %181 = ptrtoint i8* %180 to i64
  %182 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %181)
  %183 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([14 x i8]* @.str.150 to i64))
  %call219 = call i8* @t_strcpy(i8* %182, i8* %183)
  %call220 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 378, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %184 = load i8*, i8** %filename, align 4
  %185 = ptrtoint i8* %184 to i32
  %186 = call i8* @c_fetch_pointer_from_offset(i32 %185)
  %187 = call i1 @c_isTaintedPointerToTaintedMem(i8* %186)
  br i1 %187, label %_Dynamic_check.succeeded222, label %_Dynamic_check.failed221

_Dynamic_check.succeeded222:                      ; preds = %if.end218
  %call223 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %186)
  %cmp224 = icmp eq %Tstruct.json_value_t_t* %call223, null
  br i1 %cmp224, label %if.then225, label %if.else228

if.then225:                                       ; preds = %_Dynamic_check.succeeded222
  %call226 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %188 = load i32, i32* @tests_passed, align 4
  %inc227 = add nsw i32 %188, 1
  store i32 %inc227, i32* @tests_passed, align 4
  br label %if.end231

_Dynamic_check.failed221:                         ; preds = %if.end218
  call void @llvm.trap() #6
  unreachable

if.else228:                                       ; preds = %_Dynamic_check.succeeded222
  %call229 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %189 = load i32, i32* @tests_failed, align 4
  %inc230 = add nsw i32 %189, 1
  store i32 %inc230, i32* @tests_failed, align 4
  br label %if.end231

if.end231:                                        ; preds = %if.else228, %if.then225
  %190 = load i8*, i8** %filename, align 4
  %191 = ptrtoint i8* %190 to i64
  %192 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %191)
  %193 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.151 to i64))
  %call232 = call i8* @t_strcpy(i8* %192, i8* %193)
  %call233 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 380, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %194 = load i8*, i8** %filename, align 4
  %195 = ptrtoint i8* %194 to i32
  %196 = call i8* @c_fetch_pointer_from_offset(i32 %195)
  %197 = call i1 @c_isTaintedPointerToTaintedMem(i8* %196)
  br i1 %197, label %_Dynamic_check.succeeded235, label %_Dynamic_check.failed234

_Dynamic_check.succeeded235:                      ; preds = %if.end231
  %call236 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %196)
  %cmp237 = icmp eq %Tstruct.json_value_t_t* %call236, null
  br i1 %cmp237, label %if.then238, label %if.else241

if.then238:                                       ; preds = %_Dynamic_check.succeeded235
  %call239 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %198 = load i32, i32* @tests_passed, align 4
  %inc240 = add nsw i32 %198, 1
  store i32 %inc240, i32* @tests_passed, align 4
  br label %if.end244

_Dynamic_check.failed234:                         ; preds = %if.end231
  call void @llvm.trap() #6
  unreachable

if.else241:                                       ; preds = %_Dynamic_check.succeeded235
  %call242 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %199 = load i32, i32* @tests_failed, align 4
  %inc243 = add nsw i32 %199, 1
  store i32 %inc243, i32* @tests_failed, align 4
  br label %if.end244

if.end244:                                        ; preds = %if.else241, %if.then238
  %200 = load i8*, i8** %filename, align 4
  %201 = ptrtoint i8* %200 to i64
  %202 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %201)
  %203 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.152 to i64))
  %call245 = call i8* @t_strcpy(i8* %202, i8* %203)
  %call246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 382, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %204 = load i8*, i8** %filename, align 4
  %205 = ptrtoint i8* %204 to i32
  %206 = call i8* @c_fetch_pointer_from_offset(i32 %205)
  %207 = call i1 @c_isTaintedPointerToTaintedMem(i8* %206)
  br i1 %207, label %_Dynamic_check.succeeded248, label %_Dynamic_check.failed247

_Dynamic_check.succeeded248:                      ; preds = %if.end244
  %call249 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %206)
  %cmp250 = icmp eq %Tstruct.json_value_t_t* %call249, null
  br i1 %cmp250, label %if.then251, label %if.else254

if.then251:                                       ; preds = %_Dynamic_check.succeeded248
  %call252 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %208 = load i32, i32* @tests_passed, align 4
  %inc253 = add nsw i32 %208, 1
  store i32 %inc253, i32* @tests_passed, align 4
  br label %if.end257

_Dynamic_check.failed247:                         ; preds = %if.end244
  call void @llvm.trap() #6
  unreachable

if.else254:                                       ; preds = %_Dynamic_check.succeeded248
  %call255 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %209 = load i32, i32* @tests_failed, align 4
  %inc256 = add nsw i32 %209, 1
  store i32 %inc256, i32* @tests_failed, align 4
  br label %if.end257

if.end257:                                        ; preds = %if.else254, %if.then251
  %210 = load i8*, i8** %filename, align 4
  %211 = ptrtoint i8* %210 to i64
  %212 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %211)
  %213 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.153 to i64))
  %call258 = call i8* @t_strcpy(i8* %212, i8* %213)
  %call259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 384, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %214 = load i8*, i8** %filename, align 4
  %215 = ptrtoint i8* %214 to i32
  %216 = call i8* @c_fetch_pointer_from_offset(i32 %215)
  %217 = call i1 @c_isTaintedPointerToTaintedMem(i8* %216)
  br i1 %217, label %_Dynamic_check.succeeded261, label %_Dynamic_check.failed260

_Dynamic_check.succeeded261:                      ; preds = %if.end257
  %call262 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %216)
  %cmp263 = icmp eq %Tstruct.json_value_t_t* %call262, null
  br i1 %cmp263, label %if.then264, label %if.else267

if.then264:                                       ; preds = %_Dynamic_check.succeeded261
  %call265 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %218 = load i32, i32* @tests_passed, align 4
  %inc266 = add nsw i32 %218, 1
  store i32 %inc266, i32* @tests_passed, align 4
  br label %if.end270

_Dynamic_check.failed260:                         ; preds = %if.end257
  call void @llvm.trap() #6
  unreachable

if.else267:                                       ; preds = %_Dynamic_check.succeeded261
  %call268 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %219 = load i32, i32* @tests_failed, align 4
  %inc269 = add nsw i32 %219, 1
  store i32 %inc269, i32* @tests_failed, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.else267, %if.then264
  %220 = load i8*, i8** %filename, align 4
  %221 = ptrtoint i8* %220 to i64
  %222 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %221)
  %223 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.154 to i64))
  %call271 = call i8* @t_strcpy(i8* %222, i8* %223)
  %call272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %224 = load i8*, i8** %filename, align 4
  %225 = ptrtoint i8* %224 to i32
  %226 = call i8* @c_fetch_pointer_from_offset(i32 %225)
  %227 = call i1 @c_isTaintedPointerToTaintedMem(i8* %226)
  br i1 %227, label %_Dynamic_check.succeeded274, label %_Dynamic_check.failed273

_Dynamic_check.succeeded274:                      ; preds = %if.end270
  %call275 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %226)
  %cmp276 = icmp eq %Tstruct.json_value_t_t* %call275, null
  br i1 %cmp276, label %if.then277, label %if.else280

if.then277:                                       ; preds = %_Dynamic_check.succeeded274
  %call278 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %228 = load i32, i32* @tests_passed, align 4
  %inc279 = add nsw i32 %228, 1
  store i32 %inc279, i32* @tests_passed, align 4
  br label %if.end283

_Dynamic_check.failed273:                         ; preds = %if.end270
  call void @llvm.trap() #6
  unreachable

if.else280:                                       ; preds = %_Dynamic_check.succeeded274
  %call281 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %229 = load i32, i32* @tests_failed, align 4
  %inc282 = add nsw i32 %229, 1
  store i32 %inc282, i32* @tests_failed, align 4
  br label %if.end283

if.end283:                                        ; preds = %if.else280, %if.then277
  %230 = load i8*, i8** %filename, align 4
  %231 = ptrtoint i8* %230 to i64
  %232 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %231)
  %233 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([14 x i8]* @.str.155 to i64))
  %call284 = call i8* @t_strcpy(i8* %232, i8* %233)
  %call285 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 388, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %234 = load i8*, i8** %filename, align 4
  %235 = ptrtoint i8* %234 to i32
  %236 = call i8* @c_fetch_pointer_from_offset(i32 %235)
  %237 = call i1 @c_isTaintedPointerToTaintedMem(i8* %236)
  br i1 %237, label %_Dynamic_check.succeeded287, label %_Dynamic_check.failed286

_Dynamic_check.succeeded287:                      ; preds = %if.end283
  %call288 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %236)
  %cmp289 = icmp eq %Tstruct.json_value_t_t* %call288, null
  br i1 %cmp289, label %if.then290, label %if.else293

if.then290:                                       ; preds = %_Dynamic_check.succeeded287
  %call291 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %238 = load i32, i32* @tests_passed, align 4
  %inc292 = add nsw i32 %238, 1
  store i32 %inc292, i32* @tests_passed, align 4
  br label %if.end296

_Dynamic_check.failed286:                         ; preds = %if.end283
  call void @llvm.trap() #6
  unreachable

if.else293:                                       ; preds = %_Dynamic_check.succeeded287
  %call294 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %239 = load i32, i32* @tests_failed, align 4
  %inc295 = add nsw i32 %239, 1
  store i32 %inc295, i32* @tests_failed, align 4
  br label %if.end296

if.end296:                                        ; preds = %if.else293, %if.then290
  %240 = load i8*, i8** %filename, align 4
  %241 = ptrtoint i8* %240 to i64
  %242 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %241)
  %243 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.156 to i64))
  %call297 = call i8* @t_strcpy(i8* %242, i8* %243)
  %call298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 390, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %244 = load i8*, i8** %filename, align 4
  %245 = ptrtoint i8* %244 to i32
  %246 = call i8* @c_fetch_pointer_from_offset(i32 %245)
  %247 = call i1 @c_isTaintedPointerToTaintedMem(i8* %246)
  br i1 %247, label %_Dynamic_check.succeeded300, label %_Dynamic_check.failed299

_Dynamic_check.succeeded300:                      ; preds = %if.end296
  %call301 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %246)
  %cmp302 = icmp eq %Tstruct.json_value_t_t* %call301, null
  br i1 %cmp302, label %if.then303, label %if.else306

if.then303:                                       ; preds = %_Dynamic_check.succeeded300
  %call304 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %248 = load i32, i32* @tests_passed, align 4
  %inc305 = add nsw i32 %248, 1
  store i32 %inc305, i32* @tests_passed, align 4
  br label %if.end309

_Dynamic_check.failed299:                         ; preds = %if.end296
  call void @llvm.trap() #6
  unreachable

if.else306:                                       ; preds = %_Dynamic_check.succeeded300
  %call307 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %249 = load i32, i32* @tests_failed, align 4
  %inc308 = add nsw i32 %249, 1
  store i32 %inc308, i32* @tests_failed, align 4
  br label %if.end309

if.end309:                                        ; preds = %if.else306, %if.then303
  %250 = load i8*, i8** %filename, align 4
  %251 = ptrtoint i8* %250 to i64
  %252 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %251)
  %253 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.157 to i64))
  %call310 = call i8* @t_strcpy(i8* %252, i8* %253)
  %call311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 392, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %254 = load i8*, i8** %filename, align 4
  %255 = ptrtoint i8* %254 to i32
  %256 = call i8* @c_fetch_pointer_from_offset(i32 %255)
  %257 = call i1 @c_isTaintedPointerToTaintedMem(i8* %256)
  br i1 %257, label %_Dynamic_check.succeeded313, label %_Dynamic_check.failed312

_Dynamic_check.succeeded313:                      ; preds = %if.end309
  %call314 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %256)
  %cmp315 = icmp eq %Tstruct.json_value_t_t* %call314, null
  br i1 %cmp315, label %if.then316, label %if.else319

if.then316:                                       ; preds = %_Dynamic_check.succeeded313
  %call317 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %258 = load i32, i32* @tests_passed, align 4
  %inc318 = add nsw i32 %258, 1
  store i32 %inc318, i32* @tests_passed, align 4
  br label %if.end322

_Dynamic_check.failed312:                         ; preds = %if.end309
  call void @llvm.trap() #6
  unreachable

if.else319:                                       ; preds = %_Dynamic_check.succeeded313
  %call320 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %259 = load i32, i32* @tests_failed, align 4
  %inc321 = add nsw i32 %259, 1
  store i32 %inc321, i32* @tests_failed, align 4
  br label %if.end322

if.end322:                                        ; preds = %if.else319, %if.then316
  %260 = load i8*, i8** %filename, align 4
  %261 = ptrtoint i8* %260 to i64
  %262 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %261)
  %263 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.158 to i64))
  %call323 = call i8* @t_strcpy(i8* %262, i8* %263)
  %call324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 394, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %264 = load i8*, i8** %filename, align 4
  %265 = ptrtoint i8* %264 to i32
  %266 = call i8* @c_fetch_pointer_from_offset(i32 %265)
  %267 = call i1 @c_isTaintedPointerToTaintedMem(i8* %266)
  br i1 %267, label %_Dynamic_check.succeeded326, label %_Dynamic_check.failed325

_Dynamic_check.succeeded326:                      ; preds = %if.end322
  %call327 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %266)
  %cmp328 = icmp eq %Tstruct.json_value_t_t* %call327, null
  br i1 %cmp328, label %if.then329, label %if.else332

if.then329:                                       ; preds = %_Dynamic_check.succeeded326
  %call330 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %268 = load i32, i32* @tests_passed, align 4
  %inc331 = add nsw i32 %268, 1
  store i32 %inc331, i32* @tests_passed, align 4
  br label %if.end335

_Dynamic_check.failed325:                         ; preds = %if.end322
  call void @llvm.trap() #6
  unreachable

if.else332:                                       ; preds = %_Dynamic_check.succeeded326
  %call333 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %269 = load i32, i32* @tests_failed, align 4
  %inc334 = add nsw i32 %269, 1
  store i32 %inc334, i32* @tests_failed, align 4
  br label %if.end335

if.end335:                                        ; preds = %if.else332, %if.then329
  %270 = load i8*, i8** %filename, align 4
  %271 = ptrtoint i8* %270 to i64
  %272 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %271)
  %273 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.159 to i64))
  %call336 = call i8* @t_strcpy(i8* %272, i8* %273)
  %call337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 396, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %274 = load i8*, i8** %filename, align 4
  %275 = ptrtoint i8* %274 to i32
  %276 = call i8* @c_fetch_pointer_from_offset(i32 %275)
  %277 = call i1 @c_isTaintedPointerToTaintedMem(i8* %276)
  br i1 %277, label %_Dynamic_check.succeeded339, label %_Dynamic_check.failed338

_Dynamic_check.succeeded339:                      ; preds = %if.end335
  %call340 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %276)
  %cmp341 = icmp eq %Tstruct.json_value_t_t* %call340, null
  br i1 %cmp341, label %if.then342, label %if.else345

if.then342:                                       ; preds = %_Dynamic_check.succeeded339
  %call343 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %278 = load i32, i32* @tests_passed, align 4
  %inc344 = add nsw i32 %278, 1
  store i32 %inc344, i32* @tests_passed, align 4
  br label %if.end348

_Dynamic_check.failed338:                         ; preds = %if.end335
  call void @llvm.trap() #6
  unreachable

if.else345:                                       ; preds = %_Dynamic_check.succeeded339
  %call346 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %279 = load i32, i32* @tests_failed, align 4
  %inc347 = add nsw i32 %279, 1
  store i32 %inc347, i32* @tests_failed, align 4
  br label %if.end348

if.end348:                                        ; preds = %if.else345, %if.then342
  %280 = load i8*, i8** %filename, align 4
  %281 = ptrtoint i8* %280 to i64
  %282 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %281)
  %283 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.160 to i64))
  %call349 = call i8* @t_strcpy(i8* %282, i8* %283)
  %call350 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 398, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %284 = load i8*, i8** %filename, align 4
  %285 = ptrtoint i8* %284 to i32
  %286 = call i8* @c_fetch_pointer_from_offset(i32 %285)
  %287 = call i1 @c_isTaintedPointerToTaintedMem(i8* %286)
  br i1 %287, label %_Dynamic_check.succeeded352, label %_Dynamic_check.failed351

_Dynamic_check.succeeded352:                      ; preds = %if.end348
  %call353 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %286)
  %cmp354 = icmp eq %Tstruct.json_value_t_t* %call353, null
  br i1 %cmp354, label %if.then355, label %if.else358

if.then355:                                       ; preds = %_Dynamic_check.succeeded352
  %call356 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %288 = load i32, i32* @tests_passed, align 4
  %inc357 = add nsw i32 %288, 1
  store i32 %inc357, i32* @tests_passed, align 4
  br label %if.end361

_Dynamic_check.failed351:                         ; preds = %if.end348
  call void @llvm.trap() #6
  unreachable

if.else358:                                       ; preds = %_Dynamic_check.succeeded352
  %call359 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %289 = load i32, i32* @tests_failed, align 4
  %inc360 = add nsw i32 %289, 1
  store i32 %inc360, i32* @tests_failed, align 4
  br label %if.end361

if.end361:                                        ; preds = %if.else358, %if.then355
  %290 = load i8*, i8** %filename, align 4
  %291 = ptrtoint i8* %290 to i64
  %292 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %291)
  %293 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.161 to i64))
  %call362 = call i8* @t_strcpy(i8* %292, i8* %293)
  %call363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 400, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %294 = load i8*, i8** %filename, align 4
  %295 = ptrtoint i8* %294 to i32
  %296 = call i8* @c_fetch_pointer_from_offset(i32 %295)
  %297 = call i1 @c_isTaintedPointerToTaintedMem(i8* %296)
  br i1 %297, label %_Dynamic_check.succeeded365, label %_Dynamic_check.failed364

_Dynamic_check.succeeded365:                      ; preds = %if.end361
  %call366 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %296)
  %cmp367 = icmp eq %Tstruct.json_value_t_t* %call366, null
  br i1 %cmp367, label %if.then368, label %if.else371

if.then368:                                       ; preds = %_Dynamic_check.succeeded365
  %call369 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %298 = load i32, i32* @tests_passed, align 4
  %inc370 = add nsw i32 %298, 1
  store i32 %inc370, i32* @tests_passed, align 4
  br label %if.end374

_Dynamic_check.failed364:                         ; preds = %if.end361
  call void @llvm.trap() #6
  unreachable

if.else371:                                       ; preds = %_Dynamic_check.succeeded365
  %call372 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %299 = load i32, i32* @tests_failed, align 4
  %inc373 = add nsw i32 %299, 1
  store i32 %inc373, i32* @tests_failed, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.else371, %if.then368
  %300 = load i8*, i8** %filename, align 4
  %301 = ptrtoint i8* %300 to i64
  %302 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %301)
  %303 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.162 to i64))
  %call375 = call i8* @t_strcpy(i8* %302, i8* %303)
  %call376 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 402, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %304 = load i8*, i8** %filename, align 4
  %305 = ptrtoint i8* %304 to i32
  %306 = call i8* @c_fetch_pointer_from_offset(i32 %305)
  %307 = call i1 @c_isTaintedPointerToTaintedMem(i8* %306)
  br i1 %307, label %_Dynamic_check.succeeded378, label %_Dynamic_check.failed377

_Dynamic_check.succeeded378:                      ; preds = %if.end374
  %call379 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %306)
  %cmp380 = icmp eq %Tstruct.json_value_t_t* %call379, null
  br i1 %cmp380, label %if.then381, label %if.else384

if.then381:                                       ; preds = %_Dynamic_check.succeeded378
  %call382 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %308 = load i32, i32* @tests_passed, align 4
  %inc383 = add nsw i32 %308, 1
  store i32 %inc383, i32* @tests_passed, align 4
  br label %if.end387

_Dynamic_check.failed377:                         ; preds = %if.end374
  call void @llvm.trap() #6
  unreachable

if.else384:                                       ; preds = %_Dynamic_check.succeeded378
  %call385 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %309 = load i32, i32* @tests_failed, align 4
  %inc386 = add nsw i32 %309, 1
  store i32 %inc386, i32* @tests_failed, align 4
  br label %if.end387

if.end387:                                        ; preds = %if.else384, %if.then381
  %310 = load i8*, i8** %filename, align 4
  %311 = ptrtoint i8* %310 to i64
  %312 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %311)
  %313 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.163 to i64))
  %call388 = call i8* @t_strcpy(i8* %312, i8* %313)
  %call389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 404, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %314 = load i8*, i8** %filename, align 4
  %315 = ptrtoint i8* %314 to i32
  %316 = call i8* @c_fetch_pointer_from_offset(i32 %315)
  %317 = call i1 @c_isTaintedPointerToTaintedMem(i8* %316)
  br i1 %317, label %_Dynamic_check.succeeded391, label %_Dynamic_check.failed390

_Dynamic_check.succeeded391:                      ; preds = %if.end387
  %call392 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %316)
  %cmp393 = icmp eq %Tstruct.json_value_t_t* %call392, null
  br i1 %cmp393, label %if.then394, label %if.else397

if.then394:                                       ; preds = %_Dynamic_check.succeeded391
  %call395 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %318 = load i32, i32* @tests_passed, align 4
  %inc396 = add nsw i32 %318, 1
  store i32 %inc396, i32* @tests_passed, align 4
  br label %if.end400

_Dynamic_check.failed390:                         ; preds = %if.end387
  call void @llvm.trap() #6
  unreachable

if.else397:                                       ; preds = %_Dynamic_check.succeeded391
  %call398 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %319 = load i32, i32* @tests_failed, align 4
  %inc399 = add nsw i32 %319, 1
  store i32 %inc399, i32* @tests_failed, align 4
  br label %if.end400

if.end400:                                        ; preds = %if.else397, %if.then394
  %320 = load i8*, i8** %filename, align 4
  %321 = ptrtoint i8* %320 to i64
  %322 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %321)
  %323 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.164 to i64))
  %call401 = call i8* @t_strcpy(i8* %322, i8* %323)
  %call402 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 406, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %324 = load i8*, i8** %filename, align 4
  %325 = ptrtoint i8* %324 to i32
  %326 = call i8* @c_fetch_pointer_from_offset(i32 %325)
  %327 = call i1 @c_isTaintedPointerToTaintedMem(i8* %326)
  br i1 %327, label %_Dynamic_check.succeeded404, label %_Dynamic_check.failed403

_Dynamic_check.succeeded404:                      ; preds = %if.end400
  %call405 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %326)
  %cmp406 = icmp eq %Tstruct.json_value_t_t* %call405, null
  br i1 %cmp406, label %if.then407, label %if.else410

if.then407:                                       ; preds = %_Dynamic_check.succeeded404
  %call408 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %328 = load i32, i32* @tests_passed, align 4
  %inc409 = add nsw i32 %328, 1
  store i32 %inc409, i32* @tests_passed, align 4
  br label %if.end413

_Dynamic_check.failed403:                         ; preds = %if.end400
  call void @llvm.trap() #6
  unreachable

if.else410:                                       ; preds = %_Dynamic_check.succeeded404
  %call411 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %329 = load i32, i32* @tests_failed, align 4
  %inc412 = add nsw i32 %329, 1
  store i32 %inc412, i32* @tests_failed, align 4
  br label %if.end413

if.end413:                                        ; preds = %if.else410, %if.then407
  %330 = load i8*, i8** %filename, align 4
  %331 = ptrtoint i8* %330 to i64
  %332 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %331)
  %333 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([15 x i8]* @.str.165 to i64))
  %call414 = call i8* @t_strcpy(i8* %332, i8* %333)
  %call415 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 408, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %334 = load i8*, i8** %filename, align 4
  %335 = ptrtoint i8* %334 to i32
  %336 = call i8* @c_fetch_pointer_from_offset(i32 %335)
  %337 = call i1 @c_isTaintedPointerToTaintedMem(i8* %336)
  br i1 %337, label %_Dynamic_check.succeeded417, label %_Dynamic_check.failed416

_Dynamic_check.succeeded417:                      ; preds = %if.end413
  %call418 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %336)
  %cmp419 = icmp eq %Tstruct.json_value_t_t* %call418, null
  br i1 %cmp419, label %if.then420, label %if.else423

if.then420:                                       ; preds = %_Dynamic_check.succeeded417
  %call421 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %338 = load i32, i32* @tests_passed, align 4
  %inc422 = add nsw i32 %338, 1
  store i32 %inc422, i32* @tests_passed, align 4
  br label %if.end426

_Dynamic_check.failed416:                         ; preds = %if.end413
  call void @llvm.trap() #6
  unreachable

if.else423:                                       ; preds = %_Dynamic_check.succeeded417
  %call424 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %339 = load i32, i32* @tests_failed, align 4
  %inc425 = add nsw i32 %339, 1
  store i32 %inc425, i32* @tests_failed, align 4
  br label %if.end426

if.end426:                                        ; preds = %if.else423, %if.then420
  %340 = load i8*, i8** %filename, align 4
  %341 = ptrtoint i8* %340 to i64
  %342 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %341)
  %343 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.166 to i64))
  %call427 = call i8* @t_strcpy(i8* %342, i8* %343)
  %call428 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 410, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %344 = load i8*, i8** %filename, align 4
  %345 = ptrtoint i8* %344 to i32
  %346 = call i8* @c_fetch_pointer_from_offset(i32 %345)
  %347 = call i1 @c_isTaintedPointerToTaintedMem(i8* %346)
  br i1 %347, label %_Dynamic_check.succeeded430, label %_Dynamic_check.failed429

_Dynamic_check.succeeded430:                      ; preds = %if.end426
  %call431 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %346)
  %cmp432 = icmp eq %Tstruct.json_value_t_t* %call431, null
  br i1 %cmp432, label %if.then433, label %if.else436

if.then433:                                       ; preds = %_Dynamic_check.succeeded430
  %call434 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %348 = load i32, i32* @tests_passed, align 4
  %inc435 = add nsw i32 %348, 1
  store i32 %inc435, i32* @tests_passed, align 4
  br label %if.end439

_Dynamic_check.failed429:                         ; preds = %if.end426
  call void @llvm.trap() #6
  unreachable

if.else436:                                       ; preds = %_Dynamic_check.succeeded430
  %call437 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %349 = load i32, i32* @tests_failed, align 4
  %inc438 = add nsw i32 %349, 1
  store i32 %inc438, i32* @tests_failed, align 4
  br label %if.end439

if.end439:                                        ; preds = %if.else436, %if.then433
  %350 = load i8*, i8** %filename, align 4
  %351 = ptrtoint i8* %350 to i64
  %352 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %351)
  %353 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.167 to i64))
  %call440 = call i8* @t_strcpy(i8* %352, i8* %353)
  %call441 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 412, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %354 = load i8*, i8** %filename, align 4
  %355 = ptrtoint i8* %354 to i32
  %356 = call i8* @c_fetch_pointer_from_offset(i32 %355)
  %357 = call i1 @c_isTaintedPointerToTaintedMem(i8* %356)
  br i1 %357, label %_Dynamic_check.succeeded443, label %_Dynamic_check.failed442

_Dynamic_check.succeeded443:                      ; preds = %if.end439
  %call444 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %356)
  %cmp445 = icmp eq %Tstruct.json_value_t_t* %call444, null
  br i1 %cmp445, label %if.then446, label %if.else449

if.then446:                                       ; preds = %_Dynamic_check.succeeded443
  %call447 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %358 = load i32, i32* @tests_passed, align 4
  %inc448 = add nsw i32 %358, 1
  store i32 %inc448, i32* @tests_passed, align 4
  br label %if.end452

_Dynamic_check.failed442:                         ; preds = %if.end439
  call void @llvm.trap() #6
  unreachable

if.else449:                                       ; preds = %_Dynamic_check.succeeded443
  %call450 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %359 = load i32, i32* @tests_failed, align 4
  %inc451 = add nsw i32 %359, 1
  store i32 %inc451, i32* @tests_failed, align 4
  br label %if.end452

if.end452:                                        ; preds = %if.else449, %if.then446
  %360 = load i8*, i8** %filename, align 4
  %361 = ptrtoint i8* %360 to i64
  %362 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %361)
  %363 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([9 x i8]* @.str.168 to i64))
  %call453 = call i8* @t_strcpy(i8* %362, i8* %363)
  %call454 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 414, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %364 = load i8*, i8** %filename, align 4
  %365 = ptrtoint i8* %364 to i32
  %366 = call i8* @c_fetch_pointer_from_offset(i32 %365)
  %367 = call i1 @c_isTaintedPointerToTaintedMem(i8* %366)
  br i1 %367, label %_Dynamic_check.succeeded456, label %_Dynamic_check.failed455

_Dynamic_check.succeeded456:                      ; preds = %if.end452
  %call457 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %366)
  %cmp458 = icmp eq %Tstruct.json_value_t_t* %call457, null
  br i1 %cmp458, label %if.then459, label %if.else462

if.then459:                                       ; preds = %_Dynamic_check.succeeded456
  %call460 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %368 = load i32, i32* @tests_passed, align 4
  %inc461 = add nsw i32 %368, 1
  store i32 %inc461, i32* @tests_passed, align 4
  br label %if.end465

_Dynamic_check.failed455:                         ; preds = %if.end452
  call void @llvm.trap() #6
  unreachable

if.else462:                                       ; preds = %_Dynamic_check.succeeded456
  %call463 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %369 = load i32, i32* @tests_failed, align 4
  %inc464 = add nsw i32 %369, 1
  store i32 %inc464, i32* @tests_failed, align 4
  br label %if.end465

if.end465:                                        ; preds = %if.else462, %if.then459
  %370 = load i8*, i8** %filename, align 4
  %371 = ptrtoint i8* %370 to i64
  %372 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %371)
  %373 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.169 to i64))
  %call466 = call i8* @t_strcpy(i8* %372, i8* %373)
  %call467 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 416, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %374 = load i8*, i8** %filename, align 4
  %375 = ptrtoint i8* %374 to i32
  %376 = call i8* @c_fetch_pointer_from_offset(i32 %375)
  %377 = call i1 @c_isTaintedPointerToTaintedMem(i8* %376)
  br i1 %377, label %_Dynamic_check.succeeded469, label %_Dynamic_check.failed468

_Dynamic_check.succeeded469:                      ; preds = %if.end465
  %call470 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %376)
  %cmp471 = icmp eq %Tstruct.json_value_t_t* %call470, null
  br i1 %cmp471, label %if.then472, label %if.else475

if.then472:                                       ; preds = %_Dynamic_check.succeeded469
  %call473 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %378 = load i32, i32* @tests_passed, align 4
  %inc474 = add nsw i32 %378, 1
  store i32 %inc474, i32* @tests_passed, align 4
  br label %if.end478

_Dynamic_check.failed468:                         ; preds = %if.end465
  call void @llvm.trap() #6
  unreachable

if.else475:                                       ; preds = %_Dynamic_check.succeeded469
  %call476 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %379 = load i32, i32* @tests_failed, align 4
  %inc477 = add nsw i32 %379, 1
  store i32 %inc477, i32* @tests_failed, align 4
  br label %if.end478

if.end478:                                        ; preds = %if.else475, %if.then472
  %380 = load i8*, i8** %filename, align 4
  %381 = ptrtoint i8* %380 to i64
  %382 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %381)
  %383 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.170 to i64))
  %call479 = call i8* @t_strcpy(i8* %382, i8* %383)
  %call480 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 418, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %384 = load i8*, i8** %filename, align 4
  %385 = ptrtoint i8* %384 to i32
  %386 = call i8* @c_fetch_pointer_from_offset(i32 %385)
  %387 = call i1 @c_isTaintedPointerToTaintedMem(i8* %386)
  br i1 %387, label %_Dynamic_check.succeeded482, label %_Dynamic_check.failed481

_Dynamic_check.succeeded482:                      ; preds = %if.end478
  %call483 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %386)
  %cmp484 = icmp eq %Tstruct.json_value_t_t* %call483, null
  br i1 %cmp484, label %if.then485, label %if.else488

if.then485:                                       ; preds = %_Dynamic_check.succeeded482
  %call486 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %388 = load i32, i32* @tests_passed, align 4
  %inc487 = add nsw i32 %388, 1
  store i32 %inc487, i32* @tests_passed, align 4
  br label %if.end491

_Dynamic_check.failed481:                         ; preds = %if.end478
  call void @llvm.trap() #6
  unreachable

if.else488:                                       ; preds = %_Dynamic_check.succeeded482
  %call489 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %389 = load i32, i32* @tests_failed, align 4
  %inc490 = add nsw i32 %389, 1
  store i32 %inc490, i32* @tests_failed, align 4
  br label %if.end491

if.end491:                                        ; preds = %if.else488, %if.then485
  %390 = load i8*, i8** %filename, align 4
  %391 = ptrtoint i8* %390 to i64
  %392 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %391)
  %393 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.171 to i64))
  %call492 = call i8* @t_strcpy(i8* %392, i8* %393)
  %call493 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %394 = load i8*, i8** %filename, align 4
  %395 = ptrtoint i8* %394 to i32
  %396 = call i8* @c_fetch_pointer_from_offset(i32 %395)
  %397 = call i1 @c_isTaintedPointerToTaintedMem(i8* %396)
  br i1 %397, label %_Dynamic_check.succeeded495, label %_Dynamic_check.failed494

_Dynamic_check.succeeded495:                      ; preds = %if.end491
  %call496 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %396)
  %cmp497 = icmp eq %Tstruct.json_value_t_t* %call496, null
  br i1 %cmp497, label %if.then498, label %if.else501

if.then498:                                       ; preds = %_Dynamic_check.succeeded495
  %call499 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %398 = load i32, i32* @tests_passed, align 4
  %inc500 = add nsw i32 %398, 1
  store i32 %inc500, i32* @tests_passed, align 4
  br label %if.end504

_Dynamic_check.failed494:                         ; preds = %if.end491
  call void @llvm.trap() #6
  unreachable

if.else501:                                       ; preds = %_Dynamic_check.succeeded495
  %call502 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %399 = load i32, i32* @tests_failed, align 4
  %inc503 = add nsw i32 %399, 1
  store i32 %inc503, i32* @tests_failed, align 4
  br label %if.end504

if.end504:                                        ; preds = %if.else501, %if.then498
  %400 = load i8*, i8** %filename, align 4
  %401 = ptrtoint i8* %400 to i64
  %402 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %401)
  %403 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.172 to i64))
  %call505 = call i8* @t_strcpy(i8* %402, i8* %403)
  %call506 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 422, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %404 = load i8*, i8** %filename, align 4
  %405 = ptrtoint i8* %404 to i32
  %406 = call i8* @c_fetch_pointer_from_offset(i32 %405)
  %407 = call i1 @c_isTaintedPointerToTaintedMem(i8* %406)
  br i1 %407, label %_Dynamic_check.succeeded508, label %_Dynamic_check.failed507

_Dynamic_check.succeeded508:                      ; preds = %if.end504
  %call509 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %406)
  %cmp510 = icmp eq %Tstruct.json_value_t_t* %call509, null
  br i1 %cmp510, label %if.then511, label %if.else514

if.then511:                                       ; preds = %_Dynamic_check.succeeded508
  %call512 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %408 = load i32, i32* @tests_passed, align 4
  %inc513 = add nsw i32 %408, 1
  store i32 %inc513, i32* @tests_passed, align 4
  br label %if.end517

_Dynamic_check.failed507:                         ; preds = %if.end504
  call void @llvm.trap() #6
  unreachable

if.else514:                                       ; preds = %_Dynamic_check.succeeded508
  %call515 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %409 = load i32, i32* @tests_failed, align 4
  %inc516 = add nsw i32 %409, 1
  store i32 %inc516, i32* @tests_failed, align 4
  br label %if.end517

if.end517:                                        ; preds = %if.else514, %if.then511
  %410 = load i8*, i8** %filename, align 4
  %411 = ptrtoint i8* %410 to i64
  %412 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %411)
  %413 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.173 to i64))
  %call518 = call i8* @t_strcpy(i8* %412, i8* %413)
  %call519 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 424, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %414 = load i8*, i8** %filename, align 4
  %415 = ptrtoint i8* %414 to i32
  %416 = call i8* @c_fetch_pointer_from_offset(i32 %415)
  %417 = call i1 @c_isTaintedPointerToTaintedMem(i8* %416)
  br i1 %417, label %_Dynamic_check.succeeded521, label %_Dynamic_check.failed520

_Dynamic_check.succeeded521:                      ; preds = %if.end517
  %call522 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %416)
  %cmp523 = icmp eq %Tstruct.json_value_t_t* %call522, null
  br i1 %cmp523, label %if.then524, label %if.else527

if.then524:                                       ; preds = %_Dynamic_check.succeeded521
  %call525 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %418 = load i32, i32* @tests_passed, align 4
  %inc526 = add nsw i32 %418, 1
  store i32 %inc526, i32* @tests_passed, align 4
  br label %if.end530

_Dynamic_check.failed520:                         ; preds = %if.end517
  call void @llvm.trap() #6
  unreachable

if.else527:                                       ; preds = %_Dynamic_check.succeeded521
  %call528 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %419 = load i32, i32* @tests_failed, align 4
  %inc529 = add nsw i32 %419, 1
  store i32 %inc529, i32* @tests_failed, align 4
  br label %if.end530

if.end530:                                        ; preds = %if.else527, %if.then524
  %420 = load i8*, i8** %filename, align 4
  %421 = ptrtoint i8* %420 to i64
  %422 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %421)
  %423 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.174 to i64))
  %call531 = call i8* @t_strcpy(i8* %422, i8* %423)
  %call532 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 426, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %424 = load i8*, i8** %filename, align 4
  %425 = ptrtoint i8* %424 to i32
  %426 = call i8* @c_fetch_pointer_from_offset(i32 %425)
  %427 = call i1 @c_isTaintedPointerToTaintedMem(i8* %426)
  br i1 %427, label %_Dynamic_check.succeeded534, label %_Dynamic_check.failed533

_Dynamic_check.succeeded534:                      ; preds = %if.end530
  %call535 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %426)
  %cmp536 = icmp eq %Tstruct.json_value_t_t* %call535, null
  br i1 %cmp536, label %if.then537, label %if.else540

if.then537:                                       ; preds = %_Dynamic_check.succeeded534
  %call538 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %428 = load i32, i32* @tests_passed, align 4
  %inc539 = add nsw i32 %428, 1
  store i32 %inc539, i32* @tests_passed, align 4
  br label %if.end543

_Dynamic_check.failed533:                         ; preds = %if.end530
  call void @llvm.trap() #6
  unreachable

if.else540:                                       ; preds = %_Dynamic_check.succeeded534
  %call541 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %429 = load i32, i32* @tests_failed, align 4
  %inc542 = add nsw i32 %429, 1
  store i32 %inc542, i32* @tests_failed, align 4
  br label %if.end543

if.end543:                                        ; preds = %if.else540, %if.then537
  %430 = load i8*, i8** %filename, align 4
  %431 = ptrtoint i8* %430 to i64
  %432 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %431)
  %433 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.175 to i64))
  %call544 = call i8* @t_strcpy(i8* %432, i8* %433)
  %call545 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 428, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %434 = load i8*, i8** %filename, align 4
  %435 = ptrtoint i8* %434 to i32
  %436 = call i8* @c_fetch_pointer_from_offset(i32 %435)
  %437 = call i1 @c_isTaintedPointerToTaintedMem(i8* %436)
  br i1 %437, label %_Dynamic_check.succeeded547, label %_Dynamic_check.failed546

_Dynamic_check.succeeded547:                      ; preds = %if.end543
  %call548 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %436)
  %cmp549 = icmp eq %Tstruct.json_value_t_t* %call548, null
  br i1 %cmp549, label %if.then550, label %if.else553

if.then550:                                       ; preds = %_Dynamic_check.succeeded547
  %call551 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %438 = load i32, i32* @tests_passed, align 4
  %inc552 = add nsw i32 %438, 1
  store i32 %inc552, i32* @tests_passed, align 4
  br label %if.end556

_Dynamic_check.failed546:                         ; preds = %if.end543
  call void @llvm.trap() #6
  unreachable

if.else553:                                       ; preds = %_Dynamic_check.succeeded547
  %call554 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %439 = load i32, i32* @tests_failed, align 4
  %inc555 = add nsw i32 %439, 1
  store i32 %inc555, i32* @tests_failed, align 4
  br label %if.end556

if.end556:                                        ; preds = %if.else553, %if.then550
  %440 = load i8*, i8** %filename, align 4
  %441 = ptrtoint i8* %440 to i64
  %442 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %441)
  %443 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.176 to i64))
  %call557 = call i8* @t_strcpy(i8* %442, i8* %443)
  %call558 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 430, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %444 = load i8*, i8** %filename, align 4
  %445 = ptrtoint i8* %444 to i32
  %446 = call i8* @c_fetch_pointer_from_offset(i32 %445)
  %447 = call i1 @c_isTaintedPointerToTaintedMem(i8* %446)
  br i1 %447, label %_Dynamic_check.succeeded560, label %_Dynamic_check.failed559

_Dynamic_check.succeeded560:                      ; preds = %if.end556
  %call561 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %446)
  %cmp562 = icmp eq %Tstruct.json_value_t_t* %call561, null
  br i1 %cmp562, label %if.then563, label %if.else566

if.then563:                                       ; preds = %_Dynamic_check.succeeded560
  %call564 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %448 = load i32, i32* @tests_passed, align 4
  %inc565 = add nsw i32 %448, 1
  store i32 %inc565, i32* @tests_passed, align 4
  br label %if.end569

_Dynamic_check.failed559:                         ; preds = %if.end556
  call void @llvm.trap() #6
  unreachable

if.else566:                                       ; preds = %_Dynamic_check.succeeded560
  %call567 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %449 = load i32, i32* @tests_failed, align 4
  %inc568 = add nsw i32 %449, 1
  store i32 %inc568, i32* @tests_failed, align 4
  br label %if.end569

if.end569:                                        ; preds = %if.else566, %if.then563
  %450 = load i8*, i8** %filename, align 4
  %451 = ptrtoint i8* %450 to i64
  %452 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %451)
  %453 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.177 to i64))
  %call570 = call i8* @t_strcpy(i8* %452, i8* %453)
  %call571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 432, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %454 = load i8*, i8** %filename, align 4
  %455 = ptrtoint i8* %454 to i32
  %456 = call i8* @c_fetch_pointer_from_offset(i32 %455)
  %457 = call i1 @c_isTaintedPointerToTaintedMem(i8* %456)
  br i1 %457, label %_Dynamic_check.succeeded573, label %_Dynamic_check.failed572

_Dynamic_check.succeeded573:                      ; preds = %if.end569
  %call574 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %456)
  %cmp575 = icmp eq %Tstruct.json_value_t_t* %call574, null
  br i1 %cmp575, label %if.then576, label %if.else579

if.then576:                                       ; preds = %_Dynamic_check.succeeded573
  %call577 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %458 = load i32, i32* @tests_passed, align 4
  %inc578 = add nsw i32 %458, 1
  store i32 %inc578, i32* @tests_passed, align 4
  br label %if.end582

_Dynamic_check.failed572:                         ; preds = %if.end569
  call void @llvm.trap() #6
  unreachable

if.else579:                                       ; preds = %_Dynamic_check.succeeded573
  %call580 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %459 = load i32, i32* @tests_failed, align 4
  %inc581 = add nsw i32 %459, 1
  store i32 %inc581, i32* @tests_failed, align 4
  br label %if.end582

if.end582:                                        ; preds = %if.else579, %if.then576
  %460 = load i8*, i8** %filename, align 4
  %461 = ptrtoint i8* %460 to i64
  %462 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %461)
  %463 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.178 to i64))
  %call583 = call i8* @t_strcpy(i8* %462, i8* %463)
  %call584 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 434, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %464 = load i8*, i8** %filename, align 4
  %465 = ptrtoint i8* %464 to i32
  %466 = call i8* @c_fetch_pointer_from_offset(i32 %465)
  %467 = call i1 @c_isTaintedPointerToTaintedMem(i8* %466)
  br i1 %467, label %_Dynamic_check.succeeded586, label %_Dynamic_check.failed585

_Dynamic_check.succeeded586:                      ; preds = %if.end582
  %call587 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %466)
  %cmp588 = icmp eq %Tstruct.json_value_t_t* %call587, null
  br i1 %cmp588, label %if.then589, label %if.else592

if.then589:                                       ; preds = %_Dynamic_check.succeeded586
  %call590 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %468 = load i32, i32* @tests_passed, align 4
  %inc591 = add nsw i32 %468, 1
  store i32 %inc591, i32* @tests_passed, align 4
  br label %if.end595

_Dynamic_check.failed585:                         ; preds = %if.end582
  call void @llvm.trap() #6
  unreachable

if.else592:                                       ; preds = %_Dynamic_check.succeeded586
  %call593 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %469 = load i32, i32* @tests_failed, align 4
  %inc594 = add nsw i32 %469, 1
  store i32 %inc594, i32* @tests_failed, align 4
  br label %if.end595

if.end595:                                        ; preds = %if.else592, %if.then589
  %470 = load i8*, i8** %filename, align 4
  %471 = ptrtoint i8* %470 to i64
  %472 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %471)
  %473 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.179 to i64))
  %call596 = call i8* @t_strcpy(i8* %472, i8* %473)
  %call597 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 436, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %474 = load i8*, i8** %filename, align 4
  %475 = ptrtoint i8* %474 to i32
  %476 = call i8* @c_fetch_pointer_from_offset(i32 %475)
  %477 = call i1 @c_isTaintedPointerToTaintedMem(i8* %476)
  br i1 %477, label %_Dynamic_check.succeeded599, label %_Dynamic_check.failed598

_Dynamic_check.succeeded599:                      ; preds = %if.end595
  %call600 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %476)
  %cmp601 = icmp eq %Tstruct.json_value_t_t* %call600, null
  br i1 %cmp601, label %if.then602, label %if.else605

if.then602:                                       ; preds = %_Dynamic_check.succeeded599
  %call603 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %478 = load i32, i32* @tests_passed, align 4
  %inc604 = add nsw i32 %478, 1
  store i32 %inc604, i32* @tests_passed, align 4
  br label %if.end608

_Dynamic_check.failed598:                         ; preds = %if.end595
  call void @llvm.trap() #6
  unreachable

if.else605:                                       ; preds = %_Dynamic_check.succeeded599
  %call606 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %479 = load i32, i32* @tests_failed, align 4
  %inc607 = add nsw i32 %479, 1
  store i32 %inc607, i32* @tests_failed, align 4
  br label %if.end608

if.end608:                                        ; preds = %if.else605, %if.then602
  %480 = load i8*, i8** %filename, align 4
  %481 = ptrtoint i8* %480 to i64
  %482 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %481)
  %483 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.180 to i64))
  %call609 = call i8* @t_strcpy(i8* %482, i8* %483)
  %call610 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 438, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %484 = load i8*, i8** %filename, align 4
  %485 = ptrtoint i8* %484 to i32
  %486 = call i8* @c_fetch_pointer_from_offset(i32 %485)
  %487 = call i1 @c_isTaintedPointerToTaintedMem(i8* %486)
  br i1 %487, label %_Dynamic_check.succeeded612, label %_Dynamic_check.failed611

_Dynamic_check.succeeded612:                      ; preds = %if.end608
  %call613 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %486)
  %cmp614 = icmp eq %Tstruct.json_value_t_t* %call613, null
  br i1 %cmp614, label %if.then615, label %if.else618

if.then615:                                       ; preds = %_Dynamic_check.succeeded612
  %call616 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %488 = load i32, i32* @tests_passed, align 4
  %inc617 = add nsw i32 %488, 1
  store i32 %inc617, i32* @tests_passed, align 4
  br label %if.end621

_Dynamic_check.failed611:                         ; preds = %if.end608
  call void @llvm.trap() #6
  unreachable

if.else618:                                       ; preds = %_Dynamic_check.succeeded612
  %call619 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %489 = load i32, i32* @tests_failed, align 4
  %inc620 = add nsw i32 %489, 1
  store i32 %inc620, i32* @tests_failed, align 4
  br label %if.end621

if.end621:                                        ; preds = %if.else618, %if.then615
  %490 = load i8*, i8** %filename, align 4
  %491 = ptrtoint i8* %490 to i64
  %492 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %491)
  %493 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.181 to i64))
  %call622 = call i8* @t_strcpy(i8* %492, i8* %493)
  %call623 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %494 = load i8*, i8** %filename, align 4
  %495 = ptrtoint i8* %494 to i32
  %496 = call i8* @c_fetch_pointer_from_offset(i32 %495)
  %497 = call i1 @c_isTaintedPointerToTaintedMem(i8* %496)
  br i1 %497, label %_Dynamic_check.succeeded625, label %_Dynamic_check.failed624

_Dynamic_check.succeeded625:                      ; preds = %if.end621
  %call626 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %496)
  %cmp627 = icmp eq %Tstruct.json_value_t_t* %call626, null
  br i1 %cmp627, label %if.then628, label %if.else631

if.then628:                                       ; preds = %_Dynamic_check.succeeded625
  %call629 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %498 = load i32, i32* @tests_passed, align 4
  %inc630 = add nsw i32 %498, 1
  store i32 %inc630, i32* @tests_passed, align 4
  br label %if.end634

_Dynamic_check.failed624:                         ; preds = %if.end621
  call void @llvm.trap() #6
  unreachable

if.else631:                                       ; preds = %_Dynamic_check.succeeded625
  %call632 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %499 = load i32, i32* @tests_failed, align 4
  %inc633 = add nsw i32 %499, 1
  store i32 %inc633, i32* @tests_failed, align 4
  br label %if.end634

if.end634:                                        ; preds = %if.else631, %if.then628
  %500 = load i8*, i8** %filename, align 4
  %501 = ptrtoint i8* %500 to i64
  %502 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %501)
  %503 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.182 to i64))
  %call635 = call i8* @t_strcpy(i8* %502, i8* %503)
  %call636 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 442, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %504 = load i8*, i8** %filename, align 4
  %505 = ptrtoint i8* %504 to i32
  %506 = call i8* @c_fetch_pointer_from_offset(i32 %505)
  %507 = call i1 @c_isTaintedPointerToTaintedMem(i8* %506)
  br i1 %507, label %_Dynamic_check.succeeded638, label %_Dynamic_check.failed637

_Dynamic_check.succeeded638:                      ; preds = %if.end634
  %call639 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %506)
  %cmp640 = icmp eq %Tstruct.json_value_t_t* %call639, null
  br i1 %cmp640, label %if.then641, label %if.else644

if.then641:                                       ; preds = %_Dynamic_check.succeeded638
  %call642 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %508 = load i32, i32* @tests_passed, align 4
  %inc643 = add nsw i32 %508, 1
  store i32 %inc643, i32* @tests_passed, align 4
  br label %if.end647

_Dynamic_check.failed637:                         ; preds = %if.end634
  call void @llvm.trap() #6
  unreachable

if.else644:                                       ; preds = %_Dynamic_check.succeeded638
  %call645 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %509 = load i32, i32* @tests_failed, align 4
  %inc646 = add nsw i32 %509, 1
  store i32 %inc646, i32* @tests_failed, align 4
  br label %if.end647

if.end647:                                        ; preds = %if.else644, %if.then641
  %510 = load i8*, i8** %filename, align 4
  %511 = ptrtoint i8* %510 to i64
  %512 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %511)
  %513 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.183 to i64))
  %call648 = call i8* @t_strcpy(i8* %512, i8* %513)
  %call649 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 444, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %514 = load i8*, i8** %filename, align 4
  %515 = ptrtoint i8* %514 to i32
  %516 = call i8* @c_fetch_pointer_from_offset(i32 %515)
  %517 = call i1 @c_isTaintedPointerToTaintedMem(i8* %516)
  br i1 %517, label %_Dynamic_check.succeeded651, label %_Dynamic_check.failed650

_Dynamic_check.succeeded651:                      ; preds = %if.end647
  %call652 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %516)
  %cmp653 = icmp eq %Tstruct.json_value_t_t* %call652, null
  br i1 %cmp653, label %if.then654, label %if.else657

if.then654:                                       ; preds = %_Dynamic_check.succeeded651
  %call655 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %518 = load i32, i32* @tests_passed, align 4
  %inc656 = add nsw i32 %518, 1
  store i32 %inc656, i32* @tests_passed, align 4
  br label %if.end660

_Dynamic_check.failed650:                         ; preds = %if.end647
  call void @llvm.trap() #6
  unreachable

if.else657:                                       ; preds = %_Dynamic_check.succeeded651
  %call658 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %519 = load i32, i32* @tests_failed, align 4
  %inc659 = add nsw i32 %519, 1
  store i32 %inc659, i32* @tests_failed, align 4
  br label %if.end660

if.end660:                                        ; preds = %if.else657, %if.then654
  %520 = load i8*, i8** %filename, align 4
  %521 = ptrtoint i8* %520 to i64
  %522 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %521)
  %523 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.184 to i64))
  %call661 = call i8* @t_strcpy(i8* %522, i8* %523)
  %call662 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 446, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %524 = load i8*, i8** %filename, align 4
  %525 = ptrtoint i8* %524 to i32
  %526 = call i8* @c_fetch_pointer_from_offset(i32 %525)
  %527 = call i1 @c_isTaintedPointerToTaintedMem(i8* %526)
  br i1 %527, label %_Dynamic_check.succeeded664, label %_Dynamic_check.failed663

_Dynamic_check.succeeded664:                      ; preds = %if.end660
  %call665 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %526)
  %cmp666 = icmp eq %Tstruct.json_value_t_t* %call665, null
  br i1 %cmp666, label %if.then667, label %if.else670

if.then667:                                       ; preds = %_Dynamic_check.succeeded664
  %call668 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %528 = load i32, i32* @tests_passed, align 4
  %inc669 = add nsw i32 %528, 1
  store i32 %inc669, i32* @tests_passed, align 4
  br label %if.end673

_Dynamic_check.failed663:                         ; preds = %if.end660
  call void @llvm.trap() #6
  unreachable

if.else670:                                       ; preds = %_Dynamic_check.succeeded664
  %call671 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %529 = load i32, i32* @tests_failed, align 4
  %inc672 = add nsw i32 %529, 1
  store i32 %inc672, i32* @tests_failed, align 4
  br label %if.end673

if.end673:                                        ; preds = %if.else670, %if.then667
  %530 = load i8*, i8** %filename, align 4
  %531 = ptrtoint i8* %530 to i64
  %532 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %531)
  %533 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.185 to i64))
  %call674 = call i8* @t_strcpy(i8* %532, i8* %533)
  %call675 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 448, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %534 = load i8*, i8** %filename, align 4
  %535 = ptrtoint i8* %534 to i32
  %536 = call i8* @c_fetch_pointer_from_offset(i32 %535)
  %537 = call i1 @c_isTaintedPointerToTaintedMem(i8* %536)
  br i1 %537, label %_Dynamic_check.succeeded677, label %_Dynamic_check.failed676

_Dynamic_check.succeeded677:                      ; preds = %if.end673
  %call678 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %536)
  %cmp679 = icmp eq %Tstruct.json_value_t_t* %call678, null
  br i1 %cmp679, label %if.then680, label %if.else683

if.then680:                                       ; preds = %_Dynamic_check.succeeded677
  %call681 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %538 = load i32, i32* @tests_passed, align 4
  %inc682 = add nsw i32 %538, 1
  store i32 %inc682, i32* @tests_passed, align 4
  br label %if.end686

_Dynamic_check.failed676:                         ; preds = %if.end673
  call void @llvm.trap() #6
  unreachable

if.else683:                                       ; preds = %_Dynamic_check.succeeded677
  %call684 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %539 = load i32, i32* @tests_failed, align 4
  %inc685 = add nsw i32 %539, 1
  store i32 %inc685, i32* @tests_failed, align 4
  br label %if.end686

if.end686:                                        ; preds = %if.else683, %if.then680
  %540 = load i8*, i8** %filename, align 4
  %541 = ptrtoint i8* %540 to i64
  %542 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %541)
  %543 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.186 to i64))
  %call687 = call i8* @t_strcpy(i8* %542, i8* %543)
  %call688 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 450, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %544 = load i8*, i8** %filename, align 4
  %545 = ptrtoint i8* %544 to i32
  %546 = call i8* @c_fetch_pointer_from_offset(i32 %545)
  %547 = call i1 @c_isTaintedPointerToTaintedMem(i8* %546)
  br i1 %547, label %_Dynamic_check.succeeded690, label %_Dynamic_check.failed689

_Dynamic_check.succeeded690:                      ; preds = %if.end686
  %call691 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %546)
  %cmp692 = icmp eq %Tstruct.json_value_t_t* %call691, null
  br i1 %cmp692, label %if.then693, label %if.else696

if.then693:                                       ; preds = %_Dynamic_check.succeeded690
  %call694 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %548 = load i32, i32* @tests_passed, align 4
  %inc695 = add nsw i32 %548, 1
  store i32 %inc695, i32* @tests_passed, align 4
  br label %if.end699

_Dynamic_check.failed689:                         ; preds = %if.end686
  call void @llvm.trap() #6
  unreachable

if.else696:                                       ; preds = %_Dynamic_check.succeeded690
  %call697 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %549 = load i32, i32* @tests_failed, align 4
  %inc698 = add nsw i32 %549, 1
  store i32 %inc698, i32* @tests_failed, align 4
  br label %if.end699

if.end699:                                        ; preds = %if.else696, %if.then693
  %550 = load i8*, i8** %filename, align 4
  %551 = ptrtoint i8* %550 to i64
  %552 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %551)
  %553 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([17 x i8]* @.str.187 to i64))
  %call700 = call i8* @t_strcpy(i8* %552, i8* %553)
  %call701 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 452, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %554 = load i8*, i8** %filename, align 4
  %555 = ptrtoint i8* %554 to i32
  %556 = call i8* @c_fetch_pointer_from_offset(i32 %555)
  %557 = call i1 @c_isTaintedPointerToTaintedMem(i8* %556)
  br i1 %557, label %_Dynamic_check.succeeded703, label %_Dynamic_check.failed702

_Dynamic_check.succeeded703:                      ; preds = %if.end699
  %call704 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %556)
  %cmp705 = icmp eq %Tstruct.json_value_t_t* %call704, null
  br i1 %cmp705, label %if.then706, label %if.else709

if.then706:                                       ; preds = %_Dynamic_check.succeeded703
  %call707 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %558 = load i32, i32* @tests_passed, align 4
  %inc708 = add nsw i32 %558, 1
  store i32 %inc708, i32* @tests_passed, align 4
  br label %if.end712

_Dynamic_check.failed702:                         ; preds = %if.end699
  call void @llvm.trap() #6
  unreachable

if.else709:                                       ; preds = %_Dynamic_check.succeeded703
  %call710 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %559 = load i32, i32* @tests_failed, align 4
  %inc711 = add nsw i32 %559, 1
  store i32 %inc711, i32* @tests_failed, align 4
  br label %if.end712

if.end712:                                        ; preds = %if.else709, %if.then706
  %560 = load i8*, i8** %filename, align 4
  %561 = ptrtoint i8* %560 to i64
  %562 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %561)
  %563 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([25 x i8]* @.str.188 to i64))
  %call713 = call i8* @t_strcpy(i8* %562, i8* %563)
  %call714 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 454, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %564 = load i8*, i8** %filename, align 4
  %565 = ptrtoint i8* %564 to i32
  %566 = call i8* @c_fetch_pointer_from_offset(i32 %565)
  %567 = call i1 @c_isTaintedPointerToTaintedMem(i8* %566)
  br i1 %567, label %_Dynamic_check.succeeded716, label %_Dynamic_check.failed715

_Dynamic_check.succeeded716:                      ; preds = %if.end712
  %call717 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %566)
  %cmp718 = icmp eq %Tstruct.json_value_t_t* %call717, null
  br i1 %cmp718, label %if.then719, label %if.else722

if.then719:                                       ; preds = %_Dynamic_check.succeeded716
  %call720 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %568 = load i32, i32* @tests_passed, align 4
  %inc721 = add nsw i32 %568, 1
  store i32 %inc721, i32* @tests_passed, align 4
  br label %if.end725

_Dynamic_check.failed715:                         ; preds = %if.end712
  call void @llvm.trap() #6
  unreachable

if.else722:                                       ; preds = %_Dynamic_check.succeeded716
  %call723 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %569 = load i32, i32* @tests_failed, align 4
  %inc724 = add nsw i32 %569, 1
  store i32 %inc724, i32* @tests_failed, align 4
  br label %if.end725

if.end725:                                        ; preds = %if.else722, %if.then719
  %570 = load i8*, i8** %filename, align 4
  %571 = ptrtoint i8* %570 to i64
  %572 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %571)
  %573 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([26 x i8]* @.str.189 to i64))
  %call726 = call i8* @t_strcpy(i8* %572, i8* %573)
  %call727 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 456, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.147, i64 0, i64 0))
  %574 = load i8*, i8** %filename, align 4
  %575 = ptrtoint i8* %574 to i32
  %576 = call i8* @c_fetch_pointer_from_offset(i32 %575)
  %577 = call i1 @c_isTaintedPointerToTaintedMem(i8* %576)
  br i1 %577, label %_Dynamic_check.succeeded729, label %_Dynamic_check.failed728

_Dynamic_check.succeeded729:                      ; preds = %if.end725
  %call730 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %576)
  %cmp731 = icmp eq %Tstruct.json_value_t_t* %call730, null
  br i1 %cmp731, label %if.then732, label %if.else735

if.then732:                                       ; preds = %_Dynamic_check.succeeded729
  %call733 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %578 = load i32, i32* @tests_passed, align 4
  %inc734 = add nsw i32 %578, 1
  store i32 %inc734, i32* @tests_passed, align 4
  br label %if.end738

_Dynamic_check.failed728:                         ; preds = %if.end725
  call void @llvm.trap() #6
  unreachable

if.else735:                                       ; preds = %_Dynamic_check.succeeded729
  %call736 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %579 = load i32, i32* @tests_failed, align 4
  %inc737 = add nsw i32 %579, 1
  store i32 %inc737, i32* @tests_failed, align 4
  br label %if.end738

if.end738:                                        ; preds = %if.else735, %if.then732
  %call739 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 457, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.190, i64 0, i64 0))
  %580 = load i32, i32* @malloc_count, align 4
  %cmp740 = icmp eq i32 %580, 0
  br i1 %cmp740, label %if.then741, label %if.else744

if.then741:                                       ; preds = %if.end738
  %call742 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %581 = load i32, i32* @tests_passed, align 4
  %inc743 = add nsw i32 %581, 1
  store i32 %inc743, i32* @tests_passed, align 4
  br label %if.end747

if.else744:                                       ; preds = %if.end738
  %call745 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %582 = load i32, i32* @tests_failed, align 4
  %inc746 = add nsw i32 %582, 1
  store i32 %inc746, i32* @tests_failed, align 4
  br label %if.end747

if.end747:                                        ; preds = %if.else744, %if.then741
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_4() #3 {
entry:
  %val_tainted = alloca %Tstruct.json_value_t_t*, align 4
  %filename = alloca i8*, align 4
  %a = alloca %Tstruct.json_value_t_t*, align 4
  %a_copy = alloca %Tstruct.json_value_t_t*, align 4
  %res = alloca i32, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_tainted, align 4
  %call = call i8* @string_malloc(i64 100)
  store i8* %call, i8** %filename, align 4
  %0 = load i8*, i8** %filename, align 4
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([57 x i8]* @.str.120 to i64))
  %call1 = call i8* @t_strcpy(i8* %2, i8* %3)
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %a, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %a_copy, align 4
  %4 = load i8*, i8** %filename, align 4
  %5 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.191 to i64))
  %6 = ptrtoint i8* %4 to i32
  %7 = call i8* @c_fetch_pointer_from_offset(i32 %6)
  %8 = call i1 @c_isTaintedPointerToTaintedMem(i8* %7)
  br i1 %8, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %entry
  %call2 = call i32 (i8*, ...) @t_printf(i8* %5, i8* %7)
  %call3 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.120, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call3, %Tstruct.json_value_t_t** %a, align 4
  %9 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %10 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %11 = ptrtoint %Tstruct.json_value_t_t* %9 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded5, label %_Dynamic_check.failed4

_Dynamic_check.succeeded5:                        ; preds = %_Dynamic_check.succeeded
  %14 = bitcast i8* %12 to %Tstruct.json_value_t_t*
  %15 = ptrtoint %Tstruct.json_value_t_t* %10 to i32
  %16 = call i8* @c_fetch_pointer_from_offset(i32 %15)
  %17 = call i1 @c_isTaintedPointerToTaintedMem(i8* %16)
  br i1 %17, label %_Dynamic_check.succeeded7, label %_Dynamic_check.failed6

_Dynamic_check.succeeded7:                        ; preds = %_Dynamic_check.succeeded5
  %18 = bitcast i8* %16 to %Tstruct.json_value_t_t*
  %call8 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %14, %Tstruct.json_value_t_t* %18)
  store i32 %call8, i32* %res, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 468, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.192, i64 0, i64 0))
  %19 = load i32, i32* %res, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %_Dynamic_check.succeeded7
  %call10 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %20 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

_Dynamic_check.failed:                            ; preds = %entry
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed4:                           ; preds = %_Dynamic_check.succeeded
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed6:                           ; preds = %_Dynamic_check.succeeded5
  call void @llvm.trap() #6
  unreachable

if.else:                                          ; preds = %_Dynamic_check.succeeded7
  %call11 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %21 = load i32, i32* @tests_failed, align 4
  %inc12 = add nsw i32 %21, 1
  store i32 %inc12, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %22 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %23 = ptrtoint %Tstruct.json_value_t_t* %22 to i32
  %24 = call i8* @c_fetch_pointer_from_offset(i32 %23)
  %25 = call i1 @c_isTaintedPointerToTaintedMem(i8* %24)
  br i1 %25, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.end
  %26 = bitcast i8* %24 to %Tstruct.json_value_t_t*
  %call15 = call %Tstruct.json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t* %26)
  store %Tstruct.json_value_t_t* %call15, %Tstruct.json_value_t_t** %a_copy, align 4
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 470, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.193, i64 0, i64 0))
  %27 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a_copy, align 4
  %cmp = icmp ne %Tstruct.json_value_t_t* %27, null
  br i1 %cmp, label %if.then17, label %if.else20

if.then17:                                        ; preds = %_Dynamic_check.succeeded14
  %call18 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* @tests_passed, align 4
  %inc19 = add nsw i32 %28, 1
  store i32 %inc19, i32* @tests_passed, align 4
  br label %if.end23

_Dynamic_check.failed13:                          ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else20:                                        ; preds = %_Dynamic_check.succeeded14
  %call21 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %29 = load i32, i32* @tests_failed, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, i32* @tests_failed, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then17
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 471, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.194, i64 0, i64 0))
  %30 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a, align 4
  %31 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %a_copy, align 4
  %32 = ptrtoint %Tstruct.json_value_t_t* %30 to i32
  %33 = call i8* @c_fetch_pointer_from_offset(i32 %32)
  %34 = call i1 @c_isTaintedPointerToTaintedMem(i8* %33)
  br i1 %34, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %if.end23
  %35 = bitcast i8* %33 to %Tstruct.json_value_t_t*
  %36 = ptrtoint %Tstruct.json_value_t_t* %31 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %39 = bitcast i8* %37 to %Tstruct.json_value_t_t*
  %call29 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %35, %Tstruct.json_value_t_t* %39)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %call32 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %40 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %40, 1
  store i32 %inc33, i32* @tests_passed, align 4
  br label %if.end37

_Dynamic_check.failed25:                          ; preds = %if.end23
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #6
  unreachable

if.else34:                                        ; preds = %_Dynamic_check.succeeded28
  %call35 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %41 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %41, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_5() #3 {
entry:
  %zero = alloca double, align 8
  %filename = alloca i8*, align 4
  %val_from_file = alloca %Tstruct.json_value_t_t*, align 4
  %val = alloca %Tstruct.json_value_t_t*, align 4
  %val_parent = alloca %Tstruct.json_value_t_t*, align 4
  %obj = alloca %Tstruct.json_object_t_t*, align 4
  %interests_arr = alloca %Tstruct.json_array_t_t*, align 4
  %remove_test_val = alloca %Tstruct.json_value_t_t*, align 4
  %remove_test_arr = alloca %Tstruct.json_array_t_t*, align 4
  %string_1 = alloca i8*, align 4
  %string_2 = alloca i8*, align 4
  store double 0.000000e+00, double* %zero, align 8
  %call = call i8* @string_malloc(i64 100)
  store i8* %call, i8** %filename, align 4
  %0 = load i8*, i8** %filename, align 4
  %1 = ptrtoint i8* %0 to i64
  %2 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1)
  %3 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([57 x i8]* @.str.195 to i64))
  %call1 = call i8* @t_strcpy(i8* %2, i8* %3)
  %call2 = call %Tstruct.json_value_t_t* @json_parse_file(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.195, i64 0, i64 0))
  store %Tstruct.json_value_t_t* %call2, %Tstruct.json_value_t_t** %val_from_file, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %val_parent, align 4
  store %Tstruct.json_object_t_t* null, %Tstruct.json_object_t_t** %obj, align 4
  store %Tstruct.json_array_t_t* null, %Tstruct.json_array_t_t** %interests_arr, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %remove_test_val, align 4
  store %Tstruct.json_array_t_t* null, %Tstruct.json_array_t_t** %remove_test_arr, align 4
  %call3 = call %Tstruct.json_value_t_t* @json_value_init_object()
  store %Tstruct.json_value_t_t* %call3, %Tstruct.json_value_t_t** %val, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 489, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.196, i64 0, i64 0))
  %4 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val, align 4
  %cmp = icmp ne %Tstruct.json_value_t_t* %4, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call5 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %5 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call6 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %6 = load i32, i32* @tests_failed, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val, align 4
  %8 = ptrtoint %Tstruct.json_value_t_t* %7 to i32
  %9 = call i8* @c_fetch_pointer_from_offset(i32 %8)
  %10 = call i1 @c_isTaintedPointerToTaintedMem(i8* %9)
  br i1 %10, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %11 = bitcast i8* %9 to %Tstruct.json_value_t_t*
  %call8 = call %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %11)
  store %Tstruct.json_object_t_t* %call8, %Tstruct.json_object_t_t** %obj, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 492, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i64 0, i64 0))
  %12 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %cmp10 = icmp ne %Tstruct.json_object_t_t* %12, null
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %_Dynamic_check.succeeded
  %call12 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @tests_passed, align 4
  %inc13 = add nsw i32 %13, 1
  store i32 %inc13, i32* @tests_passed, align 4
  br label %if.end17

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else14:                                        ; preds = %_Dynamic_check.succeeded
  %call15 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %14 = load i32, i32* @tests_failed, align 4
  %inc16 = add nsw i32 %14, 1
  store i32 %inc16, i32* @tests_failed, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then11
  %call18 = call i8* @string_malloc(i64 100)
  store i8* %call18, i8** %string_1, align 4
  %call19 = call i8* @string_malloc(i64 100)
  store i8* %call19, i8** %string_2, align 4
  %15 = load i8*, i8** %string_1, align 4
  %16 = ptrtoint i8* %15 to i64
  %17 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %16)
  %18 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.198 to i64))
  %call20 = call i8* @t_strcpy(i8* %17, i8* %18)
  %19 = load i8*, i8** %string_2, align 4
  %20 = ptrtoint i8* %19 to i64
  %21 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %20)
  %22 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.199 to i64))
  %call21 = call i8* @t_strcpy(i8* %21, i8* %22)
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 498, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %23 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %24 = load i8*, i8** %string_1, align 4
  %25 = load i8*, i8** %string_2, align 4
  %26 = ptrtoint %Tstruct.json_object_t_t* %23 to i32
  %27 = call i8* @c_fetch_pointer_from_offset(i32 %26)
  %28 = call i1 @c_isTaintedPointerToTaintedMem(i8* %27)
  br i1 %28, label %_Dynamic_check.succeeded24, label %_Dynamic_check.failed23

_Dynamic_check.succeeded24:                       ; preds = %if.end17
  %29 = bitcast i8* %27 to %Tstruct.json_object_t_t*
  %30 = ptrtoint i8* %24 to i32
  %31 = call i8* @c_fetch_pointer_from_offset(i32 %30)
  %32 = call i1 @c_isTaintedPointerToTaintedMem(i8* %31)
  br i1 %32, label %_Dynamic_check.succeeded26, label %_Dynamic_check.failed25

_Dynamic_check.succeeded26:                       ; preds = %_Dynamic_check.succeeded24
  %33 = ptrtoint i8* %25 to i32
  %34 = call i8* @c_fetch_pointer_from_offset(i32 %33)
  %35 = call i1 @c_isTaintedPointerToTaintedMem(i8* %34)
  br i1 %35, label %_Dynamic_check.succeeded28, label %_Dynamic_check.failed27

_Dynamic_check.succeeded28:                       ; preds = %_Dynamic_check.succeeded26
  %call29 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %29, i8* %31, i8* %34)
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %_Dynamic_check.succeeded28
  %call32 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i32, i32* @tests_passed, align 4
  %inc33 = add nsw i32 %36, 1
  store i32 %inc33, i32* @tests_passed, align 4
  br label %if.end37

_Dynamic_check.failed23:                          ; preds = %if.end17
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed25:                          ; preds = %_Dynamic_check.succeeded24
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed27:                          ; preds = %_Dynamic_check.succeeded26
  call void @llvm.trap() #6
  unreachable

if.else34:                                        ; preds = %_Dynamic_check.succeeded28
  %call35 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %37 = load i32, i32* @tests_failed, align 4
  %inc36 = add nsw i32 %37, 1
  store i32 %inc36, i32* @tests_failed, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else34, %if.then31
  %38 = load i8*, i8** %string_1, align 4
  %39 = ptrtoint i8* %38 to i64
  %40 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %39)
  %41 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.201 to i64))
  %call38 = call i8* @t_strcpy(i8* %40, i8* %41)
  %42 = load i8*, i8** %string_2, align 4
  %43 = ptrtoint i8* %42 to i64
  %44 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %43)
  %45 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.202 to i64))
  %call39 = call i8* @t_strcpy(i8* %44, i8* %45)
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 501, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %46 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %47 = load i8*, i8** %string_1, align 4
  %48 = load i8*, i8** %string_2, align 4
  %49 = ptrtoint %Tstruct.json_object_t_t* %46 to i32
  %50 = call i8* @c_fetch_pointer_from_offset(i32 %49)
  %51 = call i1 @c_isTaintedPointerToTaintedMem(i8* %50)
  br i1 %51, label %_Dynamic_check.succeeded42, label %_Dynamic_check.failed41

_Dynamic_check.succeeded42:                       ; preds = %if.end37
  %52 = bitcast i8* %50 to %Tstruct.json_object_t_t*
  %53 = ptrtoint i8* %47 to i32
  %54 = call i8* @c_fetch_pointer_from_offset(i32 %53)
  %55 = call i1 @c_isTaintedPointerToTaintedMem(i8* %54)
  br i1 %55, label %_Dynamic_check.succeeded44, label %_Dynamic_check.failed43

_Dynamic_check.succeeded44:                       ; preds = %_Dynamic_check.succeeded42
  %56 = ptrtoint i8* %48 to i32
  %57 = call i8* @c_fetch_pointer_from_offset(i32 %56)
  %58 = call i1 @c_isTaintedPointerToTaintedMem(i8* %57)
  br i1 %58, label %_Dynamic_check.succeeded46, label %_Dynamic_check.failed45

_Dynamic_check.succeeded46:                       ; preds = %_Dynamic_check.succeeded44
  %call47 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %52, i8* %54, i8* %57)
  %cmp48 = icmp eq i32 %call47, 0
  br i1 %cmp48, label %if.then49, label %if.else52

if.then49:                                        ; preds = %_Dynamic_check.succeeded46
  %call50 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* @tests_passed, align 4
  %inc51 = add nsw i32 %59, 1
  store i32 %inc51, i32* @tests_passed, align 4
  br label %if.end55

_Dynamic_check.failed41:                          ; preds = %if.end37
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed43:                          ; preds = %_Dynamic_check.succeeded42
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed45:                          ; preds = %_Dynamic_check.succeeded44
  call void @llvm.trap() #6
  unreachable

if.else52:                                        ; preds = %_Dynamic_check.succeeded46
  %call53 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %60 = load i32, i32* @tests_failed, align 4
  %inc54 = add nsw i32 %60, 1
  store i32 %inc54, i32* @tests_failed, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then49
  %61 = load i8*, i8** %string_1, align 4
  %62 = ptrtoint i8* %61 to i64
  %63 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %62)
  %64 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.203 to i64))
  %call56 = call i8* @t_strcpy(i8* %63, i8* %64)
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 503, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.204, i64 0, i64 0))
  %65 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %66 = load i8*, i8** %string_1, align 4
  %67 = ptrtoint %Tstruct.json_object_t_t* %65 to i32
  %68 = call i8* @c_fetch_pointer_from_offset(i32 %67)
  %69 = call i1 @c_isTaintedPointerToTaintedMem(i8* %68)
  br i1 %69, label %_Dynamic_check.succeeded59, label %_Dynamic_check.failed58

_Dynamic_check.succeeded59:                       ; preds = %if.end55
  %70 = bitcast i8* %68 to %Tstruct.json_object_t_t*
  %71 = ptrtoint i8* %66 to i32
  %72 = call i8* @c_fetch_pointer_from_offset(i32 %71)
  %73 = call i1 @c_isTaintedPointerToTaintedMem(i8* %72)
  br i1 %73, label %_Dynamic_check.succeeded61, label %_Dynamic_check.failed60

_Dynamic_check.succeeded61:                       ; preds = %_Dynamic_check.succeeded59
  %call62 = call i32 @json_object_set_number(%Tstruct.json_object_t_t* %70, i8* %72, double 2.500000e+01)
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then64, label %if.else67

if.then64:                                        ; preds = %_Dynamic_check.succeeded61
  %call65 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %74 = load i32, i32* @tests_passed, align 4
  %inc66 = add nsw i32 %74, 1
  store i32 %inc66, i32* @tests_passed, align 4
  br label %if.end70

_Dynamic_check.failed58:                          ; preds = %if.end55
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed60:                          ; preds = %_Dynamic_check.succeeded59
  call void @llvm.trap() #6
  unreachable

if.else67:                                        ; preds = %_Dynamic_check.succeeded61
  %call68 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %75 = load i32, i32* @tests_failed, align 4
  %inc69 = add nsw i32 %75, 1
  store i32 %inc69, i32* @tests_failed, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.else67, %if.then64
  %76 = load i8*, i8** %string_1, align 4
  %77 = ptrtoint i8* %76 to i64
  %78 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %77)
  %79 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.205 to i64))
  %call71 = call i8* @t_strcpy(i8* %78, i8* %79)
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 505, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.206, i64 0, i64 0))
  %80 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %81 = load i8*, i8** %string_1, align 4
  %82 = ptrtoint %Tstruct.json_object_t_t* %80 to i32
  %83 = call i8* @c_fetch_pointer_from_offset(i32 %82)
  %84 = call i1 @c_isTaintedPointerToTaintedMem(i8* %83)
  br i1 %84, label %_Dynamic_check.succeeded74, label %_Dynamic_check.failed73

_Dynamic_check.succeeded74:                       ; preds = %if.end70
  %85 = bitcast i8* %83 to %Tstruct.json_object_t_t*
  %86 = ptrtoint i8* %81 to i32
  %87 = call i8* @c_fetch_pointer_from_offset(i32 %86)
  %88 = call i1 @c_isTaintedPointerToTaintedMem(i8* %87)
  br i1 %88, label %_Dynamic_check.succeeded76, label %_Dynamic_check.failed75

_Dynamic_check.succeeded76:                       ; preds = %_Dynamic_check.succeeded74
  %call77 = call i32 @json_object_set_boolean(%Tstruct.json_object_t_t* %85, i8* %87, i32 1)
  %cmp78 = icmp eq i32 %call77, 0
  br i1 %cmp78, label %if.then79, label %if.else82

if.then79:                                        ; preds = %_Dynamic_check.succeeded76
  %call80 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %89 = load i32, i32* @tests_passed, align 4
  %inc81 = add nsw i32 %89, 1
  store i32 %inc81, i32* @tests_passed, align 4
  br label %if.end85

_Dynamic_check.failed73:                          ; preds = %if.end70
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed75:                          ; preds = %_Dynamic_check.succeeded74
  call void @llvm.trap() #6
  unreachable

if.else82:                                        ; preds = %_Dynamic_check.succeeded76
  %call83 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i32, i32* @tests_failed, align 4
  %inc84 = add nsw i32 %90, 1
  store i32 %inc84, i32* @tests_failed, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then79
  %91 = load i8*, i8** %string_1, align 4
  %92 = ptrtoint i8* %91 to i64
  %93 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %92)
  %94 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.207 to i64))
  %call86 = call i8* @t_strcpy(i8* %93, i8* %94)
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 508, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.208, i64 0, i64 0))
  %95 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %96 = load i8*, i8** %string_1, align 4
  %call88 = call %Tstruct.json_value_t_t* @json_value_init_array()
  %97 = ptrtoint %Tstruct.json_object_t_t* %95 to i32
  %98 = call i8* @c_fetch_pointer_from_offset(i32 %97)
  %99 = call i1 @c_isTaintedPointerToTaintedMem(i8* %98)
  br i1 %99, label %_Dynamic_check.succeeded90, label %_Dynamic_check.failed89

_Dynamic_check.succeeded90:                       ; preds = %if.end85
  %100 = bitcast i8* %98 to %Tstruct.json_object_t_t*
  %101 = ptrtoint i8* %96 to i32
  %102 = call i8* @c_fetch_pointer_from_offset(i32 %101)
  %103 = call i1 @c_isTaintedPointerToTaintedMem(i8* %102)
  br i1 %103, label %_Dynamic_check.succeeded92, label %_Dynamic_check.failed91

_Dynamic_check.succeeded92:                       ; preds = %_Dynamic_check.succeeded90
  %104 = ptrtoint %Tstruct.json_value_t_t* %call88 to i32
  %105 = call i8* @c_fetch_pointer_from_offset(i32 %104)
  %106 = call i1 @c_isTaintedPointerToTaintedMem(i8* %105)
  br i1 %106, label %_Dynamic_check.succeeded94, label %_Dynamic_check.failed93

_Dynamic_check.succeeded94:                       ; preds = %_Dynamic_check.succeeded92
  %107 = bitcast i8* %105 to %Tstruct.json_value_t_t*
  %call95 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %100, i8* %102, %Tstruct.json_value_t_t* %107)
  %cmp96 = icmp eq i32 %call95, 0
  br i1 %cmp96, label %if.then97, label %if.else100

if.then97:                                        ; preds = %_Dynamic_check.succeeded94
  %call98 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %108 = load i32, i32* @tests_passed, align 4
  %inc99 = add nsw i32 %108, 1
  store i32 %inc99, i32* @tests_passed, align 4
  br label %if.end103

_Dynamic_check.failed89:                          ; preds = %if.end85
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed91:                          ; preds = %_Dynamic_check.succeeded90
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed93:                          ; preds = %_Dynamic_check.succeeded92
  call void @llvm.trap() #6
  unreachable

if.else100:                                       ; preds = %_Dynamic_check.succeeded94
  %call101 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* @tests_failed, align 4
  %inc102 = add nsw i32 %109, 1
  store i32 %inc102, i32* @tests_failed, align 4
  br label %if.end103

if.end103:                                        ; preds = %if.else100, %if.then97
  %110 = load i8*, i8** %string_1, align 4
  %111 = ptrtoint i8* %110 to i64
  %112 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %111)
  %113 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.207 to i64))
  %call104 = call i8* @t_strcpy(i8* %112, i8* %113)
  %114 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %115 = load i8*, i8** %string_1, align 4
  %116 = ptrtoint %Tstruct.json_object_t_t* %114 to i32
  %117 = call i8* @c_fetch_pointer_from_offset(i32 %116)
  %118 = call i1 @c_isTaintedPointerToTaintedMem(i8* %117)
  br i1 %118, label %_Dynamic_check.succeeded106, label %_Dynamic_check.failed105

_Dynamic_check.succeeded106:                      ; preds = %if.end103
  %119 = bitcast i8* %117 to %Tstruct.json_object_t_t*
  %120 = ptrtoint i8* %115 to i32
  %121 = call i8* @c_fetch_pointer_from_offset(i32 %120)
  %122 = call i1 @c_isTaintedPointerToTaintedMem(i8* %121)
  br i1 %122, label %_Dynamic_check.succeeded108, label %_Dynamic_check.failed107

_Dynamic_check.succeeded108:                      ; preds = %_Dynamic_check.succeeded106
  %call109 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %119, i8* %121)
  store %Tstruct.json_array_t_t* %call109, %Tstruct.json_array_t_t** %interests_arr, align 4
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 511, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.209, i64 0, i64 0))
  %123 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %cmp111 = icmp ne %Tstruct.json_array_t_t* %123, null
  br i1 %cmp111, label %if.then112, label %if.else115

if.then112:                                       ; preds = %_Dynamic_check.succeeded108
  %call113 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %124 = load i32, i32* @tests_passed, align 4
  %inc114 = add nsw i32 %124, 1
  store i32 %inc114, i32* @tests_passed, align 4
  br label %if.end118

_Dynamic_check.failed105:                         ; preds = %if.end103
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed107:                         ; preds = %_Dynamic_check.succeeded106
  call void @llvm.trap() #6
  unreachable

if.else115:                                       ; preds = %_Dynamic_check.succeeded108
  %call116 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* @tests_failed, align 4
  %inc117 = add nsw i32 %125, 1
  store i32 %inc117, i32* @tests_failed, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.else115, %if.then112
  %126 = load i8*, i8** %string_1, align 4
  %127 = ptrtoint i8* %126 to i64
  %128 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %127)
  %129 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.210 to i64))
  %call119 = call i8* @t_strcpy(i8* %128, i8* %129)
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 513, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.211, i64 0, i64 0))
  %130 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %131 = load i8*, i8** %string_1, align 4
  %132 = ptrtoint %Tstruct.json_array_t_t* %130 to i32
  %133 = call i8* @c_fetch_pointer_from_offset(i32 %132)
  %134 = call i1 @c_isTaintedPointerToTaintedMem(i8* %133)
  br i1 %134, label %_Dynamic_check.succeeded122, label %_Dynamic_check.failed121

_Dynamic_check.succeeded122:                      ; preds = %if.end118
  %135 = bitcast i8* %133 to %Tstruct.json_array_t_t*
  %136 = ptrtoint i8* %131 to i32
  %137 = call i8* @c_fetch_pointer_from_offset(i32 %136)
  %138 = call i1 @c_isTaintedPointerToTaintedMem(i8* %137)
  br i1 %138, label %_Dynamic_check.succeeded124, label %_Dynamic_check.failed123

_Dynamic_check.succeeded124:                      ; preds = %_Dynamic_check.succeeded122
  %call125 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %135, i8* %137)
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.then127, label %if.else130

if.then127:                                       ; preds = %_Dynamic_check.succeeded124
  %call128 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %139 = load i32, i32* @tests_passed, align 4
  %inc129 = add nsw i32 %139, 1
  store i32 %inc129, i32* @tests_passed, align 4
  br label %if.end133

_Dynamic_check.failed121:                         ; preds = %if.end118
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed123:                         ; preds = %_Dynamic_check.succeeded122
  call void @llvm.trap() #6
  unreachable

if.else130:                                       ; preds = %_Dynamic_check.succeeded124
  %call131 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %140 = load i32, i32* @tests_failed, align 4
  %inc132 = add nsw i32 %140, 1
  store i32 %inc132, i32* @tests_failed, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.else130, %if.then127
  %141 = load i8*, i8** %string_1, align 4
  %142 = ptrtoint i8* %141 to i64
  %143 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %142)
  %144 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.212 to i64))
  %call134 = call i8* @t_strcpy(i8* %143, i8* %144)
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 515, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.211, i64 0, i64 0))
  %145 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %146 = load i8*, i8** %string_1, align 4
  %147 = ptrtoint %Tstruct.json_array_t_t* %145 to i32
  %148 = call i8* @c_fetch_pointer_from_offset(i32 %147)
  %149 = call i1 @c_isTaintedPointerToTaintedMem(i8* %148)
  br i1 %149, label %_Dynamic_check.succeeded137, label %_Dynamic_check.failed136

_Dynamic_check.succeeded137:                      ; preds = %if.end133
  %150 = bitcast i8* %148 to %Tstruct.json_array_t_t*
  %151 = ptrtoint i8* %146 to i32
  %152 = call i8* @c_fetch_pointer_from_offset(i32 %151)
  %153 = call i1 @c_isTaintedPointerToTaintedMem(i8* %152)
  br i1 %153, label %_Dynamic_check.succeeded139, label %_Dynamic_check.failed138

_Dynamic_check.succeeded139:                      ; preds = %_Dynamic_check.succeeded137
  %call140 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %150, i8* %152)
  %cmp141 = icmp eq i32 %call140, 0
  br i1 %cmp141, label %if.then142, label %if.else145

if.then142:                                       ; preds = %_Dynamic_check.succeeded139
  %call143 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %154 = load i32, i32* @tests_passed, align 4
  %inc144 = add nsw i32 %154, 1
  store i32 %inc144, i32* @tests_passed, align 4
  br label %if.end148

_Dynamic_check.failed136:                         ; preds = %if.end133
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed138:                         ; preds = %_Dynamic_check.succeeded137
  call void @llvm.trap() #6
  unreachable

if.else145:                                       ; preds = %_Dynamic_check.succeeded139
  %call146 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %155 = load i32, i32* @tests_failed, align 4
  %inc147 = add nsw i32 %155, 1
  store i32 %inc147, i32* @tests_failed, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.else145, %if.then142
  %156 = load i8*, i8** %string_1, align 4
  %157 = ptrtoint i8* %156 to i64
  %158 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %157)
  %159 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.213 to i64))
  %call149 = call i8* @t_strcpy(i8* %158, i8* %159)
  %call150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 517, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.214, i64 0, i64 0))
  %160 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %161 = load i8*, i8** %string_1, align 4
  %162 = ptrtoint %Tstruct.json_array_t_t* %160 to i32
  %163 = call i8* @c_fetch_pointer_from_offset(i32 %162)
  %164 = call i1 @c_isTaintedPointerToTaintedMem(i8* %163)
  br i1 %164, label %_Dynamic_check.succeeded152, label %_Dynamic_check.failed151

_Dynamic_check.succeeded152:                      ; preds = %if.end148
  %165 = bitcast i8* %163 to %Tstruct.json_array_t_t*
  %166 = ptrtoint i8* %161 to i32
  %167 = call i8* @c_fetch_pointer_from_offset(i32 %166)
  %168 = call i1 @c_isTaintedPointerToTaintedMem(i8* %167)
  br i1 %168, label %_Dynamic_check.succeeded154, label %_Dynamic_check.failed153

_Dynamic_check.succeeded154:                      ; preds = %_Dynamic_check.succeeded152
  %call155 = call i32 @json_array_replace_string(%Tstruct.json_array_t_t* %165, i64 0, i8* %167)
  %cmp156 = icmp eq i32 %call155, 0
  br i1 %cmp156, label %if.then157, label %if.else160

if.then157:                                       ; preds = %_Dynamic_check.succeeded154
  %call158 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %169 = load i32, i32* @tests_passed, align 4
  %inc159 = add nsw i32 %169, 1
  store i32 %inc159, i32* @tests_passed, align 4
  br label %if.end163

_Dynamic_check.failed151:                         ; preds = %if.end148
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed153:                         ; preds = %_Dynamic_check.succeeded152
  call void @llvm.trap() #6
  unreachable

if.else160:                                       ; preds = %_Dynamic_check.succeeded154
  %call161 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %170 = load i32, i32* @tests_failed, align 4
  %inc162 = add nsw i32 %170, 1
  store i32 %inc162, i32* @tests_failed, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.else160, %if.then157
  %171 = load i8*, i8** %string_1, align 4
  %172 = ptrtoint i8* %171 to i64
  %173 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %172)
  %174 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.215 to i64))
  %call164 = call i8* @t_strcpy(i8* %173, i8* %174)
  %175 = load i8*, i8** %string_2, align 4
  %176 = ptrtoint i8* %175 to i64
  %177 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %176)
  %178 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.216 to i64))
  %call165 = call i8* @t_strcpy(i8* %177, i8* %178)
  %call166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 520, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.217, i64 0, i64 0))
  %179 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %180 = load i8*, i8** %string_1, align 4
  %181 = load i8*, i8** %string_2, align 4
  %182 = ptrtoint %Tstruct.json_object_t_t* %179 to i32
  %183 = call i8* @c_fetch_pointer_from_offset(i32 %182)
  %184 = call i1 @c_isTaintedPointerToTaintedMem(i8* %183)
  br i1 %184, label %_Dynamic_check.succeeded168, label %_Dynamic_check.failed167

_Dynamic_check.succeeded168:                      ; preds = %if.end163
  %185 = bitcast i8* %183 to %Tstruct.json_object_t_t*
  %186 = ptrtoint i8* %180 to i32
  %187 = call i8* @c_fetch_pointer_from_offset(i32 %186)
  %188 = call i1 @c_isTaintedPointerToTaintedMem(i8* %187)
  br i1 %188, label %_Dynamic_check.succeeded170, label %_Dynamic_check.failed169

_Dynamic_check.succeeded170:                      ; preds = %_Dynamic_check.succeeded168
  %189 = ptrtoint i8* %181 to i32
  %190 = call i8* @c_fetch_pointer_from_offset(i32 %189)
  %191 = call i1 @c_isTaintedPointerToTaintedMem(i8* %190)
  br i1 %191, label %_Dynamic_check.succeeded172, label %_Dynamic_check.failed171

_Dynamic_check.succeeded172:                      ; preds = %_Dynamic_check.succeeded170
  %call173 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %185, i8* %187, i8* %190)
  %cmp174 = icmp eq i32 %call173, 0
  br i1 %cmp174, label %if.then175, label %if.else178

if.then175:                                       ; preds = %_Dynamic_check.succeeded172
  %call176 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %192 = load i32, i32* @tests_passed, align 4
  %inc177 = add nsw i32 %192, 1
  store i32 %inc177, i32* @tests_passed, align 4
  br label %if.end181

_Dynamic_check.failed167:                         ; preds = %if.end163
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed169:                         ; preds = %_Dynamic_check.succeeded168
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed171:                         ; preds = %_Dynamic_check.succeeded170
  call void @llvm.trap() #6
  unreachable

if.else178:                                       ; preds = %_Dynamic_check.succeeded172
  %call179 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %193 = load i32, i32* @tests_failed, align 4
  %inc180 = add nsw i32 %193, 1
  store i32 %inc180, i32* @tests_failed, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %194 = load i8*, i8** %string_1, align 4
  %195 = ptrtoint i8* %194 to i64
  %196 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %195)
  %197 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.215 to i64))
  %call182 = call i8* @t_strcpy(i8* %196, i8* %197)
  %198 = load i8*, i8** %string_2, align 4
  %199 = ptrtoint i8* %198 to i64
  %200 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %199)
  %201 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.218 to i64))
  %call183 = call i8* @t_strcpy(i8* %200, i8* %201)
  %call184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 523, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.217, i64 0, i64 0))
  %202 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %203 = load i8*, i8** %string_1, align 4
  %204 = load i8*, i8** %string_2, align 4
  %205 = ptrtoint %Tstruct.json_object_t_t* %202 to i32
  %206 = call i8* @c_fetch_pointer_from_offset(i32 %205)
  %207 = call i1 @c_isTaintedPointerToTaintedMem(i8* %206)
  br i1 %207, label %_Dynamic_check.succeeded186, label %_Dynamic_check.failed185

_Dynamic_check.succeeded186:                      ; preds = %if.end181
  %208 = bitcast i8* %206 to %Tstruct.json_object_t_t*
  %209 = ptrtoint i8* %203 to i32
  %210 = call i8* @c_fetch_pointer_from_offset(i32 %209)
  %211 = call i1 @c_isTaintedPointerToTaintedMem(i8* %210)
  br i1 %211, label %_Dynamic_check.succeeded188, label %_Dynamic_check.failed187

_Dynamic_check.succeeded188:                      ; preds = %_Dynamic_check.succeeded186
  %212 = ptrtoint i8* %204 to i32
  %213 = call i8* @c_fetch_pointer_from_offset(i32 %212)
  %214 = call i1 @c_isTaintedPointerToTaintedMem(i8* %213)
  br i1 %214, label %_Dynamic_check.succeeded190, label %_Dynamic_check.failed189

_Dynamic_check.succeeded190:                      ; preds = %_Dynamic_check.succeeded188
  %call191 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %208, i8* %210, i8* %213)
  %cmp192 = icmp eq i32 %call191, 0
  br i1 %cmp192, label %if.then193, label %if.else196

if.then193:                                       ; preds = %_Dynamic_check.succeeded190
  %call194 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %215 = load i32, i32* @tests_passed, align 4
  %inc195 = add nsw i32 %215, 1
  store i32 %inc195, i32* @tests_passed, align 4
  br label %if.end199

_Dynamic_check.failed185:                         ; preds = %if.end181
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed187:                         ; preds = %_Dynamic_check.succeeded186
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed189:                         ; preds = %_Dynamic_check.succeeded188
  call void @llvm.trap() #6
  unreachable

if.else196:                                       ; preds = %_Dynamic_check.succeeded190
  %call197 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %216 = load i32, i32* @tests_failed, align 4
  %inc198 = add nsw i32 %216, 1
  store i32 %inc198, i32* @tests_failed, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.else196, %if.then193
  %217 = load i8*, i8** %string_1, align 4
  %218 = ptrtoint i8* %217 to i64
  %219 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %218)
  %220 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.219 to i64))
  %call200 = call i8* @t_strcpy(i8* %219, i8* %220)
  %221 = load i8*, i8** %string_2, align 4
  %222 = ptrtoint i8* %221 to i64
  %223 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %222)
  %224 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.220 to i64))
  %call201 = call i8* @t_strcpy(i8* %223, i8* %224)
  %call202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 526, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.217, i64 0, i64 0))
  %225 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %226 = load i8*, i8** %string_1, align 4
  %227 = load i8*, i8** %string_2, align 4
  %228 = ptrtoint %Tstruct.json_object_t_t* %225 to i32
  %229 = call i8* @c_fetch_pointer_from_offset(i32 %228)
  %230 = call i1 @c_isTaintedPointerToTaintedMem(i8* %229)
  br i1 %230, label %_Dynamic_check.succeeded204, label %_Dynamic_check.failed203

_Dynamic_check.succeeded204:                      ; preds = %if.end199
  %231 = bitcast i8* %229 to %Tstruct.json_object_t_t*
  %232 = ptrtoint i8* %226 to i32
  %233 = call i8* @c_fetch_pointer_from_offset(i32 %232)
  %234 = call i1 @c_isTaintedPointerToTaintedMem(i8* %233)
  br i1 %234, label %_Dynamic_check.succeeded206, label %_Dynamic_check.failed205

_Dynamic_check.succeeded206:                      ; preds = %_Dynamic_check.succeeded204
  %235 = ptrtoint i8* %227 to i32
  %236 = call i8* @c_fetch_pointer_from_offset(i32 %235)
  %237 = call i1 @c_isTaintedPointerToTaintedMem(i8* %236)
  br i1 %237, label %_Dynamic_check.succeeded208, label %_Dynamic_check.failed207

_Dynamic_check.succeeded208:                      ; preds = %_Dynamic_check.succeeded206
  %call209 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %231, i8* %233, i8* %236)
  %cmp210 = icmp eq i32 %call209, 0
  br i1 %cmp210, label %if.then211, label %if.else214

if.then211:                                       ; preds = %_Dynamic_check.succeeded208
  %call212 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %238 = load i32, i32* @tests_passed, align 4
  %inc213 = add nsw i32 %238, 1
  store i32 %inc213, i32* @tests_passed, align 4
  br label %if.end217

_Dynamic_check.failed203:                         ; preds = %if.end199
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed205:                         ; preds = %_Dynamic_check.succeeded204
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed207:                         ; preds = %_Dynamic_check.succeeded206
  call void @llvm.trap() #6
  unreachable

if.else214:                                       ; preds = %_Dynamic_check.succeeded208
  %call215 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %239 = load i32, i32* @tests_failed, align 4
  %inc216 = add nsw i32 %239, 1
  store i32 %inc216, i32* @tests_failed, align 4
  br label %if.end217

if.end217:                                        ; preds = %if.else214, %if.then211
  %240 = load i8*, i8** %string_1, align 4
  %241 = ptrtoint i8* %240 to i64
  %242 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %241)
  %243 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.219 to i64))
  %call218 = call i8* @t_strcpy(i8* %242, i8* %243)
  %call219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 528, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.221, i64 0, i64 0))
  %244 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %245 = load i8*, i8** %string_1, align 4
  %246 = ptrtoint %Tstruct.json_object_t_t* %244 to i32
  %247 = call i8* @c_fetch_pointer_from_offset(i32 %246)
  %248 = call i1 @c_isTaintedPointerToTaintedMem(i8* %247)
  br i1 %248, label %_Dynamic_check.succeeded221, label %_Dynamic_check.failed220

_Dynamic_check.succeeded221:                      ; preds = %if.end217
  %249 = bitcast i8* %247 to %Tstruct.json_object_t_t*
  %250 = ptrtoint i8* %245 to i32
  %251 = call i8* @c_fetch_pointer_from_offset(i32 %250)
  %252 = call i1 @c_isTaintedPointerToTaintedMem(i8* %251)
  br i1 %252, label %_Dynamic_check.succeeded223, label %_Dynamic_check.failed222

_Dynamic_check.succeeded223:                      ; preds = %_Dynamic_check.succeeded221
  %call224 = call i32 @json_object_dotremove(%Tstruct.json_object_t_t* %249, i8* %251)
  %cmp225 = icmp eq i32 %call224, 0
  br i1 %cmp225, label %if.then226, label %if.else229

if.then226:                                       ; preds = %_Dynamic_check.succeeded223
  %call227 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %253 = load i32, i32* @tests_passed, align 4
  %inc228 = add nsw i32 %253, 1
  store i32 %inc228, i32* @tests_passed, align 4
  br label %if.end232

_Dynamic_check.failed220:                         ; preds = %if.end217
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed222:                         ; preds = %_Dynamic_check.succeeded221
  call void @llvm.trap() #6
  unreachable

if.else229:                                       ; preds = %_Dynamic_check.succeeded223
  %call230 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %254 = load i32, i32* @tests_failed, align 4
  %inc231 = add nsw i32 %254, 1
  store i32 %inc231, i32* @tests_failed, align 4
  br label %if.end232

if.end232:                                        ; preds = %if.else229, %if.then226
  %255 = load i8*, i8** %string_1, align 4
  %256 = ptrtoint i8* %255 to i64
  %257 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %256)
  %258 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.62 to i64))
  %call233 = call i8* @t_strcpy(i8* %257, i8* %258)
  %259 = load i8*, i8** %string_2, align 4
  %260 = ptrtoint i8* %259 to i64
  %261 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %260)
  %262 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([12 x i8]* @.str.61 to i64))
  %call234 = call i8* @t_strcpy(i8* %261, i8* %262)
  %call235 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 531, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %263 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %264 = load i8*, i8** %string_1, align 4
  %265 = load i8*, i8** %string_2, align 4
  %266 = ptrtoint %Tstruct.json_object_t_t* %263 to i32
  %267 = call i8* @c_fetch_pointer_from_offset(i32 %266)
  %268 = call i1 @c_isTaintedPointerToTaintedMem(i8* %267)
  br i1 %268, label %_Dynamic_check.succeeded237, label %_Dynamic_check.failed236

_Dynamic_check.succeeded237:                      ; preds = %if.end232
  %269 = bitcast i8* %267 to %Tstruct.json_object_t_t*
  %270 = ptrtoint i8* %264 to i32
  %271 = call i8* @c_fetch_pointer_from_offset(i32 %270)
  %272 = call i1 @c_isTaintedPointerToTaintedMem(i8* %271)
  br i1 %272, label %_Dynamic_check.succeeded239, label %_Dynamic_check.failed238

_Dynamic_check.succeeded239:                      ; preds = %_Dynamic_check.succeeded237
  %273 = ptrtoint i8* %265 to i32
  %274 = call i8* @c_fetch_pointer_from_offset(i32 %273)
  %275 = call i1 @c_isTaintedPointerToTaintedMem(i8* %274)
  br i1 %275, label %_Dynamic_check.succeeded241, label %_Dynamic_check.failed240

_Dynamic_check.succeeded241:                      ; preds = %_Dynamic_check.succeeded239
  %call242 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %269, i8* %271, i8* %274)
  %cmp243 = icmp eq i32 %call242, 0
  br i1 %cmp243, label %if.then244, label %if.else247

if.then244:                                       ; preds = %_Dynamic_check.succeeded241
  %call245 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %276 = load i32, i32* @tests_passed, align 4
  %inc246 = add nsw i32 %276, 1
  store i32 %inc246, i32* @tests_passed, align 4
  br label %if.end250

_Dynamic_check.failed236:                         ; preds = %if.end232
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed238:                         ; preds = %_Dynamic_check.succeeded237
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed240:                         ; preds = %_Dynamic_check.succeeded239
  call void @llvm.trap() #6
  unreachable

if.else247:                                       ; preds = %_Dynamic_check.succeeded241
  %call248 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %277 = load i32, i32* @tests_failed, align 4
  %inc249 = add nsw i32 %277, 1
  store i32 %inc249, i32* @tests_failed, align 4
  br label %if.end250

if.end250:                                        ; preds = %if.else247, %if.then244
  %278 = load i8*, i8** %string_1, align 4
  %279 = ptrtoint i8* %278 to i64
  %280 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %279)
  %281 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.63 to i64))
  %call251 = call i8* @t_strcpy(i8* %280, i8* %281)
  %282 = load i8*, i8** %string_2, align 4
  %283 = ptrtoint i8* %282 to i64
  %284 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %283)
  %285 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.65 to i64))
  %call252 = call i8* @t_strcpy(i8* %284, i8* %285)
  %call253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 534, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %286 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %287 = load i8*, i8** %string_1, align 4
  %288 = load i8*, i8** %string_2, align 4
  %289 = ptrtoint %Tstruct.json_object_t_t* %286 to i32
  %290 = call i8* @c_fetch_pointer_from_offset(i32 %289)
  %291 = call i1 @c_isTaintedPointerToTaintedMem(i8* %290)
  br i1 %291, label %_Dynamic_check.succeeded255, label %_Dynamic_check.failed254

_Dynamic_check.succeeded255:                      ; preds = %if.end250
  %292 = bitcast i8* %290 to %Tstruct.json_object_t_t*
  %293 = ptrtoint i8* %287 to i32
  %294 = call i8* @c_fetch_pointer_from_offset(i32 %293)
  %295 = call i1 @c_isTaintedPointerToTaintedMem(i8* %294)
  br i1 %295, label %_Dynamic_check.succeeded257, label %_Dynamic_check.failed256

_Dynamic_check.succeeded257:                      ; preds = %_Dynamic_check.succeeded255
  %296 = ptrtoint i8* %288 to i32
  %297 = call i8* @c_fetch_pointer_from_offset(i32 %296)
  %298 = call i1 @c_isTaintedPointerToTaintedMem(i8* %297)
  br i1 %298, label %_Dynamic_check.succeeded259, label %_Dynamic_check.failed258

_Dynamic_check.succeeded259:                      ; preds = %_Dynamic_check.succeeded257
  %call260 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %292, i8* %294, i8* %297)
  %cmp261 = icmp eq i32 %call260, 0
  br i1 %cmp261, label %if.then262, label %if.else265

if.then262:                                       ; preds = %_Dynamic_check.succeeded259
  %call263 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %299 = load i32, i32* @tests_passed, align 4
  %inc264 = add nsw i32 %299, 1
  store i32 %inc264, i32* @tests_passed, align 4
  br label %if.end268

_Dynamic_check.failed254:                         ; preds = %if.end250
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed256:                         ; preds = %_Dynamic_check.succeeded255
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed258:                         ; preds = %_Dynamic_check.succeeded257
  call void @llvm.trap() #6
  unreachable

if.else265:                                       ; preds = %_Dynamic_check.succeeded259
  %call266 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %300 = load i32, i32* @tests_failed, align 4
  %inc267 = add nsw i32 %300, 1
  store i32 %inc267, i32* @tests_failed, align 4
  br label %if.end268

if.end268:                                        ; preds = %if.else265, %if.then262
  %301 = load i8*, i8** %string_1, align 4
  %302 = ptrtoint i8* %301 to i64
  %303 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %302)
  %304 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([17 x i8]* @.str.66 to i64))
  %call269 = call i8* @t_strcpy(i8* %303, i8* %304)
  %305 = load i8*, i8** %string_2, align 4
  %306 = ptrtoint i8* %305 to i64
  %307 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %306)
  %308 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([24 x i8]* @.str.68 to i64))
  %call270 = call i8* @t_strcpy(i8* %307, i8* %308)
  %call271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 537, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %309 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %310 = load i8*, i8** %string_1, align 4
  %311 = load i8*, i8** %string_2, align 4
  %312 = ptrtoint %Tstruct.json_object_t_t* %309 to i32
  %313 = call i8* @c_fetch_pointer_from_offset(i32 %312)
  %314 = call i1 @c_isTaintedPointerToTaintedMem(i8* %313)
  br i1 %314, label %_Dynamic_check.succeeded273, label %_Dynamic_check.failed272

_Dynamic_check.succeeded273:                      ; preds = %if.end268
  %315 = bitcast i8* %313 to %Tstruct.json_object_t_t*
  %316 = ptrtoint i8* %310 to i32
  %317 = call i8* @c_fetch_pointer_from_offset(i32 %316)
  %318 = call i1 @c_isTaintedPointerToTaintedMem(i8* %317)
  br i1 %318, label %_Dynamic_check.succeeded275, label %_Dynamic_check.failed274

_Dynamic_check.succeeded275:                      ; preds = %_Dynamic_check.succeeded273
  %319 = ptrtoint i8* %311 to i32
  %320 = call i8* @c_fetch_pointer_from_offset(i32 %319)
  %321 = call i1 @c_isTaintedPointerToTaintedMem(i8* %320)
  br i1 %321, label %_Dynamic_check.succeeded277, label %_Dynamic_check.failed276

_Dynamic_check.succeeded277:                      ; preds = %_Dynamic_check.succeeded275
  %call278 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %315, i8* %317, i8* %320)
  %cmp279 = icmp eq i32 %call278, 0
  br i1 %cmp279, label %if.then280, label %if.else283

if.then280:                                       ; preds = %_Dynamic_check.succeeded277
  %call281 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %322 = load i32, i32* @tests_passed, align 4
  %inc282 = add nsw i32 %322, 1
  store i32 %inc282, i32* @tests_passed, align 4
  br label %if.end286

_Dynamic_check.failed272:                         ; preds = %if.end268
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed274:                         ; preds = %_Dynamic_check.succeeded273
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed276:                         ; preds = %_Dynamic_check.succeeded275
  call void @llvm.trap() #6
  unreachable

if.else283:                                       ; preds = %_Dynamic_check.succeeded277
  %call284 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %323 = load i32, i32* @tests_failed, align 4
  %inc285 = add nsw i32 %323, 1
  store i32 %inc285, i32* @tests_failed, align 4
  br label %if.end286

if.end286:                                        ; preds = %if.else283, %if.then280
  %324 = load i8*, i8** %string_1, align 4
  %325 = ptrtoint i8* %324 to i64
  %326 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %325)
  %327 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.222 to i64))
  %call287 = call i8* @t_strcpy(i8* %326, i8* %327)
  %328 = load i8*, i8** %string_2, align 4
  %329 = ptrtoint i8* %328 to i64
  %330 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %329)
  %331 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.223 to i64))
  %call288 = call i8* @t_strcpy(i8* %330, i8* %331)
  %call289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 540, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %332 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %333 = load i8*, i8** %string_1, align 4
  %334 = load i8*, i8** %string_2, align 4
  %335 = ptrtoint %Tstruct.json_object_t_t* %332 to i32
  %336 = call i8* @c_fetch_pointer_from_offset(i32 %335)
  %337 = call i1 @c_isTaintedPointerToTaintedMem(i8* %336)
  br i1 %337, label %_Dynamic_check.succeeded291, label %_Dynamic_check.failed290

_Dynamic_check.succeeded291:                      ; preds = %if.end286
  %338 = bitcast i8* %336 to %Tstruct.json_object_t_t*
  %339 = ptrtoint i8* %333 to i32
  %340 = call i8* @c_fetch_pointer_from_offset(i32 %339)
  %341 = call i1 @c_isTaintedPointerToTaintedMem(i8* %340)
  br i1 %341, label %_Dynamic_check.succeeded293, label %_Dynamic_check.failed292

_Dynamic_check.succeeded293:                      ; preds = %_Dynamic_check.succeeded291
  %342 = ptrtoint i8* %334 to i32
  %343 = call i8* @c_fetch_pointer_from_offset(i32 %342)
  %344 = call i1 @c_isTaintedPointerToTaintedMem(i8* %343)
  br i1 %344, label %_Dynamic_check.succeeded295, label %_Dynamic_check.failed294

_Dynamic_check.succeeded295:                      ; preds = %_Dynamic_check.succeeded293
  %call296 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %338, i8* %340, i8* %343)
  %cmp297 = icmp eq i32 %call296, 0
  br i1 %cmp297, label %if.then298, label %if.else301

if.then298:                                       ; preds = %_Dynamic_check.succeeded295
  %call299 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %345 = load i32, i32* @tests_passed, align 4
  %inc300 = add nsw i32 %345, 1
  store i32 %inc300, i32* @tests_passed, align 4
  br label %if.end304

_Dynamic_check.failed290:                         ; preds = %if.end286
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed292:                         ; preds = %_Dynamic_check.succeeded291
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed294:                         ; preds = %_Dynamic_check.succeeded293
  call void @llvm.trap() #6
  unreachable

if.else301:                                       ; preds = %_Dynamic_check.succeeded295
  %call302 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %346 = load i32, i32* @tests_failed, align 4
  %inc303 = add nsw i32 %346, 1
  store i32 %inc303, i32* @tests_failed, align 4
  br label %if.end304

if.end304:                                        ; preds = %if.else301, %if.then298
  %call305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 541, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.224, i64 0, i64 0))
  %347 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_from_file, align 4
  %348 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val, align 4
  %349 = ptrtoint %Tstruct.json_value_t_t* %347 to i32
  %350 = call i8* @c_fetch_pointer_from_offset(i32 %349)
  %351 = call i1 @c_isTaintedPointerToTaintedMem(i8* %350)
  br i1 %351, label %_Dynamic_check.succeeded307, label %_Dynamic_check.failed306

_Dynamic_check.succeeded307:                      ; preds = %if.end304
  %352 = bitcast i8* %350 to %Tstruct.json_value_t_t*
  %353 = ptrtoint %Tstruct.json_value_t_t* %348 to i32
  %354 = call i8* @c_fetch_pointer_from_offset(i32 %353)
  %355 = call i1 @c_isTaintedPointerToTaintedMem(i8* %354)
  br i1 %355, label %_Dynamic_check.succeeded309, label %_Dynamic_check.failed308

_Dynamic_check.succeeded309:                      ; preds = %_Dynamic_check.succeeded307
  %356 = bitcast i8* %354 to %Tstruct.json_value_t_t*
  %call310 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %352, %Tstruct.json_value_t_t* %356)
  %tobool = icmp ne i32 %call310, 0
  br i1 %tobool, label %if.then311, label %if.else314

if.then311:                                       ; preds = %_Dynamic_check.succeeded309
  %call312 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %357 = load i32, i32* @tests_passed, align 4
  %inc313 = add nsw i32 %357, 1
  store i32 %inc313, i32* @tests_passed, align 4
  br label %if.end317

_Dynamic_check.failed306:                         ; preds = %if.end304
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed308:                         ; preds = %_Dynamic_check.succeeded307
  call void @llvm.trap() #6
  unreachable

if.else314:                                       ; preds = %_Dynamic_check.succeeded309
  %call315 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %358 = load i32, i32* @tests_failed, align 4
  %inc316 = add nsw i32 %358, 1
  store i32 %inc316, i32* @tests_failed, align 4
  br label %if.end317

if.end317:                                        ; preds = %if.else314, %if.then311
  %359 = load i8*, i8** %string_1, align 4
  %360 = ptrtoint i8* %359 to i64
  %361 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %360)
  %362 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([1 x i8]* @.str.97 to i64))
  %call318 = call i8* @t_strcpy(i8* %361, i8* %362)
  %call319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 544, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.225, i64 0, i64 0))
  %363 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %364 = load i8*, i8** %string_1, align 4
  %365 = ptrtoint %Tstruct.json_object_t_t* %363 to i32
  %366 = call i8* @c_fetch_pointer_from_offset(i32 %365)
  %367 = call i1 @c_isTaintedPointerToTaintedMem(i8* %366)
  br i1 %367, label %_Dynamic_check.succeeded321, label %_Dynamic_check.failed320

_Dynamic_check.succeeded321:                      ; preds = %if.end317
  %368 = bitcast i8* %366 to %Tstruct.json_object_t_t*
  %369 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %370 = call i1 @c_isTaintedPointerToTaintedMem(i8* %369)
  br i1 %370, label %_Dynamic_check.succeeded323, label %_Dynamic_check.failed322

_Dynamic_check.succeeded323:                      ; preds = %_Dynamic_check.succeeded321
  %371 = ptrtoint i8* %364 to i32
  %372 = call i8* @c_fetch_pointer_from_offset(i32 %371)
  %373 = call i1 @c_isTaintedPointerToTaintedMem(i8* %372)
  br i1 %373, label %_Dynamic_check.succeeded325, label %_Dynamic_check.failed324

_Dynamic_check.succeeded325:                      ; preds = %_Dynamic_check.succeeded323
  %call326 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %368, i8* %369, i8* %372)
  %cmp327 = icmp eq i32 %call326, -1
  br i1 %cmp327, label %if.then328, label %if.else331

if.then328:                                       ; preds = %_Dynamic_check.succeeded325
  %call329 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %374 = load i32, i32* @tests_passed, align 4
  %inc330 = add nsw i32 %374, 1
  store i32 %inc330, i32* @tests_passed, align 4
  br label %if.end334

_Dynamic_check.failed320:                         ; preds = %if.end317
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed322:                         ; preds = %_Dynamic_check.succeeded321
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed324:                         ; preds = %_Dynamic_check.succeeded323
  call void @llvm.trap() #6
  unreachable

if.else331:                                       ; preds = %_Dynamic_check.succeeded325
  %call332 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %375 = load i32, i32* @tests_failed, align 4
  %inc333 = add nsw i32 %375, 1
  store i32 %inc333, i32* @tests_failed, align 4
  br label %if.end334

if.end334:                                        ; preds = %if.else331, %if.then328
  %376 = load i8*, i8** %string_1, align 4
  %377 = ptrtoint i8* %376 to i64
  %378 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %377)
  %379 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.201 to i64))
  %call335 = call i8* @t_strcpy(i8* %378, i8* %379)
  %call336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 546, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.226, i64 0, i64 0))
  %380 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %381 = load i8*, i8** %string_1, align 4
  %382 = ptrtoint %Tstruct.json_object_t_t* %380 to i32
  %383 = call i8* @c_fetch_pointer_from_offset(i32 %382)
  %384 = call i1 @c_isTaintedPointerToTaintedMem(i8* %383)
  br i1 %384, label %_Dynamic_check.succeeded338, label %_Dynamic_check.failed337

_Dynamic_check.succeeded338:                      ; preds = %if.end334
  %385 = bitcast i8* %383 to %Tstruct.json_object_t_t*
  %386 = ptrtoint i8* %381 to i32
  %387 = call i8* @c_fetch_pointer_from_offset(i32 %386)
  %388 = call i1 @c_isTaintedPointerToTaintedMem(i8* %387)
  br i1 %388, label %_Dynamic_check.succeeded340, label %_Dynamic_check.failed339

_Dynamic_check.succeeded340:                      ; preds = %_Dynamic_check.succeeded338
  %389 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %390 = call i1 @c_isTaintedPointerToTaintedMem(i8* %389)
  br i1 %390, label %_Dynamic_check.succeeded342, label %_Dynamic_check.failed341

_Dynamic_check.succeeded342:                      ; preds = %_Dynamic_check.succeeded340
  %call343 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %385, i8* %387, i8* %389)
  %cmp344 = icmp eq i32 %call343, -1
  br i1 %cmp344, label %if.then345, label %if.else348

if.then345:                                       ; preds = %_Dynamic_check.succeeded342
  %call346 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %391 = load i32, i32* @tests_passed, align 4
  %inc347 = add nsw i32 %391, 1
  store i32 %inc347, i32* @tests_passed, align 4
  br label %if.end351

_Dynamic_check.failed337:                         ; preds = %if.end334
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed339:                         ; preds = %_Dynamic_check.succeeded338
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed341:                         ; preds = %_Dynamic_check.succeeded340
  call void @llvm.trap() #6
  unreachable

if.else348:                                       ; preds = %_Dynamic_check.succeeded342
  %call349 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %392 = load i32, i32* @tests_failed, align 4
  %inc350 = add nsw i32 %392, 1
  store i32 %inc350, i32* @tests_failed, align 4
  br label %if.end351

if.end351:                                        ; preds = %if.else348, %if.then345
  %call352 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 547, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.227, i64 0, i64 0))
  %393 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %394 = ptrtoint %Tstruct.json_object_t_t* %393 to i32
  %395 = call i8* @c_fetch_pointer_from_offset(i32 %394)
  %396 = call i1 @c_isTaintedPointerToTaintedMem(i8* %395)
  br i1 %396, label %_Dynamic_check.succeeded354, label %_Dynamic_check.failed353

_Dynamic_check.succeeded354:                      ; preds = %if.end351
  %397 = bitcast i8* %395 to %Tstruct.json_object_t_t*
  %398 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %399 = call i1 @c_isTaintedPointerToTaintedMem(i8* %398)
  br i1 %399, label %_Dynamic_check.succeeded356, label %_Dynamic_check.failed355

_Dynamic_check.succeeded356:                      ; preds = %_Dynamic_check.succeeded354
  %400 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %401 = call i1 @c_isTaintedPointerToTaintedMem(i8* %400)
  br i1 %401, label %_Dynamic_check.succeeded358, label %_Dynamic_check.failed357

_Dynamic_check.succeeded358:                      ; preds = %_Dynamic_check.succeeded356
  %call359 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %397, i8* %398, i8* %400)
  %cmp360 = icmp eq i32 %call359, -1
  br i1 %cmp360, label %if.then361, label %if.else364

if.then361:                                       ; preds = %_Dynamic_check.succeeded358
  %call362 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %402 = load i32, i32* @tests_passed, align 4
  %inc363 = add nsw i32 %402, 1
  store i32 %inc363, i32* @tests_passed, align 4
  br label %if.end367

_Dynamic_check.failed353:                         ; preds = %if.end351
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed355:                         ; preds = %_Dynamic_check.succeeded354
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed357:                         ; preds = %_Dynamic_check.succeeded356
  call void @llvm.trap() #6
  unreachable

if.else364:                                       ; preds = %_Dynamic_check.succeeded358
  %call365 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %403 = load i32, i32* @tests_failed, align 4
  %inc366 = add nsw i32 %403, 1
  store i32 %inc366, i32* @tests_failed, align 4
  br label %if.end367

if.end367:                                        ; preds = %if.else364, %if.then361
  %call368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 548, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.228, i64 0, i64 0))
  %404 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %405 = ptrtoint %Tstruct.json_object_t_t* %404 to i32
  %406 = call i8* @c_fetch_pointer_from_offset(i32 %405)
  %407 = call i1 @c_isTaintedPointerToTaintedMem(i8* %406)
  br i1 %407, label %_Dynamic_check.succeeded370, label %_Dynamic_check.failed369

_Dynamic_check.succeeded370:                      ; preds = %if.end367
  %408 = bitcast i8* %406 to %Tstruct.json_object_t_t*
  %409 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %410 = call i1 @c_isTaintedPointerToTaintedMem(i8* %409)
  br i1 %410, label %_Dynamic_check.succeeded372, label %_Dynamic_check.failed371

_Dynamic_check.succeeded372:                      ; preds = %_Dynamic_check.succeeded370
  %411 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %412 = call i1 @c_isTaintedPointerToTaintedMem(i8* %411)
  br i1 %412, label %_Dynamic_check.succeeded374, label %_Dynamic_check.failed373

_Dynamic_check.succeeded374:                      ; preds = %_Dynamic_check.succeeded372
  %413 = bitcast i8* %411 to %Tstruct.json_value_t_t*
  %call375 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %408, i8* %409, %Tstruct.json_value_t_t* %413)
  %cmp376 = icmp eq i32 %call375, -1
  br i1 %cmp376, label %if.then377, label %if.else380

if.then377:                                       ; preds = %_Dynamic_check.succeeded374
  %call378 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %414 = load i32, i32* @tests_passed, align 4
  %inc379 = add nsw i32 %414, 1
  store i32 %inc379, i32* @tests_passed, align 4
  br label %if.end383

_Dynamic_check.failed369:                         ; preds = %if.end367
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed371:                         ; preds = %_Dynamic_check.succeeded370
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed373:                         ; preds = %_Dynamic_check.succeeded372
  call void @llvm.trap() #6
  unreachable

if.else380:                                       ; preds = %_Dynamic_check.succeeded374
  %call381 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %415 = load i32, i32* @tests_failed, align 4
  %inc382 = add nsw i32 %415, 1
  store i32 %inc382, i32* @tests_failed, align 4
  br label %if.end383

if.end383:                                        ; preds = %if.else380, %if.then377
  %416 = load i8*, i8** %string_1, align 4
  %417 = ptrtoint i8* %416 to i64
  %418 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %417)
  %419 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([1 x i8]* @.str.97 to i64))
  %call384 = call i8* @t_strcpy(i8* %418, i8* %419)
  %call385 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 551, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.229, i64 0, i64 0))
  %420 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %421 = load i8*, i8** %string_1, align 4
  %422 = ptrtoint %Tstruct.json_object_t_t* %420 to i32
  %423 = call i8* @c_fetch_pointer_from_offset(i32 %422)
  %424 = call i1 @c_isTaintedPointerToTaintedMem(i8* %423)
  br i1 %424, label %_Dynamic_check.succeeded387, label %_Dynamic_check.failed386

_Dynamic_check.succeeded387:                      ; preds = %if.end383
  %425 = bitcast i8* %423 to %Tstruct.json_object_t_t*
  %426 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %427 = call i1 @c_isTaintedPointerToTaintedMem(i8* %426)
  br i1 %427, label %_Dynamic_check.succeeded389, label %_Dynamic_check.failed388

_Dynamic_check.succeeded389:                      ; preds = %_Dynamic_check.succeeded387
  %428 = ptrtoint i8* %421 to i32
  %429 = call i8* @c_fetch_pointer_from_offset(i32 %428)
  %430 = call i1 @c_isTaintedPointerToTaintedMem(i8* %429)
  br i1 %430, label %_Dynamic_check.succeeded391, label %_Dynamic_check.failed390

_Dynamic_check.succeeded391:                      ; preds = %_Dynamic_check.succeeded389
  %call392 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %425, i8* %426, i8* %429)
  %cmp393 = icmp eq i32 %call392, -1
  br i1 %cmp393, label %if.then394, label %if.else397

if.then394:                                       ; preds = %_Dynamic_check.succeeded391
  %call395 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %431 = load i32, i32* @tests_passed, align 4
  %inc396 = add nsw i32 %431, 1
  store i32 %inc396, i32* @tests_passed, align 4
  br label %if.end400

_Dynamic_check.failed386:                         ; preds = %if.end383
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed388:                         ; preds = %_Dynamic_check.succeeded387
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed390:                         ; preds = %_Dynamic_check.succeeded389
  call void @llvm.trap() #6
  unreachable

if.else397:                                       ; preds = %_Dynamic_check.succeeded391
  %call398 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %432 = load i32, i32* @tests_failed, align 4
  %inc399 = add nsw i32 %432, 1
  store i32 %inc399, i32* @tests_failed, align 4
  br label %if.end400

if.end400:                                        ; preds = %if.else397, %if.then394
  %433 = load i8*, i8** %string_1, align 4
  %434 = ptrtoint i8* %433 to i64
  %435 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %434)
  %436 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.215 to i64))
  %call401 = call i8* @t_strcpy(i8* %435, i8* %436)
  %call402 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 553, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.230, i64 0, i64 0))
  %437 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %438 = load i8*, i8** %string_1, align 4
  %439 = ptrtoint %Tstruct.json_object_t_t* %437 to i32
  %440 = call i8* @c_fetch_pointer_from_offset(i32 %439)
  %441 = call i1 @c_isTaintedPointerToTaintedMem(i8* %440)
  br i1 %441, label %_Dynamic_check.succeeded404, label %_Dynamic_check.failed403

_Dynamic_check.succeeded404:                      ; preds = %if.end400
  %442 = bitcast i8* %440 to %Tstruct.json_object_t_t*
  %443 = ptrtoint i8* %438 to i32
  %444 = call i8* @c_fetch_pointer_from_offset(i32 %443)
  %445 = call i1 @c_isTaintedPointerToTaintedMem(i8* %444)
  br i1 %445, label %_Dynamic_check.succeeded406, label %_Dynamic_check.failed405

_Dynamic_check.succeeded406:                      ; preds = %_Dynamic_check.succeeded404
  %446 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %447 = call i1 @c_isTaintedPointerToTaintedMem(i8* %446)
  br i1 %447, label %_Dynamic_check.succeeded408, label %_Dynamic_check.failed407

_Dynamic_check.succeeded408:                      ; preds = %_Dynamic_check.succeeded406
  %call409 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %442, i8* %444, i8* %446)
  %cmp410 = icmp eq i32 %call409, -1
  br i1 %cmp410, label %if.then411, label %if.else414

if.then411:                                       ; preds = %_Dynamic_check.succeeded408
  %call412 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %448 = load i32, i32* @tests_passed, align 4
  %inc413 = add nsw i32 %448, 1
  store i32 %inc413, i32* @tests_passed, align 4
  br label %if.end417

_Dynamic_check.failed403:                         ; preds = %if.end400
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed405:                         ; preds = %_Dynamic_check.succeeded404
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed407:                         ; preds = %_Dynamic_check.succeeded406
  call void @llvm.trap() #6
  unreachable

if.else414:                                       ; preds = %_Dynamic_check.succeeded408
  %call415 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %449 = load i32, i32* @tests_failed, align 4
  %inc416 = add nsw i32 %449, 1
  store i32 %inc416, i32* @tests_failed, align 4
  br label %if.end417

if.end417:                                        ; preds = %if.else414, %if.then411
  %call418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 554, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.231, i64 0, i64 0))
  %450 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %451 = ptrtoint %Tstruct.json_object_t_t* %450 to i32
  %452 = call i8* @c_fetch_pointer_from_offset(i32 %451)
  %453 = call i1 @c_isTaintedPointerToTaintedMem(i8* %452)
  br i1 %453, label %_Dynamic_check.succeeded420, label %_Dynamic_check.failed419

_Dynamic_check.succeeded420:                      ; preds = %if.end417
  %454 = bitcast i8* %452 to %Tstruct.json_object_t_t*
  %455 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %456 = call i1 @c_isTaintedPointerToTaintedMem(i8* %455)
  br i1 %456, label %_Dynamic_check.succeeded422, label %_Dynamic_check.failed421

_Dynamic_check.succeeded422:                      ; preds = %_Dynamic_check.succeeded420
  %457 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %458 = call i1 @c_isTaintedPointerToTaintedMem(i8* %457)
  br i1 %458, label %_Dynamic_check.succeeded424, label %_Dynamic_check.failed423

_Dynamic_check.succeeded424:                      ; preds = %_Dynamic_check.succeeded422
  %call425 = call i32 @json_object_dotset_string(%Tstruct.json_object_t_t* %454, i8* %455, i8* %457)
  %cmp426 = icmp eq i32 %call425, -1
  br i1 %cmp426, label %if.then427, label %if.else430

if.then427:                                       ; preds = %_Dynamic_check.succeeded424
  %call428 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %459 = load i32, i32* @tests_passed, align 4
  %inc429 = add nsw i32 %459, 1
  store i32 %inc429, i32* @tests_passed, align 4
  br label %if.end433

_Dynamic_check.failed419:                         ; preds = %if.end417
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed421:                         ; preds = %_Dynamic_check.succeeded420
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed423:                         ; preds = %_Dynamic_check.succeeded422
  call void @llvm.trap() #6
  unreachable

if.else430:                                       ; preds = %_Dynamic_check.succeeded424
  %call431 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %460 = load i32, i32* @tests_failed, align 4
  %inc432 = add nsw i32 %460, 1
  store i32 %inc432, i32* @tests_failed, align 4
  br label %if.end433

if.end433:                                        ; preds = %if.else430, %if.then427
  %call434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 555, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.232, i64 0, i64 0))
  %461 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %462 = ptrtoint %Tstruct.json_object_t_t* %461 to i32
  %463 = call i8* @c_fetch_pointer_from_offset(i32 %462)
  %464 = call i1 @c_isTaintedPointerToTaintedMem(i8* %463)
  br i1 %464, label %_Dynamic_check.succeeded436, label %_Dynamic_check.failed435

_Dynamic_check.succeeded436:                      ; preds = %if.end433
  %465 = bitcast i8* %463 to %Tstruct.json_object_t_t*
  %466 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %467 = call i1 @c_isTaintedPointerToTaintedMem(i8* %466)
  br i1 %467, label %_Dynamic_check.succeeded438, label %_Dynamic_check.failed437

_Dynamic_check.succeeded438:                      ; preds = %_Dynamic_check.succeeded436
  %468 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %469 = call i1 @c_isTaintedPointerToTaintedMem(i8* %468)
  br i1 %469, label %_Dynamic_check.succeeded440, label %_Dynamic_check.failed439

_Dynamic_check.succeeded440:                      ; preds = %_Dynamic_check.succeeded438
  %470 = bitcast i8* %468 to %Tstruct.json_value_t_t*
  %call441 = call i32 @json_object_dotset_value(%Tstruct.json_object_t_t* %465, i8* %466, %Tstruct.json_value_t_t* %470)
  %cmp442 = icmp eq i32 %call441, -1
  br i1 %cmp442, label %if.then443, label %if.else446

if.then443:                                       ; preds = %_Dynamic_check.succeeded440
  %call444 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %471 = load i32, i32* @tests_passed, align 4
  %inc445 = add nsw i32 %471, 1
  store i32 %inc445, i32* @tests_passed, align 4
  br label %if.end449

_Dynamic_check.failed435:                         ; preds = %if.end433
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed437:                         ; preds = %_Dynamic_check.succeeded436
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed439:                         ; preds = %_Dynamic_check.succeeded438
  call void @llvm.trap() #6
  unreachable

if.else446:                                       ; preds = %_Dynamic_check.succeeded440
  %call447 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %472 = load i32, i32* @tests_failed, align 4
  %inc448 = add nsw i32 %472, 1
  store i32 %inc448, i32* @tests_failed, align 4
  br label %if.end449

if.end449:                                        ; preds = %if.else446, %if.then443
  %473 = load i8*, i8** %string_1, align 4
  %474 = ptrtoint i8* %473 to i64
  %475 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %474)
  %476 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.79 to i64))
  %call450 = call i8* @t_strcpy(i8* %475, i8* %476)
  %call451 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 558, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.233, i64 0, i64 0))
  %477 = load i8*, i8** %string_1, align 4
  %478 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %479 = call i1 @c_isTaintedPointerToTaintedMem(i8* %478)
  br i1 %479, label %_Dynamic_check.succeeded453, label %_Dynamic_check.failed452

_Dynamic_check.succeeded453:                      ; preds = %if.end449
  %480 = bitcast i8* %478 to %Tstruct.json_array_t_t*
  %481 = ptrtoint i8* %477 to i32
  %482 = call i8* @c_fetch_pointer_from_offset(i32 %481)
  %483 = call i1 @c_isTaintedPointerToTaintedMem(i8* %482)
  br i1 %483, label %_Dynamic_check.succeeded455, label %_Dynamic_check.failed454

_Dynamic_check.succeeded455:                      ; preds = %_Dynamic_check.succeeded453
  %call456 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %480, i8* %482)
  %cmp457 = icmp eq i32 %call456, -1
  br i1 %cmp457, label %if.then458, label %if.else461

if.then458:                                       ; preds = %_Dynamic_check.succeeded455
  %call459 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %484 = load i32, i32* @tests_passed, align 4
  %inc460 = add nsw i32 %484, 1
  store i32 %inc460, i32* @tests_passed, align 4
  br label %if.end464

_Dynamic_check.failed452:                         ; preds = %if.end449
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed454:                         ; preds = %_Dynamic_check.succeeded453
  call void @llvm.trap() #6
  unreachable

if.else461:                                       ; preds = %_Dynamic_check.succeeded455
  %call462 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %485 = load i32, i32* @tests_failed, align 4
  %inc463 = add nsw i32 %485, 1
  store i32 %inc463, i32* @tests_failed, align 4
  br label %if.end464

if.end464:                                        ; preds = %if.else461, %if.then458
  %call465 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 559, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.234, i64 0, i64 0))
  %486 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %487 = ptrtoint %Tstruct.json_array_t_t* %486 to i32
  %488 = call i8* @c_fetch_pointer_from_offset(i32 %487)
  %489 = call i1 @c_isTaintedPointerToTaintedMem(i8* %488)
  br i1 %489, label %_Dynamic_check.succeeded467, label %_Dynamic_check.failed466

_Dynamic_check.succeeded467:                      ; preds = %if.end464
  %490 = bitcast i8* %488 to %Tstruct.json_array_t_t*
  %491 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %492 = call i1 @c_isTaintedPointerToTaintedMem(i8* %491)
  br i1 %492, label %_Dynamic_check.succeeded469, label %_Dynamic_check.failed468

_Dynamic_check.succeeded469:                      ; preds = %_Dynamic_check.succeeded467
  %493 = bitcast i8* %491 to %Tstruct.json_value_t_t*
  %call470 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %490, %Tstruct.json_value_t_t* %493)
  %cmp471 = icmp eq i32 %call470, -1
  br i1 %cmp471, label %if.then472, label %if.else475

if.then472:                                       ; preds = %_Dynamic_check.succeeded469
  %call473 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %494 = load i32, i32* @tests_passed, align 4
  %inc474 = add nsw i32 %494, 1
  store i32 %inc474, i32* @tests_passed, align 4
  br label %if.end478

_Dynamic_check.failed466:                         ; preds = %if.end464
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed468:                         ; preds = %_Dynamic_check.succeeded467
  call void @llvm.trap() #6
  unreachable

if.else475:                                       ; preds = %_Dynamic_check.succeeded469
  %call476 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %495 = load i32, i32* @tests_failed, align 4
  %inc477 = add nsw i32 %495, 1
  store i32 %inc477, i32* @tests_failed, align 4
  br label %if.end478

if.end478:                                        ; preds = %if.else475, %if.then472
  %call479 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 560, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.235, i64 0, i64 0))
  %496 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %497 = call i1 @c_isTaintedPointerToTaintedMem(i8* %496)
  br i1 %497, label %_Dynamic_check.succeeded481, label %_Dynamic_check.failed480

_Dynamic_check.succeeded481:                      ; preds = %if.end478
  %498 = bitcast i8* %496 to %Tstruct.json_array_t_t*
  %499 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %500 = call i1 @c_isTaintedPointerToTaintedMem(i8* %499)
  br i1 %500, label %_Dynamic_check.succeeded483, label %_Dynamic_check.failed482

_Dynamic_check.succeeded483:                      ; preds = %_Dynamic_check.succeeded481
  %501 = bitcast i8* %499 to %Tstruct.json_value_t_t*
  %call484 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %498, %Tstruct.json_value_t_t* %501)
  %cmp485 = icmp eq i32 %call484, -1
  br i1 %cmp485, label %if.then486, label %if.else489

if.then486:                                       ; preds = %_Dynamic_check.succeeded483
  %call487 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %502 = load i32, i32* @tests_passed, align 4
  %inc488 = add nsw i32 %502, 1
  store i32 %inc488, i32* @tests_passed, align 4
  br label %if.end492

_Dynamic_check.failed480:                         ; preds = %if.end478
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed482:                         ; preds = %_Dynamic_check.succeeded481
  call void @llvm.trap() #6
  unreachable

if.else489:                                       ; preds = %_Dynamic_check.succeeded483
  %call490 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %503 = load i32, i32* @tests_failed, align 4
  %inc491 = add nsw i32 %503, 1
  store i32 %inc491, i32* @tests_failed, align 4
  br label %if.end492

if.end492:                                        ; preds = %if.else489, %if.then486
  %call493 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 561, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.236, i64 0, i64 0))
  %504 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %505 = ptrtoint %Tstruct.json_array_t_t* %504 to i32
  %506 = call i8* @c_fetch_pointer_from_offset(i32 %505)
  %507 = call i1 @c_isTaintedPointerToTaintedMem(i8* %506)
  br i1 %507, label %_Dynamic_check.succeeded495, label %_Dynamic_check.failed494

_Dynamic_check.succeeded495:                      ; preds = %if.end492
  %508 = bitcast i8* %506 to %Tstruct.json_array_t_t*
  %509 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %510 = call i1 @c_isTaintedPointerToTaintedMem(i8* %509)
  br i1 %510, label %_Dynamic_check.succeeded497, label %_Dynamic_check.failed496

_Dynamic_check.succeeded497:                      ; preds = %_Dynamic_check.succeeded495
  %511 = bitcast i8* %509 to %Tstruct.json_value_t_t*
  %call498 = call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %508, i64 0, %Tstruct.json_value_t_t* %511)
  %cmp499 = icmp eq i32 %call498, -1
  br i1 %cmp499, label %if.then500, label %if.else503

if.then500:                                       ; preds = %_Dynamic_check.succeeded497
  %call501 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %512 = load i32, i32* @tests_passed, align 4
  %inc502 = add nsw i32 %512, 1
  store i32 %inc502, i32* @tests_passed, align 4
  br label %if.end506

_Dynamic_check.failed494:                         ; preds = %if.end492
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed496:                         ; preds = %_Dynamic_check.succeeded495
  call void @llvm.trap() #6
  unreachable

if.else503:                                       ; preds = %_Dynamic_check.succeeded497
  %call504 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %513 = load i32, i32* @tests_failed, align 4
  %inc505 = add nsw i32 %513, 1
  store i32 %inc505, i32* @tests_failed, align 4
  br label %if.end506

if.end506:                                        ; preds = %if.else503, %if.then500
  %514 = load i8*, i8** %string_1, align 4
  %515 = ptrtoint i8* %514 to i64
  %516 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %515)
  %517 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.79 to i64))
  %call507 = call i8* @t_strcpy(i8* %516, i8* %517)
  %call508 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 563, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.237, i64 0, i64 0))
  %518 = load i8*, i8** %string_1, align 4
  %519 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %520 = call i1 @c_isTaintedPointerToTaintedMem(i8* %519)
  br i1 %520, label %_Dynamic_check.succeeded510, label %_Dynamic_check.failed509

_Dynamic_check.succeeded510:                      ; preds = %if.end506
  %521 = bitcast i8* %519 to %Tstruct.json_array_t_t*
  %522 = ptrtoint i8* %518 to i32
  %523 = call i8* @c_fetch_pointer_from_offset(i32 %522)
  %524 = call i1 @c_isTaintedPointerToTaintedMem(i8* %523)
  br i1 %524, label %_Dynamic_check.succeeded512, label %_Dynamic_check.failed511

_Dynamic_check.succeeded512:                      ; preds = %_Dynamic_check.succeeded510
  %call513 = call i32 @json_array_replace_string(%Tstruct.json_array_t_t* %521, i64 0, i8* %523)
  %cmp514 = icmp eq i32 %call513, -1
  br i1 %cmp514, label %if.then515, label %if.else518

if.then515:                                       ; preds = %_Dynamic_check.succeeded512
  %call516 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %525 = load i32, i32* @tests_passed, align 4
  %inc517 = add nsw i32 %525, 1
  store i32 %inc517, i32* @tests_passed, align 4
  br label %if.end521

_Dynamic_check.failed509:                         ; preds = %if.end506
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed511:                         ; preds = %_Dynamic_check.succeeded510
  call void @llvm.trap() #6
  unreachable

if.else518:                                       ; preds = %_Dynamic_check.succeeded512
  %call519 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %526 = load i32, i32* @tests_failed, align 4
  %inc520 = add nsw i32 %526, 1
  store i32 %inc520, i32* @tests_failed, align 4
  br label %if.end521

if.end521:                                        ; preds = %if.else518, %if.then515
  %527 = load i8*, i8** %string_1, align 4
  %528 = ptrtoint i8* %527 to i64
  %529 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %528)
  %530 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.238 to i64))
  %call522 = call i8* @t_strcpy(i8* %529, i8* %530)
  %call523 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 565, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.239, i64 0, i64 0))
  %531 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %532 = load i8*, i8** %string_1, align 4
  %533 = ptrtoint %Tstruct.json_array_t_t* %531 to i32
  %534 = call i8* @c_fetch_pointer_from_offset(i32 %533)
  %535 = call i1 @c_isTaintedPointerToTaintedMem(i8* %534)
  br i1 %535, label %_Dynamic_check.succeeded525, label %_Dynamic_check.failed524

_Dynamic_check.succeeded525:                      ; preds = %if.end521
  %536 = bitcast i8* %534 to %Tstruct.json_array_t_t*
  %537 = ptrtoint i8* %532 to i32
  %538 = call i8* @c_fetch_pointer_from_offset(i32 %537)
  %539 = call i1 @c_isTaintedPointerToTaintedMem(i8* %538)
  br i1 %539, label %_Dynamic_check.succeeded527, label %_Dynamic_check.failed526

_Dynamic_check.succeeded527:                      ; preds = %_Dynamic_check.succeeded525
  %call528 = call i32 @json_array_replace_string(%Tstruct.json_array_t_t* %536, i64 100, i8* %538)
  %cmp529 = icmp eq i32 %call528, -1
  br i1 %cmp529, label %if.then530, label %if.else533

if.then530:                                       ; preds = %_Dynamic_check.succeeded527
  %call531 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %540 = load i32, i32* @tests_passed, align 4
  %inc532 = add nsw i32 %540, 1
  store i32 %inc532, i32* @tests_passed, align 4
  br label %if.end536

_Dynamic_check.failed524:                         ; preds = %if.end521
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed526:                         ; preds = %_Dynamic_check.succeeded525
  call void @llvm.trap() #6
  unreachable

if.else533:                                       ; preds = %_Dynamic_check.succeeded527
  %call534 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %541 = load i32, i32* @tests_failed, align 4
  %inc535 = add nsw i32 %541, 1
  store i32 %inc535, i32* @tests_failed, align 4
  br label %if.end536

if.end536:                                        ; preds = %if.else533, %if.then530
  %542 = load i8*, i8** %string_1, align 4
  %543 = ptrtoint i8* %542 to i64
  %544 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %543)
  %545 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.207 to i64))
  %call537 = call i8* @t_strcpy(i8* %544, i8* %545)
  %call538 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 567, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.240, i64 0, i64 0))
  %546 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %547 = load i8*, i8** %string_1, align 4
  %548 = ptrtoint %Tstruct.json_object_t_t* %546 to i32
  %549 = call i8* @c_fetch_pointer_from_offset(i32 %548)
  %550 = call i1 @c_isTaintedPointerToTaintedMem(i8* %549)
  br i1 %550, label %_Dynamic_check.succeeded540, label %_Dynamic_check.failed539

_Dynamic_check.succeeded540:                      ; preds = %if.end536
  %551 = bitcast i8* %549 to %Tstruct.json_object_t_t*
  %552 = ptrtoint i8* %547 to i32
  %553 = call i8* @c_fetch_pointer_from_offset(i32 %552)
  %554 = call i1 @c_isTaintedPointerToTaintedMem(i8* %553)
  br i1 %554, label %_Dynamic_check.succeeded542, label %_Dynamic_check.failed541

_Dynamic_check.succeeded542:                      ; preds = %_Dynamic_check.succeeded540
  %call543 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %551, i8* %553)
  %555 = ptrtoint %Tstruct.json_array_t_t* %call543 to i32
  %556 = call i8* @c_fetch_pointer_from_offset(i32 %555)
  %557 = call i1 @c_isTaintedPointerToTaintedMem(i8* %556)
  br i1 %557, label %_Dynamic_check.succeeded545, label %_Dynamic_check.failed544

_Dynamic_check.succeeded545:                      ; preds = %_Dynamic_check.succeeded542
  %558 = bitcast i8* %556 to %Tstruct.json_array_t_t*
  %559 = call i8* @c_fetch_pointer_from_offset(i32 0)
  %560 = call i1 @c_isTaintedPointerToTaintedMem(i8* %559)
  br i1 %560, label %_Dynamic_check.succeeded547, label %_Dynamic_check.failed546

_Dynamic_check.succeeded547:                      ; preds = %_Dynamic_check.succeeded545
  %call548 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %558, i8* %559)
  %cmp549 = icmp eq i32 %call548, -1
  br i1 %cmp549, label %if.then550, label %if.else553

if.then550:                                       ; preds = %_Dynamic_check.succeeded547
  %call551 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %561 = load i32, i32* @tests_passed, align 4
  %inc552 = add nsw i32 %561, 1
  store i32 %inc552, i32* @tests_passed, align 4
  br label %if.end556

_Dynamic_check.failed539:                         ; preds = %if.end536
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed541:                         ; preds = %_Dynamic_check.succeeded540
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed544:                         ; preds = %_Dynamic_check.succeeded542
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed546:                         ; preds = %_Dynamic_check.succeeded545
  call void @llvm.trap() #6
  unreachable

if.else553:                                       ; preds = %_Dynamic_check.succeeded547
  %call554 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %562 = load i32, i32* @tests_failed, align 4
  %inc555 = add nsw i32 %562, 1
  store i32 %inc555, i32* @tests_failed, align 4
  br label %if.end556

if.end556:                                        ; preds = %if.else553, %if.then550
  %563 = load i8*, i8** %string_1, align 4
  %564 = ptrtoint i8* %563 to i64
  %565 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %564)
  %566 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.210 to i64))
  %call557 = call i8* @t_strcpy(i8* %565, i8* %566)
  %call558 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 570, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.211, i64 0, i64 0))
  %567 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %568 = load i8*, i8** %string_1, align 4
  %569 = ptrtoint %Tstruct.json_array_t_t* %567 to i32
  %570 = call i8* @c_fetch_pointer_from_offset(i32 %569)
  %571 = call i1 @c_isTaintedPointerToTaintedMem(i8* %570)
  br i1 %571, label %_Dynamic_check.succeeded560, label %_Dynamic_check.failed559

_Dynamic_check.succeeded560:                      ; preds = %if.end556
  %572 = bitcast i8* %570 to %Tstruct.json_array_t_t*
  %573 = ptrtoint i8* %568 to i32
  %574 = call i8* @c_fetch_pointer_from_offset(i32 %573)
  %575 = call i1 @c_isTaintedPointerToTaintedMem(i8* %574)
  br i1 %575, label %_Dynamic_check.succeeded562, label %_Dynamic_check.failed561

_Dynamic_check.succeeded562:                      ; preds = %_Dynamic_check.succeeded560
  %call563 = call i32 @json_array_append_string(%Tstruct.json_array_t_t* %572, i8* %574)
  %cmp564 = icmp eq i32 %call563, 0
  br i1 %cmp564, label %if.then565, label %if.else568

if.then565:                                       ; preds = %_Dynamic_check.succeeded562
  %call566 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %576 = load i32, i32* @tests_passed, align 4
  %inc567 = add nsw i32 %576, 1
  store i32 %inc567, i32* @tests_passed, align 4
  br label %if.end571

_Dynamic_check.failed559:                         ; preds = %if.end556
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed561:                         ; preds = %_Dynamic_check.succeeded560
  call void @llvm.trap() #6
  unreachable

if.else568:                                       ; preds = %_Dynamic_check.succeeded562
  %call569 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %577 = load i32, i32* @tests_failed, align 4
  %inc570 = add nsw i32 %577, 1
  store i32 %inc570, i32* @tests_failed, align 4
  br label %if.end571

if.end571:                                        ; preds = %if.else568, %if.then565
  %call572 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 571, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.241, i64 0, i64 0))
  %578 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %579 = ptrtoint %Tstruct.json_array_t_t* %578 to i32
  %580 = call i8* @c_fetch_pointer_from_offset(i32 %579)
  %581 = call i1 @c_isTaintedPointerToTaintedMem(i8* %580)
  br i1 %581, label %_Dynamic_check.succeeded574, label %_Dynamic_check.failed573

_Dynamic_check.succeeded574:                      ; preds = %if.end571
  %582 = bitcast i8* %580 to %Tstruct.json_array_t_t*
  %call575 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %582, i64 0)
  %cmp576 = icmp eq i32 %call575, 0
  br i1 %cmp576, label %if.then577, label %if.else580

if.then577:                                       ; preds = %_Dynamic_check.succeeded574
  %call578 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %583 = load i32, i32* @tests_passed, align 4
  %inc579 = add nsw i32 %583, 1
  store i32 %inc579, i32* @tests_passed, align 4
  br label %if.end583

_Dynamic_check.failed573:                         ; preds = %if.end571
  call void @llvm.trap() #6
  unreachable

if.else580:                                       ; preds = %_Dynamic_check.succeeded574
  %call581 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %584 = load i32, i32* @tests_failed, align 4
  %inc582 = add nsw i32 %584, 1
  store i32 %inc582, i32* @tests_failed, align 4
  br label %if.end583

if.end583:                                        ; preds = %if.else580, %if.then577
  %call584 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 572, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.242, i64 0, i64 0))
  %585 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %586 = ptrtoint %Tstruct.json_array_t_t* %585 to i32
  %587 = call i8* @c_fetch_pointer_from_offset(i32 %586)
  %588 = call i1 @c_isTaintedPointerToTaintedMem(i8* %587)
  br i1 %588, label %_Dynamic_check.succeeded586, label %_Dynamic_check.failed585

_Dynamic_check.succeeded586:                      ; preds = %if.end583
  %589 = bitcast i8* %587 to %Tstruct.json_array_t_t*
  %call587 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %589, i64 1)
  %cmp588 = icmp eq i32 %call587, 0
  br i1 %cmp588, label %if.then589, label %if.else592

if.then589:                                       ; preds = %_Dynamic_check.succeeded586
  %call590 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %590 = load i32, i32* @tests_passed, align 4
  %inc591 = add nsw i32 %590, 1
  store i32 %inc591, i32* @tests_passed, align 4
  br label %if.end595

_Dynamic_check.failed585:                         ; preds = %if.end583
  call void @llvm.trap() #6
  unreachable

if.else592:                                       ; preds = %_Dynamic_check.succeeded586
  %call593 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %591 = load i32, i32* @tests_failed, align 4
  %inc594 = add nsw i32 %591, 1
  store i32 %inc594, i32* @tests_failed, align 4
  br label %if.end595

if.end595:                                        ; preds = %if.else592, %if.then589
  %call596 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 573, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.241, i64 0, i64 0))
  %592 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %593 = ptrtoint %Tstruct.json_array_t_t* %592 to i32
  %594 = call i8* @c_fetch_pointer_from_offset(i32 %593)
  %595 = call i1 @c_isTaintedPointerToTaintedMem(i8* %594)
  br i1 %595, label %_Dynamic_check.succeeded598, label %_Dynamic_check.failed597

_Dynamic_check.succeeded598:                      ; preds = %if.end595
  %596 = bitcast i8* %594 to %Tstruct.json_array_t_t*
  %call599 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %596, i64 0)
  %cmp600 = icmp eq i32 %call599, 0
  br i1 %cmp600, label %if.then601, label %if.else604

if.then601:                                       ; preds = %_Dynamic_check.succeeded598
  %call602 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %597 = load i32, i32* @tests_passed, align 4
  %inc603 = add nsw i32 %597, 1
  store i32 %inc603, i32* @tests_passed, align 4
  br label %if.end607

_Dynamic_check.failed597:                         ; preds = %if.end595
  call void @llvm.trap() #6
  unreachable

if.else604:                                       ; preds = %_Dynamic_check.succeeded598
  %call605 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %598 = load i32, i32* @tests_failed, align 4
  %inc606 = add nsw i32 %598, 1
  store i32 %inc606, i32* @tests_failed, align 4
  br label %if.end607

if.end607:                                        ; preds = %if.else604, %if.then601
  %call608 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 574, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.243, i64 0, i64 0))
  %599 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %600 = ptrtoint %Tstruct.json_array_t_t* %599 to i32
  %601 = call i8* @c_fetch_pointer_from_offset(i32 %600)
  %602 = call i1 @c_isTaintedPointerToTaintedMem(i8* %601)
  br i1 %602, label %_Dynamic_check.succeeded610, label %_Dynamic_check.failed609

_Dynamic_check.succeeded610:                      ; preds = %if.end607
  %603 = bitcast i8* %601 to %Tstruct.json_array_t_t*
  %call611 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %603, i64 0)
  %cmp612 = icmp eq i32 %call611, -1
  br i1 %cmp612, label %if.then613, label %if.else616

if.then613:                                       ; preds = %_Dynamic_check.succeeded610
  %call614 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %604 = load i32, i32* @tests_passed, align 4
  %inc615 = add nsw i32 %604, 1
  store i32 %inc615, i32* @tests_passed, align 4
  br label %if.end619

_Dynamic_check.failed609:                         ; preds = %if.end607
  call void @llvm.trap() #6
  unreachable

if.else616:                                       ; preds = %_Dynamic_check.succeeded610
  %call617 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %605 = load i32, i32* @tests_failed, align 4
  %inc618 = add nsw i32 %605, 1
  store i32 %inc618, i32* @tests_failed, align 4
  br label %if.end619

if.end619:                                        ; preds = %if.else616, %if.then613
  %call620 = call %Tstruct.json_value_t_t* @json_value_init_null()
  store %Tstruct.json_value_t_t* %call620, %Tstruct.json_value_t_t** %val_parent, align 4
  %606 = load i8*, i8** %string_1, align 4
  %607 = ptrtoint i8* %606 to i64
  %608 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %607)
  %609 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.162 to i64))
  %call621 = call i8* @t_strcpy(i8* %608, i8* %609)
  %call622 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 578, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.244, i64 0, i64 0))
  %610 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %611 = load i8*, i8** %string_1, align 4
  %612 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %613 = ptrtoint %Tstruct.json_object_t_t* %610 to i32
  %614 = call i8* @c_fetch_pointer_from_offset(i32 %613)
  %615 = call i1 @c_isTaintedPointerToTaintedMem(i8* %614)
  br i1 %615, label %_Dynamic_check.succeeded624, label %_Dynamic_check.failed623

_Dynamic_check.succeeded624:                      ; preds = %if.end619
  %616 = bitcast i8* %614 to %Tstruct.json_object_t_t*
  %617 = ptrtoint i8* %611 to i32
  %618 = call i8* @c_fetch_pointer_from_offset(i32 %617)
  %619 = call i1 @c_isTaintedPointerToTaintedMem(i8* %618)
  br i1 %619, label %_Dynamic_check.succeeded626, label %_Dynamic_check.failed625

_Dynamic_check.succeeded626:                      ; preds = %_Dynamic_check.succeeded624
  %620 = ptrtoint %Tstruct.json_value_t_t* %612 to i32
  %621 = call i8* @c_fetch_pointer_from_offset(i32 %620)
  %622 = call i1 @c_isTaintedPointerToTaintedMem(i8* %621)
  br i1 %622, label %_Dynamic_check.succeeded628, label %_Dynamic_check.failed627

_Dynamic_check.succeeded628:                      ; preds = %_Dynamic_check.succeeded626
  %623 = bitcast i8* %621 to %Tstruct.json_value_t_t*
  %call629 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %616, i8* %618, %Tstruct.json_value_t_t* %623)
  %cmp630 = icmp eq i32 %call629, 0
  br i1 %cmp630, label %if.then631, label %if.else634

if.then631:                                       ; preds = %_Dynamic_check.succeeded628
  %call632 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %624 = load i32, i32* @tests_passed, align 4
  %inc633 = add nsw i32 %624, 1
  store i32 %inc633, i32* @tests_passed, align 4
  br label %if.end637

_Dynamic_check.failed623:                         ; preds = %if.end619
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed625:                         ; preds = %_Dynamic_check.succeeded624
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed627:                         ; preds = %_Dynamic_check.succeeded626
  call void @llvm.trap() #6
  unreachable

if.else634:                                       ; preds = %_Dynamic_check.succeeded628
  %call635 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %625 = load i32, i32* @tests_failed, align 4
  %inc636 = add nsw i32 %625, 1
  store i32 %inc636, i32* @tests_failed, align 4
  br label %if.end637

if.end637:                                        ; preds = %if.else634, %if.then631
  %call638 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 579, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.245, i64 0, i64 0))
  %626 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %627 = load i8*, i8** %string_1, align 4
  %628 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %629 = ptrtoint %Tstruct.json_object_t_t* %626 to i32
  %630 = call i8* @c_fetch_pointer_from_offset(i32 %629)
  %631 = call i1 @c_isTaintedPointerToTaintedMem(i8* %630)
  br i1 %631, label %_Dynamic_check.succeeded640, label %_Dynamic_check.failed639

_Dynamic_check.succeeded640:                      ; preds = %if.end637
  %632 = bitcast i8* %630 to %Tstruct.json_object_t_t*
  %633 = ptrtoint i8* %627 to i32
  %634 = call i8* @c_fetch_pointer_from_offset(i32 %633)
  %635 = call i1 @c_isTaintedPointerToTaintedMem(i8* %634)
  br i1 %635, label %_Dynamic_check.succeeded642, label %_Dynamic_check.failed641

_Dynamic_check.succeeded642:                      ; preds = %_Dynamic_check.succeeded640
  %636 = ptrtoint %Tstruct.json_value_t_t* %628 to i32
  %637 = call i8* @c_fetch_pointer_from_offset(i32 %636)
  %638 = call i1 @c_isTaintedPointerToTaintedMem(i8* %637)
  br i1 %638, label %_Dynamic_check.succeeded644, label %_Dynamic_check.failed643

_Dynamic_check.succeeded644:                      ; preds = %_Dynamic_check.succeeded642
  %639 = bitcast i8* %637 to %Tstruct.json_value_t_t*
  %call645 = call i32 @json_object_set_value(%Tstruct.json_object_t_t* %632, i8* %634, %Tstruct.json_value_t_t* %639)
  %cmp646 = icmp eq i32 %call645, -1
  br i1 %cmp646, label %if.then647, label %if.else650

if.then647:                                       ; preds = %_Dynamic_check.succeeded644
  %call648 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %640 = load i32, i32* @tests_passed, align 4
  %inc649 = add nsw i32 %640, 1
  store i32 %inc649, i32* @tests_passed, align 4
  br label %if.end653

_Dynamic_check.failed639:                         ; preds = %if.end637
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed641:                         ; preds = %_Dynamic_check.succeeded640
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed643:                         ; preds = %_Dynamic_check.succeeded642
  call void @llvm.trap() #6
  unreachable

if.else650:                                       ; preds = %_Dynamic_check.succeeded644
  %call651 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %641 = load i32, i32* @tests_failed, align 4
  %inc652 = add nsw i32 %641, 1
  store i32 %inc652, i32* @tests_failed, align 4
  br label %if.end653

if.end653:                                        ; preds = %if.else650, %if.then647
  %call654 = call %Tstruct.json_value_t_t* @json_value_init_null()
  store %Tstruct.json_value_t_t* %call654, %Tstruct.json_value_t_t** %val_parent, align 4
  %call655 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 582, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.246, i64 0, i64 0))
  %642 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %643 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %644 = ptrtoint %Tstruct.json_array_t_t* %642 to i32
  %645 = call i8* @c_fetch_pointer_from_offset(i32 %644)
  %646 = call i1 @c_isTaintedPointerToTaintedMem(i8* %645)
  br i1 %646, label %_Dynamic_check.succeeded657, label %_Dynamic_check.failed656

_Dynamic_check.succeeded657:                      ; preds = %if.end653
  %647 = bitcast i8* %645 to %Tstruct.json_array_t_t*
  %648 = ptrtoint %Tstruct.json_value_t_t* %643 to i32
  %649 = call i8* @c_fetch_pointer_from_offset(i32 %648)
  %650 = call i1 @c_isTaintedPointerToTaintedMem(i8* %649)
  br i1 %650, label %_Dynamic_check.succeeded659, label %_Dynamic_check.failed658

_Dynamic_check.succeeded659:                      ; preds = %_Dynamic_check.succeeded657
  %651 = bitcast i8* %649 to %Tstruct.json_value_t_t*
  %call660 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %647, %Tstruct.json_value_t_t* %651)
  %cmp661 = icmp eq i32 %call660, 0
  br i1 %cmp661, label %if.then662, label %if.else665

if.then662:                                       ; preds = %_Dynamic_check.succeeded659
  %call663 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %652 = load i32, i32* @tests_passed, align 4
  %inc664 = add nsw i32 %652, 1
  store i32 %inc664, i32* @tests_passed, align 4
  br label %if.end668

_Dynamic_check.failed656:                         ; preds = %if.end653
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed658:                         ; preds = %_Dynamic_check.succeeded657
  call void @llvm.trap() #6
  unreachable

if.else665:                                       ; preds = %_Dynamic_check.succeeded659
  %call666 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %653 = load i32, i32* @tests_failed, align 4
  %inc667 = add nsw i32 %653, 1
  store i32 %inc667, i32* @tests_failed, align 4
  br label %if.end668

if.end668:                                        ; preds = %if.else665, %if.then662
  %call669 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 583, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.247, i64 0, i64 0))
  %654 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %655 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %656 = ptrtoint %Tstruct.json_array_t_t* %654 to i32
  %657 = call i8* @c_fetch_pointer_from_offset(i32 %656)
  %658 = call i1 @c_isTaintedPointerToTaintedMem(i8* %657)
  br i1 %658, label %_Dynamic_check.succeeded671, label %_Dynamic_check.failed670

_Dynamic_check.succeeded671:                      ; preds = %if.end668
  %659 = bitcast i8* %657 to %Tstruct.json_array_t_t*
  %660 = ptrtoint %Tstruct.json_value_t_t* %655 to i32
  %661 = call i8* @c_fetch_pointer_from_offset(i32 %660)
  %662 = call i1 @c_isTaintedPointerToTaintedMem(i8* %661)
  br i1 %662, label %_Dynamic_check.succeeded673, label %_Dynamic_check.failed672

_Dynamic_check.succeeded673:                      ; preds = %_Dynamic_check.succeeded671
  %663 = bitcast i8* %661 to %Tstruct.json_value_t_t*
  %call674 = call i32 @json_array_append_value(%Tstruct.json_array_t_t* %659, %Tstruct.json_value_t_t* %663)
  %cmp675 = icmp eq i32 %call674, -1
  br i1 %cmp675, label %if.then676, label %if.else679

if.then676:                                       ; preds = %_Dynamic_check.succeeded673
  %call677 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %664 = load i32, i32* @tests_passed, align 4
  %inc678 = add nsw i32 %664, 1
  store i32 %inc678, i32* @tests_passed, align 4
  br label %if.end682

_Dynamic_check.failed670:                         ; preds = %if.end668
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed672:                         ; preds = %_Dynamic_check.succeeded671
  call void @llvm.trap() #6
  unreachable

if.else679:                                       ; preds = %_Dynamic_check.succeeded673
  %call680 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %665 = load i32, i32* @tests_failed, align 4
  %inc681 = add nsw i32 %665, 1
  store i32 %inc681, i32* @tests_failed, align 4
  br label %if.end682

if.end682:                                        ; preds = %if.else679, %if.then676
  %call683 = call %Tstruct.json_value_t_t* @json_value_init_null()
  store %Tstruct.json_value_t_t* %call683, %Tstruct.json_value_t_t** %val_parent, align 4
  %call684 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 586, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.248, i64 0, i64 0))
  %666 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %667 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %668 = ptrtoint %Tstruct.json_array_t_t* %666 to i32
  %669 = call i8* @c_fetch_pointer_from_offset(i32 %668)
  %670 = call i1 @c_isTaintedPointerToTaintedMem(i8* %669)
  br i1 %670, label %_Dynamic_check.succeeded686, label %_Dynamic_check.failed685

_Dynamic_check.succeeded686:                      ; preds = %if.end682
  %671 = bitcast i8* %669 to %Tstruct.json_array_t_t*
  %672 = ptrtoint %Tstruct.json_value_t_t* %667 to i32
  %673 = call i8* @c_fetch_pointer_from_offset(i32 %672)
  %674 = call i1 @c_isTaintedPointerToTaintedMem(i8* %673)
  br i1 %674, label %_Dynamic_check.succeeded688, label %_Dynamic_check.failed687

_Dynamic_check.succeeded688:                      ; preds = %_Dynamic_check.succeeded686
  %675 = bitcast i8* %673 to %Tstruct.json_value_t_t*
  %call689 = call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %671, i64 0, %Tstruct.json_value_t_t* %675)
  %cmp690 = icmp eq i32 %call689, 0
  br i1 %cmp690, label %if.then691, label %if.else694

if.then691:                                       ; preds = %_Dynamic_check.succeeded688
  %call692 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %676 = load i32, i32* @tests_passed, align 4
  %inc693 = add nsw i32 %676, 1
  store i32 %inc693, i32* @tests_passed, align 4
  br label %if.end697

_Dynamic_check.failed685:                         ; preds = %if.end682
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed687:                         ; preds = %_Dynamic_check.succeeded686
  call void @llvm.trap() #6
  unreachable

if.else694:                                       ; preds = %_Dynamic_check.succeeded688
  %call695 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %677 = load i32, i32* @tests_failed, align 4
  %inc696 = add nsw i32 %677, 1
  store i32 %inc696, i32* @tests_failed, align 4
  br label %if.end697

if.end697:                                        ; preds = %if.else694, %if.then691
  %call698 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 587, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.249, i64 0, i64 0))
  %678 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %interests_arr, align 4
  %679 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %val_parent, align 4
  %680 = ptrtoint %Tstruct.json_array_t_t* %678 to i32
  %681 = call i8* @c_fetch_pointer_from_offset(i32 %680)
  %682 = call i1 @c_isTaintedPointerToTaintedMem(i8* %681)
  br i1 %682, label %_Dynamic_check.succeeded700, label %_Dynamic_check.failed699

_Dynamic_check.succeeded700:                      ; preds = %if.end697
  %683 = bitcast i8* %681 to %Tstruct.json_array_t_t*
  %684 = ptrtoint %Tstruct.json_value_t_t* %679 to i32
  %685 = call i8* @c_fetch_pointer_from_offset(i32 %684)
  %686 = call i1 @c_isTaintedPointerToTaintedMem(i8* %685)
  br i1 %686, label %_Dynamic_check.succeeded702, label %_Dynamic_check.failed701

_Dynamic_check.succeeded702:                      ; preds = %_Dynamic_check.succeeded700
  %687 = bitcast i8* %685 to %Tstruct.json_value_t_t*
  %call703 = call i32 @json_array_replace_value(%Tstruct.json_array_t_t* %683, i64 0, %Tstruct.json_value_t_t* %687)
  %cmp704 = icmp eq i32 %call703, -1
  br i1 %cmp704, label %if.then705, label %if.else708

if.then705:                                       ; preds = %_Dynamic_check.succeeded702
  %call706 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %688 = load i32, i32* @tests_passed, align 4
  %inc707 = add nsw i32 %688, 1
  store i32 %inc707, i32* @tests_passed, align 4
  br label %if.end711

_Dynamic_check.failed699:                         ; preds = %if.end697
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed701:                         ; preds = %_Dynamic_check.succeeded700
  call void @llvm.trap() #6
  unreachable

if.else708:                                       ; preds = %_Dynamic_check.succeeded702
  %call709 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %689 = load i32, i32* @tests_failed, align 4
  %inc710 = add nsw i32 %689, 1
  store i32 %inc710, i32* @tests_failed, align 4
  br label %if.end711

if.end711:                                        ; preds = %if.else708, %if.then705
  %690 = load i8*, i8** %string_1, align 4
  %691 = ptrtoint i8* %690 to i64
  %692 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %691)
  %693 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.207 to i64))
  %call712 = call i8* @t_strcpy(i8* %692, i8* %693)
  %call713 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 590, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.250, i64 0, i64 0))
  %694 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %695 = load i8*, i8** %string_1, align 4
  %696 = ptrtoint %Tstruct.json_object_t_t* %694 to i32
  %697 = call i8* @c_fetch_pointer_from_offset(i32 %696)
  %698 = call i1 @c_isTaintedPointerToTaintedMem(i8* %697)
  br i1 %698, label %_Dynamic_check.succeeded715, label %_Dynamic_check.failed714

_Dynamic_check.succeeded715:                      ; preds = %if.end711
  %699 = bitcast i8* %697 to %Tstruct.json_object_t_t*
  %700 = ptrtoint i8* %695 to i32
  %701 = call i8* @c_fetch_pointer_from_offset(i32 %700)
  %702 = call i1 @c_isTaintedPointerToTaintedMem(i8* %701)
  br i1 %702, label %_Dynamic_check.succeeded717, label %_Dynamic_check.failed716

_Dynamic_check.succeeded717:                      ; preds = %_Dynamic_check.succeeded715
  %call718 = call i32 @json_object_remove(%Tstruct.json_object_t_t* %699, i8* %701)
  %cmp719 = icmp eq i32 %call718, 0
  br i1 %cmp719, label %if.then720, label %if.else723

if.then720:                                       ; preds = %_Dynamic_check.succeeded717
  %call721 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %703 = load i32, i32* @tests_passed, align 4
  %inc722 = add nsw i32 %703, 1
  store i32 %inc722, i32* @tests_passed, align 4
  br label %if.end726

_Dynamic_check.failed714:                         ; preds = %if.end711
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed716:                         ; preds = %_Dynamic_check.succeeded715
  call void @llvm.trap() #6
  unreachable

if.else723:                                       ; preds = %_Dynamic_check.succeeded717
  %call724 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %704 = load i32, i32* @tests_failed, align 4
  %inc725 = add nsw i32 %704, 1
  store i32 %inc725, i32* @tests_failed, align 4
  br label %if.end726

if.end726:                                        ; preds = %if.else723, %if.then720
  %705 = load i8*, i8** %string_1, align 4
  %706 = ptrtoint i8* %705 to i64
  %707 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %706)
  %708 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([15 x i8]* @.str.251 to i64))
  %call727 = call i8* @t_strcpy(i8* %707, i8* %708)
  %709 = load i8*, i8** %string_2, align 4
  %710 = ptrtoint i8* %709 to i64
  %711 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %710)
  %712 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([12 x i8]* @.str.252 to i64))
  %call728 = call i8* @t_strcpy(i8* %711, i8* %712)
  %call729 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 595, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %713 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %714 = load i8*, i8** %string_1, align 4
  %715 = load i8*, i8** %string_2, align 4
  %716 = ptrtoint %Tstruct.json_object_t_t* %713 to i32
  %717 = call i8* @c_fetch_pointer_from_offset(i32 %716)
  %718 = call i1 @c_isTaintedPointerToTaintedMem(i8* %717)
  br i1 %718, label %_Dynamic_check.succeeded731, label %_Dynamic_check.failed730

_Dynamic_check.succeeded731:                      ; preds = %if.end726
  %719 = bitcast i8* %717 to %Tstruct.json_object_t_t*
  %720 = ptrtoint i8* %714 to i32
  %721 = call i8* @c_fetch_pointer_from_offset(i32 %720)
  %722 = call i1 @c_isTaintedPointerToTaintedMem(i8* %721)
  br i1 %722, label %_Dynamic_check.succeeded733, label %_Dynamic_check.failed732

_Dynamic_check.succeeded733:                      ; preds = %_Dynamic_check.succeeded731
  %723 = ptrtoint i8* %715 to i32
  %724 = call i8* @c_fetch_pointer_from_offset(i32 %723)
  %725 = call i1 @c_isTaintedPointerToTaintedMem(i8* %724)
  br i1 %725, label %_Dynamic_check.succeeded735, label %_Dynamic_check.failed734

_Dynamic_check.succeeded735:                      ; preds = %_Dynamic_check.succeeded733
  %call736 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %719, i8* %721, i8* %724)
  %cmp737 = icmp eq i32 %call736, 0
  br i1 %cmp737, label %if.then738, label %if.else741

if.then738:                                       ; preds = %_Dynamic_check.succeeded735
  %call739 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %726 = load i32, i32* @tests_passed, align 4
  %inc740 = add nsw i32 %726, 1
  store i32 %inc740, i32* @tests_passed, align 4
  br label %if.end744

_Dynamic_check.failed730:                         ; preds = %if.end726
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed732:                         ; preds = %_Dynamic_check.succeeded731
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed734:                         ; preds = %_Dynamic_check.succeeded733
  call void @llvm.trap() #6
  unreachable

if.else741:                                       ; preds = %_Dynamic_check.succeeded735
  %call742 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %727 = load i32, i32* @tests_failed, align 4
  %inc743 = add nsw i32 %727, 1
  store i32 %inc743, i32* @tests_failed, align 4
  br label %if.end744

if.end744:                                        ; preds = %if.else741, %if.then738
  %728 = load i8*, i8** %string_1, align 4
  %729 = ptrtoint i8* %728 to i64
  %730 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %729)
  %731 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.253 to i64))
  %call745 = call i8* @t_strcpy(i8* %730, i8* %731)
  %732 = load i8*, i8** %string_2, align 4
  %733 = ptrtoint i8* %732 to i64
  %734 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %733)
  %735 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.254 to i64))
  %call746 = call i8* @t_strcpy(i8* %734, i8* %735)
  %call747 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 599, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %736 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %737 = load i8*, i8** %string_1, align 4
  %738 = load i8*, i8** %string_2, align 4
  %739 = ptrtoint %Tstruct.json_object_t_t* %736 to i32
  %740 = call i8* @c_fetch_pointer_from_offset(i32 %739)
  %741 = call i1 @c_isTaintedPointerToTaintedMem(i8* %740)
  br i1 %741, label %_Dynamic_check.succeeded749, label %_Dynamic_check.failed748

_Dynamic_check.succeeded749:                      ; preds = %if.end744
  %742 = bitcast i8* %740 to %Tstruct.json_object_t_t*
  %743 = ptrtoint i8* %737 to i32
  %744 = call i8* @c_fetch_pointer_from_offset(i32 %743)
  %745 = call i1 @c_isTaintedPointerToTaintedMem(i8* %744)
  br i1 %745, label %_Dynamic_check.succeeded751, label %_Dynamic_check.failed750

_Dynamic_check.succeeded751:                      ; preds = %_Dynamic_check.succeeded749
  %746 = ptrtoint i8* %738 to i32
  %747 = call i8* @c_fetch_pointer_from_offset(i32 %746)
  %748 = call i1 @c_isTaintedPointerToTaintedMem(i8* %747)
  br i1 %748, label %_Dynamic_check.succeeded753, label %_Dynamic_check.failed752

_Dynamic_check.succeeded753:                      ; preds = %_Dynamic_check.succeeded751
  %call754 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %742, i8* %744, i8* %747)
  %cmp755 = icmp eq i32 %call754, 0
  br i1 %cmp755, label %if.then756, label %if.else759

if.then756:                                       ; preds = %_Dynamic_check.succeeded753
  %call757 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %749 = load i32, i32* @tests_passed, align 4
  %inc758 = add nsw i32 %749, 1
  store i32 %inc758, i32* @tests_passed, align 4
  br label %if.end762

_Dynamic_check.failed748:                         ; preds = %if.end744
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed750:                         ; preds = %_Dynamic_check.succeeded749
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed752:                         ; preds = %_Dynamic_check.succeeded751
  call void @llvm.trap() #6
  unreachable

if.else759:                                       ; preds = %_Dynamic_check.succeeded753
  %call760 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %750 = load i32, i32* @tests_failed, align 4
  %inc761 = add nsw i32 %750, 1
  store i32 %inc761, i32* @tests_failed, align 4
  br label %if.end762

if.end762:                                        ; preds = %if.else759, %if.then756
  %751 = load i8*, i8** %string_1, align 4
  %752 = ptrtoint i8* %751 to i64
  %753 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %752)
  %754 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.255 to i64))
  %call763 = call i8* @t_strcpy(i8* %753, i8* %754)
  %755 = load i8*, i8** %string_2, align 4
  %756 = ptrtoint i8* %755 to i64
  %757 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %756)
  %758 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.256 to i64))
  %call764 = call i8* @t_strcpy(i8* %757, i8* %758)
  %call765 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 602, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %759 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %760 = load i8*, i8** %string_1, align 4
  %761 = load i8*, i8** %string_2, align 4
  %762 = ptrtoint %Tstruct.json_object_t_t* %759 to i32
  %763 = call i8* @c_fetch_pointer_from_offset(i32 %762)
  %764 = call i1 @c_isTaintedPointerToTaintedMem(i8* %763)
  br i1 %764, label %_Dynamic_check.succeeded767, label %_Dynamic_check.failed766

_Dynamic_check.succeeded767:                      ; preds = %if.end762
  %765 = bitcast i8* %763 to %Tstruct.json_object_t_t*
  %766 = ptrtoint i8* %760 to i32
  %767 = call i8* @c_fetch_pointer_from_offset(i32 %766)
  %768 = call i1 @c_isTaintedPointerToTaintedMem(i8* %767)
  br i1 %768, label %_Dynamic_check.succeeded769, label %_Dynamic_check.failed768

_Dynamic_check.succeeded769:                      ; preds = %_Dynamic_check.succeeded767
  %769 = ptrtoint i8* %761 to i32
  %770 = call i8* @c_fetch_pointer_from_offset(i32 %769)
  %771 = call i1 @c_isTaintedPointerToTaintedMem(i8* %770)
  br i1 %771, label %_Dynamic_check.succeeded771, label %_Dynamic_check.failed770

_Dynamic_check.succeeded771:                      ; preds = %_Dynamic_check.succeeded769
  %call772 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %765, i8* %767, i8* %770)
  %cmp773 = icmp eq i32 %call772, 0
  br i1 %cmp773, label %if.then774, label %if.else777

if.then774:                                       ; preds = %_Dynamic_check.succeeded771
  %call775 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %772 = load i32, i32* @tests_passed, align 4
  %inc776 = add nsw i32 %772, 1
  store i32 %inc776, i32* @tests_passed, align 4
  br label %if.end780

_Dynamic_check.failed766:                         ; preds = %if.end762
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed768:                         ; preds = %_Dynamic_check.succeeded767
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed770:                         ; preds = %_Dynamic_check.succeeded769
  call void @llvm.trap() #6
  unreachable

if.else777:                                       ; preds = %_Dynamic_check.succeeded771
  %call778 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %773 = load i32, i32* @tests_failed, align 4
  %inc779 = add nsw i32 %773, 1
  store i32 %inc779, i32* @tests_failed, align 4
  br label %if.end780

if.end780:                                        ; preds = %if.else777, %if.then774
  %774 = load i8*, i8** %string_1, align 4
  %775 = ptrtoint i8* %774 to i64
  %776 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %775)
  %777 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.257 to i64))
  %call781 = call i8* @t_strcpy(i8* %776, i8* %777)
  %778 = load i8*, i8** %string_2, align 4
  %779 = ptrtoint i8* %778 to i64
  %780 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %779)
  %781 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.258 to i64))
  %call782 = call i8* @t_strcpy(i8* %780, i8* %781)
  %call783 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 605, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %782 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %783 = load i8*, i8** %string_1, align 4
  %784 = load i8*, i8** %string_2, align 4
  %785 = ptrtoint %Tstruct.json_object_t_t* %782 to i32
  %786 = call i8* @c_fetch_pointer_from_offset(i32 %785)
  %787 = call i1 @c_isTaintedPointerToTaintedMem(i8* %786)
  br i1 %787, label %_Dynamic_check.succeeded785, label %_Dynamic_check.failed784

_Dynamic_check.succeeded785:                      ; preds = %if.end780
  %788 = bitcast i8* %786 to %Tstruct.json_object_t_t*
  %789 = ptrtoint i8* %783 to i32
  %790 = call i8* @c_fetch_pointer_from_offset(i32 %789)
  %791 = call i1 @c_isTaintedPointerToTaintedMem(i8* %790)
  br i1 %791, label %_Dynamic_check.succeeded787, label %_Dynamic_check.failed786

_Dynamic_check.succeeded787:                      ; preds = %_Dynamic_check.succeeded785
  %792 = ptrtoint i8* %784 to i32
  %793 = call i8* @c_fetch_pointer_from_offset(i32 %792)
  %794 = call i1 @c_isTaintedPointerToTaintedMem(i8* %793)
  br i1 %794, label %_Dynamic_check.succeeded789, label %_Dynamic_check.failed788

_Dynamic_check.succeeded789:                      ; preds = %_Dynamic_check.succeeded787
  %call790 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %788, i8* %790, i8* %793)
  %cmp791 = icmp eq i32 %call790, 0
  br i1 %cmp791, label %if.then792, label %if.else795

if.then792:                                       ; preds = %_Dynamic_check.succeeded789
  %call793 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %795 = load i32, i32* @tests_passed, align 4
  %inc794 = add nsw i32 %795, 1
  store i32 %inc794, i32* @tests_passed, align 4
  br label %if.end798

_Dynamic_check.failed784:                         ; preds = %if.end780
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed786:                         ; preds = %_Dynamic_check.succeeded785
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed788:                         ; preds = %_Dynamic_check.succeeded787
  call void @llvm.trap() #6
  unreachable

if.else795:                                       ; preds = %_Dynamic_check.succeeded789
  %call796 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %796 = load i32, i32* @tests_failed, align 4
  %inc797 = add nsw i32 %796, 1
  store i32 %inc797, i32* @tests_failed, align 4
  br label %if.end798

if.end798:                                        ; preds = %if.else795, %if.then792
  %797 = load i8*, i8** %string_1, align 4
  %798 = ptrtoint i8* %797 to i64
  %799 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %798)
  %800 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.259 to i64))
  %call799 = call i8* @t_strcpy(i8* %799, i8* %800)
  %801 = load i8*, i8** %string_2, align 4
  %802 = ptrtoint i8* %801 to i64
  %803 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %802)
  %804 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.260 to i64))
  %call800 = call i8* @t_strcpy(i8* %803, i8* %804)
  %call801 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 608, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.200, i64 0, i64 0))
  %805 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %806 = load i8*, i8** %string_1, align 4
  %807 = load i8*, i8** %string_2, align 4
  %808 = ptrtoint %Tstruct.json_object_t_t* %805 to i32
  %809 = call i8* @c_fetch_pointer_from_offset(i32 %808)
  %810 = call i1 @c_isTaintedPointerToTaintedMem(i8* %809)
  br i1 %810, label %_Dynamic_check.succeeded803, label %_Dynamic_check.failed802

_Dynamic_check.succeeded803:                      ; preds = %if.end798
  %811 = bitcast i8* %809 to %Tstruct.json_object_t_t*
  %812 = ptrtoint i8* %806 to i32
  %813 = call i8* @c_fetch_pointer_from_offset(i32 %812)
  %814 = call i1 @c_isTaintedPointerToTaintedMem(i8* %813)
  br i1 %814, label %_Dynamic_check.succeeded805, label %_Dynamic_check.failed804

_Dynamic_check.succeeded805:                      ; preds = %_Dynamic_check.succeeded803
  %815 = ptrtoint i8* %807 to i32
  %816 = call i8* @c_fetch_pointer_from_offset(i32 %815)
  %817 = call i1 @c_isTaintedPointerToTaintedMem(i8* %816)
  br i1 %817, label %_Dynamic_check.succeeded807, label %_Dynamic_check.failed806

_Dynamic_check.succeeded807:                      ; preds = %_Dynamic_check.succeeded805
  %call808 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %811, i8* %813, i8* %816)
  %cmp809 = icmp eq i32 %call808, 0
  br i1 %cmp809, label %if.then810, label %if.else813

if.then810:                                       ; preds = %_Dynamic_check.succeeded807
  %call811 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %818 = load i32, i32* @tests_passed, align 4
  %inc812 = add nsw i32 %818, 1
  store i32 %inc812, i32* @tests_passed, align 4
  br label %if.end816

_Dynamic_check.failed802:                         ; preds = %if.end798
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed804:                         ; preds = %_Dynamic_check.succeeded803
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed806:                         ; preds = %_Dynamic_check.succeeded805
  call void @llvm.trap() #6
  unreachable

if.else813:                                       ; preds = %_Dynamic_check.succeeded807
  %call814 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %819 = load i32, i32* @tests_failed, align 4
  %inc815 = add nsw i32 %819, 1
  store i32 %inc815, i32* @tests_failed, align 4
  br label %if.end816

if.end816:                                        ; preds = %if.else813, %if.then810
  %820 = load i8*, i8** %string_1, align 4
  %821 = ptrtoint i8* %820 to i64
  %822 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %821)
  %823 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([24 x i8]* @.str.261 to i64))
  %call817 = call i8* @t_strcpy(i8* %822, i8* %823)
  %824 = load i8*, i8** %string_2, align 4
  %825 = ptrtoint i8* %824 to i64
  %826 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %825)
  %827 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.262 to i64))
  %call818 = call i8* @t_strcpy(i8* %826, i8* %827)
  %call819 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 612, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %828 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %829 = load i8*, i8** %string_1, align 4
  %830 = load i8*, i8** %string_2, align 4
  %831 = ptrtoint %Tstruct.json_object_t_t* %828 to i32
  %832 = call i8* @c_fetch_pointer_from_offset(i32 %831)
  %833 = call i1 @c_isTaintedPointerToTaintedMem(i8* %832)
  br i1 %833, label %_Dynamic_check.succeeded821, label %_Dynamic_check.failed820

_Dynamic_check.succeeded821:                      ; preds = %if.end816
  %834 = bitcast i8* %832 to %Tstruct.json_object_t_t*
  %835 = ptrtoint i8* %829 to i32
  %836 = call i8* @c_fetch_pointer_from_offset(i32 %835)
  %837 = call i1 @c_isTaintedPointerToTaintedMem(i8* %836)
  br i1 %837, label %_Dynamic_check.succeeded823, label %_Dynamic_check.failed822

_Dynamic_check.succeeded823:                      ; preds = %_Dynamic_check.succeeded821
  %838 = ptrtoint i8* %830 to i32
  %839 = call i8* @c_fetch_pointer_from_offset(i32 %838)
  %840 = call i1 @c_isTaintedPointerToTaintedMem(i8* %839)
  br i1 %840, label %_Dynamic_check.succeeded825, label %_Dynamic_check.failed824

_Dynamic_check.succeeded825:                      ; preds = %_Dynamic_check.succeeded823
  %call826 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %834, i8* %836, i8* %839)
  %cmp827 = icmp eq i32 %call826, -1
  br i1 %cmp827, label %if.then828, label %if.else831

if.then828:                                       ; preds = %_Dynamic_check.succeeded825
  %call829 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %841 = load i32, i32* @tests_passed, align 4
  %inc830 = add nsw i32 %841, 1
  store i32 %inc830, i32* @tests_passed, align 4
  br label %if.end834

_Dynamic_check.failed820:                         ; preds = %if.end816
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed822:                         ; preds = %_Dynamic_check.succeeded821
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed824:                         ; preds = %_Dynamic_check.succeeded823
  call void @llvm.trap() #6
  unreachable

if.else831:                                       ; preds = %_Dynamic_check.succeeded825
  %call832 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %842 = load i32, i32* @tests_failed, align 4
  %inc833 = add nsw i32 %842, 1
  store i32 %inc833, i32* @tests_failed, align 4
  br label %if.end834

if.end834:                                        ; preds = %if.else831, %if.then828
  %843 = load i8*, i8** %string_1, align 4
  %844 = ptrtoint i8* %843 to i64
  %845 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %844)
  %846 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([23 x i8]* @.str.264 to i64))
  %call835 = call i8* @t_strcpy(i8* %845, i8* %846)
  %847 = load i8*, i8** %string_2, align 4
  %848 = ptrtoint i8* %847 to i64
  %849 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %848)
  %850 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.265 to i64))
  %call836 = call i8* @t_strcpy(i8* %849, i8* %850)
  %call837 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 615, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %851 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %852 = load i8*, i8** %string_1, align 4
  %853 = load i8*, i8** %string_2, align 4
  %854 = ptrtoint %Tstruct.json_object_t_t* %851 to i32
  %855 = call i8* @c_fetch_pointer_from_offset(i32 %854)
  %856 = call i1 @c_isTaintedPointerToTaintedMem(i8* %855)
  br i1 %856, label %_Dynamic_check.succeeded839, label %_Dynamic_check.failed838

_Dynamic_check.succeeded839:                      ; preds = %if.end834
  %857 = bitcast i8* %855 to %Tstruct.json_object_t_t*
  %858 = ptrtoint i8* %852 to i32
  %859 = call i8* @c_fetch_pointer_from_offset(i32 %858)
  %860 = call i1 @c_isTaintedPointerToTaintedMem(i8* %859)
  br i1 %860, label %_Dynamic_check.succeeded841, label %_Dynamic_check.failed840

_Dynamic_check.succeeded841:                      ; preds = %_Dynamic_check.succeeded839
  %861 = ptrtoint i8* %853 to i32
  %862 = call i8* @c_fetch_pointer_from_offset(i32 %861)
  %863 = call i1 @c_isTaintedPointerToTaintedMem(i8* %862)
  br i1 %863, label %_Dynamic_check.succeeded843, label %_Dynamic_check.failed842

_Dynamic_check.succeeded843:                      ; preds = %_Dynamic_check.succeeded841
  %call844 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %857, i8* %859, i8* %862)
  %cmp845 = icmp eq i32 %call844, -1
  br i1 %cmp845, label %if.then846, label %if.else849

if.then846:                                       ; preds = %_Dynamic_check.succeeded843
  %call847 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %864 = load i32, i32* @tests_passed, align 4
  %inc848 = add nsw i32 %864, 1
  store i32 %inc848, i32* @tests_passed, align 4
  br label %if.end852

_Dynamic_check.failed838:                         ; preds = %if.end834
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed840:                         ; preds = %_Dynamic_check.succeeded839
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed842:                         ; preds = %_Dynamic_check.succeeded841
  call void @llvm.trap() #6
  unreachable

if.else849:                                       ; preds = %_Dynamic_check.succeeded843
  %call850 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %865 = load i32, i32* @tests_failed, align 4
  %inc851 = add nsw i32 %865, 1
  store i32 %inc851, i32* @tests_failed, align 4
  br label %if.end852

if.end852:                                        ; preds = %if.else849, %if.then846
  %866 = load i8*, i8** %string_1, align 4
  %867 = ptrtoint i8* %866 to i64
  %868 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %867)
  %869 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([22 x i8]* @.str.266 to i64))
  %call853 = call i8* @t_strcpy(i8* %868, i8* %869)
  %870 = load i8*, i8** %string_2, align 4
  %871 = ptrtoint i8* %870 to i64
  %872 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %871)
  %873 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.267 to i64))
  %call854 = call i8* @t_strcpy(i8* %872, i8* %873)
  %call855 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 620, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %874 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %875 = load i8*, i8** %string_1, align 4
  %876 = load i8*, i8** %string_2, align 4
  %877 = ptrtoint %Tstruct.json_object_t_t* %874 to i32
  %878 = call i8* @c_fetch_pointer_from_offset(i32 %877)
  %879 = call i1 @c_isTaintedPointerToTaintedMem(i8* %878)
  br i1 %879, label %_Dynamic_check.succeeded857, label %_Dynamic_check.failed856

_Dynamic_check.succeeded857:                      ; preds = %if.end852
  %880 = bitcast i8* %878 to %Tstruct.json_object_t_t*
  %881 = ptrtoint i8* %875 to i32
  %882 = call i8* @c_fetch_pointer_from_offset(i32 %881)
  %883 = call i1 @c_isTaintedPointerToTaintedMem(i8* %882)
  br i1 %883, label %_Dynamic_check.succeeded859, label %_Dynamic_check.failed858

_Dynamic_check.succeeded859:                      ; preds = %_Dynamic_check.succeeded857
  %884 = ptrtoint i8* %876 to i32
  %885 = call i8* @c_fetch_pointer_from_offset(i32 %884)
  %886 = call i1 @c_isTaintedPointerToTaintedMem(i8* %885)
  br i1 %886, label %_Dynamic_check.succeeded861, label %_Dynamic_check.failed860

_Dynamic_check.succeeded861:                      ; preds = %_Dynamic_check.succeeded859
  %call862 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %880, i8* %882, i8* %885)
  %cmp863 = icmp eq i32 %call862, -1
  br i1 %cmp863, label %if.then864, label %if.else867

if.then864:                                       ; preds = %_Dynamic_check.succeeded861
  %call865 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %887 = load i32, i32* @tests_passed, align 4
  %inc866 = add nsw i32 %887, 1
  store i32 %inc866, i32* @tests_passed, align 4
  br label %if.end870

_Dynamic_check.failed856:                         ; preds = %if.end852
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed858:                         ; preds = %_Dynamic_check.succeeded857
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed860:                         ; preds = %_Dynamic_check.succeeded859
  call void @llvm.trap() #6
  unreachable

if.else867:                                       ; preds = %_Dynamic_check.succeeded861
  %call868 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %888 = load i32, i32* @tests_failed, align 4
  %inc869 = add nsw i32 %888, 1
  store i32 %inc869, i32* @tests_failed, align 4
  br label %if.end870

if.end870:                                        ; preds = %if.else867, %if.then864
  %889 = load i8*, i8** %string_1, align 4
  %890 = ptrtoint i8* %889 to i64
  %891 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %890)
  %892 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([22 x i8]* @.str.268 to i64))
  %call871 = call i8* @t_strcpy(i8* %891, i8* %892)
  %893 = load i8*, i8** %string_2, align 4
  %894 = ptrtoint i8* %893 to i64
  %895 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %894)
  %896 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.269 to i64))
  %call872 = call i8* @t_strcpy(i8* %895, i8* %896)
  %call873 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 623, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %897 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %898 = load i8*, i8** %string_1, align 4
  %899 = load i8*, i8** %string_2, align 4
  %900 = ptrtoint %Tstruct.json_object_t_t* %897 to i32
  %901 = call i8* @c_fetch_pointer_from_offset(i32 %900)
  %902 = call i1 @c_isTaintedPointerToTaintedMem(i8* %901)
  br i1 %902, label %_Dynamic_check.succeeded875, label %_Dynamic_check.failed874

_Dynamic_check.succeeded875:                      ; preds = %if.end870
  %903 = bitcast i8* %901 to %Tstruct.json_object_t_t*
  %904 = ptrtoint i8* %898 to i32
  %905 = call i8* @c_fetch_pointer_from_offset(i32 %904)
  %906 = call i1 @c_isTaintedPointerToTaintedMem(i8* %905)
  br i1 %906, label %_Dynamic_check.succeeded877, label %_Dynamic_check.failed876

_Dynamic_check.succeeded877:                      ; preds = %_Dynamic_check.succeeded875
  %907 = ptrtoint i8* %899 to i32
  %908 = call i8* @c_fetch_pointer_from_offset(i32 %907)
  %909 = call i1 @c_isTaintedPointerToTaintedMem(i8* %908)
  br i1 %909, label %_Dynamic_check.succeeded879, label %_Dynamic_check.failed878

_Dynamic_check.succeeded879:                      ; preds = %_Dynamic_check.succeeded877
  %call880 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %903, i8* %905, i8* %908)
  %cmp881 = icmp eq i32 %call880, -1
  br i1 %cmp881, label %if.then882, label %if.else885

if.then882:                                       ; preds = %_Dynamic_check.succeeded879
  %call883 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %910 = load i32, i32* @tests_passed, align 4
  %inc884 = add nsw i32 %910, 1
  store i32 %inc884, i32* @tests_passed, align 4
  br label %if.end888

_Dynamic_check.failed874:                         ; preds = %if.end870
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed876:                         ; preds = %_Dynamic_check.succeeded875
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed878:                         ; preds = %_Dynamic_check.succeeded877
  call void @llvm.trap() #6
  unreachable

if.else885:                                       ; preds = %_Dynamic_check.succeeded879
  %call886 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %911 = load i32, i32* @tests_failed, align 4
  %inc887 = add nsw i32 %911, 1
  store i32 %inc887, i32* @tests_failed, align 4
  br label %if.end888

if.end888:                                        ; preds = %if.else885, %if.then882
  %912 = load i8*, i8** %string_1, align 4
  %913 = ptrtoint i8* %912 to i64
  %914 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %913)
  %915 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([22 x i8]* @.str.270 to i64))
  %call889 = call i8* @t_strcpy(i8* %914, i8* %915)
  %916 = load i8*, i8** %string_2, align 4
  %917 = ptrtoint i8* %916 to i64
  %918 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %917)
  %919 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.271 to i64))
  %call890 = call i8* @t_strcpy(i8* %918, i8* %919)
  %call891 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 626, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %920 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %921 = load i8*, i8** %string_1, align 4
  %922 = load i8*, i8** %string_2, align 4
  %923 = ptrtoint %Tstruct.json_object_t_t* %920 to i32
  %924 = call i8* @c_fetch_pointer_from_offset(i32 %923)
  %925 = call i1 @c_isTaintedPointerToTaintedMem(i8* %924)
  br i1 %925, label %_Dynamic_check.succeeded893, label %_Dynamic_check.failed892

_Dynamic_check.succeeded893:                      ; preds = %if.end888
  %926 = bitcast i8* %924 to %Tstruct.json_object_t_t*
  %927 = ptrtoint i8* %921 to i32
  %928 = call i8* @c_fetch_pointer_from_offset(i32 %927)
  %929 = call i1 @c_isTaintedPointerToTaintedMem(i8* %928)
  br i1 %929, label %_Dynamic_check.succeeded895, label %_Dynamic_check.failed894

_Dynamic_check.succeeded895:                      ; preds = %_Dynamic_check.succeeded893
  %930 = ptrtoint i8* %922 to i32
  %931 = call i8* @c_fetch_pointer_from_offset(i32 %930)
  %932 = call i1 @c_isTaintedPointerToTaintedMem(i8* %931)
  br i1 %932, label %_Dynamic_check.succeeded897, label %_Dynamic_check.failed896

_Dynamic_check.succeeded897:                      ; preds = %_Dynamic_check.succeeded895
  %call898 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %926, i8* %928, i8* %931)
  %cmp899 = icmp eq i32 %call898, -1
  br i1 %cmp899, label %if.then900, label %if.else903

if.then900:                                       ; preds = %_Dynamic_check.succeeded897
  %call901 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %933 = load i32, i32* @tests_passed, align 4
  %inc902 = add nsw i32 %933, 1
  store i32 %inc902, i32* @tests_passed, align 4
  br label %if.end906

_Dynamic_check.failed892:                         ; preds = %if.end888
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed894:                         ; preds = %_Dynamic_check.succeeded893
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed896:                         ; preds = %_Dynamic_check.succeeded895
  call void @llvm.trap() #6
  unreachable

if.else903:                                       ; preds = %_Dynamic_check.succeeded897
  %call904 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %934 = load i32, i32* @tests_failed, align 4
  %inc905 = add nsw i32 %934, 1
  store i32 %inc905, i32* @tests_failed, align 4
  br label %if.end906

if.end906:                                        ; preds = %if.else903, %if.then900
  %935 = load i8*, i8** %string_1, align 4
  %936 = ptrtoint i8* %935 to i64
  %937 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %936)
  %938 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.272 to i64))
  %call907 = call i8* @t_strcpy(i8* %937, i8* %938)
  %939 = load i8*, i8** %string_2, align 4
  %940 = ptrtoint i8* %939 to i64
  %941 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %940)
  %942 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.273 to i64))
  %call908 = call i8* @t_strcpy(i8* %941, i8* %942)
  %call909 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 630, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %943 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %944 = load i8*, i8** %string_1, align 4
  %945 = load i8*, i8** %string_2, align 4
  %946 = ptrtoint %Tstruct.json_object_t_t* %943 to i32
  %947 = call i8* @c_fetch_pointer_from_offset(i32 %946)
  %948 = call i1 @c_isTaintedPointerToTaintedMem(i8* %947)
  br i1 %948, label %_Dynamic_check.succeeded911, label %_Dynamic_check.failed910

_Dynamic_check.succeeded911:                      ; preds = %if.end906
  %949 = bitcast i8* %947 to %Tstruct.json_object_t_t*
  %950 = ptrtoint i8* %944 to i32
  %951 = call i8* @c_fetch_pointer_from_offset(i32 %950)
  %952 = call i1 @c_isTaintedPointerToTaintedMem(i8* %951)
  br i1 %952, label %_Dynamic_check.succeeded913, label %_Dynamic_check.failed912

_Dynamic_check.succeeded913:                      ; preds = %_Dynamic_check.succeeded911
  %953 = ptrtoint i8* %945 to i32
  %954 = call i8* @c_fetch_pointer_from_offset(i32 %953)
  %955 = call i1 @c_isTaintedPointerToTaintedMem(i8* %954)
  br i1 %955, label %_Dynamic_check.succeeded915, label %_Dynamic_check.failed914

_Dynamic_check.succeeded915:                      ; preds = %_Dynamic_check.succeeded913
  %call916 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %949, i8* %951, i8* %954)
  %cmp917 = icmp eq i32 %call916, -1
  br i1 %cmp917, label %if.then918, label %if.else921

if.then918:                                       ; preds = %_Dynamic_check.succeeded915
  %call919 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %956 = load i32, i32* @tests_passed, align 4
  %inc920 = add nsw i32 %956, 1
  store i32 %inc920, i32* @tests_passed, align 4
  br label %if.end924

_Dynamic_check.failed910:                         ; preds = %if.end906
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed912:                         ; preds = %_Dynamic_check.succeeded911
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed914:                         ; preds = %_Dynamic_check.succeeded913
  call void @llvm.trap() #6
  unreachable

if.else921:                                       ; preds = %_Dynamic_check.succeeded915
  %call922 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %957 = load i32, i32* @tests_failed, align 4
  %inc923 = add nsw i32 %957, 1
  store i32 %inc923, i32* @tests_failed, align 4
  br label %if.end924

if.end924:                                        ; preds = %if.else921, %if.then918
  %958 = load i8*, i8** %string_1, align 4
  %959 = ptrtoint i8* %958 to i64
  %960 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %959)
  %961 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.274 to i64))
  %call925 = call i8* @t_strcpy(i8* %960, i8* %961)
  %962 = load i8*, i8** %string_2, align 4
  %963 = ptrtoint i8* %962 to i64
  %964 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %963)
  %965 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.275 to i64))
  %call926 = call i8* @t_strcpy(i8* %964, i8* %965)
  %call927 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 633, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %966 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %967 = load i8*, i8** %string_1, align 4
  %968 = load i8*, i8** %string_2, align 4
  %969 = ptrtoint %Tstruct.json_object_t_t* %966 to i32
  %970 = call i8* @c_fetch_pointer_from_offset(i32 %969)
  %971 = call i1 @c_isTaintedPointerToTaintedMem(i8* %970)
  br i1 %971, label %_Dynamic_check.succeeded929, label %_Dynamic_check.failed928

_Dynamic_check.succeeded929:                      ; preds = %if.end924
  %972 = bitcast i8* %970 to %Tstruct.json_object_t_t*
  %973 = ptrtoint i8* %967 to i32
  %974 = call i8* @c_fetch_pointer_from_offset(i32 %973)
  %975 = call i1 @c_isTaintedPointerToTaintedMem(i8* %974)
  br i1 %975, label %_Dynamic_check.succeeded931, label %_Dynamic_check.failed930

_Dynamic_check.succeeded931:                      ; preds = %_Dynamic_check.succeeded929
  %976 = ptrtoint i8* %968 to i32
  %977 = call i8* @c_fetch_pointer_from_offset(i32 %976)
  %978 = call i1 @c_isTaintedPointerToTaintedMem(i8* %977)
  br i1 %978, label %_Dynamic_check.succeeded933, label %_Dynamic_check.failed932

_Dynamic_check.succeeded933:                      ; preds = %_Dynamic_check.succeeded931
  %call934 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %972, i8* %974, i8* %977)
  %cmp935 = icmp eq i32 %call934, -1
  br i1 %cmp935, label %if.then936, label %if.else939

if.then936:                                       ; preds = %_Dynamic_check.succeeded933
  %call937 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %979 = load i32, i32* @tests_passed, align 4
  %inc938 = add nsw i32 %979, 1
  store i32 %inc938, i32* @tests_passed, align 4
  br label %if.end942

_Dynamic_check.failed928:                         ; preds = %if.end924
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed930:                         ; preds = %_Dynamic_check.succeeded929
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed932:                         ; preds = %_Dynamic_check.succeeded931
  call void @llvm.trap() #6
  unreachable

if.else939:                                       ; preds = %_Dynamic_check.succeeded933
  %call940 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %980 = load i32, i32* @tests_failed, align 4
  %inc941 = add nsw i32 %980, 1
  store i32 %inc941, i32* @tests_failed, align 4
  br label %if.end942

if.end942:                                        ; preds = %if.else939, %if.then936
  %981 = load i8*, i8** %string_1, align 4
  %982 = ptrtoint i8* %981 to i64
  %983 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %982)
  %984 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.276 to i64))
  %call943 = call i8* @t_strcpy(i8* %983, i8* %984)
  %985 = load i8*, i8** %string_2, align 4
  %986 = ptrtoint i8* %985 to i64
  %987 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %986)
  %988 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.277 to i64))
  %call944 = call i8* @t_strcpy(i8* %987, i8* %988)
  %call945 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 636, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %989 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %990 = load i8*, i8** %string_1, align 4
  %991 = load i8*, i8** %string_2, align 4
  %992 = ptrtoint %Tstruct.json_object_t_t* %989 to i32
  %993 = call i8* @c_fetch_pointer_from_offset(i32 %992)
  %994 = call i1 @c_isTaintedPointerToTaintedMem(i8* %993)
  br i1 %994, label %_Dynamic_check.succeeded947, label %_Dynamic_check.failed946

_Dynamic_check.succeeded947:                      ; preds = %if.end942
  %995 = bitcast i8* %993 to %Tstruct.json_object_t_t*
  %996 = ptrtoint i8* %990 to i32
  %997 = call i8* @c_fetch_pointer_from_offset(i32 %996)
  %998 = call i1 @c_isTaintedPointerToTaintedMem(i8* %997)
  br i1 %998, label %_Dynamic_check.succeeded949, label %_Dynamic_check.failed948

_Dynamic_check.succeeded949:                      ; preds = %_Dynamic_check.succeeded947
  %999 = ptrtoint i8* %991 to i32
  %1000 = call i8* @c_fetch_pointer_from_offset(i32 %999)
  %1001 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1000)
  br i1 %1001, label %_Dynamic_check.succeeded951, label %_Dynamic_check.failed950

_Dynamic_check.succeeded951:                      ; preds = %_Dynamic_check.succeeded949
  %call952 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %995, i8* %997, i8* %1000)
  %cmp953 = icmp eq i32 %call952, -1
  br i1 %cmp953, label %if.then954, label %if.else957

if.then954:                                       ; preds = %_Dynamic_check.succeeded951
  %call955 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1002 = load i32, i32* @tests_passed, align 4
  %inc956 = add nsw i32 %1002, 1
  store i32 %inc956, i32* @tests_passed, align 4
  br label %if.end960

_Dynamic_check.failed946:                         ; preds = %if.end942
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed948:                         ; preds = %_Dynamic_check.succeeded947
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed950:                         ; preds = %_Dynamic_check.succeeded949
  call void @llvm.trap() #6
  unreachable

if.else957:                                       ; preds = %_Dynamic_check.succeeded951
  %call958 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1003 = load i32, i32* @tests_failed, align 4
  %inc959 = add nsw i32 %1003, 1
  store i32 %inc959, i32* @tests_failed, align 4
  br label %if.end960

if.end960:                                        ; preds = %if.else957, %if.then954
  %1004 = load i8*, i8** %string_1, align 4
  %1005 = ptrtoint i8* %1004 to i64
  %1006 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1005)
  %1007 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.278 to i64))
  %call961 = call i8* @t_strcpy(i8* %1006, i8* %1007)
  %1008 = load i8*, i8** %string_2, align 4
  %1009 = ptrtoint i8* %1008 to i64
  %1010 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1009)
  %1011 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.279 to i64))
  %call962 = call i8* @t_strcpy(i8* %1010, i8* %1011)
  %call963 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 639, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1012 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1013 = load i8*, i8** %string_1, align 4
  %1014 = load i8*, i8** %string_2, align 4
  %1015 = ptrtoint %Tstruct.json_object_t_t* %1012 to i32
  %1016 = call i8* @c_fetch_pointer_from_offset(i32 %1015)
  %1017 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1016)
  br i1 %1017, label %_Dynamic_check.succeeded965, label %_Dynamic_check.failed964

_Dynamic_check.succeeded965:                      ; preds = %if.end960
  %1018 = bitcast i8* %1016 to %Tstruct.json_object_t_t*
  %1019 = ptrtoint i8* %1013 to i32
  %1020 = call i8* @c_fetch_pointer_from_offset(i32 %1019)
  %1021 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1020)
  br i1 %1021, label %_Dynamic_check.succeeded967, label %_Dynamic_check.failed966

_Dynamic_check.succeeded967:                      ; preds = %_Dynamic_check.succeeded965
  %1022 = ptrtoint i8* %1014 to i32
  %1023 = call i8* @c_fetch_pointer_from_offset(i32 %1022)
  %1024 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1023)
  br i1 %1024, label %_Dynamic_check.succeeded969, label %_Dynamic_check.failed968

_Dynamic_check.succeeded969:                      ; preds = %_Dynamic_check.succeeded967
  %call970 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1018, i8* %1020, i8* %1023)
  %cmp971 = icmp eq i32 %call970, -1
  br i1 %cmp971, label %if.then972, label %if.else975

if.then972:                                       ; preds = %_Dynamic_check.succeeded969
  %call973 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1025 = load i32, i32* @tests_passed, align 4
  %inc974 = add nsw i32 %1025, 1
  store i32 %inc974, i32* @tests_passed, align 4
  br label %if.end978

_Dynamic_check.failed964:                         ; preds = %if.end960
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed966:                         ; preds = %_Dynamic_check.succeeded965
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed968:                         ; preds = %_Dynamic_check.succeeded967
  call void @llvm.trap() #6
  unreachable

if.else975:                                       ; preds = %_Dynamic_check.succeeded969
  %call976 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1026 = load i32, i32* @tests_failed, align 4
  %inc977 = add nsw i32 %1026, 1
  store i32 %inc977, i32* @tests_failed, align 4
  br label %if.end978

if.end978:                                        ; preds = %if.else975, %if.then972
  %1027 = load i8*, i8** %string_1, align 4
  %1028 = ptrtoint i8* %1027 to i64
  %1029 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1028)
  %1030 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.280 to i64))
  %call979 = call i8* @t_strcpy(i8* %1029, i8* %1030)
  %1031 = load i8*, i8** %string_2, align 4
  %1032 = ptrtoint i8* %1031 to i64
  %1033 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1032)
  %1034 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.281 to i64))
  %call980 = call i8* @t_strcpy(i8* %1033, i8* %1034)
  %call981 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 642, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1035 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1036 = load i8*, i8** %string_1, align 4
  %1037 = load i8*, i8** %string_2, align 4
  %1038 = ptrtoint %Tstruct.json_object_t_t* %1035 to i32
  %1039 = call i8* @c_fetch_pointer_from_offset(i32 %1038)
  %1040 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1039)
  br i1 %1040, label %_Dynamic_check.succeeded983, label %_Dynamic_check.failed982

_Dynamic_check.succeeded983:                      ; preds = %if.end978
  %1041 = bitcast i8* %1039 to %Tstruct.json_object_t_t*
  %1042 = ptrtoint i8* %1036 to i32
  %1043 = call i8* @c_fetch_pointer_from_offset(i32 %1042)
  %1044 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1043)
  br i1 %1044, label %_Dynamic_check.succeeded985, label %_Dynamic_check.failed984

_Dynamic_check.succeeded985:                      ; preds = %_Dynamic_check.succeeded983
  %1045 = ptrtoint i8* %1037 to i32
  %1046 = call i8* @c_fetch_pointer_from_offset(i32 %1045)
  %1047 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1046)
  br i1 %1047, label %_Dynamic_check.succeeded987, label %_Dynamic_check.failed986

_Dynamic_check.succeeded987:                      ; preds = %_Dynamic_check.succeeded985
  %call988 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1041, i8* %1043, i8* %1046)
  %cmp989 = icmp eq i32 %call988, -1
  br i1 %cmp989, label %if.then990, label %if.else993

if.then990:                                       ; preds = %_Dynamic_check.succeeded987
  %call991 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1048 = load i32, i32* @tests_passed, align 4
  %inc992 = add nsw i32 %1048, 1
  store i32 %inc992, i32* @tests_passed, align 4
  br label %if.end996

_Dynamic_check.failed982:                         ; preds = %if.end978
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed984:                         ; preds = %_Dynamic_check.succeeded983
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed986:                         ; preds = %_Dynamic_check.succeeded985
  call void @llvm.trap() #6
  unreachable

if.else993:                                       ; preds = %_Dynamic_check.succeeded987
  %call994 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1049 = load i32, i32* @tests_failed, align 4
  %inc995 = add nsw i32 %1049, 1
  store i32 %inc995, i32* @tests_failed, align 4
  br label %if.end996

if.end996:                                        ; preds = %if.else993, %if.then990
  %1050 = load i8*, i8** %string_1, align 4
  %1051 = ptrtoint i8* %1050 to i64
  %1052 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1051)
  %1053 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.282 to i64))
  %call997 = call i8* @t_strcpy(i8* %1052, i8* %1053)
  %1054 = load i8*, i8** %string_2, align 4
  %1055 = ptrtoint i8* %1054 to i64
  %1056 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1055)
  %1057 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.283 to i64))
  %call998 = call i8* @t_strcpy(i8* %1056, i8* %1057)
  %call999 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1058 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1059 = load i8*, i8** %string_1, align 4
  %1060 = load i8*, i8** %string_2, align 4
  %1061 = ptrtoint %Tstruct.json_object_t_t* %1058 to i32
  %1062 = call i8* @c_fetch_pointer_from_offset(i32 %1061)
  %1063 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1062)
  br i1 %1063, label %_Dynamic_check.succeeded1001, label %_Dynamic_check.failed1000

_Dynamic_check.succeeded1001:                     ; preds = %if.end996
  %1064 = bitcast i8* %1062 to %Tstruct.json_object_t_t*
  %1065 = ptrtoint i8* %1059 to i32
  %1066 = call i8* @c_fetch_pointer_from_offset(i32 %1065)
  %1067 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1066)
  br i1 %1067, label %_Dynamic_check.succeeded1003, label %_Dynamic_check.failed1002

_Dynamic_check.succeeded1003:                     ; preds = %_Dynamic_check.succeeded1001
  %1068 = ptrtoint i8* %1060 to i32
  %1069 = call i8* @c_fetch_pointer_from_offset(i32 %1068)
  %1070 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1069)
  br i1 %1070, label %_Dynamic_check.succeeded1005, label %_Dynamic_check.failed1004

_Dynamic_check.succeeded1005:                     ; preds = %_Dynamic_check.succeeded1003
  %call1006 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1064, i8* %1066, i8* %1069)
  %cmp1007 = icmp eq i32 %call1006, -1
  br i1 %cmp1007, label %if.then1008, label %if.else1011

if.then1008:                                      ; preds = %_Dynamic_check.succeeded1005
  %call1009 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1071 = load i32, i32* @tests_passed, align 4
  %inc1010 = add nsw i32 %1071, 1
  store i32 %inc1010, i32* @tests_passed, align 4
  br label %if.end1014

_Dynamic_check.failed1000:                        ; preds = %if.end996
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1002:                        ; preds = %_Dynamic_check.succeeded1001
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1004:                        ; preds = %_Dynamic_check.succeeded1003
  call void @llvm.trap() #6
  unreachable

if.else1011:                                      ; preds = %_Dynamic_check.succeeded1005
  %call1012 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1072 = load i32, i32* @tests_failed, align 4
  %inc1013 = add nsw i32 %1072, 1
  store i32 %inc1013, i32* @tests_failed, align 4
  br label %if.end1014

if.end1014:                                       ; preds = %if.else1011, %if.then1008
  %1073 = load i8*, i8** %string_1, align 4
  %1074 = ptrtoint i8* %1073 to i64
  %1075 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1074)
  %1076 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.284 to i64))
  %call1015 = call i8* @t_strcpy(i8* %1075, i8* %1076)
  %1077 = load i8*, i8** %string_2, align 4
  %1078 = ptrtoint i8* %1077 to i64
  %1079 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1078)
  %1080 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.283 to i64))
  %call1016 = call i8* @t_strcpy(i8* %1079, i8* %1080)
  %call1017 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 648, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1081 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1082 = load i8*, i8** %string_1, align 4
  %1083 = load i8*, i8** %string_2, align 4
  %1084 = ptrtoint %Tstruct.json_object_t_t* %1081 to i32
  %1085 = call i8* @c_fetch_pointer_from_offset(i32 %1084)
  %1086 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1085)
  br i1 %1086, label %_Dynamic_check.succeeded1019, label %_Dynamic_check.failed1018

_Dynamic_check.succeeded1019:                     ; preds = %if.end1014
  %1087 = bitcast i8* %1085 to %Tstruct.json_object_t_t*
  %1088 = ptrtoint i8* %1082 to i32
  %1089 = call i8* @c_fetch_pointer_from_offset(i32 %1088)
  %1090 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1089)
  br i1 %1090, label %_Dynamic_check.succeeded1021, label %_Dynamic_check.failed1020

_Dynamic_check.succeeded1021:                     ; preds = %_Dynamic_check.succeeded1019
  %1091 = ptrtoint i8* %1083 to i32
  %1092 = call i8* @c_fetch_pointer_from_offset(i32 %1091)
  %1093 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1092)
  br i1 %1093, label %_Dynamic_check.succeeded1023, label %_Dynamic_check.failed1022

_Dynamic_check.succeeded1023:                     ; preds = %_Dynamic_check.succeeded1021
  %call1024 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1087, i8* %1089, i8* %1092)
  %cmp1025 = icmp eq i32 %call1024, -1
  br i1 %cmp1025, label %if.then1026, label %if.else1029

if.then1026:                                      ; preds = %_Dynamic_check.succeeded1023
  %call1027 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1094 = load i32, i32* @tests_passed, align 4
  %inc1028 = add nsw i32 %1094, 1
  store i32 %inc1028, i32* @tests_passed, align 4
  br label %if.end1032

_Dynamic_check.failed1018:                        ; preds = %if.end1014
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1020:                        ; preds = %_Dynamic_check.succeeded1019
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1022:                        ; preds = %_Dynamic_check.succeeded1021
  call void @llvm.trap() #6
  unreachable

if.else1029:                                      ; preds = %_Dynamic_check.succeeded1023
  %call1030 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1095 = load i32, i32* @tests_failed, align 4
  %inc1031 = add nsw i32 %1095, 1
  store i32 %inc1031, i32* @tests_failed, align 4
  br label %if.end1032

if.end1032:                                       ; preds = %if.else1029, %if.then1026
  %1096 = load i8*, i8** %string_1, align 4
  %1097 = ptrtoint i8* %1096 to i64
  %1098 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1097)
  %1099 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.285 to i64))
  %call1033 = call i8* @t_strcpy(i8* %1098, i8* %1099)
  %1100 = load i8*, i8** %string_2, align 4
  %1101 = ptrtoint i8* %1100 to i64
  %1102 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1101)
  %1103 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.286 to i64))
  %call1034 = call i8* @t_strcpy(i8* %1102, i8* %1103)
  %call1035 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 653, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1104 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1105 = load i8*, i8** %string_1, align 4
  %1106 = load i8*, i8** %string_2, align 4
  %1107 = ptrtoint %Tstruct.json_object_t_t* %1104 to i32
  %1108 = call i8* @c_fetch_pointer_from_offset(i32 %1107)
  %1109 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1108)
  br i1 %1109, label %_Dynamic_check.succeeded1037, label %_Dynamic_check.failed1036

_Dynamic_check.succeeded1037:                     ; preds = %if.end1032
  %1110 = bitcast i8* %1108 to %Tstruct.json_object_t_t*
  %1111 = ptrtoint i8* %1105 to i32
  %1112 = call i8* @c_fetch_pointer_from_offset(i32 %1111)
  %1113 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1112)
  br i1 %1113, label %_Dynamic_check.succeeded1039, label %_Dynamic_check.failed1038

_Dynamic_check.succeeded1039:                     ; preds = %_Dynamic_check.succeeded1037
  %1114 = ptrtoint i8* %1106 to i32
  %1115 = call i8* @c_fetch_pointer_from_offset(i32 %1114)
  %1116 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1115)
  br i1 %1116, label %_Dynamic_check.succeeded1041, label %_Dynamic_check.failed1040

_Dynamic_check.succeeded1041:                     ; preds = %_Dynamic_check.succeeded1039
  %call1042 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1110, i8* %1112, i8* %1115)
  %cmp1043 = icmp eq i32 %call1042, -1
  br i1 %cmp1043, label %if.then1044, label %if.else1047

if.then1044:                                      ; preds = %_Dynamic_check.succeeded1041
  %call1045 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1117 = load i32, i32* @tests_passed, align 4
  %inc1046 = add nsw i32 %1117, 1
  store i32 %inc1046, i32* @tests_passed, align 4
  br label %if.end1050

_Dynamic_check.failed1036:                        ; preds = %if.end1032
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1038:                        ; preds = %_Dynamic_check.succeeded1037
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1040:                        ; preds = %_Dynamic_check.succeeded1039
  call void @llvm.trap() #6
  unreachable

if.else1047:                                      ; preds = %_Dynamic_check.succeeded1041
  %call1048 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1118 = load i32, i32* @tests_failed, align 4
  %inc1049 = add nsw i32 %1118, 1
  store i32 %inc1049, i32* @tests_failed, align 4
  br label %if.end1050

if.end1050:                                       ; preds = %if.else1047, %if.then1044
  %1119 = load i8*, i8** %string_1, align 4
  %1120 = ptrtoint i8* %1119 to i64
  %1121 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1120)
  %1122 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.287 to i64))
  %call1051 = call i8* @t_strcpy(i8* %1121, i8* %1122)
  %1123 = load i8*, i8** %string_2, align 4
  %1124 = ptrtoint i8* %1123 to i64
  %1125 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1124)
  %1126 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.288 to i64))
  %call1052 = call i8* @t_strcpy(i8* %1125, i8* %1126)
  %call1053 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 656, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1127 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1128 = load i8*, i8** %string_1, align 4
  %1129 = load i8*, i8** %string_2, align 4
  %1130 = ptrtoint %Tstruct.json_object_t_t* %1127 to i32
  %1131 = call i8* @c_fetch_pointer_from_offset(i32 %1130)
  %1132 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1131)
  br i1 %1132, label %_Dynamic_check.succeeded1055, label %_Dynamic_check.failed1054

_Dynamic_check.succeeded1055:                     ; preds = %if.end1050
  %1133 = bitcast i8* %1131 to %Tstruct.json_object_t_t*
  %1134 = ptrtoint i8* %1128 to i32
  %1135 = call i8* @c_fetch_pointer_from_offset(i32 %1134)
  %1136 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1135)
  br i1 %1136, label %_Dynamic_check.succeeded1057, label %_Dynamic_check.failed1056

_Dynamic_check.succeeded1057:                     ; preds = %_Dynamic_check.succeeded1055
  %1137 = ptrtoint i8* %1129 to i32
  %1138 = call i8* @c_fetch_pointer_from_offset(i32 %1137)
  %1139 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1138)
  br i1 %1139, label %_Dynamic_check.succeeded1059, label %_Dynamic_check.failed1058

_Dynamic_check.succeeded1059:                     ; preds = %_Dynamic_check.succeeded1057
  %call1060 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1133, i8* %1135, i8* %1138)
  %cmp1061 = icmp eq i32 %call1060, -1
  br i1 %cmp1061, label %if.then1062, label %if.else1065

if.then1062:                                      ; preds = %_Dynamic_check.succeeded1059
  %call1063 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1140 = load i32, i32* @tests_passed, align 4
  %inc1064 = add nsw i32 %1140, 1
  store i32 %inc1064, i32* @tests_passed, align 4
  br label %if.end1068

_Dynamic_check.failed1054:                        ; preds = %if.end1050
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1056:                        ; preds = %_Dynamic_check.succeeded1055
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1058:                        ; preds = %_Dynamic_check.succeeded1057
  call void @llvm.trap() #6
  unreachable

if.else1065:                                      ; preds = %_Dynamic_check.succeeded1059
  %call1066 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1141 = load i32, i32* @tests_failed, align 4
  %inc1067 = add nsw i32 %1141, 1
  store i32 %inc1067, i32* @tests_failed, align 4
  br label %if.end1068

if.end1068:                                       ; preds = %if.else1065, %if.then1062
  %1142 = load i8*, i8** %string_1, align 4
  %1143 = ptrtoint i8* %1142 to i64
  %1144 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1143)
  %1145 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.289 to i64))
  %call1069 = call i8* @t_strcpy(i8* %1144, i8* %1145)
  %1146 = load i8*, i8** %string_2, align 4
  %1147 = ptrtoint i8* %1146 to i64
  %1148 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1147)
  %1149 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.290 to i64))
  %call1070 = call i8* @t_strcpy(i8* %1148, i8* %1149)
  %call1071 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 659, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1150 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1151 = load i8*, i8** %string_1, align 4
  %1152 = load i8*, i8** %string_2, align 4
  %1153 = ptrtoint %Tstruct.json_object_t_t* %1150 to i32
  %1154 = call i8* @c_fetch_pointer_from_offset(i32 %1153)
  %1155 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1154)
  br i1 %1155, label %_Dynamic_check.succeeded1073, label %_Dynamic_check.failed1072

_Dynamic_check.succeeded1073:                     ; preds = %if.end1068
  %1156 = bitcast i8* %1154 to %Tstruct.json_object_t_t*
  %1157 = ptrtoint i8* %1151 to i32
  %1158 = call i8* @c_fetch_pointer_from_offset(i32 %1157)
  %1159 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1158)
  br i1 %1159, label %_Dynamic_check.succeeded1075, label %_Dynamic_check.failed1074

_Dynamic_check.succeeded1075:                     ; preds = %_Dynamic_check.succeeded1073
  %1160 = ptrtoint i8* %1152 to i32
  %1161 = call i8* @c_fetch_pointer_from_offset(i32 %1160)
  %1162 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1161)
  br i1 %1162, label %_Dynamic_check.succeeded1077, label %_Dynamic_check.failed1076

_Dynamic_check.succeeded1077:                     ; preds = %_Dynamic_check.succeeded1075
  %call1078 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1156, i8* %1158, i8* %1161)
  %cmp1079 = icmp eq i32 %call1078, -1
  br i1 %cmp1079, label %if.then1080, label %if.else1083

if.then1080:                                      ; preds = %_Dynamic_check.succeeded1077
  %call1081 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1163 = load i32, i32* @tests_passed, align 4
  %inc1082 = add nsw i32 %1163, 1
  store i32 %inc1082, i32* @tests_passed, align 4
  br label %if.end1086

_Dynamic_check.failed1072:                        ; preds = %if.end1068
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1074:                        ; preds = %_Dynamic_check.succeeded1073
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1076:                        ; preds = %_Dynamic_check.succeeded1075
  call void @llvm.trap() #6
  unreachable

if.else1083:                                      ; preds = %_Dynamic_check.succeeded1077
  %call1084 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1164 = load i32, i32* @tests_failed, align 4
  %inc1085 = add nsw i32 %1164, 1
  store i32 %inc1085, i32* @tests_failed, align 4
  br label %if.end1086

if.end1086:                                       ; preds = %if.else1083, %if.then1080
  %1165 = load i8*, i8** %string_1, align 4
  %1166 = ptrtoint i8* %1165 to i64
  %1167 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1166)
  %1168 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.291 to i64))
  %call1087 = call i8* @t_strcpy(i8* %1167, i8* %1168)
  %1169 = load i8*, i8** %string_2, align 4
  %1170 = ptrtoint i8* %1169 to i64
  %1171 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1170)
  %1172 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.292 to i64))
  %call1088 = call i8* @t_strcpy(i8* %1171, i8* %1172)
  %call1089 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 662, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1173 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1174 = load i8*, i8** %string_1, align 4
  %1175 = load i8*, i8** %string_2, align 4
  %1176 = ptrtoint %Tstruct.json_object_t_t* %1173 to i32
  %1177 = call i8* @c_fetch_pointer_from_offset(i32 %1176)
  %1178 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1177)
  br i1 %1178, label %_Dynamic_check.succeeded1091, label %_Dynamic_check.failed1090

_Dynamic_check.succeeded1091:                     ; preds = %if.end1086
  %1179 = bitcast i8* %1177 to %Tstruct.json_object_t_t*
  %1180 = ptrtoint i8* %1174 to i32
  %1181 = call i8* @c_fetch_pointer_from_offset(i32 %1180)
  %1182 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1181)
  br i1 %1182, label %_Dynamic_check.succeeded1093, label %_Dynamic_check.failed1092

_Dynamic_check.succeeded1093:                     ; preds = %_Dynamic_check.succeeded1091
  %1183 = ptrtoint i8* %1175 to i32
  %1184 = call i8* @c_fetch_pointer_from_offset(i32 %1183)
  %1185 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1184)
  br i1 %1185, label %_Dynamic_check.succeeded1095, label %_Dynamic_check.failed1094

_Dynamic_check.succeeded1095:                     ; preds = %_Dynamic_check.succeeded1093
  %call1096 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1179, i8* %1181, i8* %1184)
  %cmp1097 = icmp eq i32 %call1096, -1
  br i1 %cmp1097, label %if.then1098, label %if.else1101

if.then1098:                                      ; preds = %_Dynamic_check.succeeded1095
  %call1099 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1186 = load i32, i32* @tests_passed, align 4
  %inc1100 = add nsw i32 %1186, 1
  store i32 %inc1100, i32* @tests_passed, align 4
  br label %if.end1104

_Dynamic_check.failed1090:                        ; preds = %if.end1086
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1092:                        ; preds = %_Dynamic_check.succeeded1091
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1094:                        ; preds = %_Dynamic_check.succeeded1093
  call void @llvm.trap() #6
  unreachable

if.else1101:                                      ; preds = %_Dynamic_check.succeeded1095
  %call1102 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1187 = load i32, i32* @tests_failed, align 4
  %inc1103 = add nsw i32 %1187, 1
  store i32 %inc1103, i32* @tests_failed, align 4
  br label %if.end1104

if.end1104:                                       ; preds = %if.else1101, %if.then1098
  %1188 = load i8*, i8** %string_1, align 4
  %1189 = ptrtoint i8* %1188 to i64
  %1190 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1189)
  %1191 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.293 to i64))
  %call1105 = call i8* @t_strcpy(i8* %1190, i8* %1191)
  %1192 = load i8*, i8** %string_2, align 4
  %1193 = ptrtoint i8* %1192 to i64
  %1194 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1193)
  %1195 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.294 to i64))
  %call1106 = call i8* @t_strcpy(i8* %1194, i8* %1195)
  %call1107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 665, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1196 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1197 = load i8*, i8** %string_1, align 4
  %1198 = load i8*, i8** %string_2, align 4
  %1199 = ptrtoint %Tstruct.json_object_t_t* %1196 to i32
  %1200 = call i8* @c_fetch_pointer_from_offset(i32 %1199)
  %1201 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1200)
  br i1 %1201, label %_Dynamic_check.succeeded1109, label %_Dynamic_check.failed1108

_Dynamic_check.succeeded1109:                     ; preds = %if.end1104
  %1202 = bitcast i8* %1200 to %Tstruct.json_object_t_t*
  %1203 = ptrtoint i8* %1197 to i32
  %1204 = call i8* @c_fetch_pointer_from_offset(i32 %1203)
  %1205 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1204)
  br i1 %1205, label %_Dynamic_check.succeeded1111, label %_Dynamic_check.failed1110

_Dynamic_check.succeeded1111:                     ; preds = %_Dynamic_check.succeeded1109
  %1206 = ptrtoint i8* %1198 to i32
  %1207 = call i8* @c_fetch_pointer_from_offset(i32 %1206)
  %1208 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1207)
  br i1 %1208, label %_Dynamic_check.succeeded1113, label %_Dynamic_check.failed1112

_Dynamic_check.succeeded1113:                     ; preds = %_Dynamic_check.succeeded1111
  %call1114 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1202, i8* %1204, i8* %1207)
  %cmp1115 = icmp eq i32 %call1114, -1
  br i1 %cmp1115, label %if.then1116, label %if.else1119

if.then1116:                                      ; preds = %_Dynamic_check.succeeded1113
  %call1117 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1209 = load i32, i32* @tests_passed, align 4
  %inc1118 = add nsw i32 %1209, 1
  store i32 %inc1118, i32* @tests_passed, align 4
  br label %if.end1122

_Dynamic_check.failed1108:                        ; preds = %if.end1104
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1110:                        ; preds = %_Dynamic_check.succeeded1109
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1112:                        ; preds = %_Dynamic_check.succeeded1111
  call void @llvm.trap() #6
  unreachable

if.else1119:                                      ; preds = %_Dynamic_check.succeeded1113
  %call1120 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1210 = load i32, i32* @tests_failed, align 4
  %inc1121 = add nsw i32 %1210, 1
  store i32 %inc1121, i32* @tests_failed, align 4
  br label %if.end1122

if.end1122:                                       ; preds = %if.else1119, %if.then1116
  %1211 = load i8*, i8** %string_1, align 4
  %1212 = ptrtoint i8* %1211 to i64
  %1213 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1212)
  %1214 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.295 to i64))
  %call1123 = call i8* @t_strcpy(i8* %1213, i8* %1214)
  %1215 = load i8*, i8** %string_2, align 4
  %1216 = ptrtoint i8* %1215 to i64
  %1217 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1216)
  %1218 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.296 to i64))
  %call1124 = call i8* @t_strcpy(i8* %1217, i8* %1218)
  %call1125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 669, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1219 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1220 = load i8*, i8** %string_1, align 4
  %1221 = load i8*, i8** %string_2, align 4
  %1222 = ptrtoint %Tstruct.json_object_t_t* %1219 to i32
  %1223 = call i8* @c_fetch_pointer_from_offset(i32 %1222)
  %1224 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1223)
  br i1 %1224, label %_Dynamic_check.succeeded1127, label %_Dynamic_check.failed1126

_Dynamic_check.succeeded1127:                     ; preds = %if.end1122
  %1225 = bitcast i8* %1223 to %Tstruct.json_object_t_t*
  %1226 = ptrtoint i8* %1220 to i32
  %1227 = call i8* @c_fetch_pointer_from_offset(i32 %1226)
  %1228 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1227)
  br i1 %1228, label %_Dynamic_check.succeeded1129, label %_Dynamic_check.failed1128

_Dynamic_check.succeeded1129:                     ; preds = %_Dynamic_check.succeeded1127
  %1229 = ptrtoint i8* %1221 to i32
  %1230 = call i8* @c_fetch_pointer_from_offset(i32 %1229)
  %1231 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1230)
  br i1 %1231, label %_Dynamic_check.succeeded1131, label %_Dynamic_check.failed1130

_Dynamic_check.succeeded1131:                     ; preds = %_Dynamic_check.succeeded1129
  %call1132 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1225, i8* %1227, i8* %1230)
  %cmp1133 = icmp eq i32 %call1132, -1
  br i1 %cmp1133, label %if.then1134, label %if.else1137

if.then1134:                                      ; preds = %_Dynamic_check.succeeded1131
  %call1135 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1232 = load i32, i32* @tests_passed, align 4
  %inc1136 = add nsw i32 %1232, 1
  store i32 %inc1136, i32* @tests_passed, align 4
  br label %if.end1140

_Dynamic_check.failed1126:                        ; preds = %if.end1122
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1128:                        ; preds = %_Dynamic_check.succeeded1127
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1130:                        ; preds = %_Dynamic_check.succeeded1129
  call void @llvm.trap() #6
  unreachable

if.else1137:                                      ; preds = %_Dynamic_check.succeeded1131
  %call1138 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1233 = load i32, i32* @tests_failed, align 4
  %inc1139 = add nsw i32 %1233, 1
  store i32 %inc1139, i32* @tests_failed, align 4
  br label %if.end1140

if.end1140:                                       ; preds = %if.else1137, %if.then1134
  %1234 = load i8*, i8** %string_1, align 4
  %1235 = ptrtoint i8* %1234 to i64
  %1236 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1235)
  %1237 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.297 to i64))
  %call1141 = call i8* @t_strcpy(i8* %1236, i8* %1237)
  %1238 = load i8*, i8** %string_2, align 4
  %1239 = ptrtoint i8* %1238 to i64
  %1240 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1239)
  %1241 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.298 to i64))
  %call1142 = call i8* @t_strcpy(i8* %1240, i8* %1241)
  %call1143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 672, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1242 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1243 = load i8*, i8** %string_1, align 4
  %1244 = load i8*, i8** %string_2, align 4
  %1245 = ptrtoint %Tstruct.json_object_t_t* %1242 to i32
  %1246 = call i8* @c_fetch_pointer_from_offset(i32 %1245)
  %1247 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1246)
  br i1 %1247, label %_Dynamic_check.succeeded1145, label %_Dynamic_check.failed1144

_Dynamic_check.succeeded1145:                     ; preds = %if.end1140
  %1248 = bitcast i8* %1246 to %Tstruct.json_object_t_t*
  %1249 = ptrtoint i8* %1243 to i32
  %1250 = call i8* @c_fetch_pointer_from_offset(i32 %1249)
  %1251 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1250)
  br i1 %1251, label %_Dynamic_check.succeeded1147, label %_Dynamic_check.failed1146

_Dynamic_check.succeeded1147:                     ; preds = %_Dynamic_check.succeeded1145
  %1252 = ptrtoint i8* %1244 to i32
  %1253 = call i8* @c_fetch_pointer_from_offset(i32 %1252)
  %1254 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1253)
  br i1 %1254, label %_Dynamic_check.succeeded1149, label %_Dynamic_check.failed1148

_Dynamic_check.succeeded1149:                     ; preds = %_Dynamic_check.succeeded1147
  %call1150 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1248, i8* %1250, i8* %1253)
  %cmp1151 = icmp eq i32 %call1150, -1
  br i1 %cmp1151, label %if.then1152, label %if.else1155

if.then1152:                                      ; preds = %_Dynamic_check.succeeded1149
  %call1153 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1255 = load i32, i32* @tests_passed, align 4
  %inc1154 = add nsw i32 %1255, 1
  store i32 %inc1154, i32* @tests_passed, align 4
  br label %if.end1158

_Dynamic_check.failed1144:                        ; preds = %if.end1140
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1146:                        ; preds = %_Dynamic_check.succeeded1145
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1148:                        ; preds = %_Dynamic_check.succeeded1147
  call void @llvm.trap() #6
  unreachable

if.else1155:                                      ; preds = %_Dynamic_check.succeeded1149
  %call1156 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1256 = load i32, i32* @tests_failed, align 4
  %inc1157 = add nsw i32 %1256, 1
  store i32 %inc1157, i32* @tests_failed, align 4
  br label %if.end1158

if.end1158:                                       ; preds = %if.else1155, %if.then1152
  %1257 = load i8*, i8** %string_1, align 4
  %1258 = ptrtoint i8* %1257 to i64
  %1259 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1258)
  %1260 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.299 to i64))
  %call1159 = call i8* @t_strcpy(i8* %1259, i8* %1260)
  %1261 = load i8*, i8** %string_2, align 4
  %1262 = ptrtoint i8* %1261 to i64
  %1263 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1262)
  %1264 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.300 to i64))
  %call1160 = call i8* @t_strcpy(i8* %1263, i8* %1264)
  %call1161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 675, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.263, i64 0, i64 0))
  %1265 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1266 = load i8*, i8** %string_1, align 4
  %1267 = load i8*, i8** %string_2, align 4
  %1268 = ptrtoint %Tstruct.json_object_t_t* %1265 to i32
  %1269 = call i8* @c_fetch_pointer_from_offset(i32 %1268)
  %1270 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1269)
  br i1 %1270, label %_Dynamic_check.succeeded1163, label %_Dynamic_check.failed1162

_Dynamic_check.succeeded1163:                     ; preds = %if.end1158
  %1271 = bitcast i8* %1269 to %Tstruct.json_object_t_t*
  %1272 = ptrtoint i8* %1266 to i32
  %1273 = call i8* @c_fetch_pointer_from_offset(i32 %1272)
  %1274 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1273)
  br i1 %1274, label %_Dynamic_check.succeeded1165, label %_Dynamic_check.failed1164

_Dynamic_check.succeeded1165:                     ; preds = %_Dynamic_check.succeeded1163
  %1275 = ptrtoint i8* %1267 to i32
  %1276 = call i8* @c_fetch_pointer_from_offset(i32 %1275)
  %1277 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1276)
  br i1 %1277, label %_Dynamic_check.succeeded1167, label %_Dynamic_check.failed1166

_Dynamic_check.succeeded1167:                     ; preds = %_Dynamic_check.succeeded1165
  %call1168 = call i32 @json_object_set_string(%Tstruct.json_object_t_t* %1271, i8* %1273, i8* %1276)
  %cmp1169 = icmp eq i32 %call1168, -1
  br i1 %cmp1169, label %if.then1170, label %if.else1173

if.then1170:                                      ; preds = %_Dynamic_check.succeeded1167
  %call1171 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1278 = load i32, i32* @tests_passed, align 4
  %inc1172 = add nsw i32 %1278, 1
  store i32 %inc1172, i32* @tests_passed, align 4
  br label %if.end1176

_Dynamic_check.failed1162:                        ; preds = %if.end1158
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1164:                        ; preds = %_Dynamic_check.succeeded1163
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1166:                        ; preds = %_Dynamic_check.succeeded1165
  call void @llvm.trap() #6
  unreachable

if.else1173:                                      ; preds = %_Dynamic_check.succeeded1167
  %call1174 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1279 = load i32, i32* @tests_failed, align 4
  %inc1175 = add nsw i32 %1279, 1
  store i32 %inc1175, i32* @tests_failed, align 4
  br label %if.end1176

if.end1176:                                       ; preds = %if.else1173, %if.then1170
  %1280 = load i8*, i8** %string_1, align 4
  %1281 = ptrtoint i8* %1280 to i64
  %1282 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1281)
  %1283 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.301 to i64))
  %call1177 = call i8* @t_strcpy(i8* %1282, i8* %1283)
  %1284 = load i8*, i8** %string_1, align 4
  %1285 = ptrtoint i8* %1284 to i32
  %1286 = call i8* @c_fetch_pointer_from_offset(i32 %1285)
  %1287 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1286)
  br i1 %1287, label %_Dynamic_check.succeeded1179, label %_Dynamic_check.failed1178

_Dynamic_check.succeeded1179:                     ; preds = %if.end1176
  %call1180 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1286)
  store %Tstruct.json_value_t_t* %call1180, %Tstruct.json_value_t_t** %remove_test_val, align 4
  %1288 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 4
  %1289 = ptrtoint %Tstruct.json_value_t_t* %1288 to i32
  %1290 = call i8* @c_fetch_pointer_from_offset(i32 %1289)
  %1291 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1290)
  br i1 %1291, label %_Dynamic_check.succeeded1182, label %_Dynamic_check.failed1181

_Dynamic_check.succeeded1182:                     ; preds = %_Dynamic_check.succeeded1179
  %1292 = bitcast i8* %1290 to %Tstruct.json_value_t_t*
  %call1183 = call %Tstruct.json_array_t_t* @json_array(%Tstruct.json_value_t_t* %1292)
  store %Tstruct.json_array_t_t* %call1183, %Tstruct.json_array_t_t** %remove_test_arr, align 4
  %1293 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %remove_test_arr, align 4
  %1294 = ptrtoint %Tstruct.json_array_t_t* %1293 to i32
  %1295 = call i8* @c_fetch_pointer_from_offset(i32 %1294)
  %1296 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1295)
  br i1 %1296, label %_Dynamic_check.succeeded1185, label %_Dynamic_check.failed1184

_Dynamic_check.succeeded1185:                     ; preds = %_Dynamic_check.succeeded1182
  %1297 = bitcast i8* %1295 to %Tstruct.json_array_t_t*
  %call1186 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %1297, i64 2)
  %1298 = load i8*, i8** %string_1, align 4
  %1299 = ptrtoint i8* %1298 to i64
  %1300 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1299)
  %1301 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.302 to i64))
  %call1187 = call i8* @t_strcpy(i8* %1300, i8* %1301)
  %call1188 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 683, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.303, i64 0, i64 0))
  %1302 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 4
  %1303 = load i8*, i8** %string_1, align 4
  %1304 = ptrtoint i8* %1303 to i32
  %1305 = call i8* @c_fetch_pointer_from_offset(i32 %1304)
  %1306 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1305)
  br i1 %1306, label %_Dynamic_check.succeeded1190, label %_Dynamic_check.failed1189

_Dynamic_check.succeeded1190:                     ; preds = %_Dynamic_check.succeeded1185
  %call1191 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1305)
  %1307 = ptrtoint %Tstruct.json_value_t_t* %1302 to i32
  %1308 = call i8* @c_fetch_pointer_from_offset(i32 %1307)
  %1309 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1308)
  br i1 %1309, label %_Dynamic_check.succeeded1193, label %_Dynamic_check.failed1192

_Dynamic_check.succeeded1193:                     ; preds = %_Dynamic_check.succeeded1190
  %1310 = bitcast i8* %1308 to %Tstruct.json_value_t_t*
  %1311 = ptrtoint %Tstruct.json_value_t_t* %call1191 to i32
  %1312 = call i8* @c_fetch_pointer_from_offset(i32 %1311)
  %1313 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1312)
  br i1 %1313, label %_Dynamic_check.succeeded1195, label %_Dynamic_check.failed1194

_Dynamic_check.succeeded1195:                     ; preds = %_Dynamic_check.succeeded1193
  %1314 = bitcast i8* %1312 to %Tstruct.json_value_t_t*
  %call1196 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %1310, %Tstruct.json_value_t_t* %1314)
  %tobool1197 = icmp ne i32 %call1196, 0
  br i1 %tobool1197, label %if.then1198, label %if.else1201

if.then1198:                                      ; preds = %_Dynamic_check.succeeded1195
  %call1199 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1315 = load i32, i32* @tests_passed, align 4
  %inc1200 = add nsw i32 %1315, 1
  store i32 %inc1200, i32* @tests_passed, align 4
  br label %if.end1204

_Dynamic_check.failed1178:                        ; preds = %if.end1176
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1181:                        ; preds = %_Dynamic_check.succeeded1179
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1184:                        ; preds = %_Dynamic_check.succeeded1182
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1189:                        ; preds = %_Dynamic_check.succeeded1185
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1192:                        ; preds = %_Dynamic_check.succeeded1190
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1194:                        ; preds = %_Dynamic_check.succeeded1193
  call void @llvm.trap() #6
  unreachable

if.else1201:                                      ; preds = %_Dynamic_check.succeeded1195
  %call1202 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1316 = load i32, i32* @tests_failed, align 4
  %inc1203 = add nsw i32 %1316, 1
  store i32 %inc1203, i32* @tests_failed, align 4
  br label %if.end1204

if.end1204:                                       ; preds = %if.else1201, %if.then1198
  %1317 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %remove_test_arr, align 4
  %1318 = ptrtoint %Tstruct.json_array_t_t* %1317 to i32
  %1319 = call i8* @c_fetch_pointer_from_offset(i32 %1318)
  %1320 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1319)
  br i1 %1320, label %_Dynamic_check.succeeded1206, label %_Dynamic_check.failed1205

_Dynamic_check.succeeded1206:                     ; preds = %if.end1204
  %1321 = bitcast i8* %1319 to %Tstruct.json_array_t_t*
  %call1207 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %1321, i64 0)
  %1322 = load i8*, i8** %string_1, align 4
  %1323 = ptrtoint i8* %1322 to i64
  %1324 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1323)
  %1325 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.304 to i64))
  %call1208 = call i8* @t_strcpy(i8* %1324, i8* %1325)
  %call1209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 686, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.303, i64 0, i64 0))
  %1326 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 4
  %1327 = load i8*, i8** %string_1, align 4
  %1328 = ptrtoint i8* %1327 to i32
  %1329 = call i8* @c_fetch_pointer_from_offset(i32 %1328)
  %1330 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1329)
  br i1 %1330, label %_Dynamic_check.succeeded1211, label %_Dynamic_check.failed1210

_Dynamic_check.succeeded1211:                     ; preds = %_Dynamic_check.succeeded1206
  %call1212 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1329)
  %1331 = ptrtoint %Tstruct.json_value_t_t* %1326 to i32
  %1332 = call i8* @c_fetch_pointer_from_offset(i32 %1331)
  %1333 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1332)
  br i1 %1333, label %_Dynamic_check.succeeded1214, label %_Dynamic_check.failed1213

_Dynamic_check.succeeded1214:                     ; preds = %_Dynamic_check.succeeded1211
  %1334 = bitcast i8* %1332 to %Tstruct.json_value_t_t*
  %1335 = ptrtoint %Tstruct.json_value_t_t* %call1212 to i32
  %1336 = call i8* @c_fetch_pointer_from_offset(i32 %1335)
  %1337 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1336)
  br i1 %1337, label %_Dynamic_check.succeeded1216, label %_Dynamic_check.failed1215

_Dynamic_check.succeeded1216:                     ; preds = %_Dynamic_check.succeeded1214
  %1338 = bitcast i8* %1336 to %Tstruct.json_value_t_t*
  %call1217 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %1334, %Tstruct.json_value_t_t* %1338)
  %tobool1218 = icmp ne i32 %call1217, 0
  br i1 %tobool1218, label %if.then1219, label %if.else1222

if.then1219:                                      ; preds = %_Dynamic_check.succeeded1216
  %call1220 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1339 = load i32, i32* @tests_passed, align 4
  %inc1221 = add nsw i32 %1339, 1
  store i32 %inc1221, i32* @tests_passed, align 4
  br label %if.end1225

_Dynamic_check.failed1205:                        ; preds = %if.end1204
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1210:                        ; preds = %_Dynamic_check.succeeded1206
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1213:                        ; preds = %_Dynamic_check.succeeded1211
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1215:                        ; preds = %_Dynamic_check.succeeded1214
  call void @llvm.trap() #6
  unreachable

if.else1222:                                      ; preds = %_Dynamic_check.succeeded1216
  %call1223 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1340 = load i32, i32* @tests_failed, align 4
  %inc1224 = add nsw i32 %1340, 1
  store i32 %inc1224, i32* @tests_failed, align 4
  br label %if.end1225

if.end1225:                                       ; preds = %if.else1222, %if.then1219
  %1341 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %remove_test_arr, align 4
  %1342 = ptrtoint %Tstruct.json_array_t_t* %1341 to i32
  %1343 = call i8* @c_fetch_pointer_from_offset(i32 %1342)
  %1344 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1343)
  br i1 %1344, label %_Dynamic_check.succeeded1227, label %_Dynamic_check.failed1226

_Dynamic_check.succeeded1227:                     ; preds = %if.end1225
  %1345 = bitcast i8* %1343 to %Tstruct.json_array_t_t*
  %call1228 = call i32 @json_array_remove(%Tstruct.json_array_t_t* %1345, i64 2)
  %1346 = load i8*, i8** %string_1, align 4
  %1347 = ptrtoint i8* %1346 to i64
  %1348 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1347)
  %1349 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.305 to i64))
  %call1229 = call i8* @t_strcpy(i8* %1348, i8* %1349)
  %call1230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 689, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.303, i64 0, i64 0))
  %1350 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %remove_test_val, align 4
  %1351 = load i8*, i8** %string_1, align 4
  %1352 = ptrtoint i8* %1351 to i32
  %1353 = call i8* @c_fetch_pointer_from_offset(i32 %1352)
  %1354 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1353)
  br i1 %1354, label %_Dynamic_check.succeeded1232, label %_Dynamic_check.failed1231

_Dynamic_check.succeeded1232:                     ; preds = %_Dynamic_check.succeeded1227
  %call1233 = call %Tstruct.json_value_t_t* @json_parse_string(i8* %1353)
  %1355 = ptrtoint %Tstruct.json_value_t_t* %1350 to i32
  %1356 = call i8* @c_fetch_pointer_from_offset(i32 %1355)
  %1357 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1356)
  br i1 %1357, label %_Dynamic_check.succeeded1235, label %_Dynamic_check.failed1234

_Dynamic_check.succeeded1235:                     ; preds = %_Dynamic_check.succeeded1232
  %1358 = bitcast i8* %1356 to %Tstruct.json_value_t_t*
  %1359 = ptrtoint %Tstruct.json_value_t_t* %call1233 to i32
  %1360 = call i8* @c_fetch_pointer_from_offset(i32 %1359)
  %1361 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1360)
  br i1 %1361, label %_Dynamic_check.succeeded1237, label %_Dynamic_check.failed1236

_Dynamic_check.succeeded1237:                     ; preds = %_Dynamic_check.succeeded1235
  %1362 = bitcast i8* %1360 to %Tstruct.json_value_t_t*
  %call1238 = call i32 @json_value_equals(%Tstruct.json_value_t_t* %1358, %Tstruct.json_value_t_t* %1362)
  %tobool1239 = icmp ne i32 %call1238, 0
  br i1 %tobool1239, label %if.then1240, label %if.else1243

if.then1240:                                      ; preds = %_Dynamic_check.succeeded1237
  %call1241 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1363 = load i32, i32* @tests_passed, align 4
  %inc1242 = add nsw i32 %1363, 1
  store i32 %inc1242, i32* @tests_passed, align 4
  br label %if.end1246

_Dynamic_check.failed1226:                        ; preds = %if.end1225
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1231:                        ; preds = %_Dynamic_check.succeeded1227
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1234:                        ; preds = %_Dynamic_check.succeeded1232
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1236:                        ; preds = %_Dynamic_check.succeeded1235
  call void @llvm.trap() #6
  unreachable

if.else1243:                                      ; preds = %_Dynamic_check.succeeded1237
  %call1244 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1364 = load i32, i32* @tests_failed, align 4
  %inc1245 = add nsw i32 %1364, 1
  store i32 %inc1245, i32* @tests_failed, align 4
  br label %if.end1246

if.end1246:                                       ; preds = %if.else1243, %if.then1240
  %1365 = load i8*, i8** %string_1, align 4
  %1366 = ptrtoint i8* %1365 to i64
  %1367 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1366)
  %1368 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.306 to i64))
  %call1247 = call i8* @t_strcpy(i8* %1367, i8* %1368)
  %call1248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 693, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.307, i64 0, i64 0))
  %1369 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1370 = load i8*, i8** %string_1, align 4
  %1371 = load double, double* %zero, align 8
  %div = fdiv double 0.000000e+00, %1371
  %1372 = ptrtoint %Tstruct.json_object_t_t* %1369 to i32
  %1373 = call i8* @c_fetch_pointer_from_offset(i32 %1372)
  %1374 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1373)
  br i1 %1374, label %_Dynamic_check.succeeded1250, label %_Dynamic_check.failed1249

_Dynamic_check.succeeded1250:                     ; preds = %if.end1246
  %1375 = bitcast i8* %1373 to %Tstruct.json_object_t_t*
  %1376 = ptrtoint i8* %1370 to i32
  %1377 = call i8* @c_fetch_pointer_from_offset(i32 %1376)
  %1378 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1377)
  br i1 %1378, label %_Dynamic_check.succeeded1252, label %_Dynamic_check.failed1251

_Dynamic_check.succeeded1252:                     ; preds = %_Dynamic_check.succeeded1250
  %call1253 = call i32 @json_object_set_number(%Tstruct.json_object_t_t* %1375, i8* %1377, double %div)
  %cmp1254 = icmp eq i32 %call1253, -1
  br i1 %cmp1254, label %if.then1255, label %if.else1258

if.then1255:                                      ; preds = %_Dynamic_check.succeeded1252
  %call1256 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1379 = load i32, i32* @tests_passed, align 4
  %inc1257 = add nsw i32 %1379, 1
  store i32 %inc1257, i32* @tests_passed, align 4
  br label %if.end1261

_Dynamic_check.failed1249:                        ; preds = %if.end1246
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1251:                        ; preds = %_Dynamic_check.succeeded1250
  call void @llvm.trap() #6
  unreachable

if.else1258:                                      ; preds = %_Dynamic_check.succeeded1252
  %call1259 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1380 = load i32, i32* @tests_failed, align 4
  %inc1260 = add nsw i32 %1380, 1
  store i32 %inc1260, i32* @tests_failed, align 4
  br label %if.end1261

if.end1261:                                       ; preds = %if.else1258, %if.then1255
  %1381 = load i8*, i8** %string_1, align 4
  %1382 = ptrtoint i8* %1381 to i64
  %1383 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1382)
  %1384 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.306 to i64))
  %call1262 = call i8* @t_strcpy(i8* %1383, i8* %1384)
  %call1263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 695, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.308, i64 0, i64 0))
  %1385 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %obj, align 4
  %1386 = load i8*, i8** %string_1, align 4
  %1387 = load double, double* %zero, align 8
  %div1264 = fdiv double 1.000000e+00, %1387
  %1388 = ptrtoint %Tstruct.json_object_t_t* %1385 to i32
  %1389 = call i8* @c_fetch_pointer_from_offset(i32 %1388)
  %1390 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1389)
  br i1 %1390, label %_Dynamic_check.succeeded1266, label %_Dynamic_check.failed1265

_Dynamic_check.succeeded1266:                     ; preds = %if.end1261
  %1391 = bitcast i8* %1389 to %Tstruct.json_object_t_t*
  %1392 = ptrtoint i8* %1386 to i32
  %1393 = call i8* @c_fetch_pointer_from_offset(i32 %1392)
  %1394 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1393)
  br i1 %1394, label %_Dynamic_check.succeeded1268, label %_Dynamic_check.failed1267

_Dynamic_check.succeeded1268:                     ; preds = %_Dynamic_check.succeeded1266
  %call1269 = call i32 @json_object_set_number(%Tstruct.json_object_t_t* %1391, i8* %1393, double %div1264)
  %cmp1270 = icmp eq i32 %call1269, -1
  br i1 %cmp1270, label %if.then1271, label %if.else1274

if.then1271:                                      ; preds = %_Dynamic_check.succeeded1268
  %call1272 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1395 = load i32, i32* @tests_passed, align 4
  %inc1273 = add nsw i32 %1395, 1
  store i32 %inc1273, i32* @tests_passed, align 4
  br label %if.end1277

_Dynamic_check.failed1265:                        ; preds = %if.end1261
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1267:                        ; preds = %_Dynamic_check.succeeded1266
  call void @llvm.trap() #6
  unreachable

if.else1274:                                      ; preds = %_Dynamic_check.succeeded1268
  %call1275 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1396 = load i32, i32* @tests_failed, align 4
  %inc1276 = add nsw i32 %1396, 1
  store i32 %inc1276, i32* @tests_failed, align 4
  br label %if.end1277

if.end1277:                                       ; preds = %if.else1274, %if.then1271
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %Tstruct.json_value_t_t* @json_parse_file(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @json_value_equals(%Tstruct.json_value_t_t*, %Tstruct.json_value_t_t*) #1

; Function Attrs: tainted
declare dso_local %Tstruct.json_value_t_t* @json_parse_string(i8*) #4

declare dso_local i8* @json_serialize_to_string(%Tstruct.json_value_t_t*) #1

; Function Attrs: tainted
declare dso_local i8* @json_serialize_to_string_pretty(%Tstruct.json_value_t_t*) #4

; Function Attrs: tainted
declare dso_local void @json_value_free(%Tstruct.json_value_t_t*) #4

declare dso_local %Tstruct.json_value_t_t* @json_parse_file_with_comments(i8*, %Tstruct.json_value_t_t* (i8*, i64)*) #1

declare dso_local %Tstruct.json_value_t_t* @parse_value(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_suite_2(%Tstruct.json_value_t_t* %root_value) #3 {
entry:
  %root_value.addr = alloca %Tstruct.json_value_t_t*, align 4
  %root_object = alloca %Tstruct.json_object_t_t*, align 4
  %array = alloca %Tstruct.json_array_t_t*, align 4
  %array_value = alloca %Tstruct.json_value_t_t*, align 4
  %i = alloca i64, align 8
  %value_type = alloca i8*, align 4
  store %Tstruct.json_value_t_t* %root_value, %Tstruct.json_value_t_t** %root_value.addr, align 4
  store %Tstruct.json_object_t_t* null, %Tstruct.json_object_t_t** %root_object, align 4
  store %Tstruct.json_array_t_t* null, %Tstruct.json_array_t_t** %array, align 4
  store %Tstruct.json_value_t_t* null, %Tstruct.json_value_t_t** %array_value, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %0 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %tobool = icmp ne %Tstruct.json_value_t_t* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1 = load i32, i32* @tests_passed, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @tests_passed, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %2 = load i32, i32* @tests_failed, align 4
  %inc3 = add nsw i32 %2, 1
  store i32 %inc3, i32* @tests_failed, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i64 0, i64 0))
  %3 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %4 = ptrtoint %Tstruct.json_value_t_t* %3 to i32
  %5 = call i8* @c_fetch_pointer_from_offset(i32 %4)
  %6 = call i1 @c_isTaintedPointerToTaintedMem(i8* %5)
  br i1 %6, label %_Dynamic_check.succeeded, label %_Dynamic_check.failed

_Dynamic_check.succeeded:                         ; preds = %if.end
  %7 = bitcast i8* %5 to %Tstruct.json_value_t_t*
  %call5 = call i32 @json_value_get_type(%Tstruct.json_value_t_t* %7)
  %cmp = icmp eq i32 %call5, 4
  br i1 %cmp, label %if.then6, label %if.else9

if.then6:                                         ; preds = %_Dynamic_check.succeeded
  %call7 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %8 = load i32, i32* @tests_passed, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* @tests_passed, align 4
  br label %if.end12

_Dynamic_check.failed:                            ; preds = %if.end
  call void @llvm.trap() #6
  unreachable

if.else9:                                         ; preds = %_Dynamic_check.succeeded
  %call10 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %9 = load i32, i32* @tests_failed, align 4
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, i32* @tests_failed, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else9, %if.then6
  %10 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %11 = ptrtoint %Tstruct.json_value_t_t* %10 to i32
  %12 = call i8* @c_fetch_pointer_from_offset(i32 %11)
  %13 = call i1 @c_isTaintedPointerToTaintedMem(i8* %12)
  br i1 %13, label %_Dynamic_check.succeeded14, label %_Dynamic_check.failed13

_Dynamic_check.succeeded14:                       ; preds = %if.end12
  %14 = bitcast i8* %12 to %Tstruct.json_value_t_t*
  %call15 = call %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t* %14)
  store %Tstruct.json_object_t_t* %call15, %Tstruct.json_object_t_t** %root_object, align 4
  %call16 = call i8* @string_malloc(i64 100)
  store i8* %call16, i8** %value_type, align 4
  %15 = load i8*, i8** %value_type, align 4
  %16 = ptrtoint i8* %15 to i64
  %17 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %16)
  %18 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.17 to i64))
  %call17 = call i8* @t_strcpy(i8* %17, i8* %18)
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 155, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.18, i64 0, i64 0))
  %19 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %20 = load i8*, i8** %value_type, align 4
  %21 = ptrtoint %Tstruct.json_object_t_t* %19 to i32
  %22 = call i8* @c_fetch_pointer_from_offset(i32 %21)
  %23 = call i1 @c_isTaintedPointerToTaintedMem(i8* %22)
  br i1 %23, label %_Dynamic_check.succeeded20, label %_Dynamic_check.failed19

_Dynamic_check.succeeded20:                       ; preds = %_Dynamic_check.succeeded14
  %24 = bitcast i8* %22 to %Tstruct.json_object_t_t*
  %25 = ptrtoint i8* %20 to i32
  %26 = call i8* @c_fetch_pointer_from_offset(i32 %25)
  %27 = call i1 @c_isTaintedPointerToTaintedMem(i8* %26)
  br i1 %27, label %_Dynamic_check.succeeded22, label %_Dynamic_check.failed21

_Dynamic_check.succeeded22:                       ; preds = %_Dynamic_check.succeeded20
  %call23 = call i32 @json_object_has_value(%Tstruct.json_object_t_t* %24, i8* %26)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.else28

if.then25:                                        ; preds = %_Dynamic_check.succeeded22
  %call26 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* @tests_passed, align 4
  %inc27 = add nsw i32 %28, 1
  store i32 %inc27, i32* @tests_passed, align 4
  br label %if.end31

_Dynamic_check.failed13:                          ; preds = %if.end12
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed19:                          ; preds = %_Dynamic_check.succeeded14
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed21:                          ; preds = %_Dynamic_check.succeeded20
  call void @llvm.trap() #6
  unreachable

if.else28:                                        ; preds = %_Dynamic_check.succeeded22
  %call29 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %29 = load i32, i32* @tests_failed, align 4
  %inc30 = add nsw i32 %29, 1
  store i32 %inc30, i32* @tests_failed, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else28, %if.then25
  %30 = load i8*, i8** %value_type, align 4
  %31 = ptrtoint i8* %30 to i64
  %32 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %31)
  %33 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.19 to i64))
  %call32 = call i8* @t_strcpy(i8* %32, i8* %33)
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 157, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0))
  %34 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %35 = load i8*, i8** %value_type, align 4
  %36 = ptrtoint %Tstruct.json_object_t_t* %34 to i32
  %37 = call i8* @c_fetch_pointer_from_offset(i32 %36)
  %38 = call i1 @c_isTaintedPointerToTaintedMem(i8* %37)
  br i1 %38, label %_Dynamic_check.succeeded35, label %_Dynamic_check.failed34

_Dynamic_check.succeeded35:                       ; preds = %if.end31
  %39 = bitcast i8* %37 to %Tstruct.json_object_t_t*
  %40 = ptrtoint i8* %35 to i32
  %41 = call i8* @c_fetch_pointer_from_offset(i32 %40)
  %42 = call i1 @c_isTaintedPointerToTaintedMem(i8* %41)
  br i1 %42, label %_Dynamic_check.succeeded37, label %_Dynamic_check.failed36

_Dynamic_check.succeeded37:                       ; preds = %_Dynamic_check.succeeded35
  %call38 = call i32 @json_object_has_value(%Tstruct.json_object_t_t* %39, i8* %41)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.else43, label %if.then40

if.then40:                                        ; preds = %_Dynamic_check.succeeded37
  %call41 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* @tests_passed, align 4
  %inc42 = add nsw i32 %43, 1
  store i32 %inc42, i32* @tests_passed, align 4
  br label %if.end46

_Dynamic_check.failed34:                          ; preds = %if.end31
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed36:                          ; preds = %_Dynamic_check.succeeded35
  call void @llvm.trap() #6
  unreachable

if.else43:                                        ; preds = %_Dynamic_check.succeeded37
  %call44 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i32, i32* @tests_failed, align 4
  %inc45 = add nsw i32 %44, 1
  store i32 %inc45, i32* @tests_failed, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then40
  %45 = load i8*, i8** %value_type, align 4
  %46 = ptrtoint i8* %45 to i64
  %47 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %46)
  %48 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.21 to i64))
  %call47 = call i8* @t_strcpy(i8* %47, i8* %48)
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 159, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.22, i64 0, i64 0))
  %49 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %50 = load i8*, i8** %value_type, align 4
  %51 = ptrtoint %Tstruct.json_object_t_t* %49 to i32
  %52 = call i8* @c_fetch_pointer_from_offset(i32 %51)
  %53 = call i1 @c_isTaintedPointerToTaintedMem(i8* %52)
  br i1 %53, label %_Dynamic_check.succeeded50, label %_Dynamic_check.failed49

_Dynamic_check.succeeded50:                       ; preds = %if.end46
  %54 = bitcast i8* %52 to %Tstruct.json_object_t_t*
  %55 = ptrtoint i8* %50 to i32
  %56 = call i8* @c_fetch_pointer_from_offset(i32 %55)
  %57 = call i1 @c_isTaintedPointerToTaintedMem(i8* %56)
  br i1 %57, label %_Dynamic_check.succeeded52, label %_Dynamic_check.failed51

_Dynamic_check.succeeded52:                       ; preds = %_Dynamic_check.succeeded50
  %call53 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %54, i8* %56, i32 4)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then55, label %if.else58

if.then55:                                        ; preds = %_Dynamic_check.succeeded52
  %call56 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @tests_passed, align 4
  %inc57 = add nsw i32 %58, 1
  store i32 %inc57, i32* @tests_passed, align 4
  br label %if.end61

_Dynamic_check.failed49:                          ; preds = %if.end46
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed51:                          ; preds = %_Dynamic_check.succeeded50
  call void @llvm.trap() #6
  unreachable

if.else58:                                        ; preds = %_Dynamic_check.succeeded52
  %call59 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %59 = load i32, i32* @tests_failed, align 4
  %inc60 = add nsw i32 %59, 1
  store i32 %inc60, i32* @tests_failed, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.then55
  %60 = load i8*, i8** %value_type, align 4
  %61 = ptrtoint i8* %60 to i64
  %62 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %61)
  %63 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.23 to i64))
  %call62 = call i8* @t_strcpy(i8* %62, i8* %63)
  %call63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 161, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.24, i64 0, i64 0))
  %64 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %65 = load i8*, i8** %value_type, align 4
  %66 = ptrtoint %Tstruct.json_object_t_t* %64 to i32
  %67 = call i8* @c_fetch_pointer_from_offset(i32 %66)
  %68 = call i1 @c_isTaintedPointerToTaintedMem(i8* %67)
  br i1 %68, label %_Dynamic_check.succeeded65, label %_Dynamic_check.failed64

_Dynamic_check.succeeded65:                       ; preds = %if.end61
  %69 = bitcast i8* %67 to %Tstruct.json_object_t_t*
  %70 = ptrtoint i8* %65 to i32
  %71 = call i8* @c_fetch_pointer_from_offset(i32 %70)
  %72 = call i1 @c_isTaintedPointerToTaintedMem(i8* %71)
  br i1 %72, label %_Dynamic_check.succeeded67, label %_Dynamic_check.failed66

_Dynamic_check.succeeded67:                       ; preds = %_Dynamic_check.succeeded65
  %call68 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %69, i8* %71, i32 4)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.else73, label %if.then70

if.then70:                                        ; preds = %_Dynamic_check.succeeded67
  %call71 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @tests_passed, align 4
  %inc72 = add nsw i32 %73, 1
  store i32 %inc72, i32* @tests_passed, align 4
  br label %if.end76

_Dynamic_check.failed64:                          ; preds = %if.end61
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed66:                          ; preds = %_Dynamic_check.succeeded65
  call void @llvm.trap() #6
  unreachable

if.else73:                                        ; preds = %_Dynamic_check.succeeded67
  %call74 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %74 = load i32, i32* @tests_failed, align 4
  %inc75 = add nsw i32 %74, 1
  store i32 %inc75, i32* @tests_failed, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else73, %if.then70
  %75 = load i8*, i8** %value_type, align 4
  %76 = ptrtoint i8* %75 to i64
  %77 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %76)
  %78 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.23 to i64))
  %call77 = call i8* @t_strcpy(i8* %77, i8* %78)
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 163, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.25, i64 0, i64 0))
  %79 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %80 = load i8*, i8** %value_type, align 4
  %81 = ptrtoint %Tstruct.json_object_t_t* %79 to i32
  %82 = call i8* @c_fetch_pointer_from_offset(i32 %81)
  %83 = call i1 @c_isTaintedPointerToTaintedMem(i8* %82)
  br i1 %83, label %_Dynamic_check.succeeded80, label %_Dynamic_check.failed79

_Dynamic_check.succeeded80:                       ; preds = %if.end76
  %84 = bitcast i8* %82 to %Tstruct.json_object_t_t*
  %85 = ptrtoint i8* %80 to i32
  %86 = call i8* @c_fetch_pointer_from_offset(i32 %85)
  %87 = call i1 @c_isTaintedPointerToTaintedMem(i8* %86)
  br i1 %87, label %_Dynamic_check.succeeded82, label %_Dynamic_check.failed81

_Dynamic_check.succeeded82:                       ; preds = %_Dynamic_check.succeeded80
  %call83 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %84, i8* %86, i32 5)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then85, label %if.else88

if.then85:                                        ; preds = %_Dynamic_check.succeeded82
  %call86 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %88 = load i32, i32* @tests_passed, align 4
  %inc87 = add nsw i32 %88, 1
  store i32 %inc87, i32* @tests_passed, align 4
  br label %if.end91

_Dynamic_check.failed79:                          ; preds = %if.end76
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed81:                          ; preds = %_Dynamic_check.succeeded80
  call void @llvm.trap() #6
  unreachable

if.else88:                                        ; preds = %_Dynamic_check.succeeded82
  %call89 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %89 = load i32, i32* @tests_failed, align 4
  %inc90 = add nsw i32 %89, 1
  store i32 %inc90, i32* @tests_failed, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.else88, %if.then85
  %90 = load i8*, i8** %value_type, align 4
  %91 = ptrtoint i8* %90 to i64
  %92 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %91)
  %93 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.21 to i64))
  %call92 = call i8* @t_strcpy(i8* %92, i8* %93)
  %call93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 165, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i64 0, i64 0))
  %94 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %95 = load i8*, i8** %value_type, align 4
  %96 = ptrtoint %Tstruct.json_object_t_t* %94 to i32
  %97 = call i8* @c_fetch_pointer_from_offset(i32 %96)
  %98 = call i1 @c_isTaintedPointerToTaintedMem(i8* %97)
  br i1 %98, label %_Dynamic_check.succeeded95, label %_Dynamic_check.failed94

_Dynamic_check.succeeded95:                       ; preds = %if.end91
  %99 = bitcast i8* %97 to %Tstruct.json_object_t_t*
  %100 = ptrtoint i8* %95 to i32
  %101 = call i8* @c_fetch_pointer_from_offset(i32 %100)
  %102 = call i1 @c_isTaintedPointerToTaintedMem(i8* %101)
  br i1 %102, label %_Dynamic_check.succeeded97, label %_Dynamic_check.failed96

_Dynamic_check.succeeded97:                       ; preds = %_Dynamic_check.succeeded95
  %call98 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %99, i8* %101, i32 5)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.else103, label %if.then100

if.then100:                                       ; preds = %_Dynamic_check.succeeded97
  %call101 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i32, i32* @tests_passed, align 4
  %inc102 = add nsw i32 %103, 1
  store i32 %inc102, i32* @tests_passed, align 4
  br label %if.end106

_Dynamic_check.failed94:                          ; preds = %if.end91
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed96:                          ; preds = %_Dynamic_check.succeeded95
  call void @llvm.trap() #6
  unreachable

if.else103:                                       ; preds = %_Dynamic_check.succeeded97
  %call104 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %104 = load i32, i32* @tests_failed, align 4
  %inc105 = add nsw i32 %104, 1
  store i32 %inc105, i32* @tests_failed, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.else103, %if.then100
  %105 = load i8*, i8** %value_type, align 4
  %106 = ptrtoint i8* %105 to i64
  %107 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %106)
  %108 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.17 to i64))
  %call107 = call i8* @t_strcpy(i8* %107, i8* %108)
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 167, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.27, i64 0, i64 0))
  %109 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %110 = load i8*, i8** %value_type, align 4
  %111 = ptrtoint %Tstruct.json_object_t_t* %109 to i32
  %112 = call i8* @c_fetch_pointer_from_offset(i32 %111)
  %113 = call i1 @c_isTaintedPointerToTaintedMem(i8* %112)
  br i1 %113, label %_Dynamic_check.succeeded110, label %_Dynamic_check.failed109

_Dynamic_check.succeeded110:                      ; preds = %if.end106
  %114 = bitcast i8* %112 to %Tstruct.json_object_t_t*
  %115 = ptrtoint i8* %110 to i32
  %116 = call i8* @c_fetch_pointer_from_offset(i32 %115)
  %117 = call i1 @c_isTaintedPointerToTaintedMem(i8* %116)
  br i1 %117, label %_Dynamic_check.succeeded112, label %_Dynamic_check.failed111

_Dynamic_check.succeeded112:                      ; preds = %_Dynamic_check.succeeded110
  %call113 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %114, i8* %116, i32 2)
  %tobool114 = icmp ne i32 %call113, 0
  br i1 %tobool114, label %if.then115, label %if.else118

if.then115:                                       ; preds = %_Dynamic_check.succeeded112
  %call116 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @tests_passed, align 4
  %inc117 = add nsw i32 %118, 1
  store i32 %inc117, i32* @tests_passed, align 4
  br label %if.end121

_Dynamic_check.failed109:                         ; preds = %if.end106
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed111:                         ; preds = %_Dynamic_check.succeeded110
  call void @llvm.trap() #6
  unreachable

if.else118:                                       ; preds = %_Dynamic_check.succeeded112
  %call119 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %119 = load i32, i32* @tests_failed, align 4
  %inc120 = add nsw i32 %119, 1
  store i32 %inc120, i32* @tests_failed, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.else118, %if.then115
  %120 = load i8*, i8** %value_type, align 4
  %121 = ptrtoint i8* %120 to i64
  %122 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %121)
  %123 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.28 to i64))
  %call122 = call i8* @t_strcpy(i8* %122, i8* %123)
  %call123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 169, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i64 0, i64 0))
  %124 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %125 = load i8*, i8** %value_type, align 4
  %126 = ptrtoint %Tstruct.json_object_t_t* %124 to i32
  %127 = call i8* @c_fetch_pointer_from_offset(i32 %126)
  %128 = call i1 @c_isTaintedPointerToTaintedMem(i8* %127)
  br i1 %128, label %_Dynamic_check.succeeded125, label %_Dynamic_check.failed124

_Dynamic_check.succeeded125:                      ; preds = %if.end121
  %129 = bitcast i8* %127 to %Tstruct.json_object_t_t*
  %130 = ptrtoint i8* %125 to i32
  %131 = call i8* @c_fetch_pointer_from_offset(i32 %130)
  %132 = call i1 @c_isTaintedPointerToTaintedMem(i8* %131)
  br i1 %132, label %_Dynamic_check.succeeded127, label %_Dynamic_check.failed126

_Dynamic_check.succeeded127:                      ; preds = %_Dynamic_check.succeeded125
  %call128 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %129, i8* %131, i32 2)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %if.else133, label %if.then130

if.then130:                                       ; preds = %_Dynamic_check.succeeded127
  %call131 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* @tests_passed, align 4
  %inc132 = add nsw i32 %133, 1
  store i32 %inc132, i32* @tests_passed, align 4
  br label %if.end136

_Dynamic_check.failed124:                         ; preds = %if.end121
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed126:                         ; preds = %_Dynamic_check.succeeded125
  call void @llvm.trap() #6
  unreachable

if.else133:                                       ; preds = %_Dynamic_check.succeeded127
  %call134 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32, i32* @tests_failed, align 4
  %inc135 = add nsw i32 %134, 1
  store i32 %inc135, i32* @tests_failed, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.else133, %if.then130
  %135 = load i8*, i8** %value_type, align 4
  %136 = ptrtoint i8* %135 to i64
  %137 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %136)
  %138 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.28 to i64))
  %call137 = call i8* @t_strcpy(i8* %137, i8* %138)
  %call138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 171, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.30, i64 0, i64 0))
  %139 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %140 = load i8*, i8** %value_type, align 4
  %141 = ptrtoint %Tstruct.json_object_t_t* %139 to i32
  %142 = call i8* @c_fetch_pointer_from_offset(i32 %141)
  %143 = call i1 @c_isTaintedPointerToTaintedMem(i8* %142)
  br i1 %143, label %_Dynamic_check.succeeded140, label %_Dynamic_check.failed139

_Dynamic_check.succeeded140:                      ; preds = %if.end136
  %144 = bitcast i8* %142 to %Tstruct.json_object_t_t*
  %145 = ptrtoint i8* %140 to i32
  %146 = call i8* @c_fetch_pointer_from_offset(i32 %145)
  %147 = call i1 @c_isTaintedPointerToTaintedMem(i8* %146)
  br i1 %147, label %_Dynamic_check.succeeded142, label %_Dynamic_check.failed141

_Dynamic_check.succeeded142:                      ; preds = %_Dynamic_check.succeeded140
  %call143 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %144, i8* %146, i32 3)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then145, label %if.else148

if.then145:                                       ; preds = %_Dynamic_check.succeeded142
  %call146 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* @tests_passed, align 4
  %inc147 = add nsw i32 %148, 1
  store i32 %inc147, i32* @tests_passed, align 4
  br label %if.end151

_Dynamic_check.failed139:                         ; preds = %if.end136
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed141:                         ; preds = %_Dynamic_check.succeeded140
  call void @llvm.trap() #6
  unreachable

if.else148:                                       ; preds = %_Dynamic_check.succeeded142
  %call149 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %149 = load i32, i32* @tests_failed, align 4
  %inc150 = add nsw i32 %149, 1
  store i32 %inc150, i32* @tests_failed, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.else148, %if.then145
  %150 = load i8*, i8** %value_type, align 4
  %151 = ptrtoint i8* %150 to i64
  %152 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %151)
  %153 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.17 to i64))
  %call152 = call i8* @t_strcpy(i8* %152, i8* %153)
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 173, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i64 0, i64 0))
  %154 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %155 = load i8*, i8** %value_type, align 4
  %156 = ptrtoint %Tstruct.json_object_t_t* %154 to i32
  %157 = call i8* @c_fetch_pointer_from_offset(i32 %156)
  %158 = call i1 @c_isTaintedPointerToTaintedMem(i8* %157)
  br i1 %158, label %_Dynamic_check.succeeded155, label %_Dynamic_check.failed154

_Dynamic_check.succeeded155:                      ; preds = %if.end151
  %159 = bitcast i8* %157 to %Tstruct.json_object_t_t*
  %160 = ptrtoint i8* %155 to i32
  %161 = call i8* @c_fetch_pointer_from_offset(i32 %160)
  %162 = call i1 @c_isTaintedPointerToTaintedMem(i8* %161)
  br i1 %162, label %_Dynamic_check.succeeded157, label %_Dynamic_check.failed156

_Dynamic_check.succeeded157:                      ; preds = %_Dynamic_check.succeeded155
  %call158 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %159, i8* %161, i32 3)
  %tobool159 = icmp ne i32 %call158, 0
  br i1 %tobool159, label %if.else163, label %if.then160

if.then160:                                       ; preds = %_Dynamic_check.succeeded157
  %call161 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i32, i32* @tests_passed, align 4
  %inc162 = add nsw i32 %163, 1
  store i32 %inc162, i32* @tests_passed, align 4
  br label %if.end166

_Dynamic_check.failed154:                         ; preds = %if.end151
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed156:                         ; preds = %_Dynamic_check.succeeded155
  call void @llvm.trap() #6
  unreachable

if.else163:                                       ; preds = %_Dynamic_check.succeeded157
  %call164 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %164 = load i32, i32* @tests_failed, align 4
  %inc165 = add nsw i32 %164, 1
  store i32 %inc165, i32* @tests_failed, align 4
  br label %if.end166

if.end166:                                        ; preds = %if.else163, %if.then160
  %165 = load i8*, i8** %value_type, align 4
  %166 = ptrtoint i8* %165 to i64
  %167 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %166)
  %168 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.32 to i64))
  %call167 = call i8* @t_strcpy(i8* %167, i8* %168)
  %call168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 175, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.33, i64 0, i64 0))
  %169 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %170 = load i8*, i8** %value_type, align 4
  %171 = ptrtoint %Tstruct.json_object_t_t* %169 to i32
  %172 = call i8* @c_fetch_pointer_from_offset(i32 %171)
  %173 = call i1 @c_isTaintedPointerToTaintedMem(i8* %172)
  br i1 %173, label %_Dynamic_check.succeeded170, label %_Dynamic_check.failed169

_Dynamic_check.succeeded170:                      ; preds = %if.end166
  %174 = bitcast i8* %172 to %Tstruct.json_object_t_t*
  %175 = ptrtoint i8* %170 to i32
  %176 = call i8* @c_fetch_pointer_from_offset(i32 %175)
  %177 = call i1 @c_isTaintedPointerToTaintedMem(i8* %176)
  br i1 %177, label %_Dynamic_check.succeeded172, label %_Dynamic_check.failed171

_Dynamic_check.succeeded172:                      ; preds = %_Dynamic_check.succeeded170
  %call173 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %174, i8* %176, i32 6)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.else178

if.then175:                                       ; preds = %_Dynamic_check.succeeded172
  %call176 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %178 = load i32, i32* @tests_passed, align 4
  %inc177 = add nsw i32 %178, 1
  store i32 %inc177, i32* @tests_passed, align 4
  br label %if.end181

_Dynamic_check.failed169:                         ; preds = %if.end166
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed171:                         ; preds = %_Dynamic_check.succeeded170
  call void @llvm.trap() #6
  unreachable

if.else178:                                       ; preds = %_Dynamic_check.succeeded172
  %call179 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %179 = load i32, i32* @tests_failed, align 4
  %inc180 = add nsw i32 %179, 1
  store i32 %inc180, i32* @tests_failed, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  %180 = load i8*, i8** %value_type, align 4
  %181 = ptrtoint i8* %180 to i64
  %182 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %181)
  %183 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.28 to i64))
  %call182 = call i8* @t_strcpy(i8* %182, i8* %183)
  %call183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 177, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i64 0, i64 0))
  %184 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %185 = load i8*, i8** %value_type, align 4
  %186 = ptrtoint %Tstruct.json_object_t_t* %184 to i32
  %187 = call i8* @c_fetch_pointer_from_offset(i32 %186)
  %188 = call i1 @c_isTaintedPointerToTaintedMem(i8* %187)
  br i1 %188, label %_Dynamic_check.succeeded185, label %_Dynamic_check.failed184

_Dynamic_check.succeeded185:                      ; preds = %if.end181
  %189 = bitcast i8* %187 to %Tstruct.json_object_t_t*
  %190 = ptrtoint i8* %185 to i32
  %191 = call i8* @c_fetch_pointer_from_offset(i32 %190)
  %192 = call i1 @c_isTaintedPointerToTaintedMem(i8* %191)
  br i1 %192, label %_Dynamic_check.succeeded187, label %_Dynamic_check.failed186

_Dynamic_check.succeeded187:                      ; preds = %_Dynamic_check.succeeded185
  %call188 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %189, i8* %191, i32 6)
  %tobool189 = icmp ne i32 %call188, 0
  br i1 %tobool189, label %if.else193, label %if.then190

if.then190:                                       ; preds = %_Dynamic_check.succeeded187
  %call191 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %193 = load i32, i32* @tests_passed, align 4
  %inc192 = add nsw i32 %193, 1
  store i32 %inc192, i32* @tests_passed, align 4
  br label %if.end196

_Dynamic_check.failed184:                         ; preds = %if.end181
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed186:                         ; preds = %_Dynamic_check.succeeded185
  call void @llvm.trap() #6
  unreachable

if.else193:                                       ; preds = %_Dynamic_check.succeeded187
  %call194 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %194 = load i32, i32* @tests_failed, align 4
  %inc195 = add nsw i32 %194, 1
  store i32 %inc195, i32* @tests_failed, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.else193, %if.then190
  %195 = load i8*, i8** %value_type, align 4
  %196 = ptrtoint i8* %195 to i64
  %197 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %196)
  %198 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.35 to i64))
  %call197 = call i8* @t_strcpy(i8* %197, i8* %198)
  %call198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.36, i64 0, i64 0))
  %199 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %200 = load i8*, i8** %value_type, align 4
  %201 = ptrtoint %Tstruct.json_object_t_t* %199 to i32
  %202 = call i8* @c_fetch_pointer_from_offset(i32 %201)
  %203 = call i1 @c_isTaintedPointerToTaintedMem(i8* %202)
  br i1 %203, label %_Dynamic_check.succeeded200, label %_Dynamic_check.failed199

_Dynamic_check.succeeded200:                      ; preds = %if.end196
  %204 = bitcast i8* %202 to %Tstruct.json_object_t_t*
  %205 = ptrtoint i8* %200 to i32
  %206 = call i8* @c_fetch_pointer_from_offset(i32 %205)
  %207 = call i1 @c_isTaintedPointerToTaintedMem(i8* %206)
  br i1 %207, label %_Dynamic_check.succeeded202, label %_Dynamic_check.failed201

_Dynamic_check.succeeded202:                      ; preds = %_Dynamic_check.succeeded200
  %call203 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %204, i8* %206, i32 1)
  %tobool204 = icmp ne i32 %call203, 0
  br i1 %tobool204, label %if.then205, label %if.else208

if.then205:                                       ; preds = %_Dynamic_check.succeeded202
  %call206 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %208 = load i32, i32* @tests_passed, align 4
  %inc207 = add nsw i32 %208, 1
  store i32 %inc207, i32* @tests_passed, align 4
  br label %if.end211

_Dynamic_check.failed199:                         ; preds = %if.end196
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed201:                         ; preds = %_Dynamic_check.succeeded200
  call void @llvm.trap() #6
  unreachable

if.else208:                                       ; preds = %_Dynamic_check.succeeded202
  %call209 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %209 = load i32, i32* @tests_failed, align 4
  %inc210 = add nsw i32 %209, 1
  store i32 %inc210, i32* @tests_failed, align 4
  br label %if.end211

if.end211:                                        ; preds = %if.else208, %if.then205
  %210 = load i8*, i8** %value_type, align 4
  %211 = ptrtoint i8* %210 to i64
  %212 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %211)
  %213 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.21 to i64))
  %call212 = call i8* @t_strcpy(i8* %212, i8* %213)
  %call213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 181, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.37, i64 0, i64 0))
  %214 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %215 = load i8*, i8** %value_type, align 4
  %216 = ptrtoint %Tstruct.json_object_t_t* %214 to i32
  %217 = call i8* @c_fetch_pointer_from_offset(i32 %216)
  %218 = call i1 @c_isTaintedPointerToTaintedMem(i8* %217)
  br i1 %218, label %_Dynamic_check.succeeded215, label %_Dynamic_check.failed214

_Dynamic_check.succeeded215:                      ; preds = %if.end211
  %219 = bitcast i8* %217 to %Tstruct.json_object_t_t*
  %220 = ptrtoint i8* %215 to i32
  %221 = call i8* @c_fetch_pointer_from_offset(i32 %220)
  %222 = call i1 @c_isTaintedPointerToTaintedMem(i8* %221)
  br i1 %222, label %_Dynamic_check.succeeded217, label %_Dynamic_check.failed216

_Dynamic_check.succeeded217:                      ; preds = %_Dynamic_check.succeeded215
  %call218 = call i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t* %219, i8* %221, i32 1)
  %tobool219 = icmp ne i32 %call218, 0
  br i1 %tobool219, label %if.else223, label %if.then220

if.then220:                                       ; preds = %_Dynamic_check.succeeded217
  %call221 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %223 = load i32, i32* @tests_passed, align 4
  %inc222 = add nsw i32 %223, 1
  store i32 %inc222, i32* @tests_passed, align 4
  br label %if.end226

_Dynamic_check.failed214:                         ; preds = %if.end211
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed216:                         ; preds = %_Dynamic_check.succeeded215
  call void @llvm.trap() #6
  unreachable

if.else223:                                       ; preds = %_Dynamic_check.succeeded217
  %call224 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %224 = load i32, i32* @tests_failed, align 4
  %inc225 = add nsw i32 %224, 1
  store i32 %inc225, i32* @tests_failed, align 4
  br label %if.end226

if.end226:                                        ; preds = %if.else223, %if.then220
  %225 = load i8*, i8** %value_type, align 4
  %226 = ptrtoint i8* %225 to i64
  %227 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %226)
  %228 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.38 to i64))
  %call227 = call i8* @t_strcpy(i8* %227, i8* %228)
  %call228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 184, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0))
  %229 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %230 = load i8*, i8** %value_type, align 4
  %231 = ptrtoint %Tstruct.json_object_t_t* %229 to i32
  %232 = call i8* @c_fetch_pointer_from_offset(i32 %231)
  %233 = call i1 @c_isTaintedPointerToTaintedMem(i8* %232)
  br i1 %233, label %_Dynamic_check.succeeded230, label %_Dynamic_check.failed229

_Dynamic_check.succeeded230:                      ; preds = %if.end226
  %234 = bitcast i8* %232 to %Tstruct.json_object_t_t*
  %235 = ptrtoint i8* %230 to i32
  %236 = call i8* @c_fetch_pointer_from_offset(i32 %235)
  %237 = call i1 @c_isTaintedPointerToTaintedMem(i8* %236)
  br i1 %237, label %_Dynamic_check.succeeded232, label %_Dynamic_check.failed231

_Dynamic_check.succeeded232:                      ; preds = %_Dynamic_check.succeeded230
  %call233 = call i32 @json_object_dothas_value(%Tstruct.json_object_t_t* %234, i8* %236)
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %if.then235, label %if.else238

if.then235:                                       ; preds = %_Dynamic_check.succeeded232
  %call236 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %238 = load i32, i32* @tests_passed, align 4
  %inc237 = add nsw i32 %238, 1
  store i32 %inc237, i32* @tests_passed, align 4
  br label %if.end241

_Dynamic_check.failed229:                         ; preds = %if.end226
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed231:                         ; preds = %_Dynamic_check.succeeded230
  call void @llvm.trap() #6
  unreachable

if.else238:                                       ; preds = %_Dynamic_check.succeeded232
  %call239 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %239 = load i32, i32* @tests_failed, align 4
  %inc240 = add nsw i32 %239, 1
  store i32 %inc240, i32* @tests_failed, align 4
  br label %if.end241

if.end241:                                        ; preds = %if.else238, %if.then235
  %240 = load i8*, i8** %value_type, align 4
  %241 = ptrtoint i8* %240 to i64
  %242 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %241)
  %243 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.40 to i64))
  %call242 = call i8* @t_strcpy(i8* %242, i8* %243)
  %call243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0))
  %244 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %245 = load i8*, i8** %value_type, align 4
  %246 = ptrtoint %Tstruct.json_object_t_t* %244 to i32
  %247 = call i8* @c_fetch_pointer_from_offset(i32 %246)
  %248 = call i1 @c_isTaintedPointerToTaintedMem(i8* %247)
  br i1 %248, label %_Dynamic_check.succeeded245, label %_Dynamic_check.failed244

_Dynamic_check.succeeded245:                      ; preds = %if.end241
  %249 = bitcast i8* %247 to %Tstruct.json_object_t_t*
  %250 = ptrtoint i8* %245 to i32
  %251 = call i8* @c_fetch_pointer_from_offset(i32 %250)
  %252 = call i1 @c_isTaintedPointerToTaintedMem(i8* %251)
  br i1 %252, label %_Dynamic_check.succeeded247, label %_Dynamic_check.failed246

_Dynamic_check.succeeded247:                      ; preds = %_Dynamic_check.succeeded245
  %call248 = call i32 @json_object_dothas_value(%Tstruct.json_object_t_t* %249, i8* %251)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.else253, label %if.then250

if.then250:                                       ; preds = %_Dynamic_check.succeeded247
  %call251 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %253 = load i32, i32* @tests_passed, align 4
  %inc252 = add nsw i32 %253, 1
  store i32 %inc252, i32* @tests_passed, align 4
  br label %if.end256

_Dynamic_check.failed244:                         ; preds = %if.end241
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed246:                         ; preds = %_Dynamic_check.succeeded245
  call void @llvm.trap() #6
  unreachable

if.else253:                                       ; preds = %_Dynamic_check.succeeded247
  %call254 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %254 = load i32, i32* @tests_failed, align 4
  %inc255 = add nsw i32 %254, 1
  store i32 %inc255, i32* @tests_failed, align 4
  br label %if.end256

if.end256:                                        ; preds = %if.else253, %if.then250
  %255 = load i8*, i8** %value_type, align 4
  %256 = ptrtoint i8* %255 to i64
  %257 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %256)
  %258 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.42 to i64))
  %call257 = call i8* @t_strcpy(i8* %257, i8* %258)
  %call258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 188, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.43, i64 0, i64 0))
  %259 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %260 = load i8*, i8** %value_type, align 4
  %261 = ptrtoint %Tstruct.json_object_t_t* %259 to i32
  %262 = call i8* @c_fetch_pointer_from_offset(i32 %261)
  %263 = call i1 @c_isTaintedPointerToTaintedMem(i8* %262)
  br i1 %263, label %_Dynamic_check.succeeded260, label %_Dynamic_check.failed259

_Dynamic_check.succeeded260:                      ; preds = %if.end256
  %264 = bitcast i8* %262 to %Tstruct.json_object_t_t*
  %265 = ptrtoint i8* %260 to i32
  %266 = call i8* @c_fetch_pointer_from_offset(i32 %265)
  %267 = call i1 @c_isTaintedPointerToTaintedMem(i8* %266)
  br i1 %267, label %_Dynamic_check.succeeded262, label %_Dynamic_check.failed261

_Dynamic_check.succeeded262:                      ; preds = %_Dynamic_check.succeeded260
  %call263 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %264, i8* %266, i32 4)
  %tobool264 = icmp ne i32 %call263, 0
  br i1 %tobool264, label %if.then265, label %if.else268

if.then265:                                       ; preds = %_Dynamic_check.succeeded262
  %call266 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %268 = load i32, i32* @tests_passed, align 4
  %inc267 = add nsw i32 %268, 1
  store i32 %inc267, i32* @tests_passed, align 4
  br label %if.end271

_Dynamic_check.failed259:                         ; preds = %if.end256
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed261:                         ; preds = %_Dynamic_check.succeeded260
  call void @llvm.trap() #6
  unreachable

if.else268:                                       ; preds = %_Dynamic_check.succeeded262
  %call269 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %269 = load i32, i32* @tests_failed, align 4
  %inc270 = add nsw i32 %269, 1
  store i32 %inc270, i32* @tests_failed, align 4
  br label %if.end271

if.end271:                                        ; preds = %if.else268, %if.then265
  %270 = load i8*, i8** %value_type, align 4
  %271 = ptrtoint i8* %270 to i64
  %272 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %271)
  %273 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.38 to i64))
  %call272 = call i8* @t_strcpy(i8* %272, i8* %273)
  %call273 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.44, i64 0, i64 0))
  %274 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %275 = load i8*, i8** %value_type, align 4
  %276 = ptrtoint %Tstruct.json_object_t_t* %274 to i32
  %277 = call i8* @c_fetch_pointer_from_offset(i32 %276)
  %278 = call i1 @c_isTaintedPointerToTaintedMem(i8* %277)
  br i1 %278, label %_Dynamic_check.succeeded275, label %_Dynamic_check.failed274

_Dynamic_check.succeeded275:                      ; preds = %if.end271
  %279 = bitcast i8* %277 to %Tstruct.json_object_t_t*
  %280 = ptrtoint i8* %275 to i32
  %281 = call i8* @c_fetch_pointer_from_offset(i32 %280)
  %282 = call i1 @c_isTaintedPointerToTaintedMem(i8* %281)
  br i1 %282, label %_Dynamic_check.succeeded277, label %_Dynamic_check.failed276

_Dynamic_check.succeeded277:                      ; preds = %_Dynamic_check.succeeded275
  %call278 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %279, i8* %281, i32 4)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.else283, label %if.then280

if.then280:                                       ; preds = %_Dynamic_check.succeeded277
  %call281 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %283 = load i32, i32* @tests_passed, align 4
  %inc282 = add nsw i32 %283, 1
  store i32 %inc282, i32* @tests_passed, align 4
  br label %if.end286

_Dynamic_check.failed274:                         ; preds = %if.end271
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed276:                         ; preds = %_Dynamic_check.succeeded275
  call void @llvm.trap() #6
  unreachable

if.else283:                                       ; preds = %_Dynamic_check.succeeded277
  %call284 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %284 = load i32, i32* @tests_failed, align 4
  %inc285 = add nsw i32 %284, 1
  store i32 %inc285, i32* @tests_failed, align 4
  br label %if.end286

if.end286:                                        ; preds = %if.else283, %if.then280
  %285 = load i8*, i8** %value_type, align 4
  %286 = ptrtoint i8* %285 to i64
  %287 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %286)
  %288 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.38 to i64))
  %call287 = call i8* @t_strcpy(i8* %287, i8* %288)
  %call288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i64 0, i64 0))
  %289 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %290 = load i8*, i8** %value_type, align 4
  %291 = ptrtoint %Tstruct.json_object_t_t* %289 to i32
  %292 = call i8* @c_fetch_pointer_from_offset(i32 %291)
  %293 = call i1 @c_isTaintedPointerToTaintedMem(i8* %292)
  br i1 %293, label %_Dynamic_check.succeeded290, label %_Dynamic_check.failed289

_Dynamic_check.succeeded290:                      ; preds = %if.end286
  %294 = bitcast i8* %292 to %Tstruct.json_object_t_t*
  %295 = ptrtoint i8* %290 to i32
  %296 = call i8* @c_fetch_pointer_from_offset(i32 %295)
  %297 = call i1 @c_isTaintedPointerToTaintedMem(i8* %296)
  br i1 %297, label %_Dynamic_check.succeeded292, label %_Dynamic_check.failed291

_Dynamic_check.succeeded292:                      ; preds = %_Dynamic_check.succeeded290
  %call293 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %294, i8* %296, i32 5)
  %tobool294 = icmp ne i32 %call293, 0
  br i1 %tobool294, label %if.then295, label %if.else298

if.then295:                                       ; preds = %_Dynamic_check.succeeded292
  %call296 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %298 = load i32, i32* @tests_passed, align 4
  %inc297 = add nsw i32 %298, 1
  store i32 %inc297, i32* @tests_passed, align 4
  br label %if.end301

_Dynamic_check.failed289:                         ; preds = %if.end286
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed291:                         ; preds = %_Dynamic_check.succeeded290
  call void @llvm.trap() #6
  unreachable

if.else298:                                       ; preds = %_Dynamic_check.succeeded292
  %call299 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %299 = load i32, i32* @tests_failed, align 4
  %inc300 = add nsw i32 %299, 1
  store i32 %inc300, i32* @tests_failed, align 4
  br label %if.end301

if.end301:                                        ; preds = %if.else298, %if.then295
  %300 = load i8*, i8** %value_type, align 4
  %301 = ptrtoint i8* %300 to i64
  %302 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %301)
  %303 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.42 to i64))
  %call302 = call i8* @t_strcpy(i8* %302, i8* %303)
  %call303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 194, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.46, i64 0, i64 0))
  %304 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %305 = load i8*, i8** %value_type, align 4
  %306 = ptrtoint %Tstruct.json_object_t_t* %304 to i32
  %307 = call i8* @c_fetch_pointer_from_offset(i32 %306)
  %308 = call i1 @c_isTaintedPointerToTaintedMem(i8* %307)
  br i1 %308, label %_Dynamic_check.succeeded305, label %_Dynamic_check.failed304

_Dynamic_check.succeeded305:                      ; preds = %if.end301
  %309 = bitcast i8* %307 to %Tstruct.json_object_t_t*
  %310 = ptrtoint i8* %305 to i32
  %311 = call i8* @c_fetch_pointer_from_offset(i32 %310)
  %312 = call i1 @c_isTaintedPointerToTaintedMem(i8* %311)
  br i1 %312, label %_Dynamic_check.succeeded307, label %_Dynamic_check.failed306

_Dynamic_check.succeeded307:                      ; preds = %_Dynamic_check.succeeded305
  %call308 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %309, i8* %311, i32 5)
  %tobool309 = icmp ne i32 %call308, 0
  br i1 %tobool309, label %if.else313, label %if.then310

if.then310:                                       ; preds = %_Dynamic_check.succeeded307
  %call311 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %313 = load i32, i32* @tests_passed, align 4
  %inc312 = add nsw i32 %313, 1
  store i32 %inc312, i32* @tests_passed, align 4
  br label %if.end316

_Dynamic_check.failed304:                         ; preds = %if.end301
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed306:                         ; preds = %_Dynamic_check.succeeded305
  call void @llvm.trap() #6
  unreachable

if.else313:                                       ; preds = %_Dynamic_check.succeeded307
  %call314 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %314 = load i32, i32* @tests_failed, align 4
  %inc315 = add nsw i32 %314, 1
  store i32 %inc315, i32* @tests_failed, align 4
  br label %if.end316

if.end316:                                        ; preds = %if.else313, %if.then310
  %315 = load i8*, i8** %value_type, align 4
  %316 = ptrtoint i8* %315 to i64
  %317 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %316)
  %318 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.47 to i64))
  %call317 = call i8* @t_strcpy(i8* %317, i8* %318)
  %call318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 196, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.48, i64 0, i64 0))
  %319 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %320 = load i8*, i8** %value_type, align 4
  %321 = ptrtoint %Tstruct.json_object_t_t* %319 to i32
  %322 = call i8* @c_fetch_pointer_from_offset(i32 %321)
  %323 = call i1 @c_isTaintedPointerToTaintedMem(i8* %322)
  br i1 %323, label %_Dynamic_check.succeeded320, label %_Dynamic_check.failed319

_Dynamic_check.succeeded320:                      ; preds = %if.end316
  %324 = bitcast i8* %322 to %Tstruct.json_object_t_t*
  %325 = ptrtoint i8* %320 to i32
  %326 = call i8* @c_fetch_pointer_from_offset(i32 %325)
  %327 = call i1 @c_isTaintedPointerToTaintedMem(i8* %326)
  br i1 %327, label %_Dynamic_check.succeeded322, label %_Dynamic_check.failed321

_Dynamic_check.succeeded322:                      ; preds = %_Dynamic_check.succeeded320
  %call323 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %324, i8* %326, i32 2)
  %tobool324 = icmp ne i32 %call323, 0
  br i1 %tobool324, label %if.then325, label %if.else328

if.then325:                                       ; preds = %_Dynamic_check.succeeded322
  %call326 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %328 = load i32, i32* @tests_passed, align 4
  %inc327 = add nsw i32 %328, 1
  store i32 %inc327, i32* @tests_passed, align 4
  br label %if.end331

_Dynamic_check.failed319:                         ; preds = %if.end316
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed321:                         ; preds = %_Dynamic_check.succeeded320
  call void @llvm.trap() #6
  unreachable

if.else328:                                       ; preds = %_Dynamic_check.succeeded322
  %call329 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %329 = load i32, i32* @tests_failed, align 4
  %inc330 = add nsw i32 %329, 1
  store i32 %inc330, i32* @tests_failed, align 4
  br label %if.end331

if.end331:                                        ; preds = %if.else328, %if.then325
  %330 = load i8*, i8** %value_type, align 4
  %331 = ptrtoint i8* %330 to i64
  %332 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %331)
  %333 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.49 to i64))
  %call332 = call i8* @t_strcpy(i8* %332, i8* %333)
  %call333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0))
  %334 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %335 = load i8*, i8** %value_type, align 4
  %336 = ptrtoint %Tstruct.json_object_t_t* %334 to i32
  %337 = call i8* @c_fetch_pointer_from_offset(i32 %336)
  %338 = call i1 @c_isTaintedPointerToTaintedMem(i8* %337)
  br i1 %338, label %_Dynamic_check.succeeded335, label %_Dynamic_check.failed334

_Dynamic_check.succeeded335:                      ; preds = %if.end331
  %339 = bitcast i8* %337 to %Tstruct.json_object_t_t*
  %340 = ptrtoint i8* %335 to i32
  %341 = call i8* @c_fetch_pointer_from_offset(i32 %340)
  %342 = call i1 @c_isTaintedPointerToTaintedMem(i8* %341)
  br i1 %342, label %_Dynamic_check.succeeded337, label %_Dynamic_check.failed336

_Dynamic_check.succeeded337:                      ; preds = %_Dynamic_check.succeeded335
  %call338 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %339, i8* %341, i32 2)
  %tobool339 = icmp ne i32 %call338, 0
  br i1 %tobool339, label %if.else343, label %if.then340

if.then340:                                       ; preds = %_Dynamic_check.succeeded337
  %call341 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %343 = load i32, i32* @tests_passed, align 4
  %inc342 = add nsw i32 %343, 1
  store i32 %inc342, i32* @tests_passed, align 4
  br label %if.end346

_Dynamic_check.failed334:                         ; preds = %if.end331
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed336:                         ; preds = %_Dynamic_check.succeeded335
  call void @llvm.trap() #6
  unreachable

if.else343:                                       ; preds = %_Dynamic_check.succeeded337
  %call344 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %344 = load i32, i32* @tests_failed, align 4
  %inc345 = add nsw i32 %344, 1
  store i32 %inc345, i32* @tests_failed, align 4
  br label %if.end346

if.end346:                                        ; preds = %if.else343, %if.then340
  %345 = load i8*, i8** %value_type, align 4
  %346 = ptrtoint i8* %345 to i64
  %347 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %346)
  %348 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.49 to i64))
  %call347 = call i8* @t_strcpy(i8* %347, i8* %348)
  %call348 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 200, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.51, i64 0, i64 0))
  %349 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %350 = load i8*, i8** %value_type, align 4
  %351 = ptrtoint %Tstruct.json_object_t_t* %349 to i32
  %352 = call i8* @c_fetch_pointer_from_offset(i32 %351)
  %353 = call i1 @c_isTaintedPointerToTaintedMem(i8* %352)
  br i1 %353, label %_Dynamic_check.succeeded350, label %_Dynamic_check.failed349

_Dynamic_check.succeeded350:                      ; preds = %if.end346
  %354 = bitcast i8* %352 to %Tstruct.json_object_t_t*
  %355 = ptrtoint i8* %350 to i32
  %356 = call i8* @c_fetch_pointer_from_offset(i32 %355)
  %357 = call i1 @c_isTaintedPointerToTaintedMem(i8* %356)
  br i1 %357, label %_Dynamic_check.succeeded352, label %_Dynamic_check.failed351

_Dynamic_check.succeeded352:                      ; preds = %_Dynamic_check.succeeded350
  %call353 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %354, i8* %356, i32 3)
  %tobool354 = icmp ne i32 %call353, 0
  br i1 %tobool354, label %if.then355, label %if.else358

if.then355:                                       ; preds = %_Dynamic_check.succeeded352
  %call356 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %358 = load i32, i32* @tests_passed, align 4
  %inc357 = add nsw i32 %358, 1
  store i32 %inc357, i32* @tests_passed, align 4
  br label %if.end361

_Dynamic_check.failed349:                         ; preds = %if.end346
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed351:                         ; preds = %_Dynamic_check.succeeded350
  call void @llvm.trap() #6
  unreachable

if.else358:                                       ; preds = %_Dynamic_check.succeeded352
  %call359 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %359 = load i32, i32* @tests_failed, align 4
  %inc360 = add nsw i32 %359, 1
  store i32 %inc360, i32* @tests_failed, align 4
  br label %if.end361

if.end361:                                        ; preds = %if.else358, %if.then355
  %360 = load i8*, i8** %value_type, align 4
  %361 = ptrtoint i8* %360 to i64
  %362 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %361)
  %363 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([24 x i8]* @.str.52 to i64))
  %call362 = call i8* @t_strcpy(i8* %362, i8* %363)
  %call363 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 202, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.53, i64 0, i64 0))
  %364 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %365 = load i8*, i8** %value_type, align 4
  %366 = ptrtoint %Tstruct.json_object_t_t* %364 to i32
  %367 = call i8* @c_fetch_pointer_from_offset(i32 %366)
  %368 = call i1 @c_isTaintedPointerToTaintedMem(i8* %367)
  br i1 %368, label %_Dynamic_check.succeeded365, label %_Dynamic_check.failed364

_Dynamic_check.succeeded365:                      ; preds = %if.end361
  %369 = bitcast i8* %367 to %Tstruct.json_object_t_t*
  %370 = ptrtoint i8* %365 to i32
  %371 = call i8* @c_fetch_pointer_from_offset(i32 %370)
  %372 = call i1 @c_isTaintedPointerToTaintedMem(i8* %371)
  br i1 %372, label %_Dynamic_check.succeeded367, label %_Dynamic_check.failed366

_Dynamic_check.succeeded367:                      ; preds = %_Dynamic_check.succeeded365
  %call368 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %369, i8* %371, i32 3)
  %tobool369 = icmp ne i32 %call368, 0
  br i1 %tobool369, label %if.else373, label %if.then370

if.then370:                                       ; preds = %_Dynamic_check.succeeded367
  %call371 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %373 = load i32, i32* @tests_passed, align 4
  %inc372 = add nsw i32 %373, 1
  store i32 %inc372, i32* @tests_passed, align 4
  br label %if.end376

_Dynamic_check.failed364:                         ; preds = %if.end361
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed366:                         ; preds = %_Dynamic_check.succeeded365
  call void @llvm.trap() #6
  unreachable

if.else373:                                       ; preds = %_Dynamic_check.succeeded367
  %call374 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %374 = load i32, i32* @tests_failed, align 4
  %inc375 = add nsw i32 %374, 1
  store i32 %inc375, i32* @tests_failed, align 4
  br label %if.end376

if.end376:                                        ; preds = %if.else373, %if.then370
  %375 = load i8*, i8** %value_type, align 4
  %376 = ptrtoint i8* %375 to i64
  %377 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %376)
  %378 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.54 to i64))
  %call377 = call i8* @t_strcpy(i8* %377, i8* %378)
  %call378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 204, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.55, i64 0, i64 0))
  %379 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %380 = load i8*, i8** %value_type, align 4
  %381 = ptrtoint %Tstruct.json_object_t_t* %379 to i32
  %382 = call i8* @c_fetch_pointer_from_offset(i32 %381)
  %383 = call i1 @c_isTaintedPointerToTaintedMem(i8* %382)
  br i1 %383, label %_Dynamic_check.succeeded380, label %_Dynamic_check.failed379

_Dynamic_check.succeeded380:                      ; preds = %if.end376
  %384 = bitcast i8* %382 to %Tstruct.json_object_t_t*
  %385 = ptrtoint i8* %380 to i32
  %386 = call i8* @c_fetch_pointer_from_offset(i32 %385)
  %387 = call i1 @c_isTaintedPointerToTaintedMem(i8* %386)
  br i1 %387, label %_Dynamic_check.succeeded382, label %_Dynamic_check.failed381

_Dynamic_check.succeeded382:                      ; preds = %_Dynamic_check.succeeded380
  %call383 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %384, i8* %386, i32 6)
  %tobool384 = icmp ne i32 %call383, 0
  br i1 %tobool384, label %if.then385, label %if.else388

if.then385:                                       ; preds = %_Dynamic_check.succeeded382
  %call386 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %388 = load i32, i32* @tests_passed, align 4
  %inc387 = add nsw i32 %388, 1
  store i32 %inc387, i32* @tests_passed, align 4
  br label %if.end391

_Dynamic_check.failed379:                         ; preds = %if.end376
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed381:                         ; preds = %_Dynamic_check.succeeded380
  call void @llvm.trap() #6
  unreachable

if.else388:                                       ; preds = %_Dynamic_check.succeeded382
  %call389 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %389 = load i32, i32* @tests_failed, align 4
  %inc390 = add nsw i32 %389, 1
  store i32 %inc390, i32* @tests_failed, align 4
  br label %if.end391

if.end391:                                        ; preds = %if.else388, %if.then385
  %390 = load i8*, i8** %value_type, align 4
  %391 = ptrtoint i8* %390 to i64
  %392 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %391)
  %393 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.49 to i64))
  %call392 = call i8* @t_strcpy(i8* %392, i8* %393)
  %call393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 206, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.56, i64 0, i64 0))
  %394 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %395 = load i8*, i8** %value_type, align 4
  %396 = ptrtoint %Tstruct.json_object_t_t* %394 to i32
  %397 = call i8* @c_fetch_pointer_from_offset(i32 %396)
  %398 = call i1 @c_isTaintedPointerToTaintedMem(i8* %397)
  br i1 %398, label %_Dynamic_check.succeeded395, label %_Dynamic_check.failed394

_Dynamic_check.succeeded395:                      ; preds = %if.end391
  %399 = bitcast i8* %397 to %Tstruct.json_object_t_t*
  %400 = ptrtoint i8* %395 to i32
  %401 = call i8* @c_fetch_pointer_from_offset(i32 %400)
  %402 = call i1 @c_isTaintedPointerToTaintedMem(i8* %401)
  br i1 %402, label %_Dynamic_check.succeeded397, label %_Dynamic_check.failed396

_Dynamic_check.succeeded397:                      ; preds = %_Dynamic_check.succeeded395
  %call398 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %399, i8* %401, i32 6)
  %tobool399 = icmp ne i32 %call398, 0
  br i1 %tobool399, label %if.else403, label %if.then400

if.then400:                                       ; preds = %_Dynamic_check.succeeded397
  %call401 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %403 = load i32, i32* @tests_passed, align 4
  %inc402 = add nsw i32 %403, 1
  store i32 %inc402, i32* @tests_passed, align 4
  br label %if.end406

_Dynamic_check.failed394:                         ; preds = %if.end391
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed396:                         ; preds = %_Dynamic_check.succeeded395
  call void @llvm.trap() #6
  unreachable

if.else403:                                       ; preds = %_Dynamic_check.succeeded397
  %call404 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %404 = load i32, i32* @tests_failed, align 4
  %inc405 = add nsw i32 %404, 1
  store i32 %inc405, i32* @tests_failed, align 4
  br label %if.end406

if.end406:                                        ; preds = %if.else403, %if.then400
  %405 = load i8*, i8** %value_type, align 4
  %406 = ptrtoint i8* %405 to i64
  %407 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %406)
  %408 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.57 to i64))
  %call407 = call i8* @t_strcpy(i8* %407, i8* %408)
  %call408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 208, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.58, i64 0, i64 0))
  %409 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %410 = load i8*, i8** %value_type, align 4
  %411 = ptrtoint %Tstruct.json_object_t_t* %409 to i32
  %412 = call i8* @c_fetch_pointer_from_offset(i32 %411)
  %413 = call i1 @c_isTaintedPointerToTaintedMem(i8* %412)
  br i1 %413, label %_Dynamic_check.succeeded410, label %_Dynamic_check.failed409

_Dynamic_check.succeeded410:                      ; preds = %if.end406
  %414 = bitcast i8* %412 to %Tstruct.json_object_t_t*
  %415 = ptrtoint i8* %410 to i32
  %416 = call i8* @c_fetch_pointer_from_offset(i32 %415)
  %417 = call i1 @c_isTaintedPointerToTaintedMem(i8* %416)
  br i1 %417, label %_Dynamic_check.succeeded412, label %_Dynamic_check.failed411

_Dynamic_check.succeeded412:                      ; preds = %_Dynamic_check.succeeded410
  %call413 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %414, i8* %416, i32 1)
  %tobool414 = icmp ne i32 %call413, 0
  br i1 %tobool414, label %if.then415, label %if.else418

if.then415:                                       ; preds = %_Dynamic_check.succeeded412
  %call416 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %418 = load i32, i32* @tests_passed, align 4
  %inc417 = add nsw i32 %418, 1
  store i32 %inc417, i32* @tests_passed, align 4
  br label %if.end421

_Dynamic_check.failed409:                         ; preds = %if.end406
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed411:                         ; preds = %_Dynamic_check.succeeded410
  call void @llvm.trap() #6
  unreachable

if.else418:                                       ; preds = %_Dynamic_check.succeeded412
  %call419 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %419 = load i32, i32* @tests_failed, align 4
  %inc420 = add nsw i32 %419, 1
  store i32 %inc420, i32* @tests_failed, align 4
  br label %if.end421

if.end421:                                        ; preds = %if.else418, %if.then415
  %420 = load i8*, i8** %value_type, align 4
  %421 = ptrtoint i8* %420 to i64
  %422 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %421)
  %423 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.42 to i64))
  %call422 = call i8* @t_strcpy(i8* %422, i8* %423)
  %call423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 210, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.59, i64 0, i64 0))
  %424 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %425 = load i8*, i8** %value_type, align 4
  %426 = ptrtoint %Tstruct.json_object_t_t* %424 to i32
  %427 = call i8* @c_fetch_pointer_from_offset(i32 %426)
  %428 = call i1 @c_isTaintedPointerToTaintedMem(i8* %427)
  br i1 %428, label %_Dynamic_check.succeeded425, label %_Dynamic_check.failed424

_Dynamic_check.succeeded425:                      ; preds = %if.end421
  %429 = bitcast i8* %427 to %Tstruct.json_object_t_t*
  %430 = ptrtoint i8* %425 to i32
  %431 = call i8* @c_fetch_pointer_from_offset(i32 %430)
  %432 = call i1 @c_isTaintedPointerToTaintedMem(i8* %431)
  br i1 %432, label %_Dynamic_check.succeeded427, label %_Dynamic_check.failed426

_Dynamic_check.succeeded427:                      ; preds = %_Dynamic_check.succeeded425
  %call428 = call i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t* %429, i8* %431, i32 1)
  %tobool429 = icmp ne i32 %call428, 0
  br i1 %tobool429, label %if.else433, label %if.then430

if.then430:                                       ; preds = %_Dynamic_check.succeeded427
  %call431 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %433 = load i32, i32* @tests_passed, align 4
  %inc432 = add nsw i32 %433, 1
  store i32 %inc432, i32* @tests_passed, align 4
  br label %if.end436

_Dynamic_check.failed424:                         ; preds = %if.end421
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed426:                         ; preds = %_Dynamic_check.succeeded425
  call void @llvm.trap() #6
  unreachable

if.else433:                                       ; preds = %_Dynamic_check.succeeded427
  %call434 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %434 = load i32, i32* @tests_failed, align 4
  %inc435 = add nsw i32 %434, 1
  store i32 %inc435, i32* @tests_failed, align 4
  br label %if.end436

if.end436:                                        ; preds = %if.else433, %if.then430
  %435 = load i8*, i8** %value_type, align 4
  %436 = ptrtoint i8* %435 to i64
  %437 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %436)
  %438 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([7 x i8]* @.str.17 to i64))
  %call437 = call i8* @t_strcpy(i8* %437, i8* %438)
  %call438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 213, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.60, i64 0, i64 0))
  %439 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %440 = load i8*, i8** %value_type, align 4
  %441 = ptrtoint %Tstruct.json_object_t_t* %439 to i32
  %442 = call i8* @c_fetch_pointer_from_offset(i32 %441)
  %443 = call i1 @c_isTaintedPointerToTaintedMem(i8* %442)
  br i1 %443, label %_Dynamic_check.succeeded440, label %_Dynamic_check.failed439

_Dynamic_check.succeeded440:                      ; preds = %if.end436
  %444 = bitcast i8* %442 to %Tstruct.json_object_t_t*
  %445 = ptrtoint i8* %440 to i32
  %446 = call i8* @c_fetch_pointer_from_offset(i32 %445)
  %447 = call i1 @c_isTaintedPointerToTaintedMem(i8* %446)
  br i1 %447, label %_Dynamic_check.succeeded442, label %_Dynamic_check.failed441

_Dynamic_check.succeeded442:                      ; preds = %_Dynamic_check.succeeded440
  %call443 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %444, i8* %446)
  %tobool444 = icmp ne i8* %call443, null
  br i1 %tobool444, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %_Dynamic_check.succeeded442
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %448 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %449 = load i8*, i8** %value_type, align 4
  %450 = ptrtoint %Tstruct.json_object_t_t* %448 to i32
  %451 = call i8* @c_fetch_pointer_from_offset(i32 %450)
  %452 = call i1 @c_isTaintedPointerToTaintedMem(i8* %451)
  br i1 %452, label %_Dynamic_check.succeeded446, label %_Dynamic_check.failed445

_Dynamic_check.succeeded446:                      ; preds = %cond.true
  %453 = bitcast i8* %451 to %Tstruct.json_object_t_t*
  %454 = ptrtoint i8* %449 to i32
  %455 = call i8* @c_fetch_pointer_from_offset(i32 %454)
  %456 = call i1 @c_isTaintedPointerToTaintedMem(i8* %455)
  br i1 %456, label %_Dynamic_check.succeeded448, label %_Dynamic_check.failed447

_Dynamic_check.succeeded448:                      ; preds = %_Dynamic_check.succeeded446
  %call449 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %453, i8* %455)
  %457 = ptrtoint i8* %call449 to i64
  %458 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %457)
  %459 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([12 x i8]* @.str.61 to i64))
  %call450 = call i32 @t_strcmp(i8* %458, i8* %459)
  %cmp451 = icmp eq i32 %call450, 0
  br i1 %cmp451, label %if.then452, label %if.else455

cond.false:                                       ; preds = %land.lhs.true, %_Dynamic_check.succeeded442
  br i1 false, label %if.then452, label %if.else455

if.then452:                                       ; preds = %cond.false, %_Dynamic_check.succeeded448
  %call453 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %460 = load i32, i32* @tests_passed, align 4
  %inc454 = add nsw i32 %460, 1
  store i32 %inc454, i32* @tests_passed, align 4
  br label %if.end458

_Dynamic_check.failed439:                         ; preds = %if.end436
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed441:                         ; preds = %_Dynamic_check.succeeded440
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed445:                         ; preds = %cond.true
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed447:                         ; preds = %_Dynamic_check.succeeded446
  call void @llvm.trap() #6
  unreachable

if.else455:                                       ; preds = %cond.false, %_Dynamic_check.succeeded448
  %call456 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %461 = load i32, i32* @tests_failed, align 4
  %inc457 = add nsw i32 %461, 1
  store i32 %inc457, i32* @tests_failed, align 4
  br label %if.end458

if.end458:                                        ; preds = %if.else455, %if.then452
  %462 = load i8*, i8** %value_type, align 4
  %463 = ptrtoint i8* %462 to i64
  %464 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %463)
  %465 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([11 x i8]* @.str.62 to i64))
  %call459 = call i8* @t_strcpy(i8* %464, i8* %465)
  %call460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 215, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.60, i64 0, i64 0))
  %466 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %467 = load i8*, i8** %value_type, align 4
  %468 = ptrtoint %Tstruct.json_object_t_t* %466 to i32
  %469 = call i8* @c_fetch_pointer_from_offset(i32 %468)
  %470 = call i1 @c_isTaintedPointerToTaintedMem(i8* %469)
  br i1 %470, label %_Dynamic_check.succeeded462, label %_Dynamic_check.failed461

_Dynamic_check.succeeded462:                      ; preds = %if.end458
  %471 = bitcast i8* %469 to %Tstruct.json_object_t_t*
  %472 = ptrtoint i8* %467 to i32
  %473 = call i8* @c_fetch_pointer_from_offset(i32 %472)
  %474 = call i1 @c_isTaintedPointerToTaintedMem(i8* %473)
  br i1 %474, label %_Dynamic_check.succeeded464, label %_Dynamic_check.failed463

_Dynamic_check.succeeded464:                      ; preds = %_Dynamic_check.succeeded462
  %call465 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %471, i8* %473)
  %tobool466 = icmp ne i8* %call465, null
  br i1 %tobool466, label %land.lhs.true467, label %cond.false476

land.lhs.true467:                                 ; preds = %_Dynamic_check.succeeded464
  br i1 true, label %cond.true468, label %cond.false476

cond.true468:                                     ; preds = %land.lhs.true467
  %475 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %476 = load i8*, i8** %value_type, align 4
  %477 = ptrtoint %Tstruct.json_object_t_t* %475 to i32
  %478 = call i8* @c_fetch_pointer_from_offset(i32 %477)
  %479 = call i1 @c_isTaintedPointerToTaintedMem(i8* %478)
  br i1 %479, label %_Dynamic_check.succeeded470, label %_Dynamic_check.failed469

_Dynamic_check.succeeded470:                      ; preds = %cond.true468
  %480 = bitcast i8* %478 to %Tstruct.json_object_t_t*
  %481 = ptrtoint i8* %476 to i32
  %482 = call i8* @c_fetch_pointer_from_offset(i32 %481)
  %483 = call i1 @c_isTaintedPointerToTaintedMem(i8* %482)
  br i1 %483, label %_Dynamic_check.succeeded472, label %_Dynamic_check.failed471

_Dynamic_check.succeeded472:                      ; preds = %_Dynamic_check.succeeded470
  %call473 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %480, i8* %482)
  %484 = ptrtoint i8* %call473 to i64
  %485 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %484)
  %486 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([12 x i8]* @.str.61 to i64))
  %call474 = call i32 @t_strcmp(i8* %485, i8* %486)
  %cmp475 = icmp eq i32 %call474, 0
  br i1 %cmp475, label %if.then477, label %if.else480

cond.false476:                                    ; preds = %land.lhs.true467, %_Dynamic_check.succeeded464
  br i1 false, label %if.then477, label %if.else480

if.then477:                                       ; preds = %cond.false476, %_Dynamic_check.succeeded472
  %call478 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %487 = load i32, i32* @tests_passed, align 4
  %inc479 = add nsw i32 %487, 1
  store i32 %inc479, i32* @tests_passed, align 4
  br label %if.end483

_Dynamic_check.failed461:                         ; preds = %if.end458
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed463:                         ; preds = %_Dynamic_check.succeeded462
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed469:                         ; preds = %cond.true468
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed471:                         ; preds = %_Dynamic_check.succeeded470
  call void @llvm.trap() #6
  unreachable

if.else480:                                       ; preds = %cond.false476, %_Dynamic_check.succeeded472
  %call481 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %488 = load i32, i32* @tests_failed, align 4
  %inc482 = add nsw i32 %488, 1
  store i32 %inc482, i32* @tests_failed, align 4
  br label %if.end483

if.end483:                                        ; preds = %if.else480, %if.then477
  %489 = load i8*, i8** %value_type, align 4
  %490 = ptrtoint i8* %489 to i64
  %491 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %490)
  %492 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.63 to i64))
  %call484 = call i8* @t_strcpy(i8* %491, i8* %492)
  %call485 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 217, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.64, i64 0, i64 0))
  %493 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %494 = load i8*, i8** %value_type, align 4
  %495 = ptrtoint %Tstruct.json_object_t_t* %493 to i32
  %496 = call i8* @c_fetch_pointer_from_offset(i32 %495)
  %497 = call i1 @c_isTaintedPointerToTaintedMem(i8* %496)
  br i1 %497, label %_Dynamic_check.succeeded487, label %_Dynamic_check.failed486

_Dynamic_check.succeeded487:                      ; preds = %if.end483
  %498 = bitcast i8* %496 to %Tstruct.json_object_t_t*
  %499 = ptrtoint i8* %494 to i32
  %500 = call i8* @c_fetch_pointer_from_offset(i32 %499)
  %501 = call i1 @c_isTaintedPointerToTaintedMem(i8* %500)
  br i1 %501, label %_Dynamic_check.succeeded489, label %_Dynamic_check.failed488

_Dynamic_check.succeeded489:                      ; preds = %_Dynamic_check.succeeded487
  %call490 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %498, i8* %500)
  %tobool491 = icmp ne i8* %call490, null
  br i1 %tobool491, label %land.lhs.true492, label %cond.false501

land.lhs.true492:                                 ; preds = %_Dynamic_check.succeeded489
  br i1 true, label %cond.true493, label %cond.false501

cond.true493:                                     ; preds = %land.lhs.true492
  %502 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %503 = load i8*, i8** %value_type, align 4
  %504 = ptrtoint %Tstruct.json_object_t_t* %502 to i32
  %505 = call i8* @c_fetch_pointer_from_offset(i32 %504)
  %506 = call i1 @c_isTaintedPointerToTaintedMem(i8* %505)
  br i1 %506, label %_Dynamic_check.succeeded495, label %_Dynamic_check.failed494

_Dynamic_check.succeeded495:                      ; preds = %cond.true493
  %507 = bitcast i8* %505 to %Tstruct.json_object_t_t*
  %508 = ptrtoint i8* %503 to i32
  %509 = call i8* @c_fetch_pointer_from_offset(i32 %508)
  %510 = call i1 @c_isTaintedPointerToTaintedMem(i8* %509)
  br i1 %510, label %_Dynamic_check.succeeded497, label %_Dynamic_check.failed496

_Dynamic_check.succeeded497:                      ; preds = %_Dynamic_check.succeeded495
  %call498 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %507, i8* %509)
  %511 = ptrtoint i8* %call498 to i64
  %512 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %511)
  %513 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.65 to i64))
  %call499 = call i32 @t_strcmp(i8* %512, i8* %513)
  %cmp500 = icmp eq i32 %call499, 0
  br i1 %cmp500, label %if.then502, label %if.else505

cond.false501:                                    ; preds = %land.lhs.true492, %_Dynamic_check.succeeded489
  br i1 false, label %if.then502, label %if.else505

if.then502:                                       ; preds = %cond.false501, %_Dynamic_check.succeeded497
  %call503 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %514 = load i32, i32* @tests_passed, align 4
  %inc504 = add nsw i32 %514, 1
  store i32 %inc504, i32* @tests_passed, align 4
  br label %if.end508

_Dynamic_check.failed486:                         ; preds = %if.end483
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed488:                         ; preds = %_Dynamic_check.succeeded487
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed494:                         ; preds = %cond.true493
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed496:                         ; preds = %_Dynamic_check.succeeded495
  call void @llvm.trap() #6
  unreachable

if.else505:                                       ; preds = %cond.false501, %_Dynamic_check.succeeded497
  %call506 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %515 = load i32, i32* @tests_failed, align 4
  %inc507 = add nsw i32 %515, 1
  store i32 %inc507, i32* @tests_failed, align 4
  br label %if.end508

if.end508:                                        ; preds = %if.else505, %if.then502
  %516 = load i8*, i8** %value_type, align 4
  %517 = ptrtoint i8* %516 to i64
  %518 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %517)
  %519 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([17 x i8]* @.str.66 to i64))
  %call509 = call i8* @t_strcpy(i8* %518, i8* %519)
  %call510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 219, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.67, i64 0, i64 0))
  %520 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %521 = load i8*, i8** %value_type, align 4
  %522 = ptrtoint %Tstruct.json_object_t_t* %520 to i32
  %523 = call i8* @c_fetch_pointer_from_offset(i32 %522)
  %524 = call i1 @c_isTaintedPointerToTaintedMem(i8* %523)
  br i1 %524, label %_Dynamic_check.succeeded512, label %_Dynamic_check.failed511

_Dynamic_check.succeeded512:                      ; preds = %if.end508
  %525 = bitcast i8* %523 to %Tstruct.json_object_t_t*
  %526 = ptrtoint i8* %521 to i32
  %527 = call i8* @c_fetch_pointer_from_offset(i32 %526)
  %528 = call i1 @c_isTaintedPointerToTaintedMem(i8* %527)
  br i1 %528, label %_Dynamic_check.succeeded514, label %_Dynamic_check.failed513

_Dynamic_check.succeeded514:                      ; preds = %_Dynamic_check.succeeded512
  %call515 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %525, i8* %527)
  %tobool516 = icmp ne i8* %call515, null
  br i1 %tobool516, label %land.lhs.true517, label %cond.false526

land.lhs.true517:                                 ; preds = %_Dynamic_check.succeeded514
  br i1 true, label %cond.true518, label %cond.false526

cond.true518:                                     ; preds = %land.lhs.true517
  %529 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %530 = load i8*, i8** %value_type, align 4
  %531 = ptrtoint %Tstruct.json_object_t_t* %529 to i32
  %532 = call i8* @c_fetch_pointer_from_offset(i32 %531)
  %533 = call i1 @c_isTaintedPointerToTaintedMem(i8* %532)
  br i1 %533, label %_Dynamic_check.succeeded520, label %_Dynamic_check.failed519

_Dynamic_check.succeeded520:                      ; preds = %cond.true518
  %534 = bitcast i8* %532 to %Tstruct.json_object_t_t*
  %535 = ptrtoint i8* %530 to i32
  %536 = call i8* @c_fetch_pointer_from_offset(i32 %535)
  %537 = call i1 @c_isTaintedPointerToTaintedMem(i8* %536)
  br i1 %537, label %_Dynamic_check.succeeded522, label %_Dynamic_check.failed521

_Dynamic_check.succeeded522:                      ; preds = %_Dynamic_check.succeeded520
  %call523 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %534, i8* %536)
  %538 = ptrtoint i8* %call523 to i64
  %539 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %538)
  %540 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([24 x i8]* @.str.68 to i64))
  %call524 = call i32 @t_strcmp(i8* %539, i8* %540)
  %cmp525 = icmp eq i32 %call524, 0
  br i1 %cmp525, label %if.then527, label %if.else530

cond.false526:                                    ; preds = %land.lhs.true517, %_Dynamic_check.succeeded514
  br i1 false, label %if.then527, label %if.else530

if.then527:                                       ; preds = %cond.false526, %_Dynamic_check.succeeded522
  %call528 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %541 = load i32, i32* @tests_passed, align 4
  %inc529 = add nsw i32 %541, 1
  store i32 %inc529, i32* @tests_passed, align 4
  br label %if.end533

_Dynamic_check.failed511:                         ; preds = %if.end508
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed513:                         ; preds = %_Dynamic_check.succeeded512
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed519:                         ; preds = %cond.true518
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed521:                         ; preds = %_Dynamic_check.succeeded520
  call void @llvm.trap() #6
  unreachable

if.else530:                                       ; preds = %cond.false526, %_Dynamic_check.succeeded522
  %call531 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %542 = load i32, i32* @tests_failed, align 4
  %inc532 = add nsw i32 %542, 1
  store i32 %inc532, i32* @tests_failed, align 4
  br label %if.end533

if.end533:                                        ; preds = %if.else530, %if.then527
  %543 = load i8*, i8** %value_type, align 4
  %544 = ptrtoint i8* %543 to i64
  %545 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %544)
  %546 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.28 to i64))
  %call534 = call i8* @t_strcpy(i8* %545, i8* %546)
  %call535 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 222, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.69, i64 0, i64 0))
  %547 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %548 = load i8*, i8** %value_type, align 4
  %549 = ptrtoint %Tstruct.json_object_t_t* %547 to i32
  %550 = call i8* @c_fetch_pointer_from_offset(i32 %549)
  %551 = call i1 @c_isTaintedPointerToTaintedMem(i8* %550)
  br i1 %551, label %_Dynamic_check.succeeded537, label %_Dynamic_check.failed536

_Dynamic_check.succeeded537:                      ; preds = %if.end533
  %552 = bitcast i8* %550 to %Tstruct.json_object_t_t*
  %553 = ptrtoint i8* %548 to i32
  %554 = call i8* @c_fetch_pointer_from_offset(i32 %553)
  %555 = call i1 @c_isTaintedPointerToTaintedMem(i8* %554)
  br i1 %555, label %_Dynamic_check.succeeded539, label %_Dynamic_check.failed538

_Dynamic_check.succeeded539:                      ; preds = %_Dynamic_check.succeeded537
  %call540 = call double @json_object_get_number(%Tstruct.json_object_t_t* %552, i8* %554)
  %cmp541 = fcmp oeq double %call540, 1.000000e+00
  br i1 %cmp541, label %if.then542, label %if.else545

if.then542:                                       ; preds = %_Dynamic_check.succeeded539
  %call543 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %556 = load i32, i32* @tests_passed, align 4
  %inc544 = add nsw i32 %556, 1
  store i32 %inc544, i32* @tests_passed, align 4
  br label %if.end548

_Dynamic_check.failed536:                         ; preds = %if.end533
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed538:                         ; preds = %_Dynamic_check.succeeded537
  call void @llvm.trap() #6
  unreachable

if.else545:                                       ; preds = %_Dynamic_check.succeeded539
  %call546 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %557 = load i32, i32* @tests_failed, align 4
  %inc547 = add nsw i32 %557, 1
  store i32 %inc547, i32* @tests_failed, align 4
  br label %if.end548

if.end548:                                        ; preds = %if.else545, %if.then542
  %558 = load i8*, i8** %value_type, align 4
  %559 = ptrtoint i8* %558 to i64
  %560 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %559)
  %561 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.70 to i64))
  %call549 = call i8* @t_strcpy(i8* %560, i8* %561)
  %call550 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 224, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i64 0, i64 0))
  %562 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %563 = load i8*, i8** %value_type, align 4
  %564 = ptrtoint %Tstruct.json_object_t_t* %562 to i32
  %565 = call i8* @c_fetch_pointer_from_offset(i32 %564)
  %566 = call i1 @c_isTaintedPointerToTaintedMem(i8* %565)
  br i1 %566, label %_Dynamic_check.succeeded552, label %_Dynamic_check.failed551

_Dynamic_check.succeeded552:                      ; preds = %if.end548
  %567 = bitcast i8* %565 to %Tstruct.json_object_t_t*
  %568 = ptrtoint i8* %563 to i32
  %569 = call i8* @c_fetch_pointer_from_offset(i32 %568)
  %570 = call i1 @c_isTaintedPointerToTaintedMem(i8* %569)
  br i1 %570, label %_Dynamic_check.succeeded554, label %_Dynamic_check.failed553

_Dynamic_check.succeeded554:                      ; preds = %_Dynamic_check.succeeded552
  %call555 = call double @json_object_get_number(%Tstruct.json_object_t_t* %567, i8* %569)
  %cmp556 = fcmp oeq double %call555, -1.000000e+00
  br i1 %cmp556, label %if.then557, label %if.else560

if.then557:                                       ; preds = %_Dynamic_check.succeeded554
  %call558 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %571 = load i32, i32* @tests_passed, align 4
  %inc559 = add nsw i32 %571, 1
  store i32 %inc559, i32* @tests_passed, align 4
  br label %if.end563

_Dynamic_check.failed551:                         ; preds = %if.end548
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed553:                         ; preds = %_Dynamic_check.succeeded552
  call void @llvm.trap() #6
  unreachable

if.else560:                                       ; preds = %_Dynamic_check.succeeded554
  %call561 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %572 = load i32, i32* @tests_failed, align 4
  %inc562 = add nsw i32 %572, 1
  store i32 %inc562, i32* @tests_failed, align 4
  br label %if.end563

if.end563:                                        ; preds = %if.else560, %if.then557
  %573 = load i8*, i8** %value_type, align 4
  %574 = ptrtoint i8* %573 to i64
  %575 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %574)
  %576 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.72 to i64))
  %call564 = call i8* @t_strcpy(i8* %575, i8* %576)
  %call565 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 226, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.73, i64 0, i64 0))
  %577 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %578 = load i8*, i8** %value_type, align 4
  %579 = ptrtoint %Tstruct.json_object_t_t* %577 to i32
  %580 = call i8* @c_fetch_pointer_from_offset(i32 %579)
  %581 = call i1 @c_isTaintedPointerToTaintedMem(i8* %580)
  br i1 %581, label %_Dynamic_check.succeeded567, label %_Dynamic_check.failed566

_Dynamic_check.succeeded567:                      ; preds = %if.end563
  %582 = bitcast i8* %580 to %Tstruct.json_object_t_t*
  %583 = ptrtoint i8* %578 to i32
  %584 = call i8* @c_fetch_pointer_from_offset(i32 %583)
  %585 = call i1 @c_isTaintedPointerToTaintedMem(i8* %584)
  br i1 %585, label %_Dynamic_check.succeeded569, label %_Dynamic_check.failed568

_Dynamic_check.succeeded569:                      ; preds = %_Dynamic_check.succeeded567
  %call570 = call double @json_object_get_number(%Tstruct.json_object_t_t* %582, i8* %584)
  %sub = fsub double %call570, -3.140000e-04
  %586 = call double @llvm.fabs.f64(double %sub)
  %cmp571 = fcmp olt double %586, 0x3EB0C6F7A0B5ED8D
  br i1 %cmp571, label %if.then572, label %if.else575

if.then572:                                       ; preds = %_Dynamic_check.succeeded569
  %call573 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %587 = load i32, i32* @tests_passed, align 4
  %inc574 = add nsw i32 %587, 1
  store i32 %inc574, i32* @tests_passed, align 4
  br label %if.end578

_Dynamic_check.failed566:                         ; preds = %if.end563
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed568:                         ; preds = %_Dynamic_check.succeeded567
  call void @llvm.trap() #6
  unreachable

if.else575:                                       ; preds = %_Dynamic_check.succeeded569
  %call576 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %588 = load i32, i32* @tests_failed, align 4
  %inc577 = add nsw i32 %588, 1
  store i32 %inc577, i32* @tests_failed, align 4
  br label %if.end578

if.end578:                                        ; preds = %if.else575, %if.then572
  %589 = load i8*, i8** %value_type, align 4
  %590 = ptrtoint i8* %589 to i64
  %591 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %590)
  %592 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.32 to i64))
  %call579 = call i8* @t_strcpy(i8* %591, i8* %592)
  %call580 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 228, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.74, i64 0, i64 0))
  %593 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %594 = load i8*, i8** %value_type, align 4
  %595 = ptrtoint %Tstruct.json_object_t_t* %593 to i32
  %596 = call i8* @c_fetch_pointer_from_offset(i32 %595)
  %597 = call i1 @c_isTaintedPointerToTaintedMem(i8* %596)
  br i1 %597, label %_Dynamic_check.succeeded582, label %_Dynamic_check.failed581

_Dynamic_check.succeeded582:                      ; preds = %if.end578
  %598 = bitcast i8* %596 to %Tstruct.json_object_t_t*
  %599 = ptrtoint i8* %594 to i32
  %600 = call i8* @c_fetch_pointer_from_offset(i32 %599)
  %601 = call i1 @c_isTaintedPointerToTaintedMem(i8* %600)
  br i1 %601, label %_Dynamic_check.succeeded584, label %_Dynamic_check.failed583

_Dynamic_check.succeeded584:                      ; preds = %_Dynamic_check.succeeded582
  %call585 = call i32 @json_object_get_boolean(%Tstruct.json_object_t_t* %598, i8* %600)
  %cmp586 = icmp eq i32 %call585, 1
  br i1 %cmp586, label %if.then587, label %if.else590

if.then587:                                       ; preds = %_Dynamic_check.succeeded584
  %call588 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %602 = load i32, i32* @tests_passed, align 4
  %inc589 = add nsw i32 %602, 1
  store i32 %inc589, i32* @tests_passed, align 4
  br label %if.end593

_Dynamic_check.failed581:                         ; preds = %if.end578
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed583:                         ; preds = %_Dynamic_check.succeeded582
  call void @llvm.trap() #6
  unreachable

if.else590:                                       ; preds = %_Dynamic_check.succeeded584
  %call591 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %603 = load i32, i32* @tests_failed, align 4
  %inc592 = add nsw i32 %603, 1
  store i32 %inc592, i32* @tests_failed, align 4
  br label %if.end593

if.end593:                                        ; preds = %if.else590, %if.then587
  %604 = load i8*, i8** %value_type, align 4
  %605 = ptrtoint i8* %604 to i64
  %606 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %605)
  %607 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([14 x i8]* @.str.75 to i64))
  %call594 = call i8* @t_strcpy(i8* %606, i8* %607)
  %call595 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 230, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i64 0, i64 0))
  %608 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %609 = load i8*, i8** %value_type, align 4
  %610 = ptrtoint %Tstruct.json_object_t_t* %608 to i32
  %611 = call i8* @c_fetch_pointer_from_offset(i32 %610)
  %612 = call i1 @c_isTaintedPointerToTaintedMem(i8* %611)
  br i1 %612, label %_Dynamic_check.succeeded597, label %_Dynamic_check.failed596

_Dynamic_check.succeeded597:                      ; preds = %if.end593
  %613 = bitcast i8* %611 to %Tstruct.json_object_t_t*
  %614 = ptrtoint i8* %609 to i32
  %615 = call i8* @c_fetch_pointer_from_offset(i32 %614)
  %616 = call i1 @c_isTaintedPointerToTaintedMem(i8* %615)
  br i1 %616, label %_Dynamic_check.succeeded599, label %_Dynamic_check.failed598

_Dynamic_check.succeeded599:                      ; preds = %_Dynamic_check.succeeded597
  %call600 = call i32 @json_object_get_boolean(%Tstruct.json_object_t_t* %613, i8* %615)
  %cmp601 = icmp eq i32 %call600, 0
  br i1 %cmp601, label %if.then602, label %if.else605

if.then602:                                       ; preds = %_Dynamic_check.succeeded599
  %call603 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %617 = load i32, i32* @tests_passed, align 4
  %inc604 = add nsw i32 %617, 1
  store i32 %inc604, i32* @tests_passed, align 4
  br label %if.end608

_Dynamic_check.failed596:                         ; preds = %if.end593
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed598:                         ; preds = %_Dynamic_check.succeeded597
  call void @llvm.trap() #6
  unreachable

if.else605:                                       ; preds = %_Dynamic_check.succeeded599
  %call606 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %618 = load i32, i32* @tests_failed, align 4
  %inc607 = add nsw i32 %618, 1
  store i32 %inc607, i32* @tests_failed, align 4
  br label %if.end608

if.end608:                                        ; preds = %if.else605, %if.then602
  %619 = load i8*, i8** %value_type, align 4
  %620 = ptrtoint i8* %619 to i64
  %621 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %620)
  %622 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.35 to i64))
  %call609 = call i8* @t_strcpy(i8* %621, i8* %622)
  %call610 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 232, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.77, i64 0, i64 0))
  %623 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %624 = load i8*, i8** %value_type, align 4
  %625 = ptrtoint %Tstruct.json_object_t_t* %623 to i32
  %626 = call i8* @c_fetch_pointer_from_offset(i32 %625)
  %627 = call i1 @c_isTaintedPointerToTaintedMem(i8* %626)
  br i1 %627, label %_Dynamic_check.succeeded612, label %_Dynamic_check.failed611

_Dynamic_check.succeeded612:                      ; preds = %if.end608
  %628 = bitcast i8* %626 to %Tstruct.json_object_t_t*
  %629 = ptrtoint i8* %624 to i32
  %630 = call i8* @c_fetch_pointer_from_offset(i32 %629)
  %631 = call i1 @c_isTaintedPointerToTaintedMem(i8* %630)
  br i1 %631, label %_Dynamic_check.succeeded614, label %_Dynamic_check.failed613

_Dynamic_check.succeeded614:                      ; preds = %_Dynamic_check.succeeded612
  %call615 = call %Tstruct.json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t* %628, i8* %630)
  %632 = ptrtoint %Tstruct.json_value_t_t* %call615 to i32
  %633 = call i8* @c_fetch_pointer_from_offset(i32 %632)
  %634 = call i1 @c_isTaintedPointerToTaintedMem(i8* %633)
  br i1 %634, label %_Dynamic_check.succeeded617, label %_Dynamic_check.failed616

_Dynamic_check.succeeded617:                      ; preds = %_Dynamic_check.succeeded614
  %635 = bitcast i8* %633 to %Tstruct.json_value_t_t*
  %call618 = call i32 @json_value_get_type(%Tstruct.json_value_t_t* %635)
  %cmp619 = icmp eq i32 %call618, 1
  br i1 %cmp619, label %if.then620, label %if.else623

if.then620:                                       ; preds = %_Dynamic_check.succeeded617
  %call621 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %636 = load i32, i32* @tests_passed, align 4
  %inc622 = add nsw i32 %636, 1
  store i32 %inc622, i32* @tests_passed, align 4
  br label %if.end626

_Dynamic_check.failed611:                         ; preds = %if.end608
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed613:                         ; preds = %_Dynamic_check.succeeded612
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed616:                         ; preds = %_Dynamic_check.succeeded614
  call void @llvm.trap() #6
  unreachable

if.else623:                                       ; preds = %_Dynamic_check.succeeded617
  %call624 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %637 = load i32, i32* @tests_failed, align 4
  %inc625 = add nsw i32 %637, 1
  store i32 %inc625, i32* @tests_failed, align 4
  br label %if.end626

if.end626:                                        ; preds = %if.else623, %if.then620
  %638 = load i8*, i8** %value_type, align 4
  %639 = ptrtoint i8* %638 to i64
  %640 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %639)
  %641 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.23 to i64))
  %call627 = call i8* @t_strcpy(i8* %640, i8* %641)
  %642 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %643 = load i8*, i8** %value_type, align 4
  %644 = ptrtoint %Tstruct.json_object_t_t* %642 to i32
  %645 = call i8* @c_fetch_pointer_from_offset(i32 %644)
  %646 = call i1 @c_isTaintedPointerToTaintedMem(i8* %645)
  br i1 %646, label %_Dynamic_check.succeeded629, label %_Dynamic_check.failed628

_Dynamic_check.succeeded629:                      ; preds = %if.end626
  %647 = bitcast i8* %645 to %Tstruct.json_object_t_t*
  %648 = ptrtoint i8* %643 to i32
  %649 = call i8* @c_fetch_pointer_from_offset(i32 %648)
  %650 = call i1 @c_isTaintedPointerToTaintedMem(i8* %649)
  br i1 %650, label %_Dynamic_check.succeeded631, label %_Dynamic_check.failed630

_Dynamic_check.succeeded631:                      ; preds = %_Dynamic_check.succeeded629
  %call632 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %647, i8* %649)
  store %Tstruct.json_array_t_t* %call632, %Tstruct.json_array_t_t** %array, align 4
  %651 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %cmp633 = icmp ne %Tstruct.json_array_t_t* %651, null
  br i1 %cmp633, label %land.lhs.true634, label %if.else680

land.lhs.true634:                                 ; preds = %_Dynamic_check.succeeded631
  %652 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %653 = ptrtoint %Tstruct.json_array_t_t* %652 to i32
  %654 = call i8* @c_fetch_pointer_from_offset(i32 %653)
  %655 = call i1 @c_isTaintedPointerToTaintedMem(i8* %654)
  br i1 %655, label %_Dynamic_check.succeeded636, label %_Dynamic_check.failed635

_Dynamic_check.succeeded636:                      ; preds = %land.lhs.true634
  %656 = bitcast i8* %654 to %Tstruct.json_array_t_t*
  %call637 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %656)
  %cmp638 = icmp ugt i64 %call637, 1
  br i1 %cmp638, label %if.then639, label %if.else680

if.then639:                                       ; preds = %_Dynamic_check.succeeded636
  %call640 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 237, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.78, i64 0, i64 0))
  %657 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %658 = ptrtoint %Tstruct.json_array_t_t* %657 to i32
  %659 = call i8* @c_fetch_pointer_from_offset(i32 %658)
  %660 = call i1 @c_isTaintedPointerToTaintedMem(i8* %659)
  br i1 %660, label %_Dynamic_check.succeeded642, label %_Dynamic_check.failed641

_Dynamic_check.succeeded642:                      ; preds = %if.then639
  %661 = bitcast i8* %659 to %Tstruct.json_array_t_t*
  %call643 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %661, i64 0)
  %tobool644 = icmp ne i8* %call643, null
  br i1 %tobool644, label %land.lhs.true645, label %cond.false652

land.lhs.true645:                                 ; preds = %_Dynamic_check.succeeded642
  br i1 true, label %cond.true646, label %cond.false652

cond.true646:                                     ; preds = %land.lhs.true645
  %662 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %663 = ptrtoint %Tstruct.json_array_t_t* %662 to i32
  %664 = call i8* @c_fetch_pointer_from_offset(i32 %663)
  %665 = call i1 @c_isTaintedPointerToTaintedMem(i8* %664)
  br i1 %665, label %_Dynamic_check.succeeded648, label %_Dynamic_check.failed647

_Dynamic_check.succeeded648:                      ; preds = %cond.true646
  %666 = bitcast i8* %664 to %Tstruct.json_array_t_t*
  %call649 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %666, i64 0)
  %667 = ptrtoint i8* %call649 to i64
  %668 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %667)
  %669 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.79 to i64))
  %call650 = call i32 @t_strcmp(i8* %668, i8* %669)
  %cmp651 = icmp eq i32 %call650, 0
  br i1 %cmp651, label %if.then653, label %if.else656

cond.false652:                                    ; preds = %land.lhs.true645, %_Dynamic_check.succeeded642
  br i1 false, label %if.then653, label %if.else656

if.then653:                                       ; preds = %cond.false652, %_Dynamic_check.succeeded648
  %call654 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %670 = load i32, i32* @tests_passed, align 4
  %inc655 = add nsw i32 %670, 1
  store i32 %inc655, i32* @tests_passed, align 4
  br label %if.end659

_Dynamic_check.failed628:                         ; preds = %if.end626
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed630:                         ; preds = %_Dynamic_check.succeeded629
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed635:                         ; preds = %land.lhs.true634
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed641:                         ; preds = %if.then639
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed647:                         ; preds = %cond.true646
  call void @llvm.trap() #6
  unreachable

if.else656:                                       ; preds = %cond.false652, %_Dynamic_check.succeeded648
  %call657 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %671 = load i32, i32* @tests_failed, align 4
  %inc658 = add nsw i32 %671, 1
  store i32 %inc658, i32* @tests_failed, align 4
  br label %if.end659

if.end659:                                        ; preds = %if.else656, %if.then653
  %call660 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 238, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.80, i64 0, i64 0))
  %672 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %673 = ptrtoint %Tstruct.json_array_t_t* %672 to i32
  %674 = call i8* @c_fetch_pointer_from_offset(i32 %673)
  %675 = call i1 @c_isTaintedPointerToTaintedMem(i8* %674)
  br i1 %675, label %_Dynamic_check.succeeded662, label %_Dynamic_check.failed661

_Dynamic_check.succeeded662:                      ; preds = %if.end659
  %676 = bitcast i8* %674 to %Tstruct.json_array_t_t*
  %call663 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %676, i64 1)
  %tobool664 = icmp ne i8* %call663, null
  br i1 %tobool664, label %land.lhs.true665, label %cond.false672

land.lhs.true665:                                 ; preds = %_Dynamic_check.succeeded662
  br i1 true, label %cond.true666, label %cond.false672

cond.true666:                                     ; preds = %land.lhs.true665
  %677 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %678 = ptrtoint %Tstruct.json_array_t_t* %677 to i32
  %679 = call i8* @c_fetch_pointer_from_offset(i32 %678)
  %680 = call i1 @c_isTaintedPointerToTaintedMem(i8* %679)
  br i1 %680, label %_Dynamic_check.succeeded668, label %_Dynamic_check.failed667

_Dynamic_check.succeeded668:                      ; preds = %cond.true666
  %681 = bitcast i8* %679 to %Tstruct.json_array_t_t*
  %call669 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %681, i64 1)
  %682 = ptrtoint i8* %call669 to i64
  %683 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %682)
  %684 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.81 to i64))
  %call670 = call i32 @t_strcmp(i8* %683, i8* %684)
  %cmp671 = icmp eq i32 %call670, 0
  br i1 %cmp671, label %if.then673, label %if.else676

cond.false672:                                    ; preds = %land.lhs.true665, %_Dynamic_check.succeeded662
  br i1 false, label %if.then673, label %if.else676

if.then673:                                       ; preds = %cond.false672, %_Dynamic_check.succeeded668
  %call674 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %685 = load i32, i32* @tests_passed, align 4
  %inc675 = add nsw i32 %685, 1
  store i32 %inc675, i32* @tests_passed, align 4
  br label %if.end679

_Dynamic_check.failed661:                         ; preds = %if.end659
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed667:                         ; preds = %cond.true666
  call void @llvm.trap() #6
  unreachable

if.else676:                                       ; preds = %cond.false672, %_Dynamic_check.succeeded668
  %call677 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %686 = load i32, i32* @tests_failed, align 4
  %inc678 = add nsw i32 %686, 1
  store i32 %inc678, i32* @tests_failed, align 4
  br label %if.end679

if.end679:                                        ; preds = %if.else676, %if.then673
  br label %if.end682

if.else680:                                       ; preds = %_Dynamic_check.succeeded636, %_Dynamic_check.succeeded631
  %687 = load i32, i32* @tests_failed, align 4
  %inc681 = add nsw i32 %687, 1
  store i32 %inc681, i32* @tests_failed, align 4
  br label %if.end682

if.end682:                                        ; preds = %if.else680, %if.end679
  %688 = load i8*, i8** %value_type, align 4
  %689 = ptrtoint i8* %688 to i64
  %690 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %689)
  %691 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([10 x i8]* @.str.82 to i64))
  %call683 = call i8* @t_strcpy(i8* %690, i8* %691)
  %692 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %693 = load i8*, i8** %value_type, align 4
  %694 = ptrtoint %Tstruct.json_object_t_t* %692 to i32
  %695 = call i8* @c_fetch_pointer_from_offset(i32 %694)
  %696 = call i1 @c_isTaintedPointerToTaintedMem(i8* %695)
  br i1 %696, label %_Dynamic_check.succeeded685, label %_Dynamic_check.failed684

_Dynamic_check.succeeded685:                      ; preds = %if.end682
  %697 = bitcast i8* %695 to %Tstruct.json_object_t_t*
  %698 = ptrtoint i8* %693 to i32
  %699 = call i8* @c_fetch_pointer_from_offset(i32 %698)
  %700 = call i1 @c_isTaintedPointerToTaintedMem(i8* %699)
  br i1 %700, label %_Dynamic_check.succeeded687, label %_Dynamic_check.failed686

_Dynamic_check.succeeded687:                      ; preds = %_Dynamic_check.succeeded685
  %call688 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %697, i8* %699)
  store %Tstruct.json_array_t_t* %call688, %Tstruct.json_array_t_t** %array, align 4
  %701 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %cmp689 = icmp ne %Tstruct.json_array_t_t* %701, null
  br i1 %cmp689, label %if.then690, label %if.else709

if.then690:                                       ; preds = %_Dynamic_check.succeeded687
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then690
  %702 = load i64, i64* %i, align 8
  %703 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %704 = ptrtoint %Tstruct.json_array_t_t* %703 to i32
  %705 = call i8* @c_fetch_pointer_from_offset(i32 %704)
  %706 = call i1 @c_isTaintedPointerToTaintedMem(i8* %705)
  br i1 %706, label %_Dynamic_check.succeeded692, label %_Dynamic_check.failed691

_Dynamic_check.succeeded692:                      ; preds = %for.cond
  %707 = bitcast i8* %705 to %Tstruct.json_array_t_t*
  %call693 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %707)
  %cmp694 = icmp ult i64 %702, %call693
  br i1 %cmp694, label %for.body, label %for.end

for.body:                                         ; preds = %_Dynamic_check.succeeded692
  %call695 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.83, i64 0, i64 0))
  %708 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %709 = load i64, i64* %i, align 8
  %710 = ptrtoint %Tstruct.json_array_t_t* %708 to i32
  %711 = call i8* @c_fetch_pointer_from_offset(i32 %710)
  %712 = call i1 @c_isTaintedPointerToTaintedMem(i8* %711)
  br i1 %712, label %_Dynamic_check.succeeded697, label %_Dynamic_check.failed696

_Dynamic_check.succeeded697:                      ; preds = %for.body
  %713 = bitcast i8* %711 to %Tstruct.json_array_t_t*
  %call698 = call double @json_array_get_number(%Tstruct.json_array_t_t* %713, i64 %709)
  %714 = load i64, i64* %i, align 8
  %715 = load i64, i64* %i, align 8
  %mul = mul i64 %714, %715
  %conv = uitofp i64 %mul to double
  %cmp699 = fcmp oeq double %call698, %conv
  br i1 %cmp699, label %if.then701, label %if.else704

if.then701:                                       ; preds = %_Dynamic_check.succeeded697
  %call702 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %716 = load i32, i32* @tests_passed, align 4
  %inc703 = add nsw i32 %716, 1
  store i32 %inc703, i32* @tests_passed, align 4
  br label %if.end707

_Dynamic_check.failed684:                         ; preds = %if.end682
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed686:                         ; preds = %_Dynamic_check.succeeded685
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed691:                         ; preds = %for.cond
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed696:                         ; preds = %for.body
  call void @llvm.trap() #6
  unreachable

if.else704:                                       ; preds = %_Dynamic_check.succeeded697
  %call705 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %717 = load i32, i32* @tests_failed, align 4
  %inc706 = add nsw i32 %717, 1
  store i32 %inc706, i32* @tests_failed, align 4
  br label %if.end707

if.end707:                                        ; preds = %if.else704, %if.then701
  br label %for.inc

for.inc:                                          ; preds = %if.end707
  %718 = load i64, i64* %i, align 8
  %inc708 = add i64 %718, 1
  store i64 %inc708, i64* %i, align 8
  br label %for.cond, !llvm.loop !2

for.end:                                          ; preds = %_Dynamic_check.succeeded692
  br label %if.end711

if.else709:                                       ; preds = %_Dynamic_check.succeeded687
  %719 = load i32, i32* @tests_failed, align 4
  %inc710 = add nsw i32 %719, 1
  store i32 %inc710, i32* @tests_failed, align 4
  br label %if.end711

if.end711:                                        ; preds = %if.else709, %for.end
  %720 = load i8*, i8** %value_type, align 4
  %721 = ptrtoint i8* %720 to i64
  %722 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %721)
  %723 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.84 to i64))
  %call712 = call i8* @t_strcpy(i8* %722, i8* %723)
  %call713 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 253, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.85, i64 0, i64 0))
  %724 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %725 = load i8*, i8** %value_type, align 4
  %726 = ptrtoint %Tstruct.json_object_t_t* %724 to i32
  %727 = call i8* @c_fetch_pointer_from_offset(i32 %726)
  %728 = call i1 @c_isTaintedPointerToTaintedMem(i8* %727)
  br i1 %728, label %_Dynamic_check.succeeded715, label %_Dynamic_check.failed714

_Dynamic_check.succeeded715:                      ; preds = %if.end711
  %729 = bitcast i8* %727 to %Tstruct.json_object_t_t*
  %730 = ptrtoint i8* %725 to i32
  %731 = call i8* @c_fetch_pointer_from_offset(i32 %730)
  %732 = call i1 @c_isTaintedPointerToTaintedMem(i8* %731)
  br i1 %732, label %_Dynamic_check.succeeded717, label %_Dynamic_check.failed716

_Dynamic_check.succeeded717:                      ; preds = %_Dynamic_check.succeeded715
  %call718 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %729, i8* %731)
  %cmp719 = icmp eq %Tstruct.json_array_t_t* %call718, null
  br i1 %cmp719, label %if.then721, label %if.else724

if.then721:                                       ; preds = %_Dynamic_check.succeeded717
  %call722 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %733 = load i32, i32* @tests_passed, align 4
  %inc723 = add nsw i32 %733, 1
  store i32 %inc723, i32* @tests_passed, align 4
  br label %if.end727

_Dynamic_check.failed714:                         ; preds = %if.end711
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed716:                         ; preds = %_Dynamic_check.succeeded715
  call void @llvm.trap() #6
  unreachable

if.else724:                                       ; preds = %_Dynamic_check.succeeded717
  %call725 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %734 = load i32, i32* @tests_failed, align 4
  %inc726 = add nsw i32 %734, 1
  store i32 %inc726, i32* @tests_failed, align 4
  br label %if.end727

if.end727:                                        ; preds = %if.else724, %if.then721
  %735 = load i8*, i8** %value_type, align 4
  %736 = ptrtoint i8* %735 to i64
  %737 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %736)
  %738 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.47 to i64))
  %call728 = call i8* @t_strcpy(i8* %737, i8* %738)
  %call729 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 255, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.86, i64 0, i64 0))
  %739 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %740 = load i8*, i8** %value_type, align 4
  %741 = ptrtoint %Tstruct.json_object_t_t* %739 to i32
  %742 = call i8* @c_fetch_pointer_from_offset(i32 %741)
  %743 = call i1 @c_isTaintedPointerToTaintedMem(i8* %742)
  br i1 %743, label %_Dynamic_check.succeeded731, label %_Dynamic_check.failed730

_Dynamic_check.succeeded731:                      ; preds = %if.end727
  %744 = bitcast i8* %742 to %Tstruct.json_object_t_t*
  %745 = ptrtoint i8* %740 to i32
  %746 = call i8* @c_fetch_pointer_from_offset(i32 %745)
  %747 = call i1 @c_isTaintedPointerToTaintedMem(i8* %746)
  br i1 %747, label %_Dynamic_check.succeeded733, label %_Dynamic_check.failed732

_Dynamic_check.succeeded733:                      ; preds = %_Dynamic_check.succeeded731
  %call734 = call i8* @json_object_dotget_string(%Tstruct.json_object_t_t* %744, i8* %746)
  %tobool735 = icmp ne i8* %call734, null
  br i1 %tobool735, label %land.lhs.true736, label %cond.false746

land.lhs.true736:                                 ; preds = %_Dynamic_check.succeeded733
  br i1 true, label %cond.true737, label %cond.false746

cond.true737:                                     ; preds = %land.lhs.true736
  %748 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %749 = load i8*, i8** %value_type, align 4
  %750 = ptrtoint %Tstruct.json_object_t_t* %748 to i32
  %751 = call i8* @c_fetch_pointer_from_offset(i32 %750)
  %752 = call i1 @c_isTaintedPointerToTaintedMem(i8* %751)
  br i1 %752, label %_Dynamic_check.succeeded739, label %_Dynamic_check.failed738

_Dynamic_check.succeeded739:                      ; preds = %cond.true737
  %753 = bitcast i8* %751 to %Tstruct.json_object_t_t*
  %754 = ptrtoint i8* %749 to i32
  %755 = call i8* @c_fetch_pointer_from_offset(i32 %754)
  %756 = call i1 @c_isTaintedPointerToTaintedMem(i8* %755)
  br i1 %756, label %_Dynamic_check.succeeded741, label %_Dynamic_check.failed740

_Dynamic_check.succeeded741:                      ; preds = %_Dynamic_check.succeeded739
  %call742 = call i8* @json_object_dotget_string(%Tstruct.json_object_t_t* %753, i8* %755)
  %757 = ptrtoint i8* %call742 to i64
  %758 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %757)
  %759 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.87 to i64))
  %call743 = call i32 @t_strcmp(i8* %758, i8* %759)
  %cmp744 = icmp eq i32 %call743, 0
  br i1 %cmp744, label %if.then747, label %if.else750

cond.false746:                                    ; preds = %land.lhs.true736, %_Dynamic_check.succeeded733
  br i1 false, label %if.then747, label %if.else750

if.then747:                                       ; preds = %cond.false746, %_Dynamic_check.succeeded741
  %call748 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %760 = load i32, i32* @tests_passed, align 4
  %inc749 = add nsw i32 %760, 1
  store i32 %inc749, i32* @tests_passed, align 4
  br label %if.end753

_Dynamic_check.failed730:                         ; preds = %if.end727
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed732:                         ; preds = %_Dynamic_check.succeeded731
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed738:                         ; preds = %cond.true737
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed740:                         ; preds = %_Dynamic_check.succeeded739
  call void @llvm.trap() #6
  unreachable

if.else750:                                       ; preds = %cond.false746, %_Dynamic_check.succeeded741
  %call751 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %761 = load i32, i32* @tests_failed, align 4
  %inc752 = add nsw i32 %761, 1
  store i32 %inc752, i32* @tests_failed, align 4
  br label %if.end753

if.end753:                                        ; preds = %if.else750, %if.then747
  %762 = load i8*, i8** %value_type, align 4
  %763 = ptrtoint i8* %762 to i64
  %764 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %763)
  %765 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.54 to i64))
  %call754 = call i8* @t_strcpy(i8* %764, i8* %765)
  %call755 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 257, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.88, i64 0, i64 0))
  %766 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %767 = load i8*, i8** %value_type, align 4
  %768 = ptrtoint %Tstruct.json_object_t_t* %766 to i32
  %769 = call i8* @c_fetch_pointer_from_offset(i32 %768)
  %770 = call i1 @c_isTaintedPointerToTaintedMem(i8* %769)
  br i1 %770, label %_Dynamic_check.succeeded757, label %_Dynamic_check.failed756

_Dynamic_check.succeeded757:                      ; preds = %if.end753
  %771 = bitcast i8* %769 to %Tstruct.json_object_t_t*
  %772 = ptrtoint i8* %767 to i32
  %773 = call i8* @c_fetch_pointer_from_offset(i32 %772)
  %774 = call i1 @c_isTaintedPointerToTaintedMem(i8* %773)
  br i1 %774, label %_Dynamic_check.succeeded759, label %_Dynamic_check.failed758

_Dynamic_check.succeeded759:                      ; preds = %_Dynamic_check.succeeded757
  %call760 = call i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %771, i8* %773)
  %cmp761 = icmp eq i32 %call760, 1
  br i1 %cmp761, label %if.then763, label %if.else766

if.then763:                                       ; preds = %_Dynamic_check.succeeded759
  %call764 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %775 = load i32, i32* @tests_passed, align 4
  %inc765 = add nsw i32 %775, 1
  store i32 %inc765, i32* @tests_passed, align 4
  br label %if.end769

_Dynamic_check.failed756:                         ; preds = %if.end753
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed758:                         ; preds = %_Dynamic_check.succeeded757
  call void @llvm.trap() #6
  unreachable

if.else766:                                       ; preds = %_Dynamic_check.succeeded759
  %call767 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %776 = load i32, i32* @tests_failed, align 4
  %inc768 = add nsw i32 %776, 1
  store i32 %inc768, i32* @tests_failed, align 4
  br label %if.end769

if.end769:                                        ; preds = %if.else766, %if.then763
  %777 = load i8*, i8** %value_type, align 4
  %778 = ptrtoint i8* %777 to i64
  %779 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %778)
  %780 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.89 to i64))
  %call770 = call i8* @t_strcpy(i8* %779, i8* %780)
  %call771 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 259, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.90, i64 0, i64 0))
  %781 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %782 = load i8*, i8** %value_type, align 4
  %783 = ptrtoint %Tstruct.json_object_t_t* %781 to i32
  %784 = call i8* @c_fetch_pointer_from_offset(i32 %783)
  %785 = call i1 @c_isTaintedPointerToTaintedMem(i8* %784)
  br i1 %785, label %_Dynamic_check.succeeded773, label %_Dynamic_check.failed772

_Dynamic_check.succeeded773:                      ; preds = %if.end769
  %786 = bitcast i8* %784 to %Tstruct.json_object_t_t*
  %787 = ptrtoint i8* %782 to i32
  %788 = call i8* @c_fetch_pointer_from_offset(i32 %787)
  %789 = call i1 @c_isTaintedPointerToTaintedMem(i8* %788)
  br i1 %789, label %_Dynamic_check.succeeded775, label %_Dynamic_check.failed774

_Dynamic_check.succeeded775:                      ; preds = %_Dynamic_check.succeeded773
  %call776 = call i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %786, i8* %788)
  %cmp777 = icmp eq i32 %call776, 0
  br i1 %cmp777, label %if.then779, label %if.else782

if.then779:                                       ; preds = %_Dynamic_check.succeeded775
  %call780 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %790 = load i32, i32* @tests_passed, align 4
  %inc781 = add nsw i32 %790, 1
  store i32 %inc781, i32* @tests_passed, align 4
  br label %if.end785

_Dynamic_check.failed772:                         ; preds = %if.end769
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed774:                         ; preds = %_Dynamic_check.succeeded773
  call void @llvm.trap() #6
  unreachable

if.else782:                                       ; preds = %_Dynamic_check.succeeded775
  %call783 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %791 = load i32, i32* @tests_failed, align 4
  %inc784 = add nsw i32 %791, 1
  store i32 %inc784, i32* @tests_failed, align 4
  br label %if.end785

if.end785:                                        ; preds = %if.else782, %if.then779
  %792 = load i8*, i8** %value_type, align 4
  %793 = ptrtoint i8* %792 to i64
  %794 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %793)
  %795 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.57 to i64))
  %call786 = call i8* @t_strcpy(i8* %794, i8* %795)
  %call787 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 261, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.91, i64 0, i64 0))
  %796 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %797 = load i8*, i8** %value_type, align 4
  %798 = ptrtoint %Tstruct.json_object_t_t* %796 to i32
  %799 = call i8* @c_fetch_pointer_from_offset(i32 %798)
  %800 = call i1 @c_isTaintedPointerToTaintedMem(i8* %799)
  br i1 %800, label %_Dynamic_check.succeeded789, label %_Dynamic_check.failed788

_Dynamic_check.succeeded789:                      ; preds = %if.end785
  %801 = bitcast i8* %799 to %Tstruct.json_object_t_t*
  %802 = ptrtoint i8* %797 to i32
  %803 = call i8* @c_fetch_pointer_from_offset(i32 %802)
  %804 = call i1 @c_isTaintedPointerToTaintedMem(i8* %803)
  br i1 %804, label %_Dynamic_check.succeeded791, label %_Dynamic_check.failed790

_Dynamic_check.succeeded791:                      ; preds = %_Dynamic_check.succeeded789
  %call792 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %801, i8* %803)
  %cmp793 = icmp ne %Tstruct.json_value_t_t* %call792, null
  br i1 %cmp793, label %if.then795, label %if.else798

if.then795:                                       ; preds = %_Dynamic_check.succeeded791
  %call796 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %805 = load i32, i32* @tests_passed, align 4
  %inc797 = add nsw i32 %805, 1
  store i32 %inc797, i32* @tests_passed, align 4
  br label %if.end801

_Dynamic_check.failed788:                         ; preds = %if.end785
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed790:                         ; preds = %_Dynamic_check.succeeded789
  call void @llvm.trap() #6
  unreachable

if.else798:                                       ; preds = %_Dynamic_check.succeeded791
  %call799 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %806 = load i32, i32* @tests_failed, align 4
  %inc800 = add nsw i32 %806, 1
  store i32 %inc800, i32* @tests_failed, align 4
  br label %if.end801

if.end801:                                        ; preds = %if.else798, %if.then795
  %807 = load i8*, i8** %value_type, align 4
  %808 = ptrtoint i8* %807 to i64
  %809 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %808)
  %810 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([21 x i8]* @.str.49 to i64))
  %call802 = call i8* @t_strcpy(i8* %809, i8* %810)
  %call803 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 263, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.92, i64 0, i64 0))
  %811 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %812 = load i8*, i8** %value_type, align 4
  %813 = ptrtoint %Tstruct.json_object_t_t* %811 to i32
  %814 = call i8* @c_fetch_pointer_from_offset(i32 %813)
  %815 = call i1 @c_isTaintedPointerToTaintedMem(i8* %814)
  br i1 %815, label %_Dynamic_check.succeeded805, label %_Dynamic_check.failed804

_Dynamic_check.succeeded805:                      ; preds = %if.end801
  %816 = bitcast i8* %814 to %Tstruct.json_object_t_t*
  %817 = ptrtoint i8* %812 to i32
  %818 = call i8* @c_fetch_pointer_from_offset(i32 %817)
  %819 = call i1 @c_isTaintedPointerToTaintedMem(i8* %818)
  br i1 %819, label %_Dynamic_check.succeeded807, label %_Dynamic_check.failed806

_Dynamic_check.succeeded807:                      ; preds = %_Dynamic_check.succeeded805
  %call808 = call double @json_object_dotget_number(%Tstruct.json_object_t_t* %816, i8* %818)
  %cmp809 = fcmp oeq double %call808, 1.230000e+02
  br i1 %cmp809, label %if.then811, label %if.else814

if.then811:                                       ; preds = %_Dynamic_check.succeeded807
  %call812 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %820 = load i32, i32* @tests_passed, align 4
  %inc813 = add nsw i32 %820, 1
  store i32 %inc813, i32* @tests_passed, align 4
  br label %if.end817

_Dynamic_check.failed804:                         ; preds = %if.end801
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed806:                         ; preds = %_Dynamic_check.succeeded805
  call void @llvm.trap() #6
  unreachable

if.else814:                                       ; preds = %_Dynamic_check.succeeded807
  %call815 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %821 = load i32, i32* @tests_failed, align 4
  %inc816 = add nsw i32 %821, 1
  store i32 %inc816, i32* @tests_failed, align 4
  br label %if.end817

if.end817:                                        ; preds = %if.else814, %if.then811
  %822 = load i8*, i8** %value_type, align 4
  %823 = ptrtoint i8* %822 to i64
  %824 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %823)
  %825 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([15 x i8]* @.str.93 to i64))
  %call818 = call i8* @t_strcpy(i8* %824, i8* %825)
  %call819 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 266, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %826 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %827 = load i8*, i8** %value_type, align 4
  %828 = ptrtoint %Tstruct.json_object_t_t* %826 to i32
  %829 = call i8* @c_fetch_pointer_from_offset(i32 %828)
  %830 = call i1 @c_isTaintedPointerToTaintedMem(i8* %829)
  br i1 %830, label %_Dynamic_check.succeeded821, label %_Dynamic_check.failed820

_Dynamic_check.succeeded821:                      ; preds = %if.end817
  %831 = bitcast i8* %829 to %Tstruct.json_object_t_t*
  %832 = ptrtoint i8* %827 to i32
  %833 = call i8* @c_fetch_pointer_from_offset(i32 %832)
  %834 = call i1 @c_isTaintedPointerToTaintedMem(i8* %833)
  br i1 %834, label %_Dynamic_check.succeeded823, label %_Dynamic_check.failed822

_Dynamic_check.succeeded823:                      ; preds = %_Dynamic_check.succeeded821
  %call824 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %831, i8* %833)
  %cmp825 = icmp eq %Tstruct.json_value_t_t* %call824, null
  br i1 %cmp825, label %if.then827, label %if.else830

if.then827:                                       ; preds = %_Dynamic_check.succeeded823
  %call828 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %835 = load i32, i32* @tests_passed, align 4
  %inc829 = add nsw i32 %835, 1
  store i32 %inc829, i32* @tests_passed, align 4
  br label %if.end833

_Dynamic_check.failed820:                         ; preds = %if.end817
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed822:                         ; preds = %_Dynamic_check.succeeded821
  call void @llvm.trap() #6
  unreachable

if.else830:                                       ; preds = %_Dynamic_check.succeeded823
  %call831 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %836 = load i32, i32* @tests_failed, align 4
  %inc832 = add nsw i32 %836, 1
  store i32 %inc832, i32* @tests_failed, align 4
  br label %if.end833

if.end833:                                        ; preds = %if.else830, %if.then827
  %837 = load i8*, i8** %value_type, align 4
  %838 = ptrtoint i8* %837 to i64
  %839 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %838)
  %840 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([16 x i8]* @.str.95 to i64))
  %call834 = call i8* @t_strcpy(i8* %839, i8* %840)
  %call835 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 268, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %841 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %842 = load i8*, i8** %value_type, align 4
  %843 = ptrtoint %Tstruct.json_object_t_t* %841 to i32
  %844 = call i8* @c_fetch_pointer_from_offset(i32 %843)
  %845 = call i1 @c_isTaintedPointerToTaintedMem(i8* %844)
  br i1 %845, label %_Dynamic_check.succeeded837, label %_Dynamic_check.failed836

_Dynamic_check.succeeded837:                      ; preds = %if.end833
  %846 = bitcast i8* %844 to %Tstruct.json_object_t_t*
  %847 = ptrtoint i8* %842 to i32
  %848 = call i8* @c_fetch_pointer_from_offset(i32 %847)
  %849 = call i1 @c_isTaintedPointerToTaintedMem(i8* %848)
  br i1 %849, label %_Dynamic_check.succeeded839, label %_Dynamic_check.failed838

_Dynamic_check.succeeded839:                      ; preds = %_Dynamic_check.succeeded837
  %call840 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %846, i8* %848)
  %cmp841 = icmp eq %Tstruct.json_value_t_t* %call840, null
  br i1 %cmp841, label %if.then843, label %if.else846

if.then843:                                       ; preds = %_Dynamic_check.succeeded839
  %call844 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %850 = load i32, i32* @tests_passed, align 4
  %inc845 = add nsw i32 %850, 1
  store i32 %inc845, i32* @tests_passed, align 4
  br label %if.end849

_Dynamic_check.failed836:                         ; preds = %if.end833
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed838:                         ; preds = %_Dynamic_check.succeeded837
  call void @llvm.trap() #6
  unreachable

if.else846:                                       ; preds = %_Dynamic_check.succeeded839
  %call847 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %851 = load i32, i32* @tests_failed, align 4
  %inc848 = add nsw i32 %851, 1
  store i32 %inc848, i32* @tests_failed, align 4
  br label %if.end849

if.end849:                                        ; preds = %if.else846, %if.then843
  %852 = load i8*, i8** %value_type, align 4
  %853 = ptrtoint i8* %852 to i64
  %854 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %853)
  %855 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([2 x i8]* @.str.96 to i64))
  %call850 = call i8* @t_strcpy(i8* %854, i8* %855)
  %call851 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 270, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %856 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %857 = load i8*, i8** %value_type, align 4
  %858 = ptrtoint %Tstruct.json_object_t_t* %856 to i32
  %859 = call i8* @c_fetch_pointer_from_offset(i32 %858)
  %860 = call i1 @c_isTaintedPointerToTaintedMem(i8* %859)
  br i1 %860, label %_Dynamic_check.succeeded853, label %_Dynamic_check.failed852

_Dynamic_check.succeeded853:                      ; preds = %if.end849
  %861 = bitcast i8* %859 to %Tstruct.json_object_t_t*
  %862 = ptrtoint i8* %857 to i32
  %863 = call i8* @c_fetch_pointer_from_offset(i32 %862)
  %864 = call i1 @c_isTaintedPointerToTaintedMem(i8* %863)
  br i1 %864, label %_Dynamic_check.succeeded855, label %_Dynamic_check.failed854

_Dynamic_check.succeeded855:                      ; preds = %_Dynamic_check.succeeded853
  %call856 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %861, i8* %863)
  %cmp857 = icmp eq %Tstruct.json_value_t_t* %call856, null
  br i1 %cmp857, label %if.then859, label %if.else862

if.then859:                                       ; preds = %_Dynamic_check.succeeded855
  %call860 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %865 = load i32, i32* @tests_passed, align 4
  %inc861 = add nsw i32 %865, 1
  store i32 %inc861, i32* @tests_passed, align 4
  br label %if.end865

_Dynamic_check.failed852:                         ; preds = %if.end849
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed854:                         ; preds = %_Dynamic_check.succeeded853
  call void @llvm.trap() #6
  unreachable

if.else862:                                       ; preds = %_Dynamic_check.succeeded855
  %call863 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %866 = load i32, i32* @tests_failed, align 4
  %inc864 = add nsw i32 %866, 1
  store i32 %inc864, i32* @tests_failed, align 4
  br label %if.end865

if.end865:                                        ; preds = %if.else862, %if.then859
  %867 = load i8*, i8** %value_type, align 4
  %868 = ptrtoint i8* %867 to i64
  %869 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %868)
  %870 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([1 x i8]* @.str.97 to i64))
  %call866 = call i8* @t_strcpy(i8* %869, i8* %870)
  %call867 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 272, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.94, i64 0, i64 0))
  %871 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %872 = load i8*, i8** %value_type, align 4
  %873 = ptrtoint %Tstruct.json_object_t_t* %871 to i32
  %874 = call i8* @c_fetch_pointer_from_offset(i32 %873)
  %875 = call i1 @c_isTaintedPointerToTaintedMem(i8* %874)
  br i1 %875, label %_Dynamic_check.succeeded869, label %_Dynamic_check.failed868

_Dynamic_check.succeeded869:                      ; preds = %if.end865
  %876 = bitcast i8* %874 to %Tstruct.json_object_t_t*
  %877 = ptrtoint i8* %872 to i32
  %878 = call i8* @c_fetch_pointer_from_offset(i32 %877)
  %879 = call i1 @c_isTaintedPointerToTaintedMem(i8* %878)
  br i1 %879, label %_Dynamic_check.succeeded871, label %_Dynamic_check.failed870

_Dynamic_check.succeeded871:                      ; preds = %_Dynamic_check.succeeded869
  %call872 = call %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t* %876, i8* %878)
  %cmp873 = icmp eq %Tstruct.json_value_t_t* %call872, null
  br i1 %cmp873, label %if.then875, label %if.else878

if.then875:                                       ; preds = %_Dynamic_check.succeeded871
  %call876 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %880 = load i32, i32* @tests_passed, align 4
  %inc877 = add nsw i32 %880, 1
  store i32 %inc877, i32* @tests_passed, align 4
  br label %if.end881

_Dynamic_check.failed868:                         ; preds = %if.end865
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed870:                         ; preds = %_Dynamic_check.succeeded869
  call void @llvm.trap() #6
  unreachable

if.else878:                                       ; preds = %_Dynamic_check.succeeded871
  %call879 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %881 = load i32, i32* @tests_failed, align 4
  %inc880 = add nsw i32 %881, 1
  store i32 %inc880, i32* @tests_failed, align 4
  br label %if.end881

if.end881:                                        ; preds = %if.else878, %if.then875
  %882 = load i8*, i8** %value_type, align 4
  %883 = ptrtoint i8* %882 to i64
  %884 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %883)
  %885 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([20 x i8]* @.str.38 to i64))
  %call882 = call i8* @t_strcpy(i8* %884, i8* %885)
  %886 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %887 = load i8*, i8** %value_type, align 4
  %888 = ptrtoint %Tstruct.json_object_t_t* %886 to i32
  %889 = call i8* @c_fetch_pointer_from_offset(i32 %888)
  %890 = call i1 @c_isTaintedPointerToTaintedMem(i8* %889)
  br i1 %890, label %_Dynamic_check.succeeded884, label %_Dynamic_check.failed883

_Dynamic_check.succeeded884:                      ; preds = %if.end881
  %891 = bitcast i8* %889 to %Tstruct.json_object_t_t*
  %892 = ptrtoint i8* %887 to i32
  %893 = call i8* @c_fetch_pointer_from_offset(i32 %892)
  %894 = call i1 @c_isTaintedPointerToTaintedMem(i8* %893)
  br i1 %894, label %_Dynamic_check.succeeded886, label %_Dynamic_check.failed885

_Dynamic_check.succeeded886:                      ; preds = %_Dynamic_check.succeeded884
  %call887 = call %Tstruct.json_array_t_t* @json_object_dotget_array(%Tstruct.json_object_t_t* %891, i8* %893)
  store %Tstruct.json_array_t_t* %call887, %Tstruct.json_array_t_t** %array, align 4
  %call888 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 276, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.98, i64 0, i64 0))
  %895 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %cmp889 = icmp ne %Tstruct.json_array_t_t* %895, null
  br i1 %cmp889, label %if.then891, label %if.else894

if.then891:                                       ; preds = %_Dynamic_check.succeeded886
  %call892 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %896 = load i32, i32* @tests_passed, align 4
  %inc893 = add nsw i32 %896, 1
  store i32 %inc893, i32* @tests_passed, align 4
  br label %if.end897

_Dynamic_check.failed883:                         ; preds = %if.end881
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed885:                         ; preds = %_Dynamic_check.succeeded884
  call void @llvm.trap() #6
  unreachable

if.else894:                                       ; preds = %_Dynamic_check.succeeded886
  %call895 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %897 = load i32, i32* @tests_failed, align 4
  %inc896 = add nsw i32 %897, 1
  store i32 %inc896, i32* @tests_failed, align 4
  br label %if.end897

if.end897:                                        ; preds = %if.else894, %if.then891
  %call898 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 277, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.99, i64 0, i64 0))
  %898 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %899 = ptrtoint %Tstruct.json_array_t_t* %898 to i32
  %900 = call i8* @c_fetch_pointer_from_offset(i32 %899)
  %901 = call i1 @c_isTaintedPointerToTaintedMem(i8* %900)
  br i1 %901, label %_Dynamic_check.succeeded900, label %_Dynamic_check.failed899

_Dynamic_check.succeeded900:                      ; preds = %if.end897
  %902 = bitcast i8* %900 to %Tstruct.json_array_t_t*
  %call901 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %902)
  %cmp902 = icmp ugt i64 %call901, 1
  br i1 %cmp902, label %if.then904, label %if.else907

if.then904:                                       ; preds = %_Dynamic_check.succeeded900
  %call905 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %903 = load i32, i32* @tests_passed, align 4
  %inc906 = add nsw i32 %903, 1
  store i32 %inc906, i32* @tests_passed, align 4
  br label %if.end910

_Dynamic_check.failed899:                         ; preds = %if.end897
  call void @llvm.trap() #6
  unreachable

if.else907:                                       ; preds = %_Dynamic_check.succeeded900
  %call908 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %904 = load i32, i32* @tests_failed, align 4
  %inc909 = add nsw i32 %904, 1
  store i32 %inc909, i32* @tests_failed, align 4
  br label %if.end910

if.end910:                                        ; preds = %if.else907, %if.then904
  %905 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %cmp911 = icmp ne %Tstruct.json_array_t_t* %905, null
  br i1 %cmp911, label %land.lhs.true913, label %if.end966

land.lhs.true913:                                 ; preds = %if.end910
  %906 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %907 = ptrtoint %Tstruct.json_array_t_t* %906 to i32
  %908 = call i8* @c_fetch_pointer_from_offset(i32 %907)
  %909 = call i1 @c_isTaintedPointerToTaintedMem(i8* %908)
  br i1 %909, label %_Dynamic_check.succeeded915, label %_Dynamic_check.failed914

_Dynamic_check.succeeded915:                      ; preds = %land.lhs.true913
  %910 = bitcast i8* %908 to %Tstruct.json_array_t_t*
  %call916 = call i64 @json_array_get_count(%Tstruct.json_array_t_t* %910)
  %cmp917 = icmp ugt i64 %call916, 1
  br i1 %cmp917, label %if.then919, label %if.end966

if.then919:                                       ; preds = %_Dynamic_check.succeeded915
  %911 = load i8*, i8** %value_type, align 4
  %912 = ptrtoint i8* %911 to i64
  %913 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %912)
  %914 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.79 to i64))
  %call920 = call i8* @t_strcpy(i8* %913, i8* %914)
  %call921 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 280, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.100, i64 0, i64 0))
  %915 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %916 = ptrtoint %Tstruct.json_array_t_t* %915 to i32
  %917 = call i8* @c_fetch_pointer_from_offset(i32 %916)
  %918 = call i1 @c_isTaintedPointerToTaintedMem(i8* %917)
  br i1 %918, label %_Dynamic_check.succeeded923, label %_Dynamic_check.failed922

_Dynamic_check.succeeded923:                      ; preds = %if.then919
  %919 = bitcast i8* %917 to %Tstruct.json_array_t_t*
  %call924 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %919, i64 0)
  %tobool925 = icmp ne i8* %call924, null
  br i1 %tobool925, label %land.lhs.true926, label %cond.false935

land.lhs.true926:                                 ; preds = %_Dynamic_check.succeeded923
  %920 = load i8*, i8** %value_type, align 4
  %tobool927 = icmp ne i8* %920, null
  br i1 %tobool927, label %cond.true928, label %cond.false935

cond.true928:                                     ; preds = %land.lhs.true926
  %921 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %922 = ptrtoint %Tstruct.json_array_t_t* %921 to i32
  %923 = call i8* @c_fetch_pointer_from_offset(i32 %922)
  %924 = call i1 @c_isTaintedPointerToTaintedMem(i8* %923)
  br i1 %924, label %_Dynamic_check.succeeded930, label %_Dynamic_check.failed929

_Dynamic_check.succeeded930:                      ; preds = %cond.true928
  %925 = bitcast i8* %923 to %Tstruct.json_array_t_t*
  %call931 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %925, i64 0)
  %926 = load i8*, i8** %value_type, align 4
  %927 = ptrtoint i8* %call931 to i64
  %928 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %927)
  %929 = ptrtoint i8* %926 to i64
  %930 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %929)
  %call932 = call i32 @t_strcmp(i8* %928, i8* %930)
  %cmp933 = icmp eq i32 %call932, 0
  br i1 %cmp933, label %if.then936, label %if.else939

cond.false935:                                    ; preds = %land.lhs.true926, %_Dynamic_check.succeeded923
  br i1 false, label %if.then936, label %if.else939

if.then936:                                       ; preds = %cond.false935, %_Dynamic_check.succeeded930
  %call937 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %931 = load i32, i32* @tests_passed, align 4
  %inc938 = add nsw i32 %931, 1
  store i32 %inc938, i32* @tests_passed, align 4
  br label %if.end942

_Dynamic_check.failed914:                         ; preds = %land.lhs.true913
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed922:                         ; preds = %if.then919
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed929:                         ; preds = %cond.true928
  call void @llvm.trap() #6
  unreachable

if.else939:                                       ; preds = %cond.false935, %_Dynamic_check.succeeded930
  %call940 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %932 = load i32, i32* @tests_failed, align 4
  %inc941 = add nsw i32 %932, 1
  store i32 %inc941, i32* @tests_failed, align 4
  br label %if.end942

if.end942:                                        ; preds = %if.else939, %if.then936
  %933 = load i8*, i8** %value_type, align 4
  %934 = ptrtoint i8* %933 to i64
  %935 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %934)
  %936 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.81 to i64))
  %call943 = call i8* @t_strcpy(i8* %935, i8* %936)
  %call944 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 282, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.101, i64 0, i64 0))
  %937 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %938 = ptrtoint %Tstruct.json_array_t_t* %937 to i32
  %939 = call i8* @c_fetch_pointer_from_offset(i32 %938)
  %940 = call i1 @c_isTaintedPointerToTaintedMem(i8* %939)
  br i1 %940, label %_Dynamic_check.succeeded946, label %_Dynamic_check.failed945

_Dynamic_check.succeeded946:                      ; preds = %if.end942
  %941 = bitcast i8* %939 to %Tstruct.json_array_t_t*
  %call947 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %941, i64 1)
  %tobool948 = icmp ne i8* %call947, null
  br i1 %tobool948, label %land.lhs.true949, label %cond.false958

land.lhs.true949:                                 ; preds = %_Dynamic_check.succeeded946
  %942 = load i8*, i8** %value_type, align 4
  %tobool950 = icmp ne i8* %942, null
  br i1 %tobool950, label %cond.true951, label %cond.false958

cond.true951:                                     ; preds = %land.lhs.true949
  %943 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %944 = ptrtoint %Tstruct.json_array_t_t* %943 to i32
  %945 = call i8* @c_fetch_pointer_from_offset(i32 %944)
  %946 = call i1 @c_isTaintedPointerToTaintedMem(i8* %945)
  br i1 %946, label %_Dynamic_check.succeeded953, label %_Dynamic_check.failed952

_Dynamic_check.succeeded953:                      ; preds = %cond.true951
  %947 = bitcast i8* %945 to %Tstruct.json_array_t_t*
  %call954 = call i8* @json_array_get_string(%Tstruct.json_array_t_t* %947, i64 1)
  %948 = load i8*, i8** %value_type, align 4
  %949 = ptrtoint i8* %call954 to i64
  %950 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %949)
  %951 = ptrtoint i8* %948 to i64
  %952 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %951)
  %call955 = call i32 @t_strcmp(i8* %950, i8* %952)
  %cmp956 = icmp eq i32 %call955, 0
  br i1 %cmp956, label %if.then959, label %if.else962

cond.false958:                                    ; preds = %land.lhs.true949, %_Dynamic_check.succeeded946
  br i1 false, label %if.then959, label %if.else962

if.then959:                                       ; preds = %cond.false958, %_Dynamic_check.succeeded953
  %call960 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %953 = load i32, i32* @tests_passed, align 4
  %inc961 = add nsw i32 %953, 1
  store i32 %inc961, i32* @tests_passed, align 4
  br label %if.end965

_Dynamic_check.failed945:                         ; preds = %if.end942
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed952:                         ; preds = %cond.true951
  call void @llvm.trap() #6
  unreachable

if.else962:                                       ; preds = %cond.false958, %_Dynamic_check.succeeded953
  %call963 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %954 = load i32, i32* @tests_failed, align 4
  %inc964 = add nsw i32 %954, 1
  store i32 %inc964, i32* @tests_failed, align 4
  br label %if.end965

if.end965:                                        ; preds = %if.else962, %if.then959
  br label %if.end966

if.end966:                                        ; preds = %if.end965, %_Dynamic_check.succeeded915, %if.end910
  %955 = load i8*, i8** %value_type, align 4
  %956 = ptrtoint i8* %955 to i64
  %957 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %956)
  %958 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([19 x i8]* @.str.54 to i64))
  %call967 = call i8* @t_strcpy(i8* %957, i8* %958)
  %call968 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 285, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.88, i64 0, i64 0))
  %959 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %960 = load i8*, i8** %value_type, align 4
  %961 = ptrtoint %Tstruct.json_object_t_t* %959 to i32
  %962 = call i8* @c_fetch_pointer_from_offset(i32 %961)
  %963 = call i1 @c_isTaintedPointerToTaintedMem(i8* %962)
  br i1 %963, label %_Dynamic_check.succeeded970, label %_Dynamic_check.failed969

_Dynamic_check.succeeded970:                      ; preds = %if.end966
  %964 = bitcast i8* %962 to %Tstruct.json_object_t_t*
  %965 = ptrtoint i8* %960 to i32
  %966 = call i8* @c_fetch_pointer_from_offset(i32 %965)
  %967 = call i1 @c_isTaintedPointerToTaintedMem(i8* %966)
  br i1 %967, label %_Dynamic_check.succeeded972, label %_Dynamic_check.failed971

_Dynamic_check.succeeded972:                      ; preds = %_Dynamic_check.succeeded970
  %call973 = call i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t* %964, i8* %966)
  %cmp974 = icmp eq i32 %call973, 1
  br i1 %cmp974, label %if.then976, label %if.else979

if.then976:                                       ; preds = %_Dynamic_check.succeeded972
  %call977 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %968 = load i32, i32* @tests_passed, align 4
  %inc978 = add nsw i32 %968, 1
  store i32 %inc978, i32* @tests_passed, align 4
  br label %if.end982

_Dynamic_check.failed969:                         ; preds = %if.end966
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed971:                         ; preds = %_Dynamic_check.succeeded970
  call void @llvm.trap() #6
  unreachable

if.else979:                                       ; preds = %_Dynamic_check.succeeded972
  %call980 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %969 = load i32, i32* @tests_failed, align 4
  %inc981 = add nsw i32 %969, 1
  store i32 %inc981, i32* @tests_failed, align 4
  br label %if.end982

if.end982:                                        ; preds = %if.else979, %if.then976
  %970 = load i8*, i8** %value_type, align 4
  %971 = ptrtoint i8* %970 to i64
  %972 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %971)
  %973 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([5 x i8]* @.str.102 to i64))
  %call983 = call i8* @t_strcpy(i8* %972, i8* %973)
  %call984 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 288, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.103, i64 0, i64 0))
  %974 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %975 = load i8*, i8** %value_type, align 4
  %976 = ptrtoint %Tstruct.json_object_t_t* %974 to i32
  %977 = call i8* @c_fetch_pointer_from_offset(i32 %976)
  %978 = call i1 @c_isTaintedPointerToTaintedMem(i8* %977)
  br i1 %978, label %_Dynamic_check.succeeded986, label %_Dynamic_check.failed985

_Dynamic_check.succeeded986:                      ; preds = %if.end982
  %979 = bitcast i8* %977 to %Tstruct.json_object_t_t*
  %980 = ptrtoint i8* %975 to i32
  %981 = call i8* @c_fetch_pointer_from_offset(i32 %980)
  %982 = call i1 @c_isTaintedPointerToTaintedMem(i8* %981)
  br i1 %982, label %_Dynamic_check.succeeded988, label %_Dynamic_check.failed987

_Dynamic_check.succeeded988:                      ; preds = %_Dynamic_check.succeeded986
  %call989 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %979, i8* %981)
  %tobool990 = icmp ne i8* %call989, null
  br i1 %tobool990, label %land.lhs.true991, label %cond.false1001

land.lhs.true991:                                 ; preds = %_Dynamic_check.succeeded988
  br i1 true, label %cond.true992, label %cond.false1001

cond.true992:                                     ; preds = %land.lhs.true991
  %983 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %984 = load i8*, i8** %value_type, align 4
  %985 = ptrtoint %Tstruct.json_object_t_t* %983 to i32
  %986 = call i8* @c_fetch_pointer_from_offset(i32 %985)
  %987 = call i1 @c_isTaintedPointerToTaintedMem(i8* %986)
  br i1 %987, label %_Dynamic_check.succeeded994, label %_Dynamic_check.failed993

_Dynamic_check.succeeded994:                      ; preds = %cond.true992
  %988 = bitcast i8* %986 to %Tstruct.json_object_t_t*
  %989 = ptrtoint i8* %984 to i32
  %990 = call i8* @c_fetch_pointer_from_offset(i32 %989)
  %991 = call i1 @c_isTaintedPointerToTaintedMem(i8* %990)
  br i1 %991, label %_Dynamic_check.succeeded996, label %_Dynamic_check.failed995

_Dynamic_check.succeeded996:                      ; preds = %_Dynamic_check.succeeded994
  %call997 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %988, i8* %990)
  %992 = ptrtoint i8* %call997 to i64
  %993 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %992)
  %994 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.104 to i64))
  %call998 = call i32 @t_strcmp(i8* %993, i8* %994)
  %cmp999 = icmp eq i32 %call998, 0
  br i1 %cmp999, label %if.then1002, label %if.else1005

cond.false1001:                                   ; preds = %land.lhs.true991, %_Dynamic_check.succeeded988
  br i1 false, label %if.then1002, label %if.else1005

if.then1002:                                      ; preds = %cond.false1001, %_Dynamic_check.succeeded996
  %call1003 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %995 = load i32, i32* @tests_passed, align 4
  %inc1004 = add nsw i32 %995, 1
  store i32 %inc1004, i32* @tests_passed, align 4
  br label %if.end1008

_Dynamic_check.failed985:                         ; preds = %if.end982
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed987:                         ; preds = %_Dynamic_check.succeeded986
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed993:                         ; preds = %cond.true992
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed995:                         ; preds = %_Dynamic_check.succeeded994
  call void @llvm.trap() #6
  unreachable

if.else1005:                                      ; preds = %cond.false1001, %_Dynamic_check.succeeded996
  %call1006 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %996 = load i32, i32* @tests_failed, align 4
  %inc1007 = add nsw i32 %996, 1
  store i32 %inc1007, i32* @tests_failed, align 4
  br label %if.end1008

if.end1008:                                       ; preds = %if.else1005, %if.then1002
  %997 = load i8*, i8** %value_type, align 4
  %998 = ptrtoint i8* %997 to i64
  %999 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %998)
  %1000 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([3 x i8]* @.str.105 to i64))
  %call1009 = call i8* @t_strcpy(i8* %999, i8* %1000)
  %call1010 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 290, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.103, i64 0, i64 0))
  %1001 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1002 = load i8*, i8** %value_type, align 4
  %1003 = ptrtoint %Tstruct.json_object_t_t* %1001 to i32
  %1004 = call i8* @c_fetch_pointer_from_offset(i32 %1003)
  %1005 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1004)
  br i1 %1005, label %_Dynamic_check.succeeded1012, label %_Dynamic_check.failed1011

_Dynamic_check.succeeded1012:                     ; preds = %if.end1008
  %1006 = bitcast i8* %1004 to %Tstruct.json_object_t_t*
  %1007 = ptrtoint i8* %1002 to i32
  %1008 = call i8* @c_fetch_pointer_from_offset(i32 %1007)
  %1009 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1008)
  br i1 %1009, label %_Dynamic_check.succeeded1014, label %_Dynamic_check.failed1013

_Dynamic_check.succeeded1014:                     ; preds = %_Dynamic_check.succeeded1012
  %call1015 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1006, i8* %1008)
  %tobool1016 = icmp ne i8* %call1015, null
  br i1 %tobool1016, label %land.lhs.true1017, label %cond.false1027

land.lhs.true1017:                                ; preds = %_Dynamic_check.succeeded1014
  br i1 true, label %cond.true1018, label %cond.false1027

cond.true1018:                                    ; preds = %land.lhs.true1017
  %1010 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1011 = load i8*, i8** %value_type, align 4
  %1012 = ptrtoint %Tstruct.json_object_t_t* %1010 to i32
  %1013 = call i8* @c_fetch_pointer_from_offset(i32 %1012)
  %1014 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1013)
  br i1 %1014, label %_Dynamic_check.succeeded1020, label %_Dynamic_check.failed1019

_Dynamic_check.succeeded1020:                     ; preds = %cond.true1018
  %1015 = bitcast i8* %1013 to %Tstruct.json_object_t_t*
  %1016 = ptrtoint i8* %1011 to i32
  %1017 = call i8* @c_fetch_pointer_from_offset(i32 %1016)
  %1018 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1017)
  br i1 %1018, label %_Dynamic_check.succeeded1022, label %_Dynamic_check.failed1021

_Dynamic_check.succeeded1022:                     ; preds = %_Dynamic_check.succeeded1020
  %call1023 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1015, i8* %1017)
  %1019 = ptrtoint i8* %call1023 to i64
  %1020 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1019)
  %1021 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([8 x i8]* @.str.104 to i64))
  %call1024 = call i32 @t_strcmp(i8* %1020, i8* %1021)
  %cmp1025 = icmp eq i32 %call1024, 0
  br i1 %cmp1025, label %if.then1028, label %if.else1031

cond.false1027:                                   ; preds = %land.lhs.true1017, %_Dynamic_check.succeeded1014
  br i1 false, label %if.then1028, label %if.else1031

if.then1028:                                      ; preds = %cond.false1027, %_Dynamic_check.succeeded1022
  %call1029 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1022 = load i32, i32* @tests_passed, align 4
  %inc1030 = add nsw i32 %1022, 1
  store i32 %inc1030, i32* @tests_passed, align 4
  br label %if.end1034

_Dynamic_check.failed1011:                        ; preds = %if.end1008
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1013:                        ; preds = %_Dynamic_check.succeeded1012
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1019:                        ; preds = %cond.true1018
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1021:                        ; preds = %_Dynamic_check.succeeded1020
  call void @llvm.trap() #6
  unreachable

if.else1031:                                      ; preds = %cond.false1027, %_Dynamic_check.succeeded1022
  %call1032 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1023 = load i32, i32* @tests_failed, align 4
  %inc1033 = add nsw i32 %1023, 1
  store i32 %inc1033, i32* @tests_failed, align 4
  br label %if.end1034

if.end1034:                                       ; preds = %if.else1031, %if.then1028
  %1024 = load i8*, i8** %value_type, align 4
  %1025 = ptrtoint i8* %1024 to i64
  %1026 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1025)
  %1027 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([4 x i8]* @.str.106 to i64))
  %call1035 = call i8* @t_strcpy(i8* %1026, i8* %1027)
  %call1036 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 292, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.107, i64 0, i64 0))
  %1028 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1029 = load i8*, i8** %value_type, align 4
  %1030 = ptrtoint %Tstruct.json_object_t_t* %1028 to i32
  %1031 = call i8* @c_fetch_pointer_from_offset(i32 %1030)
  %1032 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1031)
  br i1 %1032, label %_Dynamic_check.succeeded1038, label %_Dynamic_check.failed1037

_Dynamic_check.succeeded1038:                     ; preds = %if.end1034
  %1033 = bitcast i8* %1031 to %Tstruct.json_object_t_t*
  %1034 = ptrtoint i8* %1029 to i32
  %1035 = call i8* @c_fetch_pointer_from_offset(i32 %1034)
  %1036 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1035)
  br i1 %1036, label %_Dynamic_check.succeeded1040, label %_Dynamic_check.failed1039

_Dynamic_check.succeeded1040:                     ; preds = %_Dynamic_check.succeeded1038
  %call1041 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1033, i8* %1035)
  %tobool1042 = icmp ne i8* %call1041, null
  br i1 %tobool1042, label %land.lhs.true1043, label %cond.false1053

land.lhs.true1043:                                ; preds = %_Dynamic_check.succeeded1040
  br i1 true, label %cond.true1044, label %cond.false1053

cond.true1044:                                    ; preds = %land.lhs.true1043
  %1037 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1038 = load i8*, i8** %value_type, align 4
  %1039 = ptrtoint %Tstruct.json_object_t_t* %1037 to i32
  %1040 = call i8* @c_fetch_pointer_from_offset(i32 %1039)
  %1041 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1040)
  br i1 %1041, label %_Dynamic_check.succeeded1046, label %_Dynamic_check.failed1045

_Dynamic_check.succeeded1046:                     ; preds = %cond.true1044
  %1042 = bitcast i8* %1040 to %Tstruct.json_object_t_t*
  %1043 = ptrtoint i8* %1038 to i32
  %1044 = call i8* @c_fetch_pointer_from_offset(i32 %1043)
  %1045 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1044)
  br i1 %1045, label %_Dynamic_check.succeeded1048, label %_Dynamic_check.failed1047

_Dynamic_check.succeeded1048:                     ; preds = %_Dynamic_check.succeeded1046
  %call1049 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1042, i8* %1044)
  %1046 = ptrtoint i8* %call1049 to i64
  %1047 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1046)
  %1048 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([39 x i8]* @.str.108 to i64))
  %call1050 = call i32 @t_strcmp(i8* %1047, i8* %1048)
  %cmp1051 = icmp eq i32 %call1050, 0
  br i1 %cmp1051, label %if.then1054, label %if.else1057

cond.false1053:                                   ; preds = %land.lhs.true1043, %_Dynamic_check.succeeded1040
  br i1 false, label %if.then1054, label %if.else1057

if.then1054:                                      ; preds = %cond.false1053, %_Dynamic_check.succeeded1048
  %call1055 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1049 = load i32, i32* @tests_passed, align 4
  %inc1056 = add nsw i32 %1049, 1
  store i32 %inc1056, i32* @tests_passed, align 4
  br label %if.end1060

_Dynamic_check.failed1037:                        ; preds = %if.end1034
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1039:                        ; preds = %_Dynamic_check.succeeded1038
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1045:                        ; preds = %cond.true1044
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1047:                        ; preds = %_Dynamic_check.succeeded1046
  call void @llvm.trap() #6
  unreachable

if.else1057:                                      ; preds = %cond.false1053, %_Dynamic_check.succeeded1048
  %call1058 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1050 = load i32, i32* @tests_failed, align 4
  %inc1059 = add nsw i32 %1050, 1
  store i32 %inc1059, i32* @tests_failed, align 4
  br label %if.end1060

if.end1060:                                       ; preds = %if.else1057, %if.then1054
  %1051 = load i8*, i8** %value_type, align 4
  %1052 = ptrtoint i8* %1051 to i64
  %1053 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1052)
  %1054 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([14 x i8]* @.str.109 to i64))
  %call1061 = call i8* @t_strcpy(i8* %1053, i8* %1054)
  %call1062 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 294, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.110, i64 0, i64 0))
  %1055 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1056 = load i8*, i8** %value_type, align 4
  %1057 = ptrtoint %Tstruct.json_object_t_t* %1055 to i32
  %1058 = call i8* @c_fetch_pointer_from_offset(i32 %1057)
  %1059 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1058)
  br i1 %1059, label %_Dynamic_check.succeeded1064, label %_Dynamic_check.failed1063

_Dynamic_check.succeeded1064:                     ; preds = %if.end1060
  %1060 = bitcast i8* %1058 to %Tstruct.json_object_t_t*
  %1061 = ptrtoint i8* %1056 to i32
  %1062 = call i8* @c_fetch_pointer_from_offset(i32 %1061)
  %1063 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1062)
  br i1 %1063, label %_Dynamic_check.succeeded1066, label %_Dynamic_check.failed1065

_Dynamic_check.succeeded1066:                     ; preds = %_Dynamic_check.succeeded1064
  %call1067 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1060, i8* %1062)
  %tobool1068 = icmp ne i8* %call1067, null
  br i1 %tobool1068, label %land.lhs.true1069, label %cond.false1079

land.lhs.true1069:                                ; preds = %_Dynamic_check.succeeded1066
  br i1 true, label %cond.true1070, label %cond.false1079

cond.true1070:                                    ; preds = %land.lhs.true1069
  %1064 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1065 = load i8*, i8** %value_type, align 4
  %1066 = ptrtoint %Tstruct.json_object_t_t* %1064 to i32
  %1067 = call i8* @c_fetch_pointer_from_offset(i32 %1066)
  %1068 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1067)
  br i1 %1068, label %_Dynamic_check.succeeded1072, label %_Dynamic_check.failed1071

_Dynamic_check.succeeded1072:                     ; preds = %cond.true1070
  %1069 = bitcast i8* %1067 to %Tstruct.json_object_t_t*
  %1070 = ptrtoint i8* %1065 to i32
  %1071 = call i8* @c_fetch_pointer_from_offset(i32 %1070)
  %1072 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1071)
  br i1 %1072, label %_Dynamic_check.succeeded1074, label %_Dynamic_check.failed1073

_Dynamic_check.succeeded1074:                     ; preds = %_Dynamic_check.succeeded1072
  %call1075 = call i8* @json_object_get_string(%Tstruct.json_object_t_t* %1069, i8* %1071)
  %1073 = ptrtoint i8* %call1075 to i64
  %1074 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1073)
  %1075 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([6 x i8]* @.str.111 to i64))
  %call1076 = call i32 @t_strcmp(i8* %1074, i8* %1075)
  %cmp1077 = icmp eq i32 %call1076, 0
  br i1 %cmp1077, label %if.then1080, label %if.else1083

cond.false1079:                                   ; preds = %land.lhs.true1069, %_Dynamic_check.succeeded1066
  br i1 false, label %if.then1080, label %if.else1083

if.then1080:                                      ; preds = %cond.false1079, %_Dynamic_check.succeeded1074
  %call1081 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1076 = load i32, i32* @tests_passed, align 4
  %inc1082 = add nsw i32 %1076, 1
  store i32 %inc1082, i32* @tests_passed, align 4
  br label %if.end1086

_Dynamic_check.failed1063:                        ; preds = %if.end1060
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1065:                        ; preds = %_Dynamic_check.succeeded1064
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1071:                        ; preds = %cond.true1070
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1073:                        ; preds = %_Dynamic_check.succeeded1072
  call void @llvm.trap() #6
  unreachable

if.else1083:                                      ; preds = %cond.false1079, %_Dynamic_check.succeeded1074
  %call1084 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1077 = load i32, i32* @tests_failed, align 4
  %inc1085 = add nsw i32 %1077, 1
  store i32 %inc1085, i32* @tests_failed, align 4
  br label %if.end1086

if.end1086:                                       ; preds = %if.else1083, %if.then1080
  %1078 = load i8*, i8** %value_type, align 4
  %1079 = ptrtoint i8* %1078 to i64
  %1080 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1079)
  %1081 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.112 to i64))
  %call1087 = call i8* @t_strcpy(i8* %1080, i8* %1081)
  %call1088 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 297, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.113, i64 0, i64 0))
  %1082 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1083 = load i8*, i8** %value_type, align 4
  %1084 = ptrtoint %Tstruct.json_object_t_t* %1082 to i32
  %1085 = call i8* @c_fetch_pointer_from_offset(i32 %1084)
  %1086 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1085)
  br i1 %1086, label %_Dynamic_check.succeeded1090, label %_Dynamic_check.failed1089

_Dynamic_check.succeeded1090:                     ; preds = %if.end1086
  %1087 = bitcast i8* %1085 to %Tstruct.json_object_t_t*
  %1088 = ptrtoint i8* %1083 to i32
  %1089 = call i8* @c_fetch_pointer_from_offset(i32 %1088)
  %1090 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1089)
  br i1 %1090, label %_Dynamic_check.succeeded1092, label %_Dynamic_check.failed1091

_Dynamic_check.succeeded1092:                     ; preds = %_Dynamic_check.succeeded1090
  %call1093 = call %Tstruct.json_object_t_t* @json_object_get_object(%Tstruct.json_object_t_t* %1087, i8* %1089)
  %cmp1094 = icmp ne %Tstruct.json_object_t_t* %call1093, null
  br i1 %cmp1094, label %if.then1096, label %if.else1099

if.then1096:                                      ; preds = %_Dynamic_check.succeeded1092
  %call1097 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1091 = load i32, i32* @tests_passed, align 4
  %inc1098 = add nsw i32 %1091, 1
  store i32 %inc1098, i32* @tests_passed, align 4
  br label %if.end1102

_Dynamic_check.failed1089:                        ; preds = %if.end1086
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1091:                        ; preds = %_Dynamic_check.succeeded1090
  call void @llvm.trap() #6
  unreachable

if.else1099:                                      ; preds = %_Dynamic_check.succeeded1092
  %call1100 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1092 = load i32, i32* @tests_failed, align 4
  %inc1101 = add nsw i32 %1092, 1
  store i32 %inc1101, i32* @tests_failed, align 4
  br label %if.end1102

if.end1102:                                       ; preds = %if.else1099, %if.then1096
  %1093 = load i8*, i8** %value_type, align 4
  %1094 = ptrtoint i8* %1093 to i64
  %1095 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1094)
  %1096 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([12 x i8]* @.str.114 to i64))
  %call1103 = call i8* @t_strcpy(i8* %1095, i8* %1096)
  %call1104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 299, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.115, i64 0, i64 0))
  %1097 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1098 = load i8*, i8** %value_type, align 4
  %1099 = ptrtoint %Tstruct.json_object_t_t* %1097 to i32
  %1100 = call i8* @c_fetch_pointer_from_offset(i32 %1099)
  %1101 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1100)
  br i1 %1101, label %_Dynamic_check.succeeded1106, label %_Dynamic_check.failed1105

_Dynamic_check.succeeded1106:                     ; preds = %if.end1102
  %1102 = bitcast i8* %1100 to %Tstruct.json_object_t_t*
  %1103 = ptrtoint i8* %1098 to i32
  %1104 = call i8* @c_fetch_pointer_from_offset(i32 %1103)
  %1105 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1104)
  br i1 %1105, label %_Dynamic_check.succeeded1108, label %_Dynamic_check.failed1107

_Dynamic_check.succeeded1108:                     ; preds = %_Dynamic_check.succeeded1106
  %call1109 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %1102, i8* %1104)
  %cmp1110 = icmp ne %Tstruct.json_array_t_t* %call1109, null
  br i1 %cmp1110, label %if.then1112, label %if.else1115

if.then1112:                                      ; preds = %_Dynamic_check.succeeded1108
  %call1113 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1106 = load i32, i32* @tests_passed, align 4
  %inc1114 = add nsw i32 %1106, 1
  store i32 %inc1114, i32* @tests_passed, align 4
  br label %if.end1118

_Dynamic_check.failed1105:                        ; preds = %if.end1102
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1107:                        ; preds = %_Dynamic_check.succeeded1106
  call void @llvm.trap() #6
  unreachable

if.else1115:                                      ; preds = %_Dynamic_check.succeeded1108
  %call1116 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1107 = load i32, i32* @tests_failed, align 4
  %inc1117 = add nsw i32 %1107, 1
  store i32 %inc1117, i32* @tests_failed, align 4
  br label %if.end1118

if.end1118:                                       ; preds = %if.else1115, %if.then1112
  %call1119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 300, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.116, i64 0, i64 0))
  %1108 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1109 = ptrtoint %Tstruct.json_object_t_t* %1108 to i32
  %1110 = call i8* @c_fetch_pointer_from_offset(i32 %1109)
  %1111 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1110)
  br i1 %1111, label %_Dynamic_check.succeeded1121, label %_Dynamic_check.failed1120

_Dynamic_check.succeeded1121:                     ; preds = %if.end1118
  %1112 = bitcast i8* %1110 to %Tstruct.json_object_t_t*
  %call1122 = call %Tstruct.json_value_t_t* @json_object_get_wrapping_value(%Tstruct.json_object_t_t* %1112)
  %1113 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %cmp1123 = icmp eq %Tstruct.json_value_t_t* %call1122, %1113
  br i1 %cmp1123, label %if.then1125, label %if.else1128

if.then1125:                                      ; preds = %_Dynamic_check.succeeded1121
  %call1126 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1114 = load i32, i32* @tests_passed, align 4
  %inc1127 = add nsw i32 %1114, 1
  store i32 %inc1127, i32* @tests_passed, align 4
  br label %if.end1131

_Dynamic_check.failed1120:                        ; preds = %if.end1118
  call void @llvm.trap() #6
  unreachable

if.else1128:                                      ; preds = %_Dynamic_check.succeeded1121
  %call1129 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1115 = load i32, i32* @tests_failed, align 4
  %inc1130 = add nsw i32 %1115, 1
  store i32 %inc1130, i32* @tests_failed, align 4
  br label %if.end1131

if.end1131:                                       ; preds = %if.else1128, %if.then1125
  %1116 = load i8*, i8** %value_type, align 4
  %1117 = ptrtoint i8* %1116 to i64
  %1118 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1117)
  %1119 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.23 to i64))
  %call1132 = call i8* @t_strcpy(i8* %1118, i8* %1119)
  %1120 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1121 = load i8*, i8** %value_type, align 4
  %1122 = ptrtoint %Tstruct.json_object_t_t* %1120 to i32
  %1123 = call i8* @c_fetch_pointer_from_offset(i32 %1122)
  %1124 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1123)
  br i1 %1124, label %_Dynamic_check.succeeded1134, label %_Dynamic_check.failed1133

_Dynamic_check.succeeded1134:                     ; preds = %if.end1131
  %1125 = bitcast i8* %1123 to %Tstruct.json_object_t_t*
  %1126 = ptrtoint i8* %1121 to i32
  %1127 = call i8* @c_fetch_pointer_from_offset(i32 %1126)
  %1128 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1127)
  br i1 %1128, label %_Dynamic_check.succeeded1136, label %_Dynamic_check.failed1135

_Dynamic_check.succeeded1136:                     ; preds = %_Dynamic_check.succeeded1134
  %call1137 = call %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t* %1125, i8* %1127)
  store %Tstruct.json_array_t_t* %call1137, %Tstruct.json_array_t_t** %array, align 4
  %1129 = load i8*, i8** %value_type, align 4
  %1130 = ptrtoint i8* %1129 to i64
  %1131 = call i8* @c_ConditionalTaintedOff2Ptr(i64 %1130)
  %1132 = call i8* @c_ConditionalTaintedOff2Ptr(i64 ptrtoint ([13 x i8]* @.str.23 to i64))
  %call1138 = call i8* @t_strcpy(i8* %1131, i8* %1132)
  %1133 = load %Tstruct.json_object_t_t*, %Tstruct.json_object_t_t** %root_object, align 4
  %1134 = load i8*, i8** %value_type, align 4
  %1135 = ptrtoint %Tstruct.json_object_t_t* %1133 to i32
  %1136 = call i8* @c_fetch_pointer_from_offset(i32 %1135)
  %1137 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1136)
  br i1 %1137, label %_Dynamic_check.succeeded1140, label %_Dynamic_check.failed1139

_Dynamic_check.succeeded1140:                     ; preds = %_Dynamic_check.succeeded1136
  %1138 = bitcast i8* %1136 to %Tstruct.json_object_t_t*
  %1139 = ptrtoint i8* %1134 to i32
  %1140 = call i8* @c_fetch_pointer_from_offset(i32 %1139)
  %1141 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1140)
  br i1 %1141, label %_Dynamic_check.succeeded1142, label %_Dynamic_check.failed1141

_Dynamic_check.succeeded1142:                     ; preds = %_Dynamic_check.succeeded1140
  %call1143 = call %Tstruct.json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t* %1138, i8* %1140)
  store %Tstruct.json_value_t_t* %call1143, %Tstruct.json_value_t_t** %array_value, align 4
  %call1144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 305, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.117, i64 0, i64 0))
  %1142 = load %Tstruct.json_array_t_t*, %Tstruct.json_array_t_t** %array, align 4
  %1143 = ptrtoint %Tstruct.json_array_t_t* %1142 to i32
  %1144 = call i8* @c_fetch_pointer_from_offset(i32 %1143)
  %1145 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1144)
  br i1 %1145, label %_Dynamic_check.succeeded1146, label %_Dynamic_check.failed1145

_Dynamic_check.succeeded1146:                     ; preds = %_Dynamic_check.succeeded1142
  %1146 = bitcast i8* %1144 to %Tstruct.json_array_t_t*
  %call1147 = call %Tstruct.json_value_t_t* @json_array_get_wrapping_value(%Tstruct.json_array_t_t* %1146)
  %1147 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %array_value, align 4
  %cmp1148 = icmp eq %Tstruct.json_value_t_t* %call1147, %1147
  br i1 %cmp1148, label %if.then1150, label %if.else1153

if.then1150:                                      ; preds = %_Dynamic_check.succeeded1146
  %call1151 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1148 = load i32, i32* @tests_passed, align 4
  %inc1152 = add nsw i32 %1148, 1
  store i32 %inc1152, i32* @tests_passed, align 4
  br label %if.end1156

_Dynamic_check.failed1133:                        ; preds = %if.end1131
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1135:                        ; preds = %_Dynamic_check.succeeded1134
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1139:                        ; preds = %_Dynamic_check.succeeded1136
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1141:                        ; preds = %_Dynamic_check.succeeded1140
  call void @llvm.trap() #6
  unreachable

_Dynamic_check.failed1145:                        ; preds = %_Dynamic_check.succeeded1142
  call void @llvm.trap() #6
  unreachable

if.else1153:                                      ; preds = %_Dynamic_check.succeeded1146
  %call1154 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1149 = load i32, i32* @tests_failed, align 4
  %inc1155 = add nsw i32 %1149, 1
  store i32 %inc1155, i32* @tests_failed, align 4
  br label %if.end1156

if.end1156:                                       ; preds = %if.else1153, %if.then1150
  %call1157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 306, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.118, i64 0, i64 0))
  %1150 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %array_value, align 4
  %1151 = ptrtoint %Tstruct.json_value_t_t* %1150 to i32
  %1152 = call i8* @c_fetch_pointer_from_offset(i32 %1151)
  %1153 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1152)
  br i1 %1153, label %_Dynamic_check.succeeded1159, label %_Dynamic_check.failed1158

_Dynamic_check.succeeded1159:                     ; preds = %if.end1156
  %1154 = bitcast i8* %1152 to %Tstruct.json_value_t_t*
  %call1160 = call %Tstruct.json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t* %1154)
  %1155 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %cmp1161 = icmp eq %Tstruct.json_value_t_t* %call1160, %1155
  br i1 %cmp1161, label %if.then1163, label %if.else1166

if.then1163:                                      ; preds = %_Dynamic_check.succeeded1159
  %call1164 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1156 = load i32, i32* @tests_passed, align 4
  %inc1165 = add nsw i32 %1156, 1
  store i32 %inc1165, i32* @tests_passed, align 4
  br label %if.end1169

_Dynamic_check.failed1158:                        ; preds = %if.end1156
  call void @llvm.trap() #6
  unreachable

if.else1166:                                      ; preds = %_Dynamic_check.succeeded1159
  %call1167 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1157 = load i32, i32* @tests_failed, align 4
  %inc1168 = add nsw i32 %1157, 1
  store i32 %inc1168, i32* @tests_failed, align 4
  br label %if.end1169

if.end1169:                                       ; preds = %if.else1166, %if.then1163
  %call1170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 307, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.119, i64 0, i64 0))
  %1158 = load %Tstruct.json_value_t_t*, %Tstruct.json_value_t_t** %root_value.addr, align 4
  %1159 = ptrtoint %Tstruct.json_value_t_t* %1158 to i32
  %1160 = call i8* @c_fetch_pointer_from_offset(i32 %1159)
  %1161 = call i1 @c_isTaintedPointerToTaintedMem(i8* %1160)
  br i1 %1161, label %_Dynamic_check.succeeded1172, label %_Dynamic_check.failed1171

_Dynamic_check.succeeded1172:                     ; preds = %if.end1169
  %1162 = bitcast i8* %1160 to %Tstruct.json_value_t_t*
  %call1173 = call %Tstruct.json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t* %1162)
  %cmp1174 = icmp eq %Tstruct.json_value_t_t* %call1173, null
  br i1 %cmp1174, label %if.then1176, label %if.else1179

if.then1176:                                      ; preds = %_Dynamic_check.succeeded1172
  %call1177 = call i32 @puts(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %1163 = load i32, i32* @tests_passed, align 4
  %inc1178 = add nsw i32 %1163, 1
  store i32 %inc1178, i32* @tests_passed, align 4
  br label %if.end1182

_Dynamic_check.failed1171:                        ; preds = %if.end1169
  call void @llvm.trap() #6
  unreachable

if.else1179:                                      ; preds = %_Dynamic_check.succeeded1172
  %call1180 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %1164 = load i32, i32* @tests_failed, align 4
  %inc1181 = add nsw i32 %1164, 1
  store i32 %inc1181, i32* @tests_failed, align 4
  br label %if.end1182

if.end1182:                                       ; preds = %if.else1179, %if.then1176
  ret void
}

declare dso_local i32 @json_value_get_type(%Tstruct.json_value_t_t*) #1

declare dso_local %Tstruct.json_object_t_t* @json_value_get_object(%Tstruct.json_value_t_t*) #1

declare dso_local i8* @t_strcpy(i8*, i8*) #1

declare i8* @c_ConditionalTaintedOff2Ptr(i64)

declare dso_local i32 @json_object_has_value(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @json_object_has_value_of_type(%Tstruct.json_object_t_t*, i8*, i32) #1

declare dso_local i32 @json_object_dothas_value(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @json_object_dothas_value_of_type(%Tstruct.json_object_t_t*, i8*, i32) #1

declare dso_local i8* @json_object_get_string(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @t_strcmp(i8*, i8*) #1

declare dso_local double @json_object_get_number(%Tstruct.json_object_t_t*, i8*) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

declare dso_local i32 @json_object_get_boolean(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_value_t_t* @json_object_get_value(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_array_t_t* @json_object_get_array(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i64 @json_array_get_count(%Tstruct.json_array_t_t*) #1

declare dso_local i8* @json_array_get_string(%Tstruct.json_array_t_t*, i64) #1

declare dso_local double @json_array_get_number(%Tstruct.json_array_t_t*, i64) #1

declare dso_local i8* @json_object_dotget_string(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @json_object_dotget_boolean(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_value_t_t* @json_object_dotget_value(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local double @json_object_dotget_number(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_array_t_t* @json_object_dotget_array(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_object_t_t* @json_object_get_object(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_value_t_t* @json_object_get_wrapping_value(%Tstruct.json_object_t_t*) #1

declare dso_local %Tstruct.json_value_t_t* @json_array_get_wrapping_value(%Tstruct.json_array_t_t*) #1

declare dso_local %Tstruct.json_value_t_t* @json_value_get_parent(%Tstruct.json_value_t_t*) #1

declare dso_local i8* @json_string(%Tstruct.json_value_t_t*) #1

declare dso_local i32 @t_printf(i8*, ...) #1

declare dso_local %Tstruct.json_value_t_t* @json_value_deep_copy(%Tstruct.json_value_t_t*) #1

; Function Attrs: tainted
declare dso_local %Tstruct.json_value_t_t* @json_value_init_object() #4

declare dso_local i32 @json_object_set_string(%Tstruct.json_object_t_t*, i8*, i8*) #1

declare dso_local i32 @json_object_set_number(%Tstruct.json_object_t_t*, i8*, double) #1

declare dso_local i32 @json_object_set_boolean(%Tstruct.json_object_t_t*, i8*, i32) #1

declare dso_local i32 @json_object_set_value(%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*) #1

; Function Attrs: tainted
declare dso_local %Tstruct.json_value_t_t* @json_value_init_array() #4

declare dso_local i32 @json_array_append_string(%Tstruct.json_array_t_t*, i8*) #1

declare dso_local i32 @json_array_replace_string(%Tstruct.json_array_t_t*, i64, i8*) #1

declare dso_local i32 @json_object_dotset_string(%Tstruct.json_object_t_t*, i8*, i8*) #1

declare dso_local i32 @json_object_dotremove(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local i32 @json_object_dotset_value(%Tstruct.json_object_t_t*, i8*, %Tstruct.json_value_t_t*) #1

declare dso_local i32 @json_array_append_value(%Tstruct.json_array_t_t*, %Tstruct.json_value_t_t*) #1

declare dso_local i32 @json_array_replace_value(%Tstruct.json_array_t_t*, i64, %Tstruct.json_value_t_t*) #1

declare dso_local i32 @json_array_remove(%Tstruct.json_array_t_t*, i64) #1

; Function Attrs: tainted
declare dso_local %Tstruct.json_value_t_t* @json_value_init_null() #4

declare dso_local i32 @json_object_remove(%Tstruct.json_object_t_t*, i8*) #1

declare dso_local %Tstruct.json_array_t_t* @json_array(%Tstruct.json_value_t_t*) #1

attributes #0 = { noinline nounwind optnone tainted uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { tainted "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (https://github.com/arunkumarbhattar/CheckCBox_Compiler.git 85aa358f198b011a628ffb9cf22e5e52423094c8)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
