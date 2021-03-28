lbl_804E2754:
/* 804E2754  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E2758  7C 08 02 A6 */	mflr r0
/* 804E275C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E2760  39 61 00 20 */	addi r11, r1, 0x20
/* 804E2764  4B E7 FA 78 */	b _savegpr_29
/* 804E2768  7C 7D 1B 78 */	mr r29, r3
/* 804E276C  3C 60 80 4E */	lis r3, l_staff_name@ha
/* 804E2770  3B E3 4A 14 */	addi r31, r3, l_staff_name@l
/* 804E2774  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804E2778  D0 1D 07 C4 */	stfs f0, 0x7c4(r29)
/* 804E277C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804E2780  D0 1D 07 C8 */	stfs f0, 0x7c8(r29)
/* 804E2784  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804E2788  D0 1D 07 CC */	stfs f0, 0x7cc(r29)
/* 804E278C  C0 1D 07 C4 */	lfs f0, 0x7c4(r29)
/* 804E2790  D0 1D 07 D0 */	stfs f0, 0x7d0(r29)
/* 804E2794  C0 1D 07 C8 */	lfs f0, 0x7c8(r29)
/* 804E2798  D0 1D 07 D4 */	stfs f0, 0x7d4(r29)
/* 804E279C  C0 1D 07 CC */	lfs f0, 0x7cc(r29)
/* 804E27A0  D0 1D 07 D8 */	stfs f0, 0x7d8(r29)
/* 804E27A4  38 00 00 00 */	li r0, 0
/* 804E27A8  90 01 00 08 */	stw r0, 8(r1)
/* 804E27AC  38 7D 05 AC */	addi r3, r29, 0x5ac
/* 804E27B0  38 9D 07 C4 */	addi r4, r29, 0x7c4
/* 804E27B4  38 BD 07 D0 */	addi r5, r29, 0x7d0
/* 804E27B8  7F A6 EB 78 */	mr r6, r29
/* 804E27BC  38 E0 00 01 */	li r7, 1
/* 804E27C0  39 1D 07 84 */	addi r8, r29, 0x784
/* 804E27C4  39 3D 04 F8 */	addi r9, r29, 0x4f8
/* 804E27C8  39 40 00 00 */	li r10, 0
/* 804E27CC  4B B9 3A 7C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 804E27D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E27D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E27D8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 804E27DC  7F C3 F3 78 */	mr r3, r30
/* 804E27E0  80 9D 05 90 */	lwz r4, 0x590(r29)
/* 804E27E4  7F A5 EB 78 */	mr r5, r29
/* 804E27E8  4B B9 22 20 */	b Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 804E27EC  38 00 00 01 */	li r0, 1
/* 804E27F0  98 1D 05 99 */	stb r0, 0x599(r29)
/* 804E27F4  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 804E27F8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804E27FC  EC 00 08 2A */	fadds f0, f0, f1
/* 804E2800  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 804E2804  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 804E2808  EC 00 08 2A */	fadds f0, f0, f1
/* 804E280C  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 804E2810  38 00 00 20 */	li r0, 0x20
/* 804E2814  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 804E2818  7F A3 EB 78 */	mr r3, r29
/* 804E281C  48 00 1B 11 */	bl checkFront__11daBdoorL1_cFv
/* 804E2820  2C 03 00 00 */	cmpwi r3, 0
/* 804E2824  41 82 00 10 */	beq lbl_804E2834
/* 804E2828  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 804E282C  D0 1D 05 A8 */	stfs f0, 0x5a8(r29)
/* 804E2830  48 00 00 0C */	b lbl_804E283C
lbl_804E2834:
/* 804E2834  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804E2838  D0 1D 05 A8 */	stfs f0, 0x5a8(r29)
lbl_804E283C:
/* 804E283C  7F A3 EB 78 */	mr r3, r29
/* 804E2840  4B FF FD 39 */	bl calcMtx__11daBdoorL1_cFv
/* 804E2844  80 7D 05 90 */	lwz r3, 0x590(r29)
/* 804E2848  4B B9 91 78 */	b Move__4dBgWFv
/* 804E284C  7F A3 EB 78 */	mr r3, r29
/* 804E2850  4B B5 79 80 */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 804E2854  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 804E2858  7F A3 EB 78 */	mr r3, r29
/* 804E285C  4B FF F7 49 */	bl getArcName__11daBdoorL1_cFv
/* 804E2860  90 7D 01 00 */	stw r3, 0x100(r29)
/* 804E2864  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E2868  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E286C  7F E4 FB 78 */	mr r4, r31
/* 804E2870  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804E2874  7C 05 07 74 */	extsb r5, r0
/* 804E2878  4B B5 2A E8 */	b isSwitch__10dSv_info_cCFii
/* 804E287C  2C 03 00 00 */	cmpwi r3, 0
/* 804E2880  40 82 00 28 */	bne lbl_804E28A8
/* 804E2884  7F A3 EB 78 */	mr r3, r29
/* 804E2888  4B FF F5 A5 */	bl getDoorEventName__11daBdoorL1_cFv
/* 804E288C  7C 65 1B 78 */	mr r5, r3
/* 804E2890  38 7E 40 C0 */	addi r3, r30, 0x40c0
/* 804E2894  7F A4 EB 78 */	mr r4, r29
/* 804E2898  38 C0 00 FF */	li r6, 0xff
/* 804E289C  4B B6 4E BC */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 804E28A0  B0 7D 05 9E */	sth r3, 0x59e(r29)
/* 804E28A4  48 00 00 24 */	b lbl_804E28C8
lbl_804E28A8:
/* 804E28A8  7F A3 EB 78 */	mr r3, r29
/* 804E28AC  4B FF F6 3D */	bl getDoorEventName2__11daBdoorL1_cFv
/* 804E28B0  7C 65 1B 78 */	mr r5, r3
/* 804E28B4  38 7E 40 C0 */	addi r3, r30, 0x40c0
/* 804E28B8  7F A4 EB 78 */	mr r4, r29
/* 804E28BC  38 C0 00 FF */	li r6, 0xff
/* 804E28C0  4B B6 4E 98 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 804E28C4  B0 7D 05 9E */	sth r3, 0x59e(r29)
lbl_804E28C8:
/* 804E28C8  38 60 00 01 */	li r3, 1
/* 804E28CC  39 61 00 20 */	addi r11, r1, 0x20
/* 804E28D0  4B E7 F9 58 */	b _restgpr_29
/* 804E28D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E28D8  7C 08 03 A6 */	mtlr r0
/* 804E28DC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E28E0  4E 80 00 20 */	blr 
