lbl_809D8F08:
/* 809D8F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D8F0C  7C 08 02 A6 */	mflr r0
/* 809D8F10  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D8F14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D8F18  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D8F1C  41 82 00 1C */	beq lbl_809D8F38
/* 809D8F20  3C A0 80 9E */	lis r5, __vt__8cM3dGCyl@ha /* 0x809DA36C@ha */
/* 809D8F24  38 05 A3 6C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x809DA36C@l */
/* 809D8F28  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809D8F2C  7C 80 07 35 */	extsh. r0, r4
/* 809D8F30  40 81 00 08 */	ble lbl_809D8F38
/* 809D8F34  4B 8F 5E 09 */	bl __dl__FPv
lbl_809D8F38:
/* 809D8F38  7F E3 FB 78 */	mr r3, r31
/* 809D8F3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D8F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D8F44  7C 08 03 A6 */	mtlr r0
/* 809D8F48  38 21 00 10 */	addi r1, r1, 0x10
/* 809D8F4C  4E 80 00 20 */	blr 
