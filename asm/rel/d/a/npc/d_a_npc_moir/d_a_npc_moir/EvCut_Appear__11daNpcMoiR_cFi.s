lbl_80A803A0:
/* 80A803A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A803A4  7C 08 02 A6 */	mflr r0
/* 80A803A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A803AC  39 61 00 50 */	addi r11, r1, 0x50
/* 80A803B0  4B 8E 1E 20 */	b _savegpr_26
/* 80A803B4  7C 7D 1B 78 */	mr r29, r3
/* 80A803B8  7C 9A 23 78 */	mr r26, r4
/* 80A803BC  3C 60 80 A8 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A803C0  3B C3 38 B0 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80A803C4  3C 60 80 A8 */	lis r3, m__17daNpcMoiR_Param_c@ha
/* 80A803C8  3B E3 32 AC */	addi r31, r3, m__17daNpcMoiR_Param_c@l
/* 80A803CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A803D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A803D4  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A803D8  7F 63 DB 78 */	mr r3, r27
/* 80A803DC  4B 5C 7B 80 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80A803E0  7C 7C 1B 78 */	mr r28, r3
/* 80A803E4  7F 63 DB 78 */	mr r3, r27
/* 80A803E8  7F 44 D3 78 */	mr r4, r26
/* 80A803EC  4B 5C 79 60 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A803F0  2C 03 00 00 */	cmpwi r3, 0
/* 80A803F4  41 82 00 40 */	beq lbl_80A80434
/* 80A803F8  80 9C 00 00 */	lwz r4, 0(r28)
/* 80A803FC  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 80A80400  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 80A80404  7C 04 00 00 */	cmpw r4, r0
/* 80A80408  41 82 00 2C */	beq lbl_80A80434
/* 80A8040C  41 80 00 28 */	blt lbl_80A80434
/* 80A80410  38 03 30 36 */	addi r0, r3, 0x3036
/* 80A80414  7C 04 00 00 */	cmpw r4, r0
/* 80A80418  40 80 00 1C */	bge lbl_80A80434
/* 80A8041C  7F A3 EB 78 */	mr r3, r29
/* 80A80420  A8 9D 0E 04 */	lha r4, 0xe04(r29)
/* 80A80424  38 A0 00 00 */	li r5, 0
/* 80A80428  4B 6D 38 F4 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A8042C  38 00 00 00 */	li r0, 0
/* 80A80430  90 1D 09 50 */	stw r0, 0x950(r29)
lbl_80A80434:
/* 80A80434  83 7D 09 50 */	lwz r27, 0x950(r29)
/* 80A80438  7F A3 EB 78 */	mr r3, r29
/* 80A8043C  38 81 00 0C */	addi r4, r1, 0xc
/* 80A80440  38 A1 00 08 */	addi r5, r1, 8
/* 80A80444  7F A6 EB 78 */	mr r6, r29
/* 80A80448  38 E0 00 00 */	li r7, 0
/* 80A8044C  4B 6D 32 CC */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A80450  2C 03 00 00 */	cmpwi r3, 0
/* 80A80454  41 82 00 44 */	beq lbl_80A80498
/* 80A80458  7F A3 EB 78 */	mr r3, r29
/* 80A8045C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A80460  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A80464  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80468  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A8046C  7D 89 03 A6 */	mtctr r12
/* 80A80470  4E 80 04 21 */	bctrl 
/* 80A80474  7F A3 EB 78 */	mr r3, r29
/* 80A80478  80 81 00 08 */	lwz r4, 8(r1)
/* 80A8047C  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A80480  38 A0 00 00 */	li r5, 0
/* 80A80484  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80488  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A8048C  7D 89 03 A6 */	mtctr r12
/* 80A80490  4E 80 04 21 */	bctrl 
/* 80A80494  48 00 00 90 */	b lbl_80A80524
lbl_80A80498:
/* 80A80498  2C 1B 00 00 */	cmpwi r27, 0
/* 80A8049C  41 82 00 88 */	beq lbl_80A80524
/* 80A804A0  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80A804A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A804A8  40 82 00 7C */	bne lbl_80A80524
/* 80A804AC  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80A804B0  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A804B4  41 82 00 34 */	beq lbl_80A804E8
/* 80A804B8  40 80 00 50 */	bge lbl_80A80508
/* 80A804BC  2C 00 00 03 */	cmpwi r0, 3
/* 80A804C0  41 82 00 08 */	beq lbl_80A804C8
/* 80A804C4  48 00 00 44 */	b lbl_80A80508
lbl_80A804C8:
/* 80A804C8  7F A3 EB 78 */	mr r3, r29
/* 80A804CC  38 80 00 0E */	li r4, 0xe
/* 80A804D0  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A804D4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A804D8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A804DC  7D 89 03 A6 */	mtctr r12
/* 80A804E0  4E 80 04 21 */	bctrl 
/* 80A804E4  48 00 00 40 */	b lbl_80A80524
lbl_80A804E8:
/* 80A804E8  7F A3 EB 78 */	mr r3, r29
/* 80A804EC  38 80 00 11 */	li r4, 0x11
/* 80A804F0  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A804F4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A804F8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A804FC  7D 89 03 A6 */	mtctr r12
/* 80A80500  4E 80 04 21 */	bctrl 
/* 80A80504  48 00 00 20 */	b lbl_80A80524
lbl_80A80508:
/* 80A80508  7F A3 EB 78 */	mr r3, r29
/* 80A8050C  38 80 00 12 */	li r4, 0x12
/* 80A80510  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A80514  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A80518  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A8051C  7D 89 03 A6 */	mtctr r12
/* 80A80520  4E 80 04 21 */	bctrl 
lbl_80A80524:
/* 80A80524  80 9C 00 00 */	lwz r4, 0(r28)
/* 80A80528  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303035@ha */
/* 80A8052C  38 03 30 35 */	addi r0, r3, 0x3035 /* 0x30303035@l */
/* 80A80530  7C 04 00 00 */	cmpw r4, r0
/* 80A80534  41 82 00 48 */	beq lbl_80A8057C
/* 80A80538  40 80 02 C8 */	bge lbl_80A80800
/* 80A8053C  38 03 30 31 */	addi r0, r3, 0x3031
/* 80A80540  7C 04 00 00 */	cmpw r4, r0
/* 80A80544  41 82 00 0C */	beq lbl_80A80550
/* 80A80548  40 80 00 10 */	bge lbl_80A80558
/* 80A8054C  48 00 02 B4 */	b lbl_80A80800
lbl_80A80550:
/* 80A80550  38 60 00 01 */	li r3, 1
/* 80A80554  48 00 02 B0 */	b lbl_80A80804
lbl_80A80558:
/* 80A80558  7F A3 EB 78 */	mr r3, r29
/* 80A8055C  38 80 00 00 */	li r4, 0
/* 80A80560  38 A0 00 01 */	li r5, 1
/* 80A80564  38 C0 00 00 */	li r6, 0
/* 80A80568  4B 6D 38 1C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A8056C  2C 03 00 00 */	cmpwi r3, 0
/* 80A80570  41 82 02 90 */	beq lbl_80A80800
/* 80A80574  38 60 00 01 */	li r3, 1
/* 80A80578  48 00 02 8C */	b lbl_80A80804
lbl_80A8057C:
/* 80A8057C  7F A3 EB 78 */	mr r3, r29
/* 80A80580  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A80584  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80A80588  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A8058C  4B 59 A1 84 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A80590  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80A80594  7C 60 07 34 */	extsh r0, r3
/* 80A80598  7C 04 00 00 */	cmpw r4, r0
/* 80A8059C  40 82 00 68 */	bne lbl_80A80604
/* 80A805A0  7F A3 EB 78 */	mr r3, r29
/* 80A805A4  38 80 00 00 */	li r4, 0
/* 80A805A8  38 A0 00 01 */	li r5, 1
/* 80A805AC  38 C0 00 00 */	li r6, 0
/* 80A805B0  4B 6D 37 D4 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A805B4  2C 03 00 00 */	cmpwi r3, 0
/* 80A805B8  41 82 02 48 */	beq lbl_80A80800
/* 80A805BC  A0 1D 0A 32 */	lhz r0, 0xa32(r29)
/* 80A805C0  7C 00 07 35 */	extsh. r0, r0
/* 80A805C4  40 82 00 38 */	bne lbl_80A805FC
/* 80A805C8  38 00 00 03 */	li r0, 3
/* 80A805CC  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80A805D0  7F A3 EB 78 */	mr r3, r29
/* 80A805D4  38 9E 02 48 */	addi r4, r30, 0x248
/* 80A805D8  80 84 00 08 */	lwz r4, 8(r4)
/* 80A805DC  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A805E0  54 00 10 3A */	slwi r0, r0, 2
/* 80A805E4  38 BE 02 58 */	addi r5, r30, 0x258
/* 80A805E8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A805EC  38 C0 00 01 */	li r6, 1
/* 80A805F0  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80A805F4  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80A805F8  4B 6D 33 5C */	b changeEvent__8daNpcF_cFPcPcUsUs
lbl_80A805FC:
/* 80A805FC  38 60 00 01 */	li r3, 1
/* 80A80600  48 00 02 04 */	b lbl_80A80804
lbl_80A80604:
/* 80A80604  7F A3 EB 78 */	mr r3, r29
/* 80A80608  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A8060C  4B 59 A1 04 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A80610  7C 7C 1B 78 */	mr r28, r3
/* 80A80614  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A80618  2C 00 00 00 */	cmpwi r0, 0
/* 80A8061C  40 82 01 24 */	bne lbl_80A80740
/* 80A80620  C0 5F 04 EC */	lfs f2, 0x4ec(r31)
/* 80A80624  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A80628  7C 00 E0 50 */	subf r0, r0, r28
/* 80A8062C  7C 00 07 34 */	extsh r0, r0
/* 80A80630  C8 3F 05 08 */	lfd f1, 0x508(r31)
/* 80A80634  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A80638  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A8063C  3C 00 43 30 */	lis r0, 0x4330
/* 80A80640  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A80644  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80A80648  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A8064C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A80650  FC 00 02 10 */	fabs f0, f0
/* 80A80654  FC 00 00 18 */	frsp f0, f0
/* 80A80658  FC 00 00 1E */	fctiwz f0, f0
/* 80A8065C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80A80660  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A80664  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A80668  40 81 00 90 */	ble lbl_80A806F8
/* 80A8066C  7F A3 EB 78 */	mr r3, r29
/* 80A80670  38 80 00 12 */	li r4, 0x12
/* 80A80674  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A80678  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A8067C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A80680  7D 89 03 A6 */	mtctr r12
/* 80A80684  4E 80 04 21 */	bctrl 
/* 80A80688  80 7E 03 10 */	lwz r3, 0x310(r30)
/* 80A8068C  80 1E 03 14 */	lwz r0, 0x314(r30)
/* 80A80690  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A80694  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A80698  80 1E 03 18 */	lwz r0, 0x318(r30)
/* 80A8069C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A806A0  38 61 00 10 */	addi r3, r1, 0x10
/* 80A806A4  38 9D 0D DC */	addi r4, r29, 0xddc
/* 80A806A8  4B 8E 19 A0 */	b __ptmf_cmpr
/* 80A806AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A806B0  40 82 00 28 */	bne lbl_80A806D8
/* 80A806B4  7F A3 EB 78 */	mr r3, r29
/* 80A806B8  38 80 00 26 */	li r4, 0x26
/* 80A806BC  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A806C0  38 A0 00 00 */	li r5, 0
/* 80A806C4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A806C8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A806CC  7D 89 03 A6 */	mtctr r12
/* 80A806D0  4E 80 04 21 */	bctrl 
/* 80A806D4  48 00 00 24 */	b lbl_80A806F8
lbl_80A806D8:
/* 80A806D8  7F A3 EB 78 */	mr r3, r29
/* 80A806DC  38 80 00 2A */	li r4, 0x2a
/* 80A806E0  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A806E4  38 A0 00 00 */	li r5, 0
/* 80A806E8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A806EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A806F0  7D 89 03 A6 */	mtctr r12
/* 80A806F4  4E 80 04 21 */	bctrl 
lbl_80A806F8:
/* 80A806F8  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 80A806FC  38 00 00 00 */	li r0, 0
/* 80A80700  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A80704  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80A80708  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80A8070C  7C 03 00 00 */	cmpw r3, r0
/* 80A80710  40 82 00 10 */	bne lbl_80A80720
/* 80A80714  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A80718  38 03 00 01 */	addi r0, r3, 1
/* 80A8071C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A80720:
/* 80A80720  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A80724  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A80728  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A8072C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A80730  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A80734  38 03 00 01 */	addi r0, r3, 1
/* 80A80738  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A8073C  48 00 00 90 */	b lbl_80A807CC
lbl_80A80740:
/* 80A80740  2C 00 00 01 */	cmpwi r0, 1
/* 80A80744  40 82 00 88 */	bne lbl_80A807CC
/* 80A80748  7F A3 EB 78 */	mr r3, r29
/* 80A8074C  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80A80750  38 A0 00 00 */	li r5, 0
/* 80A80754  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A80758  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A8075C  40 82 00 14 */	bne lbl_80A80770
/* 80A80760  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A80764  2C 00 00 00 */	cmpwi r0, 0
/* 80A80768  41 81 00 08 */	bgt lbl_80A80770
/* 80A8076C  38 A0 00 01 */	li r5, 1
lbl_80A80770:
/* 80A80770  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80A80774  41 82 00 0C */	beq lbl_80A80780
/* 80A80778  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 80A8077C  48 00 00 08 */	b lbl_80A80784
lbl_80A80780:
/* 80A80780  C0 3F 04 F4 */	lfs f1, 0x4f4(r31)
lbl_80A80784:
/* 80A80784  38 A0 00 00 */	li r5, 0
/* 80A80788  4B 6D 37 6C */	b turn__8daNpcF_cFsfi
/* 80A8078C  2C 03 00 00 */	cmpwi r3, 0
/* 80A80790  41 82 00 2C */	beq lbl_80A807BC
/* 80A80794  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A80798  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A8079C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A807A0  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A807A4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A807A8  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80A807AC  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A807B0  38 03 00 01 */	addi r0, r3, 1
/* 80A807B4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A807B8  48 00 00 14 */	b lbl_80A807CC
lbl_80A807BC:
/* 80A807BC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A807C0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A807C4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A807C8  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80A807CC:
/* 80A807CC  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A807D0  2C 00 00 01 */	cmpwi r0, 1
/* 80A807D4  40 81 00 2C */	ble lbl_80A80800
/* 80A807D8  7F A3 EB 78 */	mr r3, r29
/* 80A807DC  38 80 00 07 */	li r4, 7
/* 80A807E0  C0 3F 04 E4 */	lfs f1, 0x4e4(r31)
/* 80A807E4  38 A0 00 00 */	li r5, 0
/* 80A807E8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A807EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A807F0  7D 89 03 A6 */	mtctr r12
/* 80A807F4  4E 80 04 21 */	bctrl 
/* 80A807F8  38 00 00 00 */	li r0, 0
/* 80A807FC  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A80800:
/* 80A80800  38 60 00 00 */	li r3, 0
lbl_80A80804:
/* 80A80804  39 61 00 50 */	addi r11, r1, 0x50
/* 80A80808  4B 8E 1A 14 */	b _restgpr_26
/* 80A8080C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A80810  7C 08 03 A6 */	mtlr r0
/* 80A80814  38 21 00 50 */	addi r1, r1, 0x50
/* 80A80818  4E 80 00 20 */	blr 
