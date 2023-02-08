lbl_804E99A0:
/* 804E99A0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804E99A4  7C 08 02 A6 */	mflr r0
/* 804E99A8  90 01 00 94 */	stw r0, 0x94(r1)
/* 804E99AC  39 61 00 90 */	addi r11, r1, 0x90
/* 804E99B0  4B E7 88 21 */	bl _savegpr_26
/* 804E99B4  7C 7B 1B 78 */	mr r27, r3
/* 804E99B8  3C 60 80 4F */	lis r3, lit_3789@ha /* 0x804EE8AC@ha */
/* 804E99BC  3B E3 E8 AC */	addi r31, r3, lit_3789@l /* 0x804EE8AC@l */
/* 804E99C0  80 7B 05 DC */	lwz r3, 0x5dc(r27)
/* 804E99C4  80 63 00 04 */	lwz r3, 4(r3)
/* 804E99C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804E99CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804E99D0  38 63 00 60 */	addi r3, r3, 0x60
/* 804E99D4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804E99D8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804E99DC  80 84 00 00 */	lwz r4, 0(r4)
/* 804E99E0  4B E5 CA D1 */	bl PSMTXCopy
/* 804E99E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E99E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E99EC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804E99F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804E99F4  38 61 00 14 */	addi r3, r1, 0x14
/* 804E99F8  38 81 00 08 */	addi r4, r1, 8
/* 804E99FC  4B D8 74 F1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804E9A00  3B 41 00 20 */	addi r26, r1, 0x20
/* 804E9A04  7F 43 D3 78 */	mr r3, r26
/* 804E9A08  4B B8 DB 75 */	bl __ct__11dBgS_GndChkFv
/* 804E9A0C  3C 60 80 4F */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x804EEEA8@ha */
/* 804E9A10  38 63 EE A8 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l /* 0x804EEEA8@l */
/* 804E9A14  90 61 00 30 */	stw r3, 0x30(r1)
/* 804E9A18  3B C3 00 0C */	addi r30, r3, 0xc
/* 804E9A1C  93 C1 00 40 */	stw r30, 0x40(r1)
/* 804E9A20  3B A3 00 18 */	addi r29, r3, 0x18
/* 804E9A24  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 804E9A28  3B 83 00 24 */	addi r28, r3, 0x24
/* 804E9A2C  93 81 00 6C */	stw r28, 0x6c(r1)
/* 804E9A30  38 7A 00 3C */	addi r3, r26, 0x3c
/* 804E9A34  4B B8 F4 35 */	bl SetObj__16dBgS_PolyPassChkFv
/* 804E9A38  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 804E9A3C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 804E9A40  EC 01 00 2A */	fadds f0, f1, f0
/* 804E9A44  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804E9A48  7F 43 D3 78 */	mr r3, r26
/* 804E9A4C  38 81 00 08 */	addi r4, r1, 8
/* 804E9A50  4B D7 E2 D9 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 804E9A54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E9A58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E9A5C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804E9A60  7F 44 D3 78 */	mr r4, r26
/* 804E9A64  4B B8 AA 3D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 804E9A68  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804E9A6C  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 804E9A70  FC 00 08 18 */	frsp f0, f1
/* 804E9A74  EC 22 00 28 */	fsubs f1, f2, f0
/* 804E9A78  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 804E9A7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E9A80  40 81 00 30 */	ble lbl_804E9AB0
/* 804E9A84  3C 60 80 4F */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x804EEEA8@ha */
/* 804E9A88  38 03 EE A8 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x804EEEA8@l */
/* 804E9A8C  90 01 00 30 */	stw r0, 0x30(r1)
/* 804E9A90  93 C1 00 40 */	stw r30, 0x40(r1)
/* 804E9A94  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 804E9A98  93 81 00 6C */	stw r28, 0x6c(r1)
/* 804E9A9C  7F 43 D3 78 */	mr r3, r26
/* 804E9AA0  38 80 00 00 */	li r4, 0
/* 804E9AA4  4B B8 DB 4D */	bl __dt__11dBgS_GndChkFv
/* 804E9AA8  38 60 00 01 */	li r3, 1
/* 804E9AAC  48 00 00 2C */	b lbl_804E9AD8
lbl_804E9AB0:
/* 804E9AB0  3C 60 80 4F */	lis r3, __vt__14dBgS_ObjGndChk@ha /* 0x804EEEA8@ha */
/* 804E9AB4  38 03 EE A8 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l /* 0x804EEEA8@l */
/* 804E9AB8  90 01 00 30 */	stw r0, 0x30(r1)
/* 804E9ABC  93 C1 00 40 */	stw r30, 0x40(r1)
/* 804E9AC0  93 A1 00 5C */	stw r29, 0x5c(r1)
/* 804E9AC4  93 81 00 6C */	stw r28, 0x6c(r1)
/* 804E9AC8  7F 43 D3 78 */	mr r3, r26
/* 804E9ACC  38 80 00 00 */	li r4, 0
/* 804E9AD0  4B B8 DB 21 */	bl __dt__11dBgS_GndChkFv
/* 804E9AD4  38 60 00 00 */	li r3, 0
lbl_804E9AD8:
/* 804E9AD8  39 61 00 90 */	addi r11, r1, 0x90
/* 804E9ADC  4B E7 87 41 */	bl _restgpr_26
/* 804E9AE0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804E9AE4  7C 08 03 A6 */	mtlr r0
/* 804E9AE8  38 21 00 90 */	addi r1, r1, 0x90
/* 804E9AEC  4E 80 00 20 */	blr 
