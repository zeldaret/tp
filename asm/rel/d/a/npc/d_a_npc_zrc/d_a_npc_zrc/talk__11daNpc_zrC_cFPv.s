lbl_80B920EC:
/* 80B920EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B920F0  7C 08 02 A6 */	mflr r0
/* 80B920F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B920F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B920FC  4B 7D 00 DC */	b _savegpr_28
/* 80B92100  7C 7D 1B 78 */	mr r29, r3
/* 80B92104  3B E0 00 00 */	li r31, 0
/* 80B92108  3B C0 00 00 */	li r30, 0
/* 80B9210C  A0 03 0E 26 */	lhz r0, 0xe26(r3)
/* 80B92110  2C 00 00 02 */	cmpwi r0, 2
/* 80B92114  41 82 00 48 */	beq lbl_80B9215C
/* 80B92118  40 80 01 A4 */	bge lbl_80B922BC
/* 80B9211C  2C 00 00 00 */	cmpwi r0, 0
/* 80B92120  41 82 00 0C */	beq lbl_80B9212C
/* 80B92124  48 00 01 98 */	b lbl_80B922BC
/* 80B92128  48 00 01 94 */	b lbl_80B922BC
lbl_80B9212C:
/* 80B9212C  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80B92130  28 00 00 00 */	cmplwi r0, 0
/* 80B92134  40 82 01 88 */	bne lbl_80B922BC
/* 80B92138  38 00 00 00 */	li r0, 0
/* 80B9213C  98 1D 0E 38 */	stb r0, 0xe38(r29)
/* 80B92140  80 9D 0E 20 */	lwz r4, 0xe20(r29)
/* 80B92144  38 A0 00 00 */	li r5, 0
/* 80B92148  4B 5C 1B D4 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B9214C  38 00 00 00 */	li r0, 0
/* 80B92150  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B92154  38 00 00 02 */	li r0, 2
/* 80B92158  B0 1D 0E 26 */	sth r0, 0xe26(r29)
lbl_80B9215C:
/* 80B9215C  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 80B92160  28 00 00 00 */	cmplwi r0, 0
/* 80B92164  41 82 00 38 */	beq lbl_80B9219C
/* 80B92168  3B C0 00 01 */	li r30, 1
/* 80B9216C  88 1D 0E 28 */	lbz r0, 0xe28(r29)
/* 80B92170  28 00 00 03 */	cmplwi r0, 3
/* 80B92174  40 82 00 E4 */	bne lbl_80B92258
/* 80B92178  7F A3 EB 78 */	mr r3, r29
/* 80B9217C  38 80 00 03 */	li r4, 3
/* 80B92180  4B FF EF BD */	bl setLookMode__11daNpc_zrC_cFi
/* 80B92184  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80B92188  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B9218C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B92190  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B92194  4B 5B E5 28 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B92198  48 00 00 C0 */	b lbl_80B92258
lbl_80B9219C:
/* 80B9219C  7F A3 EB 78 */	mr r3, r29
/* 80B921A0  38 80 00 03 */	li r4, 3
/* 80B921A4  4B FF EF 99 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B921A8  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80B921AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B921B0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80B921B4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B921B8  4B 5B E5 04 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B921BC  7F A3 EB 78 */	mr r3, r29
/* 80B921C0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B921C4  4B 48 85 4C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B921C8  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80B921CC  7C 60 07 34 */	extsh r0, r3
/* 80B921D0  7C 04 00 00 */	cmpw r4, r0
/* 80B921D4  40 82 00 0C */	bne lbl_80B921E0
/* 80B921D8  3B C0 00 01 */	li r30, 1
/* 80B921DC  48 00 00 7C */	b lbl_80B92258
lbl_80B921E0:
/* 80B921E0  7F A3 EB 78 */	mr r3, r29
/* 80B921E4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B921E8  4B 48 85 28 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B921EC  7C 64 1B 78 */	mr r4, r3
/* 80B921F0  7F A3 EB 78 */	mr r3, r29
/* 80B921F4  38 A0 00 0C */	li r5, 0xc
/* 80B921F8  38 C0 00 0C */	li r6, 0xc
/* 80B921FC  38 E0 00 0F */	li r7, 0xf
/* 80B92200  4B 5C 1E A4 */	b step__8daNpcF_cFsiii
/* 80B92204  2C 03 00 00 */	cmpwi r3, 0
/* 80B92208  41 82 00 50 */	beq lbl_80B92258
/* 80B9220C  7F A3 EB 78 */	mr r3, r29
/* 80B92210  38 80 00 11 */	li r4, 0x11
/* 80B92214  3C A0 80 B9 */	lis r5, lit_4767@ha
/* 80B92218  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)
/* 80B9221C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B92220  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B92224  7D 89 03 A6 */	mtctr r12
/* 80B92228  4E 80 04 21 */	bctrl 
/* 80B9222C  7F A3 EB 78 */	mr r3, r29
/* 80B92230  38 80 00 00 */	li r4, 0
/* 80B92234  3C A0 80 B9 */	lis r5, lit_4767@ha
/* 80B92238  C0 25 32 A8 */	lfs f1, lit_4767@l(r5)
/* 80B9223C  38 A0 00 00 */	li r5, 0
/* 80B92240  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B92244  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B92248  7D 89 03 A6 */	mtctr r12
/* 80B9224C  4E 80 04 21 */	bctrl 
/* 80B92250  38 00 00 00 */	li r0, 0
/* 80B92254  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80B92258:
/* 80B92258  2C 1E 00 00 */	cmpwi r30, 0
/* 80B9225C  41 82 00 2C */	beq lbl_80B92288
/* 80B92260  7F A3 EB 78 */	mr r3, r29
/* 80B92264  38 80 00 00 */	li r4, 0
/* 80B92268  38 A0 00 01 */	li r5, 1
/* 80B9226C  38 C0 00 00 */	li r6, 0
/* 80B92270  4B 5C 1B 14 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B92274  2C 03 00 00 */	cmpwi r3, 0
/* 80B92278  41 82 00 10 */	beq lbl_80B92288
/* 80B9227C  3B E0 00 01 */	li r31, 1
/* 80B92280  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80B92284  90 1D 0E 20 */	stw r0, 0xe20(r29)
lbl_80B92288:
/* 80B92288  2C 1F 00 00 */	cmpwi r31, 0
/* 80B9228C  41 82 00 30 */	beq lbl_80B922BC
/* 80B92290  38 00 00 03 */	li r0, 3
/* 80B92294  B0 1D 0E 26 */	sth r0, 0xe26(r29)
/* 80B92298  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 80B9229C  28 00 00 00 */	cmplwi r0, 0
/* 80B922A0  40 82 00 14 */	bne lbl_80B922B4
/* 80B922A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B922A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B922AC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B922B0  4B 4B 01 B8 */	b reset__14dEvt_control_cFv
lbl_80B922B4:
/* 80B922B4  38 00 00 00 */	li r0, 0
/* 80B922B8  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_80B922BC:
/* 80B922BC  7F E3 FB 78 */	mr r3, r31
/* 80B922C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B922C4  4B 7C FF 60 */	b _restgpr_28
/* 80B922C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B922CC  7C 08 03 A6 */	mtlr r0
/* 80B922D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B922D4  4E 80 00 20 */	blr 
