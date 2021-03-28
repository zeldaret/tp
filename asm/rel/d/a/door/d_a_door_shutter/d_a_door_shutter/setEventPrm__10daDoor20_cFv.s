lbl_8046129C:
/* 8046129C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804612A0  7C 08 02 A6 */	mflr r0
/* 804612A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804612A8  39 61 00 50 */	addi r11, r1, 0x50
/* 804612AC  4B F0 0F 2C */	b _savegpr_28
/* 804612B0  7C 7D 1B 78 */	mr r29, r3
/* 804612B4  3C 80 80 46 */	lis r4, lit_4018@ha
/* 804612B8  3B E4 68 20 */	addi r31, r4, lit_4018@l
/* 804612BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804612C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 804612C4  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 804612C8  48 00 4B C5 */	bl setStop__10daDoor20_cFv
/* 804612CC  7F A3 EB 78 */	mr r3, r29
/* 804612D0  4B BD 8E E8 */	b getFRoomNo__13door_param2_cFP10fopAc_ac_c
/* 804612D4  54 7C 06 3E */	clrlwi r28, r3, 0x18
/* 804612D8  7F A3 EB 78 */	mr r3, r29
/* 804612DC  4B BD 8E E8 */	b getBRoomNo__13door_param2_cFP10fopAc_ac_c
/* 804612E0  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 804612E4  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 804612E8  38 83 60 94 */	addi r4, r3, mStatus__20dStage_roomControl_c@l
/* 804612EC  3C 60 80 45 */	lis r3, struct_80450D64+0x0@ha
/* 804612F0  88 03 0D 64 */	lbz r0, struct_80450D64+0x0@l(r3)
/* 804612F4  7C 00 07 74 */	extsb r0, r0
/* 804612F8  7C 1C 00 00 */	cmpw r28, r0
/* 804612FC  7F 80 E3 78 */	mr r0, r28
/* 80461300  40 82 00 08 */	bne lbl_80461308
/* 80461304  7C A0 2B 78 */	mr r0, r5
lbl_80461308:
/* 80461308  1C 00 04 04 */	mulli r0, r0, 0x404
/* 8046130C  7C 64 02 14 */	add r3, r4, r0
/* 80461310  88 03 03 F4 */	lbz r0, 0x3f4(r3)
/* 80461314  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80461318  41 82 03 BC */	beq lbl_804616D4
/* 8046131C  7F A3 EB 78 */	mr r3, r29
/* 80461320  4B BD 8E 68 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80461324  2C 03 00 09 */	cmpwi r3, 9
/* 80461328  40 82 01 1C */	bne lbl_80461444
/* 8046132C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461330  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80461334  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80461338  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8046133C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80461340  40 82 03 94 */	bne lbl_804616D4
/* 80461344  7F A3 EB 78 */	mr r3, r29
/* 80461348  38 81 00 08 */	addi r4, r1, 8
/* 8046134C  48 00 03 A1 */	bl checkOpenMsgDoor__10daDoor20_cFPi
/* 80461350  2C 03 00 00 */	cmpwi r3, 0
/* 80461354  40 82 00 10 */	bne lbl_80461364
/* 80461358  38 00 00 12 */	li r0, 0x12
/* 8046135C  98 1D 06 CB */	stb r0, 0x6cb(r29)
/* 80461360  48 00 01 98 */	b lbl_804614F8
lbl_80461364:
/* 80461364  38 61 00 18 */	addi r3, r1, 0x18
/* 80461368  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8046136C  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80461370  4B E0 57 C4 */	b __mi__4cXyzCFRC3Vec
/* 80461374  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80461378  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8046137C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80461380  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80461384  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80461388  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8046138C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80461390  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80461394  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 80461398  7C 00 00 D0 */	neg r0, r0
/* 8046139C  7C 04 07 34 */	extsh r4, r0
/* 804613A0  4B BA B0 3C */	b mDoMtx_YrotS__FPA4_fs
/* 804613A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804613A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804613AC  38 81 00 30 */	addi r4, r1, 0x30
/* 804613B0  7C 85 23 78 */	mr r5, r4
/* 804613B4  4B EE 59 B8 */	b PSMTXMultVec
/* 804613B8  88 1D 06 8C */	lbz r0, 0x68c(r29)
/* 804613BC  28 00 00 00 */	cmplwi r0, 0
/* 804613C0  40 82 00 44 */	bne lbl_80461404
/* 804613C4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 804613C8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804613CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804613D0  40 81 00 10 */	ble lbl_804613E0
/* 804613D4  38 00 00 0D */	li r0, 0xd
/* 804613D8  98 1D 06 CB */	stb r0, 0x6cb(r29)
/* 804613DC  48 00 00 0C */	b lbl_804613E8
lbl_804613E0:
/* 804613E0  38 00 00 0C */	li r0, 0xc
/* 804613E4  98 1D 06 CB */	stb r0, 0x6cb(r29)
lbl_804613E8:
/* 804613E8  88 1D 06 DA */	lbz r0, 0x6da(r29)
/* 804613EC  28 00 00 FF */	cmplwi r0, 0xff
/* 804613F0  40 82 01 08 */	bne lbl_804614F8
/* 804613F4  7F A3 EB 78 */	mr r3, r29
/* 804613F8  48 00 48 0D */	bl chkStopB__10daDoor20_cFv
/* 804613FC  98 7D 06 DA */	stb r3, 0x6da(r29)
/* 80461400  48 00 00 F8 */	b lbl_804614F8
lbl_80461404:
/* 80461404  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80461408  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8046140C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80461410  40 81 00 10 */	ble lbl_80461420
/* 80461414  38 00 00 0C */	li r0, 0xc
/* 80461418  98 1D 06 CB */	stb r0, 0x6cb(r29)
/* 8046141C  48 00 00 0C */	b lbl_80461428
lbl_80461420:
/* 80461420  38 00 00 0D */	li r0, 0xd
/* 80461424  98 1D 06 CB */	stb r0, 0x6cb(r29)
lbl_80461428:
/* 80461428  88 1D 06 DA */	lbz r0, 0x6da(r29)
/* 8046142C  28 00 00 FF */	cmplwi r0, 0xff
/* 80461430  40 82 00 C8 */	bne lbl_804614F8
/* 80461434  7F A3 EB 78 */	mr r3, r29
/* 80461438  48 00 46 FD */	bl chkStopF__10daDoor20_cFv
/* 8046143C  98 7D 06 DA */	stb r3, 0x6da(r29)
/* 80461440  48 00 00 B8 */	b lbl_804614F8
lbl_80461444:
/* 80461444  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461448  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8046144C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80461450  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80461454  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80461458  41 82 00 50 */	beq lbl_804614A8
/* 8046145C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80461460  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80461464  41 82 02 70 */	beq lbl_804616D4
/* 80461468  3B 80 00 01 */	li r28, 1
/* 8046146C  4B D4 B1 10 */	b dKy_darkworld_check__Fv
/* 80461470  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80461474  28 00 00 01 */	cmplwi r0, 1
/* 80461478  41 82 00 24 */	beq lbl_8046149C
/* 8046147C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461480  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80461484  38 63 00 28 */	addi r3, r3, 0x28
/* 80461488  38 80 00 03 */	li r4, 3
/* 8046148C  4B BD 17 60 */	b isTransformLV__21dSv_player_status_b_cCFi
/* 80461490  2C 03 00 00 */	cmpwi r3, 0
/* 80461494  40 82 00 08 */	bne lbl_8046149C
/* 80461498  3B 80 00 00 */	li r28, 0
lbl_8046149C:
/* 8046149C  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 804614A0  40 82 00 08 */	bne lbl_804614A8
/* 804614A4  48 00 02 30 */	b lbl_804616D4
lbl_804614A8:
/* 804614A8  88 1D 06 8C */	lbz r0, 0x68c(r29)
/* 804614AC  28 00 00 00 */	cmplwi r0, 0
/* 804614B0  40 82 00 28 */	bne lbl_804614D8
/* 804614B4  38 00 00 04 */	li r0, 4
/* 804614B8  98 1D 06 CB */	stb r0, 0x6cb(r29)
/* 804614BC  88 1D 06 DA */	lbz r0, 0x6da(r29)
/* 804614C0  28 00 00 FF */	cmplwi r0, 0xff
/* 804614C4  40 82 00 34 */	bne lbl_804614F8
/* 804614C8  7F A3 EB 78 */	mr r3, r29
/* 804614CC  48 00 47 39 */	bl chkStopB__10daDoor20_cFv
/* 804614D0  98 7D 06 DA */	stb r3, 0x6da(r29)
/* 804614D4  48 00 00 24 */	b lbl_804614F8
lbl_804614D8:
/* 804614D8  38 00 00 05 */	li r0, 5
/* 804614DC  98 1D 06 CB */	stb r0, 0x6cb(r29)
/* 804614E0  88 1D 06 DA */	lbz r0, 0x6da(r29)
/* 804614E4  28 00 00 FF */	cmplwi r0, 0xff
/* 804614E8  40 82 00 10 */	bne lbl_804614F8
/* 804614EC  7F A3 EB 78 */	mr r3, r29
/* 804614F0  48 00 46 45 */	bl chkStopF__10daDoor20_cFv
/* 804614F4  98 7D 06 DA */	stb r3, 0x6da(r29)
lbl_804614F8:
/* 804614F8  88 1D 06 D8 */	lbz r0, 0x6d8(r29)
/* 804614FC  28 00 00 00 */	cmplwi r0, 0
/* 80461500  40 82 01 D4 */	bne lbl_804616D4
/* 80461504  88 1D 06 DA */	lbz r0, 0x6da(r29)
/* 80461508  28 00 00 01 */	cmplwi r0, 1
/* 8046150C  40 82 00 10 */	bne lbl_8046151C
/* 80461510  88 7D 06 CB */	lbz r3, 0x6cb(r29)
/* 80461514  38 03 00 02 */	addi r0, r3, 2
/* 80461518  98 1D 06 CB */	stb r0, 0x6cb(r29)
lbl_8046151C:
/* 8046151C  7F A3 EB 78 */	mr r3, r29
/* 80461520  48 00 4B 7D */	bl chkMakeKey__10daDoor20_cFv
/* 80461524  2C 03 00 00 */	cmpwi r3, 0
/* 80461528  41 82 01 14 */	beq lbl_8046163C
/* 8046152C  88 1D 05 F0 */	lbz r0, 0x5f0(r29)
/* 80461530  28 00 00 00 */	cmplwi r0, 0
/* 80461534  41 82 01 50 */	beq lbl_80461684
/* 80461538  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8046153C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80461540  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 80461544  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80461548  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8046154C  41 82 00 14 */	beq lbl_80461560
/* 80461550  88 04 09 74 */	lbz r0, 0x974(r4)
/* 80461554  28 00 00 00 */	cmplwi r0, 0
/* 80461558  40 82 01 2C */	bne lbl_80461684
/* 8046155C  48 00 01 78 */	b lbl_804616D4
lbl_80461560:
/* 80461560  88 04 09 74 */	lbz r0, 0x974(r4)
/* 80461564  28 00 00 00 */	cmplwi r0, 0
/* 80461568  40 82 01 1C */	bne lbl_80461684
/* 8046156C  7F A3 EB 78 */	mr r3, r29
/* 80461570  4B BD 8C 18 */	b getKind__13door_param2_cFP10fopAc_ac_c
/* 80461574  2C 03 00 09 */	cmpwi r3, 9
/* 80461578  40 82 01 5C */	bne lbl_804616D4
/* 8046157C  88 1D 06 73 */	lbz r0, 0x673(r29)
/* 80461580  28 00 00 00 */	cmplwi r0, 0
/* 80461584  41 82 01 50 */	beq lbl_804616D4
/* 80461588  38 61 00 0C */	addi r3, r1, 0xc
/* 8046158C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80461590  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80461594  4B E0 55 A0 */	b __mi__4cXyzCFRC3Vec
/* 80461598  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8046159C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804615A0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804615A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804615A8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804615AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804615B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804615B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804615B8  A8 1D 04 B6 */	lha r0, 0x4b6(r29)
/* 804615BC  7C 00 00 D0 */	neg r0, r0
/* 804615C0  7C 04 07 34 */	extsh r4, r0
/* 804615C4  4B BA AE 18 */	b mDoMtx_YrotS__FPA4_fs
/* 804615C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804615CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804615D0  38 81 00 24 */	addi r4, r1, 0x24
/* 804615D4  7C 85 23 78 */	mr r5, r4
/* 804615D8  4B EE 57 94 */	b PSMTXMultVec
/* 804615DC  88 1D 06 8C */	lbz r0, 0x68c(r29)
/* 804615E0  28 00 00 00 */	cmplwi r0, 0
/* 804615E4  40 82 00 2C */	bne lbl_80461610
/* 804615E8  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 804615EC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804615F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804615F4  40 81 00 10 */	ble lbl_80461604
/* 804615F8  38 00 00 11 */	li r0, 0x11
/* 804615FC  98 1D 06 CB */	stb r0, 0x6cb(r29)
/* 80461600  48 00 00 84 */	b lbl_80461684
lbl_80461604:
/* 80461604  38 00 00 10 */	li r0, 0x10
/* 80461608  98 1D 06 CB */	stb r0, 0x6cb(r29)
/* 8046160C  48 00 00 78 */	b lbl_80461684
lbl_80461610:
/* 80461610  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80461614  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80461618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8046161C  40 81 00 10 */	ble lbl_8046162C
/* 80461620  38 00 00 10 */	li r0, 0x10
/* 80461624  98 1D 06 CB */	stb r0, 0x6cb(r29)
/* 80461628  48 00 00 5C */	b lbl_80461684
lbl_8046162C:
/* 8046162C  38 00 00 11 */	li r0, 0x11
/* 80461630  98 1D 06 CB */	stb r0, 0x6cb(r29)
/* 80461634  48 00 00 50 */	b lbl_80461684
/* 80461638  48 00 00 9C */	b lbl_804616D4
lbl_8046163C:
/* 8046163C  88 1D 06 8C */	lbz r0, 0x68c(r29)
/* 80461640  28 00 00 00 */	cmplwi r0, 0
/* 80461644  40 82 00 14 */	bne lbl_80461658
/* 80461648  7F A3 EB 78 */	mr r3, r29
/* 8046164C  4B BD 8B 84 */	b getSwbit__13door_param2_cFP10fopAc_ac_c
/* 80461650  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80461654  48 00 00 10 */	b lbl_80461664
lbl_80461658:
/* 80461658  7F A3 EB 78 */	mr r3, r29
/* 8046165C  4B BD 8B 80 */	b getSwbit2__13door_param2_cFP10fopAc_ac_c
/* 80461660  54 64 06 3E */	clrlwi r4, r3, 0x18
lbl_80461664:
/* 80461664  2C 04 00 FF */	cmpwi r4, 0xff
/* 80461668  41 82 00 1C */	beq lbl_80461684
/* 8046166C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80461670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80461674  38 A0 FF FF */	li r5, -1
/* 80461678  4B BD 3C E8 */	b isSwitch__10dSv_info_cCFii
/* 8046167C  2C 03 00 00 */	cmpwi r3, 0
/* 80461680  41 82 00 54 */	beq lbl_804616D4
lbl_80461684:
/* 80461684  7F A3 EB 78 */	mr r3, r29
/* 80461688  4B FF F6 F9 */	bl getSize2X__10daDoor20_cFv
/* 8046168C  7F A3 EB 78 */	mr r3, r29
/* 80461690  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80461694  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80461698  48 00 3D F9 */	bl checkArea__10daDoor20_cFfff
/* 8046169C  2C 03 00 00 */	cmpwi r3, 0
/* 804616A0  41 82 00 34 */	beq lbl_804616D4
/* 804616A4  88 1D 06 CB */	lbz r0, 0x6cb(r29)
/* 804616A8  54 00 08 3C */	slwi r0, r0, 1
/* 804616AC  7C 7D 02 14 */	add r3, r29, r0
/* 804616B0  A8 03 06 92 */	lha r0, 0x692(r3)
/* 804616B4  B0 1D 00 FC */	sth r0, 0xfc(r29)
/* 804616B8  88 1D 06 CB */	lbz r0, 0x6cb(r29)
/* 804616BC  7C 7D 02 14 */	add r3, r29, r0
/* 804616C0  88 03 06 B8 */	lbz r0, 0x6b8(r3)
/* 804616C4  98 1D 00 FE */	stb r0, 0xfe(r29)
/* 804616C8  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 804616CC  60 00 00 04 */	ori r0, r0, 4
/* 804616D0  B0 1D 00 FA */	sth r0, 0xfa(r29)
lbl_804616D4:
/* 804616D4  39 61 00 50 */	addi r11, r1, 0x50
/* 804616D8  4B F0 0B 4C */	b _restgpr_28
/* 804616DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804616E0  7C 08 03 A6 */	mtlr r0
/* 804616E4  38 21 00 50 */	addi r1, r1, 0x50
/* 804616E8  4E 80 00 20 */	blr 
