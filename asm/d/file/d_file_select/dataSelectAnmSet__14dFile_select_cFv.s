lbl_80185C2C:
/* 80185C2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80185C30  7C 08 02 A6 */	mflr r0
/* 80185C34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80185C38  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80185C3C  7C 7F 1B 78 */	mr r31, r3
/* 80185C40  88 03 02 65 */	lbz r0, 0x265(r3)
/* 80185C44  28 00 00 FF */	cmplwi r0, 0xff
/* 80185C48  41 82 00 A8 */	beq lbl_80185CF0
/* 80185C4C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80185C50  7C 7F 02 14 */	add r3, r31, r0
/* 80185C54  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 80185C58  80 63 00 04 */	lwz r3, 4(r3)
/* 80185C5C  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 80185C60  81 83 00 00 */	lwz r12, 0(r3)
/* 80185C64  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80185C68  7D 89 03 A6 */	mtctr r12
/* 80185C6C  4E 80 04 21 */	bctrl 
/* 80185C70  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80185C74  54 04 10 3A */	slwi r4, r0, 2
/* 80185C78  3C 60 80 3C */	lis r3, SelStartFrameTbl@ha /* 0x803BA854@ha */
/* 80185C7C  38 63 A8 54 */	addi r3, r3, SelStartFrameTbl@l /* 0x803BA854@l */
/* 80185C80  7C 03 20 2E */	lwzx r0, r3, r4
/* 80185C84  7C 7F 22 14 */	add r3, r31, r4
/* 80185C88  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 80185C8C  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80185C90  54 00 10 3A */	slwi r0, r0, 2
/* 80185C94  7C 7F 02 14 */	add r3, r31, r0
/* 80185C98  80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 80185C9C  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 80185CA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80185CA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80185CA8  3C 00 43 30 */	lis r0, 0x4330
/* 80185CAC  90 01 00 08 */	stw r0, 8(r1)
/* 80185CB0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80185CB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80185CB8  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 80185CBC  D0 03 00 08 */	stfs f0, 8(r3)
/* 80185CC0  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80185CC4  54 00 10 3A */	slwi r0, r0, 2
/* 80185CC8  7C 7F 02 14 */	add r3, r31, r0
/* 80185CCC  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 80185CD0  80 63 00 04 */	lwz r3, 4(r3)
/* 80185CD4  48 17 22 F9 */	bl animationTransform__7J2DPaneFv
/* 80185CD8  38 80 00 00 */	li r4, 0
/* 80185CDC  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 80185CE0  54 00 10 3A */	slwi r0, r0, 2
/* 80185CE4  7C 7F 02 14 */	add r3, r31, r0
/* 80185CE8  80 63 01 88 */	lwz r3, 0x188(r3)
/* 80185CEC  B0 83 00 16 */	sth r4, 0x16(r3)
lbl_80185CF0:
/* 80185CF0  88 9F 02 64 */	lbz r4, 0x264(r31)
/* 80185CF4  28 04 00 FF */	cmplwi r4, 0xff
/* 80185CF8  41 82 00 D4 */	beq lbl_80185DCC
/* 80185CFC  7F E3 FB 78 */	mr r3, r31
/* 80185D00  38 A0 00 FF */	li r5, 0xff
/* 80185D04  38 C0 00 00 */	li r6, 0
/* 80185D08  3C E0 80 43 */	lis r7, g_fsHIO@ha /* 0x8042C9EC@ha */
/* 80185D0C  38 E7 C9 EC */	addi r7, r7, g_fsHIO@l /* 0x8042C9EC@l */
/* 80185D10  88 E7 00 08 */	lbz r7, 8(r7)
/* 80185D14  48 00 79 3D */	bl selectWakuAlpahAnmInit__14dFile_select_cFUcUcUcUc
/* 80185D18  88 1F 02 64 */	lbz r0, 0x264(r31)
/* 80185D1C  54 00 10 3A */	slwi r0, r0, 2
/* 80185D20  7C 7F 02 14 */	add r3, r31, r0
/* 80185D24  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 80185D28  80 63 00 04 */	lwz r3, 4(r3)
/* 80185D2C  80 9F 00 88 */	lwz r4, 0x88(r31)
/* 80185D30  81 83 00 00 */	lwz r12, 0(r3)
/* 80185D34  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80185D38  7D 89 03 A6 */	mtctr r12
/* 80185D3C  4E 80 04 21 */	bctrl 
/* 80185D40  88 1F 02 64 */	lbz r0, 0x264(r31)
/* 80185D44  54 04 10 3A */	slwi r4, r0, 2
/* 80185D48  3C 60 80 3C */	lis r3, SelEndFrameTbl@ha /* 0x803BA860@ha */
/* 80185D4C  38 63 A8 60 */	addi r3, r3, SelEndFrameTbl@l /* 0x803BA860@l */
/* 80185D50  7C 03 20 2E */	lwzx r0, r3, r4
/* 80185D54  7C 7F 22 14 */	add r3, r31, r4
/* 80185D58  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 80185D5C  88 1F 02 64 */	lbz r0, 0x264(r31)
/* 80185D60  54 00 10 3A */	slwi r0, r0, 2
/* 80185D64  7C 7F 02 14 */	add r3, r31, r0
/* 80185D68  80 03 00 E0 */	lwz r0, 0xe0(r3)
/* 80185D6C  C8 22 9F 38 */	lfd f1, lit_4342(r2)
/* 80185D70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80185D74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80185D78  3C 00 43 30 */	lis r0, 0x4330
/* 80185D7C  90 01 00 08 */	stw r0, 8(r1)
/* 80185D80  C8 01 00 08 */	lfd f0, 8(r1)
/* 80185D84  EC 00 08 28 */	fsubs f0, f0, f1
/* 80185D88  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 80185D8C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80185D90  88 1F 02 64 */	lbz r0, 0x264(r31)
/* 80185D94  54 00 10 3A */	slwi r0, r0, 2
/* 80185D98  7C 7F 02 14 */	add r3, r31, r0
/* 80185D9C  80 63 00 BC */	lwz r3, 0xbc(r3)
/* 80185DA0  80 63 00 04 */	lwz r3, 4(r3)
/* 80185DA4  48 17 22 29 */	bl animationTransform__7J2DPaneFv
/* 80185DA8  38 80 00 00 */	li r4, 0
/* 80185DAC  88 1F 02 64 */	lbz r0, 0x264(r31)
/* 80185DB0  54 00 10 3A */	slwi r0, r0, 2
/* 80185DB4  7C 7F 02 14 */	add r3, r31, r0
/* 80185DB8  80 63 01 88 */	lwz r3, 0x188(r3)
/* 80185DBC  B0 83 00 16 */	sth r4, 0x16(r3)
/* 80185DC0  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 80185DC4  C0 22 9F 48 */	lfs f1, lit_4778(r2)
/* 80185DC8  48 00 F4 D9 */	bl setAlphaRate__16dSelect_cursor_cFf
lbl_80185DCC:
/* 80185DCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80185DD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80185DD4  7C 08 03 A6 */	mtlr r0
/* 80185DD8  38 21 00 20 */	addi r1, r1, 0x20
/* 80185DDC  4E 80 00 20 */	blr 
