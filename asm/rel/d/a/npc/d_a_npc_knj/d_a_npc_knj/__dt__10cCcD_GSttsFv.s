lbl_80A44784:
/* 80A44784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A44788  7C 08 02 A6 */	mflr r0
/* 80A4478C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A44790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A44794  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A44798  41 82 00 1C */	beq lbl_80A447B4
/* 80A4479C  3C A0 80 A4 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80A4577C@ha */
/* 80A447A0  38 05 57 7C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80A4577C@l */
/* 80A447A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A447A8  7C 80 07 35 */	extsh. r0, r4
/* 80A447AC  40 81 00 08 */	ble lbl_80A447B4
/* 80A447B0  4B 88 A5 8D */	bl __dl__FPv
lbl_80A447B4:
/* 80A447B4  7F E3 FB 78 */	mr r3, r31
/* 80A447B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A447BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A447C0  7C 08 03 A6 */	mtlr r0
/* 80A447C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A447C8  4E 80 00 20 */	blr 
