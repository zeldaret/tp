lbl_80947030:
/* 80947030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80947034  7C 08 02 A6 */	mflr r0
/* 80947038  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094703C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80947040  7C 7F 1B 78 */	mr r31, r3
/* 80947044  38 60 00 00 */	li r3, 0
/* 80947048  4B 8F 17 E4 */	b dMsgObject_setTotalPayment__FUs
/* 8094704C  38 60 00 00 */	li r3, 0
/* 80947050  4B 8F 16 78 */	b dMsgObject_setTotalPrice__FUs
/* 80947054  4B 8F 17 70 */	b dMsgObject_getTotalPayment__Fv
/* 80947058  B0 7F 09 22 */	sth r3, 0x922(r31)
/* 8094705C  4B 8F 16 04 */	b dMsgObject_getTotalPrice__Fv
/* 80947060  B0 7F 09 20 */	sth r3, 0x920(r31)
/* 80947064  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80947068  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8094706C  80 83 5D BC */	lwz r4, 0x5dbc(r3)
/* 80947070  38 00 00 00 */	li r0, 0
/* 80947074  B0 04 01 7A */	sth r0, 0x17a(r4)
/* 80947078  80 63 5D BC */	lwz r3, 0x5dbc(r3)
/* 8094707C  B0 03 01 7C */	sth r0, 0x17c(r3)
/* 80947080  88 1F 09 32 */	lbz r0, 0x932(r31)
/* 80947084  2C 00 00 01 */	cmpwi r0, 1
/* 80947088  41 82 00 30 */	beq lbl_809470B8
/* 8094708C  40 80 00 10 */	bge lbl_8094709C
/* 80947090  2C 00 00 00 */	cmpwi r0, 0
/* 80947094  40 80 00 14 */	bge lbl_809470A8
/* 80947098  48 00 00 44 */	b lbl_809470DC
lbl_8094709C:
/* 8094709C  2C 00 00 03 */	cmpwi r0, 3
/* 809470A0  40 80 00 3C */	bge lbl_809470DC
/* 809470A4  48 00 00 28 */	b lbl_809470CC
lbl_809470A8:
/* 809470A8  7F E3 FB 78 */	mr r3, r31
/* 809470AC  48 00 2B 61 */	bl getFlowNodeNum__8daMyna_cFv
/* 809470B0  B0 7F 09 1C */	sth r3, 0x91c(r31)
/* 809470B4  48 00 00 28 */	b lbl_809470DC
lbl_809470B8:
/* 809470B8  7F E3 FB 78 */	mr r3, r31
/* 809470BC  48 00 2B 51 */	bl getFlowNodeNum__8daMyna_cFv
/* 809470C0  38 03 00 01 */	addi r0, r3, 1
/* 809470C4  B0 1F 09 1C */	sth r0, 0x91c(r31)
/* 809470C8  48 00 00 14 */	b lbl_809470DC
lbl_809470CC:
/* 809470CC  7F E3 FB 78 */	mr r3, r31
/* 809470D0  48 00 2B 3D */	bl getFlowNodeNum__8daMyna_cFv
/* 809470D4  38 03 00 02 */	addi r0, r3, 2
/* 809470D8  B0 1F 09 1C */	sth r0, 0x91c(r31)
lbl_809470DC:
/* 809470DC  7F E3 FB 78 */	mr r3, r31
/* 809470E0  38 80 00 09 */	li r4, 9
/* 809470E4  3C A0 80 95 */	lis r5, lit_3926@ha
/* 809470E8  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)
/* 809470EC  48 00 2F 69 */	bl setAnimeType__8daMyna_cFUcf
/* 809470F0  38 7F 06 20 */	addi r3, r31, 0x620
/* 809470F4  7F E4 FB 78 */	mr r4, r31
/* 809470F8  A0 BF 09 1C */	lhz r5, 0x91c(r31)
/* 809470FC  38 C0 00 00 */	li r6, 0
/* 80947100  38 E0 00 00 */	li r7, 0
/* 80947104  4B 90 2E 8C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80947108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8094710C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80947110  7C 08 03 A6 */	mtlr r0
/* 80947114  38 21 00 10 */	addi r1, r1, 0x10
/* 80947118  4E 80 00 20 */	blr 
