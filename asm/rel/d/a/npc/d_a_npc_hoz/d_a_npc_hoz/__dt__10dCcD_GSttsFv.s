lbl_80A05EA8:
/* 80A05EA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05EAC  7C 08 02 A6 */	mflr r0
/* 80A05EB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A05EB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A05EB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A05EBC  41 82 00 30 */	beq lbl_80A05EEC
/* 80A05EC0  3C 60 80 A0 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A05EC4  38 03 77 C8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A05EC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A05ECC  41 82 00 10 */	beq lbl_80A05EDC
/* 80A05ED0  3C 60 80 A0 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A05ED4  38 03 77 BC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A05ED8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A05EDC:
/* 80A05EDC  7C 80 07 35 */	extsh. r0, r4
/* 80A05EE0  40 81 00 0C */	ble lbl_80A05EEC
/* 80A05EE4  7F E3 FB 78 */	mr r3, r31
/* 80A05EE8  4B 8C 8E 54 */	b __dl__FPv
lbl_80A05EEC:
/* 80A05EEC  7F E3 FB 78 */	mr r3, r31
/* 80A05EF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A05EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05EF8  7C 08 03 A6 */	mtlr r0
/* 80A05EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A05F00  4E 80 00 20 */	blr 
