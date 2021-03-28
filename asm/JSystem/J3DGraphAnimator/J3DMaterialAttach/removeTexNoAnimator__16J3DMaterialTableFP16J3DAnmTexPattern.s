lbl_8032F6F8:
/* 8032F6F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8032F6FC  7C 08 02 A6 */	mflr r0
/* 8032F700  90 01 00 24 */	stw r0, 0x24(r1)
/* 8032F704  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F708  48 03 2A C9 */	bl _savegpr_26
/* 8032F70C  7C 7B 1B 78 */	mr r27, r3
/* 8032F710  7C 9C 23 78 */	mr r28, r4
/* 8032F714  3B E0 00 00 */	li r31, 0
/* 8032F718  A3 44 00 16 */	lhz r26, 0x16(r4)
/* 8032F71C  83 C4 00 10 */	lwz r30, 0x10(r4)
/* 8032F720  3B A0 00 00 */	li r29, 0
/* 8032F724  48 00 00 68 */	b lbl_8032F78C
lbl_8032F728:
/* 8032F728  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 8032F72C  57 A4 04 3E */	clrlwi r4, r29, 0x10
/* 8032F730  57 A0 0B FC */	rlwinm r0, r29, 1, 0xf, 0x1e
/* 8032F734  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032F738  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032F73C  41 82 00 4C */	beq lbl_8032F788
/* 8032F740  80 7B 00 08 */	lwz r3, 8(r27)
/* 8032F744  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032F748  7C 63 00 2E */	lwzx r3, r3, r0
/* 8032F74C  80 63 00 3C */	lwz r3, 0x3c(r3)
/* 8032F750  3C 00 C0 00 */	lis r0, 0xc000
/* 8032F754  7C 03 00 40 */	cmplw r3, r0
/* 8032F758  40 80 00 08 */	bge lbl_8032F760
/* 8032F75C  48 00 00 08 */	b lbl_8032F764
lbl_8032F760:
/* 8032F760  38 60 00 00 */	li r3, 0
lbl_8032F764:
/* 8032F764  54 84 18 38 */	slwi r4, r4, 3
/* 8032F768  38 04 00 04 */	addi r0, r4, 4
/* 8032F76C  7C 9E 00 AE */	lbzx r4, r30, r0
/* 8032F770  28 03 00 00 */	cmplwi r3, 0
/* 8032F774  40 82 00 0C */	bne lbl_8032F780
/* 8032F778  3B E0 00 01 */	li r31, 1
/* 8032F77C  48 00 00 0C */	b lbl_8032F788
lbl_8032F780:
/* 8032F780  38 A0 00 00 */	li r5, 0
/* 8032F784  4B FF CE A1 */	bl setTexNoAnm__14J3DMaterialAnmFiP11J3DTexNoAnm
lbl_8032F788:
/* 8032F788  3B BD 00 01 */	addi r29, r29, 1
lbl_8032F78C:
/* 8032F78C  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8032F790  7C 00 D0 40 */	cmplw r0, r26
/* 8032F794  41 80 FF 94 */	blt lbl_8032F728
/* 8032F798  7F E3 FB 78 */	mr r3, r31
/* 8032F79C  39 61 00 20 */	addi r11, r1, 0x20
/* 8032F7A0  48 03 2A 7D */	bl _restgpr_26
/* 8032F7A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8032F7A8  7C 08 03 A6 */	mtlr r0
/* 8032F7AC  38 21 00 20 */	addi r1, r1, 0x20
/* 8032F7B0  4E 80 00 20 */	blr 
