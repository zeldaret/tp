lbl_80D414BC:
/* 80D414BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D414C0  7C 08 02 A6 */	mflr r0
/* 80D414C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D414C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D414CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D414D0  41 82 00 30 */	beq lbl_80D41500
/* 80D414D4  3C 60 80 D4 */	lis r3, __vt__16daZrTurara_HIO_c@ha
/* 80D414D8  38 03 17 5C */	addi r0, r3, __vt__16daZrTurara_HIO_c@l
/* 80D414DC  90 1F 00 00 */	stw r0, 0(r31)
/* 80D414E0  41 82 00 10 */	beq lbl_80D414F0
/* 80D414E4  3C 60 80 D4 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80D414E8  38 03 17 68 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80D414EC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D414F0:
/* 80D414F0  7C 80 07 35 */	extsh. r0, r4
/* 80D414F4  40 81 00 0C */	ble lbl_80D41500
/* 80D414F8  7F E3 FB 78 */	mr r3, r31
/* 80D414FC  4B 58 D8 40 */	b __dl__FPv
lbl_80D41500:
/* 80D41500  7F E3 FB 78 */	mr r3, r31
/* 80D41504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D41508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4150C  7C 08 03 A6 */	mtlr r0
/* 80D41510  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41514  4E 80 00 20 */	blr 
