lbl_80CB3958:
/* 80CB3958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB395C  7C 08 02 A6 */	mflr r0
/* 80CB3960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB3968  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB396C  7C 7E 1B 78 */	mr r30, r3
/* 80CB3970  3C 60 80 CB */	lis r3, lit_3662@ha /* 0x80CB3EEC@ha */
/* 80CB3974  3B E3 3E EC */	addi r31, r3, lit_3662@l /* 0x80CB3EEC@l */
/* 80CB3978  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80CB397C  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80CB3980  C0 1E 05 D0 */	lfs f0, 0x5d0(r30)
/* 80CB3984  EC 21 00 2A */	fadds f1, f1, f0
/* 80CB3988  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80CB398C  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 80CB3990  FC 80 10 90 */	fmr f4, f2
/* 80CB3994  4B 5B BF E9 */	bl cLib_addCalc__FPfffff
/* 80CB3998  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CB399C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80CB39A0  40 82 00 14 */	bne lbl_80CB39B4
/* 80CB39A4  38 00 00 00 */	li r0, 0
/* 80CB39A8  98 1E 05 C4 */	stb r0, 0x5c4(r30)
/* 80CB39AC  7F C3 F3 78 */	mr r3, r30
/* 80CB39B0  48 00 01 2D */	bl init_modeFireEnd__10daPoFire_cFv
lbl_80CB39B4:
/* 80CB39B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB39B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB39BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB39C0  7C 08 03 A6 */	mtlr r0
/* 80CB39C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB39C8  4E 80 00 20 */	blr 
