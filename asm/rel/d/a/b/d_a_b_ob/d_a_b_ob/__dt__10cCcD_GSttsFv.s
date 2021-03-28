lbl_8061A7C0:
/* 8061A7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061A7C4  7C 08 02 A6 */	mflr r0
/* 8061A7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061A7CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061A7D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8061A7D4  41 82 00 1C */	beq lbl_8061A7F0
/* 8061A7D8  3C A0 80 62 */	lis r5, __vt__10cCcD_GStts@ha
/* 8061A7DC  38 05 B4 2C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 8061A7E0  90 1F 00 00 */	stw r0, 0(r31)
/* 8061A7E4  7C 80 07 35 */	extsh. r0, r4
/* 8061A7E8  40 81 00 08 */	ble lbl_8061A7F0
/* 8061A7EC  4B CB 45 50 */	b __dl__FPv
lbl_8061A7F0:
/* 8061A7F0  7F E3 FB 78 */	mr r3, r31
/* 8061A7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061A7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061A7FC  7C 08 03 A6 */	mtlr r0
/* 8061A800  38 21 00 10 */	addi r1, r1, 0x10
/* 8061A804  4E 80 00 20 */	blr 
