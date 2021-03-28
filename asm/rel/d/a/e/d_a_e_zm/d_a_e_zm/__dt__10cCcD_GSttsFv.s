lbl_808327B8:
/* 808327B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808327BC  7C 08 02 A6 */	mflr r0
/* 808327C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808327C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808327C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 808327CC  41 82 00 1C */	beq lbl_808327E8
/* 808327D0  3C A0 80 83 */	lis r5, __vt__10cCcD_GStts@ha
/* 808327D4  38 05 2F 0C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 808327D8  90 1F 00 00 */	stw r0, 0(r31)
/* 808327DC  7C 80 07 35 */	extsh. r0, r4
/* 808327E0  40 81 00 08 */	ble lbl_808327E8
/* 808327E4  4B A9 C5 58 */	b __dl__FPv
lbl_808327E8:
/* 808327E8  7F E3 FB 78 */	mr r3, r31
/* 808327EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808327F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808327F4  7C 08 03 A6 */	mtlr r0
/* 808327F8  38 21 00 10 */	addi r1, r1, 0x10
/* 808327FC  4E 80 00 20 */	blr 
