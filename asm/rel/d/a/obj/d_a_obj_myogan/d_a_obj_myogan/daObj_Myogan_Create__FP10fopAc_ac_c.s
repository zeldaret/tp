lbl_80C9F0AC:
/* 80C9F0AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C9F0B0  7C 08 02 A6 */	mflr r0
/* 80C9F0B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C9F0B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C9F0BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C9F0C0  7C 7F 1B 78 */	mr r31, r3
/* 80C9F0C4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C9F0C8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C9F0CC  40 82 00 1C */	bne lbl_80C9F0E8
/* 80C9F0D0  28 1F 00 00 */	cmplwi r31, 0
/* 80C9F0D4  41 82 00 08 */	beq lbl_80C9F0DC
/* 80C9F0D8  4B 37 9A 8C */	b __ct__10fopAc_ac_cFv
lbl_80C9F0DC:
/* 80C9F0DC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C9F0E0  60 00 00 08 */	ori r0, r0, 8
/* 80C9F0E4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C9F0E8:
/* 80C9F0E8  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C9F0EC  3C 80 80 CA */	lis r4, stringBase0@ha
/* 80C9F0F0  38 84 F2 A0 */	addi r4, r4, stringBase0@l
/* 80C9F0F4  4B 38 DD C8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C9F0F8  7C 7E 1B 78 */	mr r30, r3
/* 80C9F0FC  2C 1E 00 04 */	cmpwi r30, 4
/* 80C9F100  40 82 00 D4 */	bne lbl_80C9F1D4
/* 80C9F104  7F E3 FB 78 */	mr r3, r31
/* 80C9F108  3C 80 80 CA */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 80C9F10C  38 84 EE 28 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 80C9F110  3C A0 00 05 */	lis r5, 0x0005 /* 0x0004B000@ha */
/* 80C9F114  38 A5 B0 00 */	addi r5, r5, 0xB000 /* 0x0004B000@l */
/* 80C9F118  4B 37 B3 98 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C9F11C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9F120  40 82 00 0C */	bne lbl_80C9F12C
/* 80C9F124  38 60 00 05 */	li r3, 5
/* 80C9F128  48 00 00 B0 */	b lbl_80C9F1D8
lbl_80C9F12C:
/* 80C9F12C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9F130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9F134  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C9F138  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 80C9F13C  7F E5 FB 78 */	mr r5, r31
/* 80C9F140  4B 3D 58 C8 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 80C9F144  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C9F148  41 82 00 0C */	beq lbl_80C9F154
/* 80C9F14C  38 60 00 05 */	li r3, 5
/* 80C9F150  48 00 00 88 */	b lbl_80C9F1D8
lbl_80C9F154:
/* 80C9F154  3C 60 80 CA */	lis r3, data_80C9F318@ha
/* 80C9F158  8C 03 F3 18 */	lbzu r0, data_80C9F318@l(r3)
/* 80C9F15C  28 00 00 00 */	cmplwi r0, 0
/* 80C9F160  40 82 00 20 */	bne lbl_80C9F180
/* 80C9F164  38 00 00 01 */	li r0, 1
/* 80C9F168  98 1F 05 C0 */	stb r0, 0x5c0(r31)
/* 80C9F16C  98 03 00 00 */	stb r0, 0(r3)
/* 80C9F170  38 00 FF FF */	li r0, -1
/* 80C9F174  3C 60 80 CA */	lis r3, l_HIO@ha
/* 80C9F178  38 63 F3 28 */	addi r3, r3, l_HIO@l
/* 80C9F17C  98 03 00 04 */	stb r0, 4(r3)
lbl_80C9F180:
/* 80C9F180  3C 60 80 CA */	lis r3, lit_3966@ha
/* 80C9F184  C0 23 F2 98 */	lfs f1, lit_3966@l(r3)
/* 80C9F188  4B 5C 87 CC */	b cM_rndF__Ff
/* 80C9F18C  FC 00 08 1E */	fctiwz f0, f1
/* 80C9F190  D8 01 00 08 */	stfd f0, 8(r1)
/* 80C9F194  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C9F198  B0 1F 05 7C */	sth r0, 0x57c(r31)
/* 80C9F19C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9F1A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9F1A4  38 63 09 58 */	addi r3, r3, 0x958
/* 80C9F1A8  38 80 00 07 */	li r4, 7
/* 80C9F1AC  4B 39 57 88 */	b isDungeonItem__12dSv_memBit_cCFi
/* 80C9F1B0  2C 03 00 00 */	cmpwi r3, 0
/* 80C9F1B4  41 82 00 18 */	beq lbl_80C9F1CC
/* 80C9F1B8  38 00 00 01 */	li r0, 1
/* 80C9F1BC  B0 1F 05 7E */	sth r0, 0x57e(r31)
/* 80C9F1C0  3C 60 80 CA */	lis r3, lit_3967@ha
/* 80C9F1C4  C0 03 F2 9C */	lfs f0, lit_3967@l(r3)
/* 80C9F1C8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80C9F1CC:
/* 80C9F1CC  7F E3 FB 78 */	mr r3, r31
/* 80C9F1D0  4B FF FB 8D */	bl daObj_Myogan_Execute__FP16obj_myogan_class
lbl_80C9F1D4:
/* 80C9F1D4  7F C3 F3 78 */	mr r3, r30
lbl_80C9F1D8:
/* 80C9F1D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C9F1DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C9F1E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C9F1E4  7C 08 03 A6 */	mtlr r0
/* 80C9F1E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80C9F1EC  4E 80 00 20 */	blr 
