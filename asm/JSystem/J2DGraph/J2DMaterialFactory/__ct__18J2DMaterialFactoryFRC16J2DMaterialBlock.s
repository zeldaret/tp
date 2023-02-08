lbl_802F2AD0:
/* 802F2AD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802F2AD4  7C 08 02 A6 */	mflr r0
/* 802F2AD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802F2ADC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802F2AE0  93 C1 00 08 */	stw r30, 8(r1)
/* 802F2AE4  7C 7E 1B 78 */	mr r30, r3
/* 802F2AE8  7C 9F 23 78 */	mr r31, r4
/* 802F2AEC  A0 04 00 08 */	lhz r0, 8(r4)
/* 802F2AF0  B0 03 00 00 */	sth r0, 0(r3)
/* 802F2AF4  7F E3 FB 78 */	mr r3, r31
/* 802F2AF8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 802F2AFC  48 00 17 DD */	bl func_802F42D8
/* 802F2B00  90 7E 00 04 */	stw r3, 4(r30)
/* 802F2B04  7F E3 FB 78 */	mr r3, r31
/* 802F2B08  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 802F2B0C  48 00 17 B5 */	bl func_802F42C0
/* 802F2B10  90 7E 00 08 */	stw r3, 8(r30)
/* 802F2B14  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 802F2B18  28 04 00 00 */	cmplwi r4, 0
/* 802F2B1C  41 82 00 24 */	beq lbl_802F2B40
/* 802F2B20  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 802F2B24  7C 00 20 50 */	subf r0, r0, r4
/* 802F2B28  28 00 00 04 */	cmplwi r0, 4
/* 802F2B2C  40 81 00 14 */	ble lbl_802F2B40
/* 802F2B30  7F E3 FB 78 */	mr r3, r31
/* 802F2B34  48 00 17 75 */	bl func_802F42A8
/* 802F2B38  90 7E 00 0C */	stw r3, 0xc(r30)
/* 802F2B3C  48 00 00 0C */	b lbl_802F2B48
lbl_802F2B40:
/* 802F2B40  38 00 00 00 */	li r0, 0
/* 802F2B44  90 1E 00 0C */	stw r0, 0xc(r30)
lbl_802F2B48:
/* 802F2B48  7F E3 FB 78 */	mr r3, r31
/* 802F2B4C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 802F2B50  48 00 17 41 */	bl func_802F4290
/* 802F2B54  90 7E 00 30 */	stw r3, 0x30(r30)
/* 802F2B58  7F E3 FB 78 */	mr r3, r31
/* 802F2B5C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802F2B60  48 00 17 19 */	bl func_802F4278
/* 802F2B64  90 7E 00 10 */	stw r3, 0x10(r30)
/* 802F2B68  7F E3 FB 78 */	mr r3, r31
/* 802F2B6C  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 802F2B70  48 00 16 F1 */	bl func_802F4260
/* 802F2B74  90 7E 00 14 */	stw r3, 0x14(r30)
/* 802F2B78  7F E3 FB 78 */	mr r3, r31
/* 802F2B7C  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 802F2B80  48 00 16 C9 */	bl func_802F4248
/* 802F2B84  90 7E 00 18 */	stw r3, 0x18(r30)
/* 802F2B88  7F E3 FB 78 */	mr r3, r31
/* 802F2B8C  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 802F2B90  48 00 16 D1 */	bl func_802F4260
/* 802F2B94  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 802F2B98  7F E3 FB 78 */	mr r3, r31
/* 802F2B9C  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 802F2BA0  48 00 16 91 */	bl func_802F4230
/* 802F2BA4  90 7E 00 20 */	stw r3, 0x20(r30)
/* 802F2BA8  7F E3 FB 78 */	mr r3, r31
/* 802F2BAC  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 802F2BB0  48 00 16 69 */	bl func_802F4218
/* 802F2BB4  90 7E 00 24 */	stw r3, 0x24(r30)
/* 802F2BB8  7F E3 FB 78 */	mr r3, r31
/* 802F2BBC  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 802F2BC0  48 00 17 01 */	bl func_802F42C0
/* 802F2BC4  90 7E 00 28 */	stw r3, 0x28(r30)
/* 802F2BC8  7F E3 FB 78 */	mr r3, r31
/* 802F2BCC  80 9F 00 3C */	lwz r4, 0x3c(r31)
/* 802F2BD0  48 00 16 F1 */	bl func_802F42C0
/* 802F2BD4  90 7E 00 2C */	stw r3, 0x2c(r30)
/* 802F2BD8  7F E3 FB 78 */	mr r3, r31
/* 802F2BDC  80 9F 00 40 */	lwz r4, 0x40(r31)
/* 802F2BE0  48 00 16 21 */	bl func_802F4200
/* 802F2BE4  90 7E 00 34 */	stw r3, 0x34(r30)
/* 802F2BE8  7F E3 FB 78 */	mr r3, r31
/* 802F2BEC  80 9F 00 44 */	lwz r4, 0x44(r31)
/* 802F2BF0  48 00 15 F9 */	bl func_802F41E8
/* 802F2BF4  90 7E 00 38 */	stw r3, 0x38(r30)
/* 802F2BF8  7F E3 FB 78 */	mr r3, r31
/* 802F2BFC  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 802F2C00  48 00 16 79 */	bl func_802F4278
/* 802F2C04  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 802F2C08  7F E3 FB 78 */	mr r3, r31
/* 802F2C0C  80 9F 00 4C */	lwz r4, 0x4c(r31)
/* 802F2C10  48 00 16 51 */	bl func_802F4260
/* 802F2C14  90 7E 00 40 */	stw r3, 0x40(r30)
/* 802F2C18  7F E3 FB 78 */	mr r3, r31
/* 802F2C1C  80 9F 00 50 */	lwz r4, 0x50(r31)
/* 802F2C20  48 00 15 B1 */	bl func_802F41D0
/* 802F2C24  90 7E 00 44 */	stw r3, 0x44(r30)
/* 802F2C28  7F E3 FB 78 */	mr r3, r31
/* 802F2C2C  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 802F2C30  48 00 15 89 */	bl func_802F41B8
/* 802F2C34  90 7E 00 48 */	stw r3, 0x48(r30)
/* 802F2C38  7F E3 FB 78 */	mr r3, r31
/* 802F2C3C  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 802F2C40  48 00 15 61 */	bl func_802F41A0
/* 802F2C44  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 802F2C48  7F E3 FB 78 */	mr r3, r31
/* 802F2C4C  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 802F2C50  48 00 15 39 */	bl func_802F4188
/* 802F2C54  90 7E 00 50 */	stw r3, 0x50(r30)
/* 802F2C58  7F E3 FB 78 */	mr r3, r31
/* 802F2C5C  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 802F2C60  48 00 15 11 */	bl func_802F4170
/* 802F2C64  90 7E 00 54 */	stw r3, 0x54(r30)
/* 802F2C68  7F E3 FB 78 */	mr r3, r31
/* 802F2C6C  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 802F2C70  48 00 15 F1 */	bl func_802F4260
/* 802F2C74  90 7E 00 58 */	stw r3, 0x58(r30)
/* 802F2C78  7F C3 F3 78 */	mr r3, r30
/* 802F2C7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802F2C80  83 C1 00 08 */	lwz r30, 8(r1)
/* 802F2C84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802F2C88  7C 08 03 A6 */	mtlr r0
/* 802F2C8C  38 21 00 10 */	addi r1, r1, 0x10
/* 802F2C90  4E 80 00 20 */	blr 
