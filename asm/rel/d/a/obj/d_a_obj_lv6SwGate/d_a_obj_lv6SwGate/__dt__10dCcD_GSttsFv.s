lbl_80C746C4:
/* 80C746C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C746C8  7C 08 02 A6 */	mflr r0
/* 80C746CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C746D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C746D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C746D8  41 82 00 30 */	beq lbl_80C74708
/* 80C746DC  3C 60 80 C7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C756D0@ha */
/* 80C746E0  38 03 56 D0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C756D0@l */
/* 80C746E4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C746E8  41 82 00 10 */	beq lbl_80C746F8
/* 80C746EC  3C 60 80 C7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C756C4@ha */
/* 80C746F0  38 03 56 C4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C756C4@l */
/* 80C746F4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C746F8:
/* 80C746F8  7C 80 07 35 */	extsh. r0, r4
/* 80C746FC  40 81 00 0C */	ble lbl_80C74708
/* 80C74700  7F E3 FB 78 */	mr r3, r31
/* 80C74704  4B 65 A6 39 */	bl __dl__FPv
lbl_80C74708:
/* 80C74708  7F E3 FB 78 */	mr r3, r31
/* 80C7470C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C74710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C74714  7C 08 03 A6 */	mtlr r0
/* 80C74718  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7471C  4E 80 00 20 */	blr 
