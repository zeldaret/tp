lbl_80C7C4BC:
/* 80C7C4BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7C4C0  7C 08 02 A6 */	mflr r0
/* 80C7C4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7C4C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7C4CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7C4D0  41 82 00 1C */	beq lbl_80C7C4EC
/* 80C7C4D4  3C A0 80 C8 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C7C9C8@ha */
/* 80C7C4D8  38 05 C9 C8 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C7C9C8@l */
/* 80C7C4DC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7C4E0  7C 80 07 35 */	extsh. r0, r4
/* 80C7C4E4  40 81 00 08 */	ble lbl_80C7C4EC
/* 80C7C4E8  4B 65 28 55 */	bl __dl__FPv
lbl_80C7C4EC:
/* 80C7C4EC  7F E3 FB 78 */	mr r3, r31
/* 80C7C4F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7C4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7C4F8  7C 08 03 A6 */	mtlr r0
/* 80C7C4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7C500  4E 80 00 20 */	blr 
