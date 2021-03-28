lbl_809A48A8:
/* 809A48A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809A48AC  7C 08 02 A6 */	mflr r0
/* 809A48B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809A48B4  39 61 00 20 */	addi r11, r1, 0x20
/* 809A48B8  4B 9B D9 20 */	b _savegpr_28
/* 809A48BC  7C 7D 1B 78 */	mr r29, r3
/* 809A48C0  4B 67 42 A4 */	b __ct__10fopAc_ac_cFv
/* 809A48C4  3B 9D 05 74 */	addi r28, r29, 0x574
/* 809A48C8  7F 83 E3 78 */	mr r3, r28
/* 809A48CC  4B 6D 17 D4 */	b __ct__9dBgS_AcchFv
/* 809A48D0  3C 60 80 9A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809A48D4  38 63 52 38 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809A48D8  90 7C 00 10 */	stw r3, 0x10(r28)
/* 809A48DC  3B E3 00 0C */	addi r31, r3, 0xc
/* 809A48E0  93 FC 00 14 */	stw r31, 0x14(r28)
/* 809A48E4  3B C3 00 18 */	addi r30, r3, 0x18
/* 809A48E8  93 DC 00 24 */	stw r30, 0x24(r28)
/* 809A48EC  38 7C 00 14 */	addi r3, r28, 0x14
/* 809A48F0  4B 6D 45 78 */	b SetObj__16dBgS_PolyPassChkFv
/* 809A48F4  38 7D 07 4C */	addi r3, r29, 0x74c
/* 809A48F8  3C 80 80 9A */	lis r4, __ct__8dCcD_CylFv@ha
/* 809A48FC  38 84 4D 7C */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 809A4900  3C A0 80 9A */	lis r5, __dt__8dCcD_CylFv@ha
/* 809A4904  38 A5 37 98 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 809A4908  38 C0 01 3C */	li r6, 0x13c
/* 809A490C  38 E0 00 04 */	li r7, 4
/* 809A4910  4B 9B D4 50 */	b __construct_array
/* 809A4914  38 7D 0C 3C */	addi r3, r29, 0xc3c
/* 809A4918  4B 92 06 E4 */	b __ct__14Z2CreatureRideFv
/* 809A491C  3B 9D 0D 00 */	addi r28, r29, 0xd00
/* 809A4920  3C 60 80 9A */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 809A4924  38 83 52 00 */	addi r4, r3, __vt__18mDoExt_3DlineMat_c@l
/* 809A4928  90 9D 0D 00 */	stw r4, 0xd00(r29)
/* 809A492C  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha
/* 809A4930  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l
/* 809A4934  90 1D 0D 00 */	stw r0, 0xd00(r29)
/* 809A4938  90 9D 0D 3C */	stw r4, 0xd3c(r29)
/* 809A493C  90 1D 0D 3C */	stw r0, 0xd3c(r29)
/* 809A4940  38 7C 00 78 */	addi r3, r28, 0x78
/* 809A4944  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 809A4948  38 84 4D 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 809A494C  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 809A4950  38 A5 DA 24 */	addi r5, r5, __dt__4cXyzFv@l
/* 809A4954  38 C0 00 0C */	li r6, 0xc
/* 809A4958  38 E0 00 0A */	li r7, 0xa
/* 809A495C  4B 9B D4 04 */	b __construct_array
/* 809A4960  38 7C 00 F0 */	addi r3, r28, 0xf0
/* 809A4964  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 809A4968  38 84 4D 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 809A496C  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 809A4970  38 A5 DA 24 */	addi r5, r5, __dt__4cXyzFv@l
/* 809A4974  38 C0 00 0C */	li r6, 0xc
/* 809A4978  38 E0 00 0A */	li r7, 0xa
/* 809A497C  4B 9B D3 E4 */	b __construct_array
/* 809A4980  3B 9D 0E 80 */	addi r28, r29, 0xe80
/* 809A4984  7F 83 E3 78 */	mr r3, r28
/* 809A4988  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 809A498C  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 809A4990  4B 98 0D 34 */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 809A4994  38 7C 00 74 */	addi r3, r28, 0x74
/* 809A4998  3C 80 80 9A */	lis r4, __ct__11J3DLightObjFv@ha
/* 809A499C  38 84 4D 40 */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 809A49A0  38 A0 00 00 */	li r5, 0
/* 809A49A4  38 C0 00 74 */	li r6, 0x74
/* 809A49A8  38 E0 00 06 */	li r7, 6
/* 809A49AC  4B 9B D3 B4 */	b __construct_array
/* 809A49B0  3B 9D 12 08 */	addi r28, r29, 0x1208
/* 809A49B4  7F 83 E3 78 */	mr r3, r28
/* 809A49B8  4B 6D 16 E8 */	b __ct__9dBgS_AcchFv
/* 809A49BC  3C 60 80 9A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809A49C0  38 03 52 38 */	addi r0, r3, __vt__12dBgS_ObjAcch@l
/* 809A49C4  90 1C 00 10 */	stw r0, 0x10(r28)
/* 809A49C8  93 FC 00 14 */	stw r31, 0x14(r28)
/* 809A49CC  93 DC 00 24 */	stw r30, 0x24(r28)
/* 809A49D0  38 7C 00 14 */	addi r3, r28, 0x14
/* 809A49D4  4B 6D 44 94 */	b SetObj__16dBgS_PolyPassChkFv
/* 809A49D8  3B 9D 13 E0 */	addi r28, r29, 0x13e0
/* 809A49DC  7F 83 E3 78 */	mr r3, r28
/* 809A49E0  4B 6D F0 48 */	b __ct__12dCcD_GObjInfFv
/* 809A49E4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809A49E8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809A49EC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 809A49F0  3C 60 80 9A */	lis r3, __vt__8cM3dGAab@ha
/* 809A49F4  38 03 52 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809A49F8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 809A49FC  3C 60 80 9A */	lis r3, __vt__8cM3dGCyl@ha
/* 809A4A00  38 03 52 2C */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809A4A04  90 1C 01 38 */	stw r0, 0x138(r28)
/* 809A4A08  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809A4A0C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809A4A10  90 7C 01 20 */	stw r3, 0x120(r28)
/* 809A4A14  38 03 00 58 */	addi r0, r3, 0x58
/* 809A4A18  90 1C 01 38 */	stw r0, 0x138(r28)
/* 809A4A1C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809A4A20  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809A4A24  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 809A4A28  38 03 00 2C */	addi r0, r3, 0x2c
/* 809A4A2C  90 1C 01 20 */	stw r0, 0x120(r28)
/* 809A4A30  38 03 00 84 */	addi r0, r3, 0x84
/* 809A4A34  90 1C 01 38 */	stw r0, 0x138(r28)
/* 809A4A38  3B 9D 15 D4 */	addi r28, r29, 0x15d4
/* 809A4A3C  7F 83 E3 78 */	mr r3, r28
/* 809A4A40  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 809A4A44  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 809A4A48  4B 98 0C 7C */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 809A4A4C  38 7C 00 74 */	addi r3, r28, 0x74
/* 809A4A50  3C 80 80 9A */	lis r4, __ct__11J3DLightObjFv@ha
/* 809A4A54  38 84 4D 40 */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 809A4A58  38 A0 00 00 */	li r5, 0
/* 809A4A5C  38 C0 00 74 */	li r6, 0x74
/* 809A4A60  38 E0 00 06 */	li r7, 6
/* 809A4A64  4B 9B D2 FC */	b __construct_array
/* 809A4A68  3B 9D 19 5C */	addi r28, r29, 0x195c
/* 809A4A6C  7F 83 E3 78 */	mr r3, r28
/* 809A4A70  4B 6D 16 30 */	b __ct__9dBgS_AcchFv
/* 809A4A74  3C 60 80 9A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809A4A78  38 03 52 38 */	addi r0, r3, __vt__12dBgS_ObjAcch@l
/* 809A4A7C  90 1C 00 10 */	stw r0, 0x10(r28)
/* 809A4A80  93 FC 00 14 */	stw r31, 0x14(r28)
/* 809A4A84  93 DC 00 24 */	stw r30, 0x24(r28)
/* 809A4A88  38 7C 00 14 */	addi r3, r28, 0x14
/* 809A4A8C  4B 6D 43 DC */	b SetObj__16dBgS_PolyPassChkFv
/* 809A4A90  38 7D 1B F0 */	addi r3, r29, 0x1bf0
/* 809A4A94  4B 92 0A 24 */	b __ct__15Z2SoundObjCoachFv
/* 809A4A98  3B 9D 1C 14 */	addi r28, r29, 0x1c14
/* 809A4A9C  7F 83 E3 78 */	mr r3, r28
/* 809A4AA0  4B 6D EF 88 */	b __ct__12dCcD_GObjInfFv
/* 809A4AA4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809A4AA8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809A4AAC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 809A4AB0  3C 60 80 9A */	lis r3, __vt__8cM3dGAab@ha
/* 809A4AB4  38 03 52 20 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809A4AB8  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 809A4ABC  3C 60 80 9A */	lis r3, __vt__8cM3dGSph@ha
/* 809A4AC0  38 03 52 14 */	addi r0, r3, __vt__8cM3dGSph@l
/* 809A4AC4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 809A4AC8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 809A4ACC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 809A4AD0  90 7C 01 20 */	stw r3, 0x120(r28)
/* 809A4AD4  38 03 00 58 */	addi r0, r3, 0x58
/* 809A4AD8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 809A4ADC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 809A4AE0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 809A4AE4  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 809A4AE8  38 03 00 2C */	addi r0, r3, 0x2c
/* 809A4AEC  90 1C 01 20 */	stw r0, 0x120(r28)
/* 809A4AF0  38 03 00 84 */	addi r0, r3, 0x84
/* 809A4AF4  90 1C 01 34 */	stw r0, 0x134(r28)
/* 809A4AF8  3B 9D 1D CC */	addi r28, r29, 0x1dcc
/* 809A4AFC  7F 83 E3 78 */	mr r3, r28
/* 809A4B00  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha
/* 809A4B04  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l
/* 809A4B08  4B 98 0B BC */	b __as__12J3DLightInfoFRC12J3DLightInfo
/* 809A4B0C  38 7C 00 74 */	addi r3, r28, 0x74
/* 809A4B10  3C 80 80 9A */	lis r4, __ct__11J3DLightObjFv@ha
/* 809A4B14  38 84 4D 40 */	addi r4, r4, __ct__11J3DLightObjFv@l
/* 809A4B18  38 A0 00 00 */	li r5, 0
/* 809A4B1C  38 C0 00 74 */	li r6, 0x74
/* 809A4B20  38 E0 00 06 */	li r7, 6
/* 809A4B24  4B 9B D2 3C */	b __construct_array
/* 809A4B28  38 7D 21 54 */	addi r3, r29, 0x2154
/* 809A4B2C  4B 91 B8 9C */	b __ct__10Z2CreatureFv
/* 809A4B30  38 7D 21 E4 */	addi r3, r29, 0x21e4
/* 809A4B34  3C 80 80 9A */	lis r4, __ct__8dCcD_CylFv@ha
/* 809A4B38  38 84 4D 7C */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 809A4B3C  3C A0 80 9A */	lis r5, __dt__8dCcD_CylFv@ha
/* 809A4B40  38 A5 37 98 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 809A4B44  38 C0 01 3C */	li r6, 0x13c
/* 809A4B48  38 E0 00 02 */	li r7, 2
/* 809A4B4C  4B 9B D2 14 */	b __construct_array
/* 809A4B50  38 7D 24 CC */	addi r3, r29, 0x24cc
/* 809A4B54  4B 6D 13 58 */	b __ct__12dBgS_AcchCirFv
/* 809A4B58  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809A4B5C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809A4B60  90 1D 25 24 */	stw r0, 0x2524(r29)
/* 809A4B64  38 7D 25 28 */	addi r3, r29, 0x2528
/* 809A4B68  4B 6D EB F8 */	b __ct__10dCcD_GSttsFv
/* 809A4B6C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809A4B70  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809A4B74  90 7D 25 24 */	stw r3, 0x2524(r29)
/* 809A4B78  38 03 00 20 */	addi r0, r3, 0x20
/* 809A4B7C  90 1D 25 28 */	stw r0, 0x2528(r29)
/* 809A4B80  7F A3 EB 78 */	mr r3, r29
/* 809A4B84  39 61 00 20 */	addi r11, r1, 0x20
/* 809A4B88  4B 9B D6 9C */	b _restgpr_28
/* 809A4B8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809A4B90  7C 08 03 A6 */	mtlr r0
/* 809A4B94  38 21 00 20 */	addi r1, r1, 0x20
/* 809A4B98  4E 80 00 20 */	blr 
