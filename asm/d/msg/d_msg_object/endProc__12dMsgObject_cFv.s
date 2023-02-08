lbl_80235CC0:
/* 80235CC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80235CC4  7C 08 02 A6 */	mflr r0
/* 80235CC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80235CCC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80235CD0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80235CD4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80235CD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80235CDC  7C 7F 1B 78 */	mr r31, r3
/* 80235CE0  A8 83 01 6A */	lha r4, 0x16a(r3)
/* 80235CE4  38 04 00 01 */	addi r0, r4, 1
/* 80235CE8  B0 03 01 6A */	sth r0, 0x16a(r3)
/* 80235CEC  3B C0 00 05 */	li r30, 5
/* 80235CF0  48 00 13 CD */	bl isKanbanMessage__12dMsgObject_cFv
/* 80235CF4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235CF8  40 82 00 14 */	bne lbl_80235D0C
/* 80235CFC  7F E3 FB 78 */	mr r3, r31
/* 80235D00  48 00 15 0D */	bl isBookMessage__12dMsgObject_cFv
/* 80235D04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235D08  41 82 00 14 */	beq lbl_80235D1C
lbl_80235D0C:
/* 80235D0C  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80235D10  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80235D14  AB C3 03 04 */	lha r30, 0x304(r3)
/* 80235D18  48 00 00 50 */	b lbl_80235D68
lbl_80235D1C:
/* 80235D1C  7F E3 FB 78 */	mr r3, r31
/* 80235D20  48 00 14 C5 */	bl isPlaceMessage__12dMsgObject_cFv
/* 80235D24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235D28  40 82 00 14 */	bne lbl_80235D3C
/* 80235D2C  7F E3 FB 78 */	mr r3, r31
/* 80235D30  48 00 14 E5 */	bl isStaffMessage__12dMsgObject_cFv
/* 80235D34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235D38  41 82 00 14 */	beq lbl_80235D4C
lbl_80235D3C:
/* 80235D3C  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80235D40  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80235D44  AB C3 03 08 */	lha r30, 0x308(r3)
/* 80235D48  48 00 00 20 */	b lbl_80235D68
lbl_80235D4C:
/* 80235D4C  7F E3 FB 78 */	mr r3, r31
/* 80235D50  48 00 14 A9 */	bl isBossMessage__12dMsgObject_cFv
/* 80235D54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235D58  41 82 00 10 */	beq lbl_80235D68
/* 80235D5C  3C 60 80 43 */	lis r3, g_MsgObject_HIO_c@ha /* 0x8043028C@ha */
/* 80235D60  38 63 02 8C */	addi r3, r3, g_MsgObject_HIO_c@l /* 0x8043028C@l */
/* 80235D64  AB C3 03 0C */	lha r30, 0x30c(r3)
lbl_80235D68:
/* 80235D68  A8 1F 01 6A */	lha r0, 0x16a(r31)
/* 80235D6C  C8 42 B1 20 */	lfd f2, lit_4965(r2)
/* 80235D70  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80235D74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80235D78  3C 60 43 30 */	lis r3, 0x4330
/* 80235D7C  90 61 00 08 */	stw r3, 8(r1)
/* 80235D80  C8 01 00 08 */	lfd f0, 8(r1)
/* 80235D84  EC 20 10 28 */	fsubs f1, f0, f2
/* 80235D88  7F C0 07 34 */	extsh r0, r30
/* 80235D8C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80235D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80235D94  90 61 00 10 */	stw r3, 0x10(r1)
/* 80235D98  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80235D9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80235DA0  EC 21 00 24 */	fdivs f1, f1, f0
/* 80235DA4  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235DA8  C0 02 B0 C0 */	lfs f0, lit_4084(r2)
/* 80235DAC  EF E0 08 28 */	fsubs f31, f0, f1
/* 80235DB0  FC 20 F8 90 */	fmr f1, f31
/* 80235DB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80235DB8  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80235DBC  7D 89 03 A6 */	mtctr r12
/* 80235DC0  4E 80 04 21 */	bctrl 
/* 80235DC4  7F E3 FB 78 */	mr r3, r31
/* 80235DC8  48 00 14 45 */	bl isBookMessage__12dMsgObject_cFv
/* 80235DCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80235DD0  41 82 00 1C */	beq lbl_80235DEC
/* 80235DD4  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235DD8  FC 20 F8 90 */	fmr f1, f31
/* 80235DDC  81 83 00 00 */	lwz r12, 0(r3)
/* 80235DE0  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80235DE4  7D 89 03 A6 */	mtctr r12
/* 80235DE8  4E 80 04 21 */	bctrl 
lbl_80235DEC:
/* 80235DEC  80 7F 01 0C */	lwz r3, 0x10c(r31)
/* 80235DF0  FC 20 F8 90 */	fmr f1, f31
/* 80235DF4  81 83 00 00 */	lwz r12, 0(r3)
/* 80235DF8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80235DFC  7D 89 03 A6 */	mtctr r12
/* 80235E00  4E 80 04 21 */	bctrl 
/* 80235E04  A8 7F 01 6A */	lha r3, 0x16a(r31)
/* 80235E08  7F C0 07 34 */	extsh r0, r30
/* 80235E0C  7C 03 00 00 */	cmpw r3, r0
/* 80235E10  41 80 00 8C */	blt lbl_80235E9C
/* 80235E14  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235E18  81 83 00 00 */	lwz r12, 0(r3)
/* 80235E1C  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80235E20  7D 89 03 A6 */	mtctr r12
/* 80235E24  4E 80 04 21 */	bctrl 
/* 80235E28  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80235E2C  81 83 00 00 */	lwz r12, 0(r3)
/* 80235E30  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80235E34  7D 89 03 A6 */	mtctr r12
/* 80235E38  4E 80 04 21 */	bctrl 
/* 80235E3C  88 1F 04 CB */	lbz r0, 0x4cb(r31)
/* 80235E40  28 00 00 00 */	cmplwi r0, 0
/* 80235E44  41 82 00 20 */	beq lbl_80235E64
/* 80235E48  88 1F 04 D4 */	lbz r0, 0x4d4(r31)
/* 80235E4C  28 00 00 00 */	cmplwi r0, 0
/* 80235E50  40 82 00 14 */	bne lbl_80235E64
/* 80235E54  7F E3 FB 78 */	mr r3, r31
/* 80235E58  38 80 00 12 */	li r4, 0x12
/* 80235E5C  48 00 0A 89 */	bl setStatusLocal__12dMsgObject_cFUs
/* 80235E60  48 00 00 10 */	b lbl_80235E70
lbl_80235E64:
/* 80235E64  7F E3 FB 78 */	mr r3, r31
/* 80235E68  38 80 00 13 */	li r4, 0x13
/* 80235E6C  48 00 0A 79 */	bl setStatusLocal__12dMsgObject_cFUs
lbl_80235E70:
/* 80235E70  38 60 00 00 */	li r3, 0
/* 80235E74  90 7F 01 54 */	stw r3, 0x154(r31)
/* 80235E78  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 80235E7C  90 1F 01 58 */	stw r0, 0x158(r31)
/* 80235E80  38 00 03 E8 */	li r0, 0x3e8
/* 80235E84  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80235E88  B0 7F 01 72 */	sth r3, 0x172(r31)
/* 80235E8C  98 7F 01 99 */	stb r3, 0x199(r31)
/* 80235E90  A8 1F 01 72 */	lha r0, 0x172(r31)
/* 80235E94  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 80235E98  B0 03 05 DA */	sth r0, 0x5da(r3)
lbl_80235E9C:
/* 80235E9C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80235EA0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80235EA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80235EA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80235EAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80235EB0  7C 08 03 A6 */	mtlr r0
/* 80235EB4  38 21 00 30 */	addi r1, r1, 0x30
/* 80235EB8  4E 80 00 20 */	blr 
