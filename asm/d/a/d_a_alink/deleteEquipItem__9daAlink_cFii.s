lbl_800C12DC:
/* 800C12DC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800C12E0  7C 08 02 A6 */	mflr r0
/* 800C12E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 800C12E8  39 61 00 50 */	addi r11, r1, 0x50
/* 800C12EC  48 2A 0E F1 */	bl _savegpr_29
/* 800C12F0  7C 7F 1B 78 */	mr r31, r3
/* 800C12F4  7C 9D 23 78 */	mr r29, r4
/* 800C12F8  2C 05 00 00 */	cmpwi r5, 0
/* 800C12FC  40 82 00 10 */	bne lbl_800C130C
/* 800C1300  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800C1304  28 00 01 47 */	cmplwi r0, 0x147
/* 800C1308  40 82 00 10 */	bne lbl_800C1318
lbl_800C130C:
/* 800C130C  7F E3 FB 78 */	mr r3, r31
/* 800C1310  48 04 F5 31 */	bl offKandelaarModel__9daAlink_cFv
/* 800C1314  48 00 00 28 */	b lbl_800C133C
lbl_800C1318:
/* 800C1318  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C131C  28 00 00 48 */	cmplwi r0, 0x48
/* 800C1320  40 82 00 1C */	bne lbl_800C133C
/* 800C1324  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800C1328  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800C132C  41 82 00 10 */	beq lbl_800C133C
/* 800C1330  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800C1334  38 80 00 02 */	li r4, 2
/* 800C1338  48 20 24 41 */	bl setKanteraState__14Z2CreatureLinkFUc
lbl_800C133C:
/* 800C133C  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C1340  28 00 00 FF */	cmplwi r0, 0xff
/* 800C1344  41 82 03 A8 */	beq lbl_800C16EC
/* 800C1348  28 00 01 0B */	cmplwi r0, 0x10b
/* 800C134C  40 82 00 08 */	bne lbl_800C1354
/* 800C1350  48 00 03 9C */	b lbl_800C16EC
lbl_800C1354:
/* 800C1354  83 DF 28 28 */	lwz r30, 0x2828(r31)
/* 800C1358  2C 1D 00 00 */	cmpwi r29, 0
/* 800C135C  41 82 00 84 */	beq lbl_800C13E0
/* 800C1360  28 00 01 03 */	cmplwi r0, 0x103
/* 800C1364  40 82 00 58 */	bne lbl_800C13BC
/* 800C1368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C136C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C1370  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800C1374  28 00 00 3F */	cmplwi r0, 0x3f
/* 800C1378  40 82 00 24 */	bne lbl_800C139C
/* 800C137C  7F E3 FB 78 */	mr r3, r31
/* 800C1380  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020057@ha */
/* 800C1384  38 84 00 57 */	addi r4, r4, 0x0057 /* 0x00020057@l */
/* 800C1388  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C138C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800C1390  7D 89 03 A6 */	mtctr r12
/* 800C1394  4E 80 04 21 */	bctrl 
/* 800C1398  48 00 00 48 */	b lbl_800C13E0
lbl_800C139C:
/* 800C139C  7F E3 FB 78 */	mr r3, r31
/* 800C13A0  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020001@ha */
/* 800C13A4  38 84 00 01 */	addi r4, r4, 0x0001 /* 0x00020001@l */
/* 800C13A8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C13AC  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800C13B0  7D 89 03 A6 */	mtctr r12
/* 800C13B4  4E 80 04 21 */	bctrl 
/* 800C13B8  48 00 00 28 */	b lbl_800C13E0
lbl_800C13BC:
/* 800C13BC  28 00 00 FF */	cmplwi r0, 0xff
/* 800C13C0  40 80 00 20 */	bge lbl_800C13E0
/* 800C13C4  7F E3 FB 78 */	mr r3, r31
/* 800C13C8  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002002D@ha */
/* 800C13CC  38 84 00 2D */	addi r4, r4, 0x002D /* 0x0002002D@l */
/* 800C13D0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C13D4  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800C13D8  7D 89 03 A6 */	mtctr r12
/* 800C13DC  4E 80 04 21 */	bctrl 
lbl_800C13E0:
/* 800C13E0  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C13E4  28 00 01 03 */	cmplwi r0, 0x103
/* 800C13E8  40 82 00 1C */	bne lbl_800C1404
/* 800C13EC  7F E3 FB 78 */	mr r3, r31
/* 800C13F0  48 00 FF 21 */	bl offSwordModel__9daAlink_cFv
/* 800C13F4  7F E3 FB 78 */	mr r3, r31
/* 800C13F8  38 80 00 01 */	li r4, 1
/* 800C13FC  48 01 B3 A1 */	bl stickArrowIncrement__9daAlink_cFi
/* 800C1400  48 00 00 C0 */	b lbl_800C14C0
lbl_800C1404:
/* 800C1404  28 00 01 02 */	cmplwi r0, 0x102
/* 800C1408  40 82 00 A8 */	bne lbl_800C14B0
/* 800C140C  28 1E 00 00 */	cmplwi r30, 0
/* 800C1410  41 82 00 B0 */	beq lbl_800C14C0
/* 800C1414  7F C3 F3 78 */	mr r3, r30
/* 800C1418  4B F5 B7 89 */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 800C141C  38 7F 34 E0 */	addi r3, r31, 0x34e0
/* 800C1420  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800C1424  7F E5 FB 78 */	mr r5, r31
/* 800C1428  4B F5 C8 41 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800C142C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C1430  41 82 00 90 */	beq lbl_800C14C0
/* 800C1434  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800C1438  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800C143C  90 01 00 30 */	stw r0, 0x30(r1)
/* 800C1440  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C1444  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C1448  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800C144C  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 800C1450  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 800C1454  38 84 00 14 */	addi r4, r4, 0x14
/* 800C1458  38 A1 00 20 */	addi r5, r1, 0x20
/* 800C145C  4B FB 32 E9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800C1460  38 61 00 14 */	addi r3, r1, 0x14
/* 800C1464  38 81 00 20 */	addi r4, r1, 0x20
/* 800C1468  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800C146C  48 1A 57 19 */	bl __ml__4cXyzCFf
/* 800C1470  38 61 00 08 */	addi r3, r1, 8
/* 800C1474  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 800C1478  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 800C147C  38 84 00 30 */	addi r4, r4, 0x30
/* 800C1480  38 A1 00 14 */	addi r5, r1, 0x14
/* 800C1484  48 1A 56 61 */	bl __pl__4cXyzCFRC3Vec
/* 800C1488  C0 01 00 08 */	lfs f0, 8(r1)
/* 800C148C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800C1490  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800C1494  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800C1498  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800C149C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800C14A0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800C14A4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800C14A8  90 01 00 30 */	stw r0, 0x30(r1)
/* 800C14AC  48 00 00 14 */	b lbl_800C14C0
lbl_800C14B0:
/* 800C14B0  28 1E 00 00 */	cmplwi r30, 0
/* 800C14B4  41 82 00 0C */	beq lbl_800C14C0
/* 800C14B8  7F C3 F3 78 */	mr r3, r30
/* 800C14BC  4B F5 87 C1 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_800C14C0:
/* 800C14C0  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800C14C4  28 03 00 42 */	cmplwi r3, 0x42
/* 800C14C8  40 82 00 18 */	bne lbl_800C14E0
/* 800C14CC  38 60 00 00 */	li r3, 0
/* 800C14D0  88 1F 2D 74 */	lbz r0, 0x2d74(r31)
/* 800C14D4  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 800C14D8  98 1F 2D 74 */	stb r0, 0x2d74(r31)
/* 800C14DC  48 00 00 18 */	b lbl_800C14F4
lbl_800C14E0:
/* 800C14E0  48 09 D6 D9 */	bl checkHookshotItem__9daPy_py_cFi
/* 800C14E4  2C 03 00 00 */	cmpwi r3, 0
/* 800C14E8  41 82 00 0C */	beq lbl_800C14F4
/* 800C14EC  7F E3 FB 78 */	mr r3, r31
/* 800C14F0  48 04 73 39 */	bl cancelHookshotCarry__9daAlink_cFv
lbl_800C14F4:
/* 800C14F4  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C14F8  28 00 00 40 */	cmplwi r0, 0x40
/* 800C14FC  41 82 00 0C */	beq lbl_800C1508
/* 800C1500  28 00 01 02 */	cmplwi r0, 0x102
/* 800C1504  40 82 00 14 */	bne lbl_800C1518
lbl_800C1508:
/* 800C1508  7F E3 FB 78 */	mr r3, r31
/* 800C150C  48 01 EF 35 */	bl checkBoomerangAnime__9daAlink_cCFv
/* 800C1510  2C 03 00 00 */	cmpwi r3, 0
/* 800C1514  40 82 00 A4 */	bne lbl_800C15B8
lbl_800C1518:
/* 800C1518  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C151C  28 00 00 46 */	cmplwi r0, 0x46
/* 800C1520  40 82 00 14 */	bne lbl_800C1534
/* 800C1524  7F E3 FB 78 */	mr r3, r31
/* 800C1528  48 02 00 09 */	bl checkCopyRodAnime__9daAlink_cCFv
/* 800C152C  2C 03 00 00 */	cmpwi r3, 0
/* 800C1530  40 82 00 88 */	bne lbl_800C15B8
lbl_800C1534:
/* 800C1534  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800C1538  48 09 D6 81 */	bl checkHookshotItem__9daPy_py_cFi
/* 800C153C  2C 03 00 00 */	cmpwi r3, 0
/* 800C1540  41 82 00 2C */	beq lbl_800C156C
/* 800C1544  38 60 00 00 */	li r3, 0
/* 800C1548  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800C154C  28 00 01 8D */	cmplwi r0, 0x18d
/* 800C1550  41 82 00 10 */	beq lbl_800C1560
/* 800C1554  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800C1558  28 00 01 8C */	cmplwi r0, 0x18c
/* 800C155C  40 82 00 08 */	bne lbl_800C1564
lbl_800C1560:
/* 800C1560  38 60 00 01 */	li r3, 1
lbl_800C1564:
/* 800C1564  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C1568  40 82 00 50 */	bne lbl_800C15B8
lbl_800C156C:
/* 800C156C  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800C1570  28 00 00 42 */	cmplwi r0, 0x42
/* 800C1574  40 82 00 20 */	bne lbl_800C1594
/* 800C1578  7F E3 FB 78 */	mr r3, r31
/* 800C157C  48 05 3B 69 */	bl checkIronBallAnime__9daAlink_cCFv
/* 800C1580  2C 03 00 00 */	cmpwi r3, 0
/* 800C1584  40 82 00 34 */	bne lbl_800C15B8
/* 800C1588  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800C158C  28 00 01 9C */	cmplwi r0, 0x19c
/* 800C1590  41 82 00 28 */	beq lbl_800C15B8
lbl_800C1594:
/* 800C1594  7F E3 FB 78 */	mr r3, r31
/* 800C1598  A0 9F 2F DC */	lhz r4, 0x2fdc(r31)
/* 800C159C  48 01 D1 E5 */	bl checkBowAndSlingItem__9daAlink_cFi
/* 800C15A0  2C 03 00 00 */	cmpwi r3, 0
/* 800C15A4  41 82 00 24 */	beq lbl_800C15C8
/* 800C15A8  7F E3 FB 78 */	mr r3, r31
/* 800C15AC  48 01 D4 3D */	bl checkBowAnime__9daAlink_cCFv
/* 800C15B0  2C 03 00 00 */	cmpwi r3, 0
/* 800C15B4  41 82 00 14 */	beq lbl_800C15C8
lbl_800C15B8:
/* 800C15B8  7F E3 FB 78 */	mr r3, r31
/* 800C15BC  38 80 00 02 */	li r4, 2
/* 800C15C0  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C15C4  4B FE C1 61 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800C15C8:
/* 800C15C8  80 7F 28 40 */	lwz r3, 0x2840(r31)
/* 800C15CC  28 03 00 00 */	cmplwi r3, 0
/* 800C15D0  41 82 00 0C */	beq lbl_800C15DC
/* 800C15D4  38 63 07 40 */	addi r3, r3, 0x740
/* 800C15D8  48 09 D7 25 */	bl clearData__16daPy_actorKeep_cFv
lbl_800C15DC:
/* 800C15DC  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800C15E0  48 09 D7 1D */	bl clearData__16daPy_actorKeep_cFv
/* 800C15E4  38 00 00 FF */	li r0, 0xff
/* 800C15E8  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800C15EC  38 00 00 00 */	li r0, 0
/* 800C15F0  90 1F 07 08 */	stw r0, 0x708(r31)
/* 800C15F4  90 1F 07 0C */	stw r0, 0x70c(r31)
/* 800C15F8  90 1F 07 10 */	stw r0, 0x710(r31)
/* 800C15FC  90 1F 07 14 */	stw r0, 0x714(r31)
/* 800C1600  80 1F 07 44 */	lwz r0, 0x744(r31)
/* 800C1604  28 00 00 00 */	cmplwi r0, 0
/* 800C1608  41 82 00 10 */	beq lbl_800C1618
/* 800C160C  38 7F 07 30 */	addi r3, r31, 0x730
/* 800C1610  38 80 00 00 */	li r4, 0
/* 800C1614  4B F4 C3 7D */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
lbl_800C1618:
/* 800C1618  80 1F 07 60 */	lwz r0, 0x760(r31)
/* 800C161C  28 00 00 00 */	cmplwi r0, 0
/* 800C1620  41 82 00 10 */	beq lbl_800C1630
/* 800C1624  38 7F 07 4C */	addi r3, r31, 0x74c
/* 800C1628  38 80 00 00 */	li r4, 0
/* 800C162C  4B F4 C3 65 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
lbl_800C1630:
/* 800C1630  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 800C1634  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 800C1638  B0 1F 21 D8 */	sth r0, 0x21d8(r31)
/* 800C163C  38 00 00 00 */	li r0, 0
/* 800C1640  90 1F 07 18 */	stw r0, 0x718(r31)
/* 800C1644  90 1F 07 1C */	stw r0, 0x71c(r31)
/* 800C1648  90 1F 07 20 */	stw r0, 0x720(r31)
/* 800C164C  90 1F 07 24 */	stw r0, 0x724(r31)
/* 800C1650  90 1F 07 28 */	stw r0, 0x728(r31)
/* 800C1654  90 1F 07 2C */	stw r0, 0x72c(r31)
/* 800C1658  90 1F 07 68 */	stw r0, 0x768(r31)
/* 800C165C  90 1F 07 70 */	stw r0, 0x770(r31)
/* 800C1660  90 1F 38 40 */	stw r0, 0x3840(r31)
/* 800C1664  90 1F 38 44 */	stw r0, 0x3844(r31)
/* 800C1668  90 1F 38 48 */	stw r0, 0x3848(r31)
/* 800C166C  90 1F 07 74 */	stw r0, 0x774(r31)
/* 800C1670  90 1F 07 78 */	stw r0, 0x778(r31)
/* 800C1674  90 1F 07 7C */	stw r0, 0x77c(r31)
/* 800C1678  90 1F 07 80 */	stw r0, 0x780(r31)
/* 800C167C  48 00 F8 E1 */	bl getSwordAtType__9daAlink_cFv
/* 800C1680  90 7F 12 3C */	stw r3, 0x123c(r31)
/* 800C1684  38 00 00 00 */	li r0, 0
/* 800C1688  90 1F 12 8C */	stw r0, 0x128c(r31)
/* 800C168C  80 1F 12 2C */	lwz r0, 0x122c(r31)
/* 800C1690  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800C1694  90 1F 12 2C */	stw r0, 0x122c(r31)
/* 800C1698  7F E3 FB 78 */	mr r3, r31
/* 800C169C  4B FE A4 8D */	bl cancelLockAt__9daAlink_cFv
/* 800C16A0  38 00 00 00 */	li r0, 0
/* 800C16A4  98 1F 12 A1 */	stb r0, 0x12a1(r31)
/* 800C16A8  93 FF 17 48 */	stw r31, 0x1748(r31)
/* 800C16AC  90 1F 2F 1C */	stw r0, 0x2f1c(r31)
/* 800C16B0  38 00 00 FF */	li r0, 0xff
/* 800C16B4  98 1F 2F 94 */	stb r0, 0x2f94(r31)
/* 800C16B8  98 1F 2F 95 */	stb r0, 0x2f95(r31)
/* 800C16BC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800C16C0  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 800C16C4  90 1F 05 78 */	stw r0, 0x578(r31)
/* 800C16C8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800C16CC  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800C16D0  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800C16D4  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 800C16D8  28 03 00 00 */	cmplwi r3, 0
/* 800C16DC  41 82 00 10 */	beq lbl_800C16EC
/* 800C16E0  48 1F C9 19 */	bl deleteObject__14Z2SoundObjBaseFv
/* 800C16E4  38 00 00 00 */	li r0, 0
/* 800C16E8  90 1F 07 6C */	stw r0, 0x76c(r31)
lbl_800C16EC:
/* 800C16EC  39 61 00 50 */	addi r11, r1, 0x50
/* 800C16F0  48 2A 0B 39 */	bl _restgpr_29
/* 800C16F4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800C16F8  7C 08 03 A6 */	mtlr r0
/* 800C16FC  38 21 00 50 */	addi r1, r1, 0x50
/* 800C1700  4E 80 00 20 */	blr 
