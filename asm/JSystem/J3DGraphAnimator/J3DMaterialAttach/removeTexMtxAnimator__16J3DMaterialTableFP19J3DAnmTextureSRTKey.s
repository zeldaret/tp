lbl_8032F7B4:
/* 8032F7B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F7B8  7C 08 02 A6 */	mflr r0
/* 8032F7BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F7C0  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F7C4  48 03 2A 11 */	bl _savegpr_27
/* 8032F7C8  7C 7C 1B 78 */	mr r28, r3
/* 8032F7CC  7C 9D 23 78 */	mr r29, r4
/* 8032F7D0  3B E0 00 00 */	li r31, 0
/* 8032F7D4  A0 64 00 14 */	lhz r3, 0x14(r4)
/* 8032F7D8  38 00 00 03 */	li r0, 3
/* 8032F7DC  7C 03 03 D6 */	divw r0, r3, r0
/* 8032F7E0  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 8032F7E4  3B C0 00 00 */	li r30, 0
/* 8032F7E8  48 00 00 70 */	b lbl_8032F858
lbl_8032F7EC:
/* 8032F7EC  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 8032F7F0  57 C5 04 3E */	clrlwi r5, r30, 0x10
/* 8032F7F4  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 8032F7F8  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032F7FC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032F800  41 82 00 54 */	beq lbl_8032F854
/* 8032F804  80 7C 00 08 */	lwz r3, 8(r28)
/* 8032F808  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032F80C  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032F810  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8032F814  3C 00 C0 00 */	lis r0, 0xc000
/* 8032F818  7C 03 00 40 */	cmplw r3, r0
/* 8032F81C  40 80 00 08 */	bge lbl_8032F824
/* 8032F820  48 00 00 08 */	b lbl_8032F828
lbl_8032F824:
/* 8032F824  38 60 00 00 */	li r3, 0
lbl_8032F828:
/* 8032F828  80 9D 00 28 */	lwz r4, 0x28(r29)
/* 8032F82C  7C 04 28 AE */	lbzx r0, r4, r5
/* 8032F830  28 03 00 00 */	cmplwi r3, 0
/* 8032F834  40 82 00 0C */	bne lbl_8032F840
/* 8032F838  3B E0 00 01 */	li r31, 1
/* 8032F83C  48 00 00 18 */	b lbl_8032F854
lbl_8032F840:
/* 8032F840  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8032F844  28 04 00 FF */	cmplwi r4, 0xff
/* 8032F848  41 82 00 0C */	beq lbl_8032F854
/* 8032F84C  38 A0 00 00 */	li r5, 0
/* 8032F850  4B FF CD 95 */	bl setTexMtxAnm__14J3DMaterialAnmFiP12J3DTexMtxAnm
lbl_8032F854:
/* 8032F854  3B DE 00 01 */	addi r30, r30, 1
lbl_8032F858:
/* 8032F858  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8032F85C  7C 00 D8 40 */	cmplw r0, r27
/* 8032F860  41 80 FF 8C */	blt lbl_8032F7EC
/* 8032F864  7F E3 FB 78 */	mr r3, r31
/* 8032F868  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F86C  48 03 29 B5 */	bl _restgpr_27
/* 8032F870  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F874  7C 08 03 A6 */	mtlr r0
/* 8032F878  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F87C  4E 80 00 20 */	blr 
