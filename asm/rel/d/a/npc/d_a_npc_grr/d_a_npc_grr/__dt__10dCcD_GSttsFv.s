lbl_809E36A0:
/* 809E36A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E36A4  7C 08 02 A6 */	mflr r0
/* 809E36A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E36AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E36B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809E36B4  41 82 00 30 */	beq lbl_809E36E4
/* 809E36B8  3C 60 80 9E */	lis r3, __vt__10dCcD_GStts@ha /* 0x809E3E98@ha */
/* 809E36BC  38 03 3E 98 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809E3E98@l */
/* 809E36C0  90 1F 00 00 */	stw r0, 0(r31)
/* 809E36C4  41 82 00 10 */	beq lbl_809E36D4
/* 809E36C8  3C 60 80 9E */	lis r3, __vt__10cCcD_GStts@ha /* 0x809E3E8C@ha */
/* 809E36CC  38 03 3E 8C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809E3E8C@l */
/* 809E36D0  90 1F 00 00 */	stw r0, 0(r31)
lbl_809E36D4:
/* 809E36D4  7C 80 07 35 */	extsh. r0, r4
/* 809E36D8  40 81 00 0C */	ble lbl_809E36E4
/* 809E36DC  7F E3 FB 78 */	mr r3, r31
/* 809E36E0  4B 8E B6 5D */	bl __dl__FPv
lbl_809E36E4:
/* 809E36E4  7F E3 FB 78 */	mr r3, r31
/* 809E36E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E36EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E36F0  7C 08 03 A6 */	mtlr r0
/* 809E36F4  38 21 00 10 */	addi r1, r1, 0x10
/* 809E36F8  4E 80 00 20 */	blr 
