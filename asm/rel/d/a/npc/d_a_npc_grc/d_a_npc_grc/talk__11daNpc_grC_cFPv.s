lbl_809CE7C4:
/* 809CE7C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809CE7C8  7C 08 02 A6 */	mflr r0
/* 809CE7CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CE7D0  39 61 00 20 */	addi r11, r1, 0x20
/* 809CE7D4  4B 99 3A 04 */	b _savegpr_28
/* 809CE7D8  7C 7D 1B 78 */	mr r29, r3
/* 809CE7DC  3B E0 00 00 */	li r31, 0
/* 809CE7E0  3B C0 00 00 */	li r30, 0
/* 809CE7E4  38 00 00 00 */	li r0, 0
/* 809CE7E8  90 01 00 08 */	stw r0, 8(r1)
/* 809CE7EC  A0 03 0E 46 */	lhz r0, 0xe46(r3)
/* 809CE7F0  2C 00 00 02 */	cmpwi r0, 2
/* 809CE7F4  41 82 00 78 */	beq lbl_809CE86C
/* 809CE7F8  40 80 02 58 */	bge lbl_809CEA50
/* 809CE7FC  2C 00 00 00 */	cmpwi r0, 0
/* 809CE800  41 82 00 0C */	beq lbl_809CE80C
/* 809CE804  48 00 02 4C */	b lbl_809CEA50
/* 809CE808  48 00 02 48 */	b lbl_809CEA50
lbl_809CE80C:
/* 809CE80C  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809CE810  28 00 00 00 */	cmplwi r0, 0
/* 809CE814  40 82 02 3C */	bne lbl_809CEA50
/* 809CE818  80 9D 0E 40 */	lwz r4, 0xe40(r29)
/* 809CE81C  38 A0 00 00 */	li r5, 0
/* 809CE820  4B 78 54 FC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809CE824  38 00 00 00 */	li r0, 0
/* 809CE828  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809CE82C  88 1D 0E 48 */	lbz r0, 0xe48(r29)
/* 809CE830  28 00 00 04 */	cmplwi r0, 4
/* 809CE834  41 82 00 0C */	beq lbl_809CE840
/* 809CE838  28 00 00 05 */	cmplwi r0, 5
/* 809CE83C  40 82 00 20 */	bne lbl_809CE85C
lbl_809CE840:
/* 809CE840  88 1D 0E 51 */	lbz r0, 0xe51(r29)
/* 809CE844  28 00 00 00 */	cmplwi r0, 0
/* 809CE848  40 82 00 14 */	bne lbl_809CE85C
/* 809CE84C  38 60 00 0B */	li r3, 0xb
/* 809CE850  4B 78 6E E4 */	b daNpcF_offTmpBit__FUl
/* 809CE854  38 60 00 0C */	li r3, 0xc
/* 809CE858  4B 78 6E DC */	b daNpcF_offTmpBit__FUl
lbl_809CE85C:
/* 809CE85C  38 00 00 00 */	li r0, 0
/* 809CE860  98 1D 0E 51 */	stb r0, 0xe51(r29)
/* 809CE864  38 00 00 02 */	li r0, 2
/* 809CE868  B0 1D 0E 46 */	sth r0, 0xe46(r29)
lbl_809CE86C:
/* 809CE86C  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 809CE870  28 00 00 00 */	cmplwi r0, 0
/* 809CE874  40 82 00 10 */	bne lbl_809CE884
/* 809CE878  88 1D 09 F4 */	lbz r0, 0x9f4(r29)
/* 809CE87C  28 00 00 00 */	cmplwi r0, 0
/* 809CE880  41 82 00 0C */	beq lbl_809CE88C
lbl_809CE884:
/* 809CE884  3B C0 00 01 */	li r30, 1
/* 809CE888  48 00 00 C0 */	b lbl_809CE948
lbl_809CE88C:
/* 809CE88C  7F A3 EB 78 */	mr r3, r29
/* 809CE890  38 80 00 03 */	li r4, 3
/* 809CE894  4B FF F4 BD */	bl setLookMode__11daNpc_grC_cFi
/* 809CE898  38 7D 0C B0 */	addi r3, r29, 0xcb0
/* 809CE89C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809CE8A0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 809CE8A4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809CE8A8  4B 78 1E 14 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809CE8AC  7F A3 EB 78 */	mr r3, r29
/* 809CE8B0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809CE8B4  4B 64 BE 5C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809CE8B8  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 809CE8BC  7C 60 07 34 */	extsh r0, r3
/* 809CE8C0  7C 04 00 00 */	cmpw r4, r0
/* 809CE8C4  40 82 00 0C */	bne lbl_809CE8D0
/* 809CE8C8  3B C0 00 01 */	li r30, 1
/* 809CE8CC  48 00 00 7C */	b lbl_809CE948
lbl_809CE8D0:
/* 809CE8D0  7F A3 EB 78 */	mr r3, r29
/* 809CE8D4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809CE8D8  4B 64 BE 38 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809CE8DC  7C 64 1B 78 */	mr r4, r3
/* 809CE8E0  7F A3 EB 78 */	mr r3, r29
/* 809CE8E4  38 A0 00 0E */	li r5, 0xe
/* 809CE8E8  38 C0 00 08 */	li r6, 8
/* 809CE8EC  38 E0 00 0F */	li r7, 0xf
/* 809CE8F0  4B 78 57 B4 */	b step__8daNpcF_cFsiii
/* 809CE8F4  2C 03 00 00 */	cmpwi r3, 0
/* 809CE8F8  41 82 00 50 */	beq lbl_809CE948
/* 809CE8FC  7F A3 EB 78 */	mr r3, r29
/* 809CE900  38 80 00 0E */	li r4, 0xe
/* 809CE904  3C A0 80 9D */	lis r5, lit_5043@ha
/* 809CE908  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)
/* 809CE90C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809CE910  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809CE914  7D 89 03 A6 */	mtctr r12
/* 809CE918  4E 80 04 21 */	bctrl 
/* 809CE91C  7F A3 EB 78 */	mr r3, r29
/* 809CE920  38 80 00 00 */	li r4, 0
/* 809CE924  3C A0 80 9D */	lis r5, lit_5043@ha
/* 809CE928  C0 25 F5 D4 */	lfs f1, lit_5043@l(r5)
/* 809CE92C  38 A0 00 00 */	li r5, 0
/* 809CE930  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809CE934  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809CE938  7D 89 03 A6 */	mtctr r12
/* 809CE93C  4E 80 04 21 */	bctrl 
/* 809CE940  38 00 00 00 */	li r0, 0
/* 809CE944  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_809CE948:
/* 809CE948  2C 1E 00 00 */	cmpwi r30, 0
/* 809CE94C  41 82 00 D0 */	beq lbl_809CEA1C
/* 809CE950  7F A3 EB 78 */	mr r3, r29
/* 809CE954  38 80 00 00 */	li r4, 0
/* 809CE958  38 A0 00 01 */	li r5, 1
/* 809CE95C  38 C0 00 00 */	li r6, 0
/* 809CE960  4B 78 54 24 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809CE964  2C 03 00 00 */	cmpwi r3, 0
/* 809CE968  41 82 00 B4 */	beq lbl_809CEA1C
/* 809CE96C  3B E0 00 01 */	li r31, 1
/* 809CE970  38 7D 09 F8 */	addi r3, r29, 0x9f8
/* 809CE974  38 81 00 08 */	addi r4, r1, 8
/* 809CE978  4B 87 BB B0 */	b getEventId__10dMsgFlow_cFPi
/* 809CE97C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 809CE980  28 00 00 01 */	cmplwi r0, 1
/* 809CE984  40 82 00 98 */	bne lbl_809CEA1C
/* 809CE988  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 809CE98C  80 81 00 08 */	lwz r4, 8(r1)
/* 809CE990  38 A0 00 00 */	li r5, 0
/* 809CE994  38 C0 FF FF */	li r6, -1
/* 809CE998  38 E0 FF FF */	li r7, -1
/* 809CE99C  39 00 00 00 */	li r8, 0
/* 809CE9A0  39 20 00 00 */	li r9, 0
/* 809CE9A4  4B 64 D2 44 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 809CE9A8  90 7D 0E 4C */	stw r3, 0xe4c(r29)
/* 809CE9AC  80 7D 0E 4C */	lwz r3, 0xe4c(r29)
/* 809CE9B0  3C 03 00 01 */	addis r0, r3, 1
/* 809CE9B4  28 00 FF FF */	cmplwi r0, 0xffff
/* 809CE9B8  41 82 00 64 */	beq lbl_809CEA1C
/* 809CE9BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809CE9C0  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 809CE9C4  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 809CE9C8  7F A4 EB 78 */	mr r4, r29
/* 809CE9CC  3C A0 80 9D */	lis r5, stringBase0@ha
/* 809CE9D0  38 A5 F7 F0 */	addi r5, r5, stringBase0@l
/* 809CE9D4  38 A5 00 1C */	addi r5, r5, 0x1c
/* 809CE9D8  38 C0 00 FF */	li r6, 0xff
/* 809CE9DC  4B 67 8D 7C */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 809CE9E0  7C 7C 1B 78 */	mr r28, r3
/* 809CE9E4  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 809CE9E8  7F A4 EB 78 */	mr r4, r29
/* 809CE9EC  4B 67 3B 2C */	b reset__14dEvt_control_cFPv
/* 809CE9F0  7F A3 EB 78 */	mr r3, r29
/* 809CE9F4  7F 84 E3 78 */	mr r4, r28
/* 809CE9F8  38 A0 00 01 */	li r5, 1
/* 809CE9FC  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 809CEA00  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 809CEA04  4B 64 CB E0 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 809CEA08  38 00 00 01 */	li r0, 1
/* 809CEA0C  98 1D 09 EC */	stb r0, 0x9ec(r29)
/* 809CEA10  3B E0 00 01 */	li r31, 1
/* 809CEA14  98 1D 09 ED */	stb r0, 0x9ed(r29)
/* 809CEA18  98 1D 0E 51 */	stb r0, 0xe51(r29)
lbl_809CEA1C:
/* 809CEA1C  2C 1F 00 00 */	cmpwi r31, 0
/* 809CEA20  41 82 00 30 */	beq lbl_809CEA50
/* 809CEA24  38 00 00 03 */	li r0, 3
/* 809CEA28  B0 1D 0E 46 */	sth r0, 0xe46(r29)
/* 809CEA2C  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 809CEA30  28 00 00 00 */	cmplwi r0, 0
/* 809CEA34  40 82 00 14 */	bne lbl_809CEA48
/* 809CEA38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809CEA3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809CEA40  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809CEA44  4B 67 3A 24 */	b reset__14dEvt_control_cFv
lbl_809CEA48:
/* 809CEA48  38 00 00 00 */	li r0, 0
/* 809CEA4C  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_809CEA50:
/* 809CEA50  7F E3 FB 78 */	mr r3, r31
/* 809CEA54  39 61 00 20 */	addi r11, r1, 0x20
/* 809CEA58  4B 99 37 CC */	b _restgpr_28
/* 809CEA5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809CEA60  7C 08 03 A6 */	mtlr r0
/* 809CEA64  38 21 00 20 */	addi r1, r1, 0x20
/* 809CEA68  4E 80 00 20 */	blr 
