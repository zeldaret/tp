lbl_80AE1728:
/* 80AE1728  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE172C  7C 08 02 A6 */	mflr r0
/* 80AE1730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE1734  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE1738  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AE173C  41 82 00 1C */	beq lbl_80AE1758
/* 80AE1740  3C A0 80 AE */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 80AE1744  38 05 2C 74 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 80AE1748  90 1F 00 04 */	stw r0, 4(r31)
/* 80AE174C  7C 80 07 35 */	extsh. r0, r4
/* 80AE1750  40 81 00 08 */	ble lbl_80AE1758
/* 80AE1754  4B 7E D5 E8 */	b __dl__FPv
lbl_80AE1758:
/* 80AE1758  7F E3 FB 78 */	mr r3, r31
/* 80AE175C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE1760  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE1764  7C 08 03 A6 */	mtlr r0
/* 80AE1768  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE176C  4E 80 00 20 */	blr 
