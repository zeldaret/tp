lbl_809A4CB0:
/* 809A4CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A4CB4  7C 08 02 A6 */	mflr r0
/* 809A4CB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A4CBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A4CC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A4CC4  41 82 00 1C */	beq lbl_809A4CE0
/* 809A4CC8  3C A0 80 9A */	lis r5, __vt__8cM3dGCyl@ha
/* 809A4CCC  38 05 52 2C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 809A4CD0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809A4CD4  7C 80 07 35 */	extsh. r0, r4
/* 809A4CD8  40 81 00 08 */	ble lbl_809A4CE0
/* 809A4CDC  4B 92 A0 60 */	b __dl__FPv
lbl_809A4CE0:
/* 809A4CE0  7F E3 FB 78 */	mr r3, r31
/* 809A4CE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A4CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A4CEC  7C 08 03 A6 */	mtlr r0
/* 809A4CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809A4CF4  4E 80 00 20 */	blr 
