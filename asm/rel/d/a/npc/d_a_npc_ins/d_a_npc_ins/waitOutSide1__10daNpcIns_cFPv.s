lbl_80A103A0:
/* 80A103A0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A103A4  7C 08 02 A6 */	mflr r0
/* 80A103A8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A103AC  39 61 00 50 */	addi r11, r1, 0x50
/* 80A103B0  4B 95 1E 29 */	bl _savegpr_28
/* 80A103B4  7C 7D 1B 78 */	mr r29, r3
/* 80A103B8  3C 80 80 A1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A1419C@ha */
/* 80A103BC  3B C4 41 9C */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80A1419C@l */
/* 80A103C0  3C 80 80 A1 */	lis r4, l_insectParams@ha /* 0x80A13DAC@ha */
/* 80A103C4  3B E4 3D AC */	addi r31, r4, l_insectParams@l /* 0x80A13DAC@l */
/* 80A103C8  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 80A103CC  2C 00 00 02 */	cmpwi r0, 2
/* 80A103D0  41 82 00 90 */	beq lbl_80A10460
/* 80A103D4  40 80 05 60 */	bge lbl_80A10934
/* 80A103D8  2C 00 00 00 */	cmpwi r0, 0
/* 80A103DC  41 82 00 0C */	beq lbl_80A103E8
/* 80A103E0  48 00 05 54 */	b lbl_80A10934
/* 80A103E4  48 00 05 50 */	b lbl_80A10934
lbl_80A103E8:
/* 80A103E8  38 80 00 09 */	li r4, 9
/* 80A103EC  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A103F0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A103F4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A103F8  7D 89 03 A6 */	mtctr r12
/* 80A103FC  4E 80 04 21 */	bctrl 
/* 80A10400  7F A3 EB 78 */	mr r3, r29
/* 80A10404  38 80 00 08 */	li r4, 8
/* 80A10408  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A1040C  38 A0 00 00 */	li r5, 0
/* 80A10410  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A10414  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A10418  7D 89 03 A6 */	mtctr r12
/* 80A1041C  4E 80 04 21 */	bctrl 
/* 80A10420  A8 1D 0E 1A */	lha r0, 0xe1a(r29)
/* 80A10424  2C 00 00 00 */	cmpwi r0, 0
/* 80A10428  41 82 00 0C */	beq lbl_80A10434
/* 80A1042C  38 00 00 00 */	li r0, 0
/* 80A10430  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
lbl_80A10434:
/* 80A10434  38 60 00 03 */	li r3, 3
/* 80A10438  38 80 00 05 */	li r4, 5
/* 80A1043C  48 00 30 39 */	bl func_80A13474
/* 80A10440  90 7D 0E 00 */	stw r3, 0xe00(r29)
/* 80A10444  38 00 00 00 */	li r0, 0
/* 80A10448  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A1044C  C0 1F 01 44 */	lfs f0, 0x144(r31)
/* 80A10450  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A10454  38 00 00 02 */	li r0, 2
/* 80A10458  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A1045C  48 00 04 D8 */	b lbl_80A10934
lbl_80A10460:
/* 80A10460  AB 9D 04 B6 */	lha r28, 0x4b6(r29)
/* 80A10464  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A10468  7C 1C 00 00 */	cmpw r28, r0
/* 80A1046C  41 82 01 90 */	beq lbl_80A105FC
/* 80A10470  80 9D 09 6C */	lwz r4, 0x96c(r29)
/* 80A10474  2C 04 00 00 */	cmpwi r4, 0
/* 80A10478  40 82 00 CC */	bne lbl_80A10544
/* 80A1047C  C0 5F 03 70 */	lfs f2, 0x370(r31)
/* 80A10480  7C 00 E0 50 */	subf r0, r0, r28
/* 80A10484  7C 00 07 34 */	extsh r0, r0
/* 80A10488  C8 3F 03 78 */	lfd f1, 0x378(r31)
/* 80A1048C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A10490  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A10494  3C 00 43 30 */	lis r0, 0x4330
/* 80A10498  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A1049C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A104A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A104A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A104A8  FC 00 02 10 */	fabs f0, f0
/* 80A104AC  FC 00 00 18 */	frsp f0, f0
/* 80A104B0  FC 00 00 1E */	fctiwz f0, f0
/* 80A104B4  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80A104B8  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80A104BC  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A104C0  40 81 00 3C */	ble lbl_80A104FC
/* 80A104C4  38 80 00 09 */	li r4, 9
/* 80A104C8  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A104CC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A104D0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A104D4  7D 89 03 A6 */	mtctr r12
/* 80A104D8  4E 80 04 21 */	bctrl 
/* 80A104DC  7F A3 EB 78 */	mr r3, r29
/* 80A104E0  38 80 00 0B */	li r4, 0xb
/* 80A104E4  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A104E8  38 A0 00 00 */	li r5, 0
/* 80A104EC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A104F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A104F4  7D 89 03 A6 */	mtctr r12
/* 80A104F8  4E 80 04 21 */	bctrl 
lbl_80A104FC:
/* 80A104FC  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 80A10500  38 00 00 00 */	li r0, 0
/* 80A10504  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A10508  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80A1050C  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80A10510  7C 03 00 00 */	cmpw r3, r0
/* 80A10514  40 82 00 10 */	bne lbl_80A10524
/* 80A10518  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A1051C  38 03 00 01 */	addi r0, r3, 1
/* 80A10520  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A10524:
/* 80A10524  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A10528  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A1052C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10530  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A10534  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A10538  38 03 00 01 */	addi r0, r3, 1
/* 80A1053C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A10540  48 00 00 5C */	b lbl_80A1059C
lbl_80A10544:
/* 80A10544  2C 04 00 01 */	cmpwi r4, 1
/* 80A10548  40 82 00 54 */	bne lbl_80A1059C
/* 80A1054C  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80A10550  C0 3F 03 74 */	lfs f1, 0x374(r31)
/* 80A10554  38 A0 00 00 */	li r5, 0
/* 80A10558  4B 74 39 9D */	bl turn__8daNpcF_cFsfi
/* 80A1055C  2C 03 00 00 */	cmpwi r3, 0
/* 80A10560  41 82 00 2C */	beq lbl_80A1058C
/* 80A10564  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10568  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A1056C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10570  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A10574  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10578  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80A1057C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A10580  38 03 00 01 */	addi r0, r3, 1
/* 80A10584  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A10588  48 00 00 14 */	b lbl_80A1059C
lbl_80A1058C:
/* 80A1058C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10590  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A10594  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A10598  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80A1059C:
/* 80A1059C  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A105A0  2C 00 00 01 */	cmpwi r0, 1
/* 80A105A4  40 81 00 58 */	ble lbl_80A105FC
/* 80A105A8  7F A3 EB 78 */	mr r3, r29
/* 80A105AC  38 80 00 09 */	li r4, 9
/* 80A105B0  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A105B4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A105B8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A105BC  7D 89 03 A6 */	mtctr r12
/* 80A105C0  4E 80 04 21 */	bctrl 
/* 80A105C4  7F A3 EB 78 */	mr r3, r29
/* 80A105C8  38 80 00 08 */	li r4, 8
/* 80A105CC  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A105D0  38 A0 00 00 */	li r5, 0
/* 80A105D4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A105D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A105DC  7D 89 03 A6 */	mtctr r12
/* 80A105E0  4E 80 04 21 */	bctrl 
/* 80A105E4  38 60 00 03 */	li r3, 3
/* 80A105E8  38 80 00 05 */	li r4, 5
/* 80A105EC  48 00 2E 89 */	bl func_80A13474
/* 80A105F0  90 7D 0E 00 */	stw r3, 0xe00(r29)
/* 80A105F4  38 00 00 00 */	li r0, 0
/* 80A105F8  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A105FC:
/* 80A105FC  A0 7D 09 E2 */	lhz r3, 0x9e2(r29)
/* 80A10600  80 1D 0E 00 */	lwz r0, 0xe00(r29)
/* 80A10604  7C 03 00 00 */	cmpw r3, r0
/* 80A10608  41 80 00 74 */	blt lbl_80A1067C
/* 80A1060C  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A10610  2C 00 00 08 */	cmpwi r0, 8
/* 80A10614  40 82 00 38 */	bne lbl_80A1064C
/* 80A10618  7F A3 EB 78 */	mr r3, r29
/* 80A1061C  38 80 00 09 */	li r4, 9
/* 80A10620  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A10624  38 A0 00 00 */	li r5, 0
/* 80A10628  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A1062C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A10630  7D 89 03 A6 */	mtctr r12
/* 80A10634  4E 80 04 21 */	bctrl 
/* 80A10638  38 60 00 01 */	li r3, 1
/* 80A1063C  38 80 00 03 */	li r4, 3
/* 80A10640  48 00 2E 35 */	bl func_80A13474
/* 80A10644  90 7D 0E 00 */	stw r3, 0xe00(r29)
/* 80A10648  48 00 00 34 */	b lbl_80A1067C
lbl_80A1064C:
/* 80A1064C  7F A3 EB 78 */	mr r3, r29
/* 80A10650  38 80 00 08 */	li r4, 8
/* 80A10654  C0 3F 03 6C */	lfs f1, 0x36c(r31)
/* 80A10658  38 A0 00 00 */	li r5, 0
/* 80A1065C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A10660  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A10664  7D 89 03 A6 */	mtctr r12
/* 80A10668  4E 80 04 21 */	bctrl 
/* 80A1066C  38 60 00 03 */	li r3, 3
/* 80A10670  38 80 00 05 */	li r4, 5
/* 80A10674  48 00 2E 01 */	bl func_80A13474
/* 80A10678  90 7D 0E 00 */	stw r3, 0xe00(r29)
lbl_80A1067C:
/* 80A1067C  4B 78 F3 95 */	bl dKy_getdaytime_hour__Fv
/* 80A10680  7C 7F 1B 78 */	mr r31, r3
/* 80A10684  4B 78 F3 B9 */	bl dKy_getdaytime_minute__Fv
/* 80A10688  1C 1F 00 3C */	mulli r0, r31, 0x3c
/* 80A1068C  7C 63 02 14 */	add r3, r3, r0
/* 80A10690  A0 1D 0E 1C */	lhz r0, 0xe1c(r29)
/* 80A10694  7C 03 00 00 */	cmpw r3, r0
/* 80A10698  41 80 00 A4 */	blt lbl_80A1073C
/* 80A1069C  80 7E 02 60 */	lwz r3, 0x260(r30)
/* 80A106A0  80 1E 02 64 */	lwz r0, 0x264(r30)
/* 80A106A4  90 61 00 24 */	stw r3, 0x24(r1)
/* 80A106A8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A106AC  80 1E 02 68 */	lwz r0, 0x268(r30)
/* 80A106B0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A106B4  38 00 00 03 */	li r0, 3
/* 80A106B8  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A106BC  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A106C0  4B 95 19 59 */	bl __ptmf_test
/* 80A106C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A106C8  41 82 00 18 */	beq lbl_80A106E0
/* 80A106CC  7F A3 EB 78 */	mr r3, r29
/* 80A106D0  38 80 00 00 */	li r4, 0
/* 80A106D4  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A106D8  4B 95 19 AD */	bl __ptmf_scall
/* 80A106DC  60 00 00 00 */	nop 
lbl_80A106E0:
/* 80A106E0  80 7D 0D C8 */	lwz r3, 0xdc8(r29)
/* 80A106E4  80 1D 0D CC */	lwz r0, 0xdcc(r29)
/* 80A106E8  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A106EC  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80A106F0  80 1D 0D D0 */	lwz r0, 0xdd0(r29)
/* 80A106F4  90 1D 0D DC */	stw r0, 0xddc(r29)
/* 80A106F8  38 00 00 00 */	li r0, 0
/* 80A106FC  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A10700  80 61 00 24 */	lwz r3, 0x24(r1)
/* 80A10704  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A10708  90 7D 0D C8 */	stw r3, 0xdc8(r29)
/* 80A1070C  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80A10710  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A10714  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80A10718  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A1071C  4B 95 18 FD */	bl __ptmf_test
/* 80A10720  2C 03 00 00 */	cmpwi r3, 0
/* 80A10724  41 82 00 18 */	beq lbl_80A1073C
/* 80A10728  7F A3 EB 78 */	mr r3, r29
/* 80A1072C  38 80 00 00 */	li r4, 0
/* 80A10730  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A10734  4B 95 19 51 */	bl __ptmf_scall
/* 80A10738  60 00 00 00 */	nop 
lbl_80A1073C:
/* 80A1073C  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005010F@ha */
/* 80A10740  38 03 01 0F */	addi r0, r3, 0x010F /* 0x0005010F@l */
/* 80A10744  90 01 00 08 */	stw r0, 8(r1)
/* 80A10748  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80A1074C  38 81 00 08 */	addi r4, r1, 8
/* 80A10750  38 A0 FF FF */	li r5, -1
/* 80A10754  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80A10758  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80A1075C  7D 89 03 A6 */	mtctr r12
/* 80A10760  4E 80 04 21 */	bctrl 
/* 80A10764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A10768  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A1076C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A10770  28 00 00 00 */	cmplwi r0, 0
/* 80A10774  41 82 01 74 */	beq lbl_80A108E8
/* 80A10778  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80A1077C  28 00 00 01 */	cmplwi r0, 1
/* 80A10780  40 82 00 A8 */	bne lbl_80A10828
/* 80A10784  80 7E 02 3C */	lwz r3, 0x23c(r30)
/* 80A10788  80 1E 02 40 */	lwz r0, 0x240(r30)
/* 80A1078C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A10790  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A10794  80 1E 02 44 */	lwz r0, 0x244(r30)
/* 80A10798  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1079C  38 00 00 03 */	li r0, 3
/* 80A107A0  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A107A4  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A107A8  4B 95 18 71 */	bl __ptmf_test
/* 80A107AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A107B0  41 82 00 18 */	beq lbl_80A107C8
/* 80A107B4  7F A3 EB 78 */	mr r3, r29
/* 80A107B8  38 80 00 00 */	li r4, 0
/* 80A107BC  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A107C0  4B 95 18 C5 */	bl __ptmf_scall
/* 80A107C4  60 00 00 00 */	nop 
lbl_80A107C8:
/* 80A107C8  80 7D 0D C8 */	lwz r3, 0xdc8(r29)
/* 80A107CC  80 1D 0D CC */	lwz r0, 0xdcc(r29)
/* 80A107D0  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A107D4  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80A107D8  80 1D 0D D0 */	lwz r0, 0xdd0(r29)
/* 80A107DC  90 1D 0D DC */	stw r0, 0xddc(r29)
/* 80A107E0  38 00 00 00 */	li r0, 0
/* 80A107E4  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A107E8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80A107EC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A107F0  90 7D 0D C8 */	stw r3, 0xdc8(r29)
/* 80A107F4  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80A107F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A107FC  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80A10800  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A10804  4B 95 18 15 */	bl __ptmf_test
/* 80A10808  2C 03 00 00 */	cmpwi r3, 0
/* 80A1080C  41 82 01 28 */	beq lbl_80A10934
/* 80A10810  7F A3 EB 78 */	mr r3, r29
/* 80A10814  38 80 00 00 */	li r4, 0
/* 80A10818  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A1081C  4B 95 18 69 */	bl __ptmf_scall
/* 80A10820  60 00 00 00 */	nop 
/* 80A10824  48 00 01 10 */	b lbl_80A10934
lbl_80A10828:
/* 80A10828  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A1082C  80 9E 01 F8 */	lwz r4, 0x1f8(r30)
/* 80A10830  38 A0 00 00 */	li r5, 0
/* 80A10834  38 C0 00 00 */	li r6, 0
/* 80A10838  4B 63 72 E5 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A1083C  2C 03 FF FF */	cmpwi r3, -1
/* 80A10840  41 82 00 F4 */	beq lbl_80A10934
/* 80A10844  80 7E 02 48 */	lwz r3, 0x248(r30)
/* 80A10848  80 1E 02 4C */	lwz r0, 0x24c(r30)
/* 80A1084C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A10850  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A10854  80 1E 02 50 */	lwz r0, 0x250(r30)
/* 80A10858  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A1085C  38 00 00 03 */	li r0, 3
/* 80A10860  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A10864  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A10868  4B 95 17 B1 */	bl __ptmf_test
/* 80A1086C  2C 03 00 00 */	cmpwi r3, 0
/* 80A10870  41 82 00 18 */	beq lbl_80A10888
/* 80A10874  7F A3 EB 78 */	mr r3, r29
/* 80A10878  38 80 00 00 */	li r4, 0
/* 80A1087C  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A10880  4B 95 18 05 */	bl __ptmf_scall
/* 80A10884  60 00 00 00 */	nop 
lbl_80A10888:
/* 80A10888  80 7D 0D C8 */	lwz r3, 0xdc8(r29)
/* 80A1088C  80 1D 0D CC */	lwz r0, 0xdcc(r29)
/* 80A10890  90 7D 0D D4 */	stw r3, 0xdd4(r29)
/* 80A10894  90 1D 0D D8 */	stw r0, 0xdd8(r29)
/* 80A10898  80 1D 0D D0 */	lwz r0, 0xdd0(r29)
/* 80A1089C  90 1D 0D DC */	stw r0, 0xddc(r29)
/* 80A108A0  38 00 00 00 */	li r0, 0
/* 80A108A4  B0 1D 0E 1E */	sth r0, 0xe1e(r29)
/* 80A108A8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 80A108AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A108B0  90 7D 0D C8 */	stw r3, 0xdc8(r29)
/* 80A108B4  90 1D 0D CC */	stw r0, 0xdcc(r29)
/* 80A108B8  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80A108BC  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80A108C0  38 7D 0D C8 */	addi r3, r29, 0xdc8
/* 80A108C4  4B 95 17 55 */	bl __ptmf_test
/* 80A108C8  2C 03 00 00 */	cmpwi r3, 0
/* 80A108CC  41 82 00 68 */	beq lbl_80A10934
/* 80A108D0  7F A3 EB 78 */	mr r3, r29
/* 80A108D4  38 80 00 00 */	li r4, 0
/* 80A108D8  39 9D 0D C8 */	addi r12, r29, 0xdc8
/* 80A108DC  4B 95 17 A9 */	bl __ptmf_scall
/* 80A108E0  60 00 00 00 */	nop 
/* 80A108E4  48 00 00 50 */	b lbl_80A10934
lbl_80A108E8:
/* 80A108E8  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A108EC  28 00 00 00 */	cmplwi r0, 0
/* 80A108F0  41 82 00 14 */	beq lbl_80A10904
/* 80A108F4  3C 60 80 A1 */	lis r3, d_a_npc_ins__stringBase0@ha /* 0x80A14168@ha */
/* 80A108F8  38 63 41 68 */	addi r3, r3, d_a_npc_ins__stringBase0@l /* 0x80A14168@l */
/* 80A108FC  38 03 00 0E */	addi r0, r3, 0xe
/* 80A10900  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80A10904:
/* 80A10904  7F A3 EB 78 */	mr r3, r29
/* 80A10908  88 9D 0E 20 */	lbz r4, 0xe20(r29)
/* 80A1090C  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80A10910  54 00 10 3A */	slwi r0, r0, 2
/* 80A10914  38 BE 01 F4 */	addi r5, r30, 0x1f4
/* 80A10918  7C A5 00 2E */	lwzx r5, r5, r0
/* 80A1091C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80A10920  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80A10924  38 E0 00 28 */	li r7, 0x28
/* 80A10928  39 00 00 FF */	li r8, 0xff
/* 80A1092C  39 20 00 01 */	li r9, 1
/* 80A10930  4B 74 2F 4D */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80A10934:
/* 80A10934  38 60 00 01 */	li r3, 1
/* 80A10938  39 61 00 50 */	addi r11, r1, 0x50
/* 80A1093C  4B 95 18 E9 */	bl _restgpr_28
/* 80A10940  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A10944  7C 08 03 A6 */	mtlr r0
/* 80A10948  38 21 00 50 */	addi r1, r1, 0x50
/* 80A1094C  4E 80 00 20 */	blr 
