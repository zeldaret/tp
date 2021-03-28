lbl_80B708CC:
/* 80B708CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B708D0  7C 08 02 A6 */	mflr r0
/* 80B708D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B708D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B708DC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B708E0  41 82 00 1C */	beq lbl_80B708FC
/* 80B708E4  3C A0 80 B7 */	lis r5, __vt__10cCcD_GStts@ha
/* 80B708E8  38 05 1D 74 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B708EC  90 1F 00 00 */	stw r0, 0(r31)
/* 80B708F0  7C 80 07 35 */	extsh. r0, r4
/* 80B708F4  40 81 00 08 */	ble lbl_80B708FC
/* 80B708F8  4B 75 E4 44 */	b __dl__FPv
lbl_80B708FC:
/* 80B708FC  7F E3 FB 78 */	mr r3, r31
/* 80B70900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B70904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B70908  7C 08 03 A6 */	mtlr r0
/* 80B7090C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B70910  4E 80 00 20 */	blr 
