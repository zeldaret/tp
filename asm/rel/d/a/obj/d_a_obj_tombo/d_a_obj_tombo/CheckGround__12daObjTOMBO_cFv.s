lbl_80D199F4:
/* 80D199F4  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80D199F8  7C 08 02 A6 */	mflr r0
/* 80D199FC  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D19A00  39 61 00 80 */	addi r11, r1, 0x80
/* 80D19A04  4B 64 87 D8 */	b _savegpr_29
/* 80D19A08  7C 7E 1B 78 */	mr r30, r3
/* 80D19A0C  3C 60 80 D2 */	lis r3, lit_3775@ha
/* 80D19A10  3B E3 B6 D8 */	addi r31, r3, lit_3775@l
/* 80D19A14  3B A1 00 14 */	addi r29, r1, 0x14
/* 80D19A18  7F A3 EB 78 */	mr r3, r29
/* 80D19A1C  4B 35 DB 60 */	b __ct__11dBgS_GndChkFv
/* 80D19A20  3C 60 80 D2 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80D19A24  38 63 B8 9C */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80D19A28  90 61 00 24 */	stw r3, 0x24(r1)
/* 80D19A2C  38 03 00 0C */	addi r0, r3, 0xc
/* 80D19A30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D19A34  38 03 00 18 */	addi r0, r3, 0x18
/* 80D19A38  90 01 00 50 */	stw r0, 0x50(r1)
/* 80D19A3C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D19A40  90 01 00 60 */	stw r0, 0x60(r1)
/* 80D19A44  38 7D 00 3C */	addi r3, r29, 0x3c
/* 80D19A48  4B 35 F4 20 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D19A4C  3C 60 80 3B */	lis r3, __vt__18dBgS_ObjGndChk_All@ha
/* 80D19A50  38 63 B6 E8 */	addi r3, r3, __vt__18dBgS_ObjGndChk_All@l
/* 80D19A54  90 61 00 24 */	stw r3, 0x24(r1)
/* 80D19A58  38 03 00 0C */	addi r0, r3, 0xc
/* 80D19A5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D19A60  38 03 00 18 */	addi r0, r3, 0x18
/* 80D19A64  90 01 00 50 */	stw r0, 0x50(r1)
/* 80D19A68  38 03 00 24 */	addi r0, r3, 0x24
/* 80D19A6C  90 01 00 60 */	stw r0, 0x60(r1)
/* 80D19A70  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D19A74  60 00 00 03 */	ori r0, r0, 3
/* 80D19A78  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D19A7C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80D19A80  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80D19A84  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D19A88  EC 21 00 2A */	fadds f1, f1, f0
/* 80D19A8C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80D19A90  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D19A94  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D19A98  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80D19A9C  7F A3 EB 78 */	mr r3, r29
/* 80D19AA0  38 81 00 08 */	addi r4, r1, 8
/* 80D19AA4  4B 54 E2 84 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80D19AA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D19AAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D19AB0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80D19AB4  7F A4 EB 78 */	mr r4, r29
/* 80D19AB8  4B 35 A9 E8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80D19ABC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D19AC0  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80D19AC4  FC 20 08 18 */	frsp f1, f1
/* 80D19AC8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D19ACC  41 82 00 58 */	beq lbl_80D19B24
/* 80D19AD0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D19AD4  EC 20 08 28 */	fsubs f1, f0, f1
/* 80D19AD8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80D19ADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D19AE0  40 80 00 10 */	bge lbl_80D19AF0
/* 80D19AE4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80D19AE8  D0 1E 07 20 */	stfs f0, 0x720(r30)
/* 80D19AEC  48 00 00 18 */	b lbl_80D19B04
lbl_80D19AF0:
/* 80D19AF0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80D19AF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D19AF8  40 81 00 0C */	ble lbl_80D19B04
/* 80D19AFC  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80D19B00  D0 1E 07 20 */	stfs f0, 0x720(r30)
lbl_80D19B04:
/* 80D19B04  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80D19B08  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D19B0C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D19B10  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80D19B14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D19B18  40 80 00 0C */	bge lbl_80D19B24
/* 80D19B1C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80D19B20  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80D19B24:
/* 80D19B24  38 61 00 14 */	addi r3, r1, 0x14
/* 80D19B28  38 80 FF FF */	li r4, -1
/* 80D19B2C  4B 35 DD BC */	b __dt__18dBgS_ObjGndChk_AllFv
/* 80D19B30  39 61 00 80 */	addi r11, r1, 0x80
/* 80D19B34  4B 64 86 F4 */	b _restgpr_29
/* 80D19B38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D19B3C  7C 08 03 A6 */	mtlr r0
/* 80D19B40  38 21 00 80 */	addi r1, r1, 0x80
/* 80D19B44  4E 80 00 20 */	blr 
