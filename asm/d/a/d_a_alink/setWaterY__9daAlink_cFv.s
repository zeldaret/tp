lbl_800B14B4:
/* 800B14B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B14B8  7C 08 02 A6 */	mflr r0
/* 800B14BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B14C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B14C4  7C 7F 1B 78 */	mr r31, r3
/* 800B14C8  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800B14CC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800B14D0  41 82 00 4C */	beq lbl_800B151C
/* 800B14D4  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B14D8  60 00 00 80 */	ori r0, r0, 0x80
/* 800B14DC  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800B14E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B14E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B14E8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800B14EC  38 9F 1A F0 */	addi r4, r31, 0x1af0
/* 800B14F0  4B FC 39 61 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 800B14F4  98 7F 2F BC */	stb r3, 0x2fbc(r31)
/* 800B14F8  C0 1F 1B 3C */	lfs f0, 0x1b3c(r31)
/* 800B14FC  D0 1F 33 B4 */	stfs f0, 0x33b4(r31)
/* 800B1500  88 1F 2F BC */	lbz r0, 0x2fbc(r31)
/* 800B1504  28 00 00 06 */	cmplwi r0, 6
/* 800B1508  41 82 00 30 */	beq lbl_800B1538
/* 800B150C  7F E3 FB 78 */	mr r3, r31
/* 800B1510  C0 3F 33 B4 */	lfs f1, 0x33b4(r31)
/* 800B1514  48 05 F2 A9 */	bl checkWaterInKandelaar__9daAlink_cFf
/* 800B1518  48 00 00 20 */	b lbl_800B1538
lbl_800B151C:
/* 800B151C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B1520  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 800B1524  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800B1528  38 00 00 10 */	li r0, 0x10
/* 800B152C  98 1F 2F BC */	stb r0, 0x2fbc(r31)
/* 800B1530  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800B1534  D0 1F 33 B4 */	stfs f0, 0x33b4(r31)
lbl_800B1538:
/* 800B1538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B153C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B1540  7C 08 03 A6 */	mtlr r0
/* 800B1544  38 21 00 10 */	addi r1, r1, 0x10
/* 800B1548  4E 80 00 20 */	blr 
