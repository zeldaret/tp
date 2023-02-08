lbl_80601960:
/* 80601960  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80601964  7C 08 02 A6 */	mflr r0
/* 80601968  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060196C  39 61 00 20 */	addi r11, r1, 0x20
/* 80601970  4B D6 08 65 */	bl _savegpr_27
/* 80601974  7C 7F 1B 78 */	mr r31, r3
/* 80601978  4B A1 71 ED */	bl __ct__10fopAc_ac_cFv
/* 8060197C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80601980  4B CB F5 E5 */	bl __ct__15Z2CreatureEnemyFv
/* 80601984  38 7F 06 80 */	addi r3, r31, 0x680
/* 80601988  4B CB F5 DD */	bl __ct__15Z2CreatureEnemyFv
/* 8060198C  3B DF 07 74 */	addi r30, r31, 0x774
/* 80601990  7F C3 F3 78 */	mr r3, r30
/* 80601994  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80601998  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 8060199C  4B D2 3D 29 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 806019A0  38 7E 00 74 */	addi r3, r30, 0x74
/* 806019A4  3C 80 80 60 */	lis r4, __ct__11J3DLightObjFv@ha /* 0x806021B0@ha */
/* 806019A8  38 84 21 B0 */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x806021B0@l */
/* 806019AC  38 A0 00 00 */	li r5, 0
/* 806019B0  38 C0 00 74 */	li r6, 0x74
/* 806019B4  38 E0 00 06 */	li r7, 6
/* 806019B8  4B D6 03 A9 */	bl __construct_array
/* 806019BC  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 806019C0  4B A7 44 ED */	bl __ct__12dBgS_AcchCirFv
/* 806019C4  3B 9F 0C D4 */	addi r28, r31, 0xcd4
/* 806019C8  7F 83 E3 78 */	mr r3, r28
/* 806019CC  4B A7 46 D5 */	bl __ct__9dBgS_AcchFv
/* 806019D0  3C 60 80 60 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80602F18@ha */
/* 806019D4  38 63 2F 18 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80602F18@l */
/* 806019D8  90 7C 00 10 */	stw r3, 0x10(r28)
/* 806019DC  38 03 00 0C */	addi r0, r3, 0xc
/* 806019E0  90 1C 00 14 */	stw r0, 0x14(r28)
/* 806019E4  38 03 00 18 */	addi r0, r3, 0x18
/* 806019E8  90 1C 00 24 */	stw r0, 0x24(r28)
/* 806019EC  38 7C 00 14 */	addi r3, r28, 0x14
/* 806019F0  4B A7 74 79 */	bl SetObj__16dBgS_PolyPassChkFv
/* 806019F4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 806019F8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 806019FC  90 1F 0E E0 */	stw r0, 0xee0(r31)
/* 80601A00  38 7F 0E E4 */	addi r3, r31, 0xee4
/* 80601A04  4B A8 1D 5D */	bl __ct__10dCcD_GSttsFv
/* 80601A08  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80601A0C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80601A10  90 7F 0E E0 */	stw r3, 0xee0(r31)
/* 80601A14  3B C3 00 20 */	addi r30, r3, 0x20
/* 80601A18  93 DF 0E E4 */	stw r30, 0xee4(r31)
/* 80601A1C  38 7F 0F 04 */	addi r3, r31, 0xf04
/* 80601A20  3C 80 80 60 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80601FF0@ha */
/* 80601A24  38 84 1F F0 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80601FF0@l */
/* 80601A28  3C A0 80 60 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80601F24@ha */
/* 80601A2C  38 A5 1F 24 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80601F24@l */
/* 80601A30  38 C0 01 38 */	li r6, 0x138
/* 80601A34  38 E0 00 02 */	li r7, 2
/* 80601A38  4B D6 03 29 */	bl __construct_array
/* 80601A3C  38 7F 11 74 */	addi r3, r31, 0x1174
/* 80601A40  3C 80 80 60 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80601FF0@ha */
/* 80601A44  38 84 1F F0 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80601FF0@l */
/* 80601A48  3C A0 80 60 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80601F24@ha */
/* 80601A4C  38 A5 1F 24 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80601F24@l */
/* 80601A50  38 C0 01 38 */	li r6, 0x138
/* 80601A54  38 E0 00 04 */	li r7, 4
/* 80601A58  4B D6 03 09 */	bl __construct_array
/* 80601A5C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80601A60  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80601A64  90 1F 16 6C */	stw r0, 0x166c(r31)
/* 80601A68  38 7F 16 70 */	addi r3, r31, 0x1670
/* 80601A6C  4B A8 1C F5 */	bl __ct__10dCcD_GSttsFv
/* 80601A70  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80601A74  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80601A78  90 1F 16 6C */	stw r0, 0x166c(r31)
/* 80601A7C  93 DF 16 70 */	stw r30, 0x1670(r31)
/* 80601A80  38 7F 16 90 */	addi r3, r31, 0x1690
/* 80601A84  3C 80 80 60 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80601FF0@ha */
/* 80601A88  38 84 1F F0 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80601FF0@l */
/* 80601A8C  3C A0 80 60 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80601F24@ha */
/* 80601A90  38 A5 1F 24 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80601F24@l */
/* 80601A94  38 C0 01 38 */	li r6, 0x138
/* 80601A98  38 E0 00 03 */	li r7, 3
/* 80601A9C  4B D6 02 C5 */	bl __construct_array
/* 80601AA0  3B 7F 1A 38 */	addi r27, r31, 0x1a38
/* 80601AA4  7F 63 DB 78 */	mr r3, r27
/* 80601AA8  4B A8 1F 81 */	bl __ct__12dCcD_GObjInfFv
/* 80601AAC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80601AB0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80601AB4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80601AB8  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha /* 0x80602F0C@ha */
/* 80601ABC  38 03 2F 0C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80602F0C@l */
/* 80601AC0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80601AC4  3C 60 80 60 */	lis r3, __vt__8cM3dGSph@ha /* 0x80602F00@ha */
/* 80601AC8  38 03 2F 00 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80602F00@l */
/* 80601ACC  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80601AD0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80601AD4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80601AD8  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80601ADC  3B C3 00 58 */	addi r30, r3, 0x58
/* 80601AE0  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80601AE4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80601AE8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80601AEC  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80601AF0  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80601AF4  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80601AF8  3B 83 00 84 */	addi r28, r3, 0x84
/* 80601AFC  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80601B00  3B 7F 1B 70 */	addi r27, r31, 0x1b70
/* 80601B04  7F 63 DB 78 */	mr r3, r27
/* 80601B08  4B A8 1F 21 */	bl __ct__12dCcD_GObjInfFv
/* 80601B0C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80601B10  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80601B14  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80601B18  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha /* 0x80602F0C@ha */
/* 80601B1C  38 03 2F 0C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80602F0C@l */
/* 80601B20  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80601B24  3C 60 80 60 */	lis r3, __vt__8cM3dGSph@ha /* 0x80602F00@ha */
/* 80601B28  38 03 2F 00 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80602F00@l */
/* 80601B2C  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80601B30  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80601B34  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80601B38  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80601B3C  93 DB 01 34 */	stw r30, 0x134(r27)
/* 80601B40  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80601B44  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80601B48  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80601B4C  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80601B50  93 9B 01 34 */	stw r28, 0x134(r27)
/* 80601B54  3B 7F 1C A8 */	addi r27, r31, 0x1ca8
/* 80601B58  7F 63 DB 78 */	mr r3, r27
/* 80601B5C  4B A8 1E CD */	bl __ct__12dCcD_GObjInfFv
/* 80601B60  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80601B64  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80601B68  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80601B6C  3C 60 80 60 */	lis r3, __vt__8cM3dGAab@ha /* 0x80602F0C@ha */
/* 80601B70  38 03 2F 0C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80602F0C@l */
/* 80601B74  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80601B78  3C 60 80 60 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80602EF4@ha */
/* 80601B7C  38 03 2E F4 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80602EF4@l */
/* 80601B80  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80601B84  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80601B88  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80601B8C  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80601B90  38 03 00 58 */	addi r0, r3, 0x58
/* 80601B94  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80601B98  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80601B9C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80601BA0  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80601BA4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80601BA8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80601BAC  38 03 00 84 */	addi r0, r3, 0x84
/* 80601BB0  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80601BB4  38 7F 1E 2C */	addi r3, r31, 0x1e2c
/* 80601BB8  4B CB CC 8D */	bl __ct__16Z2SoundObjSimpleFv
/* 80601BBC  38 7F 1E 5C */	addi r3, r31, 0x1e5c
/* 80601BC0  3C 80 80 60 */	lis r4, __ct__4cXyzFv@ha /* 0x80601DE8@ha */
/* 80601BC4  38 84 1D E8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80601DE8@l */
/* 80601BC8  3C A0 80 5F */	lis r5, __dt__4cXyzFv@ha /* 0x805F53A4@ha */
/* 80601BCC  38 A5 53 A4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805F53A4@l */
/* 80601BD0  38 C0 00 0C */	li r6, 0xc
/* 80601BD4  38 E0 00 05 */	li r7, 5
/* 80601BD8  4B D6 01 89 */	bl __construct_array
/* 80601BDC  38 7F 1E 98 */	addi r3, r31, 0x1e98
/* 80601BE0  3C 80 80 60 */	lis r4, __ct__4cXyzFv@ha /* 0x80601DE8@ha */
/* 80601BE4  38 84 1D E8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80601DE8@l */
/* 80601BE8  3C A0 80 5F */	lis r5, __dt__4cXyzFv@ha /* 0x805F53A4@ha */
/* 80601BEC  38 A5 53 A4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805F53A4@l */
/* 80601BF0  38 C0 00 0C */	li r6, 0xc
/* 80601BF4  38 E0 00 05 */	li r7, 5
/* 80601BF8  4B D6 01 69 */	bl __construct_array
/* 80601BFC  38 7F 1E D4 */	addi r3, r31, 0x1ed4
/* 80601C00  3C 80 80 60 */	lis r4, __ct__4cXyzFv@ha /* 0x80601DE8@ha */
/* 80601C04  38 84 1D E8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80601DE8@l */
/* 80601C08  3C A0 80 5F */	lis r5, __dt__4cXyzFv@ha /* 0x805F53A4@ha */
/* 80601C0C  38 A5 53 A4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805F53A4@l */
/* 80601C10  38 C0 00 0C */	li r6, 0xc
/* 80601C14  38 E0 00 05 */	li r7, 5
/* 80601C18  4B D6 01 49 */	bl __construct_array
/* 80601C1C  38 7F 1F 10 */	addi r3, r31, 0x1f10
/* 80601C20  3C 80 80 2C */	lis r4, __ct__16Z2SoundObjSimpleFv@ha /* 0x802BE844@ha */
/* 80601C24  38 84 E8 44 */	addi r4, r4, __ct__16Z2SoundObjSimpleFv@l /* 0x802BE844@l */
/* 80601C28  3C A0 80 60 */	lis r5, __dt__16Z2SoundObjSimpleFv@ha /* 0x80601DEC@ha */
/* 80601C2C  38 A5 1D EC */	addi r5, r5, __dt__16Z2SoundObjSimpleFv@l /* 0x80601DEC@l */
/* 80601C30  38 C0 00 20 */	li r6, 0x20
/* 80601C34  38 E0 00 05 */	li r7, 5
/* 80601C38  4B D6 01 29 */	bl __construct_array
/* 80601C3C  38 7F 1F D8 */	addi r3, r31, 0x1fd8
/* 80601C40  3C 80 80 60 */	lis r4, __ct__4cXyzFv@ha /* 0x80601DE8@ha */
/* 80601C44  38 84 1D E8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80601DE8@l */
/* 80601C48  3C A0 80 5F */	lis r5, __dt__4cXyzFv@ha /* 0x805F53A4@ha */
/* 80601C4C  38 A5 53 A4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805F53A4@l */
/* 80601C50  38 C0 00 0C */	li r6, 0xc
/* 80601C54  38 E0 00 02 */	li r7, 2
/* 80601C58  4B D6 01 09 */	bl __construct_array
/* 80601C5C  38 7F 1F F0 */	addi r3, r31, 0x1ff0
/* 80601C60  3C 80 80 60 */	lis r4, __ct__8g_himo_sFv@ha /* 0x80601DA0@ha */
/* 80601C64  38 84 1D A0 */	addi r4, r4, __ct__8g_himo_sFv@l /* 0x80601DA0@l */
/* 80601C68  3C A0 80 60 */	lis r5, __dt__8g_himo_sFv@ha /* 0x80601D40@ha */
/* 80601C6C  38 A5 1D 40 */	addi r5, r5, __dt__8g_himo_sFv@l /* 0x80601D40@l */
/* 80601C70  38 C0 00 C0 */	li r6, 0xc0
/* 80601C74  38 E0 00 02 */	li r7, 2
/* 80601C78  4B D6 00 E9 */	bl __construct_array
/* 80601C7C  38 7F 21 70 */	addi r3, r31, 0x2170
/* 80601C80  3C 80 80 60 */	lis r4, __ct__19mDoExt_3DlineMat1_cFv@ha /* 0x80601D24@ha */
/* 80601C84  38 84 1D 24 */	addi r4, r4, __ct__19mDoExt_3DlineMat1_cFv@l /* 0x80601D24@l */
/* 80601C88  38 A0 00 00 */	li r5, 0
/* 80601C8C  38 C0 00 3C */	li r6, 0x3c
/* 80601C90  38 E0 00 02 */	li r7, 2
/* 80601C94  4B D6 00 CD */	bl __construct_array
/* 80601C98  3C 60 80 60 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha /* 0x80602EE0@ha */
/* 80601C9C  38 03 2E E0 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l /* 0x80602EE0@l */
/* 80601CA0  90 1F 21 E8 */	stw r0, 0x21e8(r31)
/* 80601CA4  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha /* 0x803A3248@ha */
/* 80601CA8  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l /* 0x803A3248@l */
/* 80601CAC  90 1F 21 E8 */	stw r0, 0x21e8(r31)
/* 80601CB0  3B DF 22 24 */	addi r30, r31, 0x2224
/* 80601CB4  7F C3 F3 78 */	mr r3, r30
/* 80601CB8  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80601CBC  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80601CC0  4B D2 3A 05 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80601CC4  38 7E 00 74 */	addi r3, r30, 0x74
/* 80601CC8  3C 80 80 60 */	lis r4, __ct__11J3DLightObjFv@ha /* 0x806021B0@ha */
/* 80601CCC  38 84 21 B0 */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x806021B0@l */
/* 80601CD0  38 A0 00 00 */	li r5, 0
/* 80601CD4  38 C0 00 74 */	li r6, 0x74
/* 80601CD8  38 E0 00 06 */	li r7, 6
/* 80601CDC  4B D6 00 85 */	bl __construct_array
/* 80601CE0  38 7F 26 A8 */	addi r3, r31, 0x26a8
/* 80601CE4  3C 80 80 60 */	lis r4, __ct__4cXyzFv@ha /* 0x80601DE8@ha */
/* 80601CE8  38 84 1D E8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80601DE8@l */
/* 80601CEC  3C A0 80 5F */	lis r5, __dt__4cXyzFv@ha /* 0x805F53A4@ha */
/* 80601CF0  38 A5 53 A4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805F53A4@l */
/* 80601CF4  38 C0 00 0C */	li r6, 0xc
/* 80601CF8  38 E0 00 02 */	li r7, 2
/* 80601CFC  4B D6 00 65 */	bl __construct_array
/* 80601D00  38 7F 27 44 */	addi r3, r31, 0x2744
/* 80601D04  4B C4 81 FD */	bl __ct__10dMsgFlow_cFv
/* 80601D08  7F E3 FB 78 */	mr r3, r31
/* 80601D0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80601D10  4B D6 05 11 */	bl _restgpr_27
/* 80601D14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80601D18  7C 08 03 A6 */	mtlr r0
/* 80601D1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80601D20  4E 80 00 20 */	blr 
