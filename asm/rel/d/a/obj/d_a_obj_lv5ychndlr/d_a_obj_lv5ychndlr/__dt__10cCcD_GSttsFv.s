lbl_80C6E7C0:
/* 80C6E7C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6E7C4  7C 08 02 A6 */	mflr r0
/* 80C6E7C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6E7CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6E7D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6E7D4  41 82 00 1C */	beq lbl_80C6E7F0
/* 80C6E7D8  3C A0 80 C7 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C6EB08@ha */
/* 80C6E7DC  38 05 EB 08 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C6EB08@l */
/* 80C6E7E0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C6E7E4  7C 80 07 35 */	extsh. r0, r4
/* 80C6E7E8  40 81 00 08 */	ble lbl_80C6E7F0
/* 80C6E7EC  4B 66 05 51 */	bl __dl__FPv
lbl_80C6E7F0:
/* 80C6E7F0  7F E3 FB 78 */	mr r3, r31
/* 80C6E7F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6E7F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6E7FC  7C 08 03 A6 */	mtlr r0
/* 80C6E800  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6E804  4E 80 00 20 */	blr 
