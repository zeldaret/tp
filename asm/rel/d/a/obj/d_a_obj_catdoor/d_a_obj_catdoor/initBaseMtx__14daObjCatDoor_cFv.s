lbl_80BC43F4:
/* 80BC43F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC43F8  7C 08 02 A6 */	mflr r0
/* 80BC43FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC4400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC4404  7C 7F 1B 78 */	mr r31, r3
/* 80BC4408  38 1F 07 60 */	addi r0, r31, 0x760
/* 80BC440C  90 03 05 04 */	stw r0, 0x504(r3)
/* 80BC4410  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BC4414  4B 44 89 51 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BC4418  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC441C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC4420  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BC4424  4B 44 80 11 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BC4428  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BC442C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BC4430  38 9F 07 60 */	addi r4, r31, 0x760
/* 80BC4434  4B 78 20 7D */	bl PSMTXCopy
/* 80BC4438  7F E3 FB 78 */	mr r3, r31
/* 80BC443C  48 00 00 19 */	bl setBaseMtx__14daObjCatDoor_cFv
/* 80BC4440  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC4444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC4448  7C 08 03 A6 */	mtlr r0
/* 80BC444C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4450  4E 80 00 20 */	blr 
