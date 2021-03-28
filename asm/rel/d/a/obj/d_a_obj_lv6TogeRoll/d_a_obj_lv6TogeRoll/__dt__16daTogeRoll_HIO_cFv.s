lbl_80C798D0:
/* 80C798D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C798D4  7C 08 02 A6 */	mflr r0
/* 80C798D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C798DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C798E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C798E4  41 82 00 30 */	beq lbl_80C79914
/* 80C798E8  3C 60 80 C8 */	lis r3, __vt__16daTogeRoll_HIO_c@ha
/* 80C798EC  38 03 9D 18 */	addi r0, r3, __vt__16daTogeRoll_HIO_c@l
/* 80C798F0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C798F4  41 82 00 10 */	beq lbl_80C79904
/* 80C798F8  3C 60 80 C8 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C798FC  38 03 9D 24 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C79900  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C79904:
/* 80C79904  7C 80 07 35 */	extsh. r0, r4
/* 80C79908  40 81 00 0C */	ble lbl_80C79914
/* 80C7990C  7F E3 FB 78 */	mr r3, r31
/* 80C79910  4B 65 54 2C */	b __dl__FPv
lbl_80C79914:
/* 80C79914  7F E3 FB 78 */	mr r3, r31
/* 80C79918  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7991C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C79920  7C 08 03 A6 */	mtlr r0
/* 80C79924  38 21 00 10 */	addi r1, r1, 0x10
/* 80C79928  4E 80 00 20 */	blr 
