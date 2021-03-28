lbl_80D1B618:
/* 80D1B618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1B61C  7C 08 02 A6 */	mflr r0
/* 80D1B620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1B624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1B628  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1B62C  41 82 00 1C */	beq lbl_80D1B648
/* 80D1B630  3C A0 80 D2 */	lis r5, __vt__14daObj_TomHIO_c@ha
/* 80D1B634  38 05 B8 D8 */	addi r0, r5, __vt__14daObj_TomHIO_c@l
/* 80D1B638  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1B63C  7C 80 07 35 */	extsh. r0, r4
/* 80D1B640  40 81 00 08 */	ble lbl_80D1B648
/* 80D1B644  4B 5B 36 F8 */	b __dl__FPv
lbl_80D1B648:
/* 80D1B648  7F E3 FB 78 */	mr r3, r31
/* 80D1B64C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1B650  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1B654  7C 08 03 A6 */	mtlr r0
/* 80D1B658  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1B65C  4E 80 00 20 */	blr 
