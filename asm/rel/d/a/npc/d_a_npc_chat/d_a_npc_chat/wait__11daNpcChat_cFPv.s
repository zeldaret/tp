lbl_80985104:
/* 80985104  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80985108  7C 08 02 A6 */	mflr r0
/* 8098510C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80985110  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80985114  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80985118  39 61 00 50 */	addi r11, r1, 0x50
/* 8098511C  4B 9D D0 BC */	b _savegpr_28
/* 80985120  7C 7C 1B 78 */	mr r28, r3
/* 80985124  3C 80 80 98 */	lis r4, cNullVec__6Z2Calc@ha
/* 80985128  3B A4 79 5C */	addi r29, r4, cNullVec__6Z2Calc@l
/* 8098512C  3C 80 80 98 */	lis r4, l_resMANa@ha
/* 80985130  3B C4 69 9C */	addi r30, r4, l_resMANa@l
/* 80985134  A0 03 0E 1E */	lhz r0, 0xe1e(r3)
/* 80985138  2C 00 00 02 */	cmpwi r0, 2
/* 8098513C  41 82 00 50 */	beq lbl_8098518C
/* 80985140  40 80 03 C8 */	bge lbl_80985508
/* 80985144  2C 00 00 00 */	cmpwi r0, 0
/* 80985148  41 82 00 0C */	beq lbl_80985154
/* 8098514C  48 00 03 BC */	b lbl_80985508
/* 80985150  48 00 03 B8 */	b lbl_80985508
lbl_80985154:
/* 80985154  88 9C 0E 4E */	lbz r4, 0xe4e(r28)
/* 80985158  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 8098515C  38 A0 00 01 */	li r5, 1
/* 80985160  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80985164  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80985168  7D 89 03 A6 */	mtctr r12
/* 8098516C  4E 80 04 21 */	bctrl 
/* 80985170  C0 1E 05 78 */	lfs f0, 0x578(r30)
/* 80985174  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80985178  38 00 00 00 */	li r0, 0
/* 8098517C  98 1C 0E 4D */	stb r0, 0xe4d(r28)
/* 80985180  38 00 00 02 */	li r0, 2
/* 80985184  B0 1C 0E 1E */	sth r0, 0xe1e(r28)
/* 80985188  48 00 03 80 */	b lbl_80985508
lbl_8098518C:
/* 8098518C  88 1C 0E 38 */	lbz r0, 0xe38(r28)
/* 80985190  28 00 00 02 */	cmplwi r0, 2
/* 80985194  40 80 00 0C */	bge lbl_809851A0
/* 80985198  38 60 00 00 */	li r3, 0
/* 8098519C  48 00 03 70 */	b lbl_8098550C
lbl_809851A0:
/* 809851A0  4B 82 73 DC */	b dKy_darkworld_check__Fv
/* 809851A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809851A8  40 82 00 48 */	bne lbl_809851F0
/* 809851AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809851B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809851B4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 809851B8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 809851BC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 809851C0  41 82 00 30 */	beq lbl_809851F0
/* 809851C4  C8 3E 0D 90 */	lfd f1, 0xd90(r30)
/* 809851C8  C8 5E 0D 98 */	lfd f2, 0xd98(r30)
/* 809851CC  4B 9E 75 B4 */	b pow
/* 809851D0  FF E0 08 18 */	frsp f31, f1
/* 809851D4  7F 83 E3 78 */	mr r3, r28
/* 809851D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809851DC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809851E0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809851E4  4B 69 58 B0 */	b fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809851E8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 809851EC  41 80 00 10 */	blt lbl_809851FC
lbl_809851F0:
/* 809851F0  88 1C 0E 48 */	lbz r0, 0xe48(r28)
/* 809851F4  28 00 00 00 */	cmplwi r0, 0
/* 809851F8  41 82 00 70 */	beq lbl_80985268
lbl_809851FC:
/* 809851FC  80 7D 3F A8 */	lwz r3, 0x3fa8(r29)
/* 80985200  80 1D 3F AC */	lwz r0, 0x3fac(r29)
/* 80985204  90 61 00 28 */	stw r3, 0x28(r1)
/* 80985208  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8098520C  80 1D 3F B0 */	lwz r0, 0x3fb0(r29)
/* 80985210  90 01 00 30 */	stw r0, 0x30(r1)
/* 80985214  7F 83 E3 78 */	mr r3, r28
/* 80985218  38 81 00 28 */	addi r4, r1, 0x28
/* 8098521C  4B FF FD 19 */	bl setAction__11daNpcChat_cFM11daNpcChat_cFPCvPvPv_b
/* 80985220  88 1C 0E 48 */	lbz r0, 0xe48(r28)
/* 80985224  28 00 00 00 */	cmplwi r0, 0
/* 80985228  40 82 02 E0 */	bne lbl_80985508
/* 8098522C  38 C0 00 00 */	li r6, 0
/* 80985230  38 60 00 00 */	li r3, 0
/* 80985234  38 80 00 01 */	li r4, 1
/* 80985238  48 00 00 20 */	b lbl_80985258
lbl_8098523C:
/* 8098523C  38 03 0E 24 */	addi r0, r3, 0xe24
/* 80985240  7C BC 00 2E */	lwzx r5, r28, r0
/* 80985244  28 05 00 00 */	cmplwi r5, 0
/* 80985248  41 82 02 C0 */	beq lbl_80985508
/* 8098524C  98 85 0E 48 */	stb r4, 0xe48(r5)
/* 80985250  38 C6 00 01 */	addi r6, r6, 1
/* 80985254  38 63 00 04 */	addi r3, r3, 4
lbl_80985258:
/* 80985258  88 1C 0E 21 */	lbz r0, 0xe21(r28)
/* 8098525C  7C 06 00 00 */	cmpw r6, r0
/* 80985260  41 80 FF DC */	blt lbl_8098523C
/* 80985264  48 00 02 A4 */	b lbl_80985508
lbl_80985268:
/* 80985268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8098526C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80985270  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80985274  28 00 00 00 */	cmplwi r0, 0
/* 80985278  41 82 01 FC */	beq lbl_80985474
/* 8098527C  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 80985280  28 00 00 01 */	cmplwi r0, 1
/* 80985284  40 82 00 60 */	bne lbl_809852E4
/* 80985288  38 00 00 00 */	li r0, 0
/* 8098528C  88 7F 4F B5 */	lbz r3, 0x4fb5(r31)
/* 80985290  28 03 00 01 */	cmplwi r3, 1
/* 80985294  41 82 00 0C */	beq lbl_809852A0
/* 80985298  28 03 00 02 */	cmplwi r3, 2
/* 8098529C  40 82 00 08 */	bne lbl_809852A4
lbl_809852A0:
/* 809852A0  38 00 00 01 */	li r0, 1
lbl_809852A4:
/* 809852A4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809852A8  41 82 00 14 */	beq lbl_809852BC
/* 809852AC  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 809852B0  4B 6C 35 40 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 809852B4  2C 03 00 00 */	cmpwi r3, 0
/* 809852B8  41 82 00 6C */	beq lbl_80985324
lbl_809852BC:
/* 809852BC  80 7D 3F B4 */	lwz r3, 0x3fb4(r29)
/* 809852C0  80 1D 3F B8 */	lwz r0, 0x3fb8(r29)
/* 809852C4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 809852C8  90 01 00 20 */	stw r0, 0x20(r1)
/* 809852CC  80 1D 3F BC */	lwz r0, 0x3fbc(r29)
/* 809852D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809852D4  7F 83 E3 78 */	mr r3, r28
/* 809852D8  38 81 00 1C */	addi r4, r1, 0x1c
/* 809852DC  4B FF FC 59 */	bl setAction__11daNpcChat_cFM11daNpcChat_cFPCvPvPv_b
/* 809852E0  48 00 00 44 */	b lbl_80985324
lbl_809852E4:
/* 809852E4  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 809852E8  80 9D 3D F4 */	lwz r4, 0x3df4(r29)
/* 809852EC  38 A0 00 00 */	li r5, 0
/* 809852F0  38 C0 00 00 */	li r6, 0
/* 809852F4  4B 6C 28 28 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809852F8  2C 03 FF FF */	cmpwi r3, -1
/* 809852FC  41 82 00 28 */	beq lbl_80985324
/* 80985300  80 7D 3F C0 */	lwz r3, 0x3fc0(r29)
/* 80985304  80 1D 3F C4 */	lwz r0, 0x3fc4(r29)
/* 80985308  90 61 00 10 */	stw r3, 0x10(r1)
/* 8098530C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985310  80 1D 3F C8 */	lwz r0, 0x3fc8(r29)
/* 80985314  90 01 00 18 */	stw r0, 0x18(r1)
/* 80985318  7F 83 E3 78 */	mr r3, r28
/* 8098531C  38 81 00 10 */	addi r4, r1, 0x10
/* 80985320  4B FF FC 15 */	bl setAction__11daNpcChat_cFM11daNpcChat_cFPCvPvPv_b
lbl_80985324:
/* 80985324  88 1C 0E 4D */	lbz r0, 0xe4d(r28)
/* 80985328  28 00 00 00 */	cmplwi r0, 0
/* 8098532C  41 82 00 60 */	beq lbl_8098538C
/* 80985330  88 1C 0E 50 */	lbz r0, 0xe50(r28)
/* 80985334  28 00 00 01 */	cmplwi r0, 1
/* 80985338  40 82 00 54 */	bne lbl_8098538C
/* 8098533C  7F 83 E3 78 */	mr r3, r28
/* 80985340  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80985344  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80985348  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8098534C  4B 69 53 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80985350  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80985354  7C 60 07 34 */	extsh r0, r3
/* 80985358  7C 04 00 00 */	cmpw r4, r0
/* 8098535C  41 82 00 30 */	beq lbl_8098538C
/* 80985360  7F 83 E3 78 */	mr r3, r28
/* 80985364  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80985368  4B 69 53 A8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8098536C  7C 64 1B 78 */	mr r4, r3
/* 80985370  7F 83 E3 78 */	mr r3, r28
/* 80985374  38 A0 00 01 */	li r5, 1
/* 80985378  4B FF FC 65 */	bl step__11daNpcChat_cFsi
/* 8098537C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80985380  41 82 00 0C */	beq lbl_8098538C
/* 80985384  38 00 00 00 */	li r0, 0
/* 80985388  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_8098538C:
/* 8098538C  7F 83 E3 78 */	mr r3, r28
/* 80985390  38 81 00 0C */	addi r4, r1, 0xc
/* 80985394  38 A1 00 08 */	addi r5, r1, 8
/* 80985398  7F 86 E3 78 */	mr r6, r28
/* 8098539C  88 FC 0E 4D */	lbz r7, 0xe4d(r28)
/* 809853A0  4B 7C E3 78 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809853A4  2C 03 00 00 */	cmpwi r3, 0
/* 809853A8  41 82 00 24 */	beq lbl_809853CC
/* 809853AC  7F 83 E3 78 */	mr r3, r28
/* 809853B0  80 81 00 08 */	lwz r4, 8(r1)
/* 809853B4  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 809853B8  38 A0 00 01 */	li r5, 1
/* 809853BC  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809853C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809853C4  7D 89 03 A6 */	mtctr r12
/* 809853C8  4E 80 04 21 */	bctrl 
lbl_809853CC:
/* 809853CC  88 1C 0E 4D */	lbz r0, 0xe4d(r28)
/* 809853D0  28 00 00 00 */	cmplwi r0, 0
/* 809853D4  41 82 01 34 */	beq lbl_80985508
/* 809853D8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809853DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809853E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809853E4  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 809853E8  4B 6B DF 04 */	b convPId__14dEvt_control_cFUi
/* 809853EC  7C 03 E0 40 */	cmplw r3, r28
/* 809853F0  41 82 01 18 */	beq lbl_80985508
/* 809853F4  88 1C 0E 51 */	lbz r0, 0xe51(r28)
/* 809853F8  28 00 00 01 */	cmplwi r0, 1
/* 809853FC  40 82 00 28 */	bne lbl_80985424
/* 80985400  7F 83 E3 78 */	mr r3, r28
/* 80985404  38 80 00 18 */	li r4, 0x18
/* 80985408  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 8098540C  38 A0 00 00 */	li r5, 0
/* 80985410  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80985414  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80985418  7D 89 03 A6 */	mtctr r12
/* 8098541C  4E 80 04 21 */	bctrl 
/* 80985420  48 00 00 E8 */	b lbl_80985508
lbl_80985424:
/* 80985424  28 00 00 02 */	cmplwi r0, 2
/* 80985428  40 82 00 28 */	bne lbl_80985450
/* 8098542C  7F 83 E3 78 */	mr r3, r28
/* 80985430  38 80 00 1A */	li r4, 0x1a
/* 80985434  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 80985438  38 A0 00 00 */	li r5, 0
/* 8098543C  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80985440  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80985444  7D 89 03 A6 */	mtctr r12
/* 80985448  4E 80 04 21 */	bctrl 
/* 8098544C  48 00 00 BC */	b lbl_80985508
lbl_80985450:
/* 80985450  7F 83 E3 78 */	mr r3, r28
/* 80985454  38 80 00 01 */	li r4, 1
/* 80985458  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 8098545C  38 A0 00 00 */	li r5, 0
/* 80985460  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80985464  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80985468  7D 89 03 A6 */	mtctr r12
/* 8098546C  4E 80 04 21 */	bctrl 
/* 80985470  48 00 00 98 */	b lbl_80985508
lbl_80985474:
/* 80985474  88 1C 0E 4D */	lbz r0, 0xe4d(r28)
/* 80985478  28 00 00 00 */	cmplwi r0, 0
/* 8098547C  41 82 00 10 */	beq lbl_8098548C
/* 80985480  38 00 00 00 */	li r0, 0
/* 80985484  B0 1C 0E 1E */	sth r0, 0xe1e(r28)
/* 80985488  48 00 00 80 */	b lbl_80985508
lbl_8098548C:
/* 8098548C  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80985490  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80985494  7C 04 00 00 */	cmpw r4, r0
/* 80985498  41 82 00 40 */	beq lbl_809854D8
/* 8098549C  7F 83 E3 78 */	mr r3, r28
/* 809854A0  38 A0 00 01 */	li r5, 1
/* 809854A4  4B FF FB 39 */	bl step__11daNpcChat_cFsi
/* 809854A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809854AC  41 82 00 2C */	beq lbl_809854D8
/* 809854B0  7F 83 E3 78 */	mr r3, r28
/* 809854B4  88 9C 0E 4E */	lbz r4, 0xe4e(r28)
/* 809854B8  C0 3E 05 B8 */	lfs f1, 0x5b8(r30)
/* 809854BC  38 A0 00 01 */	li r5, 1
/* 809854C0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809854C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809854C8  7D 89 03 A6 */	mtctr r12
/* 809854CC  4E 80 04 21 */	bctrl 
/* 809854D0  38 00 00 00 */	li r0, 0
/* 809854D4  90 1C 09 6C */	stw r0, 0x96c(r28)
lbl_809854D8:
/* 809854D8  7F 83 E3 78 */	mr r3, r28
/* 809854DC  88 9C 09 E9 */	lbz r4, 0x9e9(r28)
/* 809854E0  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 809854E4  54 00 10 3A */	slwi r0, r0, 2
/* 809854E8  38 BD 3D F0 */	addi r5, r29, 0x3df0
/* 809854EC  7C A5 00 2E */	lwzx r5, r5, r0
/* 809854F0  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809854F4  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809854F8  38 E0 00 28 */	li r7, 0x28
/* 809854FC  39 00 00 FF */	li r8, 0xff
/* 80985500  39 20 00 01 */	li r9, 1
/* 80985504  4B 7C E3 78 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80985508:
/* 80985508  38 60 00 01 */	li r3, 1
lbl_8098550C:
/* 8098550C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80985510  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80985514  39 61 00 50 */	addi r11, r1, 0x50
/* 80985518  4B 9D CD 0C */	b _restgpr_28
/* 8098551C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80985520  7C 08 03 A6 */	mtlr r0
/* 80985524  38 21 00 60 */	addi r1, r1, 0x60
/* 80985528  4E 80 00 20 */	blr 
