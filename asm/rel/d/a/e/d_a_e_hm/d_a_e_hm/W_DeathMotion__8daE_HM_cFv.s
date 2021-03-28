lbl_806E1370:
/* 806E1370  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E1374  7C 08 02 A6 */	mflr r0
/* 806E1378  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E137C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806E1380  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806E1384  7C 7F 1B 78 */	mr r31, r3
/* 806E1388  A8 03 05 D6 */	lha r0, 0x5d6(r3)
/* 806E138C  2C 00 00 01 */	cmpwi r0, 1
/* 806E1390  41 82 01 A4 */	beq lbl_806E1534
/* 806E1394  40 80 01 B0 */	bge lbl_806E1544
/* 806E1398  2C 00 00 00 */	cmpwi r0, 0
/* 806E139C  40 80 00 08 */	bge lbl_806E13A4
/* 806E13A0  48 00 01 A4 */	b lbl_806E1544
lbl_806E13A4:
/* 806E13A4  88 9F 05 AE */	lbz r4, 0x5ae(r31)
/* 806E13A8  28 04 00 FF */	cmplwi r4, 0xff
/* 806E13AC  41 82 00 38 */	beq lbl_806E13E4
/* 806E13B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E13B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E13B8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806E13BC  7C 05 07 74 */	extsb r5, r0
/* 806E13C0  4B 95 3F A0 */	b isSwitch__10dSv_info_cCFii
/* 806E13C4  2C 03 00 00 */	cmpwi r3, 0
/* 806E13C8  40 82 00 1C */	bne lbl_806E13E4
/* 806E13CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E13D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E13D4  88 9F 05 AE */	lbz r4, 0x5ae(r31)
/* 806E13D8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806E13DC  7C 05 07 74 */	extsb r5, r0
/* 806E13E0  4B 95 3E 20 */	b onSwitch__10dSv_info_cFii
lbl_806E13E4:
/* 806E13E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070244@ha */
/* 806E13E8  38 03 02 44 */	addi r0, r3, 0x0244 /* 0x00070244@l */
/* 806E13EC  90 01 00 20 */	stw r0, 0x20(r1)
/* 806E13F0  38 7F 06 30 */	addi r3, r31, 0x630
/* 806E13F4  38 81 00 20 */	addi r4, r1, 0x20
/* 806E13F8  38 A0 FF FF */	li r5, -1
/* 806E13FC  81 9F 06 30 */	lwz r12, 0x630(r31)
/* 806E1400  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E1404  7D 89 03 A6 */	mtctr r12
/* 806E1408  4E 80 04 21 */	bctrl 
/* 806E140C  80 1F 07 40 */	lwz r0, 0x740(r31)
/* 806E1410  60 00 04 00 */	ori r0, r0, 0x400
/* 806E1414  90 1F 07 40 */	stw r0, 0x740(r31)
/* 806E1418  7F E3 FB 78 */	mr r3, r31
/* 806E141C  4B FF FB D9 */	bl W_DeathSpSet__8daE_HM_cFv
/* 806E1420  A8 7F 05 D6 */	lha r3, 0x5d6(r31)
/* 806E1424  38 03 00 01 */	addi r0, r3, 1
/* 806E1428  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
/* 806E142C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E1430  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 806E1434  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806E1438  38 80 00 00 */	li r4, 0
/* 806E143C  90 81 00 08 */	stw r4, 8(r1)
/* 806E1440  38 00 FF FF */	li r0, -1
/* 806E1444  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E1448  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E144C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E1450  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E1454  38 80 00 00 */	li r4, 0
/* 806E1458  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084F3@ha */
/* 806E145C  38 A5 84 F3 */	addi r5, r5, 0x84F3 /* 0x000084F3@l */
/* 806E1460  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 806E1464  38 FF 01 0C */	addi r7, r31, 0x10c
/* 806E1468  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806E146C  39 20 00 00 */	li r9, 0
/* 806E1470  39 40 00 FF */	li r10, 0xff
/* 806E1474  3D 60 80 6E */	lis r11, lit_3793@ha
/* 806E1478  C0 2B 59 28 */	lfs f1, lit_3793@l(r11)
/* 806E147C  4B 96 B6 14 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E1480  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806E1484  38 80 00 00 */	li r4, 0
/* 806E1488  90 81 00 08 */	stw r4, 8(r1)
/* 806E148C  38 00 FF FF */	li r0, -1
/* 806E1490  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E1494  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E1498  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E149C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E14A0  38 80 00 00 */	li r4, 0
/* 806E14A4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084F4@ha */
/* 806E14A8  38 A5 84 F4 */	addi r5, r5, 0x84F4 /* 0x000084F4@l */
/* 806E14AC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 806E14B0  38 FF 01 0C */	addi r7, r31, 0x10c
/* 806E14B4  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806E14B8  39 20 00 00 */	li r9, 0
/* 806E14BC  39 40 00 FF */	li r10, 0xff
/* 806E14C0  3D 60 80 6E */	lis r11, lit_3793@ha
/* 806E14C4  C0 2B 59 28 */	lfs f1, lit_3793@l(r11)
/* 806E14C8  4B 96 B5 C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E14CC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806E14D0  38 80 00 00 */	li r4, 0
/* 806E14D4  90 81 00 08 */	stw r4, 8(r1)
/* 806E14D8  38 00 FF FF */	li r0, -1
/* 806E14DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E14E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 806E14E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 806E14E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 806E14EC  38 80 00 00 */	li r4, 0
/* 806E14F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x000084F5@ha */
/* 806E14F4  38 A5 84 F5 */	addi r5, r5, 0x84F5 /* 0x000084F5@l */
/* 806E14F8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 806E14FC  38 FF 01 0C */	addi r7, r31, 0x10c
/* 806E1500  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 806E1504  39 20 00 00 */	li r9, 0
/* 806E1508  39 40 00 FF */	li r10, 0xff
/* 806E150C  3D 60 80 6E */	lis r11, lit_3793@ha
/* 806E1510  C0 2B 59 28 */	lfs f1, lit_3793@l(r11)
/* 806E1514  4B 96 B5 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806E1518  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E151C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E1520  90 1F 09 28 */	stw r0, 0x928(r31)
/* 806E1524  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 806E1528  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E152C  90 1F 09 40 */	stw r0, 0x940(r31)
/* 806E1530  48 00 00 14 */	b lbl_806E1544
lbl_806E1534:
/* 806E1534  80 1F 09 28 */	lwz r0, 0x928(r31)
/* 806E1538  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806E153C  90 1F 09 28 */	stw r0, 0x928(r31)
/* 806E1540  4B FF FB D9 */	bl W_DeathAction__8daE_HM_cFv
lbl_806E1544:
/* 806E1544  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806E1548  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806E154C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E1550  7C 08 03 A6 */	mtlr r0
/* 806E1554  38 21 00 30 */	addi r1, r1, 0x30
/* 806E1558  4E 80 00 20 */	blr 
