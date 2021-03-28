lbl_808034BC:
/* 808034BC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 808034C0  7C 08 02 A6 */	mflr r0
/* 808034C4  90 01 00 44 */	stw r0, 0x44(r1)
/* 808034C8  39 61 00 40 */	addi r11, r1, 0x40
/* 808034CC  4B B5 EC FC */	b _savegpr_24
/* 808034D0  7C 7F 1B 78 */	mr r31, r3
/* 808034D4  3C 80 80 80 */	lis r4, cNullVec__6Z2Calc@ha
/* 808034D8  3B A4 43 E8 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 808034DC  3C 80 80 80 */	lis r4, lit_3902@ha
/* 808034E0  3B C4 42 7C */	addi r30, r4, lit_3902@l
/* 808034E4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 808034E8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 808034EC  40 82 01 B4 */	bne lbl_808036A0
/* 808034F0  7F E0 FB 79 */	or. r0, r31, r31
/* 808034F4  41 82 01 A0 */	beq lbl_80803694
/* 808034F8  7C 19 03 78 */	mr r25, r0
/* 808034FC  4B 81 56 68 */	b __ct__10fopAc_ac_cFv
/* 80803500  38 79 05 BC */	addi r3, r25, 0x5bc
/* 80803504  4B AB DA 60 */	b __ct__15Z2CreatureEnemyFv
/* 80803508  38 79 06 A0 */	addi r3, r25, 0x6a0
/* 8080350C  3C 80 80 80 */	lis r4, __ct__4cXyzFv@ha
/* 80803510  38 84 3C FC */	addi r4, r4, __ct__4cXyzFv@l
/* 80803514  3C A0 80 80 */	lis r5, __dt__4cXyzFv@ha
/* 80803518  38 A5 42 2C */	addi r5, r5, __dt__4cXyzFv@l
/* 8080351C  38 C0 00 0C */	li r6, 0xc
/* 80803520  38 E0 00 0C */	li r7, 0xc
/* 80803524  4B B5 E8 3C */	b __construct_array
/* 80803528  38 79 07 30 */	addi r3, r25, 0x730
/* 8080352C  3C 80 80 80 */	lis r4, __ct__5csXyzFv@ha
/* 80803530  38 84 3C F8 */	addi r4, r4, __ct__5csXyzFv@l
/* 80803534  3C A0 80 80 */	lis r5, __dt__5csXyzFv@ha
/* 80803538  38 A5 41 F0 */	addi r5, r5, __dt__5csXyzFv@l
/* 8080353C  38 C0 00 06 */	li r6, 6
/* 80803540  38 E0 00 0C */	li r7, 0xc
/* 80803544  4B B5 E8 1C */	b __construct_array
/* 80803548  3C 60 80 80 */	lis r3, __vt__18mDoExt_3DlineMat_c@ha
/* 8080354C  38 03 46 E4 */	addi r0, r3, __vt__18mDoExt_3DlineMat_c@l
/* 80803550  90 19 08 08 */	stw r0, 0x808(r25)
/* 80803554  3C 60 80 3A */	lis r3, __vt__19mDoExt_3DlineMat1_c@ha
/* 80803558  38 03 32 48 */	addi r0, r3, __vt__19mDoExt_3DlineMat1_c@l
/* 8080355C  90 19 08 08 */	stw r0, 0x808(r25)
/* 80803560  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80803564  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80803568  90 19 08 84 */	stw r0, 0x884(r25)
/* 8080356C  38 79 08 88 */	addi r3, r25, 0x888
/* 80803570  4B 88 01 F0 */	b __ct__10dCcD_GSttsFv
/* 80803574  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80803578  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8080357C  90 79 08 84 */	stw r3, 0x884(r25)
/* 80803580  38 03 00 20 */	addi r0, r3, 0x20
/* 80803584  90 19 08 88 */	stw r0, 0x888(r25)
/* 80803588  3B 19 08 A8 */	addi r24, r25, 0x8a8
/* 8080358C  7F 03 C3 78 */	mr r3, r24
/* 80803590  4B 88 04 98 */	b __ct__12dCcD_GObjInfFv
/* 80803594  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80803598  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8080359C  90 18 01 20 */	stw r0, 0x120(r24)
/* 808035A0  3C 60 80 80 */	lis r3, __vt__8cM3dGAab@ha
/* 808035A4  38 03 46 D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 808035A8  90 18 01 1C */	stw r0, 0x11c(r24)
/* 808035AC  3C 60 80 80 */	lis r3, __vt__8cM3dGSph@ha
/* 808035B0  38 03 46 CC */	addi r0, r3, __vt__8cM3dGSph@l
/* 808035B4  90 18 01 34 */	stw r0, 0x134(r24)
/* 808035B8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 808035BC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 808035C0  90 78 01 20 */	stw r3, 0x120(r24)
/* 808035C4  3B 83 00 58 */	addi r28, r3, 0x58
/* 808035C8  93 98 01 34 */	stw r28, 0x134(r24)
/* 808035CC  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 808035D0  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 808035D4  90 78 00 3C */	stw r3, 0x3c(r24)
/* 808035D8  3B 63 00 2C */	addi r27, r3, 0x2c
/* 808035DC  93 78 01 20 */	stw r27, 0x120(r24)
/* 808035E0  3B 43 00 84 */	addi r26, r3, 0x84
/* 808035E4  93 58 01 34 */	stw r26, 0x134(r24)
/* 808035E8  3B 19 09 E0 */	addi r24, r25, 0x9e0
/* 808035EC  7F 03 C3 78 */	mr r3, r24
/* 808035F0  4B 88 04 38 */	b __ct__12dCcD_GObjInfFv
/* 808035F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 808035F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 808035FC  90 18 01 20 */	stw r0, 0x120(r24)
/* 80803600  3C 60 80 80 */	lis r3, __vt__8cM3dGAab@ha
/* 80803604  38 03 46 D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80803608  90 18 01 1C */	stw r0, 0x11c(r24)
/* 8080360C  3C 60 80 80 */	lis r3, __vt__8cM3dGSph@ha
/* 80803610  38 03 46 CC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80803614  90 18 01 34 */	stw r0, 0x134(r24)
/* 80803618  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8080361C  38 03 35 40 */	addi r0, r3, __vt__12cCcD_SphAttr@l
/* 80803620  90 18 01 20 */	stw r0, 0x120(r24)
/* 80803624  93 98 01 34 */	stw r28, 0x134(r24)
/* 80803628  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8080362C  38 03 BF C0 */	addi r0, r3, __vt__8dCcD_Sph@l
/* 80803630  90 18 00 3C */	stw r0, 0x3c(r24)
/* 80803634  93 78 01 20 */	stw r27, 0x120(r24)
/* 80803638  93 58 01 34 */	stw r26, 0x134(r24)
/* 8080363C  38 79 0B 1C */	addi r3, r25, 0xb1c
/* 80803640  3C 80 80 80 */	lis r4, __ct__8dCcD_SphFv@ha
/* 80803644  38 84 3A BC */	addi r4, r4, __ct__8dCcD_SphFv@l
/* 80803648  3C A0 80 80 */	lis r5, __dt__8dCcD_SphFv@ha
/* 8080364C  38 A5 3B 40 */	addi r5, r5, __dt__8dCcD_SphFv@l
/* 80803650  38 C0 01 38 */	li r6, 0x138
/* 80803654  38 E0 00 04 */	li r7, 4
/* 80803658  4B B5 E7 08 */	b __construct_array
/* 8080365C  38 79 10 20 */	addi r3, r25, 0x1020
/* 80803660  4B 87 28 4C */	b __ct__12dBgS_AcchCirFv
/* 80803664  3B 19 10 60 */	addi r24, r25, 0x1060
/* 80803668  7F 03 C3 78 */	mr r3, r24
/* 8080366C  4B 87 2A 34 */	b __ct__9dBgS_AcchFv
/* 80803670  3C 60 80 80 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80803674  38 63 46 A8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80803678  90 78 00 10 */	stw r3, 0x10(r24)
/* 8080367C  38 03 00 0C */	addi r0, r3, 0xc
/* 80803680  90 18 00 14 */	stw r0, 0x14(r24)
/* 80803684  38 03 00 18 */	addi r0, r3, 0x18
/* 80803688  90 18 00 24 */	stw r0, 0x24(r24)
/* 8080368C  38 78 00 14 */	addi r3, r24, 0x14
/* 80803690  4B 87 57 D8 */	b SetObj__16dBgS_PolyPassChkFv
lbl_80803694:
/* 80803694  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80803698  60 00 00 08 */	ori r0, r0, 8
/* 8080369C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_808036A0:
/* 808036A0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 808036A4  3C 80 80 80 */	lis r4, stringBase0@ha
/* 808036A8  38 84 43 DC */	addi r4, r4, stringBase0@l
/* 808036AC  4B 82 98 10 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 808036B0  7C 7A 1B 78 */	mr r26, r3
/* 808036B4  2C 1A 00 04 */	cmpwi r26, 4
/* 808036B8  40 82 03 08 */	bne lbl_808039C0
/* 808036BC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 808036C0  54 04 46 3E */	srwi r4, r0, 0x18
/* 808036C4  28 04 00 FF */	cmplwi r4, 0xff
/* 808036C8  41 82 00 28 */	beq lbl_808036F0
/* 808036CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808036D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808036D4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 808036D8  7C 05 07 74 */	extsb r5, r0
/* 808036DC  4B 83 1C 84 */	b isSwitch__10dSv_info_cCFii
/* 808036E0  2C 03 00 00 */	cmpwi r3, 0
/* 808036E4  41 82 00 0C */	beq lbl_808036F0
/* 808036E8  38 60 00 05 */	li r3, 5
/* 808036EC  48 00 02 D8 */	b lbl_808039C4
lbl_808036F0:
/* 808036F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 808036F4  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 808036F8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 808036FC  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80803700  98 1F 05 B5 */	stb r0, 0x5b5(r31)
/* 80803704  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80803708  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 8080370C  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 80803710  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80803714  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80803718  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 8080371C  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80803720  28 00 00 FF */	cmplwi r0, 0xff
/* 80803724  40 82 00 0C */	bne lbl_80803730
/* 80803728  38 00 00 00 */	li r0, 0
/* 8080372C  98 1F 05 B4 */	stb r0, 0x5b4(r31)
lbl_80803730:
/* 80803730  88 1F 05 B5 */	lbz r0, 0x5b5(r31)
/* 80803734  28 00 00 FF */	cmplwi r0, 0xff
/* 80803738  41 82 00 0C */	beq lbl_80803744
/* 8080373C  28 00 00 00 */	cmplwi r0, 0
/* 80803740  40 82 00 10 */	bne lbl_80803750
lbl_80803744:
/* 80803744  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 80803748  D0 1F 06 74 */	stfs f0, 0x674(r31)
/* 8080374C  48 00 00 28 */	b lbl_80803774
lbl_80803750:
/* 80803750  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80803754  C8 3E 01 58 */	lfd f1, 0x158(r30)
/* 80803758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8080375C  3C 00 43 30 */	lis r0, 0x4330
/* 80803760  90 01 00 10 */	stw r0, 0x10(r1)
/* 80803764  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80803768  EC 00 08 28 */	fsubs f0, f0, f1
/* 8080376C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80803770  D0 1F 06 74 */	stfs f0, 0x674(r31)
lbl_80803774:
/* 80803774  7F E3 FB 78 */	mr r3, r31
/* 80803778  3C 80 80 80 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8080377C  38 84 31 E8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80803780  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80803784  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80803788  4B 81 6D 28 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8080378C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80803790  40 82 00 0C */	bne lbl_8080379C
/* 80803794  38 60 00 05 */	li r3, 5
/* 80803798  48 00 02 2C */	b lbl_808039C4
lbl_8080379C:
/* 8080379C  3C 60 80 80 */	lis r3, data_80804718@ha
/* 808037A0  8C 03 47 18 */	lbzu r0, data_80804718@l(r3)
/* 808037A4  28 00 00 00 */	cmplwi r0, 0
/* 808037A8  40 82 00 20 */	bne lbl_808037C8
/* 808037AC  38 00 00 01 */	li r0, 1
/* 808037B0  98 1F 12 70 */	stb r0, 0x1270(r31)
/* 808037B4  98 03 00 00 */	stb r0, 0(r3)
/* 808037B8  38 00 FF FF */	li r0, -1
/* 808037BC  3C 60 80 80 */	lis r3, l_HIO@ha
/* 808037C0  38 63 47 28 */	addi r3, r3, l_HIO@l
/* 808037C4  98 03 00 04 */	stb r0, 4(r3)
lbl_808037C8:
/* 808037C8  38 00 00 04 */	li r0, 4
/* 808037CC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 808037D0  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 808037D4  80 63 00 04 */	lwz r3, 4(r3)
/* 808037D8  38 03 00 24 */	addi r0, r3, 0x24
/* 808037DC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 808037E0  7F E3 FB 78 */	mr r3, r31
/* 808037E4  C0 3E 01 4C */	lfs f1, 0x14c(r30)
/* 808037E8  C0 5E 01 50 */	lfs f2, 0x150(r30)
/* 808037EC  FC 60 08 90 */	fmr f3, f1
/* 808037F0  4B 81 6D 38 */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 808037F4  7F E3 FB 78 */	mr r3, r31
/* 808037F8  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 808037FC  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 80803800  FC 60 08 90 */	fmr f3, f1
/* 80803804  4B 81 6D 34 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80803808  38 00 00 1E */	li r0, 0x1e
/* 8080380C  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80803810  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 80803814  38 7F 08 6C */	addi r3, r31, 0x86c
/* 80803818  38 80 00 64 */	li r4, 0x64
/* 8080381C  38 A0 00 00 */	li r5, 0
/* 80803820  7F E6 FB 78 */	mr r6, r31
/* 80803824  4B 88 00 3C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80803828  38 7F 08 A8 */	addi r3, r31, 0x8a8
/* 8080382C  38 9D 01 8C */	addi r4, r29, 0x18c
/* 80803830  4B 88 12 04 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80803834  38 1F 08 6C */	addi r0, r31, 0x86c
/* 80803838  90 1F 08 EC */	stw r0, 0x8ec(r31)
/* 8080383C  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 80803840  38 9D 01 CC */	addi r4, r29, 0x1cc
/* 80803844  4B 88 11 F0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80803848  3B 3F 08 6C */	addi r25, r31, 0x86c
/* 8080384C  93 3F 0A 24 */	stw r25, 0xa24(r31)
/* 80803850  3B 80 00 00 */	li r28, 0
/* 80803854  3B 00 00 00 */	li r24, 0
lbl_80803858:
/* 80803858  7F 7F C2 14 */	add r27, r31, r24
/* 8080385C  38 7B 0B 1C */	addi r3, r27, 0xb1c
/* 80803860  38 9D 02 0C */	addi r4, r29, 0x20c
/* 80803864  4B 88 11 D0 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80803868  93 3B 0B 60 */	stw r25, 0xb60(r27)
/* 8080386C  3B 9C 00 01 */	addi r28, r28, 1
/* 80803870  2C 1C 00 04 */	cmpwi r28, 4
/* 80803874  3B 18 01 38 */	addi r24, r24, 0x138
/* 80803878  41 80 FF E0 */	blt lbl_80803858
/* 8080387C  38 00 00 00 */	li r0, 0
/* 80803880  90 01 00 08 */	stw r0, 8(r1)
/* 80803884  38 7F 10 60 */	addi r3, r31, 0x1060
/* 80803888  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8080388C  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80803890  7F E6 FB 78 */	mr r6, r31
/* 80803894  38 E0 00 01 */	li r7, 1
/* 80803898  39 1F 10 20 */	addi r8, r31, 0x1020
/* 8080389C  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 808038A0  39 40 00 00 */	li r10, 0
/* 808038A4  4B 87 29 A4 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 808038A8  38 7F 10 20 */	addi r3, r31, 0x1020
/* 808038AC  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 808038B0  FC 40 08 90 */	fmr f2, f1
/* 808038B4  4B 87 26 A4 */	b SetWall__12dBgS_AcchCirFff
/* 808038B8  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 808038BC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 808038C0  38 BF 05 38 */	addi r5, r31, 0x538
/* 808038C4  38 C0 00 03 */	li r6, 3
/* 808038C8  38 E0 00 01 */	li r7, 1
/* 808038CC  4B AB D7 C8 */	b init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 808038D0  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 808038D4  3C 80 80 80 */	lis r4, stringBase0@ha
/* 808038D8  38 84 43 DC */	addi r4, r4, stringBase0@l
/* 808038DC  38 84 00 05 */	addi r4, r4, 5
/* 808038E0  4B AB E2 B0 */	b setEnemyName__15Z2CreatureEnemyFPCc
/* 808038E4  38 1F 05 BC */	addi r0, r31, 0x5bc
/* 808038E8  90 1F 10 04 */	stw r0, 0x1004(r31)
/* 808038EC  38 00 00 01 */	li r0, 1
/* 808038F0  98 1F 10 1A */	stb r0, 0x101a(r31)
/* 808038F4  38 00 00 2D */	li r0, 0x2d
/* 808038F8  90 1F 10 14 */	stw r0, 0x1014(r31)
/* 808038FC  C0 3E 01 54 */	lfs f1, 0x154(r30)
/* 80803900  4B A6 40 54 */	b cM_rndF__Ff
/* 80803904  FC 00 08 1E */	fctiwz f0, f1
/* 80803908  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8080390C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80803910  B0 1F 06 6C */	sth r0, 0x66c(r31)
/* 80803914  3C 60 80 80 */	lis r3, l_HIO@ha
/* 80803918  38 63 47 28 */	addi r3, r3, l_HIO@l
/* 8080391C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80803920  D0 1F 06 94 */	stfs f0, 0x694(r31)
/* 80803924  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 80803928  28 00 00 01 */	cmplwi r0, 1
/* 8080392C  40 82 00 2C */	bne lbl_80803958
/* 80803930  38 00 00 0A */	li r0, 0xa
/* 80803934  B0 1F 06 6E */	sth r0, 0x66e(r31)
/* 80803938  38 00 00 00 */	li r0, 0
/* 8080393C  B0 1F 06 70 */	sth r0, 0x670(r31)
/* 80803940  38 00 80 00 */	li r0, -32768
/* 80803944  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80803948  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8080394C  38 00 00 01 */	li r0, 1
/* 80803950  98 1F 08 54 */	stb r0, 0x854(r31)
/* 80803954  48 00 00 20 */	b lbl_80803974
lbl_80803958:
/* 80803958  28 00 00 02 */	cmplwi r0, 2
/* 8080395C  40 82 00 18 */	bne lbl_80803974
/* 80803960  38 00 80 00 */	li r0, -32768
/* 80803964  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80803968  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 8080396C  38 00 00 01 */	li r0, 1
/* 80803970  98 1F 08 54 */	stb r0, 0x854(r31)
lbl_80803974:
/* 80803974  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80803978  7C 07 07 74 */	extsb r7, r0
/* 8080397C  38 00 00 00 */	li r0, 0
/* 80803980  90 01 00 08 */	stw r0, 8(r1)
/* 80803984  38 60 01 CE */	li r3, 0x1ce
/* 80803988  28 1F 00 00 */	cmplwi r31, 0
/* 8080398C  41 82 00 0C */	beq lbl_80803998
/* 80803990  80 9F 00 04 */	lwz r4, 4(r31)
/* 80803994  48 00 00 08 */	b lbl_8080399C
lbl_80803998:
/* 80803998  38 80 FF FF */	li r4, -1
lbl_8080399C:
/* 8080399C  38 A0 00 00 */	li r5, 0
/* 808039A0  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 808039A4  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 808039A8  39 20 00 00 */	li r9, 0
/* 808039AC  39 40 FF FF */	li r10, -1
/* 808039B0  4B 81 65 40 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 808039B4  90 7F 12 38 */	stw r3, 0x1238(r31)
/* 808039B8  7F E3 FB 78 */	mr r3, r31
/* 808039BC  4B FF F3 DD */	bl daE_YH_Execute__FP10e_yh_class
lbl_808039C0:
/* 808039C0  7F 43 D3 78 */	mr r3, r26
lbl_808039C4:
/* 808039C4  39 61 00 40 */	addi r11, r1, 0x40
/* 808039C8  4B B5 E8 4C */	b _restgpr_24
/* 808039CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 808039D0  7C 08 03 A6 */	mtlr r0
/* 808039D4  38 21 00 40 */	addi r1, r1, 0x40
/* 808039D8  4E 80 00 20 */	blr 
