lbl_809BAD3C:
/* 809BAD3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BAD40  7C 08 02 A6 */	mflr r0
/* 809BAD44  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BAD48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BAD4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BAD50  41 82 00 1C */	beq lbl_809BAD6C
/* 809BAD54  3C A0 80 9C */	lis r5, __vt__8cM3dGPla@ha /* 0x809BB490@ha */
/* 809BAD58  38 05 B4 90 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x809BB490@l */
/* 809BAD5C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 809BAD60  7C 80 07 35 */	extsh. r0, r4
/* 809BAD64  40 81 00 08 */	ble lbl_809BAD6C
/* 809BAD68  4B 91 3F D5 */	bl __dl__FPv
lbl_809BAD6C:
/* 809BAD6C  7F E3 FB 78 */	mr r3, r31
/* 809BAD70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BAD74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BAD78  7C 08 03 A6 */	mtlr r0
/* 809BAD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 809BAD80  4E 80 00 20 */	blr 
