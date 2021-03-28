lbl_8098EACC:
/* 8098EACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098EAD0  7C 08 02 A6 */	mflr r0
/* 8098EAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098EAD8  A8 03 09 DE */	lha r0, 0x9de(r3)
/* 8098EADC  28 00 00 07 */	cmplwi r0, 7
/* 8098EAE0  41 81 00 DC */	bgt lbl_8098EBBC
/* 8098EAE4  3C 80 80 99 */	lis r4, lit_5120@ha
/* 8098EAE8  38 84 22 20 */	addi r4, r4, lit_5120@l
/* 8098EAEC  54 00 10 3A */	slwi r0, r0, 2
/* 8098EAF0  7C 04 00 2E */	lwzx r0, r4, r0
/* 8098EAF4  7C 09 03 A6 */	mtctr r0
/* 8098EAF8  4E 80 04 20 */	bctr 
lbl_8098EAFC:
/* 8098EAFC  38 80 00 08 */	li r4, 8
/* 8098EB00  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EB04  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EB08  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098EB0C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098EB10  7D 89 03 A6 */	mtctr r12
/* 8098EB14  4E 80 04 21 */	bctrl 
/* 8098EB18  48 00 00 C0 */	b lbl_8098EBD8
lbl_8098EB1C:
/* 8098EB1C  38 80 00 09 */	li r4, 9
/* 8098EB20  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EB24  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EB28  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098EB2C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098EB30  7D 89 03 A6 */	mtctr r12
/* 8098EB34  4E 80 04 21 */	bctrl 
/* 8098EB38  48 00 00 A0 */	b lbl_8098EBD8
lbl_8098EB3C:
/* 8098EB3C  38 80 00 0A */	li r4, 0xa
/* 8098EB40  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EB44  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EB48  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098EB4C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098EB50  7D 89 03 A6 */	mtctr r12
/* 8098EB54  4E 80 04 21 */	bctrl 
/* 8098EB58  48 00 00 80 */	b lbl_8098EBD8
lbl_8098EB5C:
/* 8098EB5C  38 80 00 0B */	li r4, 0xb
/* 8098EB60  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EB64  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EB68  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098EB6C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098EB70  7D 89 03 A6 */	mtctr r12
/* 8098EB74  4E 80 04 21 */	bctrl 
/* 8098EB78  48 00 00 60 */	b lbl_8098EBD8
lbl_8098EB7C:
/* 8098EB7C  38 80 00 0C */	li r4, 0xc
/* 8098EB80  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EB84  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EB88  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098EB8C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098EB90  7D 89 03 A6 */	mtctr r12
/* 8098EB94  4E 80 04 21 */	bctrl 
/* 8098EB98  48 00 00 40 */	b lbl_8098EBD8
lbl_8098EB9C:
/* 8098EB9C  38 80 00 0D */	li r4, 0xd
/* 8098EBA0  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EBA4  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EBA8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098EBAC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098EBB0  7D 89 03 A6 */	mtctr r12
/* 8098EBB4  4E 80 04 21 */	bctrl 
/* 8098EBB8  48 00 00 20 */	b lbl_8098EBD8
lbl_8098EBBC:
/* 8098EBBC  38 80 00 0E */	li r4, 0xe
/* 8098EBC0  3C A0 80 99 */	lis r5, lit_4627@ha
/* 8098EBC4  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)
/* 8098EBC8  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098EBCC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098EBD0  7D 89 03 A6 */	mtctr r12
/* 8098EBD4  4E 80 04 21 */	bctrl 
lbl_8098EBD8:
/* 8098EBD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098EBDC  7C 08 03 A6 */	mtlr r0
/* 8098EBE0  38 21 00 10 */	addi r1, r1, 0x10
/* 8098EBE4  4E 80 00 20 */	blr 
