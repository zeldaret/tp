lbl_802E8648:
/* 802E8648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E864C  7C 08 02 A6 */	mflr r0
/* 802E8650  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E8654  7C 64 1B 78 */	mr r4, r3
/* 802E8658  3C 60 80 3A */	lis r3, JUTConsole__stringBase0@ha /* 0x8039D9A8@ha */
/* 802E865C  38 63 D9 A8 */	addi r3, r3, JUTConsole__stringBase0@l /* 0x8039D9A8@l */
/* 802E8660  38 63 00 60 */	addi r3, r3, 0x60
/* 802E8664  4C C6 31 82 */	crclr 6
/* 802E8668  4B FF FF 61 */	bl JUTReportConsole_f
/* 802E866C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E8670  7C 08 03 A6 */	mtlr r0
/* 802E8674  38 21 00 10 */	addi r1, r1, 0x10
/* 802E8678  4E 80 00 20 */	blr 
