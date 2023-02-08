lbl_80D02334:
/* 80D02334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D02338  7C 08 02 A6 */	mflr r0
/* 80D0233C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D02340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D02344  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D02348  41 82 00 1C */	beq lbl_80D02364
/* 80D0234C  3C A0 80 D0 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80D0424C@ha */
/* 80D02350  38 05 42 4C */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80D0424C@l */
/* 80D02354  90 1F 00 00 */	stw r0, 0(r31)
/* 80D02358  7C 80 07 35 */	extsh. r0, r4
/* 80D0235C  40 81 00 08 */	ble lbl_80D02364
/* 80D02360  4B 5C C9 DD */	bl __dl__FPv
lbl_80D02364:
/* 80D02364  7F E3 FB 78 */	mr r3, r31
/* 80D02368  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0236C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D02370  7C 08 03 A6 */	mtlr r0
/* 80D02374  38 21 00 10 */	addi r1, r1, 0x10
/* 80D02378  4E 80 00 20 */	blr 
