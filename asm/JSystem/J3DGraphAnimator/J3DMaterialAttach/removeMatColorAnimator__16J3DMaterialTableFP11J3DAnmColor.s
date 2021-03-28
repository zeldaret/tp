lbl_8032F64C:
/* 8032F64C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F650  7C 08 02 A6 */	mflr r0
/* 8032F654  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F658  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F65C  48 03 2B 79 */	bl _savegpr_27
/* 8032F660  7C 7B 1B 78 */	mr r27, r3
/* 8032F664  7C 9C 23 78 */	mr r28, r4
/* 8032F668  3B C0 00 00 */	li r30, 0
/* 8032F66C  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 8032F670  3B A0 00 00 */	li r29, 0
/* 8032F674  48 00 00 5C */	b lbl_8032F6D0
lbl_8032F678:
/* 8032F678  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8032F67C  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8032F680  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032F684  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032F688  41 82 00 44 */	beq lbl_8032F6CC
/* 8032F68C  80 7B 00 08 */	lwz r3, 8(r27)
/* 8032F690  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032F694  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032F698  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8032F69C  3C 00 C0 00 */	lis r0, 0xc000
/* 8032F6A0  7C 03 00 40 */	cmplw r3, r0
/* 8032F6A4  40 80 00 08 */	bge lbl_8032F6AC
/* 8032F6A8  48 00 00 08 */	b lbl_8032F6B0
lbl_8032F6AC:
/* 8032F6AC  38 60 00 00 */	li r3, 0
lbl_8032F6B0:
/* 8032F6B0  28 03 00 00 */	cmplwi r3, 0
/* 8032F6B4  40 82 00 0C */	bne lbl_8032F6C0
/* 8032F6B8  3B C0 00 01 */	li r30, 1
/* 8032F6BC  48 00 00 10 */	b lbl_8032F6CC
lbl_8032F6C0:
/* 8032F6C0  38 80 00 00 */	li r4, 0
/* 8032F6C4  38 A0 00 00 */	li r5, 0
/* 8032F6C8  4B FF CE DD */	bl setMatColorAnm__14J3DMaterialAnmFiP14J3DMatColorAnm
lbl_8032F6CC:
/* 8032F6CC  3B BD 00 01 */	addi r29, r29, 1
lbl_8032F6D0:
/* 8032F6D0  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8032F6D4  7C 00 F8 40 */	cmplw r0, r31
/* 8032F6D8  41 80 FF A0 */	blt lbl_8032F678
/* 8032F6DC  7F C3 F3 78 */	mr r3, r30
/* 8032F6E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F6E4  48 03 2B 3D */	bl _restgpr_27
/* 8032F6E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F6EC  7C 08 03 A6 */	mtlr r0
/* 8032F6F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F6F4  4E 80 00 20 */	blr 
