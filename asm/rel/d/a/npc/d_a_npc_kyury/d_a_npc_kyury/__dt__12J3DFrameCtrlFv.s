lbl_80A63258:
/* 80A63258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6325C  7C 08 02 A6 */	mflr r0
/* 80A63260  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A63264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A63268  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6326C  41 82 00 1C */	beq lbl_80A63288
/* 80A63270  3C A0 80 A6 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80A640AC@ha */
/* 80A63274  38 05 40 AC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80A640AC@l */
/* 80A63278  90 1F 00 00 */	stw r0, 0(r31)
/* 80A6327C  7C 80 07 35 */	extsh. r0, r4
/* 80A63280  40 81 00 08 */	ble lbl_80A63288
/* 80A63284  4B 86 BA B9 */	bl __dl__FPv
lbl_80A63288:
/* 80A63288  7F E3 FB 78 */	mr r3, r31
/* 80A6328C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A63290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A63294  7C 08 03 A6 */	mtlr r0
/* 80A63298  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6329C  4E 80 00 20 */	blr 
