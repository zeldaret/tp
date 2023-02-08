lbl_801F3C7C:
/* 801F3C7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F3C80  7C 08 02 A6 */	mflr r0
/* 801F3C84  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F3C88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F3C8C  7C 7F 1B 78 */	mr r31, r3
/* 801F3C90  88 03 00 54 */	lbz r0, 0x54(r3)
/* 801F3C94  28 00 00 FF */	cmplwi r0, 0xff
/* 801F3C98  41 82 00 A8 */	beq lbl_801F3D40
/* 801F3C9C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 801F3CA0  7C 7F 02 14 */	add r3, r31, r0
/* 801F3CA4  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F3CA8  80 63 00 04 */	lwz r3, 4(r3)
/* 801F3CAC  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 801F3CB0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F3CB4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F3CB8  7D 89 03 A6 */	mtctr r12
/* 801F3CBC  4E 80 04 21 */	bctrl 
/* 801F3CC0  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F3CC4  54 04 10 3A */	slwi r4, r0, 2
/* 801F3CC8  3C 60 80 3C */	lis r3, SelStartFrameTbl@ha /* 0x803BDF84@ha */
/* 801F3CCC  38 63 DF 84 */	addi r3, r3, SelStartFrameTbl@l /* 0x803BDF84@l */
/* 801F3CD0  7C 03 20 2E */	lwzx r0, r3, r4
/* 801F3CD4  7C 7F 22 14 */	add r3, r31, r4
/* 801F3CD8  90 03 00 74 */	stw r0, 0x74(r3)
/* 801F3CDC  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F3CE0  54 00 10 3A */	slwi r0, r0, 2
/* 801F3CE4  7C 7F 02 14 */	add r3, r31, r0
/* 801F3CE8  80 03 00 74 */	lwz r0, 0x74(r3)
/* 801F3CEC  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F3CF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F3CF4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F3CF8  3C 00 43 30 */	lis r0, 0x4330
/* 801F3CFC  90 01 00 08 */	stw r0, 8(r1)
/* 801F3D00  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F3D04  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F3D08  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 801F3D0C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F3D10  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F3D14  54 00 10 3A */	slwi r0, r0, 2
/* 801F3D18  7C 7F 02 14 */	add r3, r31, r0
/* 801F3D1C  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F3D20  80 63 00 04 */	lwz r3, 4(r3)
/* 801F3D24  48 10 42 A9 */	bl animationTransform__7J2DPaneFv
/* 801F3D28  38 80 00 00 */	li r4, 0
/* 801F3D2C  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F3D30  54 00 10 3A */	slwi r0, r0, 2
/* 801F3D34  7C 7F 02 14 */	add r3, r31, r0
/* 801F3D38  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 801F3D3C  B0 83 00 16 */	sth r4, 0x16(r3)
lbl_801F3D40:
/* 801F3D40  88 9F 00 55 */	lbz r4, 0x55(r31)
/* 801F3D44  28 04 00 FF */	cmplwi r4, 0xff
/* 801F3D48  41 82 00 D4 */	beq lbl_801F3E1C
/* 801F3D4C  7F E3 FB 78 */	mr r3, r31
/* 801F3D50  38 A0 00 FF */	li r5, 0xff
/* 801F3D54  38 C0 00 00 */	li r6, 0
/* 801F3D58  3C E0 80 43 */	lis r7, g_msHIO@ha /* 0x8042E84C@ha */
/* 801F3D5C  38 E7 E8 4C */	addi r7, r7, g_msHIO@l /* 0x8042E84C@l */
/* 801F3D60  88 E7 00 0A */	lbz r7, 0xa(r7)
/* 801F3D64  48 00 25 F1 */	bl selectWakuAlpahAnmInit__12dMenu_save_cFUcUcUcUc
/* 801F3D68  88 1F 00 55 */	lbz r0, 0x55(r31)
/* 801F3D6C  54 00 10 3A */	slwi r0, r0, 2
/* 801F3D70  7C 7F 02 14 */	add r3, r31, r0
/* 801F3D74  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F3D78  80 63 00 04 */	lwz r3, 4(r3)
/* 801F3D7C  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 801F3D80  81 83 00 00 */	lwz r12, 0(r3)
/* 801F3D84  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F3D88  7D 89 03 A6 */	mtctr r12
/* 801F3D8C  4E 80 04 21 */	bctrl 
/* 801F3D90  88 1F 00 55 */	lbz r0, 0x55(r31)
/* 801F3D94  54 04 10 3A */	slwi r4, r0, 2
/* 801F3D98  3C 60 80 3C */	lis r3, SelEndFrameTbl@ha /* 0x803BDF90@ha */
/* 801F3D9C  38 63 DF 90 */	addi r3, r3, SelEndFrameTbl@l /* 0x803BDF90@l */
/* 801F3DA0  7C 03 20 2E */	lwzx r0, r3, r4
/* 801F3DA4  7C 7F 22 14 */	add r3, r31, r4
/* 801F3DA8  90 03 00 74 */	stw r0, 0x74(r3)
/* 801F3DAC  88 1F 00 55 */	lbz r0, 0x55(r31)
/* 801F3DB0  54 00 10 3A */	slwi r0, r0, 2
/* 801F3DB4  7C 7F 02 14 */	add r3, r31, r0
/* 801F3DB8  80 03 00 74 */	lwz r0, 0x74(r3)
/* 801F3DBC  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F3DC0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F3DC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F3DC8  3C 00 43 30 */	lis r0, 0x4330
/* 801F3DCC  90 01 00 08 */	stw r0, 8(r1)
/* 801F3DD0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F3DD4  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F3DD8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 801F3DDC  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F3DE0  88 1F 00 55 */	lbz r0, 0x55(r31)
/* 801F3DE4  54 00 10 3A */	slwi r0, r0, 2
/* 801F3DE8  7C 7F 02 14 */	add r3, r31, r0
/* 801F3DEC  80 63 00 68 */	lwz r3, 0x68(r3)
/* 801F3DF0  80 63 00 04 */	lwz r3, 4(r3)
/* 801F3DF4  48 10 41 D9 */	bl animationTransform__7J2DPaneFv
/* 801F3DF8  38 80 00 00 */	li r4, 0
/* 801F3DFC  88 1F 00 55 */	lbz r0, 0x55(r31)
/* 801F3E00  54 00 10 3A */	slwi r0, r0, 2
/* 801F3E04  7C 7F 02 14 */	add r3, r31, r0
/* 801F3E08  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 801F3E0C  B0 83 00 16 */	sth r4, 0x16(r3)
/* 801F3E10  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F3E14  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F3E18  4B FA 14 89 */	bl setAlphaRate__16dSelect_cursor_cFf
lbl_801F3E1C:
/* 801F3E1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F3E20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F3E24  7C 08 03 A6 */	mtlr r0
/* 801F3E28  38 21 00 20 */	addi r1, r1, 0x20
/* 801F3E2C  4E 80 00 20 */	blr 
