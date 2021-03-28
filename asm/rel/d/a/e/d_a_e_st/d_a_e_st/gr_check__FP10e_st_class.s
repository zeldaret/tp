lbl_807A2970:
/* 807A2970  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 807A2974  7C 08 02 A6 */	mflr r0
/* 807A2978  90 01 00 84 */	stw r0, 0x84(r1)
/* 807A297C  39 61 00 80 */	addi r11, r1, 0x80
/* 807A2980  4B BB F8 54 */	b _savegpr_27
/* 807A2984  7C 7C 1B 78 */	mr r28, r3
/* 807A2988  3B 61 00 14 */	addi r27, r1, 0x14
/* 807A298C  7F 63 DB 78 */	mr r3, r27
/* 807A2990  4B 8D 4B EC */	b __ct__11dBgS_GndChkFv
/* 807A2994  3C 60 80 7A */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807A2998  38 63 6D 58 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 807A299C  90 61 00 24 */	stw r3, 0x24(r1)
/* 807A29A0  3B E3 00 0C */	addi r31, r3, 0xc
/* 807A29A4  93 E1 00 34 */	stw r31, 0x34(r1)
/* 807A29A8  3B C3 00 18 */	addi r30, r3, 0x18
/* 807A29AC  93 C1 00 50 */	stw r30, 0x50(r1)
/* 807A29B0  3B A3 00 24 */	addi r29, r3, 0x24
/* 807A29B4  93 A1 00 60 */	stw r29, 0x60(r1)
/* 807A29B8  38 7B 00 3C */	addi r3, r27, 0x3c
/* 807A29BC  4B 8D 64 AC */	b SetObj__16dBgS_PolyPassChkFv
/* 807A29C0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807A29C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 807A29C8  3C 60 80 7A */	lis r3, lit_3926@ha
/* 807A29CC  C0 23 68 58 */	lfs f1, lit_3926@l(r3)
/* 807A29D0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807A29D4  EC 01 00 2A */	fadds f0, f1, f0
/* 807A29D8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807A29DC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807A29E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A29E4  7F 63 DB 78 */	mr r3, r27
/* 807A29E8  38 81 00 08 */	addi r4, r1, 8
/* 807A29EC  4B AC 53 20 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 807A29F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807A29F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807A29F8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807A29FC  7F 64 DB 78 */	mr r4, r27
/* 807A2A00  4B 8D 1A A0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 807A2A04  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807A2A08  EC 20 08 28 */	fsubs f1, f0, f1
/* 807A2A0C  3C 60 80 7A */	lis r3, lit_3926@ha
/* 807A2A10  C0 03 68 58 */	lfs f0, lit_3926@l(r3)
/* 807A2A14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A2A18  40 81 00 30 */	ble lbl_807A2A48
/* 807A2A1C  3C 60 80 7A */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807A2A20  38 03 6D 58 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 807A2A24  90 01 00 24 */	stw r0, 0x24(r1)
/* 807A2A28  93 E1 00 34 */	stw r31, 0x34(r1)
/* 807A2A2C  93 C1 00 50 */	stw r30, 0x50(r1)
/* 807A2A30  93 A1 00 60 */	stw r29, 0x60(r1)
/* 807A2A34  7F 63 DB 78 */	mr r3, r27
/* 807A2A38  38 80 00 00 */	li r4, 0
/* 807A2A3C  4B 8D 4B B4 */	b __dt__11dBgS_GndChkFv
/* 807A2A40  38 60 00 01 */	li r3, 1
/* 807A2A44  48 00 00 2C */	b lbl_807A2A70
lbl_807A2A48:
/* 807A2A48  3C 60 80 7A */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 807A2A4C  38 03 6D 58 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 807A2A50  90 01 00 24 */	stw r0, 0x24(r1)
/* 807A2A54  93 E1 00 34 */	stw r31, 0x34(r1)
/* 807A2A58  93 C1 00 50 */	stw r30, 0x50(r1)
/* 807A2A5C  93 A1 00 60 */	stw r29, 0x60(r1)
/* 807A2A60  7F 63 DB 78 */	mr r3, r27
/* 807A2A64  38 80 00 00 */	li r4, 0
/* 807A2A68  4B 8D 4B 88 */	b __dt__11dBgS_GndChkFv
/* 807A2A6C  38 60 00 00 */	li r3, 0
lbl_807A2A70:
/* 807A2A70  39 61 00 80 */	addi r11, r1, 0x80
/* 807A2A74  4B BB F7 AC */	b _restgpr_27
/* 807A2A78  80 01 00 84 */	lwz r0, 0x84(r1)
/* 807A2A7C  7C 08 03 A6 */	mtlr r0
/* 807A2A80  38 21 00 80 */	addi r1, r1, 0x80
/* 807A2A84  4E 80 00 20 */	blr 
