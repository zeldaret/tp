lbl_80261394:
/* 80261394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80261398  7C 08 02 A6 */	mflr r0
/* 8026139C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802613A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802613A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802613A8  41 82 00 1C */	beq lbl_802613C4
/* 802613AC  3C A0 80 3C */	lis r5, __vt__21dDlst_TimerScrnDraw_c@ha
/* 802613B0  38 05 34 20 */	addi r0, r5, __vt__21dDlst_TimerScrnDraw_c@l
/* 802613B4  90 1F 00 00 */	stw r0, 0(r31)
/* 802613B8  7C 80 07 35 */	extsh. r0, r4
/* 802613BC  40 81 00 08 */	ble lbl_802613C4
/* 802613C0  48 06 D9 7D */	bl __dl__FPv
lbl_802613C4:
/* 802613C4  7F E3 FB 78 */	mr r3, r31
/* 802613C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802613CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802613D0  7C 08 03 A6 */	mtlr r0
/* 802613D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802613D8  4E 80 00 20 */	blr 
