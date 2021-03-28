lbl_80625C74:
/* 80625C74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80625C78  7C 08 02 A6 */	mflr r0
/* 80625C7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80625C80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80625C84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80625C88  7C 7E 1B 78 */	mr r30, r3
/* 80625C8C  3C 80 80 63 */	lis r4, lit_3920@ha
/* 80625C90  3B E4 E6 34 */	addi r31, r4, lit_3920@l
/* 80625C94  80 03 06 F4 */	lwz r0, 0x6f4(r3)
/* 80625C98  2C 00 00 01 */	cmpwi r0, 1
/* 80625C9C  41 82 00 3C */	beq lbl_80625CD8
/* 80625CA0  40 80 01 88 */	bge lbl_80625E28
/* 80625CA4  2C 00 00 00 */	cmpwi r0, 0
/* 80625CA8  40 80 00 08 */	bge lbl_80625CB0
/* 80625CAC  48 00 01 7C */	b lbl_80625E28
lbl_80625CB0:
/* 80625CB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80625CB4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80625CB8  38 80 00 08 */	li r4, 8
/* 80625CBC  38 A0 00 00 */	li r5, 0
/* 80625CC0  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 80625CC4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80625CC8  4B FF AC 01 */	bl setBck__8daB_TN_cFiUcff
/* 80625CCC  38 00 00 01 */	li r0, 1
/* 80625CD0  90 1E 06 F4 */	stw r0, 0x6f4(r30)
/* 80625CD4  48 00 01 54 */	b lbl_80625E28
lbl_80625CD8:
/* 80625CD8  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80625CDC  38 63 00 0C */	addi r3, r3, 0xc
/* 80625CE0  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 80625CE4  4B D0 27 48 */	b checkPass__12J3DFrameCtrlFf
/* 80625CE8  2C 03 00 00 */	cmpwi r3, 0
/* 80625CEC  41 82 00 2C */	beq lbl_80625D18
/* 80625CF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703E5@ha */
/* 80625CF4  38 03 03 E5 */	addi r0, r3, 0x03E5 /* 0x000703E5@l */
/* 80625CF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80625CFC  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80625D00  38 81 00 10 */	addi r4, r1, 0x10
/* 80625D04  38 A0 FF FF */	li r5, -1
/* 80625D08  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 80625D0C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80625D10  7D 89 03 A6 */	mtctr r12
/* 80625D14  4E 80 04 21 */	bctrl 
lbl_80625D18:
/* 80625D18  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80625D1C  38 63 00 0C */	addi r3, r3, 0xc
/* 80625D20  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 80625D24  4B D0 27 08 */	b checkPass__12J3DFrameCtrlFf
/* 80625D28  2C 03 00 00 */	cmpwi r3, 0
/* 80625D2C  41 82 00 30 */	beq lbl_80625D5C
/* 80625D30  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A8@ha */
/* 80625D34  38 03 03 A8 */	addi r0, r3, 0x03A8 /* 0x000703A8@l */
/* 80625D38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80625D3C  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80625D40  38 81 00 0C */	addi r4, r1, 0xc
/* 80625D44  38 A0 00 00 */	li r5, 0
/* 80625D48  38 C0 FF FF */	li r6, -1
/* 80625D4C  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 80625D50  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80625D54  7D 89 03 A6 */	mtctr r12
/* 80625D58  4E 80 04 21 */	bctrl 
lbl_80625D5C:
/* 80625D5C  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80625D60  38 63 00 0C */	addi r3, r3, 0xc
/* 80625D64  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 80625D68  4B D0 26 C4 */	b checkPass__12J3DFrameCtrlFf
/* 80625D6C  2C 03 00 00 */	cmpwi r3, 0
/* 80625D70  41 82 00 30 */	beq lbl_80625DA0
/* 80625D74  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 80625D78  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 80625D7C  90 01 00 08 */	stw r0, 8(r1)
/* 80625D80  38 7E 06 4C */	addi r3, r30, 0x64c
/* 80625D84  38 81 00 08 */	addi r4, r1, 8
/* 80625D88  38 A0 00 00 */	li r5, 0
/* 80625D8C  38 C0 FF FF */	li r6, -1
/* 80625D90  81 9E 06 4C */	lwz r12, 0x64c(r30)
/* 80625D94  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80625D98  7D 89 03 A6 */	mtctr r12
/* 80625D9C  4E 80 04 21 */	bctrl 
lbl_80625DA0:
/* 80625DA0  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80625DA4  38 63 00 0C */	addi r3, r3, 0xc
/* 80625DA8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80625DAC  4B D0 26 80 */	b checkPass__12J3DFrameCtrlFf
/* 80625DB0  2C 03 00 00 */	cmpwi r3, 0
/* 80625DB4  41 82 00 10 */	beq lbl_80625DC4
/* 80625DB8  80 1E 36 18 */	lwz r0, 0x3618(r30)
/* 80625DBC  60 00 00 01 */	ori r0, r0, 1
/* 80625DC0  90 1E 36 18 */	stw r0, 0x3618(r30)
lbl_80625DC4:
/* 80625DC4  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80625DC8  38 63 00 0C */	addi r3, r3, 0xc
/* 80625DCC  C0 3F 01 CC */	lfs f1, 0x1cc(r31)
/* 80625DD0  4B D0 26 5C */	b checkPass__12J3DFrameCtrlFf
/* 80625DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80625DD8  41 82 00 10 */	beq lbl_80625DE8
/* 80625DDC  80 1E 36 18 */	lwz r0, 0x3618(r30)
/* 80625DE0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80625DE4  90 1E 36 18 */	stw r0, 0x3618(r30)
lbl_80625DE8:
/* 80625DE8  80 7E 06 00 */	lwz r3, 0x600(r30)
/* 80625DEC  38 80 00 01 */	li r4, 1
/* 80625DF0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80625DF4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80625DF8  40 82 00 18 */	bne lbl_80625E10
/* 80625DFC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80625E00  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80625E04  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80625E08  41 82 00 08 */	beq lbl_80625E10
/* 80625E0C  38 80 00 00 */	li r4, 0
lbl_80625E10:
/* 80625E10  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80625E14  41 82 00 14 */	beq lbl_80625E28
/* 80625E18  7F C3 F3 78 */	mr r3, r30
/* 80625E1C  38 80 00 04 */	li r4, 4
/* 80625E20  38 A0 00 00 */	li r5, 0
/* 80625E24  4B FF AB A5 */	bl setActionMode__8daB_TN_cFii
lbl_80625E28:
/* 80625E28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80625E2C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80625E30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80625E34  7C 08 03 A6 */	mtlr r0
/* 80625E38  38 21 00 20 */	addi r1, r1, 0x20
/* 80625E3C  4E 80 00 20 */	blr 
