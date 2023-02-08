lbl_80AF2590:
/* 80AF2590  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF2594  7C 08 02 A6 */	mflr r0
/* 80AF2598  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF259C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF25A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF25A4  41 82 00 1C */	beq lbl_80AF25C0
/* 80AF25A8  3C A0 80 AF */	lis r5, __vt__10cCcD_GStts@ha /* 0x80AF2A84@ha */
/* 80AF25AC  38 05 2A 84 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80AF2A84@l */
/* 80AF25B0  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF25B4  7C 80 07 35 */	extsh. r0, r4
/* 80AF25B8  40 81 00 08 */	ble lbl_80AF25C0
/* 80AF25BC  4B 7D C7 81 */	bl __dl__FPv
lbl_80AF25C0:
/* 80AF25C0  7F E3 FB 78 */	mr r3, r31
/* 80AF25C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF25C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF25CC  7C 08 03 A6 */	mtlr r0
/* 80AF25D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF25D4  4E 80 00 20 */	blr 
