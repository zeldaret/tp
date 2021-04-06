lbl_80167EF4:
/* 80167EF4  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80167EF8  7C 08 02 A6 */	mflr r0
/* 80167EFC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80167F00  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80167F04  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80167F08  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 80167F0C  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 80167F10  7C 9E 23 78 */	mr r30, r4
/* 80167F14  C3 E2 9C AC */	lfs f31, lit_5659(r2)
/* 80167F18  C0 04 00 00 */	lfs f0, 0(r4)
/* 80167F1C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80167F20  C0 04 00 04 */	lfs f0, 4(r4)
/* 80167F24  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80167F28  C0 04 00 08 */	lfs f0, 8(r4)
/* 80167F2C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80167F30  38 61 00 68 */	addi r3, r1, 0x68
/* 80167F34  4B F1 10 C1 */	bl __ct__12dBgS_RoofChkFv
/* 80167F38  38 61 00 8C */	addi r3, r1, 0x8c
/* 80167F3C  4B F1 0F B1 */	bl SetUnderwaterRoof__16dBgS_PolyPassChkFv
/* 80167F40  C0 01 00 08 */	lfs f0, 8(r1)
/* 80167F44  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80167F48  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80167F4C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80167F50  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80167F54  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80167F58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80167F5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80167F60  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80167F64  7F E3 FB 78 */	mr r3, r31
/* 80167F68  38 81 00 68 */	addi r4, r1, 0x68
/* 80167F6C  4B F0 D5 31 */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 80167F70  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80167F74  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80167F78  40 80 00 08 */	bge lbl_80167F80
/* 80167F7C  D0 21 00 0C */	stfs f1, 0xc(r1)
lbl_80167F80:
/* 80167F80  38 61 00 14 */	addi r3, r1, 0x14
/* 80167F84  4B F0 FA 7D */	bl __ct__18dBgS_CamGndChk_WtrFv
/* 80167F88  38 61 00 14 */	addi r3, r1, 0x14
/* 80167F8C  38 81 00 08 */	addi r4, r1, 8
/* 80167F90  48 0F FD 99 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80167F94  7F E3 FB 78 */	mr r3, r31
/* 80167F98  38 81 00 14 */	addi r4, r1, 0x14
/* 80167F9C  4B F0 C5 05 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80167FA0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80167FA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80167FA8  40 81 00 08 */	ble lbl_80167FB0
/* 80167FAC  FF E0 08 90 */	fmr f31, f1
lbl_80167FB0:
/* 80167FB0  38 61 00 14 */	addi r3, r1, 0x14
/* 80167FB4  38 80 FF FF */	li r4, -1
/* 80167FB8  4B F0 FA E1 */	bl __dt__18dBgS_CamGndChk_WtrFv
/* 80167FBC  38 61 00 68 */	addi r3, r1, 0x68
/* 80167FC0  38 80 FF FF */	li r4, -1
/* 80167FC4  4B F1 10 CD */	bl __dt__12dBgS_RoofChkFv
/* 80167FC8  FC 20 F8 90 */	fmr f1, f31
/* 80167FCC  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80167FD0  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80167FD4  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 80167FD8  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 80167FDC  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80167FE0  7C 08 03 A6 */	mtlr r0
/* 80167FE4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80167FE8  4E 80 00 20 */	blr 
