lbl_80335AF4:
/* 80335AF4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80335AF8  7C 08 02 A6 */	mflr r0
/* 80335AFC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80335B00  39 61 00 40 */	addi r11, r1, 0x40
/* 80335B04  48 02 C6 D1 */	bl _savegpr_27
/* 80335B08  7C 7B 1B 78 */	mr r27, r3
/* 80335B0C  7C 9C 23 78 */	mr r28, r4
/* 80335B10  7C BD 2B 78 */	mr r29, r5
/* 80335B14  93 83 00 0C */	stw r28, 0xc(r3)
/* 80335B18  83 E3 00 04 */	lwz r31, 4(r3)
/* 80335B1C  38 61 00 08 */	addi r3, r1, 8
/* 80335B20  48 00 18 31 */	bl __ct__15J3DShapeFactoryFRC13J3DShapeBlock
/* 80335B24  A0 1C 00 08 */	lhz r0, 8(r28)
/* 80335B28  B0 1F 00 7C */	sth r0, 0x7c(r31)
/* 80335B2C  80 1C 00 14 */	lwz r0, 0x14(r28)
/* 80335B30  28 00 00 00 */	cmplwi r0, 0
/* 80335B34  41 82 00 38 */	beq lbl_80335B6C
/* 80335B38  38 60 00 10 */	li r3, 0x10
/* 80335B3C  4B F9 91 11 */	bl __nw__FUl
/* 80335B40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80335B44  41 82 00 20 */	beq lbl_80335B64
/* 80335B48  7F 83 E3 78 */	mr r3, r28
/* 80335B4C  80 9C 00 14 */	lwz r4, 0x14(r28)
/* 80335B50  4B FD 49 E1 */	bl func_8030A530
/* 80335B54  7C 64 1B 78 */	mr r4, r3
/* 80335B58  7F C3 F3 78 */	mr r3, r30
/* 80335B5C  4B FA 8E 85 */	bl __ct__10JUTNameTabFPC7ResNTAB
/* 80335B60  7C 7E 1B 78 */	mr r30, r3
lbl_80335B64:
/* 80335B64  93 DF 00 84 */	stw r30, 0x84(r31)
/* 80335B68  48 00 00 0C */	b lbl_80335B74
lbl_80335B6C:
/* 80335B6C  38 00 00 00 */	li r0, 0
/* 80335B70  90 1F 00 84 */	stw r0, 0x84(r31)
lbl_80335B74:
/* 80335B74  A0 1F 00 7C */	lhz r0, 0x7c(r31)
/* 80335B78  54 03 10 3A */	slwi r3, r0, 2
/* 80335B7C  4B F9 91 49 */	bl __nwa__FUl
/* 80335B80  90 7F 00 80 */	stw r3, 0x80(r31)
/* 80335B84  38 61 00 08 */	addi r3, r1, 8
/* 80335B88  A0 9F 00 7C */	lhz r4, 0x7c(r31)
/* 80335B8C  48 00 1D 4D */	bl allocVcdVatCmdBuffer__15J3DShapeFactoryFUl
/* 80335B90  80 7B 00 04 */	lwz r3, 4(r27)
/* 80335B94  83 C3 00 14 */	lwz r30, 0x14(r3)
/* 80335B98  38 C0 00 00 */	li r6, 0
/* 80335B9C  48 00 00 58 */	b lbl_80335BF4
lbl_80335BA0:
/* 80335BA0  28 00 00 12 */	cmplwi r0, 0x12
/* 80335BA4  40 82 00 4C */	bne lbl_80335BF0
/* 80335BA8  38 61 00 08 */	addi r3, r1, 8
/* 80335BAC  A0 9E 00 02 */	lhz r4, 2(r30)
/* 80335BB0  7F A5 EB 78 */	mr r5, r29
/* 80335BB4  48 00 18 4D */	bl create__15J3DShapeFactoryFiUlP14_GXVtxDescList
/* 80335BB8  80 9F 00 80 */	lwz r4, 0x80(r31)
/* 80335BBC  A0 1E 00 02 */	lhz r0, 2(r30)
/* 80335BC0  54 00 10 3A */	slwi r0, r0, 2
/* 80335BC4  7C 64 01 2E */	stwx r3, r4, r0
/* 80335BC8  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80335BCC  80 81 00 08 */	lwz r4, 8(r1)
/* 80335BD0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80335BD4  A0 1E 00 02 */	lhz r0, 2(r30)
/* 80335BD8  54 00 08 3C */	slwi r0, r0, 1
/* 80335BDC  7C 03 02 2E */	lhzx r0, r3, r0
/* 80335BE0  1C 60 00 28 */	mulli r3, r0, 0x28
/* 80335BE4  38 03 00 04 */	addi r0, r3, 4
/* 80335BE8  7C 04 02 2E */	lhzx r0, r4, r0
/* 80335BEC  7C C5 02 14 */	add r6, r5, r0
lbl_80335BF0:
/* 80335BF0  3B DE 00 04 */	addi r30, r30, 4
lbl_80335BF4:
/* 80335BF4  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80335BF8  28 00 00 00 */	cmplwi r0, 0
/* 80335BFC  40 82 FF A4 */	bne lbl_80335BA0
/* 80335C00  39 61 00 40 */	addi r11, r1, 0x40
/* 80335C04  48 02 C6 1D */	bl _restgpr_27
/* 80335C08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80335C0C  7C 08 03 A6 */	mtlr r0
/* 80335C10  38 21 00 40 */	addi r1, r1, 0x40
/* 80335C14  4E 80 00 20 */	blr 
