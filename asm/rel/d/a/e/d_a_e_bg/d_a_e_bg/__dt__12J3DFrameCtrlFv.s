lbl_80689BD0:
/* 80689BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80689BD4  7C 08 02 A6 */	mflr r0
/* 80689BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80689BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80689BE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80689BE4  41 82 00 1C */	beq lbl_80689C00
/* 80689BE8  3C A0 80 69 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8068A498@ha */
/* 80689BEC  38 05 A4 98 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8068A498@l */
/* 80689BF0  90 1F 00 00 */	stw r0, 0(r31)
/* 80689BF4  7C 80 07 35 */	extsh. r0, r4
/* 80689BF8  40 81 00 08 */	ble lbl_80689C00
/* 80689BFC  4B C4 51 41 */	bl __dl__FPv
lbl_80689C00:
/* 80689C00  7F E3 FB 78 */	mr r3, r31
/* 80689C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80689C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80689C0C  7C 08 03 A6 */	mtlr r0
/* 80689C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80689C14  4E 80 00 20 */	blr 
