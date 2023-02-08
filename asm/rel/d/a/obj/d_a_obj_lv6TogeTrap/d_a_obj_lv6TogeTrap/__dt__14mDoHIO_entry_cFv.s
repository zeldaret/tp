lbl_80C79EC8:
/* 80C79EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C79ECC  7C 08 02 A6 */	mflr r0
/* 80C79ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79ED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C79ED8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C79EDC  41 82 00 1C */	beq lbl_80C79EF8
/* 80C79EE0  3C A0 80 C8 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C7CA44@ha */
/* 80C79EE4  38 05 CA 44 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C7CA44@l */
/* 80C79EE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C79EEC  7C 80 07 35 */	extsh. r0, r4
/* 80C79EF0  40 81 00 08 */	ble lbl_80C79EF8
/* 80C79EF4  4B 65 4E 49 */	bl __dl__FPv
lbl_80C79EF8:
/* 80C79EF8  7F E3 FB 78 */	mr r3, r31
/* 80C79EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C79F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C79F04  7C 08 03 A6 */	mtlr r0
/* 80C79F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79F0C  4E 80 00 20 */	blr 
