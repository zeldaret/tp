lbl_80D3C35C:
/* 80D3C35C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C360  7C 08 02 A6 */	mflr r0
/* 80D3C364  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3C36C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3C370  41 82 00 10 */	beq lbl_80D3C380
/* 80D3C374  7C 80 07 35 */	extsh. r0, r4
/* 80D3C378  40 81 00 08 */	ble lbl_80D3C380
/* 80D3C37C  4B 59 29 C1 */	bl __dl__FPv
lbl_80D3C380:
/* 80D3C380  7F E3 FB 78 */	mr r3, r31
/* 80D3C384  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3C388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C38C  7C 08 03 A6 */	mtlr r0
/* 80D3C390  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C394  4E 80 00 20 */	blr 
