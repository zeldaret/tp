lbl_8072D87C:
/* 8072D87C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 8072D880  7C 08 02 A6 */	mflr r0
/* 8072D884  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 8072D888  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 8072D88C  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 8072D890  93 E1 00 CC */	stw r31, 0xcc(r1)
/* 8072D894  93 C1 00 C8 */	stw r30, 0xc8(r1)
/* 8072D898  7C 7E 1B 78 */	mr r30, r3
/* 8072D89C  FF E0 08 90 */	fmr f31, f1
/* 8072D8A0  3C 60 80 73 */	lis r3, lit_3911@ha
/* 8072D8A4  3B E3 5B 28 */	addi r31, r3, lit_3911@l
/* 8072D8A8  38 61 00 74 */	addi r3, r1, 0x74
/* 8072D8AC  4B 94 9F 04 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 8072D8B0  38 61 00 20 */	addi r3, r1, 0x20
/* 8072D8B4  4B 94 9C C8 */	b __ct__11dBgS_GndChkFv
/* 8072D8B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8072D8BC  D0 01 00 08 */	stfs f0, 8(r1)
/* 8072D8C0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8072D8C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8072D8C8  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 8072D8CC  38 61 00 14 */	addi r3, r1, 0x14
/* 8072D8D0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8072D8D4  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 8072D8D8  38 C1 00 08 */	addi r6, r1, 8
/* 8072D8DC  4B B4 34 E4 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8072D8E0  38 61 00 74 */	addi r3, r1, 0x74
/* 8072D8E4  38 81 00 14 */	addi r4, r1, 0x14
/* 8072D8E8  4B B3 A4 40 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8072D8EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072D8F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072D8F4  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8072D8F8  7F C3 F3 78 */	mr r3, r30
/* 8072D8FC  38 81 00 74 */	addi r4, r1, 0x74
/* 8072D900  4B 94 6B A0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8072D904  FF E0 08 90 */	fmr f31, f1
/* 8072D908  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 8072D90C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 8072D910  41 82 00 48 */	beq lbl_8072D958
/* 8072D914  38 61 00 20 */	addi r3, r1, 0x20
/* 8072D918  38 81 00 14 */	addi r4, r1, 0x14
/* 8072D91C  4B B3 A4 0C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8072D920  7F C3 F3 78 */	mr r3, r30
/* 8072D924  38 81 00 20 */	addi r4, r1, 0x20
/* 8072D928  4B 94 6B 78 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8072D92C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8072D930  4C 41 13 82 */	cror 2, 1, 2
/* 8072D934  40 82 00 24 */	bne lbl_8072D958
/* 8072D938  38 61 00 20 */	addi r3, r1, 0x20
/* 8072D93C  38 80 FF FF */	li r4, -1
/* 8072D940  4B 94 9C B0 */	b __dt__11dBgS_GndChkFv
/* 8072D944  38 61 00 74 */	addi r3, r1, 0x74
/* 8072D948  38 80 FF FF */	li r4, -1
/* 8072D94C  4B 94 9E FC */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8072D950  38 60 00 01 */	li r3, 1
/* 8072D954  48 00 00 20 */	b lbl_8072D974
lbl_8072D958:
/* 8072D958  38 61 00 20 */	addi r3, r1, 0x20
/* 8072D95C  38 80 FF FF */	li r4, -1
/* 8072D960  4B 94 9C 90 */	b __dt__11dBgS_GndChkFv
/* 8072D964  38 61 00 74 */	addi r3, r1, 0x74
/* 8072D968  38 80 FF FF */	li r4, -1
/* 8072D96C  4B 94 9E DC */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8072D970  38 60 00 00 */	li r3, 0
lbl_8072D974:
/* 8072D974  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 8072D978  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 8072D97C  83 E1 00 CC */	lwz r31, 0xcc(r1)
/* 8072D980  83 C1 00 C8 */	lwz r30, 0xc8(r1)
/* 8072D984  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8072D988  7C 08 03 A6 */	mtlr r0
/* 8072D98C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 8072D990  4E 80 00 20 */	blr 
