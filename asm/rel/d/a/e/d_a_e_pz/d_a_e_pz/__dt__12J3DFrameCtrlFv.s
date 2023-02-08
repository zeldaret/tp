lbl_807600A4:
/* 807600A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807600A8  7C 08 02 A6 */	mflr r0
/* 807600AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807600B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807600B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807600B8  41 82 00 1C */	beq lbl_807600D4
/* 807600BC  3C A0 80 76 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80761D9C@ha */
/* 807600C0  38 05 1D 9C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80761D9C@l */
/* 807600C4  90 1F 00 00 */	stw r0, 0(r31)
/* 807600C8  7C 80 07 35 */	extsh. r0, r4
/* 807600CC  40 81 00 08 */	ble lbl_807600D4
/* 807600D0  4B B6 EC 6D */	bl __dl__FPv
lbl_807600D4:
/* 807600D4  7F E3 FB 78 */	mr r3, r31
/* 807600D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807600DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807600E0  7C 08 03 A6 */	mtlr r0
/* 807600E4  38 21 00 10 */	addi r1, r1, 0x10
/* 807600E8  4E 80 00 20 */	blr 
