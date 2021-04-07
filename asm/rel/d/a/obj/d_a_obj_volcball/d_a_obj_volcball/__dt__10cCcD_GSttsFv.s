lbl_80D23C98:
/* 80D23C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D23C9C  7C 08 02 A6 */	mflr r0
/* 80D23CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D23CA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D23CA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D23CAC  41 82 00 1C */	beq lbl_80D23CC8
/* 80D23CB0  3C A0 80 D2 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80D2406C@ha */
/* 80D23CB4  38 05 40 6C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80D2406C@l */
/* 80D23CB8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D23CBC  7C 80 07 35 */	extsh. r0, r4
/* 80D23CC0  40 81 00 08 */	ble lbl_80D23CC8
/* 80D23CC4  4B 5A B0 79 */	bl __dl__FPv
lbl_80D23CC8:
/* 80D23CC8  7F E3 FB 78 */	mr r3, r31
/* 80D23CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D23CD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D23CD4  7C 08 03 A6 */	mtlr r0
/* 80D23CD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D23CDC  4E 80 00 20 */	blr 
