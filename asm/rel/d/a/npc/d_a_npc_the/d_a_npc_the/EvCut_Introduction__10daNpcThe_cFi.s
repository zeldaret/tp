lbl_80AF9244:
/* 80AF9244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF9248  7C 08 02 A6 */	mflr r0
/* 80AF924C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF9250  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF9254  4B 86 8F 84 */	b _savegpr_28
/* 80AF9258  7C 7C 1B 78 */	mr r28, r3
/* 80AF925C  7C 9D 23 78 */	mr r29, r4
/* 80AF9260  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AF9264  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AF9268  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80AF926C  7F C3 F3 78 */	mr r3, r30
/* 80AF9270  4B 54 EC EC */	b getMyNowCutName__16dEvent_manager_cFi
/* 80AF9274  7C 7F 1B 78 */	mr r31, r3
/* 80AF9278  7F C3 F3 78 */	mr r3, r30
/* 80AF927C  7F A4 EB 78 */	mr r4, r29
/* 80AF9280  4B 54 EA CC */	b getIsAddvance__16dEvent_manager_cFi
/* 80AF9284  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9288  41 82 00 4C */	beq lbl_80AF92D4
/* 80AF928C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80AF9290  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303036@ha */
/* 80AF9294  38 03 30 36 */	addi r0, r3, 0x3036 /* 0x30303036@l */
/* 80AF9298  7C 04 00 00 */	cmpw r4, r0
/* 80AF929C  40 80 00 38 */	bge lbl_80AF92D4
/* 80AF92A0  38 03 30 31 */	addi r0, r3, 0x3031
/* 80AF92A4  7C 04 00 00 */	cmpw r4, r0
/* 80AF92A8  40 80 00 08 */	bge lbl_80AF92B0
/* 80AF92AC  48 00 00 28 */	b lbl_80AF92D4
lbl_80AF92B0:
/* 80AF92B0  7F 83 E3 78 */	mr r3, r28
/* 80AF92B4  80 9C 0E 14 */	lwz r4, 0xe14(r28)
/* 80AF92B8  38 A0 00 00 */	li r5, 0
/* 80AF92BC  4B 65 AA 60 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AF92C0  A8 1C 0E 18 */	lha r0, 0xe18(r28)
/* 80AF92C4  2C 00 00 02 */	cmpwi r0, 2
/* 80AF92C8  41 82 00 0C */	beq lbl_80AF92D4
/* 80AF92CC  38 00 00 02 */	li r0, 2
/* 80AF92D0  B0 1C 0E 18 */	sth r0, 0xe18(r28)
lbl_80AF92D4:
/* 80AF92D4  80 9F 00 00 */	lwz r4, 0(r31)
/* 80AF92D8  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303036@ha */
/* 80AF92DC  38 03 30 36 */	addi r0, r3, 0x3036 /* 0x30303036@l */
/* 80AF92E0  7C 04 00 00 */	cmpw r4, r0
/* 80AF92E4  40 80 00 38 */	bge lbl_80AF931C
/* 80AF92E8  38 03 30 31 */	addi r0, r3, 0x3031
/* 80AF92EC  7C 04 00 00 */	cmpw r4, r0
/* 80AF92F0  40 80 00 08 */	bge lbl_80AF92F8
/* 80AF92F4  48 00 00 28 */	b lbl_80AF931C
lbl_80AF92F8:
/* 80AF92F8  7F 83 E3 78 */	mr r3, r28
/* 80AF92FC  38 80 00 00 */	li r4, 0
/* 80AF9300  38 A0 00 01 */	li r5, 1
/* 80AF9304  38 C0 00 00 */	li r6, 0
/* 80AF9308  4B 65 AA 7C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AF930C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9310  41 82 00 0C */	beq lbl_80AF931C
/* 80AF9314  38 60 00 01 */	li r3, 1
/* 80AF9318  48 00 00 08 */	b lbl_80AF9320
lbl_80AF931C:
/* 80AF931C  38 60 00 00 */	li r3, 0
lbl_80AF9320:
/* 80AF9320  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF9324  4B 86 8F 00 */	b _restgpr_28
/* 80AF9328  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF932C  7C 08 03 A6 */	mtlr r0
/* 80AF9330  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF9334  4E 80 00 20 */	blr 
