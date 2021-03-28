lbl_80C7AD40:
/* 80C7AD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7AD44  7C 08 02 A6 */	mflr r0
/* 80C7AD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7AD4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7AD50  93 C1 00 08 */	stw r30, 8(r1)
/* 80C7AD54  7C 7E 1B 78 */	mr r30, r3
/* 80C7AD58  3C 60 80 C8 */	lis r3, lit_3631@ha
/* 80C7AD5C  3B E3 C6 18 */	addi r31, r3, lit_3631@l
/* 80C7AD60  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C7AD64  38 9E 05 B0 */	addi r4, r30, 0x5b0
/* 80C7AD68  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C7AD6C  C0 5E 05 D4 */	lfs f2, 0x5d4(r30)
/* 80C7AD70  C0 7F 01 08 */	lfs f3, 0x108(r31)
/* 80C7AD74  4B 5F 4D 44 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C7AD78  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7AD7C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C7AD80  40 82 00 0C */	bne lbl_80C7AD8C
/* 80C7AD84  7F C3 F3 78 */	mr r3, r30
/* 80C7AD88  48 00 00 1D */	bl init_modeBoundWait__15daLv6TogeTrap_cFv
lbl_80C7AD8C:
/* 80C7AD8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7AD90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C7AD94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7AD98  7C 08 03 A6 */	mtlr r0
/* 80C7AD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7ADA0  4E 80 00 20 */	blr 
