lbl_80AD3A18:
/* 80AD3A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3A1C  7C 08 02 A6 */	mflr r0
/* 80AD3A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD3A24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD3A28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD3A2C  41 82 00 1C */	beq lbl_80AD3A48
/* 80AD3A30  3C A0 80 AD */	lis r5, __vt__10cCcD_GStts@ha /* 0x80AD54DC@ha */
/* 80AD3A34  38 05 54 DC */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80AD54DC@l */
/* 80AD3A38  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD3A3C  7C 80 07 35 */	extsh. r0, r4
/* 80AD3A40  40 81 00 08 */	ble lbl_80AD3A48
/* 80AD3A44  4B 7F B2 F9 */	bl __dl__FPv
lbl_80AD3A48:
/* 80AD3A48  7F E3 FB 78 */	mr r3, r31
/* 80AD3A4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD3A50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3A54  7C 08 03 A6 */	mtlr r0
/* 80AD3A58  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD3A5C  4E 80 00 20 */	blr 
