lbl_80AA95E0:
/* 80AA95E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA95E4  7C 08 02 A6 */	mflr r0
/* 80AA95E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA95EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA95F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA95F4  41 82 00 10 */	beq lbl_80AA9604
/* 80AA95F8  7C 80 07 35 */	extsh. r0, r4
/* 80AA95FC  40 81 00 08 */	ble lbl_80AA9604
/* 80AA9600  4B 82 57 3C */	b __dl__FPv
lbl_80AA9604:
/* 80AA9604  7F E3 FB 78 */	mr r3, r31
/* 80AA9608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA960C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA9610  7C 08 03 A6 */	mtlr r0
/* 80AA9614  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA9618  4E 80 00 20 */	blr 
