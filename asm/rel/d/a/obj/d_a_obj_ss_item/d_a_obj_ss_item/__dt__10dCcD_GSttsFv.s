lbl_80CE71CC:
/* 80CE71CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE71D0  7C 08 02 A6 */	mflr r0
/* 80CE71D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE71D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE71DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE71E0  41 82 00 30 */	beq lbl_80CE7210
/* 80CE71E4  3C 60 80 CF */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CE8034@ha */
/* 80CE71E8  38 03 80 34 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CE8034@l */
/* 80CE71EC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE71F0  41 82 00 10 */	beq lbl_80CE7200
/* 80CE71F4  3C 60 80 CF */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CE8028@ha */
/* 80CE71F8  38 03 80 28 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CE8028@l */
/* 80CE71FC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CE7200:
/* 80CE7200  7C 80 07 35 */	extsh. r0, r4
/* 80CE7204  40 81 00 0C */	ble lbl_80CE7210
/* 80CE7208  7F E3 FB 78 */	mr r3, r31
/* 80CE720C  4B 5E 7B 31 */	bl __dl__FPv
lbl_80CE7210:
/* 80CE7210  7F E3 FB 78 */	mr r3, r31
/* 80CE7214  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE7218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE721C  7C 08 03 A6 */	mtlr r0
/* 80CE7220  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE7224  4E 80 00 20 */	blr 
