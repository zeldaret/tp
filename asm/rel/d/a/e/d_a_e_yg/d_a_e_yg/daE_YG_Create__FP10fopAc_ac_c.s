lbl_807FBA88:
/* 807FBA88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807FBA8C  7C 08 02 A6 */	mflr r0
/* 807FBA90  90 01 00 44 */	stw r0, 0x44(r1)
/* 807FBA94  39 61 00 40 */	addi r11, r1, 0x40
/* 807FBA98  4B B6 67 34 */	b _savegpr_25
/* 807FBA9C  7C 7F 1B 78 */	mr r31, r3
/* 807FBAA0  3C 80 80 80 */	lis r4, lit_3801@ha
/* 807FBAA4  3B C4 CC B4 */	addi r30, r4, lit_3801@l
/* 807FBAA8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807FBAAC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807FBAB0  40 82 01 74 */	bne lbl_807FBC24
/* 807FBAB4  7F E0 FB 79 */	or. r0, r31, r31
/* 807FBAB8  41 82 01 60 */	beq lbl_807FBC18
/* 807FBABC  7C 1A 03 78 */	mr r26, r0
/* 807FBAC0  4B 81 D0 A4 */	b __ct__10fopAc_ac_cFv
/* 807FBAC4  38 7A 05 D8 */	addi r3, r26, 0x5d8
/* 807FBAC8  4B AC 54 9C */	b __ct__15Z2CreatureEnemyFv
/* 807FBACC  38 7A 06 98 */	addi r3, r26, 0x698
/* 807FBAD0  4B 87 A3 DC */	b __ct__12dBgS_AcchCirFv
/* 807FBAD4  3B 3A 06 D8 */	addi r25, r26, 0x6d8
/* 807FBAD8  7F 23 CB 78 */	mr r3, r25
/* 807FBADC  4B 87 A5 C4 */	b __ct__9dBgS_AcchFv
/* 807FBAE0  3C 60 80 80 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 807FBAE4  38 63 CF E8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 807FBAE8  90 79 00 10 */	stw r3, 0x10(r25)
/* 807FBAEC  38 03 00 0C */	addi r0, r3, 0xc
/* 807FBAF0  90 19 00 14 */	stw r0, 0x14(r25)
/* 807FBAF4  38 03 00 18 */	addi r0, r3, 0x18
/* 807FBAF8  90 19 00 24 */	stw r0, 0x24(r25)
/* 807FBAFC  38 79 00 14 */	addi r3, r25, 0x14
/* 807FBB00  4B 87 D3 68 */	b SetObj__16dBgS_PolyPassChkFv
/* 807FBB04  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 807FBB08  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 807FBB0C  90 1A 08 CC */	stw r0, 0x8cc(r26)
/* 807FBB10  38 7A 08 D0 */	addi r3, r26, 0x8d0
/* 807FBB14  4B 88 7C 4C */	b __ct__10dCcD_GSttsFv
/* 807FBB18  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 807FBB1C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 807FBB20  90 7A 08 CC */	stw r3, 0x8cc(r26)
/* 807FBB24  38 03 00 20 */	addi r0, r3, 0x20
/* 807FBB28  90 1A 08 D0 */	stw r0, 0x8d0(r26)
/* 807FBB2C  3B 3A 08 F0 */	addi r25, r26, 0x8f0
/* 807FBB30  7F 23 CB 78 */	mr r3, r25
/* 807FBB34  4B 88 7E F4 */	b __ct__12dCcD_GObjInfFv
/* 807FBB38  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807FBB3C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807FBB40  90 19 01 20 */	stw r0, 0x120(r25)
/* 807FBB44  3C 60 80 80 */	lis r3, __vt__8cM3dGAab@ha
/* 807FBB48  38 03 CF DC */	addi r0, r3, __vt__8cM3dGAab@l
/* 807FBB4C  90 19 01 1C */	stw r0, 0x11c(r25)
/* 807FBB50  3C 60 80 80 */	lis r3, __vt__8cM3dGSph@ha
/* 807FBB54  38 03 CF D0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807FBB58  90 19 01 34 */	stw r0, 0x134(r25)
/* 807FBB5C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807FBB60  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807FBB64  90 79 01 20 */	stw r3, 0x120(r25)
/* 807FBB68  3B A3 00 58 */	addi r29, r3, 0x58
/* 807FBB6C  93 B9 01 34 */	stw r29, 0x134(r25)
/* 807FBB70  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807FBB74  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807FBB78  90 79 00 3C */	stw r3, 0x3c(r25)
/* 807FBB7C  3B 83 00 2C */	addi r28, r3, 0x2c
/* 807FBB80  93 99 01 20 */	stw r28, 0x120(r25)
/* 807FBB84  3B 63 00 84 */	addi r27, r3, 0x84
/* 807FBB88  93 79 01 34 */	stw r27, 0x134(r25)
/* 807FBB8C  3B 3A 0A 28 */	addi r25, r26, 0xa28
/* 807FBB90  7F 23 CB 78 */	mr r3, r25
/* 807FBB94  4B 88 7E 94 */	b __ct__12dCcD_GObjInfFv
/* 807FBB98  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807FBB9C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807FBBA0  90 19 01 20 */	stw r0, 0x120(r25)
/* 807FBBA4  3C 60 80 80 */	lis r3, __vt__8cM3dGAab@ha
/* 807FBBA8  38 03 CF DC */	addi r0, r3, __vt__8cM3dGAab@l
/* 807FBBAC  90 19 01 1C */	stw r0, 0x11c(r25)
/* 807FBBB0  3C 60 80 80 */	lis r3, __vt__8cM3dGSph@ha
/* 807FBBB4  38 03 CF D0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 807FBBB8  90 19 01 34 */	stw r0, 0x134(r25)
/* 807FBBBC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807FBBC0  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 807FBBC4  90 19 01 20 */	stw r0, 0x120(r25)
/* 807FBBC8  93 B9 01 34 */	stw r29, 0x134(r25)
/* 807FBBCC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807FBBD0  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 807FBBD4  90 19 00 3C */	stw r0, 0x3c(r25)
/* 807FBBD8  93 99 01 20 */	stw r28, 0x120(r25)
/* 807FBBDC  93 79 01 34 */	stw r27, 0x134(r25)
/* 807FBBE0  38 7A 0B B4 */	addi r3, r26, 0xbb4
/* 807FBBE4  3C 80 80 80 */	lis r4, __ct__7yg_ke_sFv@ha
/* 807FBBE8  38 84 BE EC */	addi r4, r4, __ct__7yg_ke_sFv@l
/* 807FBBEC  3C A0 80 80 */	lis r5, __dt__7yg_ke_sFv@ha
/* 807FBBF0  38 A5 BE 70 */	addi r5, r5, __dt__7yg_ke_sFv@l
/* 807FBBF4  38 C0 00 FC */	li r6, 0xfc
/* 807FBBF8  38 E0 00 0D */	li r7, 0xd
/* 807FBBFC  4B B6 61 64 */	b __construct_array
/* 807FBC00  3C 60 80 80 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 807FBC04  38 03 CF BC */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 807FBC08  90 1A 18 80 */	stw r0, 0x1880(r26)
/* 807FBC0C  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat0_c@ha
/* 807FBC10  38 03 32 5C */	addi r0, r3, __vt__19mDoExt_3DlineMat0_c@l
/* 807FBC14  90 1A 18 80 */	stw r0, 0x1880(r26)
lbl_807FBC18:
/* 807FBC18  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 807FBC1C  60 00 00 08 */	ori r0, r0, 8
/* 807FBC20  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_807FBC24:
/* 807FBC24  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807FBC28  3C 80 80 80 */	lis r4, stringBase0@ha
/* 807FBC2C  38 84 CD F0 */	addi r4, r4, stringBase0@l
/* 807FBC30  4B 83 12 8C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807FBC34  7C 7B 1B 78 */	mr r27, r3
/* 807FBC38  2C 1B 00 04 */	cmpwi r27, 4
/* 807FBC3C  40 82 02 18 */	bne lbl_807FBE54
/* 807FBC40  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807FBC44  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 807FBC48  2C 04 00 FF */	cmpwi r4, 0xff
/* 807FBC4C  41 82 00 28 */	beq lbl_807FBC74
/* 807FBC50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FBC54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807FBC58  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807FBC5C  7C 05 07 74 */	extsb r5, r0
/* 807FBC60  4B 83 97 00 */	b isSwitch__10dSv_info_cCFii
/* 807FBC64  2C 03 00 00 */	cmpwi r3, 0
/* 807FBC68  41 82 00 0C */	beq lbl_807FBC74
/* 807FBC6C  38 60 00 05 */	li r3, 5
/* 807FBC70  48 00 01 E8 */	b lbl_807FBE58
lbl_807FBC74:
/* 807FBC74  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807FBC78  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 807FBC7C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807FBC80  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 807FBC84  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 807FBC88  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 807FBC8C  54 00 46 3E */	srwi r0, r0, 0x18
/* 807FBC90  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 807FBC94  7F E3 FB 78 */	mr r3, r31
/* 807FBC98  3C 80 80 80 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807FBC9C  38 84 B9 78 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807FBCA0  38 A0 3C 60 */	li r5, 0x3c60
/* 807FBCA4  4B 81 E8 0C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807FBCA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807FBCAC  40 82 00 0C */	bne lbl_807FBCB8
/* 807FBCB0  38 60 00 05 */	li r3, 5
/* 807FBCB4  48 00 01 A4 */	b lbl_807FBE58
lbl_807FBCB8:
/* 807FBCB8  3C 60 80 80 */	lis r3, struct_807FD05C+0x1@ha
/* 807FBCBC  8C 03 D0 5D */	lbzu r0, struct_807FD05C+0x1@l(r3)
/* 807FBCC0  28 00 00 00 */	cmplwi r0, 0
/* 807FBCC4  40 82 00 20 */	bne lbl_807FBCE4
/* 807FBCC8  38 00 00 01 */	li r0, 1
/* 807FBCCC  98 1F 18 9C */	stb r0, 0x189c(r31)
/* 807FBCD0  98 03 00 00 */	stb r0, 0(r3)
/* 807FBCD4  38 00 FF FF */	li r0, -1
/* 807FBCD8  3C 60 80 80 */	lis r3, l_HIO@ha
/* 807FBCDC  38 63 D0 6C */	addi r3, r3, l_HIO@l
/* 807FBCE0  98 03 00 04 */	stb r0, 4(r3)
lbl_807FBCE4:
/* 807FBCE4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 807FBCE8  80 63 00 04 */	lwz r3, 4(r3)
/* 807FBCEC  38 03 00 24 */	addi r0, r3, 0x24
/* 807FBCF0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 807FBCF4  38 00 00 01 */	li r0, 1
/* 807FBCF8  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807FBCFC  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 807FBD00  38 7F 08 B4 */	addi r3, r31, 0x8b4
/* 807FBD04  38 80 00 1E */	li r4, 0x1e
/* 807FBD08  38 A0 00 00 */	li r5, 0
/* 807FBD0C  7F E6 FB 78 */	mr r6, r31
/* 807FBD10  4B 88 7B 50 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807FBD14  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 807FBD18  3C 80 80 80 */	lis r4, cc_sph_src@ha
/* 807FBD1C  38 84 CE C8 */	addi r4, r4, cc_sph_src@l
/* 807FBD20  4B 88 8D 14 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807FBD24  38 1F 08 B4 */	addi r0, r31, 0x8b4
/* 807FBD28  90 1F 09 34 */	stw r0, 0x934(r31)
/* 807FBD2C  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 807FBD30  3C 80 80 80 */	lis r4, at_sph_src@ha
/* 807FBD34  38 84 CF 08 */	addi r4, r4, at_sph_src@l
/* 807FBD38  4B 88 8C FC */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807FBD3C  38 1F 08 B4 */	addi r0, r31, 0x8b4
/* 807FBD40  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 807FBD44  38 00 00 00 */	li r0, 0
/* 807FBD48  90 01 00 08 */	stw r0, 8(r1)
/* 807FBD4C  38 7F 06 D8 */	addi r3, r31, 0x6d8
/* 807FBD50  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807FBD54  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 807FBD58  7F E6 FB 78 */	mr r6, r31
/* 807FBD5C  38 E0 00 01 */	li r7, 1
/* 807FBD60  39 1F 06 98 */	addi r8, r31, 0x698
/* 807FBD64  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 807FBD68  39 40 00 00 */	li r10, 0
/* 807FBD6C  4B 87 A4 DC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807FBD70  38 7F 06 98 */	addi r3, r31, 0x698
/* 807FBD74  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 807FBD78  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 807FBD7C  4B 87 A1 DC */	b SetWall__12dBgS_AcchCirFff
/* 807FBD80  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 807FBD84  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 807FBD88  38 BF 05 38 */	addi r5, r31, 0x538
/* 807FBD8C  38 C0 00 03 */	li r6, 3
/* 807FBD90  38 E0 00 01 */	li r7, 1
/* 807FBD94  4B AC 53 00 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807FBD98  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 807FBD9C  3C 80 80 80 */	lis r4, stringBase0@ha
/* 807FBDA0  38 84 CD F0 */	addi r4, r4, stringBase0@l
/* 807FBDA4  38 84 00 05 */	addi r4, r4, 5
/* 807FBDA8  4B AC 5D E8 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 807FBDAC  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 807FBDB0  90 1F 0B 68 */	stw r0, 0xb68(r31)
/* 807FBDB4  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 807FBDB8  4B A6 BB 9C */	b cM_rndF__Ff
/* 807FBDBC  FC 00 08 1E */	fctiwz f0, f1
/* 807FBDC0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807FBDC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807FBDC8  B0 1F 06 7C */	sth r0, 0x67c(r31)
/* 807FBDCC  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 807FBDD0  2C 04 00 FF */	cmpwi r4, 0xff
/* 807FBDD4  41 82 00 38 */	beq lbl_807FBE0C
/* 807FBDD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807FBDDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807FBDE0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 807FBDE4  7C 05 07 74 */	extsb r5, r0
/* 807FBDE8  4B 83 95 78 */	b isSwitch__10dSv_info_cCFii
/* 807FBDEC  2C 03 00 00 */	cmpwi r3, 0
/* 807FBDF0  40 82 00 14 */	bne lbl_807FBE04
/* 807FBDF4  38 00 00 01 */	li r0, 1
/* 807FBDF8  98 1F 0B A5 */	stb r0, 0xba5(r31)
/* 807FBDFC  38 00 00 0A */	li r0, 0xa
/* 807FBE00  B0 1F 06 7E */	sth r0, 0x67e(r31)
lbl_807FBE04:
/* 807FBE04  38 00 00 01 */	li r0, 1
/* 807FBE08  98 1F 0B A6 */	stb r0, 0xba6(r31)
lbl_807FBE0C:
/* 807FBE0C  3C 60 80 80 */	lis r3, l_HIO@ha
/* 807FBE10  38 63 D0 6C */	addi r3, r3, l_HIO@l
/* 807FBE14  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807FBE18  D0 1F 0B AC */	stfs f0, 0xbac(r31)
/* 807FBE1C  38 00 01 E4 */	li r0, 0x1e4
/* 807FBE20  B0 01 00 10 */	sth r0, 0x10(r1)
/* 807FBE24  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 807FBE28  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 807FBE2C  38 81 00 10 */	addi r4, r1, 0x10
/* 807FBE30  4B 81 D9 C8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807FBE34  28 03 00 00 */	cmplwi r3, 0
/* 807FBE38  41 82 00 14 */	beq lbl_807FBE4C
/* 807FBE3C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 807FBE40  D0 1F 0B AC */	stfs f0, 0xbac(r31)
/* 807FBE44  38 00 00 01 */	li r0, 1
/* 807FBE48  98 1F 0B A6 */	stb r0, 0xba6(r31)
lbl_807FBE4C:
/* 807FBE4C  7F E3 FB 78 */	mr r3, r31
/* 807FBE50  4B FF F5 AD */	bl daE_YG_Execute__FP10e_yg_class
lbl_807FBE54:
/* 807FBE54  7F 63 DB 78 */	mr r3, r27
lbl_807FBE58:
/* 807FBE58  39 61 00 40 */	addi r11, r1, 0x40
/* 807FBE5C  4B B6 63 BC */	b _restgpr_25
/* 807FBE60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 807FBE64  7C 08 03 A6 */	mtlr r0
/* 807FBE68  38 21 00 40 */	addi r1, r1, 0x40
/* 807FBE6C  4E 80 00 20 */	blr 
