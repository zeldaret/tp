lbl_80A5C3EC:
/* 80A5C3EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5C3F0  7C 08 02 A6 */	mflr r0
/* 80A5C3F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5C3F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A5C3FC  7C 7F 1B 78 */	mr r31, r3
/* 80A5C400  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80A5C404  80 9F 05 C0 */	lwz r4, 0x5c0(r31)
/* 80A5C408  4B 5D 0C 01 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80A5C40C  88 1F 0C 1C */	lbz r0, 0xc1c(r31)
/* 80A5C410  28 00 00 00 */	cmplwi r0, 0
/* 80A5C414  41 82 00 10 */	beq lbl_80A5C424
/* 80A5C418  38 00 00 00 */	li r0, 0
/* 80A5C41C  3C 60 80 A6 */	lis r3, data_80A5FEA8@ha /* 0x80A5FEA8@ha */
/* 80A5C420  98 03 FE A8 */	stb r0, data_80A5FEA8@l(r3)  /* 0x80A5FEA8@l */
lbl_80A5C424:
/* 80A5C424  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80A5C428  28 00 00 00 */	cmplwi r0, 0
/* 80A5C42C  41 82 00 0C */	beq lbl_80A5C438
/* 80A5C430  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80A5C434  4B 5B 4E DD */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A5C438:
/* 80A5C438  38 60 00 01 */	li r3, 1
/* 80A5C43C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A5C440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5C444  7C 08 03 A6 */	mtlr r0
/* 80A5C448  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5C44C  4E 80 00 20 */	blr 
