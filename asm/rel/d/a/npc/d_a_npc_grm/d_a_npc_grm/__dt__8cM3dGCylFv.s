lbl_809D5ECC:
/* 809D5ECC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D5ED0  7C 08 02 A6 */	mflr r0
/* 809D5ED4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D5ED8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D5EDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D5EE0  41 82 00 1C */	beq lbl_809D5EFC
/* 809D5EE4  3C A0 80 9D */	lis r5, __vt__8cM3dGCyl@ha /* 0x809D7204@ha */
/* 809D5EE8  38 05 72 04 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x809D7204@l */
/* 809D5EEC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809D5EF0  7C 80 07 35 */	extsh. r0, r4
/* 809D5EF4  40 81 00 08 */	ble lbl_809D5EFC
/* 809D5EF8  4B 8F 8E 45 */	bl __dl__FPv
lbl_809D5EFC:
/* 809D5EFC  7F E3 FB 78 */	mr r3, r31
/* 809D5F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D5F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D5F08  7C 08 03 A6 */	mtlr r0
/* 809D5F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D5F10  4E 80 00 20 */	blr 
