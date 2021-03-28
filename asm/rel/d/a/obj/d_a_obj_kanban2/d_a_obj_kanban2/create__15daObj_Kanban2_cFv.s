lbl_805850E8:
/* 805850E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805850EC  7C 08 02 A6 */	mflr r0
/* 805850F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805850F4  39 61 00 20 */	addi r11, r1, 0x20
/* 805850F8  4B DD D0 E0 */	b _savegpr_28
/* 805850FC  7C 7D 1B 78 */	mr r29, r3
/* 80585100  3C 80 80 58 */	lis r4, lit_3970@ha
/* 80585104  3B E4 56 20 */	addi r31, r4, lit_3970@l
/* 80585108  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8058510C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80585110  40 82 00 F0 */	bne lbl_80585200
/* 80585114  7F A0 EB 79 */	or. r0, r29, r29
/* 80585118  41 82 00 DC */	beq lbl_805851F4
/* 8058511C  7C 1E 03 78 */	mr r30, r0
/* 80585120  4B A9 3A 44 */	b __ct__10fopAc_ac_cFv
/* 80585124  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80585128  4B D3 97 1C */	b __ct__16Z2SoundObjSimpleFv
/* 8058512C  38 7E 06 30 */	addi r3, r30, 0x630
/* 80585130  4B AF 0D 7C */	b __ct__12dBgS_AcchCirFv
/* 80585134  3B 9E 06 70 */	addi r28, r30, 0x670
/* 80585138  7F 83 E3 78 */	mr r3, r28
/* 8058513C  4B AF 0F 64 */	b __ct__9dBgS_AcchFv
/* 80585140  3C 60 80 58 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80585144  38 63 5C 34 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80585148  90 7C 00 10 */	stw r3, 0x10(r28)
/* 8058514C  38 03 00 0C */	addi r0, r3, 0xc
/* 80585150  90 1C 00 14 */	stw r0, 0x14(r28)
/* 80585154  38 03 00 18 */	addi r0, r3, 0x18
/* 80585158  90 1C 00 24 */	stw r0, 0x24(r28)
/* 8058515C  38 7C 00 14 */	addi r3, r28, 0x14
/* 80585160  4B AF 3D 08 */	b SetObj__16dBgS_PolyPassChkFv
/* 80585164  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80585168  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8058516C  90 1E 08 60 */	stw r0, 0x860(r30)
/* 80585170  38 7E 08 64 */	addi r3, r30, 0x864
/* 80585174  4B AF E5 EC */	b __ct__10dCcD_GSttsFv
/* 80585178  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8058517C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80585180  90 7E 08 60 */	stw r3, 0x860(r30)
/* 80585184  38 03 00 20 */	addi r0, r3, 0x20
/* 80585188  90 1E 08 64 */	stw r0, 0x864(r30)
/* 8058518C  3B 9E 08 84 */	addi r28, r30, 0x884
/* 80585190  7F 83 E3 78 */	mr r3, r28
/* 80585194  4B AF E8 94 */	b __ct__12dCcD_GObjInfFv
/* 80585198  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8058519C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805851A0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 805851A4  3C 60 80 58 */	lis r3, __vt__8cM3dGAab@ha
/* 805851A8  38 03 5C 28 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805851AC  90 1C 01 1C */	stw r0, 0x11c(r28)
/* 805851B0  3C 60 80 58 */	lis r3, __vt__8cM3dGSph@ha
/* 805851B4  38 03 5C 1C */	addi r0, r3, __vt__8cM3dGSph@l
/* 805851B8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 805851BC  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 805851C0  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 805851C4  90 7C 01 20 */	stw r3, 0x120(r28)
/* 805851C8  38 03 00 58 */	addi r0, r3, 0x58
/* 805851CC  90 1C 01 34 */	stw r0, 0x134(r28)
/* 805851D0  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 805851D4  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 805851D8  90 7C 00 3C */	stw r3, 0x3c(r28)
/* 805851DC  38 03 00 2C */	addi r0, r3, 0x2c
/* 805851E0  90 1C 01 20 */	stw r0, 0x120(r28)
/* 805851E4  38 03 00 84 */	addi r0, r3, 0x84
/* 805851E8  90 1C 01 34 */	stw r0, 0x134(r28)
/* 805851EC  38 7E 0A 04 */	addi r3, r30, 0xa04
/* 805851F0  4B CC 4D 10 */	b __ct__10dMsgFlow_cFv
lbl_805851F4:
/* 805851F4  80 1D 04 A0 */	lwz r0, 0x4a0(r29)
/* 805851F8  60 00 00 08 */	ori r0, r0, 8
/* 805851FC  90 1D 04 A0 */	stw r0, 0x4a0(r29)
lbl_80585200:
/* 80585200  38 7D 05 68 */	addi r3, r29, 0x568
/* 80585204  3C 80 80 58 */	lis r4, struct_80585710+0x0@ha
/* 80585208  38 84 57 10 */	addi r4, r4, struct_80585710+0x0@l
/* 8058520C  38 84 01 53 */	addi r4, r4, 0x153
/* 80585210  4B AA 7C AC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80585214  7C 7E 1B 78 */	mr r30, r3
/* 80585218  2C 1E 00 04 */	cmpwi r30, 4
/* 8058521C  40 82 02 20 */	bne lbl_8058543C
/* 80585220  7F A3 EB 78 */	mr r3, r29
/* 80585224  3C 80 80 58 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80585228  38 84 50 C8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8058522C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00009800@ha */
/* 80585230  38 A5 98 00 */	addi r5, r5, 0x9800 /* 0x00009800@l */
/* 80585234  4B A9 52 7C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80585238  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8058523C  40 82 00 0C */	bne lbl_80585248
/* 80585240  38 60 00 05 */	li r3, 5
/* 80585244  48 00 01 FC */	b lbl_80585440
lbl_80585248:
/* 80585248  3C 60 80 58 */	lis r3, struct_80585CB4+0x1@ha
/* 8058524C  8C 03 5C B5 */	lbzu r0, struct_80585CB4+0x1@l(r3)
/* 80585250  28 00 00 00 */	cmplwi r0, 0
/* 80585254  40 82 00 20 */	bne lbl_80585274
/* 80585258  38 00 00 01 */	li r0, 1
/* 8058525C  98 03 00 00 */	stb r0, 0(r3)
/* 80585260  98 1D 09 FC */	stb r0, 0x9fc(r29)
/* 80585264  38 00 FF FF */	li r0, -1
/* 80585268  3C 60 80 58 */	lis r3, l_HIO@ha
/* 8058526C  38 63 5C C4 */	addi r3, r3, l_HIO@l
/* 80585270  98 03 00 04 */	stb r0, 4(r3)
lbl_80585274:
/* 80585274  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80585278  B0 1D 0A 00 */	sth r0, 0xa00(r29)
/* 8058527C  38 00 00 00 */	li r0, 0
/* 80585280  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80585284  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80585288  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8058528C  54 00 03 BE */	clrlwi r0, r0, 0xe
/* 80585290  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 80585294  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80585298  54 00 27 3E */	srwi r0, r0, 0x1c
/* 8058529C  7C 05 03 78 */	mr r5, r0
/* 805852A0  28 00 00 0F */	cmplwi r0, 0xf
/* 805852A4  40 82 00 08 */	bne lbl_805852AC
/* 805852A8  38 A0 00 00 */	li r5, 0
lbl_805852AC:
/* 805852AC  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 805852B0  3C 03 FF FD */	addis r0, r3, 0xfffd
/* 805852B4  28 00 FF FF */	cmplwi r0, 0xffff
/* 805852B8  40 82 00 24 */	bne lbl_805852DC
/* 805852BC  7F A3 EB 78 */	mr r3, r29
/* 805852C0  38 80 00 00 */	li r4, 0
/* 805852C4  38 A0 00 00 */	li r5, 0
/* 805852C8  4B FF DC 29 */	bl setActionMode__15daObj_Kanban2_cFii
/* 805852CC  80 7D 05 70 */	lwz r3, 0x570(r29)
/* 805852D0  38 03 00 24 */	addi r0, r3, 0x24
/* 805852D4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 805852D8  48 00 00 1C */	b lbl_805852F4
lbl_805852DC:
/* 805852DC  7F A3 EB 78 */	mr r3, r29
/* 805852E0  38 80 00 01 */	li r4, 1
/* 805852E4  54 A5 06 3E */	clrlwi r5, r5, 0x18
/* 805852E8  4B FF DC 09 */	bl setActionMode__15daObj_Kanban2_cFii
/* 805852EC  7F A3 EB 78 */	mr r3, r29
/* 805852F0  4B FF D7 79 */	bl setCullMtx__15daObj_Kanban2_cFv
lbl_805852F4:
/* 805852F4  7F A3 EB 78 */	mr r3, r29
/* 805852F8  4B FF D9 49 */	bl setCenterPos__15daObj_Kanban2_cFv
/* 805852FC  7F A3 EB 78 */	mr r3, r29
/* 80585300  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80585304  FC 40 08 90 */	fmr f2, f1
/* 80585308  FC 60 08 90 */	fmr f3, f1
/* 8058530C  4B A9 52 1C */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 80585310  7F A3 EB 78 */	mr r3, r29
/* 80585314  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80585318  FC 40 08 90 */	fmr f2, f1
/* 8058531C  FC 60 08 90 */	fmr f3, f1
/* 80585320  4B A9 52 18 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 80585324  38 00 00 00 */	li r0, 0
/* 80585328  90 01 00 08 */	stw r0, 8(r1)
/* 8058532C  38 7D 06 70 */	addi r3, r29, 0x670
/* 80585330  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80585334  38 BD 04 BC */	addi r5, r29, 0x4bc
/* 80585338  7F A6 EB 78 */	mr r6, r29
/* 8058533C  38 E0 00 01 */	li r7, 1
/* 80585340  39 1D 06 30 */	addi r8, r29, 0x630
/* 80585344  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 80585348  39 40 00 00 */	li r10, 0
/* 8058534C  4B AF 0E FC */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80585350  38 7D 06 30 */	addi r3, r29, 0x630
/* 80585354  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80585358  C0 1D 06 00 */	lfs f0, 0x600(r29)
/* 8058535C  EC 41 00 2A */	fadds f2, f1, f0
/* 80585360  4B AF 0B F8 */	b SetWall__12dBgS_AcchCirFff
/* 80585364  38 00 00 0A */	li r0, 0xa
/* 80585368  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8058536C  B0 1D 05 60 */	sth r0, 0x560(r29)
/* 80585370  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80585374  3C 03 FF FD */	addis r0, r3, 0xfffd
/* 80585378  28 00 FF FF */	cmplwi r0, 0xffff
/* 8058537C  40 82 00 1C */	bne lbl_80585398
/* 80585380  38 7D 08 48 */	addi r3, r29, 0x848
/* 80585384  38 80 00 FA */	li r4, 0xfa
/* 80585388  38 A0 00 00 */	li r5, 0
/* 8058538C  7F A6 EB 78 */	mr r6, r29
/* 80585390  4B AF E4 D0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80585394  48 00 00 18 */	b lbl_805853AC
lbl_80585398:
/* 80585398  38 7D 08 48 */	addi r3, r29, 0x848
/* 8058539C  38 80 00 64 */	li r4, 0x64
/* 805853A0  38 A0 00 00 */	li r5, 0
/* 805853A4  7F A6 EB 78 */	mr r6, r29
/* 805853A8  4B AF E4 B8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
lbl_805853AC:
/* 805853AC  38 7D 08 84 */	addi r3, r29, 0x884
/* 805853B0  3C 80 80 58 */	lis r4, data_805859C4@ha
/* 805853B4  38 84 59 C4 */	addi r4, r4, data_805859C4@l
/* 805853B8  4B AF F6 7C */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805853BC  38 1D 08 48 */	addi r0, r29, 0x848
/* 805853C0  90 1D 08 C8 */	stw r0, 0x8c8(r29)
/* 805853C4  80 1D 09 20 */	lwz r0, 0x920(r29)
/* 805853C8  60 00 00 04 */	ori r0, r0, 4
/* 805853CC  90 1D 09 20 */	stw r0, 0x920(r29)
/* 805853D0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 805853D4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 805853D8  38 A0 00 01 */	li r5, 1
/* 805853DC  81 9D 05 CC */	lwz r12, 0x5cc(r29)
/* 805853E0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805853E4  7D 89 03 A6 */	mtctr r12
/* 805853E8  4E 80 04 21 */	bctrl 
/* 805853EC  38 00 00 01 */	li r0, 1
/* 805853F0  98 1D 09 DA */	stb r0, 0x9da(r29)
/* 805853F4  80 1D 06 0C */	lwz r0, 0x60c(r29)
/* 805853F8  20 60 00 01 */	subfic r3, r0, 1
/* 805853FC  30 03 FF FF */	addic r0, r3, -1
/* 80585400  7C 00 19 10 */	subfe r0, r0, r3
/* 80585404  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80585408  80 1D 06 14 */	lwz r0, 0x614(r29)
/* 8058540C  20 60 00 02 */	subfic r3, r0, 2
/* 80585410  30 03 FF FF */	addic r0, r3, -1
/* 80585414  7C 00 19 10 */	subfe r0, r0, r3
/* 80585418  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8058541C  7C 80 03 79 */	or. r0, r4, r0
/* 80585420  41 82 00 14 */	beq lbl_80585434
/* 80585424  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80585428  38 9D 05 DC */	addi r4, r29, 0x5dc
/* 8058542C  7C 65 1B 78 */	mr r5, r3
/* 80585430  4B DC 1C 84 */	b PSVECSubtract
lbl_80585434:
/* 80585434  7F A3 EB 78 */	mr r3, r29
/* 80585438  4B FF FA 79 */	bl daObj_Kanban2_Execute__FP15daObj_Kanban2_c
lbl_8058543C:
/* 8058543C  7F C3 F3 78 */	mr r3, r30
lbl_80585440:
/* 80585440  39 61 00 20 */	addi r11, r1, 0x20
/* 80585444  4B DD CD E0 */	b _restgpr_28
/* 80585448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058544C  7C 08 03 A6 */	mtlr r0
/* 80585450  38 21 00 20 */	addi r1, r1, 0x20
/* 80585454  4E 80 00 20 */	blr 
