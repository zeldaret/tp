lbl_80CC4818:
/* 80CC4818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC481C  7C 08 02 A6 */	mflr r0
/* 80CC4820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4824  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC4828  7C 7F 1B 78 */	mr r31, r3
/* 80CC482C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CC4830  4B 34 85 34 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80CC4834  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC4838  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC483C  A8 9F 07 48 */	lha r4, 0x748(r31)
/* 80CC4840  4B 34 7C 8C */	b mDoMtx_ZrotM__FPA4_fs
/* 80CC4844  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC4848  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC484C  A8 9F 07 44 */	lha r4, 0x744(r31)
/* 80CC4850  4B 34 7B 4C */	b mDoMtx_XrotM__FPA4_fs
/* 80CC4854  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC4858  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC485C  A8 9F 07 46 */	lha r4, 0x746(r31)
/* 80CC4860  4B 34 7B D4 */	b mDoMtx_YrotM__FPA4_fs
/* 80CC4864  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC4868  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC486C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 80CC4870  38 84 00 24 */	addi r4, r4, 0x24
/* 80CC4874  4B 68 1C 3C */	b PSMTXCopy
/* 80CC4878  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80CC487C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80CC4880  38 9F 05 74 */	addi r4, r31, 0x574
/* 80CC4884  4B 68 1C 2C */	b PSMTXCopy
/* 80CC4888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC488C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4890  7C 08 03 A6 */	mtlr r0
/* 80CC4894  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4898  4E 80 00 20 */	blr 
