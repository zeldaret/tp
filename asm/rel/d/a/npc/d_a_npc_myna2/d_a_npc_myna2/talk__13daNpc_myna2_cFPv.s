lbl_80A86400:
/* 80A86400  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A86404  7C 08 02 A6 */	mflr r0
/* 80A86408  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A8640C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A86410  4B 8D BD C9 */	bl _savegpr_28
/* 80A86414  7C 7D 1B 78 */	mr r29, r3
/* 80A86418  3B E0 00 00 */	li r31, 0
/* 80A8641C  3B C0 00 00 */	li r30, 0
/* 80A86420  A0 03 0E 0A */	lhz r0, 0xe0a(r3)
/* 80A86424  2C 00 00 02 */	cmpwi r0, 2
/* 80A86428  41 82 00 50 */	beq lbl_80A86478
/* 80A8642C  40 80 01 B4 */	bge lbl_80A865E0
/* 80A86430  2C 00 00 00 */	cmpwi r0, 0
/* 80A86434  41 82 00 0C */	beq lbl_80A86440
/* 80A86438  48 00 01 A8 */	b lbl_80A865E0
/* 80A8643C  48 00 01 A4 */	b lbl_80A865E0
lbl_80A86440:
/* 80A86440  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80A86444  28 00 00 00 */	cmplwi r0, 0
/* 80A86448  40 82 01 98 */	bne lbl_80A865E0
/* 80A8644C  80 9D 0E 04 */	lwz r4, 0xe04(r29)
/* 80A86450  38 A0 00 00 */	li r5, 0
/* 80A86454  4B 6C D8 C9 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A86458  38 00 00 00 */	li r0, 0
/* 80A8645C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A86460  3C 60 80 A9 */	lis r3, lit_4462@ha /* 0x80A884CC@ha */
/* 80A86464  C0 03 84 CC */	lfs f0, lit_4462@l(r3)  /* 0x80A884CC@l */
/* 80A86468  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A8646C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A86470  38 00 00 02 */	li r0, 2
/* 80A86474  B0 1D 0E 0A */	sth r0, 0xe0a(r29)
lbl_80A86478:
/* 80A86478  38 7D 0B E8 */	addi r3, r29, 0xbe8
/* 80A8647C  38 80 00 00 */	li r4, 0
/* 80A86480  4B 83 B7 A5 */	bl playSumomoBgm__16Z2CreatureSumomoFUl
/* 80A86484  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 80A86488  28 00 00 00 */	cmplwi r0, 0
/* 80A8648C  41 82 00 80 */	beq lbl_80A8650C
/* 80A86490  3B C0 00 01 */	li r30, 1
/* 80A86494  88 1D 0E 0C */	lbz r0, 0xe0c(r29)
/* 80A86498  28 00 00 00 */	cmplwi r0, 0
/* 80A8649C  41 82 00 E8 */	beq lbl_80A86584
/* 80A864A0  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 80A864A4  38 80 00 00 */	li r4, 0
/* 80A864A8  38 A0 00 10 */	li r5, 0x10
/* 80A864AC  38 C0 02 00 */	li r6, 0x200
/* 80A864B0  4B 7E A1 59 */	bl cLib_addCalcAngleS2__FPssss
/* 80A864B4  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80A864B8  38 80 00 00 */	li r4, 0
/* 80A864BC  38 A0 00 10 */	li r5, 0x10
/* 80A864C0  38 C0 02 00 */	li r6, 0x200
/* 80A864C4  4B 7E A1 45 */	bl cLib_addCalcAngleS2__FPssss
/* 80A864C8  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80A864CC  B0 1D 08 F0 */	sth r0, 0x8f0(r29)
/* 80A864D0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A864D4  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A864D8  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80A864DC  B0 1D 08 F4 */	sth r0, 0x8f4(r29)
/* 80A864E0  A8 1D 08 F0 */	lha r0, 0x8f0(r29)
/* 80A864E4  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80A864E8  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A864EC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A864F0  A8 1D 08 F4 */	lha r0, 0x8f4(r29)
/* 80A864F4  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80A864F8  7F A3 EB 78 */	mr r3, r29
/* 80A864FC  38 80 00 00 */	li r4, 0
/* 80A86500  38 A0 00 01 */	li r5, 1
/* 80A86504  48 00 09 89 */	bl calcHovering__13daNpc_myna2_cFii
/* 80A86508  48 00 00 7C */	b lbl_80A86584
lbl_80A8650C:
/* 80A8650C  7F A3 EB 78 */	mr r3, r29
/* 80A86510  38 80 00 03 */	li r4, 3
/* 80A86514  4B FF F6 91 */	bl setLookMode__13daNpc_myna2_cFi
/* 80A86518  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80A8651C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A86520  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A86524  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A86528  4B 6C A1 95 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A8652C  7F A3 EB 78 */	mr r3, r29
/* 80A86530  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A86534  4B 59 41 DD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A86538  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80A8653C  7C 60 07 34 */	extsh r0, r3
/* 80A86540  7C 04 00 00 */	cmpw r4, r0
/* 80A86544  40 82 00 0C */	bne lbl_80A86550
/* 80A86548  3B C0 00 01 */	li r30, 1
/* 80A8654C  48 00 00 38 */	b lbl_80A86584
lbl_80A86550:
/* 80A86550  7F A3 EB 78 */	mr r3, r29
/* 80A86554  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A86558  4B 59 41 B9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A8655C  7C 64 1B 78 */	mr r4, r3
/* 80A86560  7F A3 EB 78 */	mr r3, r29
/* 80A86564  38 A0 FF FF */	li r5, -1
/* 80A86568  38 C0 FF FF */	li r6, -1
/* 80A8656C  38 E0 00 0F */	li r7, 0xf
/* 80A86570  4B 6C DB 35 */	bl step__8daNpcF_cFsiii
/* 80A86574  2C 03 00 00 */	cmpwi r3, 0
/* 80A86578  41 82 00 0C */	beq lbl_80A86584
/* 80A8657C  38 00 00 00 */	li r0, 0
/* 80A86580  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A86584:
/* 80A86584  2C 1E 00 00 */	cmpwi r30, 0
/* 80A86588  41 82 00 24 */	beq lbl_80A865AC
/* 80A8658C  7F A3 EB 78 */	mr r3, r29
/* 80A86590  38 80 00 00 */	li r4, 0
/* 80A86594  38 A0 00 01 */	li r5, 1
/* 80A86598  38 C0 00 00 */	li r6, 0
/* 80A8659C  4B 6C D7 E9 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A865A0  2C 03 00 00 */	cmpwi r3, 0
/* 80A865A4  41 82 00 08 */	beq lbl_80A865AC
/* 80A865A8  3B E0 00 01 */	li r31, 1
lbl_80A865AC:
/* 80A865AC  2C 1F 00 00 */	cmpwi r31, 0
/* 80A865B0  41 82 00 30 */	beq lbl_80A865E0
/* 80A865B4  38 00 00 03 */	li r0, 3
/* 80A865B8  B0 1D 0E 0A */	sth r0, 0xe0a(r29)
/* 80A865BC  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 80A865C0  28 00 00 00 */	cmplwi r0, 0
/* 80A865C4  40 82 00 14 */	bne lbl_80A865D8
/* 80A865C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A865CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A865D0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A865D4  4B 5B BE 95 */	bl reset__14dEvt_control_cFv
lbl_80A865D8:
/* 80A865D8  38 00 00 00 */	li r0, 0
/* 80A865DC  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_80A865E0:
/* 80A865E0  7F E3 FB 78 */	mr r3, r31
/* 80A865E4  39 61 00 20 */	addi r11, r1, 0x20
/* 80A865E8  4B 8D BC 3D */	bl _restgpr_28
/* 80A865EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A865F0  7C 08 03 A6 */	mtlr r0
/* 80A865F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A865F8  4E 80 00 20 */	blr 
