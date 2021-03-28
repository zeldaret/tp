lbl_80CAC32C:
/* 80CAC32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAC330  7C 08 02 A6 */	mflr r0
/* 80CAC334  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAC338  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAC33C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAC340  41 82 00 1C */	beq lbl_80CAC35C
/* 80CAC344  3C A0 80 CB */	lis r5, __vt__10cCcD_GStts@ha
/* 80CAC348  38 05 C6 DC */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80CAC34C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CAC350  7C 80 07 35 */	extsh. r0, r4
/* 80CAC354  40 81 00 08 */	ble lbl_80CAC35C
/* 80CAC358  4B 62 29 E4 */	b __dl__FPv
lbl_80CAC35C:
/* 80CAC35C  7F E3 FB 78 */	mr r3, r31
/* 80CAC360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAC364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAC368  7C 08 03 A6 */	mtlr r0
/* 80CAC36C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAC370  4E 80 00 20 */	blr 
