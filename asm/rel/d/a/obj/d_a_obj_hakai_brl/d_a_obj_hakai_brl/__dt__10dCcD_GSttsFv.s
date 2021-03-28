lbl_80C168BC:
/* 80C168BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C168C0  7C 08 02 A6 */	mflr r0
/* 80C168C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C168C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C168CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C168D0  41 82 00 30 */	beq lbl_80C16900
/* 80C168D4  3C 60 80 C1 */	lis r3, __vt__10dCcD_GStts@ha
/* 80C168D8  38 03 73 E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C168DC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C168E0  41 82 00 10 */	beq lbl_80C168F0
/* 80C168E4  3C 60 80 C1 */	lis r3, __vt__10cCcD_GStts@ha
/* 80C168E8  38 03 73 DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C168EC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C168F0:
/* 80C168F0  7C 80 07 35 */	extsh. r0, r4
/* 80C168F4  40 81 00 0C */	ble lbl_80C16900
/* 80C168F8  7F E3 FB 78 */	mr r3, r31
/* 80C168FC  4B 6B 84 40 */	b __dl__FPv
lbl_80C16900:
/* 80C16900  7F E3 FB 78 */	mr r3, r31
/* 80C16904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C16908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1690C  7C 08 03 A6 */	mtlr r0
/* 80C16910  38 21 00 10 */	addi r1, r1, 0x10
/* 80C16914  4E 80 00 20 */	blr 
