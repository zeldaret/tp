lbl_806C7E7C:
/* 806C7E7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806C7E80  7C 08 02 A6 */	mflr r0
/* 806C7E84  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C7E88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806C7E8C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806C7E90  7C 7E 1B 78 */	mr r30, r3
/* 806C7E94  7C 9F 23 78 */	mr r31, r4
/* 806C7E98  4B 95 0E 48 */	b fopAc_IsActor__FPv
/* 806C7E9C  2C 03 00 00 */	cmpwi r3, 0
/* 806C7EA0  41 82 00 88 */	beq lbl_806C7F28
/* 806C7EA4  28 1E 00 00 */	cmplwi r30, 0
/* 806C7EA8  41 82 00 0C */	beq lbl_806C7EB4
/* 806C7EAC  80 7E 00 04 */	lwz r3, 4(r30)
/* 806C7EB0  48 00 00 08 */	b lbl_806C7EB8
lbl_806C7EB4:
/* 806C7EB4  38 60 FF FF */	li r3, -1
lbl_806C7EB8:
/* 806C7EB8  4B 95 A2 80 */	b fpcM_IsCreating__FUi
/* 806C7EBC  2C 03 00 00 */	cmpwi r3, 0
/* 806C7EC0  40 82 00 68 */	bne lbl_806C7F28
/* 806C7EC4  A8 1E 00 08 */	lha r0, 8(r30)
/* 806C7EC8  2C 00 01 F2 */	cmpwi r0, 0x1f2
/* 806C7ECC  40 82 00 5C */	bne lbl_806C7F28
/* 806C7ED0  7F C3 F3 78 */	mr r3, r30
/* 806C7ED4  7F E4 FB 78 */	mr r4, r31
/* 806C7ED8  4B 95 29 08 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806C7EDC  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806C7EE0  38 63 D3 68 */	addi r3, r3, l_HIO@l
/* 806C7EE4  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 806C7EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C7EEC  40 80 00 3C */	bge lbl_806C7F28
/* 806C7EF0  A8 1E 0B 94 */	lha r0, 0xb94(r30)
/* 806C7EF4  2C 00 00 00 */	cmpwi r0, 0
/* 806C7EF8  40 82 00 30 */	bne lbl_806C7F28
/* 806C7EFC  3C 60 80 6D */	lis r3, lit_4044@ha
/* 806C7F00  C0 23 D0 58 */	lfs f1, lit_4044@l(r3)
/* 806C7F04  4B B9 FA 50 */	b cM_rndF__Ff
/* 806C7F08  3C 60 80 6D */	lis r3, lit_4044@ha
/* 806C7F0C  C0 03 D0 58 */	lfs f0, lit_4044@l(r3)
/* 806C7F10  EC 00 08 2A */	fadds f0, f0, f1
/* 806C7F14  FC 00 00 1E */	fctiwz f0, f0
/* 806C7F18  D8 01 00 08 */	stfd f0, 8(r1)
/* 806C7F1C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806C7F20  7F C3 F3 78 */	mr r3, r30
/* 806C7F24  48 00 2E A9 */	bl setSurpriseTime__8daE_GE_cFs
lbl_806C7F28:
/* 806C7F28  38 60 00 00 */	li r3, 0
/* 806C7F2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806C7F30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806C7F34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806C7F38  7C 08 03 A6 */	mtlr r0
/* 806C7F3C  38 21 00 20 */	addi r1, r1, 0x20
/* 806C7F40  4E 80 00 20 */	blr 
