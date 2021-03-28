lbl_80BBA5B4:
/* 80BBA5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBA5B8  7C 08 02 A6 */	mflr r0
/* 80BBA5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBA5C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBA5C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BBA5C8  7C 7E 1B 78 */	mr r30, r3
/* 80BBA5CC  3C 60 80 BC */	lis r3, l_cull_box@ha
/* 80BBA5D0  3B E3 A7 B0 */	addi r31, r3, l_cull_box@l
/* 80BBA5D4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80BBA5D8  38 80 00 00 */	li r4, 0
/* 80BBA5DC  38 A0 00 05 */	li r5, 5
/* 80BBA5E0  38 C0 01 00 */	li r6, 0x100
/* 80BBA5E4  4B 6B 60 24 */	b cLib_addCalcAngleS2__FPssss
/* 80BBA5E8  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80BBA5EC  38 80 00 00 */	li r4, 0
/* 80BBA5F0  38 A0 00 05 */	li r5, 5
/* 80BBA5F4  38 C0 01 00 */	li r6, 0x100
/* 80BBA5F8  4B 6B 60 10 */	b cLib_addCalcAngleS2__FPssss
/* 80BBA5FC  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80BBA600  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BBA604  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80BBA608  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 80BBA60C  C0 9F 00 6C */	lfs f4, 0x6c(r31)
/* 80BBA610  4B 6B 53 6C */	b cLib_addCalc__FPfffff
/* 80BBA614  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80BBA618  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BBA61C  40 82 00 0C */	bne lbl_80BBA628
/* 80BBA620  38 00 00 02 */	li r0, 2
/* 80BBA624  98 1E 05 B0 */	stb r0, 0x5b0(r30)
lbl_80BBA628:
/* 80BBA628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBA62C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BBA630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA634  7C 08 03 A6 */	mtlr r0
/* 80BBA638  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBA63C  4E 80 00 20 */	blr 
