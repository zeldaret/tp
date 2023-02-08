lbl_809BB2E0:
/* 809BB2E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BB2E4  7C 08 02 A6 */	mflr r0
/* 809BB2E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BB2EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BB2F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BB2F4  41 82 00 10 */	beq lbl_809BB304
/* 809BB2F8  7C 80 07 35 */	extsh. r0, r4
/* 809BB2FC  40 81 00 08 */	ble lbl_809BB304
/* 809BB300  4B 91 3A 3D */	bl __dl__FPv
lbl_809BB304:
/* 809BB304  7F E3 FB 78 */	mr r3, r31
/* 809BB308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BB30C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BB310  7C 08 03 A6 */	mtlr r0
/* 809BB314  38 21 00 10 */	addi r1, r1, 0x10
/* 809BB318  4E 80 00 20 */	blr 
