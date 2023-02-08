lbl_8032B780:
/* 8032B780  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032B784  7C 08 02 A6 */	mflr r0
/* 8032B788  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032B78C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032B790  48 03 6A 49 */	bl _savegpr_28
/* 8032B794  7C 7E 1B 78 */	mr r30, r3
/* 8032B798  7C 9F 23 78 */	mr r31, r4
/* 8032B79C  3B 80 00 00 */	li r28, 0
/* 8032B7A0  48 00 00 50 */	b lbl_8032B7F0
lbl_8032B7A4:
/* 8032B7A4  83 BF 00 0C */	lwz r29, 0xc(r31)
/* 8032B7A8  38 7E 00 24 */	addi r3, r30, 0x24
/* 8032B7AC  7F 84 E3 78 */	mr r4, r28
/* 8032B7B0  4B FB 33 49 */	bl getName__10JUTNameTabCFUs
/* 8032B7B4  7C 64 1B 78 */	mr r4, r3
/* 8032B7B8  7F A3 EB 78 */	mr r3, r29
/* 8032B7BC  4B FB 32 9D */	bl getIndex__10JUTNameTabCFPCc
/* 8032B7C0  2C 03 FF FF */	cmpwi r3, -1
/* 8032B7C4  41 82 00 14 */	beq lbl_8032B7D8
/* 8032B7C8  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8032B7CC  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 8032B7D0  7C 64 03 2E */	sthx r3, r4, r0
/* 8032B7D4  48 00 00 18 */	b lbl_8032B7EC
lbl_8032B7D8:
/* 8032B7D8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8032B7DC  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8032B7E0  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8032B7E4  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 8032B7E8  7C 83 03 2E */	sthx r4, r3, r0
lbl_8032B7EC:
/* 8032B7EC  3B 9C 00 01 */	addi r28, r28, 1
lbl_8032B7F0:
/* 8032B7F0  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8032B7F4  A0 1E 00 0C */	lhz r0, 0xc(r30)
/* 8032B7F8  7C 03 00 40 */	cmplw r3, r0
/* 8032B7FC  41 80 FF A8 */	blt lbl_8032B7A4
/* 8032B800  3B 80 00 00 */	li r28, 0
/* 8032B804  48 00 00 50 */	b lbl_8032B854
lbl_8032B808:
/* 8032B808  83 BF 00 0C */	lwz r29, 0xc(r31)
/* 8032B80C  38 7E 00 38 */	addi r3, r30, 0x38
/* 8032B810  7F 84 E3 78 */	mr r4, r28
/* 8032B814  4B FB 32 E5 */	bl getName__10JUTNameTabCFUs
/* 8032B818  7C 64 1B 78 */	mr r4, r3
/* 8032B81C  7F A3 EB 78 */	mr r3, r29
/* 8032B820  4B FB 32 39 */	bl getIndex__10JUTNameTabCFPCc
/* 8032B824  2C 03 FF FF */	cmpwi r3, -1
/* 8032B828  41 82 00 14 */	beq lbl_8032B83C
/* 8032B82C  80 9E 00 34 */	lwz r4, 0x34(r30)
/* 8032B830  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 8032B834  7C 64 03 2E */	sthx r3, r4, r0
/* 8032B838  48 00 00 18 */	b lbl_8032B850
lbl_8032B83C:
/* 8032B83C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8032B840  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8032B844  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 8032B848  57 80 0B FC */	rlwinm r0, r28, 1, 0xf, 0x1e
/* 8032B84C  7C 83 03 2E */	sthx r4, r3, r0
lbl_8032B850:
/* 8032B850  3B 9C 00 01 */	addi r28, r28, 1
lbl_8032B854:
/* 8032B854  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8032B858  A0 1E 00 0E */	lhz r0, 0xe(r30)
/* 8032B85C  7C 03 00 40 */	cmplw r3, r0
/* 8032B860  41 80 FF A8 */	blt lbl_8032B808
/* 8032B864  39 61 00 20 */	addi r11, r1, 0x20
/* 8032B868  48 03 69 BD */	bl _restgpr_28
/* 8032B86C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032B870  7C 08 03 A6 */	mtlr r0
/* 8032B874  38 21 00 20 */	addi r1, r1, 0x20
/* 8032B878  4E 80 00 20 */	blr 
