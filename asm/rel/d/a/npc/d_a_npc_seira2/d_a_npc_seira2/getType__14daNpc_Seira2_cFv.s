lbl_80AD171C:
/* 80AD171C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD1720  7C 08 02 A6 */	mflr r0
/* 80AD1724  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD1728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD172C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD1730  38 63 00 28 */	addi r3, r3, 0x28
/* 80AD1734  38 80 00 00 */	li r4, 0
/* 80AD1738  4B 56 14 79 */	bl isDarkClearLV__21dSv_player_status_b_cCFi
/* 80AD173C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1740  41 82 00 0C */	beq lbl_80AD174C
/* 80AD1744  38 60 00 03 */	li r3, 3
/* 80AD1748  48 00 00 44 */	b lbl_80AD178C
lbl_80AD174C:
/* 80AD174C  38 60 00 3D */	li r3, 0x3d
/* 80AD1750  4B 67 B3 5D */	bl daNpcT_chkEvtBit__FUl
/* 80AD1754  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1758  40 82 00 14 */	bne lbl_80AD176C
/* 80AD175C  38 60 03 16 */	li r3, 0x316
/* 80AD1760  4B 67 B3 4D */	bl daNpcT_chkEvtBit__FUl
/* 80AD1764  2C 03 00 00 */	cmpwi r3, 0
/* 80AD1768  41 82 00 0C */	beq lbl_80AD1774
lbl_80AD176C:
/* 80AD176C  38 60 00 03 */	li r3, 3
/* 80AD1770  48 00 00 1C */	b lbl_80AD178C
lbl_80AD1774:
/* 80AD1774  38 60 00 35 */	li r3, 0x35
/* 80AD1778  4B 67 B3 35 */	bl daNpcT_chkEvtBit__FUl
/* 80AD177C  20 03 00 00 */	subfic r0, r3, 0
/* 80AD1780  7C 60 01 10 */	subfe r3, r0, r0
/* 80AD1784  38 00 00 04 */	li r0, 4
/* 80AD1788  7C 03 18 38 */	and r3, r0, r3
lbl_80AD178C:
/* 80AD178C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD1790  7C 08 03 A6 */	mtlr r0
/* 80AD1794  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD1798  4E 80 00 20 */	blr 
