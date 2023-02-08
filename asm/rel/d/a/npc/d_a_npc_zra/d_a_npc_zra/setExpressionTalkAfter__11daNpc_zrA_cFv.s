lbl_80B7EA90:
/* 80B7EA90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7EA94  7C 08 02 A6 */	mflr r0
/* 80B7EA98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7EA9C  A8 03 09 DE */	lha r0, 0x9de(r3)
/* 80B7EAA0  2C 00 00 07 */	cmpwi r0, 7
/* 80B7EAA4  41 82 00 70 */	beq lbl_80B7EB14
/* 80B7EAA8  40 80 00 1C */	bge lbl_80B7EAC4
/* 80B7EAAC  2C 00 00 00 */	cmpwi r0, 0
/* 80B7EAB0  41 82 00 24 */	beq lbl_80B7EAD4
/* 80B7EAB4  41 80 00 C0 */	blt lbl_80B7EB74
/* 80B7EAB8  2C 00 00 06 */	cmpwi r0, 6
/* 80B7EABC  40 80 00 38 */	bge lbl_80B7EAF4
/* 80B7EAC0  48 00 00 B4 */	b lbl_80B7EB74
lbl_80B7EAC4:
/* 80B7EAC4  2C 00 00 09 */	cmpwi r0, 9
/* 80B7EAC8  41 82 00 8C */	beq lbl_80B7EB54
/* 80B7EACC  40 80 00 A8 */	bge lbl_80B7EB74
/* 80B7EAD0  48 00 00 64 */	b lbl_80B7EB34
lbl_80B7EAD4:
/* 80B7EAD4  38 80 00 0F */	li r4, 0xf
/* 80B7EAD8  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7EADC  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7EAE0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7EAE4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7EAE8  7D 89 03 A6 */	mtctr r12
/* 80B7EAEC  4E 80 04 21 */	bctrl 
/* 80B7EAF0  48 00 00 A0 */	b lbl_80B7EB90
lbl_80B7EAF4:
/* 80B7EAF4  38 80 00 10 */	li r4, 0x10
/* 80B7EAF8  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7EAFC  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7EB00  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7EB04  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7EB08  7D 89 03 A6 */	mtctr r12
/* 80B7EB0C  4E 80 04 21 */	bctrl 
/* 80B7EB10  48 00 00 80 */	b lbl_80B7EB90
lbl_80B7EB14:
/* 80B7EB14  38 80 00 11 */	li r4, 0x11
/* 80B7EB18  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7EB1C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7EB20  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7EB24  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7EB28  7D 89 03 A6 */	mtctr r12
/* 80B7EB2C  4E 80 04 21 */	bctrl 
/* 80B7EB30  48 00 00 60 */	b lbl_80B7EB90
lbl_80B7EB34:
/* 80B7EB34  38 80 00 12 */	li r4, 0x12
/* 80B7EB38  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7EB3C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7EB40  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7EB44  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7EB48  7D 89 03 A6 */	mtctr r12
/* 80B7EB4C  4E 80 04 21 */	bctrl 
/* 80B7EB50  48 00 00 40 */	b lbl_80B7EB90
lbl_80B7EB54:
/* 80B7EB54  38 80 00 13 */	li r4, 0x13
/* 80B7EB58  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7EB5C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7EB60  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7EB64  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7EB68  7D 89 03 A6 */	mtctr r12
/* 80B7EB6C  4E 80 04 21 */	bctrl 
/* 80B7EB70  48 00 00 20 */	b lbl_80B7EB90
lbl_80B7EB74:
/* 80B7EB74  38 80 00 14 */	li r4, 0x14
/* 80B7EB78  3C A0 80 B9 */	lis r5, lit_4437@ha /* 0x80B8C528@ha */
/* 80B7EB7C  C0 25 C5 28 */	lfs f1, lit_4437@l(r5)  /* 0x80B8C528@l */
/* 80B7EB80  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B7EB84  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B7EB88  7D 89 03 A6 */	mtctr r12
/* 80B7EB8C  4E 80 04 21 */	bctrl 
lbl_80B7EB90:
/* 80B7EB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7EB94  7C 08 03 A6 */	mtlr r0
/* 80B7EB98  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7EB9C  4E 80 00 20 */	blr 
