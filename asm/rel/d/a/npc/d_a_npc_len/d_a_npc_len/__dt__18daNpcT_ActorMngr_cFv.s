lbl_80A67FA0:
/* 80A67FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A67FA4  7C 08 02 A6 */	mflr r0
/* 80A67FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A67FAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A67FB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A67FB4  41 82 00 1C */	beq lbl_80A67FD0
/* 80A67FB8  3C A0 80 A7 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80A67FBC  38 05 99 40 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80A67FC0  90 1F 00 04 */	stw r0, 4(r31)
/* 80A67FC4  7C 80 07 35 */	extsh. r0, r4
/* 80A67FC8  40 81 00 08 */	ble lbl_80A67FD0
/* 80A67FCC  4B 86 6D 70 */	b __dl__FPv
lbl_80A67FD0:
/* 80A67FD0  7F E3 FB 78 */	mr r3, r31
/* 80A67FD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A67FD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A67FDC  7C 08 03 A6 */	mtlr r0
/* 80A67FE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A67FE4  4E 80 00 20 */	blr 
