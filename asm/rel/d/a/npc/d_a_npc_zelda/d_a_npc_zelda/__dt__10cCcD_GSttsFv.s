lbl_80B76E18:
/* 80B76E18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B76E1C  7C 08 02 A6 */	mflr r0
/* 80B76E20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B76E24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B76E28  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B76E2C  41 82 00 1C */	beq lbl_80B76E48
/* 80B76E30  3C A0 80 B8 */	lis r5, __vt__10cCcD_GStts@ha
/* 80B76E34  38 05 82 D8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B76E38  90 1F 00 00 */	stw r0, 0(r31)
/* 80B76E3C  7C 80 07 35 */	extsh. r0, r4
/* 80B76E40  40 81 00 08 */	ble lbl_80B76E48
/* 80B76E44  4B 75 7E F8 */	b __dl__FPv
lbl_80B76E48:
/* 80B76E48  7F E3 FB 78 */	mr r3, r31
/* 80B76E4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B76E50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B76E54  7C 08 03 A6 */	mtlr r0
/* 80B76E58  38 21 00 10 */	addi r1, r1, 0x10
/* 80B76E5C  4E 80 00 20 */	blr 
