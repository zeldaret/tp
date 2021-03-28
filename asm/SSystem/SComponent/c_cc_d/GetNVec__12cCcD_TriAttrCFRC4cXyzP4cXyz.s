lbl_80263C9C:
/* 80263C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80263CA0  7C 08 02 A6 */	mflr r0
/* 80263CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80263CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80263CAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80263CB0  7C 7E 1B 78 */	mr r30, r3
/* 80263CB4  7C BF 2B 78 */	mr r31, r5
/* 80263CB8  38 7E 00 20 */	addi r3, r30, 0x20
/* 80263CBC  48 0E 34 D9 */	bl PSVECDotProduct
/* 80263CC0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80263CC4  EC 20 08 2A */	fadds f1, f0, f1
/* 80263CC8  C0 02 B6 20 */	lfs f0, lit_2431(r2)
/* 80263CCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80263CD0  4C 41 13 82 */	cror 2, 1, 2
/* 80263CD4  40 82 00 20 */	bne lbl_80263CF4
/* 80263CD8  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80263CDC  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80263CE0  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80263CE4  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80263CE8  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80263CEC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80263CF0  48 00 00 2C */	b lbl_80263D1C
lbl_80263CF4:
/* 80263CF4  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80263CF8  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80263CFC  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80263D00  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80263D04  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80263D08  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80263D0C  7F E3 FB 78 */	mr r3, r31
/* 80263D10  7F E4 FB 78 */	mr r4, r31
/* 80263D14  C0 22 B6 30 */	lfs f1, lit_2632(r2)
/* 80263D18  48 0E 33 C1 */	bl PSVECScale
lbl_80263D1C:
/* 80263D1C  38 60 00 01 */	li r3, 1
/* 80263D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80263D24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80263D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80263D2C  7C 08 03 A6 */	mtlr r0
/* 80263D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80263D34  4E 80 00 20 */	blr 
