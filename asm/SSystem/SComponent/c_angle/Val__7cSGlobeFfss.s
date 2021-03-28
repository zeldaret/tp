lbl_802719A4:
/* 802719A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802719A8  7C 08 02 A6 */	mflr r0
/* 802719AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802719B0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802719B4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802719B8  7C 7E 1B 78 */	mr r30, r3
/* 802719BC  7C BF 2B 78 */	mr r31, r5
/* 802719C0  D0 23 00 00 */	stfs f1, 0(r3)
/* 802719C4  38 61 00 0C */	addi r3, r1, 0xc
/* 802719C8  4B FF F5 D1 */	bl __ct__7cSAngleFs
/* 802719CC  A8 01 00 0C */	lha r0, 0xc(r1)
/* 802719D0  B0 1E 00 04 */	sth r0, 4(r30)
/* 802719D4  38 61 00 08 */	addi r3, r1, 8
/* 802719D8  7F E4 FB 78 */	mr r4, r31
/* 802719DC  4B FF F5 BD */	bl __ct__7cSAngleFs
/* 802719E0  A8 01 00 08 */	lha r0, 8(r1)
/* 802719E4  B0 1E 00 06 */	sth r0, 6(r30)
/* 802719E8  7F C3 F3 78 */	mr r3, r30
/* 802719EC  4B FF FE C5 */	bl Formal__7cSGlobeFv
/* 802719F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802719F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802719F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802719FC  7C 08 03 A6 */	mtlr r0
/* 80271A00  38 21 00 20 */	addi r1, r1, 0x20
/* 80271A04  4E 80 00 20 */	blr 
