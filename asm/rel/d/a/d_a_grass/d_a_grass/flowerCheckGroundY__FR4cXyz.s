lbl_8052299C:
/* 8052299C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805229A0  7C 08 02 A6 */	mflr r0
/* 805229A4  90 01 00 84 */	stw r0, 0x84(r1)
/* 805229A8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 805229AC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 805229B0  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 805229B4  7C 7F 1B 78 */	mr r31, r3
/* 805229B8  38 61 00 08 */	addi r3, r1, 8
/* 805229BC  4B B5 4B C0 */	b __ct__11dBgS_GndChkFv
/* 805229C0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805229C4  3C 60 80 52 */	lis r3, lit_5022@ha
/* 805229C8  C0 03 31 30 */	lfs f0, lit_5022@l(r3)
/* 805229CC  EC 01 00 2A */	fadds f0, f1, f0
/* 805229D0  D0 1F 00 04 */	stfs f0, 4(r31)
/* 805229D4  38 61 00 08 */	addi r3, r1, 8
/* 805229D8  7F E4 FB 78 */	mr r4, r31
/* 805229DC  4B D4 53 4C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805229E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805229E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805229E8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 805229EC  38 81 00 08 */	addi r4, r1, 8
/* 805229F0  4B B5 1A B0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805229F4  FF E0 08 90 */	fmr f31, f1
/* 805229F8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805229FC  3C 60 80 52 */	lis r3, lit_5022@ha
/* 80522A00  C0 03 31 30 */	lfs f0, lit_5022@l(r3)
/* 80522A04  EC 01 00 28 */	fsubs f0, f1, f0
/* 80522A08  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80522A0C  3C 60 80 52 */	lis r3, lit_6182@ha
/* 80522A10  C0 03 31 A4 */	lfs f0, lit_6182@l(r3)
/* 80522A14  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80522A18  4C 40 13 82 */	cror 2, 0, 2
/* 80522A1C  40 82 00 1C */	bne lbl_80522A38
/* 80522A20  C3 FF 00 04 */	lfs f31, 4(r31)
/* 80522A24  38 61 00 08 */	addi r3, r1, 8
/* 80522A28  38 80 FF FF */	li r4, -1
/* 80522A2C  4B B5 4B C4 */	b __dt__11dBgS_GndChkFv
/* 80522A30  FC 20 F8 90 */	fmr f1, f31
/* 80522A34  48 00 00 14 */	b lbl_80522A48
lbl_80522A38:
/* 80522A38  38 61 00 08 */	addi r3, r1, 8
/* 80522A3C  38 80 FF FF */	li r4, -1
/* 80522A40  4B B5 4B B0 */	b __dt__11dBgS_GndChkFv
/* 80522A44  FC 20 F8 90 */	fmr f1, f31
lbl_80522A48:
/* 80522A48  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80522A4C  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80522A50  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80522A54  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80522A58  7C 08 03 A6 */	mtlr r0
/* 80522A5C  38 21 00 80 */	addi r1, r1, 0x80
/* 80522A60  4E 80 00 20 */	blr 
