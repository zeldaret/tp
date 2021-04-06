lbl_807A61B4:
/* 807A61B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A61B8  7C 08 02 A6 */	mflr r0
/* 807A61BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A61C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A61C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807A61C8  41 82 00 1C */	beq lbl_807A61E4
/* 807A61CC  3C A0 80 7A */	lis r5, __vt__10cCcD_GStts@ha /* 0x807A6CE4@ha */
/* 807A61D0  38 05 6C E4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x807A6CE4@l */
/* 807A61D4  90 1F 00 00 */	stw r0, 0(r31)
/* 807A61D8  7C 80 07 35 */	extsh. r0, r4
/* 807A61DC  40 81 00 08 */	ble lbl_807A61E4
/* 807A61E0  4B B2 8B 5D */	bl __dl__FPv
lbl_807A61E4:
/* 807A61E4  7F E3 FB 78 */	mr r3, r31
/* 807A61E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A61EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A61F0  7C 08 03 A6 */	mtlr r0
/* 807A61F4  38 21 00 10 */	addi r1, r1, 0x10
/* 807A61F8  4E 80 00 20 */	blr 
