lbl_806A63B8:
/* 806A63B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806A63BC  7C 08 02 A6 */	mflr r0
/* 806A63C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806A63C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806A63C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806A63CC  41 82 00 1C */	beq lbl_806A63E8
/* 806A63D0  3C A0 80 6A */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x806A7494@ha */
/* 806A63D4  38 05 74 94 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x806A7494@l */
/* 806A63D8  90 1F 00 00 */	stw r0, 0(r31)
/* 806A63DC  7C 80 07 35 */	extsh. r0, r4
/* 806A63E0  40 81 00 08 */	ble lbl_806A63E8
/* 806A63E4  4B C2 89 59 */	bl __dl__FPv
lbl_806A63E8:
/* 806A63E8  7F E3 FB 78 */	mr r3, r31
/* 806A63EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806A63F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806A63F4  7C 08 03 A6 */	mtlr r0
/* 806A63F8  38 21 00 10 */	addi r1, r1, 0x10
/* 806A63FC  4E 80 00 20 */	blr 
