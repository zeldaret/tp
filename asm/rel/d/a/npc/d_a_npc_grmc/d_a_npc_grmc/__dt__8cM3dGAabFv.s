lbl_809D8F50:
/* 809D8F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D8F54  7C 08 02 A6 */	mflr r0
/* 809D8F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D8F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D8F60  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D8F64  41 82 00 1C */	beq lbl_809D8F80
/* 809D8F68  3C A0 80 9E */	lis r5, __vt__8cM3dGAab@ha /* 0x809DA360@ha */
/* 809D8F6C  38 05 A3 60 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x809DA360@l */
/* 809D8F70  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809D8F74  7C 80 07 35 */	extsh. r0, r4
/* 809D8F78  40 81 00 08 */	ble lbl_809D8F80
/* 809D8F7C  4B 8F 5D C1 */	bl __dl__FPv
lbl_809D8F80:
/* 809D8F80  7F E3 FB 78 */	mr r3, r31
/* 809D8F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D8F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D8F8C  7C 08 03 A6 */	mtlr r0
/* 809D8F90  38 21 00 10 */	addi r1, r1, 0x10
/* 809D8F94  4E 80 00 20 */	blr 
