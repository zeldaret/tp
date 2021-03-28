lbl_809E7B74:
/* 809E7B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7B78  7C 08 02 A6 */	mflr r0
/* 809E7B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E7B84  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E7B88  41 82 00 30 */	beq lbl_809E7BB8
/* 809E7B8C  3C 60 80 9F */	lis r3, __vt__10dCcD_GStts@ha
/* 809E7B90  38 03 81 DC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809E7B94  90 1F 00 00 */	stw r0, 0(r31)
/* 809E7B98  41 82 00 10 */	beq lbl_809E7BA8
/* 809E7B9C  3C 60 80 9F */	lis r3, __vt__10cCcD_GStts@ha
/* 809E7BA0  38 03 81 D0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809E7BA4  90 1F 00 00 */	stw r0, 0(r31)
lbl_809E7BA8:
/* 809E7BA8  7C 80 07 35 */	extsh. r0, r4
/* 809E7BAC  40 81 00 0C */	ble lbl_809E7BB8
/* 809E7BB0  7F E3 FB 78 */	mr r3, r31
/* 809E7BB4  4B 8E 71 88 */	b __dl__FPv
lbl_809E7BB8:
/* 809E7BB8  7F E3 FB 78 */	mr r3, r31
/* 809E7BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E7BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E7BC4  7C 08 03 A6 */	mtlr r0
/* 809E7BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 809E7BCC  4E 80 00 20 */	blr 
