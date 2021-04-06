lbl_809D67A4:
/* 809D67A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D67A8  7C 08 02 A6 */	mflr r0
/* 809D67AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D67B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D67B4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D67B8  41 82 00 30 */	beq lbl_809D67E8
/* 809D67BC  3C 60 80 9D */	lis r3, __vt__10dCcD_GStts@ha /* 0x809D71C8@ha */
/* 809D67C0  38 03 71 C8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809D71C8@l */
/* 809D67C4  90 1F 00 00 */	stw r0, 0(r31)
/* 809D67C8  41 82 00 10 */	beq lbl_809D67D8
/* 809D67CC  3C 60 80 9D */	lis r3, __vt__10cCcD_GStts@ha /* 0x809D71BC@ha */
/* 809D67D0  38 03 71 BC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809D71BC@l */
/* 809D67D4  90 1F 00 00 */	stw r0, 0(r31)
lbl_809D67D8:
/* 809D67D8  7C 80 07 35 */	extsh. r0, r4
/* 809D67DC  40 81 00 0C */	ble lbl_809D67E8
/* 809D67E0  7F E3 FB 78 */	mr r3, r31
/* 809D67E4  4B 8F 85 59 */	bl __dl__FPv
lbl_809D67E8:
/* 809D67E8  7F E3 FB 78 */	mr r3, r31
/* 809D67EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D67F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D67F4  7C 08 03 A6 */	mtlr r0
/* 809D67F8  38 21 00 10 */	addi r1, r1, 0x10
/* 809D67FC  4E 80 00 20 */	blr 
