lbl_809D14BC:
/* 809D14BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D14C0  7C 08 02 A6 */	mflr r0
/* 809D14C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D14C8  39 61 00 20 */	addi r11, r1, 0x20
/* 809D14CC  4B 99 0D 09 */	bl _savegpr_27
/* 809D14D0  7C 7D 1B 78 */	mr r29, r3
/* 809D14D4  7C 9B 23 78 */	mr r27, r4
/* 809D14D8  7C BE 2B 78 */	mr r30, r5
/* 809D14DC  3B 80 00 00 */	li r28, 0
/* 809D14E0  3B E0 00 00 */	li r31, 0
/* 809D14E4  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 809D14E8  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 809D14EC  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809D14F0  54 80 18 38 */	slwi r0, r4, 3
/* 809D14F4  3C 80 80 9D */	lis r4, l_bckGetParamList@ha /* 0x809D3C3C@ha */
/* 809D14F8  38 84 3C 3C */	addi r4, r4, l_bckGetParamList@l /* 0x809D3C3C@l */
/* 809D14FC  7C A4 00 2E */	lwzx r5, r4, r0
/* 809D1500  2C 05 00 00 */	cmpwi r5, 0
/* 809D1504  41 80 00 24 */	blt lbl_809D1528
/* 809D1508  7C 84 02 14 */	add r4, r4, r0
/* 809D150C  80 04 00 04 */	lwz r0, 4(r4)
/* 809D1510  54 00 10 3A */	slwi r0, r0, 2
/* 809D1514  3C 80 80 9D */	lis r4, l_resNames@ha /* 0x809D3CFC@ha */
/* 809D1518  38 84 3C FC */	addi r4, r4, l_resNames@l /* 0x809D3CFC@l */
/* 809D151C  7C 84 00 2E */	lwzx r4, r4, r0
/* 809D1520  4B 78 16 0D */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 809D1524  7C 7C 1B 78 */	mr r28, r3
lbl_809D1528:
/* 809D1528  38 60 00 00 */	li r3, 0
/* 809D152C  2C 1B 00 02 */	cmpwi r27, 2
/* 809D1530  41 82 00 60 */	beq lbl_809D1590
/* 809D1534  40 80 00 14 */	bge lbl_809D1548
/* 809D1538  2C 1B 00 00 */	cmpwi r27, 0
/* 809D153C  41 82 00 1C */	beq lbl_809D1558
/* 809D1540  40 80 00 34 */	bge lbl_809D1574
/* 809D1544  48 00 00 A4 */	b lbl_809D15E8
lbl_809D1548:
/* 809D1548  2C 1B 00 04 */	cmpwi r27, 4
/* 809D154C  41 82 00 80 */	beq lbl_809D15CC
/* 809D1550  40 80 00 98 */	bge lbl_809D15E8
/* 809D1554  48 00 00 58 */	b lbl_809D15AC
lbl_809D1558:
/* 809D1558  7F A3 EB 78 */	mr r3, r29
/* 809D155C  38 80 00 00 */	li r4, 0
/* 809D1560  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D1564  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809D1568  7D 89 03 A6 */	mtctr r12
/* 809D156C  4E 80 04 21 */	bctrl 
/* 809D1570  48 00 00 7C */	b lbl_809D15EC
lbl_809D1574:
/* 809D1574  7F A3 EB 78 */	mr r3, r29
/* 809D1578  38 80 00 00 */	li r4, 0
/* 809D157C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D1580  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809D1584  7D 89 03 A6 */	mtctr r12
/* 809D1588  4E 80 04 21 */	bctrl 
/* 809D158C  48 00 00 60 */	b lbl_809D15EC
lbl_809D1590:
/* 809D1590  7F A3 EB 78 */	mr r3, r29
/* 809D1594  38 80 00 01 */	li r4, 1
/* 809D1598  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D159C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809D15A0  7D 89 03 A6 */	mtctr r12
/* 809D15A4  4E 80 04 21 */	bctrl 
/* 809D15A8  48 00 00 44 */	b lbl_809D15EC
lbl_809D15AC:
/* 809D15AC  7F A3 EB 78 */	mr r3, r29
/* 809D15B0  38 80 00 02 */	li r4, 2
/* 809D15B4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D15B8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809D15BC  7D 89 03 A6 */	mtctr r12
/* 809D15C0  4E 80 04 21 */	bctrl 
/* 809D15C4  3B E0 00 02 */	li r31, 2
/* 809D15C8  48 00 00 24 */	b lbl_809D15EC
lbl_809D15CC:
/* 809D15CC  7F A3 EB 78 */	mr r3, r29
/* 809D15D0  38 80 00 03 */	li r4, 3
/* 809D15D4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809D15D8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 809D15DC  7D 89 03 A6 */	mtctr r12
/* 809D15E0  4E 80 04 21 */	bctrl 
/* 809D15E4  48 00 00 08 */	b lbl_809D15EC
lbl_809D15E8:
/* 809D15E8  3B 80 00 00 */	li r28, 0
lbl_809D15EC:
/* 809D15EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809D15F0  40 82 00 0C */	bne lbl_809D15FC
/* 809D15F4  38 60 00 00 */	li r3, 0
/* 809D15F8  48 00 00 60 */	b lbl_809D1658
lbl_809D15FC:
/* 809D15FC  28 1C 00 00 */	cmplwi r28, 0
/* 809D1600  40 82 00 0C */	bne lbl_809D160C
/* 809D1604  38 60 00 01 */	li r3, 1
/* 809D1608  48 00 00 50 */	b lbl_809D1658
lbl_809D160C:
/* 809D160C  7F A3 EB 78 */	mr r3, r29
/* 809D1610  7F 84 E3 78 */	mr r4, r28
/* 809D1614  3C A0 80 9D */	lis r5, lit_4450@ha /* 0x809D3A80@ha */
/* 809D1618  C0 25 3A 80 */	lfs f1, lit_4450@l(r5)  /* 0x809D3A80@l */
/* 809D161C  7F E5 FB 78 */	mr r5, r31
/* 809D1620  38 C0 00 00 */	li r6, 0
/* 809D1624  38 E0 FF FF */	li r7, -1
/* 809D1628  7F C8 F3 78 */	mr r8, r30
/* 809D162C  4B 78 16 55 */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 809D1630  2C 03 00 00 */	cmpwi r3, 0
/* 809D1634  41 82 00 20 */	beq lbl_809D1654
/* 809D1638  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809D163C  60 00 01 40 */	ori r0, r0, 0x140
/* 809D1640  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 809D1644  38 00 00 00 */	li r0, 0
/* 809D1648  B0 1D 09 E4 */	sth r0, 0x9e4(r29)
/* 809D164C  38 60 00 01 */	li r3, 1
/* 809D1650  48 00 00 08 */	b lbl_809D1658
lbl_809D1654:
/* 809D1654  38 60 00 00 */	li r3, 0
lbl_809D1658:
/* 809D1658  39 61 00 20 */	addi r11, r1, 0x20
/* 809D165C  4B 99 0B C5 */	bl _restgpr_27
/* 809D1660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D1664  7C 08 03 A6 */	mtlr r0
/* 809D1668  38 21 00 20 */	addi r1, r1, 0x20
/* 809D166C  4E 80 00 20 */	blr 
