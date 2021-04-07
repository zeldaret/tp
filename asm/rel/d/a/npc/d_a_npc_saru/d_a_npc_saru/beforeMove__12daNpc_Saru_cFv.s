lbl_80AC14E4:
/* 80AC14E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC14E8  7C 08 02 A6 */	mflr r0
/* 80AC14EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC14F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC14F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC14F8  7C 7E 1B 78 */	mr r30, r3
/* 80AC14FC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80AC1500  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80AC1504  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80AC1508  3B E0 00 00 */	li r31, 0
/* 80AC150C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AC1510  28 00 00 00 */	cmplwi r0, 0
/* 80AC1514  40 82 00 1C */	bne lbl_80AC1530
/* 80AC1518  4B 56 E5 3D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80AC151C  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1520  40 82 00 14 */	bne lbl_80AC1534
/* 80AC1524  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AC1528  28 00 00 00 */	cmplwi r0, 0
/* 80AC152C  41 82 00 08 */	beq lbl_80AC1534
lbl_80AC1530:
/* 80AC1530  3B E0 00 01 */	li r31, 1
lbl_80AC1534:
/* 80AC1534  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AC1538  41 82 00 10 */	beq lbl_80AC1548
/* 80AC153C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80AC1540  64 00 08 00 */	oris r0, r0, 0x800
/* 80AC1544  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80AC1548:
/* 80AC1548  3B E0 00 00 */	li r31, 0
/* 80AC154C  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80AC1550  28 00 00 00 */	cmplwi r0, 0
/* 80AC1554  40 82 00 1C */	bne lbl_80AC1570
/* 80AC1558  4B 56 E4 FD */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80AC155C  2C 03 00 00 */	cmpwi r3, 0
/* 80AC1560  40 82 00 14 */	bne lbl_80AC1574
/* 80AC1564  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AC1568  28 00 00 00 */	cmplwi r0, 0
/* 80AC156C  41 82 00 08 */	beq lbl_80AC1574
lbl_80AC1570:
/* 80AC1570  3B E0 00 01 */	li r31, 1
lbl_80AC1574:
/* 80AC1574  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AC1578  40 82 00 10 */	bne lbl_80AC1588
/* 80AC157C  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80AC1580  28 00 00 00 */	cmplwi r0, 0
/* 80AC1584  41 82 00 18 */	beq lbl_80AC159C
lbl_80AC1588:
/* 80AC1588  88 1E 0E 32 */	lbz r0, 0xe32(r30)
/* 80AC158C  28 00 00 00 */	cmplwi r0, 0
/* 80AC1590  40 82 00 0C */	bne lbl_80AC159C
/* 80AC1594  38 00 00 00 */	li r0, 0
/* 80AC1598  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AC159C:
/* 80AC159C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC15A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC15A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC15A8  7C 08 03 A6 */	mtlr r0
/* 80AC15AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC15B0  4E 80 00 20 */	blr 
