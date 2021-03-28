lbl_809D8E14:
/* 809D8E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D8E18  7C 08 02 A6 */	mflr r0
/* 809D8E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D8E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D8E24  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D8E28  41 82 00 1C */	beq lbl_809D8E44
/* 809D8E2C  3C A0 80 9E */	lis r5, __vt__10cCcD_GStts@ha
/* 809D8E30  38 05 A3 24 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 809D8E34  90 1F 00 00 */	stw r0, 0(r31)
/* 809D8E38  7C 80 07 35 */	extsh. r0, r4
/* 809D8E3C  40 81 00 08 */	ble lbl_809D8E44
/* 809D8E40  4B 8F 5E FC */	b __dl__FPv
lbl_809D8E44:
/* 809D8E44  7F E3 FB 78 */	mr r3, r31
/* 809D8E48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D8E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D8E50  7C 08 03 A6 */	mtlr r0
/* 809D8E54  38 21 00 10 */	addi r1, r1, 0x10
/* 809D8E58  4E 80 00 20 */	blr 
