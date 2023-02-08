lbl_80CDC038:
/* 80CDC038  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CDC03C  7C 08 02 A6 */	mflr r0
/* 80CDC040  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CDC044  39 61 00 20 */	addi r11, r1, 0x20
/* 80CDC048  4B 68 61 95 */	bl _savegpr_29
/* 80CDC04C  7C 7E 1B 78 */	mr r30, r3
/* 80CDC050  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CDC054  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CDC058  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 80CDC05C  7F E3 FB 78 */	mr r3, r31
/* 80CDC060  3C 80 80 CE */	lis r4, d_a_obj_smgdoor__stringBase0@ha /* 0x80CDCC24@ha */
/* 80CDC064  38 84 CC 24 */	addi r4, r4, d_a_obj_smgdoor__stringBase0@l /* 0x80CDCC24@l */
/* 80CDC068  38 84 00 91 */	addi r4, r4, 0x91
/* 80CDC06C  38 A0 00 00 */	li r5, 0
/* 80CDC070  38 C0 00 00 */	li r6, 0
/* 80CDC074  4B 36 BA A9 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80CDC078  90 7E 05 B4 */	stw r3, 0x5b4(r30)
/* 80CDC07C  7F C3 F3 78 */	mr r3, r30
/* 80CDC080  4B FF FF 71 */	bl getDemoAction__14daObjSmgDoor_cFv
/* 80CDC084  7C 7D 1B 78 */	mr r29, r3
/* 80CDC088  7F E3 FB 78 */	mr r3, r31
/* 80CDC08C  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80CDC090  4B 36 BC BD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80CDC094  2C 03 00 00 */	cmpwi r3, 0
/* 80CDC098  41 82 00 90 */	beq lbl_80CDC128
/* 80CDC09C  2C 1D 00 02 */	cmpwi r29, 2
/* 80CDC0A0  41 82 00 6C */	beq lbl_80CDC10C
/* 80CDC0A4  40 80 00 14 */	bge lbl_80CDC0B8
/* 80CDC0A8  2C 1D 00 00 */	cmpwi r29, 0
/* 80CDC0AC  41 82 00 18 */	beq lbl_80CDC0C4
/* 80CDC0B0  40 80 00 50 */	bge lbl_80CDC100
/* 80CDC0B4  48 00 00 74 */	b lbl_80CDC128
lbl_80CDC0B8:
/* 80CDC0B8  2C 1D 00 05 */	cmpwi r29, 5
/* 80CDC0BC  41 82 00 5C */	beq lbl_80CDC118
/* 80CDC0C0  48 00 00 68 */	b lbl_80CDC128
lbl_80CDC0C4:
/* 80CDC0C4  7F E3 FB 78 */	mr r3, r31
/* 80CDC0C8  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80CDC0CC  3C A0 80 CE */	lis r5, d_a_obj_smgdoor__stringBase0@ha /* 0x80CDCC24@ha */
/* 80CDC0D0  38 A5 CC 24 */	addi r5, r5, d_a_obj_smgdoor__stringBase0@l /* 0x80CDCC24@l */
/* 80CDC0D4  38 A5 00 99 */	addi r5, r5, 0x99
/* 80CDC0D8  38 C0 00 03 */	li r6, 3
/* 80CDC0DC  4B 36 C0 11 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CDC0E0  28 03 00 00 */	cmplwi r3, 0
/* 80CDC0E4  40 82 00 10 */	bne lbl_80CDC0F4
/* 80CDC0E8  38 00 00 01 */	li r0, 1
/* 80CDC0EC  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80CDC0F0  48 00 00 38 */	b lbl_80CDC128
lbl_80CDC0F4:
/* 80CDC0F4  80 03 00 00 */	lwz r0, 0(r3)
/* 80CDC0F8  98 1E 05 E9 */	stb r0, 0x5e9(r30)
/* 80CDC0FC  48 00 00 2C */	b lbl_80CDC128
lbl_80CDC100:
/* 80CDC100  7F C3 F3 78 */	mr r3, r30
/* 80CDC104  48 00 01 45 */	bl openInit__14daObjSmgDoor_cFv
/* 80CDC108  48 00 00 20 */	b lbl_80CDC128
lbl_80CDC10C:
/* 80CDC10C  7F C3 F3 78 */	mr r3, r30
/* 80CDC110  48 00 03 9D */	bl setGoal__14daObjSmgDoor_cFv
/* 80CDC114  48 00 00 14 */	b lbl_80CDC128
lbl_80CDC118:
/* 80CDC118  38 60 00 03 */	li r3, 3
/* 80CDC11C  4B 4C C6 C9 */	bl dKy_change_colpat__FUc
/* 80CDC120  38 00 00 00 */	li r0, 0
/* 80CDC124  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
lbl_80CDC128:
/* 80CDC128  2C 1D 00 04 */	cmpwi r29, 4
/* 80CDC12C  41 82 00 6C */	beq lbl_80CDC198
/* 80CDC130  40 80 00 1C */	bge lbl_80CDC14C
/* 80CDC134  2C 1D 00 01 */	cmpwi r29, 1
/* 80CDC138  41 82 00 40 */	beq lbl_80CDC178
/* 80CDC13C  40 80 00 E4 */	bge lbl_80CDC220
/* 80CDC140  2C 1D 00 00 */	cmpwi r29, 0
/* 80CDC144  40 80 00 14 */	bge lbl_80CDC158
/* 80CDC148  48 00 00 D8 */	b lbl_80CDC220
lbl_80CDC14C:
/* 80CDC14C  2C 1D 00 06 */	cmpwi r29, 6
/* 80CDC150  40 80 00 D0 */	bge lbl_80CDC220
/* 80CDC154  48 00 00 50 */	b lbl_80CDC1A4
lbl_80CDC158:
/* 80CDC158  38 7E 05 E9 */	addi r3, r30, 0x5e9
/* 80CDC15C  48 00 0A 75 */	bl func_80CDCBD0
/* 80CDC160  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CDC164  40 82 00 C8 */	bne lbl_80CDC22C
/* 80CDC168  7F E3 FB 78 */	mr r3, r31
/* 80CDC16C  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80CDC170  4B 36 C0 0D */	bl cutEnd__16dEvent_manager_cFi
/* 80CDC174  48 00 00 B8 */	b lbl_80CDC22C
lbl_80CDC178:
/* 80CDC178  7F C3 F3 78 */	mr r3, r30
/* 80CDC17C  48 00 01 FD */	bl openProc__14daObjSmgDoor_cFv
/* 80CDC180  2C 03 00 00 */	cmpwi r3, 0
/* 80CDC184  41 82 00 A8 */	beq lbl_80CDC22C
/* 80CDC188  7F E3 FB 78 */	mr r3, r31
/* 80CDC18C  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80CDC190  4B 36 BF ED */	bl cutEnd__16dEvent_manager_cFi
/* 80CDC194  48 00 00 98 */	b lbl_80CDC22C
lbl_80CDC198:
/* 80CDC198  7F C3 F3 78 */	mr r3, r30
/* 80CDC19C  48 00 04 75 */	bl sceneChange__14daObjSmgDoor_cFv
/* 80CDC1A0  48 00 00 8C */	b lbl_80CDC22C
lbl_80CDC1A4:
/* 80CDC1A4  A0 1E 05 F2 */	lhz r0, 0x5f2(r30)
/* 80CDC1A8  28 00 00 00 */	cmplwi r0, 0
/* 80CDC1AC  40 82 00 64 */	bne lbl_80CDC210
/* 80CDC1B0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CDC1B4  7C 03 07 74 */	extsb r3, r0
/* 80CDC1B8  4B 35 0E B5 */	bl dComIfGp_getReverb__Fi
/* 80CDC1BC  7C 67 1B 78 */	mr r7, r3
/* 80CDC1C0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080293@ha */
/* 80CDC1C4  38 03 02 93 */	addi r0, r3, 0x0293 /* 0x00080293@l */
/* 80CDC1C8  90 01 00 08 */	stw r0, 8(r1)
/* 80CDC1CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CDC1D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CDC1D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80CDC1D8  38 81 00 08 */	addi r4, r1, 8
/* 80CDC1DC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CDC1E0  38 C0 00 00 */	li r6, 0
/* 80CDC1E4  3D 00 80 CE */	lis r8, lit_3825@ha /* 0x80CDCC04@ha */
/* 80CDC1E8  C0 28 CC 04 */	lfs f1, lit_3825@l(r8)  /* 0x80CDCC04@l */
/* 80CDC1EC  FC 40 08 90 */	fmr f2, f1
/* 80CDC1F0  3D 00 80 CE */	lis r8, lit_3826@ha /* 0x80CDCC08@ha */
/* 80CDC1F4  C0 68 CC 08 */	lfs f3, lit_3826@l(r8)  /* 0x80CDCC08@l */
/* 80CDC1F8  FC 80 18 90 */	fmr f4, f3
/* 80CDC1FC  39 00 00 00 */	li r8, 0
/* 80CDC200  4B 5C F7 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CDC204  7F E3 FB 78 */	mr r3, r31
/* 80CDC208  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80CDC20C  4B 36 BF 71 */	bl cutEnd__16dEvent_manager_cFi
lbl_80CDC210:
/* 80CDC210  A0 7E 05 F2 */	lhz r3, 0x5f2(r30)
/* 80CDC214  38 03 00 01 */	addi r0, r3, 1
/* 80CDC218  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 80CDC21C  48 00 00 10 */	b lbl_80CDC22C
lbl_80CDC220:
/* 80CDC220  7F E3 FB 78 */	mr r3, r31
/* 80CDC224  80 9E 05 B4 */	lwz r4, 0x5b4(r30)
/* 80CDC228  4B 36 BF 55 */	bl cutEnd__16dEvent_manager_cFi
lbl_80CDC22C:
/* 80CDC22C  38 60 00 00 */	li r3, 0
/* 80CDC230  39 61 00 20 */	addi r11, r1, 0x20
/* 80CDC234  4B 68 5F F5 */	bl _restgpr_29
/* 80CDC238  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CDC23C  7C 08 03 A6 */	mtlr r0
/* 80CDC240  38 21 00 20 */	addi r1, r1, 0x20
/* 80CDC244  4E 80 00 20 */	blr 
