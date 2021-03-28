lbl_801F1378:
/* 801F1378  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F137C  7C 08 02 A6 */	mflr r0
/* 801F1380  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F1384  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F1388  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801F138C  7C 7E 1B 78 */	mr r30, r3
/* 801F1390  48 00 1E FD */	bl YesNoSelect__12dMenu_save_cFv
/* 801F1394  2C 03 00 00 */	cmpwi r3, 0
/* 801F1398  41 82 01 A8 */	beq lbl_801F1540
/* 801F139C  88 1E 01 B6 */	lbz r0, 0x1b6(r30)
/* 801F13A0  28 00 00 01 */	cmplwi r0, 1
/* 801F13A4  40 82 01 44 */	bne lbl_801F14E8
/* 801F13A8  38 00 00 01 */	li r0, 1
/* 801F13AC  98 1E 01 C0 */	stb r0, 0x1c0(r30)
/* 801F13B0  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 801F13B4  3C 80 6D 5F */	lis r4, 0x6D5F /* 0x6D5F3032@ha */
/* 801F13B8  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x6D5F3032@l */
/* 801F13BC  38 A0 00 4E */	li r5, 0x4e
/* 801F13C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801F13C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801F13C8  7D 89 03 A6 */	mtctr r12
/* 801F13CC  4E 80 04 21 */	bctrl 
/* 801F13D0  7C 7F 1B 78 */	mr r31, r3
/* 801F13D4  80 9E 00 40 */	lwz r4, 0x40(r30)
/* 801F13D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F13DC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F13E0  7D 89 03 A6 */	mtctr r12
/* 801F13E4  4E 80 04 21 */	bctrl 
/* 801F13E8  38 00 00 00 */	li r0, 0
/* 801F13EC  98 1E 00 D2 */	stb r0, 0xd2(r30)
/* 801F13F0  98 1E 00 9C */	stb r0, 0x9c(r30)
/* 801F13F4  98 1E 01 7A */	stb r0, 0x17a(r30)
/* 801F13F8  88 1E 01 78 */	lbz r0, 0x178(r30)
/* 801F13FC  54 00 10 3A */	slwi r0, r0, 2
/* 801F1400  7C 7E 02 14 */	add r3, r30, r0
/* 801F1404  80 63 01 70 */	lwz r3, 0x170(r3)
/* 801F1408  3C 80 80 39 */	lis r4, d_menu_d_menu_save__stringBase0@ha
/* 801F140C  38 84 79 60 */	addi r4, r4, d_menu_d_menu_save__stringBase0@l
/* 801F1410  38 84 00 A5 */	addi r4, r4, 0xa5
/* 801F1414  48 17 77 19 */	bl strcpy
/* 801F1418  88 1E 01 78 */	lbz r0, 0x178(r30)
/* 801F141C  68 00 00 01 */	xori r0, r0, 1
/* 801F1420  54 00 10 3A */	slwi r0, r0, 2
/* 801F1424  7C 7E 02 14 */	add r3, r30, r0
/* 801F1428  80 63 01 70 */	lwz r3, 0x170(r3)
/* 801F142C  3C 80 80 39 */	lis r4, d_menu_d_menu_save__stringBase0@ha
/* 801F1430  38 84 79 60 */	addi r4, r4, d_menu_d_menu_save__stringBase0@l
/* 801F1434  38 84 00 A5 */	addi r4, r4, 0xa5
/* 801F1438  48 17 76 F5 */	bl strcpy
/* 801F143C  38 00 00 00 */	li r0, 0
/* 801F1440  98 1E 00 64 */	stb r0, 0x64(r30)
/* 801F1444  38 00 00 01 */	li r0, 1
/* 801F1448  90 1E 00 50 */	stw r0, 0x50(r30)
/* 801F144C  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 801F1450  C8 22 AA 70 */	lfd f1, lit_4185(r2)
/* 801F1454  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801F1458  90 01 00 0C */	stw r0, 0xc(r1)
/* 801F145C  3C 00 43 30 */	lis r0, 0x4330
/* 801F1460  90 01 00 08 */	stw r0, 8(r1)
/* 801F1464  C8 01 00 08 */	lfd f0, 8(r1)
/* 801F1468  EC 00 08 28 */	fsubs f0, f0, f1
/* 801F146C  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 801F1470  D0 03 00 08 */	stfs f0, 8(r3)
/* 801F1474  7F E3 FB 78 */	mr r3, r31
/* 801F1478  48 10 6B 55 */	bl animationTransform__7J2DPaneFv
/* 801F147C  7F E3 FB 78 */	mr r3, r31
/* 801F1480  38 80 00 00 */	li r4, 0
/* 801F1484  81 9F 00 00 */	lwz r12, 0(r31)
/* 801F1488  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 801F148C  7D 89 03 A6 */	mtctr r12
/* 801F1490  4E 80 04 21 */	bctrl 
/* 801F1494  80 7E 01 68 */	lwz r3, 0x168(r30)
/* 801F1498  80 63 00 04 */	lwz r3, 4(r3)
/* 801F149C  C0 02 AA 58 */	lfs f0, lit_4179(r2)
/* 801F14A0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F14A4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F14A8  81 83 00 00 */	lwz r12, 0(r3)
/* 801F14AC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F14B0  7D 89 03 A6 */	mtctr r12
/* 801F14B4  4E 80 04 21 */	bctrl 
/* 801F14B8  80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 801F14BC  80 63 00 04 */	lwz r3, 4(r3)
/* 801F14C0  C0 02 AA 58 */	lfs f0, lit_4179(r2)
/* 801F14C4  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801F14C8  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801F14CC  81 83 00 00 */	lwz r12, 0(r3)
/* 801F14D0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801F14D4  7D 89 03 A6 */	mtctr r12
/* 801F14D8  4E 80 04 21 */	bctrl 
/* 801F14DC  38 00 00 01 */	li r0, 1
/* 801F14E0  98 1E 01 B2 */	stb r0, 0x1b2(r30)
/* 801F14E4  48 00 00 5C */	b lbl_801F1540
lbl_801F14E8:
/* 801F14E8  88 1E 01 BC */	lbz r0, 0x1bc(r30)
/* 801F14EC  2C 00 00 04 */	cmpwi r0, 4
/* 801F14F0  41 82 00 30 */	beq lbl_801F1520
/* 801F14F4  40 80 00 4C */	bge lbl_801F1540
/* 801F14F8  2C 00 00 03 */	cmpwi r0, 3
/* 801F14FC  40 80 00 08 */	bge lbl_801F1504
/* 801F1500  48 00 00 40 */	b lbl_801F1540
lbl_801F1504:
/* 801F1504  38 00 00 01 */	li r0, 1
/* 801F1508  98 1E 01 BB */	stb r0, 0x1bb(r30)
/* 801F150C  38 00 00 03 */	li r0, 3
/* 801F1510  98 1E 01 BA */	stb r0, 0x1ba(r30)
/* 801F1514  38 00 00 29 */	li r0, 0x29
/* 801F1518  98 1E 01 B2 */	stb r0, 0x1b2(r30)
/* 801F151C  48 00 00 24 */	b lbl_801F1540
lbl_801F1520:
/* 801F1520  38 00 00 00 */	li r0, 0
/* 801F1524  98 1E 21 90 */	stb r0, 0x2190(r30)
/* 801F1528  7F C3 F3 78 */	mr r3, r30
/* 801F152C  38 80 04 E4 */	li r4, 0x4e4
/* 801F1530  38 A0 00 01 */	li r5, 1
/* 801F1534  48 00 1F 89 */	bl msgTxtSet__12dMenu_save_cFUsb
/* 801F1538  38 00 00 05 */	li r0, 5
/* 801F153C  98 1E 01 B2 */	stb r0, 0x1b2(r30)
lbl_801F1540:
/* 801F1540  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F1544  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 801F1548  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F154C  7C 08 03 A6 */	mtlr r0
/* 801F1550  38 21 00 20 */	addi r1, r1, 0x20
/* 801F1554  4E 80 00 20 */	blr 
