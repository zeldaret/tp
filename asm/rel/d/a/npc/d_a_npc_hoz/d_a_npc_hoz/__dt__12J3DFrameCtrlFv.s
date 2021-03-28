lbl_80A05F74:
/* 80A05F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05F78  7C 08 02 A6 */	mflr r0
/* 80A05F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A05F80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A05F84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A05F88  41 82 00 1C */	beq lbl_80A05FA4
/* 80A05F8C  3C A0 80 A0 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80A05F90  38 05 77 80 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80A05F94  90 1F 00 00 */	stw r0, 0(r31)
/* 80A05F98  7C 80 07 35 */	extsh. r0, r4
/* 80A05F9C  40 81 00 08 */	ble lbl_80A05FA4
/* 80A05FA0  4B 8C 8D 9C */	b __dl__FPv
lbl_80A05FA4:
/* 80A05FA4  7F E3 FB 78 */	mr r3, r31
/* 80A05FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A05FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05FB0  7C 08 03 A6 */	mtlr r0
/* 80A05FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A05FB8  4E 80 00 20 */	blr 
