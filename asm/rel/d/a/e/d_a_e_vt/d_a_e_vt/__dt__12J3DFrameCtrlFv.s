lbl_807CD600:
/* 807CD600  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CD604  7C 08 02 A6 */	mflr r0
/* 807CD608  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CD60C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CD610  7C 7F 1B 79 */	or. r31, r3, r3
/* 807CD614  41 82 00 1C */	beq lbl_807CD630
/* 807CD618  3C A0 80 7D */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x807CF43C@ha */
/* 807CD61C  38 05 F4 3C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x807CF43C@l */
/* 807CD620  90 1F 00 00 */	stw r0, 0(r31)
/* 807CD624  7C 80 07 35 */	extsh. r0, r4
/* 807CD628  40 81 00 08 */	ble lbl_807CD630
/* 807CD62C  4B B0 17 11 */	bl __dl__FPv
lbl_807CD630:
/* 807CD630  7F E3 FB 78 */	mr r3, r31
/* 807CD634  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CD638  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CD63C  7C 08 03 A6 */	mtlr r0
/* 807CD640  38 21 00 10 */	addi r1, r1, 0x10
/* 807CD644  4E 80 00 20 */	blr 
