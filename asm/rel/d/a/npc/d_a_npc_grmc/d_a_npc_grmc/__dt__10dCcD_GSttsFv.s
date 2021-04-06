lbl_809D97E0:
/* 809D97E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D97E4  7C 08 02 A6 */	mflr r0
/* 809D97E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D97EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D97F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D97F4  41 82 00 30 */	beq lbl_809D9824
/* 809D97F8  3C 60 80 9E */	lis r3, __vt__10dCcD_GStts@ha /* 0x809DA330@ha */
/* 809D97FC  38 03 A3 30 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809DA330@l */
/* 809D9800  90 1F 00 00 */	stw r0, 0(r31)
/* 809D9804  41 82 00 10 */	beq lbl_809D9814
/* 809D9808  3C 60 80 9E */	lis r3, __vt__10cCcD_GStts@ha /* 0x809DA324@ha */
/* 809D980C  38 03 A3 24 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809DA324@l */
/* 809D9810  90 1F 00 00 */	stw r0, 0(r31)
lbl_809D9814:
/* 809D9814  7C 80 07 35 */	extsh. r0, r4
/* 809D9818  40 81 00 0C */	ble lbl_809D9824
/* 809D981C  7F E3 FB 78 */	mr r3, r31
/* 809D9820  4B 8F 55 1D */	bl __dl__FPv
lbl_809D9824:
/* 809D9824  7F E3 FB 78 */	mr r3, r31
/* 809D9828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D982C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D9830  7C 08 03 A6 */	mtlr r0
/* 809D9834  38 21 00 10 */	addi r1, r1, 0x10
/* 809D9838  4E 80 00 20 */	blr 
