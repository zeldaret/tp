lbl_80C8B824:
/* 80C8B824  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B828  7C 08 02 A6 */	mflr r0
/* 80C8B82C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B830  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8B834  7C 7F 1B 78 */	mr r31, r3
/* 80C8B838  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C8B83C  3C 80 80 C9 */	lis r4, d_a_obj_lv8OptiLift__stringBase0@ha /* 0x80C8BA3C@ha */
/* 80C8B840  38 84 BA 3C */	addi r4, r4, d_a_obj_lv8OptiLift__stringBase0@l /* 0x80C8BA3C@l */
/* 80C8B844  4B 3A 17 C5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C8B848  88 1F 06 14 */	lbz r0, 0x614(r31)
/* 80C8B84C  28 00 00 00 */	cmplwi r0, 0
/* 80C8B850  41 82 00 0C */	beq lbl_80C8B85C
/* 80C8B854  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 80C8B858  4B 51 C0 D5 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
lbl_80C8B85C:
/* 80C8B85C  38 60 00 01 */	li r3, 1
/* 80C8B860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8B864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B868  7C 08 03 A6 */	mtlr r0
/* 80C8B86C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B870  4E 80 00 20 */	blr 
