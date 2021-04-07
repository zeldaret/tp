lbl_8062C7C8:
/* 8062C7C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062C7CC  7C 08 02 A6 */	mflr r0
/* 8062C7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062C7D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062C7D8  7C 7F 1B 78 */	mr r31, r3
/* 8062C7DC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8062C7E0  3C 80 80 63 */	lis r4, d_a_b_tn__stringBase0@ha /* 0x8062E8E8@ha */
/* 8062C7E4  38 84 E8 E8 */	addi r4, r4, d_a_b_tn__stringBase0@l /* 0x8062E8E8@l */
/* 8062C7E8  4B A0 08 21 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8062C7EC  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 8062C7F0  80 9F 0A B4 */	lwz r4, 0xab4(r31)
/* 8062C7F4  4B A0 08 15 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8062C7F8  88 1F 56 2C */	lbz r0, 0x562c(r31)
/* 8062C7FC  28 00 00 00 */	cmplwi r0, 0
/* 8062C800  41 82 00 10 */	beq lbl_8062C810
/* 8062C804  38 00 00 00 */	li r0, 0
/* 8062C808  3C 60 80 63 */	lis r3, struct_8062F01C+0x1@ha /* 0x8062F01D@ha */
/* 8062C80C  98 03 F0 1D */	stb r0, struct_8062F01C+0x1@l(r3)  /* 0x8062F01D@l */
lbl_8062C810:
/* 8062C810  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8062C814  28 00 00 00 */	cmplwi r0, 0
/* 8062C818  41 82 00 18 */	beq lbl_8062C830
/* 8062C81C  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062C820  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062C824  81 8C 00 08 */	lwz r12, 8(r12)
/* 8062C828  7D 89 03 A6 */	mtctr r12
/* 8062C82C  4E 80 04 21 */	bctrl 
lbl_8062C830:
/* 8062C830  38 60 00 01 */	li r3, 1
/* 8062C834  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062C838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062C83C  7C 08 03 A6 */	mtlr r0
/* 8062C840  38 21 00 10 */	addi r1, r1, 0x10
/* 8062C844  4E 80 00 20 */	blr 
