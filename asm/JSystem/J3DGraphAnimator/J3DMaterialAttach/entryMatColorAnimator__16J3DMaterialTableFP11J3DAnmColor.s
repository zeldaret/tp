lbl_8032FAF4:
/* 8032FAF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032FAF8  7C 08 02 A6 */	mflr r0
/* 8032FAFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032FB00  39 61 00 30 */	addi r11, r1, 0x30
/* 8032FB04  48 03 26 D1 */	bl _savegpr_27
/* 8032FB08  7C 7E 1B 78 */	mr r30, r3
/* 8032FB0C  7C 9F 23 78 */	mr r31, r4
/* 8032FB10  3B 80 00 00 */	li r28, 0
/* 8032FB14  A0 64 00 14 */	lhz r3, 0x14(r4)
/* 8032FB18  A0 1E 00 1C */	lhz r0, 0x1c(r30)
/* 8032FB1C  28 00 00 01 */	cmplwi r0, 1
/* 8032FB20  40 82 00 0C */	bne lbl_8032FB2C
/* 8032FB24  38 60 00 02 */	li r3, 2
/* 8032FB28  48 00 00 88 */	b lbl_8032FBB0
lbl_8032FB2C:
/* 8032FB2C  3B 60 00 00 */	li r27, 0
/* 8032FB30  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 8032FB34  48 00 00 6C */	b lbl_8032FBA0
lbl_8032FB38:
/* 8032FB38  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8032FB3C  57 60 0B FC */	rlwinm r0, r27, 1, 0xf, 0x1e
/* 8032FB40  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032FB44  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032FB48  41 82 00 54 */	beq lbl_8032FB9C
/* 8032FB4C  80 7E 00 08 */	lwz r3, 8(r30)
/* 8032FB50  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032FB54  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032FB58  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8032FB5C  3C 00 C0 00 */	lis r0, 0xc000
/* 8032FB60  7C 03 00 40 */	cmplw r3, r0
/* 8032FB64  40 80 00 08 */	bge lbl_8032FB6C
/* 8032FB68  48 00 00 08 */	b lbl_8032FB70
lbl_8032FB6C:
/* 8032FB6C  38 60 00 00 */	li r3, 0
lbl_8032FB70:
/* 8032FB70  28 03 00 00 */	cmplwi r3, 0
/* 8032FB74  40 82 00 0C */	bne lbl_8032FB80
/* 8032FB78  3B 80 00 01 */	li r28, 1
/* 8032FB7C  48 00 00 20 */	b lbl_8032FB9C
lbl_8032FB80:
/* 8032FB80  B3 61 00 08 */	sth r27, 8(r1)
/* 8032FB84  38 00 00 01 */	li r0, 1
/* 8032FB88  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8032FB8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8032FB90  38 80 00 00 */	li r4, 0
/* 8032FB94  38 A1 00 08 */	addi r5, r1, 8
/* 8032FB98  4B FF CA 0D */	bl setMatColorAnm__14J3DMaterialAnmFiP14J3DMatColorAnm
lbl_8032FB9C:
/* 8032FB9C  3B 7B 00 01 */	addi r27, r27, 1
lbl_8032FBA0:
/* 8032FBA0  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8032FBA4  7C 00 E8 40 */	cmplw r0, r29
/* 8032FBA8  41 80 FF 90 */	blt lbl_8032FB38
/* 8032FBAC  7F 83 E3 78 */	mr r3, r28
lbl_8032FBB0:
/* 8032FBB0  39 61 00 30 */	addi r11, r1, 0x30
/* 8032FBB4  48 03 26 6D */	bl _restgpr_27
/* 8032FBB8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032FBBC  7C 08 03 A6 */	mtlr r0
/* 8032FBC0  38 21 00 30 */	addi r1, r1, 0x30
/* 8032FBC4  4E 80 00 20 */	blr 
