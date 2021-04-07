lbl_80D5B310:
/* 80D5B310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B314  7C 08 02 A6 */	mflr r0
/* 80D5B318  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B31C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5B320  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5B324  41 82 00 1C */	beq lbl_80D5B340
/* 80D5B328  3C A0 80 D6 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80D5B86C@ha */
/* 80D5B32C  38 05 B8 6C */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80D5B86C@l */
/* 80D5B330  90 1F 00 00 */	stw r0, 0(r31)
/* 80D5B334  7C 80 07 35 */	extsh. r0, r4
/* 80D5B338  40 81 00 08 */	ble lbl_80D5B340
/* 80D5B33C  4B 57 3A 01 */	bl __dl__FPv
lbl_80D5B340:
/* 80D5B340  7F E3 FB 78 */	mr r3, r31
/* 80D5B344  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5B348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B34C  7C 08 03 A6 */	mtlr r0
/* 80D5B350  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B354  4E 80 00 20 */	blr 
