lbl_806CC8B4:
/* 806CC8B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806CC8B8  7C 08 02 A6 */	mflr r0
/* 806CC8BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806CC8C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806CC8C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806CC8C8  41 82 00 30 */	beq lbl_806CC8F8
/* 806CC8CC  3C 60 80 6D */	lis r3, __vt__10dCcD_GStts@ha /* 0x806CD2FC@ha */
/* 806CC8D0  38 03 D2 FC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806CD2FC@l */
/* 806CC8D4  90 1F 00 00 */	stw r0, 0(r31)
/* 806CC8D8  41 82 00 10 */	beq lbl_806CC8E8
/* 806CC8DC  3C 60 80 6D */	lis r3, __vt__10cCcD_GStts@ha /* 0x806CD2F0@ha */
/* 806CC8E0  38 03 D2 F0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806CD2F0@l */
/* 806CC8E4  90 1F 00 00 */	stw r0, 0(r31)
lbl_806CC8E8:
/* 806CC8E8  7C 80 07 35 */	extsh. r0, r4
/* 806CC8EC  40 81 00 0C */	ble lbl_806CC8F8
/* 806CC8F0  7F E3 FB 78 */	mr r3, r31
/* 806CC8F4  4B C0 24 49 */	bl __dl__FPv
lbl_806CC8F8:
/* 806CC8F8  7F E3 FB 78 */	mr r3, r31
/* 806CC8FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806CC900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CC904  7C 08 03 A6 */	mtlr r0
/* 806CC908  38 21 00 10 */	addi r1, r1, 0x10
/* 806CC90C  4E 80 00 20 */	blr 
