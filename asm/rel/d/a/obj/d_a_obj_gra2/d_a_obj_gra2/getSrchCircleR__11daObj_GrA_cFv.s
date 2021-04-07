lbl_80C0536C:
/* 80C0536C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C05370  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C05374  54 00 06 7F */	clrlwi. r0, r0, 0x19
/* 80C05378  40 82 00 20 */	bne lbl_80C05398
/* 80C0537C  3C 60 80 C1 */	lis r3, lit_6330@ha /* 0x80C0FCE0@ha */
/* 80C05380  C0 23 FC E0 */	lfs f1, lit_6330@l(r3)  /* 0x80C0FCE0@l */
/* 80C05384  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C05388  38 63 FA 7C */	addi r3, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0538C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80C05390  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C05394  48 00 00 28 */	b lbl_80C053BC
lbl_80C05398:
/* 80C05398  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80C0539C  3C 60 80 C1 */	lis r3, lit_4501@ha /* 0x80C0FBAC@ha */
/* 80C053A0  C8 23 FB AC */	lfd f1, lit_4501@l(r3)  /* 0x80C0FBAC@l */
/* 80C053A4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C053A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C053AC  3C 00 43 30 */	lis r0, 0x4330
/* 80C053B0  90 01 00 08 */	stw r0, 8(r1)
/* 80C053B4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C053B8  EC 20 08 28 */	fsubs f1, f0, f1
lbl_80C053BC:
/* 80C053BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C053C0  4E 80 00 20 */	blr 
