lbl_807E1CCC:
/* 807E1CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E1CD0  7C 08 02 A6 */	mflr r0
/* 807E1CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E1CD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E1CDC  93 C1 00 08 */	stw r30, 8(r1)
/* 807E1CE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 807E1CE4  7C 9F 23 78 */	mr r31, r4
/* 807E1CE8  41 82 00 28 */	beq lbl_807E1D10
/* 807E1CEC  3C 80 80 7D */	lis r4, __dt__4cXyzFv@ha /* 0x807D2B48@ha */
/* 807E1CF0  38 84 2B 48 */	addi r4, r4, __dt__4cXyzFv@l /* 0x807D2B48@l */
/* 807E1CF4  38 A0 00 0C */	li r5, 0xc
/* 807E1CF8  38 C0 00 10 */	li r6, 0x10
/* 807E1CFC  4B B7 FF ED */	bl __destroy_arr
/* 807E1D00  7F E0 07 35 */	extsh. r0, r31
/* 807E1D04  40 81 00 0C */	ble lbl_807E1D10
/* 807E1D08  7F C3 F3 78 */	mr r3, r30
/* 807E1D0C  4B AE D0 31 */	bl __dl__FPv
lbl_807E1D10:
/* 807E1D10  7F C3 F3 78 */	mr r3, r30
/* 807E1D14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E1D18  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E1D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E1D20  7C 08 03 A6 */	mtlr r0
/* 807E1D24  38 21 00 10 */	addi r1, r1, 0x10
/* 807E1D28  4E 80 00 20 */	blr 
