lbl_80B80418:
/* 80B80418  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B8041C  7C 08 02 A6 */	mflr r0
/* 80B80420  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B80424  39 61 00 30 */	addi r11, r1, 0x30
/* 80B80428  4B 7E 1D B0 */	b _savegpr_28
/* 80B8042C  7C 7D 1B 78 */	mr r29, r3
/* 80B80430  3B E0 00 00 */	li r31, 0
/* 80B80434  3B C0 00 00 */	li r30, 0
/* 80B80438  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B8043C  2C 00 00 02 */	cmpwi r0, 2
/* 80B80440  41 82 00 48 */	beq lbl_80B80488
/* 80B80444  40 80 00 10 */	bge lbl_80B80454
/* 80B80448  2C 00 00 00 */	cmpwi r0, 0
/* 80B8044C  41 82 00 14 */	beq lbl_80B80460
/* 80B80450  48 00 01 E0 */	b lbl_80B80630
lbl_80B80454:
/* 80B80454  2C 00 00 04 */	cmpwi r0, 4
/* 80B80458  40 80 01 D8 */	bge lbl_80B80630
/* 80B8045C  48 00 01 CC */	b lbl_80B80628
lbl_80B80460:
/* 80B80460  80 1D 09 54 */	lwz r0, 0x954(r29)
/* 80B80464  2C 00 00 00 */	cmpwi r0, 0
/* 80B80468  40 82 01 C8 */	bne lbl_80B80630
/* 80B8046C  80 9D 14 E0 */	lwz r4, 0x14e0(r29)
/* 80B80470  38 A0 00 00 */	li r5, 0
/* 80B80474  4B 5D 38 A8 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B80478  38 00 00 00 */	li r0, 0
/* 80B8047C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B80480  38 00 00 02 */	li r0, 2
/* 80B80484  B0 1D 14 E6 */	sth r0, 0x14e6(r29)
lbl_80B80488:
/* 80B80488  88 1D 14 E8 */	lbz r0, 0x14e8(r29)
/* 80B8048C  28 00 00 06 */	cmplwi r0, 6
/* 80B80490  41 82 00 0C */	beq lbl_80B8049C
/* 80B80494  7F A3 EB 78 */	mr r3, r29
/* 80B80498  48 00 1E 69 */	bl calcModulation__11daNpc_zrA_cFv
lbl_80B8049C:
/* 80B8049C  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 80B804A0  28 00 00 00 */	cmplwi r0, 0
/* 80B804A4  40 82 00 10 */	bne lbl_80B804B4
/* 80B804A8  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 80B804AC  28 00 00 00 */	cmplwi r0, 0
/* 80B804B0  41 82 00 0C */	beq lbl_80B804BC
lbl_80B804B4:
/* 80B804B4  3B C0 00 01 */	li r30, 1
/* 80B804B8  48 00 00 E4 */	b lbl_80B8059C
lbl_80B804BC:
/* 80B804BC  7F A3 EB 78 */	mr r3, r29
/* 80B804C0  38 80 00 03 */	li r4, 3
/* 80B804C4  4B FF E2 31 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B804C8  38 7D 13 1C */	addi r3, r29, 0x131c
/* 80B804CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B804D0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80B804D4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B804D8  4B 5D 01 E4 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B804DC  7F A3 EB 78 */	mr r3, r29
/* 80B804E0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B804E4  4B 49 A2 2C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B804E8  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80B804EC  7C 60 07 34 */	extsh r0, r3
/* 80B804F0  7C 04 00 00 */	cmpw r4, r0
/* 80B804F4  40 82 00 0C */	bne lbl_80B80500
/* 80B804F8  3B C0 00 01 */	li r30, 1
/* 80B804FC  48 00 00 A0 */	b lbl_80B8059C
lbl_80B80500:
/* 80B80500  80 1D 05 FC */	lwz r0, 0x5fc(r29)
/* 80B80504  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B80508  41 82 00 3C */	beq lbl_80B80544
/* 80B8050C  7F A3 EB 78 */	mr r3, r29
/* 80B80510  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B80514  4B 49 A1 FC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B80518  7C 64 1B 78 */	mr r4, r3
/* 80B8051C  7F A3 EB 78 */	mr r3, r29
/* 80B80520  38 A0 FF FF */	li r5, -1
/* 80B80524  38 C0 FF FF */	li r6, -1
/* 80B80528  38 E0 00 0F */	li r7, 0xf
/* 80B8052C  4B 5D 3B 78 */	b step__8daNpcF_cFsiii
/* 80B80530  2C 03 00 00 */	cmpwi r3, 0
/* 80B80534  41 82 00 68 */	beq lbl_80B8059C
/* 80B80538  38 00 00 00 */	li r0, 0
/* 80B8053C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B80540  48 00 00 5C */	b lbl_80B8059C
lbl_80B80544:
/* 80B80544  7F A3 EB 78 */	mr r3, r29
/* 80B80548  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B8054C  4B 49 A1 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B80550  7C 64 1B 78 */	mr r4, r3
/* 80B80554  7F A3 EB 78 */	mr r3, r29
/* 80B80558  38 A0 00 14 */	li r5, 0x14
/* 80B8055C  38 C0 00 1C */	li r6, 0x1c
/* 80B80560  38 E0 00 0F */	li r7, 0xf
/* 80B80564  4B 5D 3B 40 */	b step__8daNpcF_cFsiii
/* 80B80568  2C 03 00 00 */	cmpwi r3, 0
/* 80B8056C  41 82 00 30 */	beq lbl_80B8059C
/* 80B80570  7F A3 EB 78 */	mr r3, r29
/* 80B80574  38 80 00 00 */	li r4, 0
/* 80B80578  3C A0 80 B9 */	lis r5, lit_4437@ha
/* 80B8057C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)
/* 80B80580  38 A0 00 00 */	li r5, 0
/* 80B80584  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B80588  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8058C  7D 89 03 A6 */	mtctr r12
/* 80B80590  4E 80 04 21 */	bctrl 
/* 80B80594  38 00 00 00 */	li r0, 0
/* 80B80598  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80B8059C:
/* 80B8059C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B805A0  41 82 00 24 */	beq lbl_80B805C4
/* 80B805A4  7F A3 EB 78 */	mr r3, r29
/* 80B805A8  38 80 00 00 */	li r4, 0
/* 80B805AC  38 A0 00 01 */	li r5, 1
/* 80B805B0  38 C0 00 00 */	li r6, 0
/* 80B805B4  4B 5D 37 D0 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B805B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B805BC  41 82 00 08 */	beq lbl_80B805C4
/* 80B805C0  3B E0 00 01 */	li r31, 1
lbl_80B805C4:
/* 80B805C4  2C 1F 00 00 */	cmpwi r31, 0
/* 80B805C8  41 82 00 68 */	beq lbl_80B80630
/* 80B805CC  38 00 00 03 */	li r0, 3
/* 80B805D0  B0 1D 14 E6 */	sth r0, 0x14e6(r29)
/* 80B805D4  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 80B805D8  28 00 00 00 */	cmplwi r0, 0
/* 80B805DC  40 82 00 40 */	bne lbl_80B8061C
/* 80B805E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B805E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B805E8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B805EC  4B 4C 1E 7C */	b reset__14dEvt_control_cFv
/* 80B805F0  3C 60 80 B9 */	lis r3, lit_7129@ha
/* 80B805F4  38 83 D7 44 */	addi r4, r3, lit_7129@l
/* 80B805F8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B805FC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B80600  90 61 00 08 */	stw r3, 8(r1)
/* 80B80604  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B80608  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8060C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B80610  7F A3 EB 78 */	mr r3, r29
/* 80B80614  38 81 00 08 */	addi r4, r1, 8
/* 80B80618  4B FF D5 09 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
lbl_80B8061C:
/* 80B8061C  38 00 00 00 */	li r0, 0
/* 80B80620  98 1D 09 EC */	stb r0, 0x9ec(r29)
/* 80B80624  48 00 00 0C */	b lbl_80B80630
lbl_80B80628:
/* 80B80628  A8 1D 04 B4 */	lha r0, 0x4b4(r29)
/* 80B8062C  90 1D 14 E0 */	stw r0, 0x14e0(r29)
lbl_80B80630:
/* 80B80630  7F E3 FB 78 */	mr r3, r31
/* 80B80634  39 61 00 30 */	addi r11, r1, 0x30
/* 80B80638  4B 7E 1B EC */	b _restgpr_28
/* 80B8063C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B80640  7C 08 03 A6 */	mtlr r0
/* 80B80644  38 21 00 30 */	addi r1, r1, 0x30
/* 80B80648  4E 80 00 20 */	blr 
