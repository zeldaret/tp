lbl_800569B4:
/* 800569B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800569B8  7C 08 02 A6 */	mflr r0
/* 800569BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800569C0  3C 60 80 42 */	lis r3, mWipeDlst__12dDlst_list_c@ha
/* 800569C4  38 63 48 F0 */	addi r3, r3, mWipeDlst__12dDlst_list_c@l
/* 800569C8  4B FF C1 39 */	bl __ct__12dDlst_2DT2_cFv
/* 800569CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800569D0  7C 08 03 A6 */	mtlr r0
/* 800569D4  38 21 00 10 */	addi r1, r1, 0x10
/* 800569D8  4E 80 00 20 */	blr 
