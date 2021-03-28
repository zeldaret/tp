lbl_80A830A4:
/* 80A830A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A830A8  7C 08 02 A6 */	mflr r0
/* 80A830AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A830B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A830B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A830B8  41 82 00 1C */	beq lbl_80A830D4
/* 80A830BC  3C A0 80 A8 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A830C0  38 05 3D 0C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A830C4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A830C8  7C 80 07 35 */	extsh. r0, r4
/* 80A830CC  40 81 00 08 */	ble lbl_80A830D4
/* 80A830D0  4B 84 BC 6C */	b __dl__FPv
lbl_80A830D4:
/* 80A830D4  7F E3 FB 78 */	mr r3, r31
/* 80A830D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A830DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A830E0  7C 08 03 A6 */	mtlr r0
/* 80A830E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A830E8  4E 80 00 20 */	blr 
