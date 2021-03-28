lbl_80844CB0:
/* 80844CB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80844CB4  7C 08 02 A6 */	mflr r0
/* 80844CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80844CBC  39 61 00 20 */	addi r11, r1, 0x20
/* 80844CC0  4B B1 D5 14 */	b _savegpr_27
/* 80844CC4  7C 7F 1B 78 */	mr r31, r3
/* 80844CC8  4B 7D 3E 9C */	b __ct__10fopAc_ac_cFv
/* 80844CCC  3B 9F 05 78 */	addi r28, r31, 0x578
/* 80844CD0  3C 60 80 84 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80844CD4  38 03 5B 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80844CD8  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80844CDC  7F 83 E3 78 */	mr r3, r28
/* 80844CE0  38 80 00 00 */	li r4, 0
/* 80844CE4  4B AE 37 18 */	b init__12J3DFrameCtrlFs
/* 80844CE8  38 00 00 00 */	li r0, 0
/* 80844CEC  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80844CF0  38 7F 05 94 */	addi r3, r31, 0x594
/* 80844CF4  3C 80 80 84 */	lis r4, __ct__19mDoExt_AnmRatioPackFv@ha
/* 80844CF8  38 84 54 38 */	addi r4, r4, __ct__19mDoExt_AnmRatioPackFv@l
/* 80844CFC  3C A0 80 84 */	lis r5, __dt__19mDoExt_AnmRatioPackFv@ha
/* 80844D00  38 A5 53 FC */	addi r5, r5, __dt__19mDoExt_AnmRatioPackFv@l
/* 80844D04  38 C0 00 08 */	li r6, 8
/* 80844D08  38 E0 00 03 */	li r7, 3
/* 80844D0C  4B B1 D0 54 */	b __construct_array
/* 80844D10  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80844D14  3C 80 80 84 */	lis r4, __ct__16daPy_frameCtrl_cFv@ha
/* 80844D18  38 84 53 B0 */	addi r4, r4, __ct__16daPy_frameCtrl_cFv@l
/* 80844D1C  3C A0 80 84 */	lis r5, __dt__16daPy_frameCtrl_cFv@ha
/* 80844D20  38 A5 53 54 */	addi r5, r5, __dt__16daPy_frameCtrl_cFv@l
/* 80844D24  38 C0 00 18 */	li r6, 0x18
/* 80844D28  38 E0 00 03 */	li r7, 3
/* 80844D2C  4B B1 D0 34 */	b __construct_array
/* 80844D30  38 7F 05 FC */	addi r3, r31, 0x5fc
/* 80844D34  3C 80 80 07 */	lis r4, __ct__12dBgS_AcchCirFv@ha
/* 80844D38  38 84 5E AC */	addi r4, r4, __ct__12dBgS_AcchCirFv@l
/* 80844D3C  3C A0 80 84 */	lis r5, __dt__12dBgS_AcchCirFv@ha
/* 80844D40  38 A5 52 E4 */	addi r5, r5, __dt__12dBgS_AcchCirFv@l
/* 80844D44  38 C0 00 40 */	li r6, 0x40
/* 80844D48  38 E0 00 03 */	li r7, 3
/* 80844D4C  4B B1 D0 14 */	b __construct_array
/* 80844D50  3B 9F 06 BC */	addi r28, r31, 0x6bc
/* 80844D54  7F 83 E3 78 */	mr r3, r28
/* 80844D58  4B 83 13 48 */	b __ct__9dBgS_AcchFv
/* 80844D5C  3C 60 80 84 */	lis r3, __vt__14dBgS_HorseAcch@ha
/* 80844D60  38 63 5A EC */	addi r3, r3, __vt__14dBgS_HorseAcch@l
/* 80844D64  90 7C 00 10 */	stw r3, 0x10(r28)
/* 80844D68  38 03 00 0C */	addi r0, r3, 0xc
/* 80844D6C  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80844D70  38 03 00 18 */	addi r0, r3, 0x18
/* 80844D74  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80844D78  38 7C 00 14 */	addi r3, r28, 0x14
/* 80844D7C  4B 83 41 7C */	b SetHorse__16dBgS_PolyPassChkFv
/* 80844D80  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80844D84  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80844D88  90 1F 08 AC */	stw r0, 0x8ac(r31)
/* 80844D8C  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 80844D90  4B 83 E9 D0 */	b __ct__10dCcD_GSttsFv
/* 80844D94  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80844D98  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80844D9C  90 7F 08 AC */	stw r3, 0x8ac(r31)
/* 80844DA0  38 03 00 20 */	addi r0, r3, 0x20
/* 80844DA4  90 1F 08 B0 */	stw r0, 0x8b0(r31)
/* 80844DA8  38 7F 08 D0 */	addi r3, r31, 0x8d0
/* 80844DAC  4B 83 36 B4 */	b __ct__16dBgS_HorseLinChkFv
/* 80844DB0  38 7F 09 40 */	addi r3, r31, 0x940
/* 80844DB4  3C 80 80 84 */	lis r4, __ct__8dCcD_CylFv@ha
/* 80844DB8  38 84 51 94 */	addi r4, r4, __ct__8dCcD_CylFv@l
/* 80844DBC  3C A0 80 84 */	lis r5, __dt__8dCcD_CylFv@ha
/* 80844DC0  38 A5 50 C8 */	addi r5, r5, __dt__8dCcD_CylFv@l
/* 80844DC4  38 C0 01 3C */	li r6, 0x13c
/* 80844DC8  38 E0 00 03 */	li r7, 3
/* 80844DCC  4B B1 CF 94 */	b __construct_array
/* 80844DD0  3B 7F 0C F4 */	addi r27, r31, 0xcf4
/* 80844DD4  7F 63 DB 78 */	mr r3, r27
/* 80844DD8  4B 83 EC 50 */	b __ct__12dCcD_GObjInfFv
/* 80844DDC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80844DE0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80844DE4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80844DE8  3C 60 80 84 */	lis r3, __vt__8cM3dGAab@ha
/* 80844DEC  38 03 5A E0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80844DF0  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80844DF4  3C 60 80 84 */	lis r3, __vt__8cM3dGCyl@ha
/* 80844DF8  38 03 5A D4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80844DFC  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80844E00  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80844E04  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80844E08  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80844E0C  3B C3 00 58 */	addi r30, r3, 0x58
/* 80844E10  93 DB 01 38 */	stw r30, 0x138(r27)
/* 80844E14  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80844E18  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80844E1C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80844E20  3B A3 00 2C */	addi r29, r3, 0x2c
/* 80844E24  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80844E28  3B 83 00 84 */	addi r28, r3, 0x84
/* 80844E2C  93 9B 01 38 */	stw r28, 0x138(r27)
/* 80844E30  3B 7F 0E 30 */	addi r27, r31, 0xe30
/* 80844E34  7F 63 DB 78 */	mr r3, r27
/* 80844E38  4B 83 EB F0 */	b __ct__12dCcD_GObjInfFv
/* 80844E3C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80844E40  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80844E44  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80844E48  3C 60 80 84 */	lis r3, __vt__8cM3dGAab@ha
/* 80844E4C  38 03 5A E0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80844E50  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80844E54  3C 60 80 84 */	lis r3, __vt__8cM3dGCyl@ha
/* 80844E58  38 03 5A D4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80844E5C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80844E60  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80844E64  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 80844E68  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80844E6C  93 DB 01 38 */	stw r30, 0x138(r27)
/* 80844E70  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80844E74  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 80844E78  90 1B 00 3C */	stw r0, 0x3c(r27)
/* 80844E7C  93 BB 01 20 */	stw r29, 0x120(r27)
/* 80844E80  93 9B 01 38 */	stw r28, 0x138(r27)
/* 80844E84  3B 7F 0F 6C */	addi r27, r31, 0xf6c
/* 80844E88  7F 63 DB 78 */	mr r3, r27
/* 80844E8C  4B 83 EB 9C */	b __ct__12dCcD_GObjInfFv
/* 80844E90  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80844E94  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80844E98  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80844E9C  3C 60 80 84 */	lis r3, __vt__8cM3dGAab@ha
/* 80844EA0  38 03 5A E0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80844EA4  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80844EA8  3C 60 80 84 */	lis r3, __vt__8cM3dGSph@ha
/* 80844EAC  38 03 5A C8 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80844EB0  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80844EB4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80844EB8  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80844EBC  90 7B 01 20 */	stw r3, 0x120(r27)
/* 80844EC0  38 03 00 58 */	addi r0, r3, 0x58
/* 80844EC4  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80844EC8  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80844ECC  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80844ED0  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80844ED4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80844ED8  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80844EDC  38 03 00 84 */	addi r0, r3, 0x84
/* 80844EE0  90 1B 01 34 */	stw r0, 0x134(r27)
/* 80844EE4  38 7F 10 A4 */	addi r3, r31, 0x10a4
/* 80844EE8  4B A8 01 14 */	b __ct__14Z2CreatureRideFv
/* 80844EEC  38 7F 11 50 */	addi r3, r31, 0x1150
/* 80844EF0  3C 80 80 84 */	lis r4, __ct__13daHorseRein_cFv@ha
/* 80844EF4  38 84 4F EC */	addi r4, r4, __ct__13daHorseRein_cFv@l
/* 80844EF8  3C A0 80 84 */	lis r5, __dt__13daHorseRein_cFv@ha
/* 80844EFC  38 A5 4F B0 */	addi r5, r5, __dt__13daHorseRein_cFv@l
/* 80844F00  38 C0 00 28 */	li r6, 0x28
/* 80844F04  38 E0 00 03 */	li r7, 3
/* 80844F08  4B B1 CE 58 */	b __construct_array
/* 80844F0C  3C 60 80 84 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 80844F10  38 03 5A B4 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 80844F14  90 1F 11 C8 */	stw r0, 0x11c8(r31)
/* 80844F18  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha
/* 80844F1C  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l
/* 80844F20  90 1F 11 C8 */	stw r0, 0x11c8(r31)
/* 80844F24  38 7F 12 08 */	addi r3, r31, 0x1208
/* 80844F28  4B A0 4F D8 */	b __ct__10dMsgFlow_cFv
/* 80844F2C  38 7F 12 54 */	addi r3, r31, 0x1254
/* 80844F30  4B 91 9D CC */	b clearData__16daPy_actorKeep_cFv
/* 80844F34  38 7F 13 24 */	addi r3, r31, 0x1324
/* 80844F38  3C 80 80 84 */	lis r4, __ct__17daHorseFootData_cFv@ha
/* 80844F3C  38 84 4F AC */	addi r4, r4, __ct__17daHorseFootData_cFv@l
/* 80844F40  3C A0 80 84 */	lis r5, __dt__17daHorseFootData_cFv@ha
/* 80844F44  38 A5 4F 70 */	addi r5, r5, __dt__17daHorseFootData_cFv@l
/* 80844F48  38 C0 00 E4 */	li r6, 0xe4
/* 80844F4C  38 E0 00 04 */	li r7, 4
/* 80844F50  4B B1 CE 10 */	b __construct_array
/* 80844F54  7F E3 FB 78 */	mr r3, r31
/* 80844F58  39 61 00 20 */	addi r11, r1, 0x20
/* 80844F5C  4B B1 D2 C4 */	b _restgpr_27
/* 80844F60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80844F64  7C 08 03 A6 */	mtlr r0
/* 80844F68  38 21 00 20 */	addi r1, r1, 0x20
/* 80844F6C  4E 80 00 20 */	blr 
