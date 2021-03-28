lbl_8071F168:
/* 8071F168  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8071F16C  7C 08 02 A6 */	mflr r0
/* 8071F170  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071F174  39 61 00 30 */	addi r11, r1, 0x30
/* 8071F178  4B C4 30 60 */	b _savegpr_28
/* 8071F17C  7C 7E 1B 78 */	mr r30, r3
/* 8071F180  3C 80 80 72 */	lis r4, lit_3776@ha
/* 8071F184  3B E4 F6 40 */	addi r31, r4, lit_3776@l
/* 8071F188  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8071F18C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8071F190  40 82 00 E8 */	bne lbl_8071F278
/* 8071F194  7F C0 F3 79 */	or. r0, r30, r30
/* 8071F198  41 82 00 D4 */	beq lbl_8071F26C
/* 8071F19C  7C 1D 03 78 */	mr r29, r0
/* 8071F1A0  4B 8F 99 C4 */	b __ct__10fopAc_ac_cFv
/* 8071F1A4  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 8071F1A8  4B B9 F6 9C */	b __ct__16Z2SoundObjSimpleFv
/* 8071F1AC  38 7D 06 04 */	addi r3, r29, 0x604
/* 8071F1B0  4B 95 6C FC */	b __ct__12dBgS_AcchCirFv
/* 8071F1B4  3B 9D 06 44 */	addi r28, r29, 0x644
/* 8071F1B8  7F 83 E3 78 */	mr r3, r28
/* 8071F1BC  4B 95 6E E4 */	b __ct__9dBgS_AcchFv
/* 8071F1C0  3C 60 80 72 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8071F1C4  38 63 F7 E8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8071F1C8  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8071F1CC  38 03 00 0C */	addi r0, r3, 0xc
/* 8071F1D0  90 1C 00 14 */	stw r0, 0x14(r28)
/* 8071F1D4  38 03 00 18 */	addi r0, r3, 0x18
/* 8071F1D8  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8071F1DC  38 7C 00 14 */	addi r3, r28, 0x14
/* 8071F1E0  4B 95 9C 88 */	b SetObj__16dBgS_PolyPassChkFv
/* 8071F1E4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8071F1E8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8071F1EC  90 1D 08 34 */	stw r0, 0x834(r29)
/* 8071F1F0  38 7D 08 38 */	addi r3, r29, 0x838
/* 8071F1F4  4B 96 45 6C */	b __ct__10dCcD_GSttsFv
/* 8071F1F8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8071F1FC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8071F200  90 7D 08 34 */	stw r3, 0x834(r29)
/* 8071F204  38 03 00 20 */	addi r0, r3, 0x20
/* 8071F208  90 1D 08 38 */	stw r0, 0x838(r29)
/* 8071F20C  3B 9D 08 58 */	addi r28, r29, 0x858
/* 8071F210  7F 83 E3 78 */	mr r3, r28
/* 8071F214  4B 96 48 14 */	b __ct__12dCcD_GObjInfFv
/* 8071F218  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8071F21C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8071F220  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8071F224  3C 60 80 72 */	lis r3, __vt__8cM3dGAab@ha
/* 8071F228  38 03 F7 DC */	addi r0, r3, __vt__8cM3dGAab@l
/* 8071F22C  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 8071F230  3C 60 80 72 */	lis r3, __vt__8cM3dGSph@ha
/* 8071F234  38 03 F7 D0 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8071F238  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8071F23C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 8071F240  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 8071F244  90 7C 01 20 */	stw r3, 0x120(r28)
/* 8071F248  38 03 00 58 */	addi r0, r3, 0x58
/* 8071F24C  90 1C 01 34 */	stw r0, 0x134(r28)
/* 8071F250  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 8071F254  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 8071F258  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 8071F25C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8071F260  90 1C 01 20 */	stw r0, 0x120(r28)
/* 8071F264  38 03 00 84 */	addi r0, r3, 0x84
/* 8071F268  90 1C 01 34 */	stw r0, 0x134(r28)
lbl_8071F26C:
/* 8071F26C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 8071F270  60 00 00 08 */	ori r0, r0, 8
/* 8071F274  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_8071F278:
/* 8071F278  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 8071F27C  3C 80 80 72 */	lis r4, stringBase0@ha
/* 8071F280  38 84 F6 D8 */	addi r4, r4, stringBase0@l
/* 8071F284  4B 90 DC 38 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8071F288  7C 7D 1B 78 */	mr r29, r3
/* 8071F28C  2C 1D 00 04 */	cmpwi r29, 4
/* 8071F290  40 82 01 24 */	bne lbl_8071F3B4
/* 8071F294  7F C3 F3 78 */	mr r3, r30
/* 8071F298  3C 80 80 72 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8071F29C  38 84 EF 24 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8071F2A0  38 A0 31 20 */	li r5, 0x3120
/* 8071F2A4  4B 8F B2 0C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8071F2A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8071F2AC  40 82 00 0C */	bne lbl_8071F2B8
/* 8071F2B0  38 60 00 05 */	li r3, 5
/* 8071F2B4  48 00 01 04 */	b lbl_8071F3B8
lbl_8071F2B8:
/* 8071F2B8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8071F2BC  38 03 00 24 */	addi r0, r3, 0x24
/* 8071F2C0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 8071F2C4  38 7E 08 1C */	addi r3, r30, 0x81c
/* 8071F2C8  38 80 00 FF */	li r4, 0xff
/* 8071F2CC  38 A0 00 00 */	li r5, 0
/* 8071F2D0  7F C6 F3 78 */	mr r6, r30
/* 8071F2D4  4B 96 45 8C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8071F2D8  38 7E 08 58 */	addi r3, r30, 0x858
/* 8071F2DC  3C 80 80 72 */	lis r4, at_sph_src@ha
/* 8071F2E0  38 84 F7 1C */	addi r4, r4, at_sph_src@l
/* 8071F2E4  4B 96 57 50 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8071F2E8  38 1E 08 1C */	addi r0, r30, 0x81c
/* 8071F2EC  90 1E 08 9C */	stw r0, 0x89c(r30)
/* 8071F2F0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8071F2F4  2C 00 00 04 */	cmpwi r0, 4
/* 8071F2F8  40 82 00 10 */	bne lbl_8071F308
/* 8071F2FC  38 7E 09 7C */	addi r3, r30, 0x97c
/* 8071F300  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8071F304  4B B5 04 04 */	b SetR__8cM3dGSphFf
lbl_8071F308:
/* 8071F308  38 00 00 00 */	li r0, 0
/* 8071F30C  90 01 00 08 */	stw r0, 8(r1)
/* 8071F310  38 7E 06 44 */	addi r3, r30, 0x644
/* 8071F314  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8071F318  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 8071F31C  7F C6 F3 78 */	mr r6, r30
/* 8071F320  38 E0 00 01 */	li r7, 1
/* 8071F324  39 1E 06 04 */	addi r8, r30, 0x604
/* 8071F328  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 8071F32C  39 40 00 00 */	li r10, 0
/* 8071F330  4B 95 6F 18 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8071F334  38 7E 06 04 */	addi r3, r30, 0x604
/* 8071F338  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8071F33C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8071F340  4B 95 6C 18 */	b SetWall__12dBgS_AcchCirFff
/* 8071F344  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8071F348  4B B4 86 0C */	b cM_rndF__Ff
/* 8071F34C  FC 00 08 1E */	fctiwz f0, f1
/* 8071F350  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8071F354  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F358  B0 1E 05 D8 */	sth r0, 0x5d8(r30)
/* 8071F35C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8071F360  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8071F364  28 00 00 02 */	cmplwi r0, 2
/* 8071F368  40 82 00 10 */	bne lbl_8071F378
/* 8071F36C  38 00 00 01 */	li r0, 1
/* 8071F370  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 8071F374  48 00 00 0C */	b lbl_8071F380
lbl_8071F378:
/* 8071F378  38 00 00 01 */	li r0, 1
/* 8071F37C  98 1E 09 B4 */	stb r0, 0x9b4(r30)
lbl_8071F380:
/* 8071F380  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071F384  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071F388  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8071F38C  FC 40 08 90 */	fmr f2, f1
/* 8071F390  FC 60 08 90 */	fmr f3, f1
/* 8071F394  4B C2 75 D4 */	b PSMTXScale
/* 8071F398  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8071F39C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8071F3A0  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 8071F3A4  38 84 00 24 */	addi r4, r4, 0x24
/* 8071F3A8  4B C2 71 08 */	b PSMTXCopy
/* 8071F3AC  7F C3 F3 78 */	mr r3, r30
/* 8071F3B0  4B FF F4 F5 */	bl daE_MK_BO_Execute__FP13e_mk_bo_class
lbl_8071F3B4:
/* 8071F3B4  7F A3 EB 78 */	mr r3, r29
lbl_8071F3B8:
/* 8071F3B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8071F3BC  4B C4 2E 68 */	b _restgpr_28
/* 8071F3C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8071F3C4  7C 08 03 A6 */	mtlr r0
/* 8071F3C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8071F3CC  4E 80 00 20 */	blr 
