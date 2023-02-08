lbl_80C93198:
/* 80C93198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9319C  7C 08 02 A6 */	mflr r0
/* 80C931A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C931A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C931A8  7C 7F 1B 78 */	mr r31, r3
/* 80C931AC  3C 60 80 C9 */	lis r3, searchParentSub__FPvPv@ha /* 0x80C92E58@ha */
/* 80C931B0  38 63 2E 58 */	addi r3, r3, searchParentSub__FPvPv@l /* 0x80C92E58@l */
/* 80C931B4  7F E4 FB 78 */	mr r4, r31
/* 80C931B8  4B 38 E1 81 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80C931BC  28 03 00 00 */	cmplwi r3, 0
/* 80C931C0  41 82 00 0C */	beq lbl_80C931CC
/* 80C931C4  80 03 00 04 */	lwz r0, 4(r3)
/* 80C931C8  48 00 00 08 */	b lbl_80C931D0
lbl_80C931CC:
/* 80C931CC  38 00 FF FF */	li r0, -1
lbl_80C931D0:
/* 80C931D0  90 1F 04 A4 */	stw r0, 0x4a4(r31)
/* 80C931D4  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 80C931D8  3C 03 00 01 */	addis r0, r3, 1
/* 80C931DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80C931E0  40 82 00 0C */	bne lbl_80C931EC
/* 80C931E4  38 60 00 00 */	li r3, 0
/* 80C931E8  48 00 00 08 */	b lbl_80C931F0
lbl_80C931EC:
/* 80C931EC  38 60 00 01 */	li r3, 1
lbl_80C931F0:
/* 80C931F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C931F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C931F8  7C 08 03 A6 */	mtlr r0
/* 80C931FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C93200  4E 80 00 20 */	blr 
