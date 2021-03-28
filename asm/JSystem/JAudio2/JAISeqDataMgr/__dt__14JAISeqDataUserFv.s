lbl_802A1774:
/* 802A1774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A1778  7C 08 02 A6 */	mflr r0
/* 802A177C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A1784  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A1788  41 82 00 1C */	beq lbl_802A17A4
/* 802A178C  3C A0 80 3D */	lis r5, __vt__14JAISeqDataUser@ha
/* 802A1790  38 05 99 40 */	addi r0, r5, __vt__14JAISeqDataUser@l
/* 802A1794  90 1F 00 00 */	stw r0, 0(r31)
/* 802A1798  7C 80 07 35 */	extsh. r0, r4
/* 802A179C  40 81 00 08 */	ble lbl_802A17A4
/* 802A17A0  48 02 D5 9D */	bl __dl__FPv
lbl_802A17A4:
/* 802A17A4  7F E3 FB 78 */	mr r3, r31
/* 802A17A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A17AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A17B0  7C 08 03 A6 */	mtlr r0
/* 802A17B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A17B8  4E 80 00 20 */	blr 
