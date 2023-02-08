lbl_80AE1770:
/* 80AE1770  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE1774  7C 08 02 A6 */	mflr r0
/* 80AE1778  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE177C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE1780  7C 7F 1B 78 */	mr r31, r3
/* 80AE1784  3C 80 80 AE */	lis r4, __vt__18daNpcF_ActorMngr_c@ha /* 0x80AE2C74@ha */
/* 80AE1788  38 04 2C 74 */	addi r0, r4, __vt__18daNpcF_ActorMngr_c@l /* 0x80AE2C74@l */
/* 80AE178C  90 03 00 04 */	stw r0, 4(r3)
/* 80AE1790  4B 66 EF 21 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80AE1794  7F E3 FB 78 */	mr r3, r31
/* 80AE1798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE179C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE17A0  7C 08 03 A6 */	mtlr r0
/* 80AE17A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE17A8  4E 80 00 20 */	blr 
