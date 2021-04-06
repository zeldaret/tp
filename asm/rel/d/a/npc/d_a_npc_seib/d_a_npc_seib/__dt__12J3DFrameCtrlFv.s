lbl_80AC6DB0:
/* 80AC6DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC6DB4  7C 08 02 A6 */	mflr r0
/* 80AC6DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC6DBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC6DC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AC6DC4  41 82 00 1C */	beq lbl_80AC6DE0
/* 80AC6DC8  3C A0 80 AC */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AC72EC@ha */
/* 80AC6DCC  38 05 72 EC */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AC72EC@l */
/* 80AC6DD0  90 1F 00 00 */	stw r0, 0(r31)
/* 80AC6DD4  7C 80 07 35 */	extsh. r0, r4
/* 80AC6DD8  40 81 00 08 */	ble lbl_80AC6DE0
/* 80AC6DDC  4B 80 7F 61 */	bl __dl__FPv
lbl_80AC6DE0:
/* 80AC6DE0  7F E3 FB 78 */	mr r3, r31
/* 80AC6DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC6DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC6DEC  7C 08 03 A6 */	mtlr r0
/* 80AC6DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC6DF4  4E 80 00 20 */	blr 
