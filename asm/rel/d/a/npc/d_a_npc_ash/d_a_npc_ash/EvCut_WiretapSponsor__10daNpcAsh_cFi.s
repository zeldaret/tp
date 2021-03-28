lbl_8095B83C:
/* 8095B83C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8095B840  7C 08 02 A6 */	mflr r0
/* 8095B844  90 01 00 44 */	stw r0, 0x44(r1)
/* 8095B848  39 61 00 40 */	addi r11, r1, 0x40
/* 8095B84C  4B A0 69 88 */	b _savegpr_27
/* 8095B850  7C 7D 1B 78 */	mr r29, r3
/* 8095B854  7C 9B 23 78 */	mr r27, r4
/* 8095B858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095B85C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 8095B860  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 8095B864  3C 60 80 96 */	lis r3, lit_5295@ha
/* 8095B868  38 83 D8 D0 */	addi r4, r3, lit_5295@l
/* 8095B86C  80 64 00 00 */	lwz r3, 0(r4)
/* 8095B870  80 04 00 04 */	lwz r0, 4(r4)
/* 8095B874  90 61 00 10 */	stw r3, 0x10(r1)
/* 8095B878  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095B87C  80 64 00 08 */	lwz r3, 8(r4)
/* 8095B880  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8095B884  90 61 00 18 */	stw r3, 0x18(r1)
/* 8095B888  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095B88C  38 7D 0C 90 */	addi r3, r29, 0xc90
/* 8095B890  4B 7F 4E 5C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8095B894  90 61 00 10 */	stw r3, 0x10(r1)
/* 8095B898  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8095B89C  38 7D 0C 88 */	addi r3, r29, 0xc88
/* 8095B8A0  4B 7F 4E 4C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8095B8A4  90 61 00 18 */	stw r3, 0x18(r1)
/* 8095B8A8  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 8095B8AC  4B 7F 4E 40 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8095B8B0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8095B8B4  7F 83 E3 78 */	mr r3, r28
/* 8095B8B8  7F 64 DB 78 */	mr r4, r27
/* 8095B8BC  4B 6E C6 A0 */	b getMyNowCutName__16dEvent_manager_cFi
/* 8095B8C0  7C 7F 1B 78 */	mr r31, r3
/* 8095B8C4  7F 83 E3 78 */	mr r3, r28
/* 8095B8C8  7F 64 DB 78 */	mr r4, r27
/* 8095B8CC  4B 6E C4 80 */	b getIsAddvance__16dEvent_manager_cFi
/* 8095B8D0  2C 03 00 00 */	cmpwi r3, 0
/* 8095B8D4  41 82 00 70 */	beq lbl_8095B944
/* 8095B8D8  80 9F 00 00 */	lwz r4, 0(r31)
/* 8095B8DC  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 8095B8E0  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 8095B8E4  7C 04 00 00 */	cmpw r4, r0
/* 8095B8E8  41 82 00 08 */	beq lbl_8095B8F0
/* 8095B8EC  48 00 00 58 */	b lbl_8095B944
lbl_8095B8F0:
/* 8095B8F0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8095B8F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8095B8F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8095B8FC  90 03 5E F0 */	stw r0, 0x5ef0(r3)
/* 8095B900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095B904  90 03 5E F4 */	stw r0, 0x5ef4(r3)
/* 8095B908  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8095B90C  90 03 5E F8 */	stw r0, 0x5ef8(r3)
/* 8095B910  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8095B914  90 03 5E FC */	stw r0, 0x5efc(r3)
/* 8095B918  38 00 00 00 */	li r0, 0
/* 8095B91C  90 03 5F 00 */	stw r0, 0x5f00(r3)
/* 8095B920  90 03 5F 04 */	stw r0, 0x5f04(r3)
/* 8095B924  90 03 5F 08 */	stw r0, 0x5f08(r3)
/* 8095B928  90 03 5F 0C */	stw r0, 0x5f0c(r3)
/* 8095B92C  90 03 5F 10 */	stw r0, 0x5f10(r3)
/* 8095B930  90 03 5F 14 */	stw r0, 0x5f14(r3)
/* 8095B934  7F A3 EB 78 */	mr r3, r29
/* 8095B938  A8 9D 0F 58 */	lha r4, 0xf58(r29)
/* 8095B93C  38 A1 00 10 */	addi r5, r1, 0x10
/* 8095B940  4B 7F 83 DC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_8095B944:
/* 8095B944  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 8095B948  7F A3 EB 78 */	mr r3, r29
/* 8095B94C  38 81 00 0C */	addi r4, r1, 0xc
/* 8095B950  38 A1 00 08 */	addi r5, r1, 8
/* 8095B954  7F A6 EB 78 */	mr r6, r29
/* 8095B958  38 E0 00 00 */	li r7, 0
/* 8095B95C  4B 7F 7D BC */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 8095B960  2C 03 00 00 */	cmpwi r3, 0
/* 8095B964  41 82 00 4C */	beq lbl_8095B9B0
/* 8095B968  7F A3 EB 78 */	mr r3, r29
/* 8095B96C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8095B970  3C A0 80 96 */	lis r5, lit_4976@ha
/* 8095B974  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)
/* 8095B978  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095B97C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095B980  7D 89 03 A6 */	mtctr r12
/* 8095B984  4E 80 04 21 */	bctrl 
/* 8095B988  7F A3 EB 78 */	mr r3, r29
/* 8095B98C  80 81 00 08 */	lwz r4, 8(r1)
/* 8095B990  3C A0 80 96 */	lis r5, lit_4976@ha
/* 8095B994  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)
/* 8095B998  38 A0 00 00 */	li r5, 0
/* 8095B99C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095B9A0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095B9A4  7D 89 03 A6 */	mtctr r12
/* 8095B9A8  4E 80 04 21 */	bctrl 
/* 8095B9AC  48 00 00 38 */	b lbl_8095B9E4
lbl_8095B9B0:
/* 8095B9B0  2C 1C 00 00 */	cmpwi r28, 0
/* 8095B9B4  41 82 00 30 */	beq lbl_8095B9E4
/* 8095B9B8  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 8095B9BC  2C 00 00 00 */	cmpwi r0, 0
/* 8095B9C0  40 82 00 24 */	bne lbl_8095B9E4
/* 8095B9C4  7F A3 EB 78 */	mr r3, r29
/* 8095B9C8  38 80 00 07 */	li r4, 7
/* 8095B9CC  3C A0 80 96 */	lis r5, lit_4976@ha
/* 8095B9D0  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)
/* 8095B9D4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095B9D8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095B9DC  7D 89 03 A6 */	mtctr r12
/* 8095B9E0  4E 80 04 21 */	bctrl 
lbl_8095B9E4:
/* 8095B9E4  80 9F 00 00 */	lwz r4, 0(r31)
/* 8095B9E8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303031@ha */
/* 8095B9EC  38 03 30 31 */	addi r0, r3, 0x3031 /* 0x30303031@l */
/* 8095B9F0  7C 04 00 00 */	cmpw r4, r0
/* 8095B9F4  41 82 00 08 */	beq lbl_8095B9FC
/* 8095B9F8  48 00 00 6C */	b lbl_8095BA64
lbl_8095B9FC:
/* 8095B9FC  7F A3 EB 78 */	mr r3, r29
/* 8095BA00  38 80 00 00 */	li r4, 0
/* 8095BA04  38 A0 00 01 */	li r5, 1
/* 8095BA08  38 C1 00 10 */	addi r6, r1, 0x10
/* 8095BA0C  4B 7F 83 78 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 8095BA10  2C 03 00 00 */	cmpwi r3, 0
/* 8095BA14  41 82 00 0C */	beq lbl_8095BA20
/* 8095BA18  38 60 00 01 */	li r3, 1
/* 8095BA1C  48 00 00 4C */	b lbl_8095BA68
lbl_8095BA20:
/* 8095BA20  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8095BA24  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8095BA28  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8095BA2C  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 8095BA30  4B 6E 78 BC */	b convPId__14dEvt_control_cFUi
/* 8095BA34  7C 03 E8 40 */	cmplw r3, r29
/* 8095BA38  40 82 00 08 */	bne lbl_8095BA40
/* 8095BA3C  38 60 00 00 */	li r3, 0
lbl_8095BA40:
/* 8095BA40  A8 1D 0F 5A */	lha r0, 0xf5a(r29)
/* 8095BA44  2C 00 00 05 */	cmpwi r0, 5
/* 8095BA48  40 82 00 10 */	bne lbl_8095BA58
/* 8095BA4C  80 1D 0C B0 */	lwz r0, 0xcb0(r29)
/* 8095BA50  7C 03 00 40 */	cmplw r3, r0
/* 8095BA54  41 82 00 10 */	beq lbl_8095BA64
lbl_8095BA58:
/* 8095BA58  38 00 00 05 */	li r0, 5
/* 8095BA5C  B0 1D 0F 5A */	sth r0, 0xf5a(r29)
/* 8095BA60  90 7D 0C B0 */	stw r3, 0xcb0(r29)
lbl_8095BA64:
/* 8095BA64  38 60 00 00 */	li r3, 0
lbl_8095BA68:
/* 8095BA68  39 61 00 40 */	addi r11, r1, 0x40
/* 8095BA6C  4B A0 67 B4 */	b _restgpr_27
/* 8095BA70  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8095BA74  7C 08 03 A6 */	mtlr r0
/* 8095BA78  38 21 00 40 */	addi r1, r1, 0x40
/* 8095BA7C  4E 80 00 20 */	blr 
