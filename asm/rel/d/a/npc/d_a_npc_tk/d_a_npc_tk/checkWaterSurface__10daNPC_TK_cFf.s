lbl_80B039A8:
/* 80B039A8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80B039AC  7C 08 02 A6 */	mflr r0
/* 80B039B0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B039B4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80B039B8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80B039BC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80B039C0  7C 7F 1B 78 */	mr r31, r3
/* 80B039C4  FF E0 08 90 */	fmr f31, f1
/* 80B039C8  38 61 00 14 */	addi r3, r1, 0x14
/* 80B039CC  4B 57 3D E4 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 80B039D0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B039D4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B039D8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80B039DC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80B039E0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B039E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B039E8  3C 60 80 B1 */	lis r3, lit_4459@ha
/* 80B039EC  C0 03 C2 44 */	lfs f0, lit_4459@l(r3)
/* 80B039F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B039F4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B039F8  38 61 00 14 */	addi r3, r1, 0x14
/* 80B039FC  38 81 00 08 */	addi r4, r1, 8
/* 80B03A00  4B 76 43 0C */	b SetPos__11cBgS_GndChkFPC3Vec
/* 80B03A04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B03A08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B03A0C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B03A10  38 81 00 14 */	addi r4, r1, 0x14
/* 80B03A14  4B 57 0A 8C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80B03A18  D0 3F 06 84 */	stfs f1, 0x684(r31)
/* 80B03A1C  C0 3F 06 84 */	lfs f1, 0x684(r31)
/* 80B03A20  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B03A24  EC 00 F8 2A */	fadds f0, f0, f31
/* 80B03A28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B03A2C  40 81 00 18 */	ble lbl_80B03A44
/* 80B03A30  38 61 00 14 */	addi r3, r1, 0x14
/* 80B03A34  38 80 FF FF */	li r4, -1
/* 80B03A38  4B 57 3E 10 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80B03A3C  38 60 00 01 */	li r3, 1
/* 80B03A40  48 00 00 14 */	b lbl_80B03A54
lbl_80B03A44:
/* 80B03A44  38 61 00 14 */	addi r3, r1, 0x14
/* 80B03A48  38 80 FF FF */	li r4, -1
/* 80B03A4C  4B 57 3D FC */	b __dt__18dBgS_ObjGndChk_SplFv
/* 80B03A50  38 60 00 00 */	li r3, 0
lbl_80B03A54:
/* 80B03A54  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80B03A58  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80B03A5C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80B03A60  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B03A64  7C 08 03 A6 */	mtlr r0
/* 80B03A68  38 21 00 80 */	addi r1, r1, 0x80
/* 80B03A6C  4E 80 00 20 */	blr 
