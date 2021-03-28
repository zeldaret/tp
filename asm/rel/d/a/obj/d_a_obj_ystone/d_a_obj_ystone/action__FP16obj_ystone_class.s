lbl_80D3E25C:
/* 80D3E25C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80D3E260  7C 08 02 A6 */	mflr r0
/* 80D3E264  90 01 00 54 */	stw r0, 0x54(r1)
/* 80D3E268  39 61 00 50 */	addi r11, r1, 0x50
/* 80D3E26C  4B 62 3F 64 */	b _savegpr_26
/* 80D3E270  7C 7F 1B 78 */	mr r31, r3
/* 80D3E274  3C 60 80 D4 */	lis r3, l_bmdIndex@ha
/* 80D3E278  3B C3 EC 0C */	addi r30, r3, l_bmdIndex@l
/* 80D3E27C  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80D3E280  28 00 00 03 */	cmplwi r0, 3
/* 80D3E284  40 80 00 90 */	bge lbl_80D3E314
/* 80D3E288  A8 1F 05 86 */	lha r0, 0x586(r31)
/* 80D3E28C  2C 00 00 00 */	cmpwi r0, 0
/* 80D3E290  41 82 00 08 */	beq lbl_80D3E298
/* 80D3E294  48 00 00 10 */	b lbl_80D3E2A4
lbl_80D3E298:
/* 80D3E298  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80D3E29C  38 03 01 00 */	addi r0, r3, 0x100
/* 80D3E2A0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80D3E2A4:
/* 80D3E2A4  7F E3 FB 78 */	mr r3, r31
/* 80D3E2A8  4B FF FE D9 */	bl setModelBaseMtx__FP16obj_ystone_class
/* 80D3E2AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3E2B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3E2B4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D3E2B8  38 00 00 FF */	li r0, 0xff
/* 80D3E2BC  90 01 00 08 */	stw r0, 8(r1)
/* 80D3E2C0  38 80 00 00 */	li r4, 0
/* 80D3E2C4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D3E2C8  38 00 FF FF */	li r0, -1
/* 80D3E2CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D3E2D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D3E2D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D3E2D8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D3E2DC  80 9F 05 94 */	lwz r4, 0x594(r31)
/* 80D3E2E0  38 A0 00 00 */	li r5, 0
/* 80D3E2E4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008403@ha */
/* 80D3E2E8  38 C6 84 03 */	addi r6, r6, 0x8403 /* 0x00008403@l */
/* 80D3E2EC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80D3E2F0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80D3E2F4  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80D3E2F8  39 40 00 00 */	li r10, 0
/* 80D3E2FC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80D3E300  4B 30 F1 CC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D3E304  90 7F 05 94 */	stw r3, 0x594(r31)
/* 80D3E308  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80D3E30C  4B 2C F1 1C */	b play__14mDoExt_baseAnmFv
/* 80D3E310  48 00 03 C4 */	b lbl_80D3E6D4
lbl_80D3E314:
/* 80D3E314  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80D3E318  2C 03 00 00 */	cmpwi r3, 0
/* 80D3E31C  41 82 00 0C */	beq lbl_80D3E328
/* 80D3E320  38 03 FF FF */	addi r0, r3, -1
/* 80D3E324  90 1F 05 90 */	stw r0, 0x590(r31)
lbl_80D3E328:
/* 80D3E328  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 80D3E32C  28 00 00 06 */	cmplwi r0, 6
/* 80D3E330  41 81 03 64 */	bgt lbl_80D3E694
/* 80D3E334  3C 60 80 D4 */	lis r3, lit_3970@ha
/* 80D3E338  38 63 ED 10 */	addi r3, r3, lit_3970@l
/* 80D3E33C  54 00 10 3A */	slwi r0, r0, 2
/* 80D3E340  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D3E344  7C 09 03 A6 */	mtctr r0
/* 80D3E348  4E 80 04 20 */	bctr 
lbl_80D3E34C:
/* 80D3E34C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80D3E350  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80D3E354  38 80 00 00 */	li r4, 0
/* 80D3E358  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D3E35C  38 DF 01 0C */	addi r6, r31, 0x10c
/* 80D3E360  4B 46 54 64 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 80D3E364  3B 40 00 00 */	li r26, 0
/* 80D3E368  3B A0 00 00 */	li r29, 0
/* 80D3E36C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3E370  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80D3E374  3C 60 80 D4 */	lis r3, mirror_effect_id@ha
/* 80D3E378  3B 83 EC FC */	addi r28, r3, mirror_effect_id@l
lbl_80D3E37C:
/* 80D3E37C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 80D3E380  38 80 00 00 */	li r4, 0
/* 80D3E384  90 81 00 08 */	stw r4, 8(r1)
/* 80D3E388  38 00 FF FF */	li r0, -1
/* 80D3E38C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D3E390  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D3E394  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D3E398  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D3E39C  38 80 00 00 */	li r4, 0
/* 80D3E3A0  7C BC EA 2E */	lhzx r5, r28, r29
/* 80D3E3A4  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80D3E3A8  38 FF 01 0C */	addi r7, r31, 0x10c
/* 80D3E3AC  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80D3E3B0  39 20 00 00 */	li r9, 0
/* 80D3E3B4  39 40 00 FF */	li r10, 0xff
/* 80D3E3B8  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80D3E3BC  4B 30 E6 D4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D3E3C0  3B 5A 00 01 */	addi r26, r26, 1
/* 80D3E3C4  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80D3E3C8  3B BD 00 02 */	addi r29, r29, 2
/* 80D3E3CC  41 80 FF B0 */	blt lbl_80D3E37C
/* 80D3E3D0  38 00 00 01 */	li r0, 1
/* 80D3E3D4  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80D3E3D8  38 00 00 78 */	li r0, 0x78
/* 80D3E3DC  90 1F 05 90 */	stw r0, 0x590(r31)
/* 80D3E3E0  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80D3E3E4  54 00 10 3A */	slwi r0, r0, 2
/* 80D3E3E8  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3E3EC  38 63 EC BC */	addi r3, r3, l_arcName@l
/* 80D3E3F0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D3E3F4  38 80 00 05 */	li r4, 5
/* 80D3E3F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D3E3FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D3E400  3C A5 00 02 */	addis r5, r5, 2
/* 80D3E404  38 C0 00 80 */	li r6, 0x80
/* 80D3E408  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D3E40C  4B 2F DE E0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D3E410  7C 64 1B 78 */	mr r4, r3
/* 80D3E414  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3E418  38 A0 00 00 */	li r5, 0
/* 80D3E41C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80D3E420  FC 40 08 90 */	fmr f2, f1
/* 80D3E424  FC 60 08 90 */	fmr f3, f1
/* 80D3E428  C0 9E 00 4C */	lfs f4, 0x4c(r30)
/* 80D3E42C  4B 2D 2A 44 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D3E430  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80D3E434  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3E438  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D3E43C  48 00 02 58 */	b lbl_80D3E694
lbl_80D3E440:
/* 80D3E440  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 80D3E444  2C 00 00 00 */	cmpwi r0, 0
/* 80D3E448  40 82 00 24 */	bne lbl_80D3E46C
/* 80D3E44C  38 00 00 02 */	li r0, 2
/* 80D3E450  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80D3E454  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80D3E458  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3E45C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80D3E460  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 80D3E464  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3E468  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80D3E46C:
/* 80D3E46C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3E470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3E474  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D3E478  38 00 00 FF */	li r0, 0xff
/* 80D3E47C  90 01 00 08 */	stw r0, 8(r1)
/* 80D3E480  38 80 00 00 */	li r4, 0
/* 80D3E484  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D3E488  38 00 FF FF */	li r0, -1
/* 80D3E48C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D3E490  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D3E494  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D3E498  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D3E49C  80 9F 05 94 */	lwz r4, 0x594(r31)
/* 80D3E4A0  38 A0 00 00 */	li r5, 0
/* 80D3E4A4  3C C0 00 01 */	lis r6, 0x0001 /* 0x000089A3@ha */
/* 80D3E4A8  38 C6 89 A3 */	addi r6, r6, 0x89A3 /* 0x000089A3@l */
/* 80D3E4AC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80D3E4B0  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80D3E4B4  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80D3E4B8  39 40 00 00 */	li r10, 0
/* 80D3E4BC  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80D3E4C0  4B 30 F0 0C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D3E4C4  90 7F 05 94 */	stw r3, 0x594(r31)
/* 80D3E4C8  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80D3E4CC  38 03 01 00 */	addi r0, r3, 0x100
/* 80D3E4D0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D3E4D4  48 00 01 C0 */	b lbl_80D3E694
lbl_80D3E4D8:
/* 80D3E4D8  38 00 00 04 */	li r0, 4
/* 80D3E4DC  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80D3E4E0  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80D3E4E4  54 00 10 3A */	slwi r0, r0, 2
/* 80D3E4E8  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3E4EC  38 63 EC BC */	addi r3, r3, l_arcName@l
/* 80D3E4F0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D3E4F4  38 80 00 06 */	li r4, 6
/* 80D3E4F8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D3E4FC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D3E500  3F 65 00 02 */	addis r27, r5, 2
/* 80D3E504  3B 7B C2 F8 */	addi r27, r27, -15624
/* 80D3E508  7F 65 DB 78 */	mr r5, r27
/* 80D3E50C  38 C0 00 80 */	li r6, 0x80
/* 80D3E510  4B 2F DD DC */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D3E514  7C 64 1B 78 */	mr r4, r3
/* 80D3E518  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3E51C  38 A0 00 00 */	li r5, 0
/* 80D3E520  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80D3E524  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80D3E528  FC 60 08 90 */	fmr f3, f1
/* 80D3E52C  C0 9E 00 4C */	lfs f4, 0x4c(r30)
/* 80D3E530  4B 2D 29 40 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80D3E534  38 00 00 01 */	li r0, 1
/* 80D3E538  98 1F 05 9A */	stb r0, 0x59a(r31)
/* 80D3E53C  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80D3E540  54 00 10 3A */	slwi r0, r0, 2
/* 80D3E544  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3E548  38 63 EC BC */	addi r3, r3, l_arcName@l
/* 80D3E54C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D3E550  38 9E 00 28 */	addi r4, r30, 0x28
/* 80D3E554  7C 84 00 2E */	lwzx r4, r4, r0
/* 80D3E558  7F 65 DB 78 */	mr r5, r27
/* 80D3E55C  38 C0 00 80 */	li r6, 0x80
/* 80D3E560  4B 2F DD 8C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D3E564  7C 65 1B 78 */	mr r5, r3
/* 80D3E568  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3E56C  80 63 00 04 */	lwz r3, 4(r3)
/* 80D3E570  80 83 00 04 */	lwz r4, 4(r3)
/* 80D3E574  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D3E578  38 84 00 58 */	addi r4, r4, 0x58
/* 80D3E57C  38 C0 00 01 */	li r6, 1
/* 80D3E580  38 E0 00 00 */	li r7, 0
/* 80D3E584  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80D3E588  39 00 00 00 */	li r8, 0
/* 80D3E58C  39 20 FF FF */	li r9, -1
/* 80D3E590  4B 2C F0 AC */	b init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
lbl_80D3E594:
/* 80D3E594  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80D3E598  38 03 01 00 */	addi r0, r3, 0x100
/* 80D3E59C  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80D3E5A0  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3E5A4  80 63 00 04 */	lwz r3, 4(r3)
/* 80D3E5A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D3E5AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D3E5B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80D3E5B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80D3E5B8  4B 60 7E F8 */	b PSMTXCopy
/* 80D3E5BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D3E5C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D3E5C4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D3E5C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D3E5CC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D3E5D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D3E5D4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D3E5D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D3E5DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D3E5E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3E5E4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D3E5E8  38 00 00 FF */	li r0, 0xff
/* 80D3E5EC  90 01 00 08 */	stw r0, 8(r1)
/* 80D3E5F0  38 80 00 00 */	li r4, 0
/* 80D3E5F4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D3E5F8  38 00 FF FF */	li r0, -1
/* 80D3E5FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D3E600  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D3E604  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D3E608  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D3E60C  80 9F 05 94 */	lwz r4, 0x594(r31)
/* 80D3E610  38 A0 00 00 */	li r5, 0
/* 80D3E614  3C C0 00 01 */	lis r6, 0x0001 /* 0x000089A4@ha */
/* 80D3E618  38 C6 89 A4 */	addi r6, r6, 0x89A4 /* 0x000089A4@l */
/* 80D3E61C  38 E1 00 20 */	addi r7, r1, 0x20
/* 80D3E620  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80D3E624  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80D3E628  39 40 00 00 */	li r10, 0
/* 80D3E62C  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80D3E630  4B 30 EE 9C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D3E634  90 7F 05 94 */	stw r3, 0x594(r31)
/* 80D3E638  48 00 00 5C */	b lbl_80D3E694
lbl_80D3E63C:
/* 80D3E63C  38 00 00 06 */	li r0, 6
/* 80D3E640  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 80D3E644  88 1F 05 99 */	lbz r0, 0x599(r31)
/* 80D3E648  54 00 10 3A */	slwi r0, r0, 2
/* 80D3E64C  3C 60 80 D4 */	lis r3, l_arcName@ha
/* 80D3E650  38 63 EC BC */	addi r3, r3, l_arcName@l
/* 80D3E654  7C 63 00 2E */	lwzx r3, r3, r0
/* 80D3E658  38 80 00 06 */	li r4, 6
/* 80D3E65C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80D3E660  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80D3E664  3C A5 00 02 */	addis r5, r5, 2
/* 80D3E668  38 C0 00 80 */	li r6, 0x80
/* 80D3E66C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80D3E670  4B 2F DC 7C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D3E674  7C 64 1B 78 */	mr r4, r3
/* 80D3E678  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3E67C  38 A0 00 00 */	li r5, 0
/* 80D3E680  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80D3E684  FC 40 08 90 */	fmr f2, f1
/* 80D3E688  FC 60 08 90 */	fmr f3, f1
/* 80D3E68C  C0 9E 00 4C */	lfs f4, 0x4c(r30)
/* 80D3E690  4B 2D 27 E0 */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
lbl_80D3E694:
/* 80D3E694  88 1F 05 9A */	lbz r0, 0x59a(r31)
/* 80D3E698  28 00 00 00 */	cmplwi r0, 0
/* 80D3E69C  41 82 00 0C */	beq lbl_80D3E6A8
/* 80D3E6A0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D3E6A4  4B 2C ED 84 */	b play__14mDoExt_baseAnmFv
lbl_80D3E6A8:
/* 80D3E6A8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D3E6AC  7C 03 07 74 */	extsb r3, r0
/* 80D3E6B0  4B 2E E9 BC */	b dComIfGp_getReverb__Fi
/* 80D3E6B4  7C 65 1B 78 */	mr r5, r3
/* 80D3E6B8  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3E6BC  38 80 00 00 */	li r4, 0
/* 80D3E6C0  4B 2D 29 F0 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80D3E6C4  7F E3 FB 78 */	mr r3, r31
/* 80D3E6C8  4B FF FA B9 */	bl setModelBaseMtx__FP16obj_ystone_class
/* 80D3E6CC  80 7F 05 7C */	lwz r3, 0x57c(r31)
/* 80D3E6D0  4B 2D 2B 1C */	b modelCalc__16mDoExt_McaMorfSOFv
lbl_80D3E6D4:
/* 80D3E6D4  39 61 00 50 */	addi r11, r1, 0x50
/* 80D3E6D8  4B 62 3B 44 */	b _restgpr_26
/* 80D3E6DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80D3E6E0  7C 08 03 A6 */	mtlr r0
/* 80D3E6E4  38 21 00 50 */	addi r1, r1, 0x50
/* 80D3E6E8  4E 80 00 20 */	blr 
