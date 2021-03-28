lbl_8001E484:
/* 8001E484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001E488  7C 08 02 A6 */	mflr r0
/* 8001E48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001E490  80 6D 80 30 */	lwz r3, l_fopOvlpM_overlap(r13)
/* 8001E494  28 03 00 00 */	cmplwi r3, 0
/* 8001E498  41 82 00 18 */	beq lbl_8001E4B0
/* 8001E49C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8001E4A0  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 8001E4A4  48 00 2E B5 */	bl fpcEx_SearchByID__FUi
/* 8001E4A8  48 00 20 A1 */	bl fopScnPause_Enable__FP11scene_class
/* 8001E4AC  48 00 00 08 */	b lbl_8001E4B4
lbl_8001E4B0:
/* 8001E4B0  38 60 00 00 */	li r3, 0
lbl_8001E4B4:
/* 8001E4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001E4B8  7C 08 03 A6 */	mtlr r0
/* 8001E4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8001E4C0  4E 80 00 20 */	blr 
