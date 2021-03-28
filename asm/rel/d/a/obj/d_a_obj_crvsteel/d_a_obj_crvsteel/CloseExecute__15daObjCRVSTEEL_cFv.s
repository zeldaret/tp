lbl_80BD5C28:
/* 80BD5C28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD5C2C  7C 08 02 A6 */	mflr r0
/* 80BD5C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD5C34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD5C38  7C 7F 1B 78 */	mr r31, r3
/* 80BD5C3C  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80BD5C40  C0 03 04 FC */	lfs f0, 0x4fc(r3)
/* 80BD5C44  EC 01 00 2A */	fadds f0, f1, f0
/* 80BD5C48  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80BD5C4C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80BD5C50  C0 23 05 B0 */	lfs f1, 0x5b0(r3)
/* 80BD5C54  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80BD5C58  40 80 00 34 */	bge lbl_80BD5C8C
/* 80BD5C5C  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
/* 80BD5C60  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BD5C64  38 9F 05 A4 */	addi r4, r31, 0x5a4
/* 80BD5C68  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BD5C6C  38 C0 00 00 */	li r6, 0
/* 80BD5C70  3C E0 80 BD */	lis r7, lit_3789@ha
/* 80BD5C74  C0 27 62 08 */	lfs f1, lit_3789@l(r7)
/* 80BD5C78  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80BD5C7C  39 00 00 01 */	li r8, 1
/* 80BD5C80  4B 44 73 A0 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80BD5C84  38 00 00 00 */	li r0, 0
/* 80BD5C88  B0 1F 05 A8 */	sth r0, 0x5a8(r31)
lbl_80BD5C8C:
/* 80BD5C8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD5C90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD5C94  7C 08 03 A6 */	mtlr r0
/* 80BD5C98  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD5C9C  4E 80 00 20 */	blr 
