lbl_80C9555C:
/* 80C9555C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C95560  7C 08 02 A6 */	mflr r0
/* 80C95564  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C95568  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80C9556C  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80C95570  39 61 00 70 */	addi r11, r1, 0x70
/* 80C95574  4B 6C CC 59 */	bl _savegpr_25
/* 80C95578  7C 79 1B 78 */	mr r25, r3
/* 80C9557C  7C BA 2B 78 */	mr r26, r5
/* 80C95580  3C 60 80 C9 */	lis r3, m__17daObj_Mie_Param_c@ha /* 0x80C95AAC@ha */
/* 80C95584  3B A3 5A AC */	addi r29, r3, m__17daObj_Mie_Param_c@l /* 0x80C95AAC@l */
/* 80C95588  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C9558C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C95590  4B 37 6E 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 80C95594  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C95598  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C9559C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C955A0  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 80C955A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C955A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C955AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C955B0  38 81 00 14 */	addi r4, r1, 0x14
/* 80C955B4  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C955B8  4B 6B 17 B5 */	bl PSMTXMultVec
/* 80C955BC  38 61 00 20 */	addi r3, r1, 0x20
/* 80C955C0  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80C955C4  7C 65 1B 78 */	mr r5, r3
/* 80C955C8  4B 6B 1A C9 */	bl PSVECAdd
/* 80C955CC  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80C955D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C955D4  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80C955D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C955DC  C0 1D 00 C4 */	lfs f0, 0xc4(r29)
/* 80C955E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C955E4  3B 60 00 00 */	li r27, 0
/* 80C955E8  3B E0 00 00 */	li r31, 0
/* 80C955EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C955F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C955F4  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80C955F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C955FC  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C95600  C3 FD 00 C8 */	lfs f31, 0xc8(r29)
lbl_80C95604:
/* 80C95604  7F C3 F3 78 */	mr r3, r30
/* 80C95608  38 81 00 14 */	addi r4, r1, 0x14
/* 80C9560C  3B A1 00 2C */	addi r29, r1, 0x2c
/* 80C95610  7F BD FA 14 */	add r29, r29, r31
/* 80C95614  7F A5 EB 78 */	mr r5, r29
/* 80C95618  4B 6B 17 55 */	bl PSMTXMultVec
/* 80C9561C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C95620  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80C95624  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C95628  7F A3 EB 78 */	mr r3, r29
/* 80C9562C  38 81 00 20 */	addi r4, r1, 0x20
/* 80C95630  7F A5 EB 78 */	mr r5, r29
/* 80C95634  4B 6B 1A 5D */	bl PSVECAdd
/* 80C95638  38 79 09 60 */	addi r3, r25, 0x960
/* 80C9563C  38 81 00 20 */	addi r4, r1, 0x20
/* 80C95640  7F A5 EB 78 */	mr r5, r29
/* 80C95644  7F 26 CB 78 */	mr r6, r25
/* 80C95648  4B 3E 27 1D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C9564C  7F 83 E3 78 */	mr r3, r28
/* 80C95650  38 99 09 60 */	addi r4, r25, 0x960
/* 80C95654  4B 3D ED 61 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C95658  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9565C  41 82 00 20 */	beq lbl_80C9567C
/* 80C95660  C0 19 09 90 */	lfs f0, 0x990(r25)
/* 80C95664  D0 1D 00 00 */	stfs f0, 0(r29)
/* 80C95668  C0 19 09 94 */	lfs f0, 0x994(r25)
/* 80C9566C  D0 1D 00 04 */	stfs f0, 4(r29)
/* 80C95670  C0 19 09 98 */	lfs f0, 0x998(r25)
/* 80C95674  D0 1D 00 08 */	stfs f0, 8(r29)
/* 80C95678  48 00 00 0C */	b lbl_80C95684
lbl_80C9567C:
/* 80C9567C  38 60 00 00 */	li r3, 0
/* 80C95680  48 00 00 4C */	b lbl_80C956CC
lbl_80C95684:
/* 80C95684  3B 7B 00 01 */	addi r27, r27, 1
/* 80C95688  2C 1B 00 02 */	cmpwi r27, 2
/* 80C9568C  3B FF 00 0C */	addi r31, r31, 0xc
/* 80C95690  41 80 FF 74 */	blt lbl_80C95604
/* 80C95694  38 61 00 08 */	addi r3, r1, 8
/* 80C95698  38 81 00 38 */	addi r4, r1, 0x38
/* 80C9569C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C956A0  4B 5D 14 95 */	bl __mi__4cXyzCFRC3Vec
/* 80C956A4  C0 21 00 08 */	lfs f1, 8(r1)
/* 80C956A8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C956AC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C956B0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C956B4  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80C956B8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80C956BC  4B 5D 1F B9 */	bl cM_atan2s__Fff
/* 80C956C0  38 03 40 00 */	addi r0, r3, 0x4000
/* 80C956C4  B0 1A 00 00 */	sth r0, 0(r26)
/* 80C956C8  38 60 00 01 */	li r3, 1
lbl_80C956CC:
/* 80C956CC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80C956D0  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80C956D4  39 61 00 70 */	addi r11, r1, 0x70
/* 80C956D8  4B 6C CB 41 */	bl _restgpr_25
/* 80C956DC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C956E0  7C 08 03 A6 */	mtlr r0
/* 80C956E4  38 21 00 80 */	addi r1, r1, 0x80
/* 80C956E8  4E 80 00 20 */	blr 
