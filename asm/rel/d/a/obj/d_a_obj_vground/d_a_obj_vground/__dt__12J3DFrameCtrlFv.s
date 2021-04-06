lbl_80D216AC:
/* 80D216AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D216B0  7C 08 02 A6 */	mflr r0
/* 80D216B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D216B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D216BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D216C0  41 82 00 1C */	beq lbl_80D216DC
/* 80D216C4  3C A0 80 D2 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80D21A78@ha */
/* 80D216C8  38 05 1A 78 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80D21A78@l */
/* 80D216CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D216D0  7C 80 07 35 */	extsh. r0, r4
/* 80D216D4  40 81 00 08 */	ble lbl_80D216DC
/* 80D216D8  4B 5A D6 65 */	bl __dl__FPv
lbl_80D216DC:
/* 80D216DC  7F E3 FB 78 */	mr r3, r31
/* 80D216E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D216E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D216E8  7C 08 03 A6 */	mtlr r0
/* 80D216EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D216F0  4E 80 00 20 */	blr 
