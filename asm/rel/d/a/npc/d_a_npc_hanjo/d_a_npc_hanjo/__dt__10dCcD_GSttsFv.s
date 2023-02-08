lbl_809FF974:
/* 809FF974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FF978  7C 08 02 A6 */	mflr r0
/* 809FF97C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FF980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FF984  7C 7F 1B 79 */	or. r31, r3, r3
/* 809FF988  41 82 00 30 */	beq lbl_809FF9B8
/* 809FF98C  3C 60 80 A0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A01158@ha */
/* 809FF990  38 03 11 58 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A01158@l */
/* 809FF994  90 1F 00 00 */	stw r0, 0(r31)
/* 809FF998  41 82 00 10 */	beq lbl_809FF9A8
/* 809FF99C  3C 60 80 A0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A0114C@ha */
/* 809FF9A0  38 03 11 4C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A0114C@l */
/* 809FF9A4  90 1F 00 00 */	stw r0, 0(r31)
lbl_809FF9A8:
/* 809FF9A8  7C 80 07 35 */	extsh. r0, r4
/* 809FF9AC  40 81 00 0C */	ble lbl_809FF9B8
/* 809FF9B0  7F E3 FB 78 */	mr r3, r31
/* 809FF9B4  4B 8C F3 89 */	bl __dl__FPv
lbl_809FF9B8:
/* 809FF9B8  7F E3 FB 78 */	mr r3, r31
/* 809FF9BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FF9C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FF9C4  7C 08 03 A6 */	mtlr r0
/* 809FF9C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809FF9CC  4E 80 00 20 */	blr 
