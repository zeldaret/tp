lbl_800837B0:
/* 800837B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800837B4  7C 08 02 A6 */	mflr r0
/* 800837B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800837BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800837C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800837C4  41 82 00 1C */	beq lbl_800837E0
/* 800837C8  3C A0 80 3B */	lis r5, __vt__10cCcD_GStts@ha /* 0x803AC31C@ha */
/* 800837CC  38 05 C3 1C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x803AC31C@l */
/* 800837D0  90 1F 00 00 */	stw r0, 0(r31)
/* 800837D4  7C 80 07 35 */	extsh. r0, r4
/* 800837D8  40 81 00 08 */	ble lbl_800837E0
/* 800837DC  48 24 B5 61 */	bl __dl__FPv
lbl_800837E0:
/* 800837E0  7F E3 FB 78 */	mr r3, r31
/* 800837E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800837E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800837EC  7C 08 03 A6 */	mtlr r0
/* 800837F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800837F4  4E 80 00 20 */	blr 
