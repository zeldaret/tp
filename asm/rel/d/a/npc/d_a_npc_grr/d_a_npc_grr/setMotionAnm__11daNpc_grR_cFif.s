lbl_809E13B8:
/* 809E13B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809E13BC  7C 08 02 A6 */	mflr r0
/* 809E13C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 809E13C4  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 809E13C8  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 809E13CC  39 61 00 20 */	addi r11, r1, 0x20
/* 809E13D0  4B 98 0E 01 */	bl _savegpr_26
/* 809E13D4  7C 7A 1B 78 */	mr r26, r3
/* 809E13D8  7C 9B 23 78 */	mr r27, r4
/* 809E13DC  FF E0 08 90 */	fmr f31, f1
/* 809E13E0  3C 80 80 9E */	lis r4, cNullVec__6Z2Calc@ha /* 0x809E3BF0@ha */
/* 809E13E4  3B E4 3B F0 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809E3BF0@l */
/* 809E13E8  3B C0 00 00 */	li r30, 0
/* 809E13EC  3B A0 00 00 */	li r29, 0
/* 809E13F0  3B 80 00 02 */	li r28, 2
/* 809E13F4  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809E13F8  54 00 00 32 */	rlwinm r0, r0, 0, 0, 0x19
/* 809E13FC  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809E1400  57 60 18 38 */	slwi r0, r27, 3
/* 809E1404  38 9F 00 28 */	addi r4, r31, 0x28
/* 809E1408  7C A4 00 2E */	lwzx r5, r4, r0
/* 809E140C  2C 05 00 00 */	cmpwi r5, 0
/* 809E1410  41 80 00 20 */	blt lbl_809E1430
/* 809E1414  7C 84 02 14 */	add r4, r4, r0
/* 809E1418  80 04 00 04 */	lwz r0, 4(r4)
/* 809E141C  54 00 10 3A */	slwi r0, r0, 2
/* 809E1420  38 9F 01 40 */	addi r4, r31, 0x140
/* 809E1424  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E1428  4B 77 17 05 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809E142C  7C 7E 1B 78 */	mr r30, r3
lbl_809E1430:
/* 809E1430  2C 1B 00 0B */	cmpwi r27, 0xb
/* 809E1434  41 82 00 3C */	beq lbl_809E1470
/* 809E1438  40 80 00 18 */	bge lbl_809E1450
/* 809E143C  2C 1B 00 0A */	cmpwi r27, 0xa
/* 809E1440  40 80 00 20 */	bge lbl_809E1460
/* 809E1444  2C 1B 00 08 */	cmpwi r27, 8
/* 809E1448  40 80 00 28 */	bge lbl_809E1470
/* 809E144C  48 00 00 1C */	b lbl_809E1468
lbl_809E1450:
/* 809E1450  2C 1B 00 13 */	cmpwi r27, 0x13
/* 809E1454  40 80 00 14 */	bge lbl_809E1468
/* 809E1458  2C 1B 00 11 */	cmpwi r27, 0x11
/* 809E145C  40 80 00 14 */	bge lbl_809E1470
lbl_809E1460:
/* 809E1460  3B 80 00 00 */	li r28, 0
/* 809E1464  48 00 00 0C */	b lbl_809E1470
lbl_809E1468:
/* 809E1468  3B C0 00 00 */	li r30, 0
/* 809E146C  3B A0 00 00 */	li r29, 0
lbl_809E1470:
/* 809E1470  80 BF 00 F0 */	lwz r5, 0xf0(r31)
/* 809E1474  2C 05 00 00 */	cmpwi r5, 0
/* 809E1478  41 80 00 24 */	blt lbl_809E149C
/* 809E147C  7F 43 D3 78 */	mr r3, r26
/* 809E1480  38 9F 00 F0 */	addi r4, r31, 0xf0
/* 809E1484  80 04 00 04 */	lwz r0, 4(r4)
/* 809E1488  54 00 10 3A */	slwi r0, r0, 2
/* 809E148C  38 9F 01 40 */	addi r4, r31, 0x140
/* 809E1490  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E1494  4B 77 17 11 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809E1498  7C 7D 1B 78 */	mr r29, r3
lbl_809E149C:
/* 809E149C  28 1D 00 00 */	cmplwi r29, 0
/* 809E14A0  41 82 00 3C */	beq lbl_809E14DC
/* 809E14A4  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 809E14A8  80 63 00 04 */	lwz r3, 4(r3)
/* 809E14AC  80 A3 00 04 */	lwz r5, 4(r3)
/* 809E14B0  7F 43 D3 78 */	mr r3, r26
/* 809E14B4  7F A4 EB 78 */	mr r4, r29
/* 809E14B8  3C C0 80 9E */	lis r6, lit_4452@ha /* 0x809E3964@ha */
/* 809E14BC  C0 26 39 64 */	lfs f1, lit_4452@l(r6)  /* 0x809E3964@l */
/* 809E14C0  38 C0 00 02 */	li r6, 2
/* 809E14C4  4B 77 18 41 */	bl setBtkAnm__8daNpcF_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 809E14C8  2C 03 00 00 */	cmpwi r3, 0
/* 809E14CC  41 82 00 10 */	beq lbl_809E14DC
/* 809E14D0  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 809E14D4  60 00 00 12 */	ori r0, r0, 0x12
/* 809E14D8  90 1A 09 9C */	stw r0, 0x99c(r26)
lbl_809E14DC:
/* 809E14DC  28 1E 00 00 */	cmplwi r30, 0
/* 809E14E0  41 82 00 48 */	beq lbl_809E1528
/* 809E14E4  7F 43 D3 78 */	mr r3, r26
/* 809E14E8  7F C4 F3 78 */	mr r4, r30
/* 809E14EC  3C A0 80 9E */	lis r5, lit_4452@ha /* 0x809E3964@ha */
/* 809E14F0  C0 25 39 64 */	lfs f1, lit_4452@l(r5)  /* 0x809E3964@l */
/* 809E14F4  FC 40 F8 90 */	fmr f2, f31
/* 809E14F8  7F 85 E3 78 */	mr r5, r28
/* 809E14FC  38 C0 00 00 */	li r6, 0
/* 809E1500  38 E0 FF FF */	li r7, -1
/* 809E1504  4B 77 17 19 */	bl setMcaMorfAnm__8daNpcF_cFP18J3DAnmTransformKeyffiii
/* 809E1508  2C 03 00 00 */	cmpwi r3, 0
/* 809E150C  41 82 00 1C */	beq lbl_809E1528
/* 809E1510  80 1A 09 9C */	lwz r0, 0x99c(r26)
/* 809E1514  60 00 00 09 */	ori r0, r0, 9
/* 809E1518  90 1A 09 9C */	stw r0, 0x99c(r26)
/* 809E151C  38 00 00 00 */	li r0, 0
/* 809E1520  B0 1A 09 E2 */	sth r0, 0x9e2(r26)
/* 809E1524  93 7A 0E 1C */	stw r27, 0xe1c(r26)
lbl_809E1528:
/* 809E1528  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 809E152C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 809E1530  39 61 00 20 */	addi r11, r1, 0x20
/* 809E1534  4B 98 0C E9 */	bl _restgpr_26
/* 809E1538  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809E153C  7C 08 03 A6 */	mtlr r0
/* 809E1540  38 21 00 30 */	addi r1, r1, 0x30
/* 809E1544  4E 80 00 20 */	blr 
