lbl_8032FE70:
/* 8032FE70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032FE74  7C 08 02 A6 */	mflr r0
/* 8032FE78  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032FE7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8032FE80  48 03 23 51 */	bl _savegpr_26
/* 8032FE84  7C 7B 1B 78 */	mr r27, r3
/* 8032FE88  7C 9C 23 78 */	mr r28, r4
/* 8032FE8C  3B C0 00 00 */	li r30, 0
/* 8032FE90  A0 64 00 0C */	lhz r3, 0xc(r4)
/* 8032FE94  A3 E4 00 0E */	lhz r31, 0xe(r4)
/* 8032FE98  A0 1B 00 1C */	lhz r0, 0x1c(r27)
/* 8032FE9C  28 00 00 01 */	cmplwi r0, 1
/* 8032FEA0  40 82 00 0C */	bne lbl_8032FEAC
/* 8032FEA4  38 60 00 02 */	li r3, 2
/* 8032FEA8  48 00 01 2C */	b lbl_8032FFD4
lbl_8032FEAC:
/* 8032FEAC  3B A0 00 00 */	li r29, 0
/* 8032FEB0  54 7A 04 3E */	clrlwi r26, r3, 0x10
/* 8032FEB4  48 00 00 80 */	b lbl_8032FF34
lbl_8032FEB8:
/* 8032FEB8  80 7C 00 20 */	lwz r3, 0x20(r28)
/* 8032FEBC  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 8032FEC0  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8032FEC4  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032FEC8  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032FECC  41 82 00 64 */	beq lbl_8032FF30
/* 8032FED0  80 7B 00 08 */	lwz r3, 8(r27)
/* 8032FED4  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032FED8  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032FEDC  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8032FEE0  3C 00 C0 00 */	lis r0, 0xc000
/* 8032FEE4  7C 03 00 40 */	cmplw r3, r0
/* 8032FEE8  40 80 00 08 */	bge lbl_8032FEF0
/* 8032FEEC  48 00 00 08 */	b lbl_8032FEF4
lbl_8032FEF0:
/* 8032FEF0  38 60 00 00 */	li r3, 0
lbl_8032FEF4:
/* 8032FEF4  80 BC 00 48 */	lwz r5, 0x48(r28)
/* 8032FEF8  1C 84 00 1C */	mulli r4, r4, 0x1c
/* 8032FEFC  38 04 00 18 */	addi r0, r4, 0x18
/* 8032FF00  7C 85 00 AE */	lbzx r4, r5, r0
/* 8032FF04  28 03 00 00 */	cmplwi r3, 0
/* 8032FF08  40 82 00 0C */	bne lbl_8032FF14
/* 8032FF0C  3B C0 00 01 */	li r30, 1
/* 8032FF10  48 00 00 20 */	b lbl_8032FF30
lbl_8032FF14:
/* 8032FF14  B3 A1 00 10 */	sth r29, 0x10(r1)
/* 8032FF18  38 00 00 01 */	li r0, 1
/* 8032FF1C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8032FF20  93 81 00 14 */	stw r28, 0x14(r1)
/* 8032FF24  54 84 06 3E */	clrlwi r4, r4, 0x18
/* 8032FF28  38 A1 00 10 */	addi r5, r1, 0x10
/* 8032FF2C  4B FF C7 39 */	bl setTevColorAnm__14J3DMaterialAnmFiP14J3DTevColorAnm
lbl_8032FF30:
/* 8032FF30  3B BD 00 01 */	addi r29, r29, 1
lbl_8032FF34:
/* 8032FF34  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8032FF38  7C 00 D0 40 */	cmplw r0, r26
/* 8032FF3C  41 80 FF 7C */	blt lbl_8032FEB8
/* 8032FF40  3B A0 00 00 */	li r29, 0
/* 8032FF44  57 FF 04 3E */	clrlwi r31, r31, 0x10
/* 8032FF48  48 00 00 7C */	b lbl_8032FFC4
lbl_8032FF4C:
/* 8032FF4C  80 7C 00 34 */	lwz r3, 0x34(r28)
/* 8032FF50  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 8032FF54  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8032FF58  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032FF5C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032FF60  41 82 00 60 */	beq lbl_8032FFC0
/* 8032FF64  80 7B 00 08 */	lwz r3, 8(r27)
/* 8032FF68  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032FF6C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032FF70  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8032FF74  3C 00 C0 00 */	lis r0, 0xc000
/* 8032FF78  7C 03 00 40 */	cmplw r3, r0
/* 8032FF7C  40 80 00 08 */	bge lbl_8032FF84
/* 8032FF80  48 00 00 08 */	b lbl_8032FF88
lbl_8032FF84:
/* 8032FF84  38 60 00 00 */	li r3, 0
lbl_8032FF88:
/* 8032FF88  80 BC 00 4C */	lwz r5, 0x4c(r28)
/* 8032FF8C  1C 84 00 1C */	mulli r4, r4, 0x1c
/* 8032FF90  38 04 00 18 */	addi r0, r4, 0x18
/* 8032FF94  7C 85 00 AE */	lbzx r4, r5, r0
/* 8032FF98  28 03 00 00 */	cmplwi r3, 0
/* 8032FF9C  40 82 00 0C */	bne lbl_8032FFA8
/* 8032FFA0  3B C0 00 01 */	li r30, 1
/* 8032FFA4  48 00 00 1C */	b lbl_8032FFC0
lbl_8032FFA8:
/* 8032FFA8  B3 A1 00 08 */	sth r29, 8(r1)
/* 8032FFAC  38 00 00 01 */	li r0, 1
/* 8032FFB0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8032FFB4  93 81 00 0C */	stw r28, 0xc(r1)
/* 8032FFB8  38 A1 00 08 */	addi r5, r1, 8
/* 8032FFBC  4B FF C6 E9 */	bl setTevKColorAnm__14J3DMaterialAnmFiP15J3DTevKColorAnm
lbl_8032FFC0:
/* 8032FFC0  3B BD 00 01 */	addi r29, r29, 1
lbl_8032FFC4:
/* 8032FFC4  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8032FFC8  7C 00 F8 40 */	cmplw r0, r31
/* 8032FFCC  41 80 FF 80 */	blt lbl_8032FF4C
/* 8032FFD0  7F C3 F3 78 */	mr r3, r30
lbl_8032FFD4:
/* 8032FFD4  39 61 00 30 */	addi r11, r1, 0x30
/* 8032FFD8  48 03 22 45 */	bl _restgpr_26
/* 8032FFDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032FFE0  7C 08 03 A6 */	mtlr r0
/* 8032FFE4  38 21 00 30 */	addi r1, r1, 0x30
/* 8032FFE8  4E 80 00 20 */	blr 
