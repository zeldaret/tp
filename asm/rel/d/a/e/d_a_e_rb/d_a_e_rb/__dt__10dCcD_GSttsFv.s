lbl_807646B4:
/* 807646B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807646B8  7C 08 02 A6 */	mflr r0
/* 807646BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807646C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807646C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807646C8  41 82 00 30 */	beq lbl_807646F8
/* 807646CC  3C 60 80 76 */	lis r3, __vt__10dCcD_GStts@ha
/* 807646D0  38 03 4E E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 807646D4  90 1F 00 00 */	stw r0, 0(r31)
/* 807646D8  41 82 00 10 */	beq lbl_807646E8
/* 807646DC  3C 60 80 76 */	lis r3, __vt__10cCcD_GStts@ha
/* 807646E0  38 03 4E DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 807646E4  90 1F 00 00 */	stw r0, 0(r31)
lbl_807646E8:
/* 807646E8  7C 80 07 35 */	extsh. r0, r4
/* 807646EC  40 81 00 0C */	ble lbl_807646F8
/* 807646F0  7F E3 FB 78 */	mr r3, r31
/* 807646F4  4B B6 A6 48 */	b __dl__FPv
lbl_807646F8:
/* 807646F8  7F E3 FB 78 */	mr r3, r31
/* 807646FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80764700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80764704  7C 08 03 A6 */	mtlr r0
/* 80764708  38 21 00 10 */	addi r1, r1, 0x10
/* 8076470C  4E 80 00 20 */	blr 
