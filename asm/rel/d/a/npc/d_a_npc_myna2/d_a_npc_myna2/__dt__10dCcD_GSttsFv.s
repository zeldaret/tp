lbl_80A880A8:
/* 80A880A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A880AC  7C 08 02 A6 */	mflr r0
/* 80A880B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A880B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A880B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A880BC  41 82 00 30 */	beq lbl_80A880EC
/* 80A880C0  3C 60 80 A9 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A880C4  38 03 8A 98 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A880C8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A880CC  41 82 00 10 */	beq lbl_80A880DC
/* 80A880D0  3C 60 80 A9 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A880D4  38 03 8A 8C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A880D8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A880DC:
/* 80A880DC  7C 80 07 35 */	extsh. r0, r4
/* 80A880E0  40 81 00 0C */	ble lbl_80A880EC
/* 80A880E4  7F E3 FB 78 */	mr r3, r31
/* 80A880E8  4B 84 6C 54 */	b __dl__FPv
lbl_80A880EC:
/* 80A880EC  7F E3 FB 78 */	mr r3, r31
/* 80A880F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A880F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A880F8  7C 08 03 A6 */	mtlr r0
/* 80A880FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A88100  4E 80 00 20 */	blr 
