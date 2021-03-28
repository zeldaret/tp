lbl_80D35C9C:
/* 80D35C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D35CA0  7C 08 02 A6 */	mflr r0
/* 80D35CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D35CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D35CAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D35CB0  41 82 00 1C */	beq lbl_80D35CCC
/* 80D35CB4  3C A0 80 D3 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80D35CB8  38 05 61 D8 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80D35CBC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D35CC0  7C 80 07 35 */	extsh. r0, r4
/* 80D35CC4  40 81 00 08 */	ble lbl_80D35CCC
/* 80D35CC8  4B 59 90 74 */	b __dl__FPv
lbl_80D35CCC:
/* 80D35CCC  7F E3 FB 78 */	mr r3, r31
/* 80D35CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D35CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D35CD8  7C 08 03 A6 */	mtlr r0
/* 80D35CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D35CE0  4E 80 00 20 */	blr 
