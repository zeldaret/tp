lbl_80C7FBFC:
/* 80C7FBFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7FC00  3C 80 80 C8 */	lis r4, lit_4543@ha /* 0x80C81CA0@ha */
/* 80C7FC04  C0 24 1C A0 */	lfs f1, lit_4543@l(r4)  /* 0x80C81CA0@l */
/* 80C7FC08  A0 03 0A 32 */	lhz r0, 0xa32(r3)
/* 80C7FC0C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80C7FC10  28 00 00 0F */	cmplwi r0, 0xf
/* 80C7FC14  41 82 00 38 */	beq lbl_80C7FC4C
/* 80C7FC18  28 00 00 00 */	cmplwi r0, 0
/* 80C7FC1C  41 82 00 30 */	beq lbl_80C7FC4C
/* 80C7FC20  3C 60 80 C8 */	lis r3, lit_4175@ha /* 0x80C81C5C@ha */
/* 80C7FC24  C0 63 1C 5C */	lfs f3, lit_4175@l(r3)  /* 0x80C81C5C@l */
/* 80C7FC28  3C 60 80 C8 */	lis r3, lit_4545@ha /* 0x80C81CA4@ha */
/* 80C7FC2C  C8 43 1C A4 */	lfd f2, lit_4545@l(r3)  /* 0x80C81CA4@l */
/* 80C7FC30  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C7FC34  3C 00 43 30 */	lis r0, 0x4330
/* 80C7FC38  90 01 00 08 */	stw r0, 8(r1)
/* 80C7FC3C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C7FC40  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C7FC44  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C7FC48  EC 21 00 28 */	fsubs f1, f1, f0
lbl_80C7FC4C:
/* 80C7FC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7FC50  4E 80 00 20 */	blr 
