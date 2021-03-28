lbl_80A20EBC:
/* 80A20EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20EC0  7C 08 02 A6 */	mflr r0
/* 80A20EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A20ECC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A20ED0  41 82 00 1C */	beq lbl_80A20EEC
/* 80A20ED4  3C A0 80 A2 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A20ED8  38 05 17 88 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A20EDC  90 1F 00 00 */	stw r0, 0(r31)
/* 80A20EE0  7C 80 07 35 */	extsh. r0, r4
/* 80A20EE4  40 81 00 08 */	ble lbl_80A20EEC
/* 80A20EE8  4B 8A DE 54 */	b __dl__FPv
lbl_80A20EEC:
/* 80A20EEC  7F E3 FB 78 */	mr r3, r31
/* 80A20EF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A20EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20EF8  7C 08 03 A6 */	mtlr r0
/* 80A20EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20F00  4E 80 00 20 */	blr 
