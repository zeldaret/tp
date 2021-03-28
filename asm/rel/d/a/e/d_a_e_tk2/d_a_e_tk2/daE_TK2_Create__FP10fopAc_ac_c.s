lbl_807BB94C:
/* 807BB94C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807BB950  7C 08 02 A6 */	mflr r0
/* 807BB954  90 01 00 24 */	stw r0, 0x24(r1)
/* 807BB958  39 61 00 20 */	addi r11, r1, 0x20
/* 807BB95C  4B BA 68 7C */	b _savegpr_28
/* 807BB960  7C 7E 1B 78 */	mr r30, r3
/* 807BB964  3C 80 80 7C */	lis r4, lit_3762@ha
/* 807BB968  3B E4 BD A8 */	addi r31, r4, lit_3762@l
/* 807BB96C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 807BB970  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 807BB974  40 82 00 E8 */	bne lbl_807BBA5C
/* 807BB978  7F C0 F3 79 */	or. r0, r30, r30
/* 807BB97C  41 82 00 D4 */	beq lbl_807BBA50
/* 807BB980  7C 1D 03 78 */	mr r29, r0
/* 807BB984  4B 85 D1 E0 */	b __ct__10fopAc_ac_cFv
/* 807BB988  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 807BB98C  4B B0 55 D8 */	b __ct__15Z2CreatureEnemyFv
/* 807BB990  38 7D 06 9C */	addi r3, r29, 0x69c
/* 807BB994  4B 8B A5 18 */	b __ct__12dBgS_AcchCirFv
/* 807BB998  3B 9D 06 DC */	addi r28, r29, 0x6dc
/* 807BB99C  7F 83 E3 78 */	mr r3, r28
/* 807BB9A0  4B 8B A7 00 */	b __ct__9dBgS_AcchFv
/* 807BB9A4  3C 60 80 7C */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 807BB9A8  38 63 BF 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 807BB9AC  90 7C 00 10 */	stw r3, 0x10(r28)
/* 807BB9B0  38 03 00 0C */	addi r0, r3, 0xc
/* 807BB9B4  90 1C 00 14 */	stw r0, 0x14(r28)
/* 807BB9B8  38 03 00 18 */	addi r0, r3, 0x18
/* 807BB9BC  90 1C 00 24 */	stw r0, 0x24(r28)
/* 807BB9C0  38 7C 00 14 */	addi r3, r28, 0x14
/* 807BB9C4  4B 8B D4 A4 */	b SetObj__16dBgS_PolyPassChkFv
/* 807BB9C8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 807BB9CC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 807BB9D0  90 1D 08 CC */	stw r0, 0x8cc(r29)
/* 807BB9D4  38 7D 08 D0 */	addi r3, r29, 0x8d0
/* 807BB9D8  4B 8C 7D 88 */	b __ct__10dCcD_GSttsFv
/* 807BB9DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 807BB9E0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 807BB9E4  90 7D 08 CC */	stw r3, 0x8cc(r29)
/* 807BB9E8  38 03 00 20 */	addi r0, r3, 0x20
/* 807BB9EC  90 1D 08 D0 */	stw r0, 0x8d0(r29)
/* 807BB9F0  3B 9D 08 F0 */	addi r28, r29, 0x8f0
/* 807BB9F4  7F 83 E3 78 */	mr r3, r28
/* 807BB9F8  4B 8C 80 30 */	b __ct__12dCcD_GObjInfFv
/* 807BB9FC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 807BBA00  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 807BBA04  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807BBA08  3C 60 80 7C */	lis r3, __vt__8cM3dGAab@ha
/* 807BBA0C  38 03 BE F8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 807BBA10  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 807BBA14  3C 60 80 7C */	lis r3, __vt__8cM3dGSph@ha
/* 807BBA18  38 03 BE EC */	addi r0, r3, __vt__8cM3dGSph@l
/* 807BBA1C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807BBA20  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 807BBA24  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 807BBA28  90 7C 01 20 */	stw r3, 0x120(r28)
/* 807BBA2C  38 03 00 58 */	addi r0, r3, 0x58
/* 807BBA30  90 1C 01 34 */	stw r0, 0x134(r28)
/* 807BBA34  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 807BBA38  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 807BBA3C  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 807BBA40  38 03 00 2C */	addi r0, r3, 0x2c
/* 807BBA44  90 1C 01 20 */	stw r0, 0x120(r28)
/* 807BBA48  38 03 00 84 */	addi r0, r3, 0x84
/* 807BBA4C  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_807BBA50:
/* 807BBA50  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 807BBA54  60 00 00 08 */	ori r0, r0, 8
/* 807BBA58  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_807BBA5C:
/* 807BBA5C  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 807BBA60  3C 80 80 7C */	lis r4, stringBase0@ha
/* 807BBA64  38 84 BE 20 */	addi r4, r4, stringBase0@l
/* 807BBA68  4B 87 14 54 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 807BBA6C  7C 7D 1B 78 */	mr r29, r3
/* 807BBA70  2C 1D 00 04 */	cmpwi r29, 4
/* 807BBA74  40 82 01 70 */	bne lbl_807BBBE4
/* 807BBA78  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807BBA7C  98 1E 05 B4 */	stb r0, 0x5b4(r30)
/* 807BBA80  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807BBA84  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 807BBA88  98 1E 05 B5 */	stb r0, 0x5b5(r30)
/* 807BBA8C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807BBA90  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 807BBA94  98 1E 05 B6 */	stb r0, 0x5b6(r30)
/* 807BBA98  7F C3 F3 78 */	mr r3, r30
/* 807BBA9C  3C 80 80 7C */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 807BBAA0  38 84 B8 54 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 807BBAA4  38 A0 23 A0 */	li r5, 0x23a0
/* 807BBAA8  4B 85 EA 08 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 807BBAAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807BBAB0  40 82 00 0C */	bne lbl_807BBABC
/* 807BBAB4  38 60 00 05 */	li r3, 5
/* 807BBAB8  48 00 01 30 */	b lbl_807BBBE8
lbl_807BBABC:
/* 807BBABC  3C 60 80 7C */	lis r3, data_807BBF40@ha
/* 807BBAC0  8C 03 BF 40 */	lbzu r0, data_807BBF40@l(r3)
/* 807BBAC4  28 00 00 00 */	cmplwi r0, 0
/* 807BBAC8  40 82 00 20 */	bne lbl_807BBAE8
/* 807BBACC  38 00 00 01 */	li r0, 1
/* 807BBAD0  98 1E 0A 4C */	stb r0, 0xa4c(r30)
/* 807BBAD4  98 03 00 00 */	stb r0, 0(r3)
/* 807BBAD8  38 00 FF FF */	li r0, -1
/* 807BBADC  3C 60 80 7C */	lis r3, l_HIO@ha
/* 807BBAE0  38 63 BF 50 */	addi r3, r3, l_HIO@l
/* 807BBAE4  98 03 00 04 */	stb r0, 4(r3)
lbl_807BBAE8:
/* 807BBAE8  38 00 00 04 */	li r0, 4
/* 807BBAEC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 807BBAF0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 807BBAF4  80 63 00 04 */	lwz r3, 4(r3)
/* 807BBAF8  38 03 00 24 */	addi r0, r3, 0x24
/* 807BBAFC  90 1E 05 04 */	stw r0, 0x504(r30)
/* 807BBB00  7F C3 F3 78 */	mr r3, r30
/* 807BBB04  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807BBB08  FC 40 08 90 */	fmr f2, f1
/* 807BBB0C  FC 60 08 90 */	fmr f3, f1
/* 807BBB10  4B 85 EA 18 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 807BBB14  7F C3 F3 78 */	mr r3, r30
/* 807BBB18  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 807BBB1C  FC 40 08 90 */	fmr f2, f1
/* 807BBB20  FC 60 08 90 */	fmr f3, f1
/* 807BBB24  4B 85 EA 14 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 807BBB28  38 00 00 04 */	li r0, 4
/* 807BBB2C  98 1E 05 46 */	stb r0, 0x546(r30)
/* 807BBB30  38 00 00 00 */	li r0, 0
/* 807BBB34  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 807BBB38  B0 1E 05 60 */	sth r0, 0x560(r30)
/* 807BBB3C  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 807BBB40  38 80 00 64 */	li r4, 0x64
/* 807BBB44  38 A0 00 00 */	li r5, 0
/* 807BBB48  7F C6 F3 78 */	mr r6, r30
/* 807BBB4C  4B 8C 7D 14 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807BBB50  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 807BBB54  3C 80 80 7C */	lis r4, cc_sph_src@ha
/* 807BBB58  38 84 BE 5C */	addi r4, r4, cc_sph_src@l
/* 807BBB5C  4B 8C 8E D8 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807BBB60  38 1E 08 B4 */	addi r0, r30, 0x8b4
/* 807BBB64  90 1E 09 34 */	stw r0, 0x934(r30)
/* 807BBB68  38 00 00 00 */	li r0, 0
/* 807BBB6C  90 01 00 08 */	stw r0, 8(r1)
/* 807BBB70  38 7E 06 DC */	addi r3, r30, 0x6dc
/* 807BBB74  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807BBB78  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 807BBB7C  7F C6 F3 78 */	mr r6, r30
/* 807BBB80  38 E0 00 01 */	li r7, 1
/* 807BBB84  39 1E 06 9C */	addi r8, r30, 0x69c
/* 807BBB88  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 807BBB8C  39 40 00 00 */	li r10, 0
/* 807BBB90  4B 8B A6 B8 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 807BBB94  38 7E 06 9C */	addi r3, r30, 0x69c
/* 807BBB98  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 807BBB9C  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 807BBBA0  4B 8B A3 B8 */	b SetWall__12dBgS_AcchCirFff
/* 807BBBA4  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BBBA8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807BBBAC  38 BE 05 38 */	addi r5, r30, 0x538
/* 807BBBB0  38 C0 00 03 */	li r6, 3
/* 807BBBB4  38 E0 00 01 */	li r7, 1
/* 807BBBB8  4B B0 54 DC */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 807BBBBC  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 807BBBC0  3C 80 80 7C */	lis r4, stringBase0@ha
/* 807BBBC4  38 84 BE 20 */	addi r4, r4, stringBase0@l
/* 807BBBC8  4B B0 5F C8 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 807BBBCC  38 1E 05 C0 */	addi r0, r30, 0x5c0
/* 807BBBD0  90 1E 0A 30 */	stw r0, 0xa30(r30)
/* 807BBBD4  38 00 00 14 */	li r0, 0x14
/* 807BBBD8  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 807BBBDC  7F C3 F3 78 */	mr r3, r30
/* 807BBBE0  4B FF F5 49 */	bl daE_TK2_Execute__FP11e_tk2_class
lbl_807BBBE4:
/* 807BBBE4  7F A3 EB 78 */	mr r3, r29
lbl_807BBBE8:
/* 807BBBE8  39 61 00 20 */	addi r11, r1, 0x20
/* 807BBBEC  4B BA 66 38 */	b _restgpr_28
/* 807BBBF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807BBBF4  7C 08 03 A6 */	mtlr r0
/* 807BBBF8  38 21 00 20 */	addi r1, r1, 0x20
/* 807BBBFC  4E 80 00 20 */	blr 
