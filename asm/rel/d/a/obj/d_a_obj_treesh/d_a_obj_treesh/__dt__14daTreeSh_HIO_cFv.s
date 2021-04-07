lbl_80D1F81C:
/* 80D1F81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F820  7C 08 02 A6 */	mflr r0
/* 80D1F824  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1F82C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1F830  41 82 00 30 */	beq lbl_80D1F860
/* 80D1F834  3C 60 80 D2 */	lis r3, __vt__14daTreeSh_HIO_c@ha /* 0x80D1F970@ha */
/* 80D1F838  38 03 F9 70 */	addi r0, r3, __vt__14daTreeSh_HIO_c@l /* 0x80D1F970@l */
/* 80D1F83C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1F840  41 82 00 10 */	beq lbl_80D1F850
/* 80D1F844  3C 60 80 D2 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80D1F97C@ha */
/* 80D1F848  38 03 F9 7C */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80D1F97C@l */
/* 80D1F84C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D1F850:
/* 80D1F850  7C 80 07 35 */	extsh. r0, r4
/* 80D1F854  40 81 00 0C */	ble lbl_80D1F860
/* 80D1F858  7F E3 FB 78 */	mr r3, r31
/* 80D1F85C  4B 5A F4 E1 */	bl __dl__FPv
lbl_80D1F860:
/* 80D1F860  7F E3 FB 78 */	mr r3, r31
/* 80D1F864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1F868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F86C  7C 08 03 A6 */	mtlr r0
/* 80D1F870  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F874  4E 80 00 20 */	blr 
