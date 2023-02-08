lbl_809D5F14:
/* 809D5F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D5F18  7C 08 02 A6 */	mflr r0
/* 809D5F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D5F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D5F24  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D5F28  41 82 00 1C */	beq lbl_809D5F44
/* 809D5F2C  3C A0 80 9D */	lis r5, __vt__8cM3dGAab@ha /* 0x809D71F8@ha */
/* 809D5F30  38 05 71 F8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x809D71F8@l */
/* 809D5F34  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809D5F38  7C 80 07 35 */	extsh. r0, r4
/* 809D5F3C  40 81 00 08 */	ble lbl_809D5F44
/* 809D5F40  4B 8F 8D FD */	bl __dl__FPv
lbl_809D5F44:
/* 809D5F44  7F E3 FB 78 */	mr r3, r31
/* 809D5F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D5F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D5F50  7C 08 03 A6 */	mtlr r0
/* 809D5F54  38 21 00 10 */	addi r1, r1, 0x10
/* 809D5F58  4E 80 00 20 */	blr 
