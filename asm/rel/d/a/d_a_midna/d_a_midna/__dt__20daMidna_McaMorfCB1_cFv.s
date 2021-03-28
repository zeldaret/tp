lbl_804C6398:
/* 804C6398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C639C  7C 08 02 A6 */	mflr r0
/* 804C63A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C63A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C63A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804C63AC  41 82 00 1C */	beq lbl_804C63C8
/* 804C63B0  3C A0 80 4C */	lis r5, __vt__20daMidna_McaMorfCB1_c@ha
/* 804C63B4  38 05 6C B4 */	addi r0, r5, __vt__20daMidna_McaMorfCB1_c@l
/* 804C63B8  90 1F 00 00 */	stw r0, 0(r31)
/* 804C63BC  7C 80 07 35 */	extsh. r0, r4
/* 804C63C0  40 81 00 08 */	ble lbl_804C63C8
/* 804C63C4  4B E0 89 78 */	b __dl__FPv
lbl_804C63C8:
/* 804C63C8  7F E3 FB 78 */	mr r3, r31
/* 804C63CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C63D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C63D4  7C 08 03 A6 */	mtlr r0
/* 804C63D8  38 21 00 10 */	addi r1, r1, 0x10
/* 804C63DC  4E 80 00 20 */	blr 
