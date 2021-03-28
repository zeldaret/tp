lbl_801E0B24:
/* 801E0B24  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E0B28  7C 08 02 A6 */	mflr r0
/* 801E0B2C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E0B30  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801E0B34  7C 7F 1B 78 */	mr r31, r3
/* 801E0B38  88 03 03 6E */	lbz r0, 0x36e(r3)
/* 801E0B3C  54 00 10 3A */	slwi r0, r0, 2
/* 801E0B40  7C 7F 02 14 */	add r3, r31, r0
/* 801E0B44  80 83 02 C8 */	lwz r4, 0x2c8(r3)
/* 801E0B48  38 61 00 08 */	addi r3, r1, 8
/* 801E0B4C  80 A4 00 04 */	lwz r5, 4(r4)
/* 801E0B50  38 C0 00 00 */	li r6, 0
/* 801E0B54  38 E0 00 00 */	li r7, 0
/* 801E0B58  48 07 43 65 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801E0B5C  80 61 00 08 */	lwz r3, 8(r1)
/* 801E0B60  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801E0B64  90 61 00 14 */	stw r3, 0x14(r1)
/* 801E0B68  90 01 00 18 */	stw r0, 0x18(r1)
/* 801E0B6C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801E0B70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801E0B74  88 1F 03 6E */	lbz r0, 0x36e(r31)
/* 801E0B78  54 00 10 3A */	slwi r0, r0, 2
/* 801E0B7C  7C 7F 02 14 */	add r3, r31, r0
/* 801E0B80  80 63 02 C8 */	lwz r3, 0x2c8(r3)
/* 801E0B84  80 83 00 04 */	lwz r4, 4(r3)
/* 801E0B88  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801E0B8C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 801E0B90  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 801E0B94  38 A0 00 00 */	li r5, 0
/* 801E0B98  4B FB 45 5D */	bl setPos__16dSelect_cursor_cFffP7J2DPaneb
/* 801E0B9C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801E0BA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E0BA4  7C 08 03 A6 */	mtlr r0
/* 801E0BA8  38 21 00 30 */	addi r1, r1, 0x30
/* 801E0BAC  4E 80 00 20 */	blr 
