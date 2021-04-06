lbl_80C848E8:
/* 80C848E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C848EC  7C 08 02 A6 */	mflr r0
/* 80C848F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C848F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C848F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C848FC  41 82 00 1C */	beq lbl_80C84918
/* 80C84900  3C A0 80 C8 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C85348@ha */
/* 80C84904  38 05 53 48 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C85348@l */
/* 80C84908  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8490C  7C 80 07 35 */	extsh. r0, r4
/* 80C84910  40 81 00 08 */	ble lbl_80C84918
/* 80C84914  4B 64 A4 29 */	bl __dl__FPv
lbl_80C84918:
/* 80C84918  7F E3 FB 78 */	mr r3, r31
/* 80C8491C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C84920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C84924  7C 08 03 A6 */	mtlr r0
/* 80C84928  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8492C  4E 80 00 20 */	blr 
