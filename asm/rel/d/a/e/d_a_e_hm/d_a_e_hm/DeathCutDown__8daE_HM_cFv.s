lbl_806E2EA0:
/* 806E2EA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E2EA4  7C 08 02 A6 */	mflr r0
/* 806E2EA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E2EAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E2EB0  93 C1 00 08 */	stw r30, 8(r1)
/* 806E2EB4  7C 7E 1B 78 */	mr r30, r3
/* 806E2EB8  3C 60 80 6E */	lis r3, lit_3791@ha /* 0x806E5920@ha */
/* 806E2EBC  3B E3 59 20 */	addi r31, r3, lit_3791@l /* 0x806E5920@l */
/* 806E2EC0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E2EC4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806E2EC8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806E2ECC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 806E2ED0  7C 64 1B 78 */	mr r4, r3
/* 806E2ED4  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 806E2ED8  4B C6 42 01 */	bl PSVECScale
/* 806E2EDC  38 00 00 01 */	li r0, 1
/* 806E2EE0  98 1E 06 0C */	stb r0, 0x60c(r30)
/* 806E2EE4  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 806E2EE8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E2EEC  C0 5F 00 D0 */	lfs f2, 0xd0(r31)
/* 806E2EF0  4B B8 D8 51 */	bl cLib_chaseF__FPfff
/* 806E2EF4  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 806E2EF8  38 80 00 01 */	li r4, 1
/* 806E2EFC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E2F00  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E2F04  40 82 00 18 */	bne lbl_806E2F1C
/* 806E2F08  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E2F0C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E2F10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E2F14  41 82 00 08 */	beq lbl_806E2F1C
/* 806E2F18  38 80 00 00 */	li r4, 0
lbl_806E2F1C:
/* 806E2F1C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E2F20  41 82 00 24 */	beq lbl_806E2F44
/* 806E2F24  7F C3 F3 78 */	mr r3, r30
/* 806E2F28  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806E2F2C  38 A0 00 0A */	li r5, 0xa
/* 806E2F30  38 C0 00 00 */	li r6, 0
/* 806E2F34  38 E0 00 23 */	li r7, 0x23
/* 806E2F38  4B 93 9B A1 */	bl fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806E2F3C  7F C3 F3 78 */	mr r3, r30
/* 806E2F40  4B 93 6D 3D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_806E2F44:
/* 806E2F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E2F48  83 C1 00 08 */	lwz r30, 8(r1)
/* 806E2F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E2F50  7C 08 03 A6 */	mtlr r0
/* 806E2F54  38 21 00 10 */	addi r1, r1, 0x10
/* 806E2F58  4E 80 00 20 */	blr 
