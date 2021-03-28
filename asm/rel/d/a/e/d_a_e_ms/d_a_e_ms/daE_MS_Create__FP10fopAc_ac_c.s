lbl_80728A88:
/* 80728A88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80728A8C  7C 08 02 A6 */	mflr r0
/* 80728A90  90 01 00 34 */	stw r0, 0x34(r1)
/* 80728A94  39 61 00 30 */	addi r11, r1, 0x30
/* 80728A98  4B C3 97 38 */	b _savegpr_26
/* 80728A9C  7C 7F 1B 78 */	mr r31, r3
/* 80728AA0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80728AA4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80728AA8  40 82 01 3C */	bne lbl_80728BE4
/* 80728AAC  7F E0 FB 79 */	or. r0, r31, r31
/* 80728AB0  41 82 01 28 */	beq lbl_80728BD8
/* 80728AB4  7C 1E 03 78 */	mr r30, r0
/* 80728AB8  4B 8F 00 AC */	b __ct__10fopAc_ac_cFv
/* 80728ABC  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80728AC0  4B B9 84 A4 */	b __ct__15Z2CreatureEnemyFv
/* 80728AC4  38 7E 06 98 */	addi r3, r30, 0x698
/* 80728AC8  4B 94 D3 E4 */	b __ct__12dBgS_AcchCirFv
/* 80728ACC  3B 7E 06 D8 */	addi r27, r30, 0x6d8
/* 80728AD0  7F 63 DB 78 */	mr r3, r27
/* 80728AD4  4B 94 D5 CC */	b __ct__9dBgS_AcchFv
/* 80728AD8  3C 60 80 73 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80728ADC  38 63 97 88 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80728AE0  90 7B 00 10 */	stw r3, 0x10(r27)
/* 80728AE4  38 03 00 0C */	addi r0, r3, 0xc
/* 80728AE8  90 1B 00 14 */	stw r0, 0x14(r27)
/* 80728AEC  38 03 00 18 */	addi r0, r3, 0x18
/* 80728AF0  90 1B 00 24 */	stw r0, 0x24(r27)
/* 80728AF4  38 7B 00 14 */	addi r3, r27, 0x14
/* 80728AF8  4B 95 03 70 */	b SetObj__16dBgS_PolyPassChkFv
/* 80728AFC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80728B00  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80728B04  90 1E 08 CC */	stw r0, 0x8cc(r30)
/* 80728B08  38 7E 08 D0 */	addi r3, r30, 0x8d0
/* 80728B0C  4B 95 AC 54 */	b __ct__10dCcD_GSttsFv
/* 80728B10  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80728B14  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80728B18  90 7E 08 CC */	stw r3, 0x8cc(r30)
/* 80728B1C  38 03 00 20 */	addi r0, r3, 0x20
/* 80728B20  90 1E 08 D0 */	stw r0, 0x8d0(r30)
/* 80728B24  3B 5E 08 F0 */	addi r26, r30, 0x8f0
/* 80728B28  7F 43 D3 78 */	mr r3, r26
/* 80728B2C  4B 95 AE FC */	b __ct__12dCcD_GObjInfFv
/* 80728B30  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80728B34  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80728B38  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80728B3C  3C 60 80 73 */	lis r3, __vt__8cM3dGAab@ha
/* 80728B40  38 03 97 7C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80728B44  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80728B48  3C 60 80 73 */	lis r3, __vt__8cM3dGSph@ha
/* 80728B4C  38 03 97 70 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80728B50  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80728B54  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80728B58  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80728B5C  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80728B60  3B A3 00 58 */	addi r29, r3, 0x58
/* 80728B64  93 BA 01 34 */	stw r29, 0x134(r26)
/* 80728B68  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80728B6C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80728B70  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80728B74  3B 83 00 2C */	addi r28, r3, 0x2c
/* 80728B78  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80728B7C  3B 63 00 84 */	addi r27, r3, 0x84
/* 80728B80  93 7A 01 34 */	stw r27, 0x134(r26)
/* 80728B84  3B 5E 0A 28 */	addi r26, r30, 0xa28
/* 80728B88  7F 43 D3 78 */	mr r3, r26
/* 80728B8C  4B 95 AE 9C */	b __ct__12dCcD_GObjInfFv
/* 80728B90  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80728B94  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80728B98  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80728B9C  3C 60 80 73 */	lis r3, __vt__8cM3dGAab@ha
/* 80728BA0  38 03 97 7C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80728BA4  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80728BA8  3C 60 80 73 */	lis r3, __vt__8cM3dGSph@ha
/* 80728BAC  38 03 97 70 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80728BB0  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80728BB4  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80728BB8  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80728BBC  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80728BC0  93 BA 01 34 */	stw r29, 0x134(r26)
/* 80728BC4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80728BC8  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80728BCC  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 80728BD0  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80728BD4  93 7A 01 34 */	stw r27, 0x134(r26)
lbl_80728BD8:
/* 80728BD8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80728BDC  60 00 00 08 */	ori r0, r0, 8
/* 80728BE0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80728BE4:
/* 80728BE4  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80728BE8  3C 80 80 73 */	lis r4, stringBase0@ha
/* 80728BEC  38 84 95 FC */	addi r4, r4, stringBase0@l
/* 80728BF0  4B 90 42 CC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80728BF4  7C 7E 1B 78 */	mr r30, r3
/* 80728BF8  2C 1E 00 04 */	cmpwi r30, 4
/* 80728BFC  40 82 01 E0 */	bne lbl_80728DDC
/* 80728C00  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80728C04  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80728C08  2C 04 00 FF */	cmpwi r4, 0xff
/* 80728C0C  41 82 00 28 */	beq lbl_80728C34
/* 80728C10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80728C14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80728C18  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80728C1C  7C 05 07 74 */	extsb r5, r0
/* 80728C20  4B 90 C7 40 */	b isSwitch__10dSv_info_cCFii
/* 80728C24  2C 03 00 00 */	cmpwi r3, 0
/* 80728C28  41 82 00 0C */	beq lbl_80728C34
/* 80728C2C  38 60 00 05 */	li r3, 5
/* 80728C30  48 00 01 B0 */	b lbl_80728DE0
lbl_80728C34:
/* 80728C34  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80728C38  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 80728C3C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80728C40  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80728C44  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 80728C48  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80728C4C  54 00 46 3E */	srwi r0, r0, 0x18
/* 80728C50  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80728C54  7F E3 FB 78 */	mr r3, r31
/* 80728C58  3C 80 80 73 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80728C5C  38 84 89 90 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80728C60  38 A0 18 60 */	li r5, 0x1860
/* 80728C64  4B 8F 18 4C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80728C68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80728C6C  40 82 00 0C */	bne lbl_80728C78
/* 80728C70  38 60 00 05 */	li r3, 5
/* 80728C74  48 00 01 6C */	b lbl_80728DE0
lbl_80728C78:
/* 80728C78  3C 60 80 73 */	lis r3, struct_807297FC+0x1@ha
/* 80728C7C  8C 03 97 FD */	lbzu r0, struct_807297FC+0x1@l(r3)
/* 80728C80  28 00 00 00 */	cmplwi r0, 0
/* 80728C84  40 82 00 20 */	bne lbl_80728CA4
/* 80728C88  38 00 00 01 */	li r0, 1
/* 80728C8C  98 1F 0B B8 */	stb r0, 0xbb8(r31)
/* 80728C90  98 03 00 00 */	stb r0, 0(r3)
/* 80728C94  38 00 FF FF */	li r0, -1
/* 80728C98  3C 60 80 73 */	lis r3, l_HIO@ha
/* 80728C9C  38 63 98 0C */	addi r3, r3, l_HIO@l
/* 80728CA0  98 03 00 04 */	stb r0, 4(r3)
lbl_80728CA4:
/* 80728CA4  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 80728CA8  80 63 00 04 */	lwz r3, 4(r3)
/* 80728CAC  38 03 00 24 */	addi r0, r3, 0x24
/* 80728CB0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80728CB4  38 00 00 01 */	li r0, 1
/* 80728CB8  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80728CBC  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80728CC0  38 7F 08 B4 */	addi r3, r31, 0x8b4
/* 80728CC4  38 80 00 1E */	li r4, 0x1e
/* 80728CC8  38 A0 00 00 */	li r5, 0
/* 80728CCC  7F E6 FB 78 */	mr r6, r31
/* 80728CD0  4B 95 AB 90 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80728CD4  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 80728CD8  3C 80 80 73 */	lis r4, cc_sph_src@ha
/* 80728CDC  38 84 96 7C */	addi r4, r4, cc_sph_src@l
/* 80728CE0  4B 95 BD 54 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80728CE4  38 1F 08 B4 */	addi r0, r31, 0x8b4
/* 80728CE8  90 1F 09 34 */	stw r0, 0x934(r31)
/* 80728CEC  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 80728CF0  3C 80 80 73 */	lis r4, at_sph_src@ha
/* 80728CF4  38 84 96 BC */	addi r4, r4, at_sph_src@l
/* 80728CF8  4B 95 BD 3C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80728CFC  38 1F 08 B4 */	addi r0, r31, 0x8b4
/* 80728D00  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 80728D04  38 00 00 00 */	li r0, 0
/* 80728D08  90 01 00 08 */	stw r0, 8(r1)
/* 80728D0C  38 7F 06 D8 */	addi r3, r31, 0x6d8
/* 80728D10  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80728D14  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80728D18  7F E6 FB 78 */	mr r6, r31
/* 80728D1C  38 E0 00 01 */	li r7, 1
/* 80728D20  39 1F 06 98 */	addi r8, r31, 0x698
/* 80728D24  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80728D28  39 40 00 00 */	li r10, 0
/* 80728D2C  4B 94 D5 1C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80728D30  38 7F 06 98 */	addi r3, r31, 0x698
/* 80728D34  3C 80 80 73 */	lis r4, lit_3907@ha
/* 80728D38  C0 24 95 48 */	lfs f1, lit_3907@l(r4)
/* 80728D3C  FC 40 08 90 */	fmr f2, f1
/* 80728D40  4B 94 D2 18 */	b SetWall__12dBgS_AcchCirFff
/* 80728D44  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80728D48  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80728D4C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80728D50  38 C0 00 03 */	li r6, 3
/* 80728D54  38 E0 00 01 */	li r7, 1
/* 80728D58  4B B9 83 3C */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 80728D5C  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80728D60  3C 80 80 73 */	lis r4, stringBase0@ha
/* 80728D64  38 84 95 FC */	addi r4, r4, stringBase0@l
/* 80728D68  38 84 00 0C */	addi r4, r4, 0xc
/* 80728D6C  4B B9 8E 24 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 80728D70  38 1F 05 D8 */	addi r0, r31, 0x5d8
/* 80728D74  90 1F 0B 68 */	stw r0, 0xb68(r31)
/* 80728D78  3C 60 80 73 */	lis r3, lit_4052@ha
/* 80728D7C  C0 23 95 50 */	lfs f1, lit_4052@l(r3)
/* 80728D80  4B B3 EB D4 */	b cM_rndF__Ff
/* 80728D84  FC 00 08 1E */	fctiwz f0, f1
/* 80728D88  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80728D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80728D90  B0 1F 06 7C */	sth r0, 0x67c(r31)
/* 80728D94  80 9F 05 B8 */	lwz r4, 0x5b8(r31)
/* 80728D98  2C 04 00 FF */	cmpwi r4, 0xff
/* 80728D9C  41 82 00 38 */	beq lbl_80728DD4
/* 80728DA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80728DA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80728DA8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80728DAC  7C 05 07 74 */	extsb r5, r0
/* 80728DB0  4B 90 C5 B0 */	b isSwitch__10dSv_info_cCFii
/* 80728DB4  2C 03 00 00 */	cmpwi r3, 0
/* 80728DB8  40 82 00 14 */	bne lbl_80728DCC
/* 80728DBC  38 00 00 01 */	li r0, 1
/* 80728DC0  98 1F 0B A5 */	stb r0, 0xba5(r31)
/* 80728DC4  38 00 00 0A */	li r0, 0xa
/* 80728DC8  B0 1F 06 7E */	sth r0, 0x67e(r31)
lbl_80728DCC:
/* 80728DCC  38 00 00 01 */	li r0, 1
/* 80728DD0  98 1F 0B A6 */	stb r0, 0xba6(r31)
lbl_80728DD4:
/* 80728DD4  7F E3 FB 78 */	mr r3, r31
/* 80728DD8  4B FF F6 8D */	bl daE_MS_Execute__FP10e_ms_class
lbl_80728DDC:
/* 80728DDC  7F C3 F3 78 */	mr r3, r30
lbl_80728DE0:
/* 80728DE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80728DE4  4B C3 94 38 */	b _restgpr_26
/* 80728DE8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80728DEC  7C 08 03 A6 */	mtlr r0
/* 80728DF0  38 21 00 30 */	addi r1, r1, 0x30
/* 80728DF4  4E 80 00 20 */	blr 
