lbl_80BF1700:
/* 80BF1700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF1704  7C 08 02 A6 */	mflr r0
/* 80BF1708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF170C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF1710  7C 7F 1B 78 */	mr r31, r3
/* 80BF1714  A8 63 05 7C */	lha r3, 0x57c(r3)
/* 80BF1718  38 03 00 01 */	addi r0, r3, 1
/* 80BF171C  B0 1F 05 7C */	sth r0, 0x57c(r31)
/* 80BF1720  38 60 00 00 */	li r3, 0
/* 80BF1724  38 00 00 04 */	li r0, 4
/* 80BF1728  7C 09 03 A6 */	mtctr r0
lbl_80BF172C:
/* 80BF172C  38 A3 05 80 */	addi r5, r3, 0x580
/* 80BF1730  7C 9F 2A AE */	lhax r4, r31, r5
/* 80BF1734  2C 04 00 00 */	cmpwi r4, 0
/* 80BF1738  41 82 00 0C */	beq lbl_80BF1744
/* 80BF173C  38 04 FF FF */	addi r0, r4, -1
/* 80BF1740  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80BF1744:
/* 80BF1744  38 63 00 02 */	addi r3, r3, 2
/* 80BF1748  42 00 FF E4 */	bdnz lbl_80BF172C
/* 80BF174C  7F E3 FB 78 */	mr r3, r31
/* 80BF1750  4B FF FA 19 */	bl action__FP14obj_food_class
/* 80BF1754  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BF1758  7C 03 07 74 */	extsb r3, r0
/* 80BF175C  4B 43 B9 11 */	bl dComIfGp_getReverb__Fi
/* 80BF1760  7C 65 1B 78 */	mr r5, r3
/* 80BF1764  38 7F 05 98 */	addi r3, r31, 0x598
/* 80BF1768  38 80 00 00 */	li r4, 0
/* 80BF176C  81 9F 05 A8 */	lwz r12, 0x5a8(r31)
/* 80BF1770  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BF1774  7D 89 03 A6 */	mtctr r12
/* 80BF1778  4E 80 04 21 */	bctrl 
/* 80BF177C  38 60 00 01 */	li r3, 1
/* 80BF1780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF1784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF1788  7C 08 03 A6 */	mtlr r0
/* 80BF178C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF1790  4E 80 00 20 */	blr 
