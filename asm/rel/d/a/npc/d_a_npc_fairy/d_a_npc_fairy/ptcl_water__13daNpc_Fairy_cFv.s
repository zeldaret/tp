lbl_809B384C:
/* 809B384C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B3850  7C 08 02 A6 */	mflr r0
/* 809B3854  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B3858  7C 6C 1B 78 */	mr r12, r3
/* 809B385C  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040002@ha */
/* 809B3860  38 E3 00 02 */	addi r7, r3, 0x0002 /* 0x00040002@l */
/* 809B3864  3C 60 80 9C */	lis r3, lit_4988@ha /* 0x809B940C@ha */
/* 809B3868  C0 03 94 0C */	lfs f0, lit_4988@l(r3)  /* 0x809B940C@l */
/* 809B386C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809B3870  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809B3874  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809B3878  A8 6C 0F 94 */	lha r3, 0xf94(r12)
/* 809B387C  38 03 FF FF */	addi r0, r3, -1
/* 809B3880  B0 0C 0F 94 */	sth r0, 0xf94(r12)
/* 809B3884  A8 0C 0F 94 */	lha r0, 0xf94(r12)
/* 809B3888  2C 00 00 00 */	cmpwi r0, 0
/* 809B388C  41 81 00 10 */	bgt lbl_809B389C
/* 809B3890  38 00 00 0A */	li r0, 0xa
/* 809B3894  B0 0C 0F 94 */	sth r0, 0xf94(r12)
/* 809B3898  48 00 00 08 */	b lbl_809B38A0
lbl_809B389C:
/* 809B389C  64 E7 00 02 */	oris r7, r7, 2
lbl_809B38A0:
/* 809B38A0  88 0C 04 E2 */	lbz r0, 0x4e2(r12)
/* 809B38A4  7C 00 07 74 */	extsb r0, r0
/* 809B38A8  90 01 00 08 */	stw r0, 8(r1)
/* 809B38AC  38 6C 0F 98 */	addi r3, r12, 0xf98
/* 809B38B0  38 8C 01 0C */	addi r4, r12, 0x10c
/* 809B38B4  38 AC 04 D0 */	addi r5, r12, 0x4d0
/* 809B38B8  38 C0 00 01 */	li r6, 1
/* 809B38BC  39 00 00 00 */	li r8, 0
/* 809B38C0  39 20 00 00 */	li r9, 0
/* 809B38C4  39 41 00 10 */	addi r10, r1, 0x10
/* 809B38C8  3D 60 80 9C */	lis r11, lit_3916@ha /* 0x809B9378@ha */
/* 809B38CC  C0 2B 93 78 */	lfs f1, lit_3916@l(r11)  /* 0x809B9378@l */
/* 809B38D0  C0 4C 05 2C */	lfs f2, 0x52c(r12)
/* 809B38D4  4B 69 D7 35 */	bl setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 809B38D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B38DC  7C 08 03 A6 */	mtlr r0
/* 809B38E0  38 21 00 20 */	addi r1, r1, 0x20
/* 809B38E4  4E 80 00 20 */	blr 
