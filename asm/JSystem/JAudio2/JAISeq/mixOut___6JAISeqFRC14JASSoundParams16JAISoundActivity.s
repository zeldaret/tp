lbl_802A1348:
/* 802A1348  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A134C  7C 08 02 A6 */	mflr r0
/* 802A1350  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A1354  39 61 00 30 */	addi r11, r1, 0x30
/* 802A1358  48 0C 0E 81 */	bl _savegpr_28
/* 802A135C  7C 7F 1B 78 */	mr r31, r3
/* 802A1360  7C 9D 23 78 */	mr r29, r4
/* 802A1364  7C BC 2B 78 */	mr r28, r5
/* 802A1368  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A136C  C0 3F 03 70 */	lfs f1, 0x370(r31)
/* 802A1370  4B FF 18 1D */	bl setTempoRate__8JASTrackFf
/* 802A1374  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A1378  38 80 00 00 */	li r4, 0
/* 802A137C  88 1C 00 00 */	lbz r0, 0(r28)
/* 802A1380  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802A1384  40 82 00 10 */	bne lbl_802A1394
/* 802A1388  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 802A138C  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802A1390  41 82 00 08 */	beq lbl_802A1398
lbl_802A1394:
/* 802A1394  38 80 00 01 */	li r4, 1
lbl_802A1398:
/* 802A1398  4B FF 14 09 */	bl mute__8JASTrackFb
/* 802A139C  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 802A13A0  38 80 00 00 */	li r4, 0
/* 802A13A4  88 1C 00 00 */	lbz r0, 0(r28)
/* 802A13A8  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802A13AC  40 82 00 10 */	bne lbl_802A13BC
/* 802A13B0  88 1F 00 1C */	lbz r0, 0x1c(r31)
/* 802A13B4  54 00 D7 FF */	rlwinm. r0, r0, 0x1a, 0x1f, 0x1f
/* 802A13B8  41 82 00 08 */	beq lbl_802A13C0
lbl_802A13BC:
/* 802A13BC  38 80 00 01 */	li r4, 1
lbl_802A13C0:
/* 802A13C0  4B FF 16 7D */	bl pause__8JASTrackFb
/* 802A13C4  C0 02 BD 98 */	lfs f0, lit_642(r2)
/* 802A13C8  D0 01 00 08 */	stfs f0, 8(r1)
/* 802A13CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802A13D0  C0 22 BD 9C */	lfs f1, lit_643(r2)
/* 802A13D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802A13D8  C0 02 BD A0 */	lfs f0, lit_644(r2)
/* 802A13DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802A13E0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 802A13E4  38 7F 00 3C */	addi r3, r31, 0x3c
/* 802A13E8  7F A4 EB 78 */	mr r4, r29
/* 802A13EC  38 A1 00 08 */	addi r5, r1, 8
/* 802A13F0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 802A13F4  48 00 0E 8D */	bl mixOutAll__14JAISoundParamsFRC14JASSoundParamsP14JASSoundParamsf
/* 802A13F8  80 7F 03 A8 */	lwz r3, 0x3a8(r31)
/* 802A13FC  28 03 00 00 */	cmplwi r3, 0
/* 802A1400  41 82 00 1C */	beq lbl_802A141C
/* 802A1404  7F E4 FB 78 */	mr r4, r31
/* 802A1408  38 A1 00 08 */	addi r5, r1, 8
/* 802A140C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A1410  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A1414  7D 89 03 A6 */	mtctr r12
/* 802A1418  4E 80 04 21 */	bctrl 
lbl_802A141C:
/* 802A141C  80 1F 00 08 */	lwz r0, 8(r31)
/* 802A1420  28 00 00 00 */	cmplwi r0, 0
/* 802A1424  41 82 00 54 */	beq lbl_802A1478
/* 802A1428  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802A142C  81 83 00 00 */	lwz r12, 0(r3)
/* 802A1430  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802A1434  7D 89 03 A6 */	mtctr r12
/* 802A1438  4E 80 04 21 */	bctrl 
/* 802A143C  7C 7E 1B 78 */	mr r30, r3
/* 802A1440  3B A0 00 00 */	li r29, 0
/* 802A1444  48 00 00 28 */	b lbl_802A146C
lbl_802A1448:
/* 802A1448  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 802A144C  38 81 00 08 */	addi r4, r1, 8
/* 802A1450  80 BF 00 08 */	lwz r5, 8(r31)
/* 802A1454  7F A6 EB 78 */	mr r6, r29
/* 802A1458  81 83 00 00 */	lwz r12, 0(r3)
/* 802A145C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802A1460  7D 89 03 A6 */	mtctr r12
/* 802A1464  4E 80 04 21 */	bctrl 
/* 802A1468  3B BD 00 01 */	addi r29, r29, 1
lbl_802A146C:
/* 802A146C  7C 1D F0 00 */	cmpw r29, r30
/* 802A1470  41 80 FF D8 */	blt lbl_802A1448
/* 802A1474  48 00 00 70 */	b lbl_802A14E4
lbl_802A1478:
/* 802A1478  C0 01 00 08 */	lfs f0, 8(r1)
/* 802A147C  D0 1F 03 80 */	stfs f0, 0x380(r31)
/* 802A1480  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 802A1484  D0 1F 03 84 */	stfs f0, 0x384(r31)
/* 802A1488  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802A148C  D0 1F 03 88 */	stfs f0, 0x388(r31)
/* 802A1490  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 802A1494  D0 1F 03 8C */	stfs f0, 0x38c(r31)
/* 802A1498  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 802A149C  D0 1F 03 90 */	stfs f0, 0x390(r31)
/* 802A14A0  3B 80 00 00 */	li r28, 0
/* 802A14A4  3B C0 00 00 */	li r30, 0
lbl_802A14A8:
/* 802A14A8  3B BE 02 F0 */	addi r29, r30, 0x2f0
/* 802A14AC  7C 1F E8 2E */	lwzx r0, r31, r29
/* 802A14B0  28 00 00 00 */	cmplwi r0, 0
/* 802A14B4  41 82 00 20 */	beq lbl_802A14D4
/* 802A14B8  7F E3 FB 78 */	mr r3, r31
/* 802A14BC  7F 84 E3 78 */	mr r4, r28
/* 802A14C0  48 00 02 71 */	bl getChildTrack__6JAISeqFi
/* 802A14C4  7C 64 1B 79 */	or. r4, r3, r3
/* 802A14C8  41 82 00 0C */	beq lbl_802A14D4
/* 802A14CC  7C 7F E8 2E */	lwzx r3, r31, r29
/* 802A14D0  48 00 16 59 */	bl mixOut__13JAISoundChildFP8JASTrack
lbl_802A14D4:
/* 802A14D4  3B 9C 00 01 */	addi r28, r28, 1
/* 802A14D8  2C 1C 00 20 */	cmpwi r28, 0x20
/* 802A14DC  3B DE 00 04 */	addi r30, r30, 4
/* 802A14E0  41 80 FF C8 */	blt lbl_802A14A8
lbl_802A14E4:
/* 802A14E4  39 61 00 30 */	addi r11, r1, 0x30
/* 802A14E8  48 0C 0D 3D */	bl _restgpr_28
/* 802A14EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A14F0  7C 08 03 A6 */	mtlr r0
/* 802A14F4  38 21 00 30 */	addi r1, r1, 0x30
/* 802A14F8  4E 80 00 20 */	blr 
