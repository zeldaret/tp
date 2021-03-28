lbl_809B89A0:
/* 809B89A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B89A4  7C 08 02 A6 */	mflr r0
/* 809B89A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B89AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B89B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B89B4  41 82 00 30 */	beq lbl_809B89E4
/* 809B89B8  3C 60 80 9C */	lis r3, __vt__10dCcD_GStts@ha
/* 809B89BC  38 03 A2 EC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809B89C0  90 1F 00 00 */	stw r0, 0(r31)
/* 809B89C4  41 82 00 10 */	beq lbl_809B89D4
/* 809B89C8  3C 60 80 9C */	lis r3, __vt__10cCcD_GStts@ha
/* 809B89CC  38 03 A2 E0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809B89D0  90 1F 00 00 */	stw r0, 0(r31)
lbl_809B89D4:
/* 809B89D4  7C 80 07 35 */	extsh. r0, r4
/* 809B89D8  40 81 00 0C */	ble lbl_809B89E4
/* 809B89DC  7F E3 FB 78 */	mr r3, r31
/* 809B89E0  4B 91 63 5C */	b __dl__FPv
lbl_809B89E4:
/* 809B89E4  7F E3 FB 78 */	mr r3, r31
/* 809B89E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B89EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B89F0  7C 08 03 A6 */	mtlr r0
/* 809B89F4  38 21 00 10 */	addi r1, r1, 0x10
/* 809B89F8  4E 80 00 20 */	blr 
