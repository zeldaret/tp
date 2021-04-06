lbl_806BDD38:
/* 806BDD38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806BDD3C  7C 08 02 A6 */	mflr r0
/* 806BDD40  90 01 00 14 */	stw r0, 0x14(r1)
/* 806BDD44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806BDD48  7C 7F 1B 79 */	or. r31, r3, r3
/* 806BDD4C  41 82 00 1C */	beq lbl_806BDD68
/* 806BDD50  3C A0 80 6C */	lis r5, __vt__8cM3dGSph@ha /* 0x806BE700@ha */
/* 806BDD54  38 05 E7 00 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x806BE700@l */
/* 806BDD58  90 1F 00 10 */	stw r0, 0x10(r31)
/* 806BDD5C  7C 80 07 35 */	extsh. r0, r4
/* 806BDD60  40 81 00 08 */	ble lbl_806BDD68
/* 806BDD64  4B C1 0F D9 */	bl __dl__FPv
lbl_806BDD68:
/* 806BDD68  7F E3 FB 78 */	mr r3, r31
/* 806BDD6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806BDD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806BDD74  7C 08 03 A6 */	mtlr r0
/* 806BDD78  38 21 00 10 */	addi r1, r1, 0x10
/* 806BDD7C  4E 80 00 20 */	blr 
