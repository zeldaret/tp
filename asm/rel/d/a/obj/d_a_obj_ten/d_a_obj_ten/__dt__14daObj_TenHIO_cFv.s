lbl_80D0B848:
/* 80D0B848  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0B84C  7C 08 02 A6 */	mflr r0
/* 80D0B850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0B854  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0B858  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0B85C  41 82 00 1C */	beq lbl_80D0B878
/* 80D0B860  3C A0 80 D1 */	lis r5, __vt__14daObj_TenHIO_c@ha /* 0x80D0BAA4@ha */
/* 80D0B864  38 05 BA A4 */	addi r0, r5, __vt__14daObj_TenHIO_c@l /* 0x80D0BAA4@l */
/* 80D0B868  90 1F 00 00 */	stw r0, 0(r31)
/* 80D0B86C  7C 80 07 35 */	extsh. r0, r4
/* 80D0B870  40 81 00 08 */	ble lbl_80D0B878
/* 80D0B874  4B 5C 34 C9 */	bl __dl__FPv
lbl_80D0B878:
/* 80D0B878  7F E3 FB 78 */	mr r3, r31
/* 80D0B87C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0B880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0B884  7C 08 03 A6 */	mtlr r0
/* 80D0B888  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0B88C  4E 80 00 20 */	blr 
