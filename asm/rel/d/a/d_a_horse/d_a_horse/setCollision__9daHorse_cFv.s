lbl_8083E4D8:
/* 8083E4D8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8083E4DC  7C 08 02 A6 */	mflr r0
/* 8083E4E0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8083E4E4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8083E4E8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8083E4EC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8083E4F0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8083E4F4  39 61 00 30 */	addi r11, r1, 0x30
/* 8083E4F8  4B B2 3C E0 */	b _savegpr_28
/* 8083E4FC  7C 7F 1B 78 */	mr r31, r3
/* 8083E500  3C 60 80 84 */	lis r3, lit_3894@ha
/* 8083E504  3B A3 54 AC */	addi r29, r3, lit_3894@l
/* 8083E508  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 8083E50C  4B 84 53 24 */	b Move__10dCcD_GSttsFv
/* 8083E510  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8083E514  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8083E518  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8083E51C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8083E520  7F E3 04 2E */	lfsx f31, r3, r0
/* 8083E524  7C 63 02 14 */	add r3, r3, r0
/* 8083E528  C3 C3 00 04 */	lfs f30, 4(r3)
/* 8083E52C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8083E530  C0 5D 02 84 */	lfs f2, 0x284(r29)
/* 8083E534  EC 02 07 B2 */	fmuls f0, f2, f30
/* 8083E538  EC 81 00 2A */	fadds f4, f1, f0
/* 8083E53C  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8083E540  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8083E544  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8083E548  EC 01 00 2A */	fadds f0, f1, f0
/* 8083E54C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8083E550  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8083E554  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8083E558  38 7F 0E 18 */	addi r3, r31, 0xe18
/* 8083E55C  38 81 00 08 */	addi r4, r1, 8
/* 8083E560  4B A3 0C 7C */	b SetC__8cM3dGCylFRC4cXyz
/* 8083E564  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8083E568  C0 5D 02 88 */	lfs f2, 0x288(r29)
/* 8083E56C  EC 02 07 B2 */	fmuls f0, f2, f30
/* 8083E570  EC 81 00 2A */	fadds f4, f1, f0
/* 8083E574  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 8083E578  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8083E57C  EC 02 07 F2 */	fmuls f0, f2, f31
/* 8083E580  EC 01 00 2A */	fadds f0, f1, f0
/* 8083E584  D0 01 00 08 */	stfs f0, 8(r1)
/* 8083E588  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8083E58C  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 8083E590  C0 1D 02 8C */	lfs f0, 0x28c(r29)
/* 8083E594  EF FF 00 32 */	fmuls f31, f31, f0
/* 8083E598  EF DE 00 32 */	fmuls f30, f30, f0
/* 8083E59C  3B 80 00 00 */	li r28, 0
/* 8083E5A0  3B C0 00 00 */	li r30, 0
lbl_8083E5A4:
/* 8083E5A4  38 7E 0A 64 */	addi r3, r30, 0xa64
/* 8083E5A8  7C 7F 1A 14 */	add r3, r31, r3
/* 8083E5AC  38 81 00 08 */	addi r4, r1, 8
/* 8083E5B0  4B A3 0C 2C */	b SetC__8cM3dGCylFRC4cXyz
/* 8083E5B4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8083E5B8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8083E5BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8083E5C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8083E5C4  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8083E5C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8083E5CC  3B 9C 00 01 */	addi r28, r28, 1
/* 8083E5D0  2C 1C 00 03 */	cmpwi r28, 3
/* 8083E5D4  3B DE 01 3C */	addi r30, r30, 0x13c
/* 8083E5D8  41 80 FF CC */	blt lbl_8083E5A4
/* 8083E5DC  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8083E5E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083E5E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083E5E8  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8083E5EC  38 9D 02 78 */	addi r4, r29, 0x278
/* 8083E5F0  38 A1 00 08 */	addi r5, r1, 8
/* 8083E5F4  4B B0 87 78 */	b PSMTXMultVec
/* 8083E5F8  38 7F 10 90 */	addi r3, r31, 0x1090
/* 8083E5FC  38 81 00 08 */	addi r4, r1, 8
/* 8083E600  4B A3 10 48 */	b SetC__8cM3dGSphFRC4cXyz
/* 8083E604  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083E608  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083E60C  3B A3 23 3C */	addi r29, r3, 0x233c
/* 8083E610  7F A3 EB 78 */	mr r3, r29
/* 8083E614  38 9F 09 40 */	addi r4, r31, 0x940
/* 8083E618  4B A2 65 90 */	b Set__4cCcSFP8cCcD_Obj
/* 8083E61C  7F A3 EB 78 */	mr r3, r29
/* 8083E620  38 9F 0A 7C */	addi r4, r31, 0xa7c
/* 8083E624  4B A2 65 84 */	b Set__4cCcSFP8cCcD_Obj
/* 8083E628  7F A3 EB 78 */	mr r3, r29
/* 8083E62C  38 9F 0B B8 */	addi r4, r31, 0xbb8
/* 8083E630  4B A2 65 78 */	b Set__4cCcSFP8cCcD_Obj
/* 8083E634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8083E638  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8083E63C  3B C3 4B 88 */	addi r30, r3, 0x4b88
/* 8083E640  7F C3 F3 78 */	mr r3, r30
/* 8083E644  38 9F 09 40 */	addi r4, r31, 0x940
/* 8083E648  38 A0 00 01 */	li r5, 1
/* 8083E64C  4B 84 77 4C */	b Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 8083E650  7F C3 F3 78 */	mr r3, r30
/* 8083E654  38 9F 0B B8 */	addi r4, r31, 0xbb8
/* 8083E658  38 A0 00 01 */	li r5, 1
/* 8083E65C  4B 84 77 3C */	b Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 8083E660  7F A3 EB 78 */	mr r3, r29
/* 8083E664  38 9F 0F 6C */	addi r4, r31, 0xf6c
/* 8083E668  4B A2 65 40 */	b Set__4cCcSFP8cCcD_Obj
/* 8083E66C  7F A3 EB 78 */	mr r3, r29
/* 8083E670  38 9F 0C F4 */	addi r4, r31, 0xcf4
/* 8083E674  4B A2 65 34 */	b Set__4cCcSFP8cCcD_Obj
/* 8083E678  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8083E67C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8083E680  38 7F 0E 30 */	addi r3, r31, 0xe30
/* 8083E684  38 81 00 08 */	addi r4, r1, 8
/* 8083E688  4B 84 62 CC */	b MoveCAt__8dCcD_CylFR4cXyz
/* 8083E68C  80 1F 17 48 */	lwz r0, 0x1748(r31)
/* 8083E690  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8083E694  41 82 00 24 */	beq lbl_8083E6B8
/* 8083E698  7F A3 EB 78 */	mr r3, r29
/* 8083E69C  38 9F 0E 30 */	addi r4, r31, 0xe30
/* 8083E6A0  4B A2 65 08 */	b Set__4cCcSFP8cCcD_Obj
/* 8083E6A4  7F C3 F3 78 */	mr r3, r30
/* 8083E6A8  38 9F 0E 30 */	addi r4, r31, 0xe30
/* 8083E6AC  38 A0 00 01 */	li r5, 1
/* 8083E6B0  4B 84 76 E8 */	b Set__12dCcMassS_MngFP8cCcD_ObjUc
/* 8083E6B4  48 00 00 0C */	b lbl_8083E6C0
lbl_8083E6B8:
/* 8083E6B8  38 7F 0E 30 */	addi r3, r31, 0xe30
/* 8083E6BC  4B 84 5C 5C */	b ResetAtHit__12dCcD_GObjInfFv
lbl_8083E6C0:
/* 8083E6C0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8083E6C4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8083E6C8  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 8083E6CC  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 8083E6D0  39 61 00 30 */	addi r11, r1, 0x30
/* 8083E6D4  4B B2 3B 50 */	b _restgpr_28
/* 8083E6D8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8083E6DC  7C 08 03 A6 */	mtlr r0
/* 8083E6E0  38 21 00 50 */	addi r1, r1, 0x50
/* 8083E6E4  4E 80 00 20 */	blr 
