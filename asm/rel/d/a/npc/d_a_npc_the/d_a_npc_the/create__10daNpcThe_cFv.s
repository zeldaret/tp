lbl_80AF9358:
/* 80AF9358  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AF935C  7C 08 02 A6 */	mflr r0
/* 80AF9360  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AF9364  39 61 00 40 */	addi r11, r1, 0x40
/* 80AF9368  4B 86 8E 64 */	b _savegpr_25
/* 80AF936C  7C 7F 1B 78 */	mr r31, r3
/* 80AF9370  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80AF9374  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80AF9378  40 82 00 1C */	bne lbl_80AF9394
/* 80AF937C  28 1F 00 00 */	cmplwi r31, 0
/* 80AF9380  41 82 00 08 */	beq lbl_80AF9388
/* 80AF9384  4B FF E3 49 */	bl __ct__10daNpcThe_cFv
lbl_80AF9388:
/* 80AF9388  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80AF938C  60 00 00 08 */	ori r0, r0, 8
/* 80AF9390  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80AF9394:
/* 80AF9394  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AF9398  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80AF939C  2C 00 00 01 */	cmpwi r0, 1
/* 80AF93A0  41 82 00 28 */	beq lbl_80AF93C8
/* 80AF93A4  40 80 00 10 */	bge lbl_80AF93B4
/* 80AF93A8  2C 00 00 00 */	cmpwi r0, 0
/* 80AF93AC  40 80 00 14 */	bge lbl_80AF93C0
/* 80AF93B0  48 00 00 28 */	b lbl_80AF93D8
lbl_80AF93B4:
/* 80AF93B4  2C 00 00 03 */	cmpwi r0, 3
/* 80AF93B8  40 80 00 20 */	bge lbl_80AF93D8
/* 80AF93BC  48 00 00 14 */	b lbl_80AF93D0
lbl_80AF93C0:
/* 80AF93C0  38 00 00 00 */	li r0, 0
/* 80AF93C4  48 00 00 18 */	b lbl_80AF93DC
lbl_80AF93C8:
/* 80AF93C8  38 00 00 01 */	li r0, 1
/* 80AF93CC  48 00 00 10 */	b lbl_80AF93DC
lbl_80AF93D0:
/* 80AF93D0  38 00 00 02 */	li r0, 2
/* 80AF93D4  48 00 00 08 */	b lbl_80AF93DC
lbl_80AF93D8:
/* 80AF93D8  38 00 00 00 */	li r0, 0
lbl_80AF93DC:
/* 80AF93DC  98 1F 0E 1E */	stb r0, 0xe1e(r31)
/* 80AF93E0  A8 7F 04 B4 */	lha r3, 0x4b4(r31)
/* 80AF93E4  3C 03 00 00 */	addis r0, r3, 0
/* 80AF93E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 80AF93EC  41 82 00 0C */	beq lbl_80AF93F8
/* 80AF93F0  90 7F 0E 14 */	stw r3, 0xe14(r31)
/* 80AF93F4  48 00 00 0C */	b lbl_80AF9400
lbl_80AF93F8:
/* 80AF93F8  38 00 FF FF */	li r0, -1
/* 80AF93FC  90 1F 0E 14 */	stw r0, 0xe14(r31)
lbl_80AF9400:
/* 80AF9400  88 1F 0E 1E */	lbz r0, 0xe1e(r31)
/* 80AF9404  28 00 00 02 */	cmplwi r0, 2
/* 80AF9408  40 82 00 50 */	bne lbl_80AF9458
/* 80AF940C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF9410  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF9414  3B 63 07 F0 */	addi r27, r3, 0x7f0
/* 80AF9418  7F 63 DB 78 */	mr r3, r27
/* 80AF941C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80AF9420  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80AF9424  A0 84 00 88 */	lhz r4, 0x88(r4)
/* 80AF9428  4B 53 B5 94 */	b isEventBit__11dSv_event_cCFUs
/* 80AF942C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9430  41 82 00 20 */	beq lbl_80AF9450
/* 80AF9434  7F 63 DB 78 */	mr r3, r27
/* 80AF9438  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80AF943C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80AF9440  A0 84 00 9C */	lhz r4, 0x9c(r4)
/* 80AF9444  4B 53 B5 78 */	b isEventBit__11dSv_event_cCFUs
/* 80AF9448  2C 03 00 00 */	cmpwi r3, 0
/* 80AF944C  41 82 00 0C */	beq lbl_80AF9458
lbl_80AF9450:
/* 80AF9450  38 60 00 05 */	li r3, 5
/* 80AF9454  48 00 02 DC */	b lbl_80AF9730
lbl_80AF9458:
/* 80AF9458  3B 40 00 00 */	li r26, 0
/* 80AF945C  3B 20 00 00 */	li r25, 0
/* 80AF9460  3B C0 00 00 */	li r30, 0
/* 80AF9464  3B A0 00 00 */	li r29, 0
/* 80AF9468  3C 60 80 B0 */	lis r3, l_resNames@ha
/* 80AF946C  3B 63 C3 80 */	addi r27, r3, l_resNames@l
/* 80AF9470  3C 60 80 B0 */	lis r3, l_loadRes_list@ha
/* 80AF9474  3B 83 C3 74 */	addi r28, r3, l_loadRes_list@l
/* 80AF9478  48 00 00 48 */	b lbl_80AF94C0
lbl_80AF947C:
/* 80AF947C  38 7D 0D E8 */	addi r3, r29, 0xde8
/* 80AF9480  7C 7F 1A 14 */	add r3, r31, r3
/* 80AF9484  54 00 10 3A */	slwi r0, r0, 2
/* 80AF9488  7C 9B 00 2E */	lwzx r4, r27, r0
/* 80AF948C  4B 53 3A 30 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80AF9490  2C 03 00 05 */	cmpwi r3, 5
/* 80AF9494  41 82 00 0C */	beq lbl_80AF94A0
/* 80AF9498  2C 03 00 03 */	cmpwi r3, 3
/* 80AF949C  40 82 00 0C */	bne lbl_80AF94A8
lbl_80AF94A0:
/* 80AF94A0  38 60 00 05 */	li r3, 5
/* 80AF94A4  48 00 02 8C */	b lbl_80AF9730
lbl_80AF94A8:
/* 80AF94A8  2C 03 00 04 */	cmpwi r3, 4
/* 80AF94AC  40 82 00 08 */	bne lbl_80AF94B4
/* 80AF94B0  3B 5A 00 01 */	addi r26, r26, 1
lbl_80AF94B4:
/* 80AF94B4  3B 39 00 01 */	addi r25, r25, 1
/* 80AF94B8  3B DE 00 04 */	addi r30, r30, 4
/* 80AF94BC  3B BD 00 08 */	addi r29, r29, 8
lbl_80AF94C0:
/* 80AF94C0  88 9F 0E 1E */	lbz r4, 0xe1e(r31)
/* 80AF94C4  54 80 15 BA */	rlwinm r0, r4, 2, 0x16, 0x1d
/* 80AF94C8  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80AF94CC  7C 03 F0 2E */	lwzx r0, r3, r30
/* 80AF94D0  2C 00 00 00 */	cmpwi r0, 0
/* 80AF94D4  40 80 FF A8 */	bge lbl_80AF947C
/* 80AF94D8  7C 1A C8 00 */	cmpw r26, r25
/* 80AF94DC  40 82 02 50 */	bne lbl_80AF972C
/* 80AF94E0  38 A0 00 00 */	li r5, 0
/* 80AF94E4  2C 04 00 01 */	cmpwi r4, 1
/* 80AF94E8  41 82 00 28 */	beq lbl_80AF9510
/* 80AF94EC  40 80 00 10 */	bge lbl_80AF94FC
/* 80AF94F0  2C 04 00 00 */	cmpwi r4, 0
/* 80AF94F4  40 80 00 14 */	bge lbl_80AF9508
/* 80AF94F8  48 00 00 24 */	b lbl_80AF951C
lbl_80AF94FC:
/* 80AF94FC  2C 04 00 03 */	cmpwi r4, 3
/* 80AF9500  40 80 00 1C */	bge lbl_80AF951C
/* 80AF9504  48 00 00 14 */	b lbl_80AF9518
lbl_80AF9508:
/* 80AF9508  38 A0 4D 70 */	li r5, 0x4d70
/* 80AF950C  48 00 00 10 */	b lbl_80AF951C
lbl_80AF9510:
/* 80AF9510  38 A0 4C C0 */	li r5, 0x4cc0
/* 80AF9514  48 00 00 08 */	b lbl_80AF951C
lbl_80AF9518:
/* 80AF9518  38 A0 4D 80 */	li r5, 0x4d80
lbl_80AF951C:
/* 80AF951C  7F E3 FB 78 */	mr r3, r31
/* 80AF9520  3C 80 80 AF */	lis r4, createHeapCallBack__10daNpcThe_cFP10fopAc_ac_c@ha
/* 80AF9524  38 84 7C B0 */	addi r4, r4, createHeapCallBack__10daNpcThe_cFP10fopAc_ac_c@l
/* 80AF9528  4B 52 0F 88 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80AF952C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AF9530  40 82 00 0C */	bne lbl_80AF953C
/* 80AF9534  38 60 00 05 */	li r3, 5
/* 80AF9538  48 00 01 F8 */	b lbl_80AF9730
lbl_80AF953C:
/* 80AF953C  88 1F 0E 1E */	lbz r0, 0xe1e(r31)
/* 80AF9540  28 00 00 00 */	cmplwi r0, 0
/* 80AF9544  41 82 00 14 */	beq lbl_80AF9558
/* 80AF9548  28 00 00 01 */	cmplwi r0, 1
/* 80AF954C  41 82 00 0C */	beq lbl_80AF9558
/* 80AF9550  28 00 00 02 */	cmplwi r0, 2
/* 80AF9554  40 82 00 0C */	bne lbl_80AF9560
lbl_80AF9558:
/* 80AF9558  38 00 00 00 */	li r0, 0
/* 80AF955C  48 00 00 08 */	b lbl_80AF9564
lbl_80AF9560:
/* 80AF9560  38 00 00 01 */	li r0, 1
lbl_80AF9564:
/* 80AF9564  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AF9568  41 82 00 0C */	beq lbl_80AF9574
/* 80AF956C  38 60 00 05 */	li r3, 5
/* 80AF9570  48 00 01 C0 */	b lbl_80AF9730
lbl_80AF9574:
/* 80AF9574  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AF9578  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF957C  38 03 00 24 */	addi r0, r3, 0x24
/* 80AF9580  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80AF9584  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AF9588  80 63 00 04 */	lwz r3, 4(r3)
/* 80AF958C  80 83 00 04 */	lwz r4, 4(r3)
/* 80AF9590  7F E3 FB 78 */	mr r3, r31
/* 80AF9594  4B 52 0F E4 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80AF9598  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 80AF959C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80AF95A0  38 BF 05 38 */	addi r5, r31, 0x538
/* 80AF95A4  38 C0 00 03 */	li r6, 3
/* 80AF95A8  38 E0 00 01 */	li r7, 1
/* 80AF95AC  4B 7C 6F 84 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80AF95B0  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80AF95B4  3C 80 80 B0 */	lis r4, m__16daNpcThe_Param_c@ha
/* 80AF95B8  3B A4 BE 0C */	addi r29, r4, m__16daNpcThe_Param_c@l
/* 80AF95BC  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80AF95C0  C0 5D 00 18 */	lfs f2, 0x18(r29)
/* 80AF95C4  4B 57 C9 94 */	b SetWall__12dBgS_AcchCirFff
/* 80AF95C8  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80AF95CC  90 01 00 08 */	stw r0, 8(r1)
/* 80AF95D0  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80AF95D4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80AF95D8  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80AF95DC  7F E6 FB 78 */	mr r6, r31
/* 80AF95E0  38 E0 00 01 */	li r7, 1
/* 80AF95E4  39 1F 07 E4 */	addi r8, r31, 0x7e4
/* 80AF95E8  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80AF95EC  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 80AF95F0  4B 57 CC 58 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AF95F4  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80AF95F8  60 00 00 08 */	ori r0, r0, 8
/* 80AF95FC  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80AF9600  80 1F 05 FC */	lwz r0, 0x5fc(r31)
/* 80AF9604  60 00 04 00 */	ori r0, r0, 0x400
/* 80AF9608  90 1F 05 FC */	stw r0, 0x5fc(r31)
/* 80AF960C  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 80AF9610  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AF9614  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AF9618  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AF961C  4B 57 D4 90 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AF9620  38 7F 07 A8 */	addi r3, r31, 0x7a8
/* 80AF9624  3C 80 80 B0 */	lis r4, m__16daNpcThe_Param_c@ha
/* 80AF9628  38 84 BE 0C */	addi r4, r4, m__16daNpcThe_Param_c@l
/* 80AF962C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80AF9630  FC 00 00 1E */	fctiwz f0, f0
/* 80AF9634  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80AF9638  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80AF963C  38 A0 00 00 */	li r5, 0
/* 80AF9640  7F E6 FB 78 */	mr r6, r31
/* 80AF9644  4B 58 A2 1C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AF9648  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80AF964C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 80AF9650  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 80AF9654  4B 58 B2 60 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AF9658  38 1F 07 A8 */	addi r0, r31, 0x7a8
/* 80AF965C  90 1F 0C D8 */	stw r0, 0xcd8(r31)
/* 80AF9660  38 00 00 00 */	li r0, 0
/* 80AF9664  90 1F 0C BC */	stw r0, 0xcbc(r31)
/* 80AF9668  90 1F 0C AC */	stw r0, 0xcac(r31)
/* 80AF966C  38 7F 0D B8 */	addi r3, r31, 0xdb8
/* 80AF9670  3C 80 80 B0 */	lis r4, m__16daNpcThe_Param_c@ha
/* 80AF9674  38 84 BE 0C */	addi r4, r4, m__16daNpcThe_Param_c@l
/* 80AF9678  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80AF967C  4B 77 5B 7C */	b SetH__8cM3dGCylFf
/* 80AF9680  38 7F 0D B8 */	addi r3, r31, 0xdb8
/* 80AF9684  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 80AF9688  4B 77 5B 78 */	b SetR__8cM3dGCylFf
/* 80AF968C  80 1F 06 AC */	lwz r0, 0x6ac(r31)
/* 80AF9690  90 1F 0A 44 */	stw r0, 0xa44(r31)
/* 80AF9694  80 1F 06 B0 */	lwz r0, 0x6b0(r31)
/* 80AF9698  90 1F 0A 48 */	stw r0, 0xa48(r31)
/* 80AF969C  80 1F 06 B4 */	lwz r0, 0x6b4(r31)
/* 80AF96A0  90 1F 0A 4C */	stw r0, 0xa4c(r31)
/* 80AF96A4  88 1F 06 B8 */	lbz r0, 0x6b8(r31)
/* 80AF96A8  98 1F 0A 50 */	stb r0, 0xa50(r31)
/* 80AF96AC  A0 1F 06 C0 */	lhz r0, 0x6c0(r31)
/* 80AF96B0  B0 1F 0A 58 */	sth r0, 0xa58(r31)
/* 80AF96B4  A0 1F 06 C2 */	lhz r0, 0x6c2(r31)
/* 80AF96B8  B0 1F 0A 5A */	sth r0, 0xa5a(r31)
/* 80AF96BC  80 1F 06 C4 */	lwz r0, 0x6c4(r31)
/* 80AF96C0  90 1F 0A 5C */	stw r0, 0xa5c(r31)
/* 80AF96C4  80 1F 06 C8 */	lwz r0, 0x6c8(r31)
/* 80AF96C8  90 1F 0A 60 */	stw r0, 0xa60(r31)
/* 80AF96CC  C0 1F 06 D0 */	lfs f0, 0x6d0(r31)
/* 80AF96D0  D0 1F 0A 68 */	stfs f0, 0xa68(r31)
/* 80AF96D4  C0 1F 06 D4 */	lfs f0, 0x6d4(r31)
/* 80AF96D8  D0 1F 0A 6C */	stfs f0, 0xa6c(r31)
/* 80AF96DC  C0 1F 06 D8 */	lfs f0, 0x6d8(r31)
/* 80AF96E0  D0 1F 0A 70 */	stfs f0, 0xa70(r31)
/* 80AF96E4  80 1F 06 DC */	lwz r0, 0x6dc(r31)
/* 80AF96E8  90 1F 0A 74 */	stw r0, 0xa74(r31)
/* 80AF96EC  C0 1F 06 E0 */	lfs f0, 0x6e0(r31)
/* 80AF96F0  D0 1F 0A 78 */	stfs f0, 0xa78(r31)
/* 80AF96F4  80 1F 06 E4 */	lwz r0, 0x6e4(r31)
/* 80AF96F8  90 1F 0A 7C */	stw r0, 0xa7c(r31)
/* 80AF96FC  C0 1F 06 68 */	lfs f0, 0x668(r31)
/* 80AF9700  D0 1F 09 80 */	stfs f0, 0x980(r31)
/* 80AF9704  7F E3 FB 78 */	mr r3, r31
/* 80AF9708  4B 65 96 7C */	b setEnvTevColor__8daNpcF_cFv
/* 80AF970C  7F E3 FB 78 */	mr r3, r31
/* 80AF9710  4B 65 96 D0 */	b setRoomNo__8daNpcF_cFv
/* 80AF9714  7F E3 FB 78 */	mr r3, r31
/* 80AF9718  48 00 00 31 */	bl reset__10daNpcThe_cFv
/* 80AF971C  7F E3 FB 78 */	mr r3, r31
/* 80AF9720  4B 65 88 F4 */	b execute__8daNpcF_cFv
/* 80AF9724  38 60 00 04 */	li r3, 4
/* 80AF9728  48 00 00 08 */	b lbl_80AF9730
lbl_80AF972C:
/* 80AF972C  38 60 00 00 */	li r3, 0
lbl_80AF9730:
/* 80AF9730  39 61 00 40 */	addi r11, r1, 0x40
/* 80AF9734  4B 86 8A E4 */	b _restgpr_25
/* 80AF9738  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AF973C  7C 08 03 A6 */	mtlr r0
/* 80AF9740  38 21 00 40 */	addi r1, r1, 0x40
/* 80AF9744  4E 80 00 20 */	blr 
