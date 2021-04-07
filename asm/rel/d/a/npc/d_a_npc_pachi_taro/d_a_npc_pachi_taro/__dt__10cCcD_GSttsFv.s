lbl_80AA0310:
/* 80AA0310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA0314  7C 08 02 A6 */	mflr r0
/* 80AA0318  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA031C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0320  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA0324  41 82 00 1C */	beq lbl_80AA0340
/* 80AA0328  3C A0 80 AA */	lis r5, __vt__10cCcD_GStts@ha /* 0x80AA2A5C@ha */
/* 80AA032C  38 05 2A 5C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80AA2A5C@l */
/* 80AA0330  90 1F 00 00 */	stw r0, 0(r31)
/* 80AA0334  7C 80 07 35 */	extsh. r0, r4
/* 80AA0338  40 81 00 08 */	ble lbl_80AA0340
/* 80AA033C  4B 82 EA 01 */	bl __dl__FPv
lbl_80AA0340:
/* 80AA0340  7F E3 FB 78 */	mr r3, r31
/* 80AA0344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA0348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA034C  7C 08 03 A6 */	mtlr r0
/* 80AA0350  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA0354  4E 80 00 20 */	blr 
