lbl_80668754:
/* 80668754  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80668758  7C 08 02 A6 */	mflr r0
/* 8066875C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80668760  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80668764  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80668768  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 8066876C  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 80668770  7C 7E 1B 78 */	mr r30, r3
/* 80668774  38 61 00 68 */	addi r3, r1, 0x68
/* 80668778  4B A0 EE 04 */	b __ct__11dBgS_GndChkFv
/* 8066877C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80668780  D0 01 00 08 */	stfs f0, 8(r1)
/* 80668784  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80668788  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8066878C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80668790  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80668794  3C 60 80 67 */	lis r3, lit_3922@ha
/* 80668798  C0 03 EE 14 */	lfs f0, lit_3922@l(r3)
/* 8066879C  EC 01 00 2A */	fadds f0, f1, f0
/* 806687A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806687A4  38 61 00 68 */	addi r3, r1, 0x68
/* 806687A8  38 81 00 08 */	addi r4, r1, 8
/* 806687AC  4B BF F5 60 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 806687B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806687B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806687B8  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 806687BC  7F E3 FB 78 */	mr r3, r31
/* 806687C0  38 81 00 68 */	addi r4, r1, 0x68
/* 806687C4  4B A0 BC DC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806687C8  FF E0 08 90 */	fmr f31, f1
/* 806687CC  38 61 00 14 */	addi r3, r1, 0x14
/* 806687D0  4B A0 EF E0 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 806687D4  38 61 00 14 */	addi r3, r1, 0x14
/* 806687D8  38 81 00 08 */	addi r4, r1, 8
/* 806687DC  4B BF F5 30 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 806687E0  7F E3 FB 78 */	mr r3, r31
/* 806687E4  38 81 00 14 */	addi r4, r1, 0x14
/* 806687E8  4B A0 BC B8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806687EC  D0 3E 06 5C */	stfs f1, 0x65c(r30)
/* 806687F0  C0 1E 06 5C */	lfs f0, 0x65c(r30)
/* 806687F4  EC 40 F8 28 */	fsubs f2, f0, f31
/* 806687F8  3C 60 80 67 */	lis r3, lit_3994@ha
/* 806687FC  C0 23 EE 20 */	lfs f1, lit_3994@l(r3)
/* 80668800  C0 1E 06 7C */	lfs f0, 0x67c(r30)
/* 80668804  EC 01 00 32 */	fmuls f0, f1, f0
/* 80668808  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8066880C  40 81 00 24 */	ble lbl_80668830
/* 80668810  38 61 00 14 */	addi r3, r1, 0x14
/* 80668814  38 80 FF FF */	li r4, -1
/* 80668818  4B A0 F0 30 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8066881C  38 61 00 68 */	addi r3, r1, 0x68
/* 80668820  38 80 FF FF */	li r4, -1
/* 80668824  4B A0 ED CC */	b __dt__11dBgS_GndChkFv
/* 80668828  38 60 00 01 */	li r3, 1
/* 8066882C  48 00 00 20 */	b lbl_8066884C
lbl_80668830:
/* 80668830  38 61 00 14 */	addi r3, r1, 0x14
/* 80668834  38 80 FF FF */	li r4, -1
/* 80668838  4B A0 F0 10 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8066883C  38 61 00 68 */	addi r3, r1, 0x68
/* 80668840  38 80 FF FF */	li r4, -1
/* 80668844  4B A0 ED AC */	b __dt__11dBgS_GndChkFv
/* 80668848  38 60 00 00 */	li r3, 0
lbl_8066884C:
/* 8066884C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80668850  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80668854  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 80668858  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 8066885C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80668860  7C 08 03 A6 */	mtlr r0
/* 80668864  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80668868  4E 80 00 20 */	blr 
