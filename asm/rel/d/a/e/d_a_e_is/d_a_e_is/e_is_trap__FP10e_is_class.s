lbl_806F65BC:
/* 806F65BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806F65C0  7C 08 02 A6 */	mflr r0
/* 806F65C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806F65C8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806F65CC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806F65D0  7C 7E 1B 78 */	mr r30, r3
/* 806F65D4  3C 60 80 6F */	lis r3, lit_3648@ha /* 0x806F7B6C@ha */
/* 806F65D8  3B E3 7B 6C */	addi r31, r3, lit_3648@l /* 0x806F7B6C@l */
/* 806F65DC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806F65E0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806F65E4  FC 40 08 90 */	fmr f2, f1
/* 806F65E8  4B B7 94 99 */	bl cLib_addCalc0__FPfff
/* 806F65EC  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 806F65F0  2C 00 00 02 */	cmpwi r0, 2
/* 806F65F4  41 82 00 7C */	beq lbl_806F6670
/* 806F65F8  40 80 00 C8 */	bge lbl_806F66C0
/* 806F65FC  2C 00 00 00 */	cmpwi r0, 0
/* 806F6600  41 82 00 0C */	beq lbl_806F660C
/* 806F6604  48 00 00 BC */	b lbl_806F66C0
/* 806F6608  48 00 00 B8 */	b lbl_806F66C0
lbl_806F660C:
/* 806F660C  38 00 00 0A */	li r0, 0xa
/* 806F6610  B0 1E 06 BA */	sth r0, 0x6ba(r30)
/* 806F6614  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806F6618  C0 1E 07 9C */	lfs f0, 0x79c(r30)
/* 806F661C  EC 21 00 28 */	fsubs f1, f1, f0
/* 806F6620  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 806F6624  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806F6628  40 81 00 98 */	ble lbl_806F66C0
/* 806F662C  38 00 00 01 */	li r0, 1
/* 806F6630  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F6634  98 1E 06 BC */	stb r0, 0x6bc(r30)
/* 806F6638  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806F663C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806F6640  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 806F6644  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 806F6648  90 1E 0A 78 */	stw r0, 0xa78(r30)
/* 806F664C  7F C3 F3 78 */	mr r3, r30
/* 806F6650  38 80 00 09 */	li r4, 9
/* 806F6654  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806F6658  38 A0 00 00 */	li r5, 0
/* 806F665C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F6660  4B FF F4 35 */	bl anm_init__FP10e_is_classifUcf
/* 806F6664  38 00 00 02 */	li r0, 2
/* 806F6668  B0 1E 06 94 */	sth r0, 0x694(r30)
/* 806F666C  48 00 00 54 */	b lbl_806F66C0
lbl_806F6670:
/* 806F6670  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806F6674  38 80 00 01 */	li r4, 1
/* 806F6678  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806F667C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806F6680  40 82 00 18 */	bne lbl_806F6698
/* 806F6684  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806F6688  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806F668C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806F6690  41 82 00 08 */	beq lbl_806F6698
/* 806F6694  38 80 00 00 */	li r4, 0
lbl_806F6698:
/* 806F6698  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806F669C  41 82 00 24 */	beq lbl_806F66C0
/* 806F66A0  7F C3 F3 78 */	mr r3, r30
/* 806F66A4  38 80 00 0D */	li r4, 0xd
/* 806F66A8  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 806F66AC  38 A0 00 02 */	li r5, 2
/* 806F66B0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 806F66B4  4B FF F3 E1 */	bl anm_init__FP10e_is_classifUcf
/* 806F66B8  38 00 00 02 */	li r0, 2
/* 806F66BC  B0 1E 06 94 */	sth r0, 0x694(r30)
lbl_806F66C0:
/* 806F66C0  88 1E 06 BC */	lbz r0, 0x6bc(r30)
/* 806F66C4  2C 00 00 01 */	cmpwi r0, 1
/* 806F66C8  40 82 00 78 */	bne lbl_806F6740
/* 806F66CC  80 1E 07 30 */	lwz r0, 0x730(r30)
/* 806F66D0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806F66D4  41 82 00 6C */	beq lbl_806F6740
/* 806F66D8  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806F66DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806F66E0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806F66E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806F66E8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806F66EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806F66F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806F66F4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 806F66F8  38 80 00 05 */	li r4, 5
/* 806F66FC  38 A0 00 0F */	li r5, 0xf
/* 806F6700  38 C1 00 0C */	addi r6, r1, 0xc
/* 806F6704  4B 97 93 21 */	bl StartShock__12dVibration_cFii4cXyz
/* 806F6708  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007007A@ha */
/* 806F670C  38 03 00 7A */	addi r0, r3, 0x007A /* 0x0007007A@l */
/* 806F6710  90 01 00 08 */	stw r0, 8(r1)
/* 806F6714  38 7E 05 CC */	addi r3, r30, 0x5cc
/* 806F6718  38 81 00 08 */	addi r4, r1, 8
/* 806F671C  38 A0 00 00 */	li r5, 0
/* 806F6720  38 C0 FF FF */	li r6, -1
/* 806F6724  81 9E 05 CC */	lwz r12, 0x5cc(r30)
/* 806F6728  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806F672C  7D 89 03 A6 */	mtctr r12
/* 806F6730  4E 80 04 21 */	bctrl 
/* 806F6734  88 7E 06 BC */	lbz r3, 0x6bc(r30)
/* 806F6738  38 03 00 01 */	addi r0, r3, 1
/* 806F673C  98 1E 06 BC */	stb r0, 0x6bc(r30)
lbl_806F6740:
/* 806F6740  80 1E 06 70 */	lwz r0, 0x670(r30)
/* 806F6744  2C 00 00 0D */	cmpwi r0, 0xd
/* 806F6748  40 82 00 28 */	bne lbl_806F6770
/* 806F674C  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806F6750  38 63 00 0C */	addi r3, r3, 0xc
/* 806F6754  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806F6758  4B C3 1C D5 */	bl checkPass__12J3DFrameCtrlFf
/* 806F675C  2C 03 00 00 */	cmpwi r3, 0
/* 806F6760  41 82 00 10 */	beq lbl_806F6770
/* 806F6764  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 806F6768  80 7E 05 C8 */	lwz r3, 0x5c8(r30)
/* 806F676C  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_806F6770:
/* 806F6770  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 806F6774  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806F6778  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806F677C  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 806F6780  4B B7 92 BD */	bl cLib_addCalc2__FPffff
/* 806F6784  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 806F6788  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 806F678C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 806F6790  C0 7F 00 5C */	lfs f3, 0x5c(r31)
/* 806F6794  4B B7 92 A9 */	bl cLib_addCalc2__FPffff
/* 806F6798  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806F679C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806F67A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806F67A4  7C 08 03 A6 */	mtlr r0
/* 806F67A8  38 21 00 20 */	addi r1, r1, 0x20
/* 806F67AC  4E 80 00 20 */	blr 
