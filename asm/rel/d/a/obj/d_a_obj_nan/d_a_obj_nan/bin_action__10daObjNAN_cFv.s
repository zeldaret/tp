lbl_80CA1A20:
/* 80CA1A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CA1A24  7C 08 02 A6 */	mflr r0
/* 80CA1A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CA1A2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CA1A30  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CA1A34  7C 7E 1B 78 */	mr r30, r3
/* 80CA1A38  3C 80 80 CA */	lis r4, lit_3774@ha
/* 80CA1A3C  3B E4 31 BC */	addi r31, r4, lit_3774@l
/* 80CA1A40  80 03 07 D0 */	lwz r0, 0x7d0(r3)
/* 80CA1A44  2C 00 00 00 */	cmpwi r0, 0
/* 80CA1A48  40 82 00 44 */	bne lbl_80CA1A8C
/* 80CA1A4C  38 00 00 01 */	li r0, 1
/* 80CA1A50  98 1E 05 6D */	stb r0, 0x56d(r30)
/* 80CA1A54  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80CA1A58  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80CA1A5C  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 80CA1A60  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80CA1A64  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80CA1A68  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80CA1A6C  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80CA1A70  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80CA1A74  38 00 00 0A */	li r0, 0xa
/* 80CA1A78  B0 1E 07 E0 */	sth r0, 0x7e0(r30)
/* 80CA1A7C  80 7E 07 D0 */	lwz r3, 0x7d0(r30)
/* 80CA1A80  38 03 00 01 */	addi r0, r3, 1
/* 80CA1A84  90 1E 07 D0 */	stw r0, 0x7d0(r30)
/* 80CA1A88  48 00 00 B0 */	b lbl_80CA1B38
lbl_80CA1A8C:
/* 80CA1A8C  2C 00 FF FF */	cmpwi r0, -1
/* 80CA1A90  40 82 00 14 */	bne lbl_80CA1AA4
/* 80CA1A94  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CA1A98  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80CA1A9C  D0 1E 05 34 */	stfs f0, 0x534(r30)
/* 80CA1AA0  48 00 00 98 */	b lbl_80CA1B38
lbl_80CA1AA4:
/* 80CA1AA4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80CA1AA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CA1AAC  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 80CA1AB0  28 00 00 00 */	cmplwi r0, 0
/* 80CA1AB4  41 82 00 08 */	beq lbl_80CA1ABC
/* 80CA1AB8  48 00 00 99 */	bl nan_setParticle__10daObjNAN_cFv
lbl_80CA1ABC:
/* 80CA1ABC  7F C3 F3 78 */	mr r3, r30
/* 80CA1AC0  38 80 00 00 */	li r4, 0
/* 80CA1AC4  4B 37 8C 08 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80CA1AC8  A8 1E 07 E0 */	lha r0, 0x7e0(r30)
/* 80CA1ACC  2C 00 00 00 */	cmpwi r0, 0
/* 80CA1AD0  41 82 00 18 */	beq lbl_80CA1AE8
/* 80CA1AD4  38 61 00 08 */	addi r3, r1, 8
/* 80CA1AD8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80CA1ADC  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 80CA1AE0  4B 5C EC 60 */	b cLib_chaseF__FPfff
/* 80CA1AE4  48 00 00 44 */	b lbl_80CA1B28
lbl_80CA1AE8:
/* 80CA1AE8  38 61 00 08 */	addi r3, r1, 8
/* 80CA1AEC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80CA1AF0  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80CA1AF4  C0 7F 00 9C */	lfs f3, 0x9c(r31)
/* 80CA1AF8  4B 5C DF 44 */	b cLib_addCalc2__FPffff
/* 80CA1AFC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CA1B00  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80CA1B04  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80CA1B08  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 80CA1B0C  C0 21 00 08 */	lfs f1, 8(r1)
/* 80CA1B10  C8 1F 00 A0 */	lfd f0, 0xa0(r31)
/* 80CA1B14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CA1B18  40 80 00 10 */	bge lbl_80CA1B28
/* 80CA1B1C  7F C3 F3 78 */	mr r3, r30
/* 80CA1B20  4B 37 81 5C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80CA1B24  48 00 00 14 */	b lbl_80CA1B38
lbl_80CA1B28:
/* 80CA1B28  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CA1B2C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 80CA1B30  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 80CA1B34  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
lbl_80CA1B38:
/* 80CA1B38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CA1B3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CA1B40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CA1B44  7C 08 03 A6 */	mtlr r0
/* 80CA1B48  38 21 00 20 */	addi r1, r1, 0x20
/* 80CA1B4C  4E 80 00 20 */	blr 
