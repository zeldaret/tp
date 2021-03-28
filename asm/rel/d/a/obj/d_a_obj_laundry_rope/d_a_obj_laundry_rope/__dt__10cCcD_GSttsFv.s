lbl_80C532B4:
/* 80C532B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C532B8  7C 08 02 A6 */	mflr r0
/* 80C532BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C532C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C532C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C532C8  41 82 00 1C */	beq lbl_80C532E4
/* 80C532CC  3C A0 80 C5 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C532D0  38 05 34 50 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C532D4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C532D8  7C 80 07 35 */	extsh. r0, r4
/* 80C532DC  40 81 00 08 */	ble lbl_80C532E4
/* 80C532E0  4B 67 BA 5C */	b __dl__FPv
lbl_80C532E4:
/* 80C532E4  7F E3 FB 78 */	mr r3, r31
/* 80C532E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C532EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C532F0  7C 08 03 A6 */	mtlr r0
/* 80C532F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C532F8  4E 80 00 20 */	blr 
