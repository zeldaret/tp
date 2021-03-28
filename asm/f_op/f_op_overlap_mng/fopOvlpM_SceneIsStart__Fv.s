lbl_8001E4C4:
/* 8001E4C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E4C8  7C 08 02 A6 */	mflr r0
/* 8001E4CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E4D0  80 6D 80 30 */	lwz r3, l_fopOvlpM_overlap(r13)
/* 8001E4D4  28 03 00 00 */	cmplwi r3, 0
/* 8001E4D8  41 82 00 18 */	beq lbl_8001E4F0
/* 8001E4DC  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8001E4E0  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 8001E4E4  48 00 2E 75 */	bl fpcEx_SearchByID__FUi
/* 8001E4E8  48 00 20 AD */	bl fopScnPause_Disable__FP11scene_class
/* 8001E4EC  48 00 00 08 */	b lbl_8001E4F4
lbl_8001E4F0:
/* 8001E4F0  38 60 00 00 */	li r3, 0
lbl_8001E4F4:
/* 8001E4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E4F8  7C 08 03 A6 */	mtlr r0
/* 8001E4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E500  4E 80 00 20 */	blr 
