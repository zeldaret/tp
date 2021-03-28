lbl_809DED08:
/* 809DED08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DED0C  7C 08 02 A6 */	mflr r0
/* 809DED10  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DED14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DED18  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DED1C  41 82 00 30 */	beq lbl_809DED4C
/* 809DED20  3C 60 80 9E */	lis r3, __vt__10dCcD_GStts@ha
/* 809DED24  38 03 F6 A4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809DED28  90 1F 00 00 */	stw r0, 0(r31)
/* 809DED2C  41 82 00 10 */	beq lbl_809DED3C
/* 809DED30  3C 60 80 9E */	lis r3, __vt__10cCcD_GStts@ha
/* 809DED34  38 03 F6 98 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809DED38  90 1F 00 00 */	stw r0, 0(r31)
lbl_809DED3C:
/* 809DED3C  7C 80 07 35 */	extsh. r0, r4
/* 809DED40  40 81 00 0C */	ble lbl_809DED4C
/* 809DED44  7F E3 FB 78 */	mr r3, r31
/* 809DED48  4B 8E FF F4 */	b __dl__FPv
lbl_809DED4C:
/* 809DED4C  7F E3 FB 78 */	mr r3, r31
/* 809DED50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DED54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DED58  7C 08 03 A6 */	mtlr r0
/* 809DED5C  38 21 00 10 */	addi r1, r1, 0x10
/* 809DED60  4E 80 00 20 */	blr 
