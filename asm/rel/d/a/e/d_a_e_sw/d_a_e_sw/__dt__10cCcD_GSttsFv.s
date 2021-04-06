lbl_807AF828:
/* 807AF828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807AF82C  7C 08 02 A6 */	mflr r0
/* 807AF830  90 01 00 14 */	stw r0, 0x14(r1)
/* 807AF834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807AF838  7C 7F 1B 79 */	or. r31, r3, r3
/* 807AF83C  41 82 00 1C */	beq lbl_807AF858
/* 807AF840  3C A0 80 7B */	lis r5, __vt__10cCcD_GStts@ha /* 0x807B0150@ha */
/* 807AF844  38 05 01 50 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x807B0150@l */
/* 807AF848  90 1F 00 00 */	stw r0, 0(r31)
/* 807AF84C  7C 80 07 35 */	extsh. r0, r4
/* 807AF850  40 81 00 08 */	ble lbl_807AF858
/* 807AF854  4B B1 F4 E9 */	bl __dl__FPv
lbl_807AF858:
/* 807AF858  7F E3 FB 78 */	mr r3, r31
/* 807AF85C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807AF860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807AF864  7C 08 03 A6 */	mtlr r0
/* 807AF868  38 21 00 10 */	addi r1, r1, 0x10
/* 807AF86C  4E 80 00 20 */	blr 
