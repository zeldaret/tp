lbl_800F13D8:
/* 800F13D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F13DC  7C 08 02 A6 */	mflr r0
/* 800F13E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F13E4  39 61 00 20 */	addi r11, r1, 0x20
/* 800F13E8  48 27 0D F1 */	bl _savegpr_28
/* 800F13EC  7C 7E 1B 78 */	mr r30, r3
/* 800F13F0  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800F13F4  3B E4 D6 58 */	addi r31, r4, lit_3757@l /* 0x8038D658@l */
/* 800F13F8  38 80 00 41 */	li r4, 0x41
/* 800F13FC  4B FD 0B 71 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F1400  3B A0 00 00 */	li r29, 0
/* 800F1404  A0 1E 1F 80 */	lhz r0, 0x1f80(r30)
/* 800F1408  28 00 00 19 */	cmplwi r0, 0x19
/* 800F140C  40 82 00 14 */	bne lbl_800F1420
/* 800F1410  7F C3 F3 78 */	mr r3, r30
/* 800F1414  38 80 00 02 */	li r4, 2
/* 800F1418  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F141C  4B FB C6 D1 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800F1420:
/* 800F1420  7F C3 F3 78 */	mr r3, r30
/* 800F1424  38 80 00 01 */	li r4, 1
/* 800F1428  4B FF D4 F1 */	bl setSyncRide__9daAlink_cFi
/* 800F142C  80 9E 27 EC */	lwz r4, 0x27ec(r30)
/* 800F1430  28 04 00 00 */	cmplwi r4, 0
/* 800F1434  41 82 00 08 */	beq lbl_800F143C
/* 800F1438  48 00 00 14 */	b lbl_800F144C
lbl_800F143C:
/* 800F143C  80 7E 27 E0 */	lwz r3, 0x27e0(r30)
/* 800F1440  38 80 00 00 */	li r4, 0
/* 800F1444  4B F8 20 F9 */	bl LockonTarget__12dAttention_cFl
/* 800F1448  7C 64 1B 78 */	mr r4, r3
lbl_800F144C:
/* 800F144C  28 04 00 00 */	cmplwi r4, 0
/* 800F1450  41 82 00 38 */	beq lbl_800F1488
/* 800F1454  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800F1458  38 84 05 38 */	addi r4, r4, 0x538
/* 800F145C  48 17 F7 A9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 800F1460  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800F1464  7C 00 18 50 */	subf r0, r0, r3
/* 800F1468  7C 00 07 34 */	extsh r0, r0
/* 800F146C  2C 00 08 00 */	cmpwi r0, 0x800
/* 800F1470  40 81 00 0C */	ble lbl_800F147C
/* 800F1474  3B A0 00 02 */	li r29, 2
/* 800F1478  48 00 00 10 */	b lbl_800F1488
lbl_800F147C:
/* 800F147C  2C 00 F8 00 */	cmpwi r0, -2048
/* 800F1480  40 80 00 08 */	bge lbl_800F1488
/* 800F1484  3B A0 00 03 */	li r29, 3
lbl_800F1488:
/* 800F1488  88 1E 05 69 */	lbz r0, 0x569(r30)
/* 800F148C  28 00 00 01 */	cmplwi r0, 1
/* 800F1490  40 82 00 1C */	bne lbl_800F14AC
/* 800F1494  2C 1D 00 03 */	cmpwi r29, 3
/* 800F1498  40 82 00 0C */	bne lbl_800F14A4
/* 800F149C  38 60 00 02 */	li r3, 2
/* 800F14A0  48 00 00 84 */	b lbl_800F1524
lbl_800F14A4:
/* 800F14A4  38 60 00 00 */	li r3, 0
/* 800F14A8  48 00 00 7C */	b lbl_800F1524
lbl_800F14AC:
/* 800F14AC  2C 1D 00 03 */	cmpwi r29, 3
/* 800F14B0  40 82 00 24 */	bne lbl_800F14D4
/* 800F14B4  48 17 63 B9 */	bl cM_rnd__Fv
/* 800F14B8  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800F14BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F14C0  40 80 00 0C */	bge lbl_800F14CC
/* 800F14C4  38 60 00 02 */	li r3, 2
/* 800F14C8  48 00 00 5C */	b lbl_800F1524
lbl_800F14CC:
/* 800F14CC  38 60 00 03 */	li r3, 3
/* 800F14D0  48 00 00 54 */	b lbl_800F1524
lbl_800F14D4:
/* 800F14D4  2C 1D 00 02 */	cmpwi r29, 2
/* 800F14D8  40 82 00 24 */	bne lbl_800F14FC
/* 800F14DC  48 17 63 91 */	bl cM_rnd__Fv
/* 800F14E0  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800F14E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F14E8  40 80 00 0C */	bge lbl_800F14F4
/* 800F14EC  38 60 00 00 */	li r3, 0
/* 800F14F0  48 00 00 34 */	b lbl_800F1524
lbl_800F14F4:
/* 800F14F4  38 60 00 01 */	li r3, 1
/* 800F14F8  48 00 00 2C */	b lbl_800F1524
lbl_800F14FC:
/* 800F14FC  C0 22 93 24 */	lfs f1, lit_7450(r2)
/* 800F1500  48 17 64 55 */	bl cM_rndF__Ff
/* 800F1504  FC 00 08 1E */	fctiwz f0, f1
/* 800F1508  D8 01 00 08 */	stfd f0, 8(r1)
/* 800F150C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 800F1510  54 60 F0 02 */	slwi r0, r3, 0x1e
/* 800F1514  54 63 0F FE */	srwi r3, r3, 0x1f
/* 800F1518  7C 03 00 50 */	subf r0, r3, r0
/* 800F151C  54 00 10 3E */	rotlwi r0, r0, 2
/* 800F1520  7C 60 1A 14 */	add r3, r0, r3
lbl_800F1524:
/* 800F1524  1C 03 00 0C */	mulli r0, r3, 0xc
/* 800F1528  3B 9F 43 50 */	addi r28, r31, 0x4350
/* 800F152C  7F 9C 02 14 */	add r28, r28, r0
/* 800F1530  38 00 00 02 */	li r0, 2
/* 800F1534  98 1E 2F 96 */	stb r0, 0x2f96(r30)
/* 800F1538  2C 03 00 00 */	cmpwi r3, 0
/* 800F153C  40 82 00 0C */	bne lbl_800F1548
/* 800F1540  3B BF 05 C4 */	addi r29, r31, 0x5c4
/* 800F1544  48 00 00 28 */	b lbl_800F156C
lbl_800F1548:
/* 800F1548  2C 03 00 01 */	cmpwi r3, 1
/* 800F154C  40 82 00 0C */	bne lbl_800F1558
/* 800F1550  3B BF 05 E4 */	addi r29, r31, 0x5e4
/* 800F1554  48 00 00 18 */	b lbl_800F156C
lbl_800F1558:
/* 800F1558  2C 03 00 02 */	cmpwi r3, 2
/* 800F155C  40 82 00 0C */	bne lbl_800F1568
/* 800F1560  3B BF 06 04 */	addi r29, r31, 0x604
/* 800F1564  48 00 00 08 */	b lbl_800F156C
lbl_800F1568:
/* 800F1568  3B BF 06 24 */	addi r29, r31, 0x624
lbl_800F156C:
/* 800F156C  7F C3 F3 78 */	mr r3, r30
/* 800F1570  A0 9C 00 04 */	lhz r4, 4(r28)
/* 800F1574  38 A0 00 02 */	li r5, 2
/* 800F1578  7F A6 EB 78 */	mr r6, r29
/* 800F157C  4B FB C1 75 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800F1580  7F C3 F3 78 */	mr r3, r30
/* 800F1584  80 9C 00 00 */	lwz r4, 0(r28)
/* 800F1588  4B FB E5 21 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800F158C  7F C3 F3 78 */	mr r3, r30
/* 800F1590  A0 9C 00 06 */	lhz r4, 6(r28)
/* 800F1594  38 A0 00 01 */	li r5, 1
/* 800F1598  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800F159C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800F15A0  4B FB DF 11 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800F15A4  7F C3 F3 78 */	mr r3, r30
/* 800F15A8  88 9C 00 0A */	lbz r4, 0xa(r28)
/* 800F15AC  4B FD FF 81 */	bl setCutType__9daAlink_cFUc
/* 800F15B0  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 800F15B4  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800F15B8  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 800F15BC  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 800F15C0  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 800F15C4  D0 1E 34 80 */	stfs f0, 0x3480(r30)
/* 800F15C8  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 800F15CC  D0 1E 34 84 */	stfs f0, 0x3484(r30)
/* 800F15D0  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800F15D4  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800F15D8  41 82 00 2C */	beq lbl_800F1604
/* 800F15DC  7F C3 F3 78 */	mr r3, r30
/* 800F15E0  38 80 00 00 */	li r4, 0
/* 800F15E4  38 A0 00 01 */	li r5, 1
/* 800F15E8  38 C0 00 01 */	li r6, 1
/* 800F15EC  38 E0 00 02 */	li r7, 2
/* 800F15F0  39 1F 08 34 */	addi r8, r31, 0x834
/* 800F15F4  C0 28 00 90 */	lfs f1, 0x90(r8)
/* 800F15F8  C0 48 00 94 */	lfs f2, 0x94(r8)
/* 800F15FC  4B FE 00 8D */	bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
/* 800F1600  48 00 00 28 */	b lbl_800F1628
lbl_800F1604:
/* 800F1604  7F C3 F3 78 */	mr r3, r30
/* 800F1608  38 80 00 00 */	li r4, 0
/* 800F160C  38 A0 00 01 */	li r5, 1
/* 800F1610  38 C0 00 01 */	li r6, 1
/* 800F1614  38 E0 00 02 */	li r7, 2
/* 800F1618  39 1F 08 34 */	addi r8, r31, 0x834
/* 800F161C  C0 28 00 7C */	lfs f1, 0x7c(r8)
/* 800F1620  C0 48 00 80 */	lfs f2, 0x80(r8)
/* 800F1624  4B FE 00 65 */	bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
lbl_800F1628:
/* 800F1628  7F C3 F3 78 */	mr r3, r30
/* 800F162C  3C 80 00 01 */	lis r4, 1
/* 800F1630  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800F1634  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800F1638  7D 89 03 A6 */	mtctr r12
/* 800F163C  4E 80 04 21 */	bctrl 
/* 800F1640  38 7F 08 34 */	addi r3, r31, 0x834
/* 800F1644  A8 03 00 52 */	lha r0, 0x52(r3)
/* 800F1648  B0 1E 30 7E */	sth r0, 0x307e(r30)
/* 800F164C  38 00 00 00 */	li r0, 0
/* 800F1650  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800F1654  B0 1E 30 04 */	sth r0, 0x3004(r30)
/* 800F1658  7F C3 F3 78 */	mr r3, r30
/* 800F165C  48 03 2A E9 */	bl setCutWaterDropEffect__9daAlink_cFv
/* 800F1660  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800F1664  64 00 10 00 */	oris r0, r0, 0x1000
/* 800F1668  90 1E 05 74 */	stw r0, 0x574(r30)
/* 800F166C  38 60 00 01 */	li r3, 1
/* 800F1670  39 61 00 20 */	addi r11, r1, 0x20
/* 800F1674  48 27 0B B1 */	bl _restgpr_28
/* 800F1678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F167C  7C 08 03 A6 */	mtlr r0
/* 800F1680  38 21 00 20 */	addi r1, r1, 0x20
/* 800F1684  4E 80 00 20 */	blr 
