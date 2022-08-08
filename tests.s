	.text
	.file	"tests.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movq	counted_malloc, %rdi
	movq	counted_free, %rsi
	callq	json_set_allocation_functions
	callq	test_suite_1
	callq	test_suite_2_no_comments
	callq	test_suite_2_with_comments
	callq	test_suite_3
	callq	test_suite_4
	callq	test_suite_5
	movl	tests_failed, %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movl	tests_passed, %esi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	test_suite_1                    # -- Begin function test_suite_1
	.p2align	4, 0x90
	.type	test_suite_1,@function
test_suite_1:                           # @test_suite_1
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$19, %edi
	callq	string_tainted_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.2, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$111, %esi
	movabsq	$.L.str.4, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_file
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB1_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_3
.LBB1_2:                                # %if.else
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_3:                                # %if.end
	movabsq	$.L.str.3, %rdi
	movl	$115, %esi
	movabsq	$.L.str.7, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	json_serialize_to_string
	movq	%rax, %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB1_5
# %bb.4:                                # %if.then11
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_6
.LBB1_5:                                # %if.else14
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_6:                                # %if.end17
	movabsq	$.L.str.3, %rdi
	movl	$116, %esi
	movabsq	$.L.str.8, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	json_serialize_to_string_pretty
	movq	%rax, %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB1_8
# %bb.7:                                # %if.then23
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_9
.LBB1_8:                                # %if.else26
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_9:                                # %if.end29
	cmpq	$0, -8(%rbp)
	je	.LBB1_11
# %bb.10:                               # %if.then31
	movq	-8(%rbp), %rdi
	callq	json_value_free
.LBB1_11:                               # %if.end32
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.9, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$119, %esi
	movabsq	$.L.str.10, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_file
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_13
# %bb.12:                               # %if.then37
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_14
.LBB1_13:                               # %if.else40
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_14:                               # %if.end43
	cmpq	$0, -8(%rbp)
	je	.LBB1_16
# %bb.15:                               # %if.then45
	movq	-8(%rbp), %rdi
	callq	json_value_free
.LBB1_16:                               # %if.end46
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.11, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$123, %esi
	movabsq	$.L.str.4, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_file
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB1_18
# %bb.17:                               # %if.then51
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_19
.LBB1_18:                               # %if.else54
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_19:                               # %if.end57
	movabsq	$.L.str.3, %rdi
	movl	$124, %esi
	movabsq	$.L.str.7, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	json_serialize_to_string
	movq	%rax, %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB1_21
# %bb.20:                               # %if.then63
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_22
.LBB1_21:                               # %if.else66
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_22:                               # %if.end69
	movabsq	$.L.str.3, %rdi
	movl	$125, %esi
	movabsq	$.L.str.8, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	json_serialize_to_string_pretty
	movq	%rax, %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB1_24
# %bb.23:                               # %if.then75
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_25
.LBB1_24:                               # %if.else78
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_25:                               # %if.end81
	cmpq	$0, -8(%rbp)
	je	.LBB1_27
# %bb.26:                               # %if.then83
	movq	-8(%rbp), %rdi
	callq	json_value_free
.LBB1_27:                               # %if.end84
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.2, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$129, %esi
	movabsq	$.L.str.12, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movabsq	$parse_value, %rsi
	callq	json_parse_file_with_comments
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB1_29
# %bb.28:                               # %if.then89
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_30
.LBB1_29:                               # %if.else92
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_30:                               # %if.end95
	movabsq	$.L.str.3, %rdi
	movl	$130, %esi
	movabsq	$.L.str.7, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	json_serialize_to_string
	movq	%rax, %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB1_32
# %bb.31:                               # %if.then101
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_33
.LBB1_32:                               # %if.else104
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_33:                               # %if.end107
	movabsq	$.L.str.3, %rdi
	movl	$131, %esi
	movabsq	$.L.str.8, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	json_serialize_to_string_pretty
	movq	%rax, %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB1_35
# %bb.34:                               # %if.then113
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_36
.LBB1_35:                               # %if.else116
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_36:                               # %if.end119
	cmpq	$0, -8(%rbp)
	je	.LBB1_38
# %bb.37:                               # %if.then121
	movq	-8(%rbp), %rdi
	callq	json_value_free
.LBB1_38:                               # %if.end122
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.9, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$135, %esi
	movabsq	$.L.str.13, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movabsq	$parse_value, %rsi
	callq	json_parse_file_with_comments
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	jne	.LBB1_40
# %bb.39:                               # %if.then127
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_41
.LBB1_40:                               # %if.else130
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_41:                               # %if.end133
	cmpq	$0, -8(%rbp)
	je	.LBB1_43
# %bb.42:                               # %if.then135
	movq	-8(%rbp), %rdi
	callq	json_value_free
.LBB1_43:                               # %if.end136
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.11, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$138, %esi
	movabsq	$.L.str.12, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movabsq	$parse_value, %rsi
	callq	json_parse_file_with_comments
	movq	%rax, -8(%rbp)
	cmpq	$0, %rax
	je	.LBB1_45
# %bb.44:                               # %if.then141
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_46
.LBB1_45:                               # %if.else144
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_46:                               # %if.end147
	movabsq	$.L.str.3, %rdi
	movl	$139, %esi
	movabsq	$.L.str.7, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	json_serialize_to_string
	movq	%rax, %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB1_48
# %bb.47:                               # %if.then153
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_49
.LBB1_48:                               # %if.else156
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_49:                               # %if.end159
	movabsq	$.L.str.3, %rdi
	movl	$140, %esi
	movabsq	$.L.str.8, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	json_serialize_to_string_pretty
	movq	%rax, %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	movq	-8(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB1_51
# %bb.50:                               # %if.then165
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB1_52
.LBB1_51:                               # %if.else168
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB1_52:                               # %if.end171
	cmpq	$0, -8(%rbp)
	je	.LBB1_54
# %bb.53:                               # %if.then173
	movq	-8(%rbp), %rdi
	callq	json_value_free
.LBB1_54:                               # %if.end174
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	test_suite_1, .Lfunc_end1-test_suite_1
	.cfi_endproc
                                        # -- End function
	.globl	test_suite_2_no_comments        # -- Begin function test_suite_2_no_comments
	.p2align	4, 0x90
	.type	test_suite_2_no_comments,@function
test_suite_2_no_comments:               # @test_suite_2_no_comments
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.119, %rsi
	callq	t_strcpy
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	json_parse_file
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	test_suite_2
	movabsq	$.L.str.3, %rdi
	movl	$318, %esi                      # imm = 0x13E
	movabsq	$.L.str.120, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	json_serialize_to_string
	movq	%rax, %rdi
	callq	json_parse_string
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB2_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB2_3
.LBB2_2:                                # %if.else
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB2_3:                                # %if.end
	movabsq	$.L.str.3, %rdi
	movl	$319, %esi                      # imm = 0x13F
	movabsq	$.L.str.121, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	json_serialize_to_string_pretty
	movq	%rax, %rdi
	callq	json_parse_string
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB2_5
# %bb.4:                                # %if.then15
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB2_6
.LBB2_5:                                # %if.else18
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB2_6:                                # %if.end21
	movq	-24(%rbp), %rdi
	callq	json_value_free
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	test_suite_2_no_comments, .Lfunc_end2-test_suite_2_no_comments
	.cfi_endproc
                                        # -- End function
	.globl	test_suite_2_with_comments      # -- Begin function test_suite_2_with_comments
	.p2align	4, 0x90
	.type	test_suite_2_with_comments,@function
test_suite_2_with_comments:             # @test_suite_2_with_comments
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	$0, -8(%rbp)
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.122, %rsi
	callq	t_strcpy
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	movabsq	$parse_value, %rsi
	callq	json_parse_file_with_comments
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	test_suite_2
	movabsq	$.L.str.3, %rdi
	movl	$330, %esi                      # imm = 0x14A
	movabsq	$.L.str.120, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	json_serialize_to_string
	movq	%rax, %rdi
	callq	json_parse_string
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB3_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB3_3
.LBB3_2:                                # %if.else
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB3_3:                                # %if.end
	movabsq	$.L.str.3, %rdi
	movl	$331, %esi                      # imm = 0x14B
	movabsq	$.L.str.121, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	json_serialize_to_string_pretty
	movq	%rax, %rdi
	callq	json_parse_string
	movq	-40(%rbp), %rdi                 # 8-byte Reload
	movq	%rax, %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB3_5
# %bb.4:                                # %if.then15
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB3_6
.LBB3_5:                                # %if.else18
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB3_6:                                # %if.end21
	movq	-24(%rbp), %rdi
	callq	json_value_free
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	test_suite_2_with_comments, .Lfunc_end3-test_suite_2_with_comments
	.cfi_endproc
                                        # -- End function
	.globl	test_suite_3                    # -- Begin function test_suite_3
	.p2align	4, 0x90
	.type	test_suite_3,@function
test_suite_3:                           # @test_suite_3
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	$0, -8(%rbp)
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -16(%rbp)
	movabsq	$.L.str.123, %rdi
	callq	puts
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.124, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$341, %esi                      # imm = 0x155
	movabsq	$.L.str.125, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	je	.LBB4_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_3
.LBB4_2:                                # %if.else
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_3:                                # %if.end
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.126, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$343, %esi                      # imm = 0x157
	movabsq	$.L.str.125, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	je	.LBB4_5
# %bb.4:                                # %if.then12
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_6
.LBB4_5:                                # %if.else15
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_6:                                # %if.end18
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.34, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$345, %esi                      # imm = 0x159
	movabsq	$.L.str.125, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	je	.LBB4_8
# %bb.7:                                # %if.then23
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_9
.LBB4_8:                                # %if.else26
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_9:                                # %if.end29
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.127, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$347, %esi                      # imm = 0x15B
	movabsq	$.L.str.125, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	je	.LBB4_11
# %bb.10:                               # %if.then34
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_12
.LBB4_11:                               # %if.else37
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_12:                               # %if.end40
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.128, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$349, %esi                      # imm = 0x15D
	movabsq	$.L.str.125, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	je	.LBB4_14
# %bb.13:                               # %if.then45
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_15
.LBB4_14:                               # %if.else48
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_15:                               # %if.end51
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.129, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$351, %esi                      # imm = 0x15F
	movabsq	$.L.str.125, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	je	.LBB4_17
# %bb.16:                               # %if.then56
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_18
.LBB4_17:                               # %if.else59
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_18:                               # %if.end62
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.130, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$353, %esi                      # imm = 0x161
	movabsq	$.L.str.125, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	je	.LBB4_20
# %bb.19:                               # %if.then67
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_21
.LBB4_20:                               # %if.else70
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_21:                               # %if.end73
	movabsq	$.L.str.131, %rdi
	callq	puts
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.132, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$357, %esi                      # imm = 0x165
	movabsq	$.L.str.133, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	callq	json_string
	cmpq	$0, %rax
	je	.LBB4_24
# %bb.22:                               # %land.lhs.true
	movb	$1, %al
	testb	$1, %al
	jne	.LBB4_23
	jmp	.LBB4_24
.LBB4_23:                               # %cond.true
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	callq	json_string
	movq	%rax, %rdi
	movabsq	$.L.str.134, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB4_25
	jmp	.LBB4_26
.LBB4_24:                               # %cond.false
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB4_25
	jmp	.LBB4_26
.LBB4_25:                               # %if.then83
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_27
.LBB4_26:                               # %if.else86
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_27:                               # %if.end89
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.135, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$359, %esi                      # imm = 0x167
	movabsq	$.L.str.136, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	callq	json_string
	cmpq	$0, %rax
	je	.LBB4_30
# %bb.28:                               # %land.lhs.true95
	movb	$1, %al
	testb	$1, %al
	jne	.LBB4_29
	jmp	.LBB4_30
.LBB4_29:                               # %cond.true96
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	callq	json_string
	movq	%rax, %rdi
	movabsq	$.L.str.137, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB4_31
	jmp	.LBB4_32
.LBB4_30:                               # %cond.false101
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB4_31
	jmp	.LBB4_32
.LBB4_31:                               # %if.then102
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_33
.LBB4_32:                               # %if.else105
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_33:                               # %if.end108
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.138, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$361, %esi                      # imm = 0x169
	movabsq	$.L.str.139, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	callq	json_string
	cmpq	$0, %rax
	je	.LBB4_36
# %bb.34:                               # %land.lhs.true114
	movb	$1, %al
	testb	$1, %al
	jne	.LBB4_35
	jmp	.LBB4_36
.LBB4_35:                               # %cond.true115
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	callq	json_string
	movq	%rax, %rdi
	movabsq	$.L.str.140, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB4_37
	jmp	.LBB4_38
.LBB4_36:                               # %cond.false120
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB4_37
	jmp	.LBB4_38
.LBB4_37:                               # %if.then121
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_39
.LBB4_38:                               # %if.else124
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_39:                               # %if.end127
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.141, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$363, %esi                      # imm = 0x16B
	movabsq	$.L.str.142, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	callq	json_string
	cmpq	$0, %rax
	je	.LBB4_42
# %bb.40:                               # %land.lhs.true133
	movb	$1, %al
	testb	$1, %al
	jne	.LBB4_41
	jmp	.LBB4_42
.LBB4_41:                               # %cond.true134
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	movq	%rax, %rdi
	callq	json_string
	movq	%rax, %rdi
	movabsq	$.L.str.143, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB4_43
	jmp	.LBB4_44
.LBB4_42:                               # %cond.false139
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB4_43
	jmp	.LBB4_44
.LBB4_43:                               # %if.then140
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_45
.LBB4_44:                               # %if.else143
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_45:                               # %if.end146
	movabsq	$.L.str.144, %rdi
	callq	puts
	movl	$0, malloc_count
	movabsq	$.L.str.3, %rdi
	movl	$367, %esi                      # imm = 0x16F
	movabsq	$.L.str.145, %rdx
	movb	$0, %al
	callq	printf
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_47
# %bb.46:                               # %if.then151
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_48
.LBB4_47:                               # %if.else154
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_48:                               # %if.end157
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.96, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$369, %esi                      # imm = 0x171
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_50
# %bb.49:                               # %if.then162
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_51
.LBB4_50:                               # %if.else165
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_51:                               # %if.end168
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.147, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$371, %esi                      # imm = 0x173
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_53
# %bb.52:                               # %if.then173
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_54
.LBB4_53:                               # %if.else176
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_54:                               # %if.end179
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.148, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$373, %esi                      # imm = 0x175
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_56
# %bb.55:                               # %if.then184
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_57
.LBB4_56:                               # %if.else187
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_57:                               # %if.end190
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.149, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$375, %esi                      # imm = 0x177
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_59
# %bb.58:                               # %if.then195
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_60
.LBB4_59:                               # %if.else198
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_60:                               # %if.end201
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.150, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$377, %esi                      # imm = 0x179
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_62
# %bb.61:                               # %if.then206
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_63
.LBB4_62:                               # %if.else209
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_63:                               # %if.end212
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.151, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$379, %esi                      # imm = 0x17B
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_65
# %bb.64:                               # %if.then217
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_66
.LBB4_65:                               # %if.else220
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_66:                               # %if.end223
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.152, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$381, %esi                      # imm = 0x17D
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_68
# %bb.67:                               # %if.then228
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_69
.LBB4_68:                               # %if.else231
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_69:                               # %if.end234
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.153, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$383, %esi                      # imm = 0x17F
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_71
# %bb.70:                               # %if.then239
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_72
.LBB4_71:                               # %if.else242
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_72:                               # %if.end245
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.154, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$385, %esi                      # imm = 0x181
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_74
# %bb.73:                               # %if.then250
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_75
.LBB4_74:                               # %if.else253
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_75:                               # %if.end256
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.155, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$387, %esi                      # imm = 0x183
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_77
# %bb.76:                               # %if.then261
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_78
.LBB4_77:                               # %if.else264
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_78:                               # %if.end267
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.156, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$389, %esi                      # imm = 0x185
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_80
# %bb.79:                               # %if.then272
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_81
.LBB4_80:                               # %if.else275
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_81:                               # %if.end278
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.157, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$391, %esi                      # imm = 0x187
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_83
# %bb.82:                               # %if.then283
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_84
.LBB4_83:                               # %if.else286
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_84:                               # %if.end289
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.158, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$393, %esi                      # imm = 0x189
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_86
# %bb.85:                               # %if.then294
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_87
.LBB4_86:                               # %if.else297
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_87:                               # %if.end300
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.159, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$395, %esi                      # imm = 0x18B
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_89
# %bb.88:                               # %if.then305
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_90
.LBB4_89:                               # %if.else308
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_90:                               # %if.end311
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.160, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$397, %esi                      # imm = 0x18D
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_92
# %bb.91:                               # %if.then316
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_93
.LBB4_92:                               # %if.else319
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_93:                               # %if.end322
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.161, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$399, %esi                      # imm = 0x18F
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_95
# %bb.94:                               # %if.then327
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_96
.LBB4_95:                               # %if.else330
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_96:                               # %if.end333
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.162, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$401, %esi                      # imm = 0x191
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_98
# %bb.97:                               # %if.then338
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_99
.LBB4_98:                               # %if.else341
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_99:                               # %if.end344
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.163, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$403, %esi                      # imm = 0x193
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_101
# %bb.100:                              # %if.then349
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_102
.LBB4_101:                              # %if.else352
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_102:                              # %if.end355
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.164, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$405, %esi                      # imm = 0x195
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_104
# %bb.103:                              # %if.then360
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_105
.LBB4_104:                              # %if.else363
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_105:                              # %if.end366
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.165, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$407, %esi                      # imm = 0x197
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_107
# %bb.106:                              # %if.then371
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_108
.LBB4_107:                              # %if.else374
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_108:                              # %if.end377
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.166, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$409, %esi                      # imm = 0x199
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_110
# %bb.109:                              # %if.then382
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_111
.LBB4_110:                              # %if.else385
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_111:                              # %if.end388
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.167, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$411, %esi                      # imm = 0x19B
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_113
# %bb.112:                              # %if.then393
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_114
.LBB4_113:                              # %if.else396
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_114:                              # %if.end399
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.168, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$413, %esi                      # imm = 0x19D
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_116
# %bb.115:                              # %if.then404
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_117
.LBB4_116:                              # %if.else407
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_117:                              # %if.end410
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.169, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$415, %esi                      # imm = 0x19F
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_119
# %bb.118:                              # %if.then415
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_120
.LBB4_119:                              # %if.else418
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_120:                              # %if.end421
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.170, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$417, %esi                      # imm = 0x1A1
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_122
# %bb.121:                              # %if.then426
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_123
.LBB4_122:                              # %if.else429
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_123:                              # %if.end432
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.171, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$419, %esi                      # imm = 0x1A3
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_125
# %bb.124:                              # %if.then437
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_126
.LBB4_125:                              # %if.else440
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_126:                              # %if.end443
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.172, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$421, %esi                      # imm = 0x1A5
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_128
# %bb.127:                              # %if.then448
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_129
.LBB4_128:                              # %if.else451
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_129:                              # %if.end454
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.173, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$423, %esi                      # imm = 0x1A7
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_131
# %bb.130:                              # %if.then459
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_132
.LBB4_131:                              # %if.else462
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_132:                              # %if.end465
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.174, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$425, %esi                      # imm = 0x1A9
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_134
# %bb.133:                              # %if.then470
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_135
.LBB4_134:                              # %if.else473
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_135:                              # %if.end476
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.175, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$427, %esi                      # imm = 0x1AB
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_137
# %bb.136:                              # %if.then481
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_138
.LBB4_137:                              # %if.else484
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_138:                              # %if.end487
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.176, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$429, %esi                      # imm = 0x1AD
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_140
# %bb.139:                              # %if.then492
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_141
.LBB4_140:                              # %if.else495
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_141:                              # %if.end498
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.177, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$431, %esi                      # imm = 0x1AF
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_143
# %bb.142:                              # %if.then503
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_144
.LBB4_143:                              # %if.else506
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_144:                              # %if.end509
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.178, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$433, %esi                      # imm = 0x1B1
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_146
# %bb.145:                              # %if.then514
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_147
.LBB4_146:                              # %if.else517
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_147:                              # %if.end520
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.179, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$435, %esi                      # imm = 0x1B3
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_149
# %bb.148:                              # %if.then525
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_150
.LBB4_149:                              # %if.else528
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_150:                              # %if.end531
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.180, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$437, %esi                      # imm = 0x1B5
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_152
# %bb.151:                              # %if.then536
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_153
.LBB4_152:                              # %if.else539
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_153:                              # %if.end542
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.181, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$439, %esi                      # imm = 0x1B7
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_155
# %bb.154:                              # %if.then547
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_156
.LBB4_155:                              # %if.else550
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_156:                              # %if.end553
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.182, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$441, %esi                      # imm = 0x1B9
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_158
# %bb.157:                              # %if.then558
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_159
.LBB4_158:                              # %if.else561
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_159:                              # %if.end564
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.183, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$443, %esi                      # imm = 0x1BB
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_161
# %bb.160:                              # %if.then569
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_162
.LBB4_161:                              # %if.else572
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_162:                              # %if.end575
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.184, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$445, %esi                      # imm = 0x1BD
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_164
# %bb.163:                              # %if.then580
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_165
.LBB4_164:                              # %if.else583
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_165:                              # %if.end586
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.185, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$447, %esi                      # imm = 0x1BF
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_167
# %bb.166:                              # %if.then591
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_168
.LBB4_167:                              # %if.else594
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_168:                              # %if.end597
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.186, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$449, %esi                      # imm = 0x1C1
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_170
# %bb.169:                              # %if.then602
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_171
.LBB4_170:                              # %if.else605
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_171:                              # %if.end608
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.187, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$451, %esi                      # imm = 0x1C3
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_173
# %bb.172:                              # %if.then613
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_174
.LBB4_173:                              # %if.else616
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_174:                              # %if.end619
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.188, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$453, %esi                      # imm = 0x1C5
	movabsq	$.L.str.146, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_parse_string
	cmpq	$0, %rax
	jne	.LBB4_176
# %bb.175:                              # %if.then624
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_177
.LBB4_176:                              # %if.else627
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_177:                              # %if.end630
	movabsq	$.L.str.3, %rdi
	movl	$454, %esi                      # imm = 0x1C6
	movabsq	$.L.str.189, %rdx
	movb	$0, %al
	callq	printf
	cmpl	$0, malloc_count
	jne	.LBB4_179
# %bb.178:                              # %if.then633
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB4_180
.LBB4_179:                              # %if.else636
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB4_180:                              # %if.end639
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	test_suite_3, .Lfunc_end4-test_suite_3
	.cfi_endproc
                                        # -- End function
	.globl	test_suite_4                    # -- Begin function test_suite_4
	.p2align	4, 0x90
	.type	test_suite_4,@function
test_suite_4:                           # @test_suite_4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	$0, -8(%rbp)
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.119, %rsi
	callq	t_strcpy
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rsi
	movabsq	$.L.str.190, %rdi
	movb	$0, %al
	callq	t_printf
	movq	-16(%rbp), %rdi
	callq	json_parse_file
	movq	%rax, -24(%rbp)
	movabsq	$.L.str.3, %rdi
	movl	$464, %esi                      # imm = 0x1D0
	movabsq	$.L.str.191, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB5_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB5_3:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	json_value_deep_copy
	movq	%rax, -32(%rbp)
	movabsq	$.L.str.3, %rdi
	movl	$466, %esi                      # imm = 0x1D2
	movabsq	$.L.str.192, %rdx
	movb	$0, %al
	callq	printf
	cmpq	$0, -32(%rbp)
	je	.LBB5_5
# %bb.4:                                # %if.then11
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB5_6
.LBB5_5:                                # %if.else14
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB5_6:                                # %if.end17
	movabsq	$.L.str.3, %rdi
	movl	$467, %esi                      # imm = 0x1D3
	movabsq	$.L.str.193, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB5_8
# %bb.7:                                # %if.then21
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB5_9
.LBB5_8:                                # %if.else24
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB5_9:                                # %if.end27
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	test_suite_4, .Lfunc_end5-test_suite_4
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function test_suite_5
.LCPI6_0:
	.quad	0x4039000000000000              # double 25
.LCPI6_1:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	test_suite_5
	.p2align	4, 0x90
	.type	test_suite_5,@function
test_suite_5:                           # @test_suite_5
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movabsq	$.L.str.194, %rsi
	callq	t_strcpy
	movq	-16(%rbp), %rdi
	callq	json_parse_file
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -72(%rbp)
	callq	json_value_init_object
	movq	%rax, -32(%rbp)
	movabsq	$.L.str.3, %rdi
	movl	$486, %esi                      # imm = 0x1E6
	movabsq	$.L.str.195, %rdx
	movb	$0, %al
	callq	printf
	cmpq	$0, -32(%rbp)
	je	.LBB6_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_3
.LBB6_2:                                # %if.else
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_3:                                # %if.end
	movq	-32(%rbp), %rdi
	callq	json_value_get_object
	movq	%rax, -48(%rbp)
	movabsq	$.L.str.3, %rdi
	movl	$489, %esi                      # imm = 0x1E9
	movabsq	$.L.str.196, %rdx
	movb	$0, %al
	callq	printf
	cmpq	$0, -48(%rbp)
	je	.LBB6_5
# %bb.4:                                # %if.then11
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_6
.LBB6_5:                                # %if.else14
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_6:                                # %if.end17
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -80(%rbp)
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.197, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.198, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$495, %esi                      # imm = 0x1EF
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_8
# %bb.7:                                # %if.then25
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_9
.LBB6_8:                                # %if.else28
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_9:                                # %if.end31
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.200, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.201, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$498, %esi                      # imm = 0x1F2
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_11
# %bb.10:                               # %if.then37
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_12
.LBB6_11:                               # %if.else40
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_12:                               # %if.end43
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.202, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$500, %esi                      # imm = 0x1F4
	movabsq	$.L.str.203, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movsd	.LCPI6_0(%rip), %xmm0           # xmm0 = mem[0],zero
	callq	json_object_set_number
	cmpl	$0, %eax
	jne	.LBB6_14
# %bb.13:                               # %if.then48
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_15
.LBB6_14:                               # %if.else51
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_15:                               # %if.end54
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.204, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$502, %esi                      # imm = 0x1F6
	movabsq	$.L.str.205, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movl	$1, %edx
	callq	json_object_set_boolean
	cmpl	$0, %eax
	jne	.LBB6_17
# %bb.16:                               # %if.then59
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_18
.LBB6_17:                               # %if.else62
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_18:                               # %if.end65
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.206, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$505, %esi                      # imm = 0x1F9
	movabsq	$.L.str.207, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)                # 8-byte Spill
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)                 # 8-byte Spill
	callq	json_value_init_array
	movq	-104(%rbp), %rdi                # 8-byte Reload
	movq	-96(%rbp), %rsi                 # 8-byte Reload
	movq	%rax, %rdx
	callq	json_object_set_value
	cmpl	$0, %eax
	jne	.LBB6_20
# %bb.19:                               # %if.then71
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_21
.LBB6_20:                               # %if.else74
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_21:                               # %if.end77
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.206, %rsi
	callq	t_strcpy
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	json_object_get_array
	movq	%rax, -56(%rbp)
	movabsq	$.L.str.3, %rdi
	movl	$508, %esi                      # imm = 0x1FC
	movabsq	$.L.str.208, %rdx
	movb	$0, %al
	callq	printf
	cmpq	$0, -56(%rbp)
	je	.LBB6_23
# %bb.22:                               # %if.then82
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_24
.LBB6_23:                               # %if.else85
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_24:                               # %if.end88
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.209, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$510, %esi                      # imm = 0x1FE
	movabsq	$.L.str.210, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	json_array_append_string
	cmpl	$0, %eax
	jne	.LBB6_26
# %bb.25:                               # %if.then93
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_27
.LBB6_26:                               # %if.else96
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_27:                               # %if.end99
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.211, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$512, %esi                      # imm = 0x200
	movabsq	$.L.str.210, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	json_array_append_string
	cmpl	$0, %eax
	jne	.LBB6_29
# %bb.28:                               # %if.then104
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_30
.LBB6_29:                               # %if.else107
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_30:                               # %if.end110
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.212, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$514, %esi                      # imm = 0x202
	movabsq	$.L.str.213, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_replace_string
	cmpl	$0, %eax
	jne	.LBB6_32
# %bb.31:                               # %if.then115
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_33
.LBB6_32:                               # %if.else118
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_33:                               # %if.end121
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.214, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.215, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$517, %esi                      # imm = 0x205
	movabsq	$.L.str.216, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_dotset_string
	cmpl	$0, %eax
	jne	.LBB6_35
# %bb.34:                               # %if.then127
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_36
.LBB6_35:                               # %if.else130
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_36:                               # %if.end133
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.214, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.217, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$520, %esi                      # imm = 0x208
	movabsq	$.L.str.216, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_dotset_string
	cmpl	$0, %eax
	jne	.LBB6_38
# %bb.37:                               # %if.then139
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_39
.LBB6_38:                               # %if.else142
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_39:                               # %if.end145
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.218, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.219, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$523, %esi                      # imm = 0x20B
	movabsq	$.L.str.216, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_dotset_string
	cmpl	$0, %eax
	jne	.LBB6_41
# %bb.40:                               # %if.then151
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_42
.LBB6_41:                               # %if.else154
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_42:                               # %if.end157
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.218, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$525, %esi                      # imm = 0x20D
	movabsq	$.L.str.220, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	json_object_dotremove
	cmpl	$0, %eax
	jne	.LBB6_44
# %bb.43:                               # %if.then162
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_45
.LBB6_44:                               # %if.else165
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_45:                               # %if.end168
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.61, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.60, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$528, %esi                      # imm = 0x210
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_47
# %bb.46:                               # %if.then174
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_48
.LBB6_47:                               # %if.else177
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_48:                               # %if.end180
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.62, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.64, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$531, %esi                      # imm = 0x213
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_50
# %bb.49:                               # %if.then186
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_51
.LBB6_50:                               # %if.else189
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_51:                               # %if.end192
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.65, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.67, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$534, %esi                      # imm = 0x216
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_53
# %bb.52:                               # %if.then198
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_54
.LBB6_53:                               # %if.else201
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_54:                               # %if.end204
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.221, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.222, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$537, %esi                      # imm = 0x219
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_56
# %bb.55:                               # %if.then210
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_57
.LBB6_56:                               # %if.else213
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_57:                               # %if.end216
	movabsq	$.L.str.3, %rdi
	movl	$538, %esi                      # imm = 0x21A
	movabsq	$.L.str.223, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB6_59
# %bb.58:                               # %if.then219
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_60
.LBB6_59:                               # %if.else222
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_60:                               # %if.end225
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.96, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$541, %esi                      # imm = 0x21D
	movabsq	$.L.str.224, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_62
# %bb.61:                               # %if.then230
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_63
.LBB6_62:                               # %if.else233
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_63:                               # %if.end236
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.200, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$543, %esi                      # imm = 0x21F
	movabsq	$.L.str.225, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_65
# %bb.64:                               # %if.then241
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_66
.LBB6_65:                               # %if.else244
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_66:                               # %if.end247
	movabsq	$.L.str.3, %rdi
	movl	$544, %esi                      # imm = 0x220
	movabsq	$.L.str.226, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_68
# %bb.67:                               # %if.then251
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_69
.LBB6_68:                               # %if.else254
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_69:                               # %if.end257
	movabsq	$.L.str.3, %rdi
	movl	$545, %esi                      # imm = 0x221
	movabsq	$.L.str.227, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	callq	json_object_set_value
	cmpl	$-1, %eax
	jne	.LBB6_71
# %bb.70:                               # %if.then261
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_72
.LBB6_71:                               # %if.else264
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_72:                               # %if.end267
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.96, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$548, %esi                      # imm = 0x224
	movabsq	$.L.str.228, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_object_dotset_string
	cmpl	$-1, %eax
	jne	.LBB6_74
# %bb.73:                               # %if.then272
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_75
.LBB6_74:                               # %if.else275
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_75:                               # %if.end278
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.214, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$550, %esi                      # imm = 0x226
	movabsq	$.L.str.229, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edx
	callq	json_object_dotset_string
	cmpl	$-1, %eax
	jne	.LBB6_77
# %bb.76:                               # %if.then283
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_78
.LBB6_77:                               # %if.else286
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_78:                               # %if.end289
	movabsq	$.L.str.3, %rdi
	movl	$551, %esi                      # imm = 0x227
	movabsq	$.L.str.230, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	callq	json_object_dotset_string
	cmpl	$-1, %eax
	jne	.LBB6_80
# %bb.79:                               # %if.then293
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_81
.LBB6_80:                               # %if.else296
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_81:                               # %if.end299
	movabsq	$.L.str.3, %rdi
	movl	$552, %esi                      # imm = 0x228
	movabsq	$.L.str.231, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	callq	json_object_dotset_value
	cmpl	$-1, %eax
	jne	.LBB6_83
# %bb.82:                               # %if.then303
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_84
.LBB6_83:                               # %if.else306
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_84:                               # %if.end309
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.78, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$555, %esi                      # imm = 0x22B
	movabsq	$.L.str.232, %rdx
	movb	$0, %al
	callq	printf
	movq	-80(%rbp), %rsi
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	json_array_append_string
	cmpl	$-1, %eax
	jne	.LBB6_86
# %bb.85:                               # %if.then314
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_87
.LBB6_86:                               # %if.else317
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_87:                               # %if.end320
	movabsq	$.L.str.3, %rdi
	movl	$556, %esi                      # imm = 0x22C
	movabsq	$.L.str.233, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_append_value
	cmpl	$-1, %eax
	jne	.LBB6_89
# %bb.88:                               # %if.then324
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_90
.LBB6_89:                               # %if.else327
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_90:                               # %if.end330
	movabsq	$.L.str.3, %rdi
	movl	$557, %esi                      # imm = 0x22D
	movabsq	$.L.str.234, %rdx
	movb	$0, %al
	callq	printf
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	callq	json_array_append_value
	cmpl	$-1, %eax
	jne	.LBB6_92
# %bb.91:                               # %if.then334
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_93
.LBB6_92:                               # %if.else337
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_93:                               # %if.end340
	movabsq	$.L.str.3, %rdi
	movl	$559, %esi                      # imm = 0x22F
	movabsq	$.L.str.235, %rdx
	movb	$0, %al
	callq	printf
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	callq	json_array_remove
	cmpl	$-1, %eax
	jne	.LBB6_95
# %bb.94:                               # %if.then344
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_96
.LBB6_95:                               # %if.else347
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_96:                               # %if.end350
	movabsq	$.L.str.3, %rdi
	movl	$560, %esi                      # imm = 0x230
	movabsq	$.L.str.236, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	%rdx, %rsi
	callq	json_array_replace_value
	cmpl	$-1, %eax
	jne	.LBB6_98
# %bb.97:                               # %if.then354
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_99
.LBB6_98:                               # %if.else357
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_99:                               # %if.end360
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.78, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$562, %esi                      # imm = 0x232
	movabsq	$.L.str.237, %rdx
	movb	$0, %al
	callq	printf
	movq	-80(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	callq	json_array_replace_string
	cmpl	$-1, %eax
	jne	.LBB6_101
# %bb.100:                              # %if.then365
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_102
.LBB6_101:                              # %if.else368
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_102:                              # %if.end371
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.238, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$564, %esi                      # imm = 0x234
	movabsq	$.L.str.239, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movl	$100, %esi
	callq	json_array_replace_string
	cmpl	$-1, %eax
	jne	.LBB6_104
# %bb.103:                              # %if.then376
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_105
.LBB6_104:                              # %if.else379
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_105:                              # %if.end382
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.206, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$567, %esi                      # imm = 0x237
	movabsq	$.L.str.240, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	json_object_get_array
	movq	%rax, %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_append_string
	cmpl	$-1, %eax
	jne	.LBB6_107
# %bb.106:                              # %if.then388
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_108
.LBB6_107:                              # %if.else391
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_108:                              # %if.end394
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.209, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$570, %esi                      # imm = 0x23A
	movabsq	$.L.str.210, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	json_array_append_string
	cmpl	$0, %eax
	jne	.LBB6_110
# %bb.109:                              # %if.then399
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_111
.LBB6_110:                              # %if.else402
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_111:                              # %if.end405
	movabsq	$.L.str.3, %rdi
	movl	$571, %esi                      # imm = 0x23B
	movabsq	$.L.str.241, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_remove
	cmpl	$0, %eax
	jne	.LBB6_113
# %bb.112:                              # %if.then409
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_114
.LBB6_113:                              # %if.else412
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_114:                              # %if.end415
	movabsq	$.L.str.3, %rdi
	movl	$572, %esi                      # imm = 0x23C
	movabsq	$.L.str.242, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	movl	$1, %esi
	callq	json_array_remove
	cmpl	$0, %eax
	jne	.LBB6_116
# %bb.115:                              # %if.then419
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_117
.LBB6_116:                              # %if.else422
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_117:                              # %if.end425
	movabsq	$.L.str.3, %rdi
	movl	$573, %esi                      # imm = 0x23D
	movabsq	$.L.str.241, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_remove
	cmpl	$0, %eax
	jne	.LBB6_119
# %bb.118:                              # %if.then429
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_120
.LBB6_119:                              # %if.else432
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_120:                              # %if.end435
	movabsq	$.L.str.3, %rdi
	movl	$574, %esi                      # imm = 0x23E
	movabsq	$.L.str.243, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_remove
	cmpl	$-1, %eax
	jne	.LBB6_122
# %bb.121:                              # %if.then439
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_123
.LBB6_122:                              # %if.else442
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_123:                              # %if.end445
	callq	json_value_init_null
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.161, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$578, %esi                      # imm = 0x242
	movabsq	$.L.str.244, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	json_object_set_value
	cmpl	$0, %eax
	jne	.LBB6_125
# %bb.124:                              # %if.then451
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_126
.LBB6_125:                              # %if.else454
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_126:                              # %if.end457
	movabsq	$.L.str.3, %rdi
	movl	$579, %esi                      # imm = 0x243
	movabsq	$.L.str.245, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	json_object_set_value
	cmpl	$-1, %eax
	jne	.LBB6_128
# %bb.127:                              # %if.then461
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_129
.LBB6_128:                              # %if.else464
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_129:                              # %if.end467
	callq	json_value_init_null
	movq	%rax, -40(%rbp)
	movabsq	$.L.str.3, %rdi
	movl	$582, %esi                      # imm = 0x246
	movabsq	$.L.str.246, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	json_array_append_value
	cmpl	$0, %eax
	jne	.LBB6_131
# %bb.130:                              # %if.then472
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_132
.LBB6_131:                              # %if.else475
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_132:                              # %if.end478
	movabsq	$.L.str.3, %rdi
	movl	$583, %esi                      # imm = 0x247
	movabsq	$.L.str.247, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	json_array_append_value
	cmpl	$-1, %eax
	jne	.LBB6_134
# %bb.133:                              # %if.then482
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_135
.LBB6_134:                              # %if.else485
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_135:                              # %if.end488
	callq	json_value_init_null
	movq	%rax, -40(%rbp)
	movabsq	$.L.str.3, %rdi
	movl	$586, %esi                      # imm = 0x24A
	movabsq	$.L.str.248, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_replace_value
	cmpl	$0, %eax
	jne	.LBB6_137
# %bb.136:                              # %if.then493
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_138
.LBB6_137:                              # %if.else496
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_138:                              # %if.end499
	movabsq	$.L.str.3, %rdi
	movl	$587, %esi                      # imm = 0x24B
	movabsq	$.L.str.249, %rdx
	movb	$0, %al
	callq	printf
	movq	-56(%rbp), %rdi
	movq	-40(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_replace_value
	cmpl	$-1, %eax
	jne	.LBB6_140
# %bb.139:                              # %if.then503
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_141
.LBB6_140:                              # %if.else506
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_141:                              # %if.end509
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.206, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$590, %esi                      # imm = 0x24E
	movabsq	$.L.str.250, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	json_object_remove
	cmpl	$0, %eax
	jne	.LBB6_143
# %bb.142:                              # %if.then514
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_144
.LBB6_143:                              # %if.else517
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_144:                              # %if.end520
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.251, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.252, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$595, %esi                      # imm = 0x253
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_146
# %bb.145:                              # %if.then526
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_147
.LBB6_146:                              # %if.else529
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_147:                              # %if.end532
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.253, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.254, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$599, %esi                      # imm = 0x257
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_149
# %bb.148:                              # %if.then538
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_150
.LBB6_149:                              # %if.else541
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_150:                              # %if.end544
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.255, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.256, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$602, %esi                      # imm = 0x25A
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_152
# %bb.151:                              # %if.then550
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_153
.LBB6_152:                              # %if.else553
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_153:                              # %if.end556
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.257, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.258, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$605, %esi                      # imm = 0x25D
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_155
# %bb.154:                              # %if.then562
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_156
.LBB6_155:                              # %if.else565
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_156:                              # %if.end568
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.259, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.260, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$608, %esi                      # imm = 0x260
	movabsq	$.L.str.199, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$0, %eax
	jne	.LBB6_158
# %bb.157:                              # %if.then574
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_159
.LBB6_158:                              # %if.else577
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_159:                              # %if.end580
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.261, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.262, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$612, %esi                      # imm = 0x264
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_161
# %bb.160:                              # %if.then586
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_162
.LBB6_161:                              # %if.else589
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_162:                              # %if.end592
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.264, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.265, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$615, %esi                      # imm = 0x267
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_164
# %bb.163:                              # %if.then598
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_165
.LBB6_164:                              # %if.else601
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_165:                              # %if.end604
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.266, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.267, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$620, %esi                      # imm = 0x26C
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_167
# %bb.166:                              # %if.then610
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_168
.LBB6_167:                              # %if.else613
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_168:                              # %if.end616
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.268, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.269, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$623, %esi                      # imm = 0x26F
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_170
# %bb.169:                              # %if.then622
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_171
.LBB6_170:                              # %if.else625
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_171:                              # %if.end628
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.270, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.271, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$626, %esi                      # imm = 0x272
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_173
# %bb.172:                              # %if.then634
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_174
.LBB6_173:                              # %if.else637
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_174:                              # %if.end640
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.272, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.273, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$630, %esi                      # imm = 0x276
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_176
# %bb.175:                              # %if.then646
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_177
.LBB6_176:                              # %if.else649
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_177:                              # %if.end652
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.274, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.275, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$633, %esi                      # imm = 0x279
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_179
# %bb.178:                              # %if.then658
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_180
.LBB6_179:                              # %if.else661
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_180:                              # %if.end664
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.276, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.277, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$636, %esi                      # imm = 0x27C
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_182
# %bb.181:                              # %if.then670
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_183
.LBB6_182:                              # %if.else673
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_183:                              # %if.end676
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.278, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.279, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$639, %esi                      # imm = 0x27F
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_185
# %bb.184:                              # %if.then682
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_186
.LBB6_185:                              # %if.else685
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_186:                              # %if.end688
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.280, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.281, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$642, %esi                      # imm = 0x282
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_188
# %bb.187:                              # %if.then694
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_189
.LBB6_188:                              # %if.else697
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_189:                              # %if.end700
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.282, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.283, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$645, %esi                      # imm = 0x285
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_191
# %bb.190:                              # %if.then706
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_192
.LBB6_191:                              # %if.else709
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_192:                              # %if.end712
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.284, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.283, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$648, %esi                      # imm = 0x288
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_194
# %bb.193:                              # %if.then718
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_195
.LBB6_194:                              # %if.else721
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_195:                              # %if.end724
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.285, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.286, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$653, %esi                      # imm = 0x28D
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_197
# %bb.196:                              # %if.then730
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_198
.LBB6_197:                              # %if.else733
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_198:                              # %if.end736
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.287, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.288, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$656, %esi                      # imm = 0x290
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_200
# %bb.199:                              # %if.then742
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_201
.LBB6_200:                              # %if.else745
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_201:                              # %if.end748
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.289, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.290, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$659, %esi                      # imm = 0x293
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_203
# %bb.202:                              # %if.then754
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_204
.LBB6_203:                              # %if.else757
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_204:                              # %if.end760
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.291, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.292, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$662, %esi                      # imm = 0x296
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_206
# %bb.205:                              # %if.then766
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_207
.LBB6_206:                              # %if.else769
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_207:                              # %if.end772
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.293, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.294, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$665, %esi                      # imm = 0x299
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_209
# %bb.208:                              # %if.then778
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_210
.LBB6_209:                              # %if.else781
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_210:                              # %if.end784
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.295, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.296, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$669, %esi                      # imm = 0x29D
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_212
# %bb.211:                              # %if.then790
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_213
.LBB6_212:                              # %if.else793
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_213:                              # %if.end796
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.297, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.298, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$672, %esi                      # imm = 0x2A0
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_215
# %bb.214:                              # %if.then802
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_216
.LBB6_215:                              # %if.else805
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_216:                              # %if.end808
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.299, %rsi
	callq	t_strcpy
	movq	-88(%rbp), %rdi
	movabsq	$.L.str.300, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$675, %esi                      # imm = 0x2A3
	movabsq	$.L.str.263, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	callq	json_object_set_string
	cmpl	$-1, %eax
	jne	.LBB6_218
# %bb.217:                              # %if.then814
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_219
.LBB6_218:                              # %if.else817
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_219:                              # %if.end820
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.301, %rsi
	callq	t_strcpy
	movq	-80(%rbp), %rdi
	callq	json_parse_string
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	json_array
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movl	$2, %esi
	callq	json_array_remove
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.302, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$683, %esi                      # imm = 0x2AB
	movabsq	$.L.str.303, %rdx
	movb	$0, %al
	callq	printf
	movq	-64(%rbp), %rax
	movq	%rax, -112(%rbp)                # 8-byte Spill
	movq	-80(%rbp), %rdi
	callq	json_parse_string
	movq	-112(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB6_221
# %bb.220:                              # %if.then830
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_222
.LBB6_221:                              # %if.else833
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_222:                              # %if.end836
	movq	-72(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_remove
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.304, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$686, %esi                      # imm = 0x2AE
	movabsq	$.L.str.303, %rdx
	movb	$0, %al
	callq	printf
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)                # 8-byte Spill
	movq	-80(%rbp), %rdi
	callq	json_parse_string
	movq	-120(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB6_224
# %bb.223:                              # %if.then843
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_225
.LBB6_224:                              # %if.else846
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_225:                              # %if.end849
	movq	-72(%rbp), %rdi
	movl	$2, %esi
	callq	json_array_remove
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.305, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$689, %esi                      # imm = 0x2B1
	movabsq	$.L.str.303, %rdx
	movb	$0, %al
	callq	printf
	movq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)                # 8-byte Spill
	movq	-80(%rbp), %rdi
	callq	json_parse_string
	movq	-128(%rbp), %rdi                # 8-byte Reload
	movq	%rax, %rsi
	callq	json_value_equals
	cmpl	$0, %eax
	je	.LBB6_227
# %bb.226:                              # %if.then856
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_228
.LBB6_227:                              # %if.else859
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_228:                              # %if.end862
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.306, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$693, %esi                      # imm = 0x2B5
	movabsq	$.L.str.307, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	xorps	%xmm0, %xmm0
	divsd	-8(%rbp), %xmm0
	callq	json_object_set_number
	cmpl	$-1, %eax
	jne	.LBB6_230
# %bb.229:                              # %if.then867
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_231
.LBB6_230:                              # %if.else870
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_231:                              # %if.end873
	movq	-80(%rbp), %rdi
	movabsq	$.L.str.306, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$695, %esi                      # imm = 0x2B7
	movabsq	$.L.str.308, %rdx
	movb	$0, %al
	callq	printf
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movsd	.LCPI6_1(%rip), %xmm0           # xmm0 = mem[0],zero
	divsd	-8(%rbp), %xmm0
	callq	json_object_set_number
	cmpl	$-1, %eax
	jne	.LBB6_233
# %bb.232:                              # %if.then879
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB6_234
.LBB6_233:                              # %if.else882
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB6_234:                              # %if.end885
	addq	$128, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	test_suite_5, .Lfunc_end6-test_suite_5
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function string_tainted_malloc
	.type	string_tainted_malloc,@function
string_tainted_malloc:                  # @string_tainted_malloc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	cmpq	$-1, -16(%rbp)
	jb	.LBB7_2
# %bb.1:                                # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB7_7
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	addq	$1, %rdi
	callq	t_malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_6
# %bb.3:                                # %if.then2
	movq	-24(%rbp), %rdi
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)                 # 8-byte Spill
	callq	c_isTaintedPointerToTaintedMem@PLT
	testb	$1, %al
	jne	.LBB7_4
	jmp	.LBB7_5
.LBB7_4:                                # %_Dynamic_check.succeeded
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	-32(%rbp), %rcx                 # 8-byte Reload
	movb	$0, (%rax,%rcx)
	jmp	.LBB7_6
.LBB7_5:                                # %_Dynamic_check.failed
	ud2
.LBB7_6:                                # %if.end3
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB7_7:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	string_tainted_malloc, .Lfunc_end7-string_tainted_malloc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function test_suite_2
.LCPI8_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI8_1:
	.quad	0xbff0000000000000              # double -1
.LCPI8_2:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
.LCPI8_4:
	.quad	0xbf34940bbb1f255f              # double -3.1399999999999999E-4
.LCPI8_5:
	.quad	0x405ec00000000000              # double 123
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI8_3:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
.LCPI8_6:
	.long	1127219200                      # 0x43300000
	.long	1160773632                      # 0x45300000
	.long	0                               # 0x0
	.long	0                               # 0x0
.LCPI8_7:
	.quad	0x4330000000000000              # double 4503599627370496
	.quad	0x4530000000000000              # double 1.9342813113834067E+25
	.text
	.globl	test_suite_2
	.p2align	4, 0x90
	.type	test_suite_2,@function
test_suite_2:                           # @test_suite_2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movabsq	$.L.str.3, %rdi
	movl	$149, %esi
	movabsq	$.L.str.14, %rdx
	movb	$0, %al
	callq	printf
	cmpq	$0, -8(%rbp)
	je	.LBB8_2
# %bb.1:                                # %if.then
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_3:                                # %if.end
	movabsq	$.L.str.3, %rdi
	movl	$150, %esi
	movabsq	$.L.str.15, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	json_value_get_type
	cmpl	$4, %eax
	jne	.LBB8_5
# %bb.4:                                # %if.then6
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_6
.LBB8_5:                                # %if.else9
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_6:                                # %if.end12
	movq	-8(%rbp), %rdi
	callq	json_value_get_object
	movq	%rax, -16(%rbp)
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.16, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$155, %esi
	movabsq	$.L.str.17, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_has_value
	cmpl	$0, %eax
	je	.LBB8_8
# %bb.7:                                # %if.then19
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_9
.LBB8_8:                                # %if.else22
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_9:                                # %if.end25
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.18, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$157, %esi
	movabsq	$.L.str.19, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_has_value
	cmpl	$0, %eax
	jne	.LBB8_11
# %bb.10:                               # %if.then30
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_12
.LBB8_11:                               # %if.else33
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_12:                               # %if.end36
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.20, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$159, %esi
	movabsq	$.L.str.21, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	je	.LBB8_14
# %bb.13:                               # %if.then41
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_15
.LBB8_14:                               # %if.else44
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_15:                               # %if.end47
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.22, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$161, %esi
	movabsq	$.L.str.23, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_17
# %bb.16:                               # %if.then52
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_18
.LBB8_17:                               # %if.else55
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_18:                               # %if.end58
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.22, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$163, %esi
	movabsq	$.L.str.24, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$5, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	je	.LBB8_20
# %bb.19:                               # %if.then63
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_21
.LBB8_20:                               # %if.else66
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_21:                               # %if.end69
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.20, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$165, %esi
	movabsq	$.L.str.25, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$5, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_23
# %bb.22:                               # %if.then74
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_24
.LBB8_23:                               # %if.else77
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_24:                               # %if.end80
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.16, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$167, %esi
	movabsq	$.L.str.26, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$2, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	je	.LBB8_26
# %bb.25:                               # %if.then85
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_27
.LBB8_26:                               # %if.else88
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_27:                               # %if.end91
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.27, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$169, %esi
	movabsq	$.L.str.28, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$2, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_29
# %bb.28:                               # %if.then96
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_30
.LBB8_29:                               # %if.else99
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_30:                               # %if.end102
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.27, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$171, %esi
	movabsq	$.L.str.29, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$3, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	je	.LBB8_32
# %bb.31:                               # %if.then107
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_33
.LBB8_32:                               # %if.else110
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_33:                               # %if.end113
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.16, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$173, %esi
	movabsq	$.L.str.30, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$3, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_35
# %bb.34:                               # %if.then118
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_36
.LBB8_35:                               # %if.else121
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_36:                               # %if.end124
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.31, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$175, %esi
	movabsq	$.L.str.32, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$6, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	je	.LBB8_38
# %bb.37:                               # %if.then129
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_39
.LBB8_38:                               # %if.else132
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_39:                               # %if.end135
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.27, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$177, %esi
	movabsq	$.L.str.33, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$6, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_41
# %bb.40:                               # %if.then140
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_42
.LBB8_41:                               # %if.else143
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_42:                               # %if.end146
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.34, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$179, %esi
	movabsq	$.L.str.35, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	je	.LBB8_44
# %bb.43:                               # %if.then151
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_45
.LBB8_44:                               # %if.else154
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_45:                               # %if.end157
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.20, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$181, %esi
	movabsq	$.L.str.36, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	json_object_has_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_47
# %bb.46:                               # %if.then162
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_48
.LBB8_47:                               # %if.else165
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_48:                               # %if.end168
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.37, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$184, %esi
	movabsq	$.L.str.38, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dothas_value
	cmpl	$0, %eax
	je	.LBB8_50
# %bb.49:                               # %if.then173
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_51
.LBB8_50:                               # %if.else176
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_51:                               # %if.end179
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.39, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$186, %esi
	movabsq	$.L.str.40, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dothas_value
	cmpl	$0, %eax
	jne	.LBB8_53
# %bb.52:                               # %if.then184
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_54
.LBB8_53:                               # %if.else187
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_54:                               # %if.end190
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.41, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$188, %esi
	movabsq	$.L.str.42, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	je	.LBB8_56
# %bb.55:                               # %if.then195
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_57
.LBB8_56:                               # %if.else198
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_57:                               # %if.end201
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.37, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$190, %esi
	movabsq	$.L.str.43, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_59
# %bb.58:                               # %if.then206
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_60
.LBB8_59:                               # %if.else209
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_60:                               # %if.end212
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.37, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$192, %esi
	movabsq	$.L.str.44, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$5, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	je	.LBB8_62
# %bb.61:                               # %if.then217
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_63
.LBB8_62:                               # %if.else220
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_63:                               # %if.end223
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.41, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$194, %esi
	movabsq	$.L.str.45, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$5, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_65
# %bb.64:                               # %if.then228
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_66
.LBB8_65:                               # %if.else231
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_66:                               # %if.end234
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.46, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$196, %esi
	movabsq	$.L.str.47, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$2, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	je	.LBB8_68
# %bb.67:                               # %if.then239
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_69
.LBB8_68:                               # %if.else242
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_69:                               # %if.end245
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.48, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$198, %esi
	movabsq	$.L.str.49, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$2, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_71
# %bb.70:                               # %if.then250
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_72
.LBB8_71:                               # %if.else253
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_72:                               # %if.end256
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.48, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$200, %esi
	movabsq	$.L.str.50, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$3, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	je	.LBB8_74
# %bb.73:                               # %if.then261
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_75
.LBB8_74:                               # %if.else264
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_75:                               # %if.end267
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.51, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$202, %esi
	movabsq	$.L.str.52, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$3, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_77
# %bb.76:                               # %if.then272
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_78
.LBB8_77:                               # %if.else275
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_78:                               # %if.end278
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.53, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$204, %esi
	movabsq	$.L.str.54, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$6, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	je	.LBB8_80
# %bb.79:                               # %if.then283
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_81
.LBB8_80:                               # %if.else286
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_81:                               # %if.end289
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.48, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$206, %esi
	movabsq	$.L.str.55, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$6, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_83
# %bb.82:                               # %if.then294
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_84
.LBB8_83:                               # %if.else297
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_84:                               # %if.end300
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.56, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$208, %esi
	movabsq	$.L.str.57, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	je	.LBB8_86
# %bb.85:                               # %if.then305
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_87
.LBB8_86:                               # %if.else308
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_87:                               # %if.end311
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.41, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$210, %esi
	movabsq	$.L.str.58, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	json_object_dothas_value_of_type
	cmpl	$0, %eax
	jne	.LBB8_89
# %bb.88:                               # %if.then316
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_90
.LBB8_89:                               # %if.else319
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_90:                               # %if.end322
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.16, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$213, %esi
	movabsq	$.L.str.59, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	cmpq	$0, %rax
	je	.LBB8_93
# %bb.91:                               # %land.lhs.true
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_92
	jmp	.LBB8_93
.LBB8_92:                               # %cond.true
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	movq	%rax, %rdi
	movabsq	$.L.str.60, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_94
	jmp	.LBB8_95
.LBB8_93:                               # %cond.false
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_94
	jmp	.LBB8_95
.LBB8_94:                               # %if.then330
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_96
.LBB8_95:                               # %if.else333
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_96:                               # %if.end336
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.61, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$215, %esi
	movabsq	$.L.str.59, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	cmpq	$0, %rax
	je	.LBB8_99
# %bb.97:                               # %land.lhs.true341
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_98
	jmp	.LBB8_99
.LBB8_98:                               # %cond.true342
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	movq	%rax, %rdi
	movabsq	$.L.str.60, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_100
	jmp	.LBB8_101
.LBB8_99:                               # %cond.false346
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_100
	jmp	.LBB8_101
.LBB8_100:                              # %if.then347
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_102
.LBB8_101:                              # %if.else350
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_102:                              # %if.end353
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.62, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$217, %esi
	movabsq	$.L.str.63, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	cmpq	$0, %rax
	je	.LBB8_105
# %bb.103:                              # %land.lhs.true358
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_104
	jmp	.LBB8_105
.LBB8_104:                              # %cond.true359
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	movq	%rax, %rdi
	movabsq	$.L.str.64, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_106
	jmp	.LBB8_107
.LBB8_105:                              # %cond.false363
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_106
	jmp	.LBB8_107
.LBB8_106:                              # %if.then364
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_108
.LBB8_107:                              # %if.else367
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_108:                              # %if.end370
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.65, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$219, %esi
	movabsq	$.L.str.66, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	cmpq	$0, %rax
	je	.LBB8_111
# %bb.109:                              # %land.lhs.true375
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_110
	jmp	.LBB8_111
.LBB8_110:                              # %cond.true376
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	movq	%rax, %rdi
	movabsq	$.L.str.67, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_112
	jmp	.LBB8_113
.LBB8_111:                              # %cond.false380
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_112
	jmp	.LBB8_113
.LBB8_112:                              # %if.then381
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_114
.LBB8_113:                              # %if.else384
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_114:                              # %if.end387
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.27, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$222, %esi
	movabsq	$.L.str.68, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_number
	movsd	.LCPI8_0(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_116
	jp	.LBB8_116
# %bb.115:                              # %if.then392
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_117
.LBB8_116:                              # %if.else395
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_117:                              # %if.end398
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.69, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$224, %esi
	movabsq	$.L.str.70, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_number
	movsd	.LCPI8_1(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_119
	jp	.LBB8_119
# %bb.118:                              # %if.then403
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_120
.LBB8_119:                              # %if.else406
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_120:                              # %if.end409
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.71, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$226, %esi
	movabsq	$.L.str.72, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_number
	movaps	%xmm0, %xmm1
	movsd	.LCPI8_4(%rip), %xmm0           # xmm0 = mem[0],zero
	subsd	%xmm0, %xmm1
	movaps	.LCPI8_3(%rip), %xmm0           # xmm0 = [NaN,NaN]
	pand	%xmm0, %xmm1
	movsd	.LCPI8_2(%rip), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB8_122
# %bb.121:                              # %if.then414
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_123
.LBB8_122:                              # %if.else417
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_123:                              # %if.end420
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.31, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$228, %esi
	movabsq	$.L.str.73, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_boolean
	cmpl	$1, %eax
	jne	.LBB8_125
# %bb.124:                              # %if.then425
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_126
.LBB8_125:                              # %if.else428
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_126:                              # %if.end431
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.74, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$230, %esi
	movabsq	$.L.str.75, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_boolean
	cmpl	$0, %eax
	jne	.LBB8_128
# %bb.127:                              # %if.then436
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_129
.LBB8_128:                              # %if.else439
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_129:                              # %if.end442
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.34, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$232, %esi
	movabsq	$.L.str.76, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_value
	movq	%rax, %rdi
	callq	json_value_get_type
	cmpl	$1, %eax
	jne	.LBB8_131
# %bb.130:                              # %if.then448
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_132
.LBB8_131:                              # %if.else451
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_132:                              # %if.end454
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.22, %rsi
	callq	t_strcpy
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_array
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_147
# %bb.133:                              # %land.lhs.true458
	movq	-24(%rbp), %rdi
	callq	json_array_get_count
	cmpq	$1, %rax
	jbe	.LBB8_147
# %bb.134:                              # %if.then461
	movabsq	$.L.str.3, %rdi
	movl	$237, %esi
	movabsq	$.L.str.77, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_get_string
	cmpq	$0, %rax
	je	.LBB8_137
# %bb.135:                              # %land.lhs.true465
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_136
	jmp	.LBB8_137
.LBB8_136:                              # %cond.true466
	movq	-24(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_get_string
	movq	%rax, %rdi
	movabsq	$.L.str.78, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_138
	jmp	.LBB8_139
.LBB8_137:                              # %cond.false470
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_138
	jmp	.LBB8_139
.LBB8_138:                              # %if.then471
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_140
.LBB8_139:                              # %if.else474
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_140:                              # %if.end477
	movabsq	$.L.str.3, %rdi
	movl	$238, %esi
	movabsq	$.L.str.79, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rdi
	movl	$1, %esi
	callq	json_array_get_string
	cmpq	$0, %rax
	je	.LBB8_143
# %bb.141:                              # %land.lhs.true481
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_142
	jmp	.LBB8_143
.LBB8_142:                              # %cond.true482
	movq	-24(%rbp), %rdi
	movl	$1, %esi
	callq	json_array_get_string
	movq	%rax, %rdi
	movabsq	$.L.str.80, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_144
	jmp	.LBB8_145
.LBB8_143:                              # %cond.false486
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_144
	jmp	.LBB8_145
.LBB8_144:                              # %if.then487
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_146
.LBB8_145:                              # %if.else490
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_146:                              # %if.end493
	jmp	.LBB8_148
.LBB8_147:                              # %if.else494
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_148:                              # %if.end496
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.81, %rsi
	callq	t_strcpy
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_array
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB8_157
# %bb.149:                              # %if.then500
	movq	$0, -40(%rbp)
.LBB8_150:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	movq	-24(%rbp), %rdi
	callq	json_array_get_count
	movq	%rax, %rcx
	movq	-56(%rbp), %rax                 # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB8_156
# %bb.151:                              # %for.body
                                        #   in Loop: Header=BB8_150 Depth=1
	movl	$.L.str.3, %edi
	movl	$.L.str.82, %edx
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	movl	$247, %esi
	callq	printf
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	json_array_get_number
	movq	-40(%rbp), %rax
	imulq	%rax, %rax
	movq	%rax, %xmm1
	movaps	.LCPI8_6(%rip), %xmm2           # xmm2 = [1127219200,1160773632,0,0]
	punpckldq	%xmm2, %xmm1            # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movapd	.LCPI8_7(%rip), %xmm2           # xmm2 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	unpckhpd	%xmm1, %xmm1                    # xmm1 = xmm1[1,1]
	addsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_153
	jp	.LBB8_153
# %bb.152:                              # %if.then507
                                        #   in Loop: Header=BB8_150 Depth=1
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_154
.LBB8_153:                              # %if.else510
                                        #   in Loop: Header=BB8_150 Depth=1
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_154:                              # %if.end513
                                        #   in Loop: Header=BB8_150 Depth=1
	jmp	.LBB8_155
.LBB8_155:                              # %for.inc
                                        #   in Loop: Header=BB8_150 Depth=1
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB8_150
.LBB8_156:                              # %for.end
	jmp	.LBB8_158
.LBB8_157:                              # %if.else515
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_158:                              # %if.end517
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.83, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$253, %esi
	movabsq	$.L.str.84, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_array
	cmpq	$0, %rax
	jne	.LBB8_160
# %bb.159:                              # %if.then523
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_161
.LBB8_160:                              # %if.else526
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_161:                              # %if.end529
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.46, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$255, %esi
	movabsq	$.L.str.85, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_string
	cmpq	$0, %rax
	je	.LBB8_164
# %bb.162:                              # %land.lhs.true534
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_163
	jmp	.LBB8_164
.LBB8_163:                              # %cond.true535
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_string
	movq	%rax, %rdi
	movabsq	$.L.str.86, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_165
	jmp	.LBB8_166
.LBB8_164:                              # %cond.false540
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_165
	jmp	.LBB8_166
.LBB8_165:                              # %if.then541
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_167
.LBB8_166:                              # %if.else544
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_167:                              # %if.end547
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.46, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$257, %esi                      # imm = 0x101
	movabsq	$.L.str.87, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_boolean
	cmpl	$1, %eax
	jne	.LBB8_169
# %bb.168:                              # %if.then553
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_170
.LBB8_169:                              # %if.else556
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_170:                              # %if.end559
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.88, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$259, %esi                      # imm = 0x103
	movabsq	$.L.str.89, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_boolean
	cmpl	$0, %eax
	jne	.LBB8_172
# %bb.171:                              # %if.then565
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_173
.LBB8_172:                              # %if.else568
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_173:                              # %if.end571
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.56, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$261, %esi                      # imm = 0x105
	movabsq	$.L.str.90, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_value
	cmpq	$0, %rax
	je	.LBB8_175
# %bb.174:                              # %if.then577
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_176
.LBB8_175:                              # %if.else580
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_176:                              # %if.end583
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.48, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$263, %esi                      # imm = 0x107
	movabsq	$.L.str.91, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_number
	movsd	.LCPI8_5(%rip), %xmm1           # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_178
	jp	.LBB8_178
# %bb.177:                              # %if.then589
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_179
.LBB8_178:                              # %if.else592
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_179:                              # %if.end595
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.92, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$266, %esi                      # imm = 0x10A
	movabsq	$.L.str.93, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_value
	cmpq	$0, %rax
	jne	.LBB8_181
# %bb.180:                              # %if.then601
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_182
.LBB8_181:                              # %if.else604
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_182:                              # %if.end607
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.94, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$268, %esi                      # imm = 0x10C
	movabsq	$.L.str.93, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_value
	cmpq	$0, %rax
	jne	.LBB8_184
# %bb.183:                              # %if.then613
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_185
.LBB8_184:                              # %if.else616
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_185:                              # %if.end619
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.95, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$270, %esi                      # imm = 0x10E
	movabsq	$.L.str.93, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_value
	cmpq	$0, %rax
	jne	.LBB8_187
# %bb.186:                              # %if.then625
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_188
.LBB8_187:                              # %if.else628
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_188:                              # %if.end631
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.96, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$272, %esi                      # imm = 0x110
	movabsq	$.L.str.93, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_value
	cmpq	$0, %rax
	jne	.LBB8_190
# %bb.189:                              # %if.then637
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_191
.LBB8_190:                              # %if.else640
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_191:                              # %if.end643
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.37, %rsi
	callq	t_strcpy
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_array
	movq	%rax, -24(%rbp)
	movabsq	$.L.str.3, %rdi
	movl	$276, %esi                      # imm = 0x114
	movabsq	$.L.str.97, %rdx
	movb	$0, %al
	callq	printf
	cmpq	$0, -24(%rbp)
	je	.LBB8_193
# %bb.192:                              # %if.then649
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_194
.LBB8_193:                              # %if.else652
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_194:                              # %if.end655
	movabsq	$.L.str.3, %rdi
	movl	$277, %esi                      # imm = 0x115
	movabsq	$.L.str.98, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rdi
	callq	json_array_get_count
	cmpq	$1, %rax
	jbe	.LBB8_196
# %bb.195:                              # %if.then660
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_197
.LBB8_196:                              # %if.else663
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_197:                              # %if.end666
	cmpq	$0, -24(%rbp)
	je	.LBB8_212
# %bb.198:                              # %land.lhs.true669
	movq	-24(%rbp), %rdi
	callq	json_array_get_count
	cmpq	$1, %rax
	jbe	.LBB8_212
# %bb.199:                              # %if.then673
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.78, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$280, %esi                      # imm = 0x118
	movabsq	$.L.str.99, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_get_string
	cmpq	$0, %rax
	je	.LBB8_202
# %bb.200:                              # %land.lhs.true678
	cmpq	$0, -48(%rbp)
	je	.LBB8_202
# %bb.201:                              # %cond.true680
	movq	-24(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	json_array_get_string
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_203
	jmp	.LBB8_204
.LBB8_202:                              # %cond.false685
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_203
	jmp	.LBB8_204
.LBB8_203:                              # %if.then686
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_205
.LBB8_204:                              # %if.else689
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_205:                              # %if.end692
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.80, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$282, %esi                      # imm = 0x11A
	movabsq	$.L.str.100, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rdi
	movl	$1, %esi
	callq	json_array_get_string
	cmpq	$0, %rax
	je	.LBB8_208
# %bb.206:                              # %land.lhs.true697
	cmpq	$0, -48(%rbp)
	je	.LBB8_208
# %bb.207:                              # %cond.true699
	movq	-24(%rbp), %rdi
	movl	$1, %esi
	callq	json_array_get_string
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_209
	jmp	.LBB8_210
.LBB8_208:                              # %cond.false704
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_209
	jmp	.LBB8_210
.LBB8_209:                              # %if.then705
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_211
.LBB8_210:                              # %if.else708
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_211:                              # %if.end711
	jmp	.LBB8_212
.LBB8_212:                              # %if.end712
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.53, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$285, %esi                      # imm = 0x11D
	movabsq	$.L.str.87, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_dotget_boolean
	cmpl	$1, %eax
	jne	.LBB8_214
# %bb.213:                              # %if.then718
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_215
.LBB8_214:                              # %if.else721
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_215:                              # %if.end724
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.101, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$288, %esi                      # imm = 0x120
	movabsq	$.L.str.102, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	cmpq	$0, %rax
	je	.LBB8_218
# %bb.216:                              # %land.lhs.true729
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_217
	jmp	.LBB8_218
.LBB8_217:                              # %cond.true730
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	movq	%rax, %rdi
	movabsq	$.L.str.103, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_219
	jmp	.LBB8_220
.LBB8_218:                              # %cond.false735
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_219
	jmp	.LBB8_220
.LBB8_219:                              # %if.then736
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_221
.LBB8_220:                              # %if.else739
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_221:                              # %if.end742
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.104, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$290, %esi                      # imm = 0x122
	movabsq	$.L.str.102, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	cmpq	$0, %rax
	je	.LBB8_224
# %bb.222:                              # %land.lhs.true747
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_223
	jmp	.LBB8_224
.LBB8_223:                              # %cond.true748
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	movq	%rax, %rdi
	movabsq	$.L.str.103, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_225
	jmp	.LBB8_226
.LBB8_224:                              # %cond.false753
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_225
	jmp	.LBB8_226
.LBB8_225:                              # %if.then754
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_227
.LBB8_226:                              # %if.else757
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_227:                              # %if.end760
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.105, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$292, %esi                      # imm = 0x124
	movabsq	$.L.str.106, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	cmpq	$0, %rax
	je	.LBB8_230
# %bb.228:                              # %land.lhs.true765
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_229
	jmp	.LBB8_230
.LBB8_229:                              # %cond.true766
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	movq	%rax, %rdi
	movabsq	$.L.str.107, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_231
	jmp	.LBB8_232
.LBB8_230:                              # %cond.false771
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_231
	jmp	.LBB8_232
.LBB8_231:                              # %if.then772
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_233
.LBB8_232:                              # %if.else775
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_233:                              # %if.end778
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.108, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$294, %esi                      # imm = 0x126
	movabsq	$.L.str.109, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	cmpq	$0, %rax
	je	.LBB8_236
# %bb.234:                              # %land.lhs.true783
	movb	$1, %al
	testb	$1, %al
	jne	.LBB8_235
	jmp	.LBB8_236
.LBB8_235:                              # %cond.true784
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_string
	movq	%rax, %rdi
	movabsq	$.L.str.110, %rsi
	callq	t_strcmp
	cmpl	$0, %eax
	je	.LBB8_237
	jmp	.LBB8_238
.LBB8_236:                              # %cond.false789
	xorl	%eax, %eax
                                        # kill: def $al killed $al killed $eax
	testb	$1, %al
	jne	.LBB8_237
	jmp	.LBB8_238
.LBB8_237:                              # %if.then790
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_239
.LBB8_238:                              # %if.else793
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_239:                              # %if.end796
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.111, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$297, %esi                      # imm = 0x129
	movabsq	$.L.str.112, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_object
	cmpq	$0, %rax
	je	.LBB8_241
# %bb.240:                              # %if.then802
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_242
.LBB8_241:                              # %if.else805
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_242:                              # %if.end808
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.113, %rsi
	callq	t_strcpy
	movabsq	$.L.str.3, %rdi
	movl	$299, %esi                      # imm = 0x12B
	movabsq	$.L.str.114, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_array
	cmpq	$0, %rax
	je	.LBB8_244
# %bb.243:                              # %if.then814
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_245
.LBB8_244:                              # %if.else817
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_245:                              # %if.end820
	movabsq	$.L.str.3, %rdi
	movl	$301, %esi                      # imm = 0x12D
	movabsq	$.L.str.115, %rdx
	movb	$0, %al
	callq	printf
	movq	-16(%rbp), %rdi
	callq	json_object_get_wrapping_value
	cmpq	-8(%rbp), %rax
	jne	.LBB8_247
# %bb.246:                              # %if.then825
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_248
.LBB8_247:                              # %if.else828
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_248:                              # %if.end831
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.22, %rsi
	callq	t_strcpy
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_array
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdi
	movabsq	$.L.str.22, %rsi
	callq	t_strcpy
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_object_get_value
	movq	%rax, -32(%rbp)
	movabsq	$.L.str.3, %rdi
	movl	$306, %esi                      # imm = 0x132
	movabsq	$.L.str.116, %rdx
	movb	$0, %al
	callq	printf
	movq	-24(%rbp), %rdi
	callq	json_array_get_wrapping_value
	cmpq	-32(%rbp), %rax
	jne	.LBB8_250
# %bb.249:                              # %if.then840
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_251
.LBB8_250:                              # %if.else843
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_251:                              # %if.end846
	movabsq	$.L.str.3, %rdi
	movl	$307, %esi                      # imm = 0x133
	movabsq	$.L.str.117, %rdx
	movb	$0, %al
	callq	printf
	movq	-32(%rbp), %rdi
	callq	json_value_get_parent
	cmpq	-8(%rbp), %rax
	jne	.LBB8_253
# %bb.252:                              # %if.then851
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_254
.LBB8_253:                              # %if.else854
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_254:                              # %if.end857
	movabsq	$.L.str.3, %rdi
	movl	$308, %esi                      # imm = 0x134
	movabsq	$.L.str.118, %rdx
	movb	$0, %al
	callq	printf
	movq	-8(%rbp), %rdi
	callq	json_value_get_parent
	cmpq	$0, %rax
	jne	.LBB8_256
# %bb.255:                              # %if.then862
	movabsq	$.L.str.5, %rdi
	callq	puts
	movl	tests_passed, %eax
	addl	$1, %eax
	movl	%eax, tests_passed
	jmp	.LBB8_257
.LBB8_256:                              # %if.else865
	movabsq	$.L.str.6, %rdi
	callq	puts
	movl	tests_failed, %eax
	addl	$1, %eax
	movl	%eax, tests_failed
.LBB8_257:                              # %if.end868
	addq	$64, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	test_suite_2, .Lfunc_end8-test_suite_2
	.cfi_endproc
                                        # -- End function
	.globl	print_commits_info              # -- Begin function print_commits_info
	.p2align	4, 0x90
	.type	print_commits_info,@function
print_commits_info:                     # @print_commits_info
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$896, %rsp                      # imm = 0x380
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	.L__const.print_commits_info.output_filename, %rax
	movq	%rax, -829(%rbp)
	movl	.L__const.print_commits_info.output_filename+8, %eax
	movl	%eax, -821(%rbp)
	movb	.L__const.print_commits_info.output_filename+12, %al
	movb	%al, -817(%rbp)
	leaq	-560(%rbp), %rdi
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	leaq	-829(%rbp), %r8
	movabsq	$.L.str.309, %rsi
	movb	$0, %al
	callq	sprintf
	leaq	-816(%rbp), %rdi
	leaq	-829(%rbp), %rdx
	movabsq	$.L.str.310, %rsi
	movb	$0, %al
	callq	sprintf
	leaq	-560(%rbp), %rdi
	callq	system
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -840(%rbp)
	movq	-840(%rbp), %rdi
	leaq	-829(%rbp), %rsi
	callq	t_strcpy
	movq	-840(%rbp), %rdi
	callq	json_parse_file
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	json_value_get_type
	cmpl	$5, %eax
	je	.LBB9_2
# %bb.1:                                # %if.then
	leaq	-816(%rbp), %rdi
	callq	system
	jmp	.LBB9_7
.LBB9_2:                                # %if.end
	movq	-24(%rbp), %rdi
	callq	json_value_get_array
	movq	%rax, -32(%rbp)
	movabsq	$.L.str.311, %rdi
	movabsq	$.L.str.312, %rsi
	movabsq	$.L.str.313, %rdx
	movabsq	$.L.str.314, %rcx
	movb	$0, %al
	callq	printf
	movq	$0, -48(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movq	%rax, -872(%rbp)                # 8-byte Spill
	movq	-32(%rbp), %rdi
	callq	json_array_get_count
	movq	%rax, %rcx
	movq	-872(%rbp), %rax                # 8-byte Reload
	cmpq	%rcx, %rax
	jae	.LBB9_6
# %bb.4:                                # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	json_array_get_object
	movq	%rax, -40(%rbp)
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -848(%rbp)
	movq	-848(%rbp), %rdi
	movabsq	$.L.str.315, %rsi
	callq	t_strcpy
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -856(%rbp)
	movq	-856(%rbp), %rdi
	movabsq	$.L.str.316, %rsi
	callq	t_strcpy
	movl	$100, %edi
	callq	string_tainted_malloc
	movq	%rax, -864(%rbp)
	movq	-864(%rbp), %rdi
	movabsq	$.L.str.317, %rsi
	callq	t_strcpy
	movq	-40(%rbp), %rdi
	movq	-848(%rbp), %rsi
	callq	json_object_dotget_string
	movq	%rax, -888(%rbp)                # 8-byte Spill
	movq	-40(%rbp), %rdi
	movq	-856(%rbp), %rsi
	callq	json_object_get_string
	movq	%rax, -880(%rbp)                # 8-byte Spill
	movq	-40(%rbp), %rdi
	movq	-864(%rbp), %rsi
	callq	json_object_dotget_string
	movq	-888(%rbp), %rsi                # 8-byte Reload
	movq	-880(%rbp), %rdx                # 8-byte Reload
	movq	%rax, %rcx
	movabsq	$.L.str.318, %rdi
	movb	$0, %al
	callq	printf
# %bb.5:                                # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-48(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB9_3
.LBB9_6:                                # %for.end
	movq	-24(%rbp), %rdi
	callq	json_value_free
	leaq	-816(%rbp), %rdi
	callq	system
.LBB9_7:                                # %return
	addq	$896, %rsp                      # imm = 0x380
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	print_commits_info, .Lfunc_end9-print_commits_info
	.cfi_endproc
                                        # -- End function
	.type	header_global_var,@object       # @header_global_var
	.bss
	.globl	header_global_var
	.p2align	3
header_global_var:
	.quad	0
	.size	header_global_var, 8

	.type	counted_malloc,@object          # @counted_malloc
	.local	counted_malloc
	.comm	counted_malloc,8,8
	.type	counted_free,@object            # @counted_free
	.local	counted_free
	.comm	counted_free,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Tests failed: %d\n"
	.size	.L.str, 18

	.type	tests_failed,@object            # @tests_failed
	.local	tests_failed
	.comm	tests_failed,4,4
	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Tests passed: %d\n"
	.size	.L.str.1, 18

	.type	tests_passed,@object            # @tests_passed
	.local	tests_passed
	.comm	tests_passed,4,4
	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"tests/test_1_1.txt"
	.size	.L.str.2, 19

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"%d %-72s-"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"(val_tainted = json_parse_file(filename)) != NULL"
	.size	.L.str.4, 50

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" OK"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	" FAIL"
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"json_value_equals(json_parse_string(json_serialize_to_string(val_tainted)), val_tainted)"
	.size	.L.str.7, 89

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"json_value_equals(json_parse_string(json_serialize_to_string_pretty(val_tainted)), val_tainted)"
	.size	.L.str.8, 96

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"tests/test_1_2.txt"
	.size	.L.str.9, 19

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"(val_tainted = json_parse_file(filename)) == NULL"
	.size	.L.str.10, 50

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"tests/test_1_3.txt"
	.size	.L.str.11, 19

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"(val_tainted = json_parse_file_with_comments(filename, &parse_value)) != NULL"
	.size	.L.str.12, 78

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"(val_tainted = json_parse_file_with_comments(filename, &parse_value)) == NULL"
	.size	.L.str.13, 78

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"root_value"
	.size	.L.str.14, 11

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"json_value_get_type(root_value) == JSONObject"
	.size	.L.str.15, 46

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"string"
	.size	.L.str.16, 7

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"json_object_has_value(root_object, value_type)"
	.size	.L.str.17, 47

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"_string"
	.size	.L.str.18, 8

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"!json_object_has_value(root_object, value_type)"
	.size	.L.str.19, 48

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"object"
	.size	.L.str.20, 7

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"json_object_has_value_of_type(root_object, value_type, JSONObject)"
	.size	.L.str.21, 67

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"string array"
	.size	.L.str.22, 13

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"!json_object_has_value_of_type(root_object,value_type, JSONObject)"
	.size	.L.str.23, 67

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"json_object_has_value_of_type(root_object,value_type , JSONArray)"
	.size	.L.str.24, 66

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"!json_object_has_value_of_type(root_object, value_type, JSONArray)"
	.size	.L.str.25, 67

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"json_object_has_value_of_type(root_object, value_type, JSONString)"
	.size	.L.str.26, 67

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"positive one"
	.size	.L.str.27, 13

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"!json_object_has_value_of_type(root_object, value_type, JSONString)"
	.size	.L.str.28, 68

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"json_object_has_value_of_type(root_object, value_type, JSONNumber)"
	.size	.L.str.29, 67

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"!json_object_has_value_of_type(root_object, value_type, JSONNumber)"
	.size	.L.str.30, 68

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"boolean true"
	.size	.L.str.31, 13

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"json_object_has_value_of_type(root_object, value_type, JSONBoolean)"
	.size	.L.str.32, 68

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"!json_object_has_value_of_type(root_object, value_type, JSONBoolean)"
	.size	.L.str.33, 69

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"null"
	.size	.L.str.34, 5

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"json_object_has_value_of_type(root_object, value_type, JSONNull)"
	.size	.L.str.35, 65

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"!json_object_has_value_of_type(root_object, value_type, JSONNull)"
	.size	.L.str.36, 66

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"object.nested array"
	.size	.L.str.37, 20

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"json_object_dothas_value(root_object, value_type)"
	.size	.L.str.38, 50

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"_object.nested array"
	.size	.L.str.39, 21

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"!json_object_dothas_value(root_object, value_type)"
	.size	.L.str.40, 51

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"object.nested object"
	.size	.L.str.41, 21

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"json_object_dothas_value_of_type(root_object, value_type, JSONObject)"
	.size	.L.str.42, 70

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"!json_object_dothas_value_of_type(root_object, value_type, JSONObject)"
	.size	.L.str.43, 71

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"json_object_dothas_value_of_type(root_object, value_type, JSONArray)"
	.size	.L.str.44, 69

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"!json_object_dothas_value_of_type(root_object, value_type, JSONArray)"
	.size	.L.str.45, 70

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"object.nested string"
	.size	.L.str.46, 21

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"json_object_dothas_value_of_type(root_object, value_type, JSONString)"
	.size	.L.str.47, 70

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"object.nested number"
	.size	.L.str.48, 21

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"!json_object_dothas_value_of_type(root_object, value_type, JSONString)"
	.size	.L.str.49, 71

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"json_object_dothas_value_of_type(root_object, value_type, JSONNumber)"
	.size	.L.str.50, 70

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"_object.nested whatever"
	.size	.L.str.51, 24

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"!json_object_dothas_value_of_type(root_object, value_type, JSONNumber)"
	.size	.L.str.52, 71

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"object.nested true"
	.size	.L.str.53, 19

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"json_object_dothas_value_of_type(root_object, value_type, JSONBoolean)"
	.size	.L.str.54, 71

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"!json_object_dothas_value_of_type(root_object, value_type, JSONBoolean)"
	.size	.L.str.55, 72

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"object.nested null"
	.size	.L.str.56, 19

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"json_object_dothas_value_of_type(root_object, value_type, JSONNull)"
	.size	.L.str.57, 68

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"!json_object_dothas_value_of_type(root_object, value_type, JSONNull)"
	.size	.L.str.58, 69

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"STREQ(json_object_get_string(root_object, value_type), \"lorem ipsum\")"
	.size	.L.str.59, 70

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"lorem ipsum"
	.size	.L.str.60, 12

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"utf string"
	.size	.L.str.61, 11

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"utf-8 string"
	.size	.L.str.62, 13

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"STREQ(json_object_get_string(root_object, value_type), \"\343\201\202\343\201\204\343\201\206\343\201\210\343\201\212\")"
	.size	.L.str.63, 74

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"\343\201\202\343\201\204\343\201\206\343\201\210\343\201\212"
	.size	.L.str.64, 16

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"surrogate string"
	.size	.L.str.65, 17

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"STREQ(json_object_get_string(root_object,value_type), \"lorem\360\235\204\236ipsum\360\235\215\247lorem\")"
	.size	.L.str.66, 81

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"lorem\360\235\204\236ipsum\360\235\215\247lorem"
	.size	.L.str.67, 24

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"json_object_get_number(root_object, value_type) == 1.0"
	.size	.L.str.68, 55

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"negative one"
	.size	.L.str.69, 13

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"json_object_get_number(root_object, value_type) == -1.0"
	.size	.L.str.70, 56

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"hard to parse number"
	.size	.L.str.71, 21

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"fabs(json_object_get_number(root_object, value_type) - (-0.000314)) < EPSILON"
	.size	.L.str.72, 78

	.type	.L.str.73,@object               # @.str.73
.L.str.73:
	.asciz	"json_object_get_boolean(root_object, value_type) == 1"
	.size	.L.str.73, 54

	.type	.L.str.74,@object               # @.str.74
.L.str.74:
	.asciz	"boolean false"
	.size	.L.str.74, 14

	.type	.L.str.75,@object               # @.str.75
.L.str.75:
	.asciz	"json_object_get_boolean(root_object, value_type) == 0"
	.size	.L.str.75, 54

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"json_value_get_type(json_object_get_value(root_object, value_type)) == JSONNull"
	.size	.L.str.76, 80

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"STREQ(json_array_get_string(array, 0), \"lorem\")"
	.size	.L.str.77, 48

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"lorem"
	.size	.L.str.78, 6

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"STREQ(json_array_get_string(array, 1), \"ipsum\")"
	.size	.L.str.79, 48

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"ipsum"
	.size	.L.str.80, 6

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"x^2 array"
	.size	.L.str.81, 10

	.type	.L.str.82,@object               # @.str.82
.L.str.82:
	.asciz	"json_array_get_number(array, i) == (i * i)"
	.size	.L.str.82, 43

	.type	.L.str.83,@object               # @.str.83
.L.str.83:
	.asciz	"non existent array"
	.size	.L.str.83, 19

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"json_object_get_array(root_object, value_type) == NULL"
	.size	.L.str.84, 55

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"STREQ(json_object_dotget_string(root_object, value_type), \"str\")"
	.size	.L.str.85, 65

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"str"
	.size	.L.str.86, 4

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"json_object_dotget_boolean(root_object, value_type) == 1"
	.size	.L.str.87, 57

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"object.nested false"
	.size	.L.str.88, 20

	.type	.L.str.89,@object               # @.str.89
.L.str.89:
	.asciz	"json_object_dotget_boolean(root_object, value_type) == 0"
	.size	.L.str.89, 57

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"json_object_dotget_value(root_object, value_type) != NULL"
	.size	.L.str.90, 58

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"json_object_dotget_number(root_object, value_type) == 123"
	.size	.L.str.91, 58

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"should.be.null"
	.size	.L.str.92, 15

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"json_object_dotget_value(root_object, value_type) == NULL"
	.size	.L.str.93, 58

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"should.be.null."
	.size	.L.str.94, 16

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"."
	.size	.L.str.95, 2

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.zero	1
	.size	.L.str.96, 1

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"array != NULL"
	.size	.L.str.97, 14

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"json_array_get_count(array) > 1"
	.size	.L.str.98, 32

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"STREQ(json_array_get_string(array, 0), value_type)"
	.size	.L.str.99, 51

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"STREQ(json_array_get_string(array, 1), value_type)"
	.size	.L.str.100, 51

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"/**/"
	.size	.L.str.101, 5

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"STREQ(json_object_get_string(root_object, value_type), \"comment\")"
	.size	.L.str.102, 66

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"comment"
	.size	.L.str.103, 8

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"//"
	.size	.L.str.104, 3

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"url"
	.size	.L.str.105, 4

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"STREQ(json_object_get_string(root_object, value_type), \"https://www.example.com/search?q=12345\")"
	.size	.L.str.106, 97

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"https://www.example.com/search?q=12345"
	.size	.L.str.107, 39

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"escaped chars"
	.size	.L.str.108, 14

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"STREQ(json_object_get_string(root_object, value_type), \"\\\" \\\\ /\")"
	.size	.L.str.109, 66

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"\" \\ /"
	.size	.L.str.110, 6

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"empty object"
	.size	.L.str.111, 13

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"json_object_get_object(root_object, value_type) != NULL"
	.size	.L.str.112, 56

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"empty array"
	.size	.L.str.113, 12

	.type	.L.str.114,@object              # @.str.114
.L.str.114:
	.asciz	"json_object_get_array(root_object, value_type) != NULL"
	.size	.L.str.114, 55

	.type	.L.str.115,@object              # @.str.115
.L.str.115:
	.asciz	"json_object_get_wrapping_value(root_object) == root_value"
	.size	.L.str.115, 58

	.type	.L.str.116,@object              # @.str.116
.L.str.116:
	.asciz	"json_array_get_wrapping_value(array) == array_value"
	.size	.L.str.116, 52

	.type	.L.str.117,@object              # @.str.117
.L.str.117:
	.asciz	"json_value_get_parent(array_value) == root_value"
	.size	.L.str.117, 49

	.type	.L.str.118,@object              # @.str.118
.L.str.118:
	.asciz	"json_value_get_parent(root_value) == NULL"
	.size	.L.str.118, 42

	.type	.L.str.119,@object              # @.str.119
.L.str.119:
	.asciz	"tests/test_2.txt"
	.size	.L.str.119, 17

	.type	.L.str.120,@object              # @.str.120
.L.str.120:
	.asciz	"json_value_equals(root_value, json_parse_string(json_serialize_to_string(root_value)))"
	.size	.L.str.120, 87

	.type	.L.str.121,@object              # @.str.121
.L.str.121:
	.asciz	"json_value_equals(root_value, json_parse_string(json_serialize_to_string_pretty(root_value)))"
	.size	.L.str.121, 94

	.type	.L.str.122,@object              # @.str.122
.L.str.122:
	.asciz	"tests/test_2_comments.txt"
	.size	.L.str.122, 26

	.type	.L.str.123,@object              # @.str.123
.L.str.123:
	.asciz	"Testing valid strings:"
	.size	.L.str.123, 23

	.type	.L.str.124,@object              # @.str.124
.L.str.124:
	.asciz	"{\"lorem\":\"ipsum\"}"
	.size	.L.str.124, 18

	.type	.L.str.125,@object              # @.str.125
.L.str.125:
	.asciz	"json_parse_string(filename) != NULL"
	.size	.L.str.125, 36

	.type	.L.str.126,@object              # @.str.126
.L.str.126:
	.asciz	"[\"lorem\"]"
	.size	.L.str.126, 10

	.type	.L.str.127,@object              # @.str.127
.L.str.127:
	.asciz	"true"
	.size	.L.str.127, 5

	.type	.L.str.128,@object              # @.str.128
.L.str.128:
	.asciz	"false"
	.size	.L.str.128, 6

	.type	.L.str.129,@object              # @.str.129
.L.str.129:
	.asciz	"\"string\""
	.size	.L.str.129, 9

	.type	.L.str.130,@object              # @.str.130
.L.str.130:
	.asciz	"123"
	.size	.L.str.130, 4

	.type	.L.str.131,@object              # @.str.131
.L.str.131:
	.asciz	"Test UTF-16 parsing:"
	.size	.L.str.131, 21

	.type	.L.str.132,@object              # @.str.132
.L.str.132:
	.asciz	"\"\\u0024x\""
	.size	.L.str.132, 10

	.type	.L.str.133,@object              # @.str.133
.L.str.133:
	.asciz	"STREQ(json_string(json_parse_string(filename)), \"$x\")"
	.size	.L.str.133, 54

	.type	.L.str.134,@object              # @.str.134
.L.str.134:
	.asciz	"$x"
	.size	.L.str.134, 3

	.type	.L.str.135,@object              # @.str.135
.L.str.135:
	.asciz	"\"\\u00A2x\""
	.size	.L.str.135, 10

	.type	.L.str.136,@object              # @.str.136
.L.str.136:
	.asciz	"STREQ(json_string(json_parse_string(filename)), \"\302\242x\")"
	.size	.L.str.136, 55

	.type	.L.str.137,@object              # @.str.137
.L.str.137:
	.asciz	"\302\242x"
	.size	.L.str.137, 4

	.type	.L.str.138,@object              # @.str.138
.L.str.138:
	.asciz	"\"\\u20ACx\""
	.size	.L.str.138, 10

	.type	.L.str.139,@object              # @.str.139
.L.str.139:
	.asciz	"STREQ(json_string(json_parse_string(filename)), \"\342\202\254x\")"
	.size	.L.str.139, 56

	.type	.L.str.140,@object              # @.str.140
.L.str.140:
	.asciz	"\342\202\254x"
	.size	.L.str.140, 5

	.type	.L.str.141,@object              # @.str.141
.L.str.141:
	.asciz	"\"\\uD801\\uDC37x\""
	.size	.L.str.141, 16

	.type	.L.str.142,@object              # @.str.142
.L.str.142:
	.asciz	"STREQ(json_string(json_parse_string(filename)), \"\360\220\220\267x\")"
	.size	.L.str.142, 57

	.type	.L.str.143,@object              # @.str.143
.L.str.143:
	.asciz	"\360\220\220\267x"
	.size	.L.str.143, 6

	.type	.L.str.144,@object              # @.str.144
.L.str.144:
	.asciz	"Testing invalid strings:"
	.size	.L.str.144, 25

	.type	malloc_count,@object            # @malloc_count
	.local	malloc_count
	.comm	malloc_count,4,4
	.type	.L.str.145,@object              # @.str.145
.L.str.145:
	.asciz	"json_parse_string(NULL) == NULL"
	.size	.L.str.145, 32

	.type	.L.str.146,@object              # @.str.146
.L.str.146:
	.asciz	"json_parse_string(filename) == NULL"
	.size	.L.str.146, 36

	.type	.L.str.147,@object              # @.str.147
.L.str.147:
	.asciz	"[\"lorem\",]"
	.size	.L.str.147, 11

	.type	.L.str.148,@object              # @.str.148
.L.str.148:
	.asciz	"{\"lorem\":\"ipsum\",}"
	.size	.L.str.148, 19

	.type	.L.str.149,@object              # @.str.149
.L.str.149:
	.asciz	"{lorem:ipsum}"
	.size	.L.str.149, 14

	.type	.L.str.150,@object              # @.str.150
.L.str.150:
	.asciz	"[,]"
	.size	.L.str.150, 4

	.type	.L.str.151,@object              # @.str.151
.L.str.151:
	.asciz	"[,"
	.size	.L.str.151, 3

	.type	.L.str.152,@object              # @.str.152
.L.str.152:
	.asciz	"["
	.size	.L.str.152, 2

	.type	.L.str.153,@object              # @.str.153
.L.str.153:
	.asciz	"]"
	.size	.L.str.153, 2

	.type	.L.str.154,@object              # @.str.154
.L.str.154:
	.asciz	"{\"a\":0,\"a\":0}"
	.size	.L.str.154, 14

	.type	.L.str.155,@object              # @.str.155
.L.str.155:
	.asciz	"{:,}"
	.size	.L.str.155, 5

	.type	.L.str.156,@object              # @.str.156
.L.str.156:
	.asciz	"{,}"
	.size	.L.str.156, 4

	.type	.L.str.157,@object              # @.str.157
.L.str.157:
	.asciz	"{,"
	.size	.L.str.157, 3

	.type	.L.str.158,@object              # @.str.158
.L.str.158:
	.asciz	"{:"
	.size	.L.str.158, 3

	.type	.L.str.159,@object              # @.str.159
.L.str.159:
	.asciz	"{"
	.size	.L.str.159, 2

	.type	.L.str.160,@object              # @.str.160
.L.str.160:
	.asciz	"}"
	.size	.L.str.160, 2

	.type	.L.str.161,@object              # @.str.161
.L.str.161:
	.asciz	"x"
	.size	.L.str.161, 2

	.type	.L.str.162,@object              # @.str.162
.L.str.162:
	.asciz	"{:\"no name\"}"
	.size	.L.str.162, 13

	.type	.L.str.163,@object              # @.str.163
.L.str.163:
	.asciz	"[,\"no first value\"]"
	.size	.L.str.163, 20

	.type	.L.str.164,@object              # @.str.164
.L.str.164:
	.asciz	"{\"key\"\"value\"}"
	.size	.L.str.164, 15

	.type	.L.str.165,@object              # @.str.165
.L.str.165:
	.asciz	"{\"a\"}"
	.size	.L.str.165, 6

	.type	.L.str.166,@object              # @.str.166
.L.str.166:
	.asciz	"[\"\\u00zz\"]"
	.size	.L.str.166, 11

	.type	.L.str.167,@object              # @.str.167
.L.str.167:
	.asciz	"[\"\\u00\"]"
	.size	.L.str.167, 9

	.type	.L.str.168,@object              # @.str.168
.L.str.168:
	.asciz	"[\"\\u\"]"
	.size	.L.str.168, 7

	.type	.L.str.169,@object              # @.str.169
.L.str.169:
	.asciz	"[\"\\\"]"
	.size	.L.str.169, 6

	.type	.L.str.170,@object              # @.str.170
.L.str.170:
	.asciz	"[\"\"\"]"
	.size	.L.str.170, 6

	.type	.L.str.171,@object              # @.str.171
	.section	.rodata,"a",@progbits
.L.str.171:
	.asciz	"[\"\000\"]"
	.size	.L.str.171, 6

	.type	.L.str.172,@object              # @.str.172
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.172:
	.asciz	"[\"\007\"]"
	.size	.L.str.172, 6

	.type	.L.str.173,@object              # @.str.173
.L.str.173:
	.asciz	"[\"\b\"]"
	.size	.L.str.173, 6

	.type	.L.str.174,@object              # @.str.174
.L.str.174:
	.asciz	"[\"\t\"]"
	.size	.L.str.174, 6

	.type	.L.str.175,@object              # @.str.175
.L.str.175:
	.asciz	"[\"\n\"]"
	.size	.L.str.175, 6

	.type	.L.str.176,@object              # @.str.176
.L.str.176:
	.asciz	"[\"\f\"]"
	.size	.L.str.176, 6

	.type	.L.str.177,@object              # @.str.177
.L.str.177:
	.asciz	"[\"\r\"]"
	.size	.L.str.177, 6

	.type	.L.str.178,@object              # @.str.178
.L.str.178:
	.asciz	"[0x2]"
	.size	.L.str.178, 6

	.type	.L.str.179,@object              # @.str.179
.L.str.179:
	.asciz	"[0X2]"
	.size	.L.str.179, 6

	.type	.L.str.180,@object              # @.str.180
.L.str.180:
	.asciz	"[07]"
	.size	.L.str.180, 5

	.type	.L.str.181,@object              # @.str.181
.L.str.181:
	.asciz	"[0070]"
	.size	.L.str.181, 7

	.type	.L.str.182,@object              # @.str.182
.L.str.182:
	.asciz	"[07.0]"
	.size	.L.str.182, 7

	.type	.L.str.183,@object              # @.str.183
.L.str.183:
	.asciz	"[-07]"
	.size	.L.str.183, 6

	.type	.L.str.184,@object              # @.str.184
.L.str.184:
	.asciz	"[-007]"
	.size	.L.str.184, 7

	.type	.L.str.185,@object              # @.str.185
.L.str.185:
	.asciz	"[-07.0]"
	.size	.L.str.185, 8

	.type	.L.str.186,@object              # @.str.186
.L.str.186:
	.asciz	"[\"\\uDF67\\uD834\"]"
	.size	.L.str.186, 17

	.type	.L.str.187,@object              # @.str.187
.L.str.187:
	.asciz	"[1.7976931348623157e309]"
	.size	.L.str.187, 25

	.type	.L.str.188,@object              # @.str.188
.L.str.188:
	.asciz	"[-1.7976931348623157e309]"
	.size	.L.str.188, 26

	.type	.L.str.189,@object              # @.str.189
.L.str.189:
	.asciz	"malloc_count == 0"
	.size	.L.str.189, 18

	.type	.L.str.190,@object              # @.str.190
.L.str.190:
	.asciz	"Testing %s:\n"
	.size	.L.str.190, 13

	.type	.L.str.191,@object              # @.str.191
.L.str.191:
	.asciz	"json_value_equals(a, a)"
	.size	.L.str.191, 24

	.type	.L.str.192,@object              # @.str.192
.L.str.192:
	.asciz	"a_copy != NULL"
	.size	.L.str.192, 15

	.type	.L.str.193,@object              # @.str.193
.L.str.193:
	.asciz	"json_value_equals(a, a_copy)"
	.size	.L.str.193, 29

	.type	.L.str.194,@object              # @.str.194
.L.str.194:
	.asciz	"tests/test_5.txt"
	.size	.L.str.194, 17

	.type	.L.str.195,@object              # @.str.195
.L.str.195:
	.asciz	"val != NULL"
	.size	.L.str.195, 12

	.type	.L.str.196,@object              # @.str.196
.L.str.196:
	.asciz	"obj != NULL"
	.size	.L.str.196, 12

	.type	.L.str.197,@object              # @.str.197
.L.str.197:
	.asciz	"first"
	.size	.L.str.197, 6

	.type	.L.str.198,@object              # @.str.198
.L.str.198:
	.asciz	"John"
	.size	.L.str.198, 5

	.type	.L.str.199,@object              # @.str.199
.L.str.199:
	.asciz	"json_object_set_string(obj, string_1, string_2) == JSONSuccess"
	.size	.L.str.199, 63

	.type	.L.str.200,@object              # @.str.200
.L.str.200:
	.asciz	"last"
	.size	.L.str.200, 5

	.type	.L.str.201,@object              # @.str.201
.L.str.201:
	.asciz	"Doe"
	.size	.L.str.201, 4

	.type	.L.str.202,@object              # @.str.202
.L.str.202:
	.asciz	"age"
	.size	.L.str.202, 4

	.type	.L.str.203,@object              # @.str.203
.L.str.203:
	.asciz	"json_object_set_number(obj, string_1, 25) == JSONSuccess"
	.size	.L.str.203, 57

	.type	.L.str.204,@object              # @.str.204
.L.str.204:
	.asciz	"registered"
	.size	.L.str.204, 11

	.type	.L.str.205,@object              # @.str.205
.L.str.205:
	.asciz	"json_object_set_boolean(obj, string_1, 1) == JSONSuccess"
	.size	.L.str.205, 57

	.type	.L.str.206,@object              # @.str.206
.L.str.206:
	.asciz	"interests"
	.size	.L.str.206, 10

	.type	.L.str.207,@object              # @.str.207
.L.str.207:
	.asciz	"json_object_set_value(obj, string_1, json_value_init_array()) == JSONSuccess"
	.size	.L.str.207, 77

	.type	.L.str.208,@object              # @.str.208
.L.str.208:
	.asciz	"interests_arr != NULL"
	.size	.L.str.208, 22

	.type	.L.str.209,@object              # @.str.209
.L.str.209:
	.asciz	"Writing"
	.size	.L.str.209, 8

	.type	.L.str.210,@object              # @.str.210
.L.str.210:
	.asciz	"json_array_append_string(interests_arr, string_1) == JSONSuccess"
	.size	.L.str.210, 65

	.type	.L.str.211,@object              # @.str.211
.L.str.211:
	.asciz	"Mountain Biking"
	.size	.L.str.211, 16

	.type	.L.str.212,@object              # @.str.212
.L.str.212:
	.asciz	"Reading"
	.size	.L.str.212, 8

	.type	.L.str.213,@object              # @.str.213
.L.str.213:
	.asciz	"json_array_replace_string(interests_arr, 0, string_1) == JSONSuccess"
	.size	.L.str.213, 69

	.type	.L.str.214,@object              # @.str.214
.L.str.214:
	.asciz	"favorites.color"
	.size	.L.str.214, 16

	.type	.L.str.215,@object              # @.str.215
.L.str.215:
	.asciz	"blue"
	.size	.L.str.215, 5

	.type	.L.str.216,@object              # @.str.216
.L.str.216:
	.asciz	"json_object_dotset_string(obj, string_1, string_2) == JSONSuccess"
	.size	.L.str.216, 66

	.type	.L.str.217,@object              # @.str.217
.L.str.217:
	.asciz	"running"
	.size	.L.str.217, 8

	.type	.L.str.218,@object              # @.str.218
.L.str.218:
	.asciz	"favorites.fruit"
	.size	.L.str.218, 16

	.type	.L.str.219,@object              # @.str.219
.L.str.219:
	.asciz	"apple"
	.size	.L.str.219, 6

	.type	.L.str.220,@object              # @.str.220
.L.str.220:
	.asciz	"json_object_dotremove(obj, string_1) == JSONSuccess"
	.size	.L.str.220, 52

	.type	.L.str.221,@object              # @.str.221
.L.str.221:
	.asciz	"windows path"
	.size	.L.str.221, 13

	.type	.L.str.222,@object              # @.str.222
.L.str.222:
	.asciz	"C:\\Windows\\Path"
	.size	.L.str.222, 16

	.type	.L.str.223,@object              # @.str.223
.L.str.223:
	.asciz	"json_value_equals(val_from_file, val)"
	.size	.L.str.223, 38

	.type	.L.str.224,@object              # @.str.224
.L.str.224:
	.asciz	"json_object_set_string(obj, NULL, string_1) == JSONFailure"
	.size	.L.str.224, 59

	.type	.L.str.225,@object              # @.str.225
.L.str.225:
	.asciz	"json_object_set_string(obj, string_1, NULL) == JSONFailure"
	.size	.L.str.225, 59

	.type	.L.str.226,@object              # @.str.226
.L.str.226:
	.asciz	"json_object_set_string(obj, NULL, NULL) == JSONFailure"
	.size	.L.str.226, 55

	.type	.L.str.227,@object              # @.str.227
.L.str.227:
	.asciz	"json_object_set_value(obj, NULL, NULL) == JSONFailure"
	.size	.L.str.227, 54

	.type	.L.str.228,@object              # @.str.228
.L.str.228:
	.asciz	"json_object_dotset_string(obj, NULL, string_1) == JSONFailure"
	.size	.L.str.228, 62

	.type	.L.str.229,@object              # @.str.229
.L.str.229:
	.asciz	"json_object_dotset_string(obj, string_1, NULL) == JSONFailure"
	.size	.L.str.229, 62

	.type	.L.str.230,@object              # @.str.230
.L.str.230:
	.asciz	"json_object_dotset_string(obj, NULL, NULL) == JSONFailure"
	.size	.L.str.230, 58

	.type	.L.str.231,@object              # @.str.231
.L.str.231:
	.asciz	"json_object_dotset_value(obj, NULL, NULL) == JSONFailure"
	.size	.L.str.231, 57

	.type	.L.str.232,@object              # @.str.232
.L.str.232:
	.asciz	"json_array_append_string(NULL, string_1) == JSONFailure"
	.size	.L.str.232, 56

	.type	.L.str.233,@object              # @.str.233
.L.str.233:
	.asciz	"json_array_append_value(interests_arr, NULL) == JSONFailure"
	.size	.L.str.233, 60

	.type	.L.str.234,@object              # @.str.234
.L.str.234:
	.asciz	"json_array_append_value(NULL, NULL) == JSONFailure"
	.size	.L.str.234, 51

	.type	.L.str.235,@object              # @.str.235
.L.str.235:
	.asciz	"json_array_remove(NULL, 0) == JSONFailure"
	.size	.L.str.235, 42

	.type	.L.str.236,@object              # @.str.236
.L.str.236:
	.asciz	"json_array_replace_value(interests_arr, 0, NULL) == JSONFailure"
	.size	.L.str.236, 64

	.type	.L.str.237,@object              # @.str.237
.L.str.237:
	.asciz	"json_array_replace_string(NULL, 0, string_1) == JSONFailure"
	.size	.L.str.237, 60

	.type	.L.str.238,@object              # @.str.238
.L.str.238:
	.asciz	"not existing"
	.size	.L.str.238, 13

	.type	.L.str.239,@object              # @.str.239
.L.str.239:
	.asciz	"json_array_replace_string(interests_arr, 100, string_1) == JSONFailure"
	.size	.L.str.239, 71

	.type	.L.str.240,@object              # @.str.240
.L.str.240:
	.asciz	"json_array_append_string(json_object_get_array(obj, string_1), NULL) == JSONFailure"
	.size	.L.str.240, 84

	.type	.L.str.241,@object              # @.str.241
.L.str.241:
	.asciz	"json_array_remove(interests_arr, 0) == JSONSuccess"
	.size	.L.str.241, 51

	.type	.L.str.242,@object              # @.str.242
.L.str.242:
	.asciz	"json_array_remove(interests_arr, 1) == JSONSuccess"
	.size	.L.str.242, 51

	.type	.L.str.243,@object              # @.str.243
.L.str.243:
	.asciz	"json_array_remove(interests_arr, 0) == JSONFailure"
	.size	.L.str.243, 51

	.type	.L.str.244,@object              # @.str.244
.L.str.244:
	.asciz	"json_object_set_value(obj, string_1, val_parent) == JSONSuccess"
	.size	.L.str.244, 64

	.type	.L.str.245,@object              # @.str.245
.L.str.245:
	.asciz	"json_object_set_value(obj, string_1, val_parent) == JSONFailure"
	.size	.L.str.245, 64

	.type	.L.str.246,@object              # @.str.246
.L.str.246:
	.asciz	"json_array_append_value(interests_arr, val_parent) == JSONSuccess"
	.size	.L.str.246, 66

	.type	.L.str.247,@object              # @.str.247
.L.str.247:
	.asciz	"json_array_append_value(interests_arr, val_parent) == JSONFailure"
	.size	.L.str.247, 66

	.type	.L.str.248,@object              # @.str.248
.L.str.248:
	.asciz	"json_array_replace_value(interests_arr, 0, val_parent) == JSONSuccess"
	.size	.L.str.248, 70

	.type	.L.str.249,@object              # @.str.249
.L.str.249:
	.asciz	"json_array_replace_value(interests_arr, 0, val_parent) == JSONFailure"
	.size	.L.str.249, 70

	.type	.L.str.250,@object              # @.str.250
.L.str.250:
	.asciz	"json_object_remove(obj,string_1) == JSONSuccess"
	.size	.L.str.250, 48

	.type	.L.str.251,@object              # @.str.251
.L.str.251:
	.asciz	"correct string"
	.size	.L.str.251, 15

	.type	.L.str.252,@object              # @.str.252
.L.str.252:
	.asciz	"\316\272\341\275\271\317\203\316\274\316\265"
	.size	.L.str.252, 12

	.type	.L.str.253,@object              # @.str.253
.L.str.253:
	.asciz	"boundary 1"
	.size	.L.str.253, 11

	.type	.L.str.254,@object              # @.str.254
.L.str.254:
	.asciz	"\355\237\277"
	.size	.L.str.254, 4

	.type	.L.str.255,@object              # @.str.255
.L.str.255:
	.asciz	"boundary 2"
	.size	.L.str.255, 11

	.type	.L.str.256,@object              # @.str.256
.L.str.256:
	.asciz	"\356\200\200"
	.size	.L.str.256, 4

	.type	.L.str.257,@object              # @.str.257
.L.str.257:
	.asciz	"boundary 3"
	.size	.L.str.257, 11

	.type	.L.str.258,@object              # @.str.258
.L.str.258:
	.asciz	"\357\277\275"
	.size	.L.str.258, 4

	.type	.L.str.259,@object              # @.str.259
.L.str.259:
	.asciz	"boundary 4"
	.size	.L.str.259, 11

	.type	.L.str.260,@object              # @.str.260
.L.str.260:
	.asciz	"\364\217\277\277"
	.size	.L.str.260, 5

	.type	.L.str.261,@object              # @.str.261
.L.str.261:
	.asciz	"first continuation byte"
	.size	.L.str.261, 24

	.type	.L.str.262,@object              # @.str.262
.L.str.262:
	.asciz	"\200"
	.size	.L.str.262, 2

	.type	.L.str.263,@object              # @.str.263
.L.str.263:
	.asciz	"json_object_set_string(obj, string_1, string_2) == JSONFailure"
	.size	.L.str.263, 63

	.type	.L.str.264,@object              # @.str.264
.L.str.264:
	.asciz	"last continuation byte"
	.size	.L.str.264, 23

	.type	.L.str.265,@object              # @.str.265
.L.str.265:
	.asciz	"\277"
	.size	.L.str.265, 2

	.type	.L.str.266,@object              # @.str.266
.L.str.266:
	.asciz	"impossible sequence 1"
	.size	.L.str.266, 22

	.type	.L.str.267,@object              # @.str.267
.L.str.267:
	.asciz	"\376"
	.size	.L.str.267, 2

	.type	.L.str.268,@object              # @.str.268
.L.str.268:
	.asciz	"impossible sequence 2"
	.size	.L.str.268, 22

	.type	.L.str.269,@object              # @.str.269
.L.str.269:
	.asciz	"\377"
	.size	.L.str.269, 2

	.type	.L.str.270,@object              # @.str.270
.L.str.270:
	.asciz	"impossible sequence 3"
	.size	.L.str.270, 22

	.type	.L.str.271,@object              # @.str.271
.L.str.271:
	.asciz	"\376\376\377\377"
	.size	.L.str.271, 5

	.type	.L.str.272,@object              # @.str.272
.L.str.272:
	.asciz	"overlong 1"
	.size	.L.str.272, 11

	.type	.L.str.273,@object              # @.str.273
.L.str.273:
	.asciz	"\300\257"
	.size	.L.str.273, 3

	.type	.L.str.274,@object              # @.str.274
.L.str.274:
	.asciz	"overlong 2"
	.size	.L.str.274, 11

	.type	.L.str.275,@object              # @.str.275
.L.str.275:
	.asciz	"\301\277"
	.size	.L.str.275, 3

	.type	.L.str.276,@object              # @.str.276
.L.str.276:
	.asciz	"overlong 3"
	.size	.L.str.276, 11

	.type	.L.str.277,@object              # @.str.277
.L.str.277:
	.asciz	"\340\200\257"
	.size	.L.str.277, 4

	.type	.L.str.278,@object              # @.str.278
.L.str.278:
	.asciz	"overlong 4"
	.size	.L.str.278, 11

	.type	.L.str.279,@object              # @.str.279
.L.str.279:
	.asciz	"\340\237\277"
	.size	.L.str.279, 4

	.type	.L.str.280,@object              # @.str.280
.L.str.280:
	.asciz	"overlong 5"
	.size	.L.str.280, 11

	.type	.L.str.281,@object              # @.str.281
.L.str.281:
	.asciz	"\360\200\200\257"
	.size	.L.str.281, 5

	.type	.L.str.282,@object              # @.str.282
.L.str.282:
	.asciz	"overlong 6"
	.size	.L.str.282, 11

	.type	.L.str.283,@object              # @.str.283
.L.str.283:
	.asciz	"\360\217\277\277"
	.size	.L.str.283, 5

	.type	.L.str.284,@object              # @.str.284
.L.str.284:
	.asciz	"overlong 7"
	.size	.L.str.284, 11

	.type	.L.str.285,@object              # @.str.285
.L.str.285:
	.asciz	"overlong null 1"
	.size	.L.str.285, 16

	.type	.L.str.286,@object              # @.str.286
.L.str.286:
	.asciz	"\300\200"
	.size	.L.str.286, 3

	.type	.L.str.287,@object              # @.str.287
.L.str.287:
	.asciz	"overlong null 2"
	.size	.L.str.287, 16

	.type	.L.str.288,@object              # @.str.288
.L.str.288:
	.asciz	"\340\200\200"
	.size	.L.str.288, 4

	.type	.L.str.289,@object              # @.str.289
.L.str.289:
	.asciz	"overlong null 3"
	.size	.L.str.289, 16

	.type	.L.str.290,@object              # @.str.290
.L.str.290:
	.asciz	"\360\200\200\200"
	.size	.L.str.290, 5

	.type	.L.str.291,@object              # @.str.291
.L.str.291:
	.asciz	"overlong null 4"
	.size	.L.str.291, 16

	.type	.L.str.292,@object              # @.str.292
.L.str.292:
	.asciz	"\370\200\200\200\200"
	.size	.L.str.292, 6

	.type	.L.str.293,@object              # @.str.293
.L.str.293:
	.asciz	"overlong null 5"
	.size	.L.str.293, 16

	.type	.L.str.294,@object              # @.str.294
.L.str.294:
	.asciz	"\374\200\200\200\200\200"
	.size	.L.str.294, 7

	.type	.L.str.295,@object              # @.str.295
.L.str.295:
	.asciz	"single surrogate 1"
	.size	.L.str.295, 19

	.type	.L.str.296,@object              # @.str.296
.L.str.296:
	.asciz	"\355\240\200"
	.size	.L.str.296, 4

	.type	.L.str.297,@object              # @.str.297
.L.str.297:
	.asciz	"single surrogate 2"
	.size	.L.str.297, 19

	.type	.L.str.298,@object              # @.str.298
.L.str.298:
	.asciz	"\355\257\277"
	.size	.L.str.298, 4

	.type	.L.str.299,@object              # @.str.299
.L.str.299:
	.asciz	"single surrogate 3"
	.size	.L.str.299, 19

	.type	.L.str.300,@object              # @.str.300
.L.str.300:
	.asciz	"\355\277\277"
	.size	.L.str.300, 4

	.type	.L.str.301,@object              # @.str.301
.L.str.301:
	.asciz	"[1, 2, 3, 4, 5]"
	.size	.L.str.301, 16

	.type	.L.str.302,@object              # @.str.302
.L.str.302:
	.asciz	"[1, 2, 4, 5]"
	.size	.L.str.302, 13

	.type	.L.str.303,@object              # @.str.303
.L.str.303:
	.asciz	"json_value_equals(remove_test_val, json_parse_string(string_1))"
	.size	.L.str.303, 64

	.type	.L.str.304,@object              # @.str.304
.L.str.304:
	.asciz	"[2, 4, 5]"
	.size	.L.str.304, 10

	.type	.L.str.305,@object              # @.str.305
.L.str.305:
	.asciz	"[2, 4]"
	.size	.L.str.305, 7

	.type	.L.str.306,@object              # @.str.306
.L.str.306:
	.asciz	"num"
	.size	.L.str.306, 4

	.type	.L.str.307,@object              # @.str.307
.L.str.307:
	.asciz	"json_object_set_number(obj, string_1, 0.0 / zero) == JSONFailure"
	.size	.L.str.307, 65

	.type	.L.str.308,@object              # @.str.308
.L.str.308:
	.asciz	"json_object_set_number(obj,string_1 , 1.0 / zero) == JSONFailure"
	.size	.L.str.308, 65

	.type	.L__const.print_commits_info.output_filename,@object # @__const.print_commits_info.output_filename
.L__const.print_commits_info.output_filename:
	.asciz	"commits.json"
	.size	.L__const.print_commits_info.output_filename, 13

	.type	.L.str.309,@object              # @.str.309
.L.str.309:
	.asciz	"curl -s \"https://api.github.com/repos/%s/%s/commits\" > %s"
	.size	.L.str.309, 58

	.type	.L.str.310,@object              # @.str.310
.L.str.310:
	.asciz	"rm -f %s"
	.size	.L.str.310, 9

	.type	.L.str.311,@object              # @.str.311
.L.str.311:
	.asciz	"%-10.10s %-10.10s %s\n"
	.size	.L.str.311, 22

	.type	.L.str.312,@object              # @.str.312
.L.str.312:
	.asciz	"Date"
	.size	.L.str.312, 5

	.type	.L.str.313,@object              # @.str.313
.L.str.313:
	.asciz	"SHA"
	.size	.L.str.313, 4

	.type	.L.str.314,@object              # @.str.314
.L.str.314:
	.asciz	"Author"
	.size	.L.str.314, 7

	.type	.L.str.315,@object              # @.str.315
.L.str.315:
	.asciz	"commit.author.date"
	.size	.L.str.315, 19

	.type	.L.str.316,@object              # @.str.316
.L.str.316:
	.asciz	"sha"
	.size	.L.str.316, 4

	.type	.L.str.317,@object              # @.str.317
.L.str.317:
	.asciz	"commit.author.name"
	.size	.L.str.317, 19

	.type	.L.str.318,@object              # @.str.318
.L.str.318:
	.asciz	"%.10s %.10s %s\n"
	.size	.L.str.318, 16

	.ident	"clang version 12.0.0 (https://github.com/arunkumarbhattar/CheckCBox_Compiler.git b68fc6f04492fcbb3ada826a94d1d199840f1256)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym json_set_allocation_functions
	.addrsig_sym test_suite_1
	.addrsig_sym test_suite_2_no_comments
	.addrsig_sym test_suite_2_with_comments
	.addrsig_sym test_suite_3
	.addrsig_sym test_suite_4
	.addrsig_sym test_suite_5
	.addrsig_sym printf
	.addrsig_sym string_tainted_malloc
	.addrsig_sym t_strcpy
	.addrsig_sym json_parse_file
	.addrsig_sym puts
	.addrsig_sym json_value_equals
	.addrsig_sym json_parse_string
	.addrsig_sym json_serialize_to_string
	.addrsig_sym json_serialize_to_string_pretty
	.addrsig_sym json_value_free
	.addrsig_sym json_parse_file_with_comments
	.addrsig_sym parse_value
	.addrsig_sym test_suite_2
	.addrsig_sym json_value_get_type
	.addrsig_sym json_value_get_object
	.addrsig_sym json_object_has_value
	.addrsig_sym json_object_has_value_of_type
	.addrsig_sym json_object_dothas_value
	.addrsig_sym json_object_dothas_value_of_type
	.addrsig_sym json_object_get_string
	.addrsig_sym t_strcmp
	.addrsig_sym json_object_get_number
	.addrsig_sym json_object_get_boolean
	.addrsig_sym json_object_get_value
	.addrsig_sym json_object_get_array
	.addrsig_sym json_array_get_count
	.addrsig_sym json_array_get_string
	.addrsig_sym json_array_get_number
	.addrsig_sym json_object_dotget_string
	.addrsig_sym json_object_dotget_boolean
	.addrsig_sym json_object_dotget_value
	.addrsig_sym json_object_dotget_number
	.addrsig_sym json_object_dotget_array
	.addrsig_sym json_object_get_object
	.addrsig_sym json_object_get_wrapping_value
	.addrsig_sym json_array_get_wrapping_value
	.addrsig_sym json_value_get_parent
	.addrsig_sym json_string
	.addrsig_sym t_printf
	.addrsig_sym json_value_deep_copy
	.addrsig_sym json_value_init_object
	.addrsig_sym json_object_set_string
	.addrsig_sym json_object_set_number
	.addrsig_sym json_object_set_boolean
	.addrsig_sym json_object_set_value
	.addrsig_sym json_value_init_array
	.addrsig_sym json_array_append_string
	.addrsig_sym json_array_replace_string
	.addrsig_sym json_object_dotset_string
	.addrsig_sym json_object_dotremove
	.addrsig_sym json_object_dotset_value
	.addrsig_sym json_array_append_value
	.addrsig_sym json_array_remove
	.addrsig_sym json_array_replace_value
	.addrsig_sym json_value_init_null
	.addrsig_sym json_object_remove
	.addrsig_sym json_array
	.addrsig_sym sprintf
	.addrsig_sym system
	.addrsig_sym json_value_get_array
	.addrsig_sym json_array_get_object
	.addrsig_sym t_malloc
	.addrsig_sym c_isTaintedPointerToTaintedMem
	.addrsig_sym counted_malloc
	.addrsig_sym counted_free
	.addrsig_sym tests_failed
	.addrsig_sym tests_passed
	.addrsig_sym malloc_count
