lbl_8033ECA8:
/* 8033ECA8  7C 08 02 A6 */	mflr r0
/* 8033ECAC  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC004000@ha */
/* 8033ECB0  90 01 00 04 */	stw r0, 4(r1)
/* 8033ECB4  39 03 40 00 */	addi r8, r3, 0x4000 /* 0xCC004000@l */
/* 8033ECB8  38 00 00 00 */	li r0, 0
/* 8033ECBC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8033ECC0  A0 E3 40 24 */	lhz r7, 0x4024(r3)
/* 8033ECC4  3C 60 80 45 */	lis r3, __OSErrorTable@ha /* 0x8044BAD0@ha */
/* 8033ECC8  A0 C8 00 22 */	lhz r6, 0x22(r8)
/* 8033ECCC  38 63 BA D0 */	addi r3, r3, __OSErrorTable@l /* 0x8044BAD0@l */
/* 8033ECD0  A0 A8 00 1E */	lhz r5, 0x1e(r8)
/* 8033ECD4  50 E6 81 9E */	rlwimi r6, r7, 0x10, 6, 0xf
/* 8033ECD8  B0 08 00 20 */	sth r0, 0x20(r8)
/* 8033ECDC  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 8033ECE0  28 0C 00 00 */	cmplwi r12, 0
/* 8033ECE4  41 82 00 18 */	beq lbl_8033ECFC
/* 8033ECE8  7D 88 03 A6 */	mtlr r12
/* 8033ECEC  38 60 00 0F */	li r3, 0xf
/* 8033ECF0  4C C6 31 82 */	crclr 6
/* 8033ECF4  4E 80 00 21 */	blrl 
/* 8033ECF8  48 00 00 0C */	b lbl_8033ED04
lbl_8033ECFC:
/* 8033ECFC  38 60 00 0F */	li r3, 0xf
/* 8033ED00  4B FF DA 99 */	bl __OSUnhandledException
lbl_8033ED04:
/* 8033ED04  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8033ED08  38 21 00 08 */	addi r1, r1, 8
/* 8033ED0C  7C 08 03 A6 */	mtlr r0
/* 8033ED10  4E 80 00 20 */	blr 
