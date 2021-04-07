lbl_80C7124C:
/* 80C7124C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C71250  7C 08 02 A6 */	mflr r0
/* 80C71254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C71258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7125C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C71260  41 82 00 30 */	beq lbl_80C71290
/* 80C71264  3C 60 80 C7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C722CC@ha */
/* 80C71268  38 03 22 CC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C722CC@l */
/* 80C7126C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C71270  41 82 00 10 */	beq lbl_80C71280
/* 80C71274  3C 60 80 C7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C722C0@ha */
/* 80C71278  38 03 22 C0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C722C0@l */
/* 80C7127C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C71280:
/* 80C71280  7C 80 07 35 */	extsh. r0, r4
/* 80C71284  40 81 00 0C */	ble lbl_80C71290
/* 80C71288  7F E3 FB 78 */	mr r3, r31
/* 80C7128C  4B 65 DA B1 */	bl __dl__FPv
lbl_80C71290:
/* 80C71290  7F E3 FB 78 */	mr r3, r31
/* 80C71294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C71298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7129C  7C 08 03 A6 */	mtlr r0
/* 80C712A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C712A4  4E 80 00 20 */	blr 
