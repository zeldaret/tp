lbl_80D248AC:
/* 80D248AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D248B0  7C 08 02 A6 */	mflr r0
/* 80D248B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D248B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D248BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D248C0  41 82 00 1C */	beq lbl_80D248DC
/* 80D248C4  3C A0 80 D2 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80D26E74@ha */
/* 80D248C8  38 05 6E 74 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80D26E74@l */
/* 80D248CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D248D0  7C 80 07 35 */	extsh. r0, r4
/* 80D248D4  40 81 00 08 */	ble lbl_80D248DC
/* 80D248D8  4B 5A A4 65 */	bl __dl__FPv
lbl_80D248DC:
/* 80D248DC  7F E3 FB 78 */	mr r3, r31
/* 80D248E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D248E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D248E8  7C 08 03 A6 */	mtlr r0
/* 80D248EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D248F0  4E 80 00 20 */	blr 
