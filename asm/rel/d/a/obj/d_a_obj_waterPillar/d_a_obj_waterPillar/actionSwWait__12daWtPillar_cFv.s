lbl_80D2D408:
/* 80D2D408  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2D40C  7C 08 02 A6 */	mflr r0
/* 80D2D410  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2D414  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2D418  7C 7F 1B 78 */	mr r31, r3
/* 80D2D41C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2D420  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D2D424  88 9F 0B 08 */	lbz r4, 0xb08(r31)
/* 80D2D428  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D2D42C  7C 05 07 74 */	extsb r5, r0
/* 80D2D430  4B 30 7F 30 */	b isSwitch__10dSv_info_cCFii
/* 80D2D434  2C 03 00 00 */	cmpwi r3, 0
/* 80D2D438  41 82 00 3C */	beq lbl_80D2D474
/* 80D2D43C  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80D2D440  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D2D444  2C 04 00 FF */	cmpwi r4, 0xff
/* 80D2D448  41 82 00 18 */	beq lbl_80D2D460
/* 80D2D44C  38 7F 05 70 */	addi r3, r31, 0x570
/* 80D2D450  38 A0 00 FF */	li r5, 0xff
/* 80D2D454  38 C0 00 01 */	li r6, 1
/* 80D2D458  4B 31 B4 E8 */	b orderEvent__17dEvLib_callback_cFiii
/* 80D2D45C  48 00 00 18 */	b lbl_80D2D474
lbl_80D2D460:
/* 80D2D460  7F E3 FB 78 */	mr r3, r31
/* 80D2D464  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80D2D468  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80D2D46C  7D 89 03 A6 */	mtctr r12
/* 80D2D470  4E 80 04 21 */	bctrl 
lbl_80D2D474:
/* 80D2D474  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2D478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2D47C  7C 08 03 A6 */	mtlr r0
/* 80D2D480  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2D484  4E 80 00 20 */	blr 
