lbl_80BD977C:
/* 80BD977C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BD9780  7C 08 02 A6 */	mflr r0
/* 80BD9784  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BD9788  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80BD978C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80BD9790  7C 7E 1B 78 */	mr r30, r3
/* 80BD9794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BD9798  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BD979C  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80BD97A0  80 BE 0E 8C */	lwz r5, 0xe8c(r30)
/* 80BD97A4  38 61 00 08 */	addi r3, r1, 8
/* 80BD97A8  38 85 00 04 */	addi r4, r5, 4
/* 80BD97AC  38 A5 00 54 */	addi r5, r5, 0x54
/* 80BD97B0  4B 68 D3 84 */	b __mi__4cXyzCFRC3Vec
/* 80BD97B4  C0 61 00 08 */	lfs f3, 8(r1)
/* 80BD97B8  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80BD97BC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80BD97C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD97C4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80BD97C8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BD97CC  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80BD97D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BD97D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80BD97D8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80BD97DC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BD97E0  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80BD97E4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BD97E8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BD97EC  7C 63 02 14 */	add r3, r3, r0
/* 80BD97F0  C0 83 00 04 */	lfs f4, 4(r3)
/* 80BD97F4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80BD97F8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BD97FC  88 1E 0E 90 */	lbz r0, 0xe90(r30)
/* 80BD9800  28 00 00 00 */	cmplwi r0, 0
/* 80BD9804  41 82 00 28 */	beq lbl_80BD982C
/* 80BD9808  EC 23 00 72 */	fmuls f1, f3, f1
/* 80BD980C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BD9810  EC 21 00 2A */	fadds f1, f1, f0
/* 80BD9814  3C 60 80 BE */	lis r3, lit_3829@ha
/* 80BD9818  C0 03 A0 08 */	lfs f0, lit_3829@l(r3)
/* 80BD981C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BD9820  40 80 00 0C */	bge lbl_80BD982C
/* 80BD9824  38 60 00 01 */	li r3, 1
/* 80BD9828  48 00 00 08 */	b lbl_80BD9830
lbl_80BD982C:
/* 80BD982C  38 60 00 00 */	li r3, 0
lbl_80BD9830:
/* 80BD9830  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80BD9834  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80BD9838  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BD983C  7C 08 03 A6 */	mtlr r0
/* 80BD9840  38 21 00 40 */	addi r1, r1, 0x40
/* 80BD9844  4E 80 00 20 */	blr 
