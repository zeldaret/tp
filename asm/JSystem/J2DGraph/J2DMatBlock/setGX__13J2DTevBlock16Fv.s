lbl_802F132C:
/* 802F132C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802F1330  7C 08 02 A6 */	mflr r0
/* 802F1334  90 01 00 34 */	stw r0, 0x34(r1)
/* 802F1338  39 61 00 30 */	addi r11, r1, 0x30
/* 802F133C  48 07 0E 9D */	bl _savegpr_28
/* 802F1340  7C 7F 1B 78 */	mr r31, r3
/* 802F1344  3B 80 00 00 */	li r28, 0
lbl_802F1348:
/* 802F1348  7F E3 FB 78 */	mr r3, r31
/* 802F134C  7F 84 E3 78 */	mr r4, r28
/* 802F1350  7F 85 E3 78 */	mr r5, r28
/* 802F1354  81 9F 00 00 */	lwz r12, 0(r31)
/* 802F1358  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802F135C  7D 89 03 A6 */	mtctr r12
/* 802F1360  4E 80 04 21 */	bctrl 
/* 802F1364  3B 9C 00 01 */	addi r28, r28, 1
/* 802F1368  2C 1C 00 08 */	cmpwi r28, 8
/* 802F136C  41 80 FF DC */	blt lbl_802F1348
/* 802F1370  3B A0 00 00 */	li r29, 0
/* 802F1374  3B 80 00 00 */	li r28, 0
/* 802F1378  48 00 00 24 */	b lbl_802F139C
lbl_802F137C:
/* 802F137C  7C DF E2 14 */	add r6, r31, r28
/* 802F1380  7F A3 EB 78 */	mr r3, r29
/* 802F1384  88 86 00 16 */	lbz r4, 0x16(r6)
/* 802F1388  88 A6 00 17 */	lbz r5, 0x17(r6)
/* 802F138C  88 C6 00 18 */	lbz r6, 0x18(r6)
/* 802F1390  48 06 E3 65 */	bl GXSetTevOrder
/* 802F1394  3B BD 00 01 */	addi r29, r29, 1
/* 802F1398  3B 9C 00 04 */	addi r28, r28, 4
lbl_802F139C:
/* 802F139C  88 1F 00 76 */	lbz r0, 0x76(r31)
/* 802F13A0  7C 1D 00 00 */	cmpw r29, r0
/* 802F13A4  41 80 FF D8 */	blt lbl_802F137C
/* 802F13A8  3B C0 00 00 */	li r30, 0
/* 802F13AC  3B 80 00 00 */	li r28, 0
/* 802F13B0  3B A1 00 0C */	addi r29, r1, 0xc
lbl_802F13B4:
/* 802F13B4  38 1C 00 56 */	addi r0, r28, 0x56
/* 802F13B8  7C 9F 02 14 */	add r4, r31, r0
/* 802F13BC  80 64 00 00 */	lwz r3, 0(r4)
/* 802F13C0  80 04 00 04 */	lwz r0, 4(r4)
/* 802F13C4  90 61 00 0C */	stw r3, 0xc(r1)
/* 802F13C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802F13CC  2C 1E 00 03 */	cmpwi r30, 3
/* 802F13D0  38 60 00 00 */	li r3, 0
/* 802F13D4  41 82 00 08 */	beq lbl_802F13DC
/* 802F13D8  38 7E 00 01 */	addi r3, r30, 1
lbl_802F13DC:
/* 802F13DC  7F A4 EB 78 */	mr r4, r29
/* 802F13E0  48 06 DF FD */	bl GXSetTevColorS10
/* 802F13E4  3B DE 00 01 */	addi r30, r30, 1
/* 802F13E8  2C 1E 00 04 */	cmpwi r30, 4
/* 802F13EC  3B 9C 00 08 */	addi r28, r28, 8
/* 802F13F0  41 80 FF C4 */	blt lbl_802F13B4
/* 802F13F4  88 7F 00 76 */	lbz r3, 0x76(r31)
/* 802F13F8  48 06 E4 99 */	bl GXSetNumTevStages
/* 802F13FC  3B C0 00 00 */	li r30, 0
/* 802F1400  3B 80 00 00 */	li r28, 0
/* 802F1404  48 00 01 2C */	b lbl_802F1530
lbl_802F1408:
/* 802F1408  7F BF E2 14 */	add r29, r31, r28
/* 802F140C  88 1D 00 7A */	lbz r0, 0x7a(r29)
/* 802F1410  88 BD 00 79 */	lbz r5, 0x79(r29)
/* 802F1414  7F C3 F3 78 */	mr r3, r30
/* 802F1418  54 A4 E7 3E */	rlwinm r4, r5, 0x1c, 0x1c, 0x1f
/* 802F141C  54 A5 07 3E */	clrlwi r5, r5, 0x1c
/* 802F1420  54 06 E7 3E */	rlwinm r6, r0, 0x1c, 0x1c, 0x1f
/* 802F1424  54 07 07 3E */	clrlwi r7, r0, 0x1c
/* 802F1428  48 06 DD FD */	bl GXSetTevColorIn
/* 802F142C  88 FD 00 7E */	lbz r7, 0x7e(r29)
/* 802F1430  88 DD 00 7D */	lbz r6, 0x7d(r29)
/* 802F1434  7F C3 F3 78 */	mr r3, r30
/* 802F1438  54 C0 06 34 */	rlwinm r0, r6, 0, 0x18, 0x1a
/* 802F143C  7C 00 2E 70 */	srawi r0, r0, 5
/* 802F1440  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802F1444  54 C5 F7 7E */	rlwinm r5, r6, 0x1e, 0x1d, 0x1f
/* 802F1448  54 E0 CF FE */	rlwinm r0, r7, 0x19, 0x1f, 0x1f
/* 802F144C  50 C0 0F 7C */	rlwimi r0, r6, 1, 0x1d, 0x1e
/* 802F1450  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802F1454  54 E7 E7 7E */	rlwinm r7, r7, 0x1c, 0x1d, 0x1f
/* 802F1458  48 06 DE 11 */	bl GXSetTevAlphaIn
/* 802F145C  88 9D 00 78 */	lbz r4, 0x78(r29)
/* 802F1460  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 802F1464  54 80 06 B6 */	rlwinm r0, r4, 0, 0x1a, 0x1b
/* 802F1468  7C 00 26 70 */	srawi r0, r0, 4
/* 802F146C  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802F1470  54 87 EF FE */	rlwinm r7, r4, 0x1d, 0x1f, 0x1f
/* 802F1474  54 88 D7 BE */	rlwinm r8, r4, 0x1a, 0x1e, 0x1f
/* 802F1478  7F C3 F3 78 */	mr r3, r30
/* 802F147C  28 05 00 03 */	cmplwi r5, 3
/* 802F1480  54 89 F7 FE */	rlwinm r9, r4, 0x1e, 0x1f, 0x1f
/* 802F1484  54 80 EF 7C */	rlwinm r0, r4, 0x1d, 0x1d, 0x1e
/* 802F1488  7C 89 02 14 */	add r4, r9, r0
/* 802F148C  38 04 00 08 */	addi r0, r4, 8
/* 802F1490  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802F1494  41 82 00 08 */	beq lbl_802F149C
/* 802F1498  7D 20 4B 78 */	mr r0, r9
lbl_802F149C:
/* 802F149C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802F14A0  48 06 DE 0D */	bl GXSetTevColorOp
/* 802F14A4  88 9D 00 7C */	lbz r4, 0x7c(r29)
/* 802F14A8  54 85 07 BE */	clrlwi r5, r4, 0x1e
/* 802F14AC  54 80 06 B6 */	rlwinm r0, r4, 0, 0x1a, 0x1b
/* 802F14B0  7C 00 26 70 */	srawi r0, r0, 4
/* 802F14B4  54 06 06 3E */	clrlwi r6, r0, 0x18
/* 802F14B8  54 87 EF FE */	rlwinm r7, r4, 0x1d, 0x1f, 0x1f
/* 802F14BC  54 88 D7 BE */	rlwinm r8, r4, 0x1a, 0x1e, 0x1f
/* 802F14C0  7F C3 F3 78 */	mr r3, r30
/* 802F14C4  28 05 00 03 */	cmplwi r5, 3
/* 802F14C8  54 89 F7 FE */	rlwinm r9, r4, 0x1e, 0x1f, 0x1f
/* 802F14CC  54 80 EF 7C */	rlwinm r0, r4, 0x1d, 0x1d, 0x1e
/* 802F14D0  7C 89 02 14 */	add r4, r9, r0
/* 802F14D4  38 04 00 08 */	addi r0, r4, 8
/* 802F14D8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802F14DC  41 82 00 08 */	beq lbl_802F14E4
/* 802F14E0  7D 20 4B 78 */	mr r0, r9
lbl_802F14E4:
/* 802F14E4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802F14E8  48 06 DE 2D */	bl GXSetTevAlphaOp
/* 802F14EC  7F BF F2 14 */	add r29, r31, r30
/* 802F14F0  88 1D 01 08 */	lbz r0, 0x108(r29)
/* 802F14F4  28 00 00 FF */	cmplwi r0, 0xff
/* 802F14F8  38 80 00 00 */	li r4, 0
/* 802F14FC  41 82 00 08 */	beq lbl_802F1504
/* 802F1500  7C 04 03 78 */	mr r4, r0
lbl_802F1504:
/* 802F1504  7F C3 F3 78 */	mr r3, r30
/* 802F1508  48 06 DF 9D */	bl GXSetTevKColorSel
/* 802F150C  88 1D 01 18 */	lbz r0, 0x118(r29)
/* 802F1510  28 00 00 FF */	cmplwi r0, 0xff
/* 802F1514  38 80 00 00 */	li r4, 0
/* 802F1518  41 82 00 08 */	beq lbl_802F1520
/* 802F151C  7C 04 03 78 */	mr r4, r0
lbl_802F1520:
/* 802F1520  7F C3 F3 78 */	mr r3, r30
/* 802F1524  48 06 DF DD */	bl GXSetTevKAlphaSel
/* 802F1528  3B DE 00 01 */	addi r30, r30, 1
/* 802F152C  3B 9C 00 08 */	addi r28, r28, 8
lbl_802F1530:
/* 802F1530  88 1F 00 76 */	lbz r0, 0x76(r31)
/* 802F1534  7C 1E 00 00 */	cmpw r30, r0
/* 802F1538  41 80 FE D0 */	blt lbl_802F1408
/* 802F153C  3B A0 00 00 */	li r29, 0
/* 802F1540  3B 80 00 00 */	li r28, 0
lbl_802F1544:
/* 802F1544  38 1C 00 F8 */	addi r0, r28, 0xf8
/* 802F1548  7C 1F 00 2E */	lwzx r0, r31, r0
/* 802F154C  90 01 00 08 */	stw r0, 8(r1)
/* 802F1550  7F A3 EB 78 */	mr r3, r29
/* 802F1554  38 81 00 08 */	addi r4, r1, 8
/* 802F1558  48 06 DE E9 */	bl GXSetTevKColor
/* 802F155C  3B BD 00 01 */	addi r29, r29, 1
/* 802F1560  2C 1D 00 04 */	cmpwi r29, 4
/* 802F1564  3B 9C 00 04 */	addi r28, r28, 4
/* 802F1568  41 80 FF DC */	blt lbl_802F1544
/* 802F156C  3B A0 00 00 */	li r29, 0
/* 802F1570  3B 80 00 00 */	li r28, 0
/* 802F1574  48 00 00 24 */	b lbl_802F1598
lbl_802F1578:
/* 802F1578  38 1C 00 7E */	addi r0, r28, 0x7e
/* 802F157C  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802F1580  7F A3 EB 78 */	mr r3, r29
/* 802F1584  54 04 07 BE */	clrlwi r4, r0, 0x1e
/* 802F1588  54 05 F7 BE */	rlwinm r5, r0, 0x1e, 0x1e, 0x1f
/* 802F158C  48 06 DF D1 */	bl GXSetTevSwapMode
/* 802F1590  3B BD 00 01 */	addi r29, r29, 1
/* 802F1594  3B 9C 00 08 */	addi r28, r28, 8
lbl_802F1598:
/* 802F1598  88 1F 00 76 */	lbz r0, 0x76(r31)
/* 802F159C  7C 1D 00 00 */	cmpw r29, r0
/* 802F15A0  41 80 FF D8 */	blt lbl_802F1578
/* 802F15A4  3B 80 00 00 */	li r28, 0
lbl_802F15A8:
/* 802F15A8  38 1C 01 28 */	addi r0, r28, 0x128
/* 802F15AC  7C 1F 00 AE */	lbzx r0, r31, r0
/* 802F15B0  7F 83 E3 78 */	mr r3, r28
/* 802F15B4  54 04 D7 BE */	rlwinm r4, r0, 0x1a, 0x1e, 0x1f
/* 802F15B8  54 05 E7 BE */	rlwinm r5, r0, 0x1c, 0x1e, 0x1f
/* 802F15BC  54 06 F7 BE */	rlwinm r6, r0, 0x1e, 0x1e, 0x1f
/* 802F15C0  54 07 07 BE */	clrlwi r7, r0, 0x1e
/* 802F15C4  48 06 DF E1 */	bl GXSetTevSwapModeTable
/* 802F15C8  3B 9C 00 01 */	addi r28, r28, 1
/* 802F15CC  2C 1C 00 04 */	cmpwi r28, 4
/* 802F15D0  41 80 FF D8 */	blt lbl_802F15A8
/* 802F15D4  3B 80 00 00 */	li r28, 0
/* 802F15D8  48 00 00 1C */	b lbl_802F15F4
lbl_802F15DC:
/* 802F15DC  57 83 15 BA */	rlwinm r3, r28, 2, 0x16, 0x1d
/* 802F15E0  38 63 01 2C */	addi r3, r3, 0x12c
/* 802F15E4  7C 7F 1A 14 */	add r3, r31, r3
/* 802F15E8  7F 84 E3 78 */	mr r4, r28
/* 802F15EC  4B FF 8A 59 */	bl load__14J2DIndTevStageFUc
/* 802F15F0  3B 9C 00 01 */	addi r28, r28, 1
lbl_802F15F4:
/* 802F15F4  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802F15F8  88 1F 00 76 */	lbz r0, 0x76(r31)
/* 802F15FC  7C 03 00 40 */	cmplw r3, r0
/* 802F1600  41 80 FF DC */	blt lbl_802F15DC
/* 802F1604  39 61 00 30 */	addi r11, r1, 0x30
/* 802F1608  48 07 0C 1D */	bl _restgpr_28
/* 802F160C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F1610  7C 08 03 A6 */	mtlr r0
/* 802F1614  38 21 00 30 */	addi r1, r1, 0x30
/* 802F1618  4E 80 00 20 */	blr 
