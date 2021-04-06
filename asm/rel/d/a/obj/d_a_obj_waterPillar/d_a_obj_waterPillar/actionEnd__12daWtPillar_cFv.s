lbl_80D2DD18:
/* 80D2DD18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D2DD1C  7C 08 02 A6 */	mflr r0
/* 80D2DD20  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D2DD24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D2DD28  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D2DD2C  7C 7E 1B 78 */	mr r30, r3
/* 80D2DD30  88 03 04 E2 */	lbz r0, 0x4e2(r3)
/* 80D2DD34  7C 03 07 74 */	extsb r3, r0
/* 80D2DD38  4B 2F F3 35 */	bl dComIfGp_getReverb__Fi
/* 80D2DD3C  7C 7F 1B 78 */	mr r31, r3
/* 80D2DD40  C0 3E 0B 14 */	lfs f1, 0xb14(r30)
/* 80D2DD44  C0 1E 0B 18 */	lfs f0, 0xb18(r30)
/* 80D2DD48  EC 21 00 2A */	fadds f1, f1, f0
/* 80D2DD4C  4B 63 43 61 */	bl __cvt_fp2unsigned
/* 80D2DD50  7C 66 1B 78 */	mr r6, r3
/* 80D2DD54  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080184@ha */
/* 80D2DD58  38 03 01 84 */	addi r0, r3, 0x0184 /* 0x00080184@l */
/* 80D2DD5C  90 01 00 08 */	stw r0, 8(r1)
/* 80D2DD60  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D2DD64  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D2DD68  80 63 00 00 */	lwz r3, 0(r3)
/* 80D2DD6C  38 81 00 08 */	addi r4, r1, 8
/* 80D2DD70  38 BE 0B 6C */	addi r5, r30, 0xb6c
/* 80D2DD74  7F E7 FB 78 */	mr r7, r31
/* 80D2DD78  3D 00 80 D3 */	lis r8, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2DD7C  C0 28 E7 70 */	lfs f1, lit_3645@l(r8)  /* 0x80D2E770@l */
/* 80D2DD80  FC 40 08 90 */	fmr f2, f1
/* 80D2DD84  3D 00 80 D3 */	lis r8, lit_4126@ha /* 0x80D2E824@ha */
/* 80D2DD88  C0 68 E8 24 */	lfs f3, lit_4126@l(r8)  /* 0x80D2E824@l */
/* 80D2DD8C  FC 80 18 90 */	fmr f4, f3
/* 80D2DD90  39 00 00 00 */	li r8, 0
/* 80D2DD94  4B 57 E7 79 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D2DD98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D2DD9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D2DDA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2DDA4  7C 08 03 A6 */	mtlr r0
/* 80D2DDA8  38 21 00 20 */	addi r1, r1, 0x20
/* 80D2DDAC  4E 80 00 20 */	blr 
