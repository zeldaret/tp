lbl_8032B0C0:
/* 8032B0C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032B0C4  7C 08 02 A6 */	mflr r0
/* 8032B0C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032B0CC  39 61 00 20 */	addi r11, r1, 0x20
/* 8032B0D0  48 03 71 09 */	bl _savegpr_28
/* 8032B0D4  7C 7E 1B 78 */	mr r30, r3
/* 8032B0D8  7C 9F 23 78 */	mr r31, r4
/* 8032B0DC  3B 80 00 00 */	li r28, 0
/* 8032B0E0  48 00 00 50 */	b lbl_8032B130
lbl_8032B0E4:
/* 8032B0E4  83 BF 00 0C */	lwz r29, 0xc(r31)
/* 8032B0E8  38 7E 00 30 */	addi r3, r30, 0x30
/* 8032B0EC  7F 84 E3 78 */	mr r4, r28
/* 8032B0F0  4B FB 3A 09 */	bl getName__10JUTNameTabCFUs
/* 8032B0F4  7C 64 1B 78 */	mr r4, r3
/* 8032B0F8  7F A3 EB 78 */	mr r3, r29
/* 8032B0FC  4B FB 39 5D */	bl getIndex__10JUTNameTabCFPCc
/* 8032B100  2C 03 FF FF */	cmpwi r3, -1
/* 8032B104  41 82 00 14 */	beq lbl_8032B118
/* 8032B108  80 9E 00 2C */	lwz r4, 0x2c(r30)
/* 8032B10C  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 8032B110  7C 64 03 2E */	sthx r3, r4, r0
/* 8032B114  48 00 00 18 */	b lbl_8032B12C
lbl_8032B118:
/* 8032B118  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8032B11C  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8032B120  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 8032B124  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 8032B128  7C 83 03 2E */	sthx r4, r3, r0
lbl_8032B12C:
/* 8032B12C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8032B130:
/* 8032B130  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 8032B134  A0 7E 00 14 */	lhz r3, 0x14(r30)
/* 8032B138  38 00 00 03 */	li r0, 3
/* 8032B13C  7C 03 03 D6 */	divw r0, r3, r0
/* 8032B140  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8032B144  7C 04 00 40 */	cmplw r4, r0
/* 8032B148  41 80 FF 9C */	blt lbl_8032B0E4
/* 8032B14C  3B 80 00 00 */	li r28, 0
/* 8032B150  48 00 00 50 */	b lbl_8032B1A0
lbl_8032B154:
/* 8032B154  83 BF 00 0C */	lwz r29, 0xc(r31)
/* 8032B158  38 7E 00 64 */	addi r3, r30, 0x64
/* 8032B15C  7F 84 E3 78 */	mr r4, r28
/* 8032B160  4B FB 39 99 */	bl getName__10JUTNameTabCFUs
/* 8032B164  7C 64 1B 78 */	mr r4, r3
/* 8032B168  7F A3 EB 78 */	mr r3, r29
/* 8032B16C  4B FB 38 ED */	bl getIndex__10JUTNameTabCFPCc
/* 8032B170  2C 03 FF FF */	cmpwi r3, -1
/* 8032B174  41 82 00 14 */	beq lbl_8032B188
/* 8032B178  80 9E 00 60 */	lwz r4, 0x60(r30)
/* 8032B17C  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 8032B180  7C 64 03 2E */	sthx r3, r4, r0
/* 8032B184  48 00 00 18 */	b lbl_8032B19C
lbl_8032B188:
/* 8032B188  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8032B18C  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8032B190  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 8032B194  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 8032B198  7C 83 03 2E */	sthx r4, r3, r0
lbl_8032B19C:
/* 8032B19C  3B 9C 00 01 */	addi r28, r28, 1
lbl_8032B1A0:
/* 8032B1A0  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 8032B1A4  A0 7E 00 4A */	lhz r3, 0x4a(r30)
/* 8032B1A8  38 00 00 03 */	li r0, 3
/* 8032B1AC  7C 03 03 D6 */	divw r0, r3, r0
/* 8032B1B0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8032B1B4  7C 04 00 40 */	cmplw r4, r0
/* 8032B1B8  41 80 FF 9C */	blt lbl_8032B154
/* 8032B1BC  39 61 00 20 */	addi r11, r1, 0x20
/* 8032B1C0  48 03 70 65 */	bl _restgpr_28
/* 8032B1C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032B1C8  7C 08 03 A6 */	mtlr r0
/* 8032B1CC  38 21 00 20 */	addi r1, r1, 0x20
/* 8032B1D0  4E 80 00 20 */	blr 
