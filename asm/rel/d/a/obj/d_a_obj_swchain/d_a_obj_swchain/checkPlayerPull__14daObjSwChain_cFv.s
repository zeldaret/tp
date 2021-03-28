lbl_80CFB464:
/* 80CFB464  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CFB468  7C 08 02 A6 */	mflr r0
/* 80CFB46C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CFB470  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CFB474  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80CFB478  7C 7E 1B 78 */	mr r30, r3
/* 80CFB47C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFB480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFB484  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80CFB488  80 DE 0A 74 */	lwz r6, 0xa74(r30)
/* 80CFB48C  38 61 00 08 */	addi r3, r1, 8
/* 80CFB490  38 86 00 34 */	addi r4, r6, 0x34
/* 80CFB494  88 1E 0A 65 */	lbz r0, 0xa65(r30)
/* 80CFB498  1C A0 00 50 */	mulli r5, r0, 0x50
/* 80CFB49C  38 A5 00 34 */	addi r5, r5, 0x34
/* 80CFB4A0  7C A6 2A 14 */	add r5, r6, r5
/* 80CFB4A4  4B 56 B6 90 */	b __mi__4cXyzCFRC3Vec
/* 80CFB4A8  C0 61 00 08 */	lfs f3, 8(r1)
/* 80CFB4AC  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80CFB4B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CFB4B4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CFB4B8  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80CFB4BC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80CFB4C0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80CFB4C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CFB4C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80CFB4CC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80CFB4D0  7C 23 04 2E */	lfsx f1, r3, r0
/* 80CFB4D4  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80CFB4D8  EC 20 00 72 */	fmuls f1, f0, f1
/* 80CFB4DC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80CFB4E0  7C 63 02 14 */	add r3, r3, r0
/* 80CFB4E4  C0 83 00 04 */	lfs f4, 4(r3)
/* 80CFB4E8  EC 00 01 32 */	fmuls f0, f0, f4
/* 80CFB4EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CFB4F0  88 1E 0A 62 */	lbz r0, 0xa62(r30)
/* 80CFB4F4  28 00 00 00 */	cmplwi r0, 0
/* 80CFB4F8  41 82 00 28 */	beq lbl_80CFB520
/* 80CFB4FC  EC 23 00 72 */	fmuls f1, f3, f1
/* 80CFB500  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CFB504  EC 21 00 2A */	fadds f1, f1, f0
/* 80CFB508  3C 60 80 D0 */	lis r3, lit_3734@ha
/* 80CFB50C  C0 03 B6 EC */	lfs f0, lit_3734@l(r3)
/* 80CFB510  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFB514  40 80 00 0C */	bge lbl_80CFB520
/* 80CFB518  38 60 00 01 */	li r3, 1
/* 80CFB51C  48 00 00 08 */	b lbl_80CFB524
lbl_80CFB520:
/* 80CFB520  38 60 00 00 */	li r3, 0
lbl_80CFB524:
/* 80CFB524  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CFB528  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80CFB52C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CFB530  7C 08 03 A6 */	mtlr r0
/* 80CFB534  38 21 00 40 */	addi r1, r1, 0x40
/* 80CFB538  4E 80 00 20 */	blr 
