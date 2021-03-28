lbl_8094A9BC:
/* 8094A9BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094A9C0  7C 08 02 A6 */	mflr r0
/* 8094A9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094A9C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8094A9CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8094A9D0  41 82 00 1C */	beq lbl_8094A9EC
/* 8094A9D4  3C A0 80 95 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 8094A9D8  38 05 B9 D8 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 8094A9DC  90 1F 00 00 */	stw r0, 0(r31)
/* 8094A9E0  7C 80 07 35 */	extsh. r0, r4
/* 8094A9E4  40 81 00 08 */	ble lbl_8094A9EC
/* 8094A9E8  4B 98 43 54 */	b __dl__FPv
lbl_8094A9EC:
/* 8094A9EC  7F E3 FB 78 */	mr r3, r31
/* 8094A9F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8094A9F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094A9F8  7C 08 03 A6 */	mtlr r0
/* 8094A9FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8094AA00  4E 80 00 20 */	blr 
