lbl_809AD750:
/* 809AD750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD754  7C 08 02 A6 */	mflr r0
/* 809AD758  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD75C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD760  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AD764  41 82 00 30 */	beq lbl_809AD794
/* 809AD768  3C 60 80 9B */	lis r3, __vt__10dCcD_GStts@ha
/* 809AD76C  38 03 DC F8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809AD770  90 1F 00 00 */	stw r0, 0(r31)
/* 809AD774  41 82 00 10 */	beq lbl_809AD784
/* 809AD778  3C 60 80 9B */	lis r3, __vt__10cCcD_GStts@ha
/* 809AD77C  38 03 DC EC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809AD780  90 1F 00 00 */	stw r0, 0(r31)
lbl_809AD784:
/* 809AD784  7C 80 07 35 */	extsh. r0, r4
/* 809AD788  40 81 00 0C */	ble lbl_809AD794
/* 809AD78C  7F E3 FB 78 */	mr r3, r31
/* 809AD790  4B 92 15 AC */	b __dl__FPv
lbl_809AD794:
/* 809AD794  7F E3 FB 78 */	mr r3, r31
/* 809AD798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD79C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD7A0  7C 08 03 A6 */	mtlr r0
/* 809AD7A4  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD7A8  4E 80 00 20 */	blr 
