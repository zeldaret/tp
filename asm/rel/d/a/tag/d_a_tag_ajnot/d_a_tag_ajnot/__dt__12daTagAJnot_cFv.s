lbl_805A26C8:
/* 805A26C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A26CC  7C 08 02 A6 */	mflr r0
/* 805A26D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A26D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A26D8  93 C1 00 08 */	stw r30, 8(r1)
/* 805A26DC  7C 7E 1B 79 */	or. r30, r3, r3
/* 805A26E0  7C 9F 23 78 */	mr r31, r4
/* 805A26E4  41 82 00 1C */	beq lbl_805A2700
/* 805A26E8  38 80 00 00 */	li r4, 0
/* 805A26EC  4B A7 65 A0 */	b __dt__10fopAc_ac_cFv
/* 805A26F0  7F E0 07 35 */	extsh. r0, r31
/* 805A26F4  40 81 00 0C */	ble lbl_805A2700
/* 805A26F8  7F C3 F3 78 */	mr r3, r30
/* 805A26FC  4B D2 C6 40 */	b __dl__FPv
lbl_805A2700:
/* 805A2700  7F C3 F3 78 */	mr r3, r30
/* 805A2704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A2708  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A270C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2710  7C 08 03 A6 */	mtlr r0
/* 805A2714  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2718  4E 80 00 20 */	blr 
