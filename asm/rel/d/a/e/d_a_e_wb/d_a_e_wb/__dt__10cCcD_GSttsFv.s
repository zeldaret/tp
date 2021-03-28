lbl_807E2094:
/* 807E2094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E2098  7C 08 02 A6 */	mflr r0
/* 807E209C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E20A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E20A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 807E20A8  41 82 00 1C */	beq lbl_807E20C4
/* 807E20AC  3C A0 80 7E */	lis r5, __vt__10cCcD_GStts@ha
/* 807E20B0  38 05 34 F8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 807E20B4  90 1F 00 00 */	stw r0, 0(r31)
/* 807E20B8  7C 80 07 35 */	extsh. r0, r4
/* 807E20BC  40 81 00 08 */	ble lbl_807E20C4
/* 807E20C0  4B AE CC 7C */	b __dl__FPv
lbl_807E20C4:
/* 807E20C4  7F E3 FB 78 */	mr r3, r31
/* 807E20C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E20CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E20D0  7C 08 03 A6 */	mtlr r0
/* 807E20D4  38 21 00 10 */	addi r1, r1, 0x10
/* 807E20D8  4E 80 00 20 */	blr 
