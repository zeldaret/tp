lbl_80A9B10C:
/* 80A9B10C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9B110  7C 08 02 A6 */	mflr r0
/* 80A9B114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9B118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9B11C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A9B120  41 82 00 30 */	beq lbl_80A9B150
/* 80A9B124  3C 60 80 AA */	lis r3, __vt__10dCcD_GStts@ha
/* 80A9B128  38 03 C0 60 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A9B12C  90 1F 00 00 */	stw r0, 0(r31)
/* 80A9B130  41 82 00 10 */	beq lbl_80A9B140
/* 80A9B134  3C 60 80 AA */	lis r3, __vt__10cCcD_GStts@ha
/* 80A9B138  38 03 C0 54 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A9B13C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A9B140:
/* 80A9B140  7C 80 07 35 */	extsh. r0, r4
/* 80A9B144  40 81 00 0C */	ble lbl_80A9B150
/* 80A9B148  7F E3 FB 78 */	mr r3, r31
/* 80A9B14C  4B 83 3B F0 */	b __dl__FPv
lbl_80A9B150:
/* 80A9B150  7F E3 FB 78 */	mr r3, r31
/* 80A9B154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9B158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9B15C  7C 08 03 A6 */	mtlr r0
/* 80A9B160  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9B164  4E 80 00 20 */	blr 
