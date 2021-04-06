lbl_8062D78C:
/* 8062D78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D790  7C 08 02 A6 */	mflr r0
/* 8062D794  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D79C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8062D7A0  41 82 00 30 */	beq lbl_8062D7D0
/* 8062D7A4  3C 60 80 63 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8062EF78@ha */
/* 8062D7A8  38 03 EF 78 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8062EF78@l */
/* 8062D7AC  90 1F 00 00 */	stw r0, 0(r31)
/* 8062D7B0  41 82 00 10 */	beq lbl_8062D7C0
/* 8062D7B4  3C 60 80 63 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8062EF6C@ha */
/* 8062D7B8  38 03 EF 6C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8062EF6C@l */
/* 8062D7BC  90 1F 00 00 */	stw r0, 0(r31)
lbl_8062D7C0:
/* 8062D7C0  7C 80 07 35 */	extsh. r0, r4
/* 8062D7C4  40 81 00 0C */	ble lbl_8062D7D0
/* 8062D7C8  7F E3 FB 78 */	mr r3, r31
/* 8062D7CC  4B CA 15 71 */	bl __dl__FPv
lbl_8062D7D0:
/* 8062D7D0  7F E3 FB 78 */	mr r3, r31
/* 8062D7D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D7D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D7DC  7C 08 03 A6 */	mtlr r0
/* 8062D7E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D7E4  4E 80 00 20 */	blr 
