lbl_8024FFA4:
/* 8024FFA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8024FFA8  7C 08 02 A6 */	mflr r0
/* 8024FFAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8024FFB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8024FFB4  7C 7F 1B 78 */	mr r31, r3
/* 8024FFB8  88 03 02 AF */	lbz r0, 0x2af(r3)
/* 8024FFBC  2C 00 00 03 */	cmpwi r0, 3
/* 8024FFC0  41 82 00 34 */	beq lbl_8024FFF4
/* 8024FFC4  40 80 00 9C */	bge lbl_80250060
/* 8024FFC8  2C 00 00 00 */	cmpwi r0, 0
/* 8024FFCC  40 80 00 08 */	bge lbl_8024FFD4
/* 8024FFD0  48 00 00 90 */	b lbl_80250060
lbl_8024FFD4:
/* 8024FFD4  88 9F 02 A9 */	lbz r4, 0x2a9(r31)
/* 8024FFD8  7C 00 20 40 */	cmplw r0, r4
/* 8024FFDC  41 82 00 84 */	beq lbl_80250060
/* 8024FFE0  98 9F 02 AA */	stb r4, 0x2aa(r31)
/* 8024FFE4  88 1F 02 AF */	lbz r0, 0x2af(r31)
/* 8024FFE8  98 1F 02 A9 */	stb r0, 0x2a9(r31)
/* 8024FFEC  48 00 01 C5 */	bl mojiListChange__7dName_cFv
/* 8024FFF0  48 00 00 70 */	b lbl_80250060
lbl_8024FFF4:
/* 8024FFF4  4B FF EC 1D */	bl nameCheck__7dName_cFv
/* 8024FFF8  7C 64 1B 79 */	or. r4, r3, r3
/* 8024FFFC  41 82 00 30 */	beq lbl_8025002C
/* 80250000  7F E3 FB 78 */	mr r3, r31
/* 80250004  4B FF EC 49 */	bl playNameSet__7dName_cFi
/* 80250008  88 1F 02 AB */	lbz r0, 0x2ab(r31)
/* 8025000C  98 1F 02 AC */	stb r0, 0x2ac(r31)
/* 80250010  88 1F 02 AB */	lbz r0, 0x2ab(r31)
/* 80250014  98 1F 02 AE */	stb r0, 0x2ae(r31)
/* 80250018  38 00 00 08 */	li r0, 8
/* 8025001C  98 1F 02 AB */	stb r0, 0x2ab(r31)
/* 80250020  38 00 00 02 */	li r0, 2
/* 80250024  98 1F 02 B4 */	stb r0, 0x2b4(r31)
/* 80250028  48 00 00 38 */	b lbl_80250060
lbl_8025002C:
/* 8025002C  38 00 00 00 */	li r0, 0
/* 80250030  90 01 00 08 */	stw r0, 8(r1)
/* 80250034  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80250038  38 81 00 08 */	addi r4, r1, 8
/* 8025003C  38 A0 00 00 */	li r5, 0
/* 80250040  38 C0 00 00 */	li r6, 0
/* 80250044  38 E0 00 00 */	li r7, 0
/* 80250048  C0 22 B3 C0 */	lfs f1, lit_3820(r2)
/* 8025004C  FC 40 08 90 */	fmr f2, f1
/* 80250050  C0 62 B3 C4 */	lfs f3, lit_3886(r2)
/* 80250054  FC 80 18 90 */	fmr f4, f3
/* 80250058  39 00 00 00 */	li r8, 0
/* 8025005C  48 05 B9 29 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80250060:
/* 80250060  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80250064  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80250068  7C 08 03 A6 */	mtlr r0
/* 8025006C  38 21 00 20 */	addi r1, r1, 0x20
/* 80250070  4E 80 00 20 */	blr 
