lbl_80138A18:
/* 80138A18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80138A1C  7C 08 02 A6 */	mflr r0
/* 80138A20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80138A24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80138A28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80138A2C  7C 7E 1B 78 */	mr r30, r3
/* 80138A30  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80138A34  80 63 06 50 */	lwz r3, 0x650(r3)
/* 80138A38  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80138A3C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80138A40  C0 03 00 9C */	lfs f0, 0x9c(r3)
/* 80138A44  D0 1E 37 C8 */	stfs f0, 0x37c8(r30)
/* 80138A48  C0 03 00 AC */	lfs f0, 0xac(r3)
/* 80138A4C  D0 1E 37 CC */	stfs f0, 0x37cc(r30)
/* 80138A50  C0 03 00 BC */	lfs f0, 0xbc(r3)
/* 80138A54  D0 1E 37 D0 */	stfs f0, 0x37d0(r30)
/* 80138A58  7F E3 FB 78 */	mr r3, r31
/* 80138A5C  C0 22 93 44 */	lfs f1, lit_7977(r2)
/* 80138A60  48 1E F9 CD */	bl checkPass__12J3DFrameCtrlFf
/* 80138A64  2C 03 00 00 */	cmpwi r3, 0
/* 80138A68  41 82 00 4C */	beq lbl_80138AB4
/* 80138A6C  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 80138A70  2C 00 00 00 */	cmpwi r0, 0
/* 80138A74  40 82 00 24 */	bne lbl_80138A98
/* 80138A78  7F C3 F3 78 */	mr r3, r30
/* 80138A7C  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002000C@ha */
/* 80138A80  38 84 00 0C */	addi r4, r4, 0x000C /* 0x0002000C@l */
/* 80138A84  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80138A88  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80138A8C  7D 89 03 A6 */	mtctr r12
/* 80138A90  4E 80 04 21 */	bctrl 
/* 80138A94  48 00 00 20 */	b lbl_80138AB4
lbl_80138A98:
/* 80138A98  7F C3 F3 78 */	mr r3, r30
/* 80138A9C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020053@ha */
/* 80138AA0  38 84 00 53 */	addi r4, r4, 0x0053 /* 0x00020053@l */
/* 80138AA4  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80138AA8  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80138AAC  7D 89 03 A6 */	mtctr r12
/* 80138AB0  4E 80 04 21 */	bctrl 
lbl_80138AB4:
/* 80138AB4  38 00 00 00 */	li r0, 0
/* 80138AB8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80138ABC  90 01 00 08 */	stw r0, 8(r1)
/* 80138AC0  7F C3 F3 78 */	mr r3, r30
/* 80138AC4  38 81 00 0C */	addi r4, r1, 0xc
/* 80138AC8  38 A1 00 08 */	addi r5, r1, 8
/* 80138ACC  4B FE B1 25 */	bl setWolfSwimEndEffect__9daAlink_cFPP14JPABaseEmitterPP14JPABaseEmitter
/* 80138AD0  7F E3 FB 78 */	mr r3, r31
/* 80138AD4  48 02 59 F9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 80138AD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80138ADC  41 82 00 14 */	beq lbl_80138AF0
/* 80138AE0  7F C3 F3 78 */	mr r3, r30
/* 80138AE4  38 80 00 00 */	li r4, 0
/* 80138AE8  4B FF 10 5D */	bl checkNextActionWolf__9daAlink_cFi
/* 80138AEC  48 00 00 28 */	b lbl_80138B14
lbl_80138AF0:
/* 80138AF0  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80138AF4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlSwim_c0@ha
/* 80138AF8  38 63 F8 B4 */	addi r3, r3, m__20daAlinkHIO_wlSwim_c0@l
/* 80138AFC  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80138B00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80138B04  40 81 00 10 */	ble lbl_80138B14
/* 80138B08  7F C3 F3 78 */	mr r3, r30
/* 80138B0C  38 80 00 01 */	li r4, 1
/* 80138B10  4B FF 10 35 */	bl checkNextActionWolf__9daAlink_cFi
lbl_80138B14:
/* 80138B14  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 80138B18  28 00 01 2A */	cmplwi r0, 0x12a
/* 80138B1C  41 82 00 34 */	beq lbl_80138B50
/* 80138B20  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80138B24  28 03 00 00 */	cmplwi r3, 0
/* 80138B28  41 82 00 10 */	beq lbl_80138B38
/* 80138B2C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80138B30  60 00 00 04 */	ori r0, r0, 4
/* 80138B34  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80138B38:
/* 80138B38  80 61 00 08 */	lwz r3, 8(r1)
/* 80138B3C  28 03 00 00 */	cmplwi r3, 0
/* 80138B40  41 82 00 10 */	beq lbl_80138B50
/* 80138B44  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 80138B48  60 00 00 04 */	ori r0, r0, 4
/* 80138B4C  90 03 00 F4 */	stw r0, 0xf4(r3)
lbl_80138B50:
/* 80138B50  38 60 00 01 */	li r3, 1
/* 80138B54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80138B58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80138B5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80138B60  7C 08 03 A6 */	mtlr r0
/* 80138B64  38 21 00 20 */	addi r1, r1, 0x20
/* 80138B68  4E 80 00 20 */	blr 
