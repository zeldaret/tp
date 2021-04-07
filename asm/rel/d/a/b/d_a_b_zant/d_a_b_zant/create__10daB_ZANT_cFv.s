lbl_8064E190:
/* 8064E190  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8064E194  7C 08 02 A6 */	mflr r0
/* 8064E198  90 01 00 34 */	stw r0, 0x34(r1)
/* 8064E19C  39 61 00 30 */	addi r11, r1, 0x30
/* 8064E1A0  4B D1 40 29 */	bl _savegpr_24
/* 8064E1A4  7C 7F 1B 78 */	mr r31, r3
/* 8064E1A8  3C 80 80 65 */	lis r4, cNullVec__6Z2Calc@ha /* 0x8064EE8C@ha */
/* 8064E1AC  3B C4 EE 8C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x8064EE8C@l */
/* 8064E1B0  3C 80 80 65 */	lis r4, lit_3757@ha /* 0x8064EB1C@ha */
/* 8064E1B4  3B A4 EB 1C */	addi r29, r4, lit_3757@l /* 0x8064EB1C@l */
/* 8064E1B8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8064E1BC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8064E1C0  40 82 01 AC */	bne lbl_8064E36C
/* 8064E1C4  7F E0 FB 79 */	or. r0, r31, r31
/* 8064E1C8  41 82 01 98 */	beq lbl_8064E360
/* 8064E1CC  7C 1C 03 78 */	mr r28, r0
/* 8064E1D0  4B 9C A9 95 */	bl __ct__10fopAc_ac_cFv
/* 8064E1D4  38 7C 05 F0 */	addi r3, r28, 0x5f0
/* 8064E1D8  4B C7 2D 8D */	bl __ct__15Z2CreatureEnemyFv
/* 8064E1DC  38 7C 07 8C */	addi r3, r28, 0x78c
/* 8064E1E0  4B A2 7C CD */	bl __ct__12dBgS_AcchCirFv
/* 8064E1E4  3B 1C 07 CC */	addi r24, r28, 0x7cc
/* 8064E1E8  7F 03 C3 78 */	mr r3, r24
/* 8064E1EC  4B A2 7E B5 */	bl __ct__9dBgS_AcchFv
/* 8064E1F0  3C 60 80 65 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8064F52C@ha */
/* 8064E1F4  38 63 F5 2C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8064F52C@l */
/* 8064E1F8  90 78 00 10 */	stw r3, 0x10(r24)
/* 8064E1FC  38 03 00 0C */	addi r0, r3, 0xc
/* 8064E200  90 18 00 14 */	stw r0, 0x14(r24)
/* 8064E204  38 03 00 18 */	addi r0, r3, 0x18
/* 8064E208  90 18 00 24 */	stw r0, 0x24(r24)
/* 8064E20C  38 78 00 14 */	addi r3, r24, 0x14
/* 8064E210  4B A2 AC 59 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8064E214  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8064E218  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8064E21C  90 1C 09 BC */	stw r0, 0x9bc(r28)
/* 8064E220  38 7C 09 C0 */	addi r3, r28, 0x9c0
/* 8064E224  4B A3 55 3D */	bl __ct__10dCcD_GSttsFv
/* 8064E228  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8064E22C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8064E230  90 7C 09 BC */	stw r3, 0x9bc(r28)
/* 8064E234  3B 43 00 20 */	addi r26, r3, 0x20
/* 8064E238  93 5C 09 C0 */	stw r26, 0x9c0(r28)
/* 8064E23C  38 7C 09 E0 */	addi r3, r28, 0x9e0
/* 8064E240  3C 80 80 65 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8064E76C@ha */
/* 8064E244  38 84 E7 6C */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8064E76C@l */
/* 8064E248  3C A0 80 64 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8063F3C8@ha */
/* 8064E24C  38 A5 F3 C8 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8063F3C8@l */
/* 8064E250  38 C0 01 38 */	li r6, 0x138
/* 8064E254  38 E0 00 02 */	li r7, 2
/* 8064E258  4B D1 3B 09 */	bl __construct_array
/* 8064E25C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8064E260  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8064E264  90 1C 0C 8C */	stw r0, 0xc8c(r28)
/* 8064E268  38 7C 0C 90 */	addi r3, r28, 0xc90
/* 8064E26C  4B A3 54 F5 */	bl __ct__10dCcD_GSttsFv
/* 8064E270  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8064E274  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8064E278  90 1C 0C 8C */	stw r0, 0xc8c(r28)
/* 8064E27C  93 5C 0C 90 */	stw r26, 0xc90(r28)
/* 8064E280  38 7C 0C B0 */	addi r3, r28, 0xcb0
/* 8064E284  3C 80 80 65 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8064E76C@ha */
/* 8064E288  38 84 E7 6C */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8064E76C@l */
/* 8064E28C  3C A0 80 64 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8063F3C8@ha */
/* 8064E290  38 A5 F3 C8 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8063F3C8@l */
/* 8064E294  38 C0 01 38 */	li r6, 0x138
/* 8064E298  38 E0 00 0B */	li r7, 0xb
/* 8064E29C  4B D1 3A C5 */	bl __construct_array
/* 8064E2A0  38 7C 1A 18 */	addi r3, r28, 0x1a18
/* 8064E2A4  3C 80 80 65 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8064E76C@ha */
/* 8064E2A8  38 84 E7 6C */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8064E76C@l */
/* 8064E2AC  3C A0 80 64 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8063F3C8@ha */
/* 8064E2B0  38 A5 F3 C8 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8063F3C8@l */
/* 8064E2B4  38 C0 01 38 */	li r6, 0x138
/* 8064E2B8  38 E0 00 0B */	li r7, 0xb
/* 8064E2BC  4B D1 3A A5 */	bl __construct_array
/* 8064E2C0  38 7C 27 80 */	addi r3, r28, 0x2780
/* 8064E2C4  3C 80 80 65 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8064E76C@ha */
/* 8064E2C8  38 84 E7 6C */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8064E76C@l */
/* 8064E2CC  3C A0 80 64 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8063F3C8@ha */
/* 8064E2D0  38 A5 F3 C8 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8063F3C8@l */
/* 8064E2D4  38 C0 01 38 */	li r6, 0x138
/* 8064E2D8  38 E0 00 0B */	li r7, 0xb
/* 8064E2DC  4B D1 3A 85 */	bl __construct_array
/* 8064E2E0  3B 7C 34 E8 */	addi r27, r28, 0x34e8
/* 8064E2E4  7F 63 DB 78 */	mr r3, r27
/* 8064E2E8  4B A3 57 41 */	bl __ct__12dCcD_GObjInfFv
/* 8064E2EC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8064E2F0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8064E2F4  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8064E2F8  3C 60 80 65 */	lis r3, __vt__8cM3dGAab@ha /* 0x8064F598@ha */
/* 8064E2FC  38 03 F5 98 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8064F598@l */
/* 8064E300  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 8064E304  3C 60 80 65 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8064F520@ha */
/* 8064E308  38 03 F5 20 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8064F520@l */
/* 8064E30C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8064E310  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8064E314  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8064E318  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8064E31C  38 03 00 58 */	addi r0, r3, 0x58
/* 8064E320  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8064E324  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8064E328  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8064E32C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 8064E330  38 03 00 2C */	addi r0, r3, 0x2c
/* 8064E334  90 1B 01 20 */	stw r0, 0x120(r27)
/* 8064E338  38 03 00 84 */	addi r0, r3, 0x84
/* 8064E33C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 8064E340  38 7C 36 24 */	addi r3, r28, 0x3624
/* 8064E344  3C 80 80 65 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8064E76C@ha */
/* 8064E348  38 84 E7 6C */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8064E76C@l */
/* 8064E34C  3C A0 80 64 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8063F3C8@ha */
/* 8064E350  38 A5 F3 C8 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8063F3C8@l */
/* 8064E354  38 C0 01 38 */	li r6, 0x138
/* 8064E358  38 E0 00 02 */	li r7, 2
/* 8064E35C  4B D1 3A 05 */	bl __construct_array
lbl_8064E360:
/* 8064E360  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8064E364  60 00 00 08 */	ori r0, r0, 8
/* 8064E368  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8064E36C:
/* 8064E36C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8064E370  98 1F 06 FA */	stb r0, 0x6fa(r31)
/* 8064E374  88 9F 06 FA */	lbz r4, 0x6fa(r31)
/* 8064E378  28 04 00 FF */	cmplwi r4, 0xff
/* 8064E37C  41 82 00 28 */	beq lbl_8064E3A4
/* 8064E380  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064E384  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064E388  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8064E38C  7C 05 07 74 */	extsb r5, r0
/* 8064E390  4B 9E 6F D1 */	bl isSwitch__10dSv_info_cCFii
/* 8064E394  2C 03 00 00 */	cmpwi r3, 0
/* 8064E398  41 82 00 0C */	beq lbl_8064E3A4
/* 8064E39C  38 60 00 05 */	li r3, 5
/* 8064E3A0  48 00 03 6C */	b lbl_8064E70C
lbl_8064E3A4:
/* 8064E3A4  7F E3 FB 78 */	mr r3, r31
/* 8064E3A8  4B 9C B5 1D */	bl fopAcM_setStageLayer__FPv
/* 8064E3AC  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8064E3B0  3C 80 80 65 */	lis r4, d_a_b_zant__stringBase0@ha /* 0x8064EE60@ha */
/* 8064E3B4  38 84 EE 60 */	addi r4, r4, d_a_b_zant__stringBase0@l /* 0x8064EE60@l */
/* 8064E3B8  4B 9D EB 05 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8064E3BC  7C 7C 1B 78 */	mr r28, r3
/* 8064E3C0  2C 1C 00 04 */	cmpwi r28, 4
/* 8064E3C4  40 82 03 44 */	bne lbl_8064E708
/* 8064E3C8  7F E3 FB 78 */	mr r3, r31
/* 8064E3CC  3C 80 80 65 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8064E170@ha */
/* 8064E3D0  38 84 E1 70 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8064E170@l */
/* 8064E3D4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008F80@ha */
/* 8064E3D8  38 A5 8F 80 */	addi r5, r5, 0x8F80 /* 0x00008F80@l */
/* 8064E3DC  4B 9C C0 D5 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8064E3E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8064E3E4  40 82 00 0C */	bne lbl_8064E3F0
/* 8064E3E8  38 60 00 05 */	li r3, 5
/* 8064E3EC  48 00 03 20 */	b lbl_8064E70C
lbl_8064E3F0:
/* 8064E3F0  3C 60 80 65 */	lis r3, struct_8064F5F4+0x1@ha /* 0x8064F5F5@ha */
/* 8064E3F4  8C 03 F5 F5 */	lbzu r0, struct_8064F5F4+0x1@l(r3)  /* 0x8064F5F5@l */
/* 8064E3F8  28 00 00 00 */	cmplwi r0, 0
/* 8064E3FC  40 82 00 20 */	bne lbl_8064E41C
/* 8064E400  38 00 00 01 */	li r0, 1
/* 8064E404  98 03 00 00 */	stb r0, 0(r3)
/* 8064E408  98 1F 38 B8 */	stb r0, 0x38b8(r31)
/* 8064E40C  38 00 FF FF */	li r0, -1
/* 8064E410  3C 60 80 65 */	lis r3, l_HIO@ha /* 0x8064F604@ha */
/* 8064E414  38 63 F6 04 */	addi r3, r3, l_HIO@l /* 0x8064F604@l */
/* 8064E418  98 03 00 04 */	stb r0, 4(r3)
lbl_8064E41C:
/* 8064E41C  38 00 00 04 */	li r0, 4
/* 8064E420  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8064E424  38 00 00 18 */	li r0, 0x18
/* 8064E428  98 1F 05 46 */	stb r0, 0x546(r31)
/* 8064E42C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064E430  80 63 00 04 */	lwz r3, 4(r3)
/* 8064E434  38 03 00 24 */	addi r0, r3, 0x24
/* 8064E438  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8064E43C  7F E3 FB 78 */	mr r3, r31
/* 8064E440  C0 3D 02 94 */	lfs f1, 0x294(r29)
/* 8064E444  FC 40 08 90 */	fmr f2, f1
/* 8064E448  FC 60 08 90 */	fmr f3, f1
/* 8064E44C  4B 9C C0 DD */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8064E450  7F E3 FB 78 */	mr r3, r31
/* 8064E454  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 8064E458  FC 40 08 90 */	fmr f2, f1
/* 8064E45C  FC 60 08 90 */	fmr f3, f1
/* 8064E460  4B 9C C0 D9 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8064E464  38 00 00 00 */	li r0, 0
/* 8064E468  90 01 00 08 */	stw r0, 8(r1)
/* 8064E46C  38 7F 07 CC */	addi r3, r31, 0x7cc
/* 8064E470  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8064E474  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8064E478  7F E6 FB 78 */	mr r6, r31
/* 8064E47C  38 E0 00 01 */	li r7, 1
/* 8064E480  39 1F 07 8C */	addi r8, r31, 0x78c
/* 8064E484  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 8064E488  39 40 00 00 */	li r10, 0
/* 8064E48C  4B A2 7D BD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8064E490  38 7F 07 8C */	addi r3, r31, 0x78c
/* 8064E494  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8064E498  FC 40 08 90 */	fmr f2, f1
/* 8064E49C  4B A2 7A BD */	bl SetWall__12dBgS_AcchCirFff
/* 8064E4A0  38 00 02 58 */	li r0, 0x258
/* 8064E4A4  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8064E4A8  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 8064E4AC  38 7F 09 A4 */	addi r3, r31, 0x9a4
/* 8064E4B0  38 80 00 FE */	li r4, 0xfe
/* 8064E4B4  38 A0 00 00 */	li r5, 0
/* 8064E4B8  7F E6 FB 78 */	mr r6, r31
/* 8064E4BC  4B A3 53 A5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8064E4C0  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8064E4C4  38 9E 00 20 */	addi r4, r30, 0x20
/* 8064E4C8  4B A3 65 6D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8064E4CC  38 1F 09 A4 */	addi r0, r31, 0x9a4
/* 8064E4D0  90 1F 0A 24 */	stw r0, 0xa24(r31)
/* 8064E4D4  38 7F 0B 18 */	addi r3, r31, 0xb18
/* 8064E4D8  38 9E 00 20 */	addi r4, r30, 0x20
/* 8064E4DC  4B A3 65 59 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8064E4E0  38 1F 09 A4 */	addi r0, r31, 0x9a4
/* 8064E4E4  90 1F 0B 5C */	stw r0, 0xb5c(r31)
/* 8064E4E8  38 7F 34 E8 */	addi r3, r31, 0x34e8
/* 8064E4EC  38 9E 00 A0 */	addi r4, r30, 0xa0
/* 8064E4F0  4B A3 63 C5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8064E4F4  38 1F 09 A4 */	addi r0, r31, 0x9a4
/* 8064E4F8  90 1F 35 2C */	stw r0, 0x352c(r31)
/* 8064E4FC  38 7F 36 24 */	addi r3, r31, 0x3624
/* 8064E500  38 9E 00 60 */	addi r4, r30, 0x60
/* 8064E504  4B A3 65 31 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8064E508  38 1F 09 A4 */	addi r0, r31, 0x9a4
/* 8064E50C  90 1F 36 68 */	stw r0, 0x3668(r31)
/* 8064E510  38 7F 37 5C */	addi r3, r31, 0x375c
/* 8064E514  38 9E 00 60 */	addi r4, r30, 0x60
/* 8064E518  4B A3 65 1D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8064E51C  38 1F 09 A4 */	addi r0, r31, 0x9a4
/* 8064E520  90 1F 37 A0 */	stw r0, 0x37a0(r31)
/* 8064E524  38 7F 0C 74 */	addi r3, r31, 0xc74
/* 8064E528  38 80 00 FE */	li r4, 0xfe
/* 8064E52C  38 A0 00 00 */	li r5, 0
/* 8064E530  7F E6 FB 78 */	mr r6, r31
/* 8064E534  4B A3 53 2D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8064E538  3B 00 00 00 */	li r24, 0
/* 8064E53C  3B 60 00 00 */	li r27, 0
/* 8064E540  3B 5F 0C 74 */	addi r26, r31, 0xc74
lbl_8064E544:
/* 8064E544  7F 3F DA 14 */	add r25, r31, r27
/* 8064E548  38 79 1A 18 */	addi r3, r25, 0x1a18
/* 8064E54C  38 9E 01 24 */	addi r4, r30, 0x124
/* 8064E550  4B A3 64 E5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8064E554  93 59 1A 5C */	stw r26, 0x1a5c(r25)
/* 8064E558  38 79 0C B0 */	addi r3, r25, 0xcb0
/* 8064E55C  38 9E 00 E4 */	addi r4, r30, 0xe4
/* 8064E560  4B A3 64 D5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8064E564  93 59 0C F4 */	stw r26, 0xcf4(r25)
/* 8064E568  38 79 27 80 */	addi r3, r25, 0x2780
/* 8064E56C  38 9E 01 64 */	addi r4, r30, 0x164
/* 8064E570  4B A3 64 C5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8064E574  93 59 27 C4 */	stw r26, 0x27c4(r25)
/* 8064E578  3B 18 00 01 */	addi r24, r24, 1
/* 8064E57C  2C 18 00 0B */	cmpwi r24, 0xb
/* 8064E580  3B 7B 01 38 */	addi r27, r27, 0x138
/* 8064E584  41 80 FF C0 */	blt lbl_8064E544
/* 8064E588  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8064E58C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8064E590  38 BF 05 38 */	addi r5, r31, 0x538
/* 8064E594  38 C0 00 03 */	li r6, 3
/* 8064E598  38 E0 00 01 */	li r7, 1
/* 8064E59C  4B C7 2A F9 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8064E5A0  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8064E5A4  3C 80 80 65 */	lis r4, d_a_b_zant__stringBase0@ha /* 0x8064EE60@ha */
/* 8064E5A8  38 84 EE 60 */	addi r4, r4, d_a_b_zant__stringBase0@l /* 0x8064EE60@l */
/* 8064E5AC  38 84 00 24 */	addi r4, r4, 0x24
/* 8064E5B0  4B C7 35 E1 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 8064E5B4  38 1F 05 F0 */	addi r0, r31, 0x5f0
/* 8064E5B8  90 1F 0C 58 */	stw r0, 0xc58(r31)
/* 8064E5BC  38 00 00 00 */	li r0, 0
/* 8064E5C0  98 1F 0C 6E */	stb r0, 0xc6e(r31)
/* 8064E5C4  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8064E5C8  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8064E5CC  38 60 00 00 */	li r3, 0
/* 8064E5D0  38 80 FF FF */	li r4, -1
/* 8064E5D4  38 00 00 09 */	li r0, 9
/* 8064E5D8  7C 09 03 A6 */	mtctr r0
lbl_8064E5DC:
/* 8064E5DC  38 03 07 3C */	addi r0, r3, 0x73c
/* 8064E5E0  7C 9F 01 2E */	stwx r4, r31, r0
/* 8064E5E4  38 63 00 04 */	addi r3, r3, 4
/* 8064E5E8  42 00 FF F4 */	bdnz lbl_8064E5DC
/* 8064E5EC  38 60 00 00 */	li r3, 0
/* 8064E5F0  38 80 FF FF */	li r4, -1
/* 8064E5F4  38 00 00 04 */	li r0, 4
/* 8064E5F8  7C 09 03 A6 */	mtctr r0
lbl_8064E5FC:
/* 8064E5FC  38 03 07 2C */	addi r0, r3, 0x72c
/* 8064E600  7C 9F 01 2E */	stwx r4, r31, r0
/* 8064E604  38 63 00 04 */	addi r3, r3, 4
/* 8064E608  42 00 FF F4 */	bdnz lbl_8064E5FC
/* 8064E60C  38 00 FF FF */	li r0, -1
/* 8064E610  90 1F 07 24 */	stw r0, 0x724(r31)
/* 8064E614  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha /* 0x80450D64@ha */
/* 8064E618  38 63 0D 64 */	addi r3, r3, struct_80450D64+0x0@l /* 0x80450D64@l */
/* 8064E61C  88 63 00 00 */	lbz r3, 0(r3)
/* 8064E620  7C 63 07 74 */	extsb r3, r3
/* 8064E624  2C 03 00 3C */	cmpwi r3, 0x3c
/* 8064E628  40 82 00 18 */	bne lbl_8064E640
/* 8064E62C  38 00 00 06 */	li r0, 6
/* 8064E630  98 1F 06 FB */	stb r0, 0x6fb(r31)
/* 8064E634  38 00 00 01 */	li r0, 1
/* 8064E638  98 1F 07 18 */	stb r0, 0x718(r31)
/* 8064E63C  48 00 00 34 */	b lbl_8064E670
lbl_8064E640:
/* 8064E640  2C 03 00 32 */	cmpwi r3, 0x32
/* 8064E644  40 82 00 10 */	bne lbl_8064E654
/* 8064E648  38 00 00 00 */	li r0, 0
/* 8064E64C  98 1F 06 FB */	stb r0, 0x6fb(r31)
/* 8064E650  48 00 00 20 */	b lbl_8064E670
lbl_8064E654:
/* 8064E654  38 03 FF CC */	addi r0, r3, -52
/* 8064E658  98 1F 06 FB */	stb r0, 0x6fb(r31)
/* 8064E65C  88 1F 06 FB */	lbz r0, 0x6fb(r31)
/* 8064E660  28 00 00 07 */	cmplwi r0, 7
/* 8064E664  41 80 00 0C */	blt lbl_8064E670
/* 8064E668  38 00 00 01 */	li r0, 1
/* 8064E66C  98 1F 06 FB */	stb r0, 0x6fb(r31)
lbl_8064E670:
/* 8064E670  88 1F 06 FB */	lbz r0, 0x6fb(r31)
/* 8064E674  28 00 00 00 */	cmplwi r0, 0
/* 8064E678  41 82 00 40 */	beq lbl_8064E6B8
/* 8064E67C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8064E680  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8064E684  80 63 00 00 */	lwz r3, 0(r3)
/* 8064E688  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8064E68C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000062@ha */
/* 8064E690  38 84 00 62 */	addi r4, r4, 0x0062 /* 0x01000062@l */
/* 8064E694  38 A0 00 00 */	li r5, 0
/* 8064E698  38 C0 00 00 */	li r6, 0
/* 8064E69C  4B C6 09 75 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 8064E6A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8064E6A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8064E6A8  80 63 00 00 */	lwz r3, 0(r3)
/* 8064E6AC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8064E6B0  88 9F 06 FB */	lbz r4, 0x6fb(r31)
/* 8064E6B4  4B C6 18 D9 */	bl changeBgmStatus__8Z2SeqMgrFl
lbl_8064E6B8:
/* 8064E6B8  7F E3 FB 78 */	mr r3, r31
/* 8064E6BC  4B FF CF E1 */	bl initNextRoom__10daB_ZANT_cFv
/* 8064E6C0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8064E6C4  D0 1F 06 C8 */	stfs f0, 0x6c8(r31)
/* 8064E6C8  7F E3 FB 78 */	mr r3, r31
/* 8064E6CC  38 80 00 01 */	li r4, 1
/* 8064E6D0  4B FF DA F1 */	bl setBaseActionMode__10daB_ZANT_cFi
/* 8064E6D4  88 1F 06 FB */	lbz r0, 0x6fb(r31)
/* 8064E6D8  28 00 00 01 */	cmplwi r0, 1
/* 8064E6DC  40 82 00 0C */	bne lbl_8064E6E8
/* 8064E6E0  38 00 00 00 */	li r0, 0
/* 8064E6E4  98 1F 07 0B */	stb r0, 0x70b(r31)
lbl_8064E6E8:
/* 8064E6E8  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8064E6EC  D0 1F 06 C0 */	stfs f0, 0x6c0(r31)
/* 8064E6F0  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 8064E6F4  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 8064E6F8  60 00 02 00 */	ori r0, r0, 0x200
/* 8064E6FC  B0 1F 05 8E */	sth r0, 0x58e(r31)
/* 8064E700  7F E3 FB 78 */	mr r3, r31
/* 8064E704  4B FF E4 19 */	bl mtx_set__10daB_ZANT_cFv
lbl_8064E708:
/* 8064E708  7F 83 E3 78 */	mr r3, r28
lbl_8064E70C:
/* 8064E70C  39 61 00 30 */	addi r11, r1, 0x30
/* 8064E710  4B D1 3B 05 */	bl _restgpr_24
/* 8064E714  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8064E718  7C 08 03 A6 */	mtlr r0
/* 8064E71C  38 21 00 30 */	addi r1, r1, 0x30
/* 8064E720  4E 80 00 20 */	blr 
