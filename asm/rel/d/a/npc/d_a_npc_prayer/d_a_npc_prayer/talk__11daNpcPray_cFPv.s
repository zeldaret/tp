lbl_80AB4740:
/* 80AB4740  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AB4744  7C 08 02 A6 */	mflr r0
/* 80AB4748  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AB474C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB4750  4B 8A DA 89 */	bl _savegpr_28
/* 80AB4754  7C 7D 1B 78 */	mr r29, r3
/* 80AB4758  3C 80 80 AB */	lis r4, cNullVec__6Z2Calc@ha /* 0x80AB5984@ha */
/* 80AB475C  3B E4 59 84 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80AB5984@l */
/* 80AB4760  3B C0 00 00 */	li r30, 0
/* 80AB4764  A0 03 0E 0C */	lhz r0, 0xe0c(r3)
/* 80AB4768  2C 00 00 02 */	cmpwi r0, 2
/* 80AB476C  41 82 00 50 */	beq lbl_80AB47BC
/* 80AB4770  40 80 00 10 */	bge lbl_80AB4780
/* 80AB4774  2C 00 00 00 */	cmpwi r0, 0
/* 80AB4778  41 82 00 14 */	beq lbl_80AB478C
/* 80AB477C  48 00 01 F4 */	b lbl_80AB4970
lbl_80AB4780:
/* 80AB4780  2C 00 00 04 */	cmpwi r0, 4
/* 80AB4784  40 80 01 EC */	bge lbl_80AB4970
/* 80AB4788  48 00 01 CC */	b lbl_80AB4954
lbl_80AB478C:
/* 80AB478C  80 9D 0E 04 */	lwz r4, 0xe04(r29)
/* 80AB4790  38 A0 00 00 */	li r5, 0
/* 80AB4794  4B 69 F5 89 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AB4798  38 00 00 00 */	li r0, 0
/* 80AB479C  90 1D 09 50 */	stw r0, 0x950(r29)
/* 80AB47A0  98 1D 0E 0E */	stb r0, 0xe0e(r29)
/* 80AB47A4  7F A3 EB 78 */	mr r3, r29
/* 80AB47A8  38 80 00 03 */	li r4, 3
/* 80AB47AC  4B FF F8 51 */	bl setLookMode__11daNpcPray_cFi
/* 80AB47B0  38 00 00 02 */	li r0, 2
/* 80AB47B4  B0 1D 0E 0C */	sth r0, 0xe0c(r29)
/* 80AB47B8  48 00 01 B8 */	b lbl_80AB4970
lbl_80AB47BC:
/* 80AB47BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB47C0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB47C4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AB47C8  4B 56 5F 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AB47CC  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80AB47D0  7C 60 07 34 */	extsh r0, r3
/* 80AB47D4  7C 04 00 00 */	cmpw r4, r0
/* 80AB47D8  40 82 01 28 */	bne lbl_80AB4900
/* 80AB47DC  7F A3 EB 78 */	mr r3, r29
/* 80AB47E0  38 80 00 00 */	li r4, 0
/* 80AB47E4  38 A0 00 01 */	li r5, 1
/* 80AB47E8  38 C0 00 00 */	li r6, 0
/* 80AB47EC  4B 69 F5 99 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AB47F0  2C 03 00 00 */	cmpwi r3, 0
/* 80AB47F4  41 82 00 C4 */	beq lbl_80AB48B8
/* 80AB47F8  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80AB47FC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AB4800  4B 69 BE BD */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AB4804  38 00 00 00 */	li r0, 0
/* 80AB4808  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB480C  38 7D 09 F8 */	addi r3, r29, 0x9f8
/* 80AB4810  38 81 00 10 */	addi r4, r1, 0x10
/* 80AB4814  4B 79 5D 15 */	bl getEventId__10dMsgFlow_cFPi
/* 80AB4818  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80AB481C  28 00 00 14 */	cmplwi r0, 0x14
/* 80AB4820  40 82 00 6C */	bne lbl_80AB488C
/* 80AB4824  38 60 01 26 */	li r3, 0x126
/* 80AB4828  4B 6A 0E 4D */	bl daNpcF_onEvtBit__FUl
/* 80AB482C  38 00 00 01 */	li r0, 1
/* 80AB4830  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80AB4834  7F A3 EB 78 */	mr r3, r29
/* 80AB4838  3C 80 80 AB */	lis r4, d_a_npc_prayer__stringBase0@ha /* 0x80AB5964@ha */
/* 80AB483C  38 84 59 64 */	addi r4, r4, d_a_npc_prayer__stringBase0@l /* 0x80AB5964@l */
/* 80AB4840  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80AB4844  54 00 10 3A */	slwi r0, r0, 2
/* 80AB4848  38 BF 00 70 */	addi r5, r31, 0x70
/* 80AB484C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AB4850  38 C0 00 02 */	li r6, 2
/* 80AB4854  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80AB4858  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80AB485C  4B 69 F0 F9 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80AB4860  80 7F 00 D0 */	lwz r3, 0xd0(r31)
/* 80AB4864  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 80AB4868  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AB486C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB4870  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80AB4874  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AB4878  7F A3 EB 78 */	mr r3, r29
/* 80AB487C  38 81 00 20 */	addi r4, r1, 0x20
/* 80AB4880  4B FF F6 D5 */	bl setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b
/* 80AB4884  38 60 00 01 */	li r3, 1
/* 80AB4888  48 00 00 EC */	b lbl_80AB4974
lbl_80AB488C:
/* 80AB488C  80 7F 00 DC */	lwz r3, 0xdc(r31)
/* 80AB4890  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80AB4894  90 61 00 14 */	stw r3, 0x14(r1)
/* 80AB4898  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AB489C  80 1F 00 E4 */	lwz r0, 0xe4(r31)
/* 80AB48A0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AB48A4  7F A3 EB 78 */	mr r3, r29
/* 80AB48A8  38 81 00 14 */	addi r4, r1, 0x14
/* 80AB48AC  4B FF F6 A9 */	bl setAction__11daNpcPray_cFM11daNpcPray_cFPCvPvPv_b
/* 80AB48B0  3B C0 00 01 */	li r30, 1
/* 80AB48B4  48 00 00 BC */	b lbl_80AB4970
lbl_80AB48B8:
/* 80AB48B8  7F A3 EB 78 */	mr r3, r29
/* 80AB48BC  38 81 00 0C */	addi r4, r1, 0xc
/* 80AB48C0  38 A1 00 08 */	addi r5, r1, 8
/* 80AB48C4  7F A6 EB 78 */	mr r6, r29
/* 80AB48C8  38 E0 00 00 */	li r7, 0
/* 80AB48CC  4B 69 EE 4D */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80AB48D0  2C 03 00 00 */	cmpwi r3, 0
/* 80AB48D4  41 82 00 9C */	beq lbl_80AB4970
/* 80AB48D8  7F A3 EB 78 */	mr r3, r29
/* 80AB48DC  80 81 00 08 */	lwz r4, 8(r1)
/* 80AB48E0  3C A0 80 AB */	lis r5, lit_4222@ha /* 0x80AB588C@ha */
/* 80AB48E4  C0 25 58 8C */	lfs f1, lit_4222@l(r5)  /* 0x80AB588C@l */
/* 80AB48E8  38 A0 00 00 */	li r5, 0
/* 80AB48EC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AB48F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AB48F4  7D 89 03 A6 */	mtctr r12
/* 80AB48F8  4E 80 04 21 */	bctrl 
/* 80AB48FC  48 00 00 74 */	b lbl_80AB4970
lbl_80AB4900:
/* 80AB4900  7F A3 EB 78 */	mr r3, r29
/* 80AB4904  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AB4908  4B 56 5E 09 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AB490C  7C 64 1B 78 */	mr r4, r3
/* 80AB4910  7F A3 EB 78 */	mr r3, r29
/* 80AB4914  38 A0 00 01 */	li r5, 1
/* 80AB4918  4B FF F8 E9 */	bl step__11daNpcPray_cFsi
/* 80AB491C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AB4920  41 82 00 50 */	beq lbl_80AB4970
/* 80AB4924  7F A3 EB 78 */	mr r3, r29
/* 80AB4928  38 80 00 02 */	li r4, 2
/* 80AB492C  3C A0 80 AB */	lis r5, lit_4222@ha /* 0x80AB588C@ha */
/* 80AB4930  C0 25 58 8C */	lfs f1, lit_4222@l(r5)  /* 0x80AB588C@l */
/* 80AB4934  38 A0 00 00 */	li r5, 0
/* 80AB4938  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AB493C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AB4940  7D 89 03 A6 */	mtctr r12
/* 80AB4944  4E 80 04 21 */	bctrl 
/* 80AB4948  38 00 00 00 */	li r0, 0
/* 80AB494C  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80AB4950  48 00 00 20 */	b lbl_80AB4970
lbl_80AB4954:
/* 80AB4954  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 80AB4958  28 00 00 00 */	cmplwi r0, 0
/* 80AB495C  40 82 00 14 */	bne lbl_80AB4970
/* 80AB4960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB4964  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB4968  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AB496C  4B 58 DA FD */	bl reset__14dEvt_control_cFv
lbl_80AB4970:
/* 80AB4970  7F C3 F3 78 */	mr r3, r30
lbl_80AB4974:
/* 80AB4974  39 61 00 40 */	addi r11, r1, 0x40
/* 80AB4978  4B 8A D8 AD */	bl _restgpr_28
/* 80AB497C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AB4980  7C 08 03 A6 */	mtlr r0
/* 80AB4984  38 21 00 40 */	addi r1, r1, 0x40
/* 80AB4988  4E 80 00 20 */	blr 
