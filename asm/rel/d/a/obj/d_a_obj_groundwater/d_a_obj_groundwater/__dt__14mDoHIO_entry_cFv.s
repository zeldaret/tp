lbl_80C134F8:
/* 80C134F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C134FC  7C 08 02 A6 */	mflr r0
/* 80C13500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C13504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C13508  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1350C  41 82 00 1C */	beq lbl_80C13528
/* 80C13510  3C A0 80 C1 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C14B24@ha */
/* 80C13514  38 05 4B 24 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C14B24@l */
/* 80C13518  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1351C  7C 80 07 35 */	extsh. r0, r4
/* 80C13520  40 81 00 08 */	ble lbl_80C13528
/* 80C13524  4B 6B B8 19 */	bl __dl__FPv
lbl_80C13528:
/* 80C13528  7F E3 FB 78 */	mr r3, r31
/* 80C1352C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C13530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C13534  7C 08 03 A6 */	mtlr r0
/* 80C13538  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1353C  4E 80 00 20 */	blr 
