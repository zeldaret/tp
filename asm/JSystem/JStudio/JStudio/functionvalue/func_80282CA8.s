lbl_80282CA8:
/* 80282CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80282CAC  7C 08 02 A6 */	mflr r0
/* 80282CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80282CB4  80 A3 00 44 */	lwz r5, 0x44(r3)
/* 80282CB8  80 C4 00 10 */	lwz r6, 0x10(r4)
/* 80282CBC  54 C0 10 3A */	slwi r0, r6, 2
/* 80282CC0  7C 65 04 2E */	lfsx f3, r5, r0
/* 80282CC4  7C A5 02 14 */	add r5, r5, r0
/* 80282CC8  C0 85 00 04 */	lfs f4, 4(r5)
/* 80282CCC  28 06 00 00 */	cmplwi r6, 0
/* 80282CD0  40 82 00 18 */	bne lbl_80282CE8
/* 80282CD4  C8 02 BA 38 */	lfd f0, lit_842(r2)
/* 80282CD8  FC 00 00 F2 */	fmul f0, f0, f3
/* 80282CDC  FC 40 20 28 */	fsub f2, f0, f4
/* 80282CE0  C0 A5 00 08 */	lfs f5, 8(r5)
/* 80282CE4  48 00 00 30 */	b lbl_80282D14
lbl_80282CE8:
/* 80282CE8  80 63 00 48 */	lwz r3, 0x48(r3)
/* 80282CEC  38 03 FF FE */	addi r0, r3, -2
/* 80282CF0  7C 06 00 40 */	cmplw r6, r0
/* 80282CF4  40 82 00 18 */	bne lbl_80282D0C
/* 80282CF8  C0 45 FF FC */	lfs f2, -4(r5)
/* 80282CFC  C8 02 BA 38 */	lfd f0, lit_842(r2)
/* 80282D00  FC 00 01 32 */	fmul f0, f0, f4
/* 80282D04  FC A0 18 28 */	fsub f5, f0, f3
/* 80282D08  48 00 00 0C */	b lbl_80282D14
lbl_80282D0C:
/* 80282D0C  C0 45 FF FC */	lfs f2, -4(r5)
/* 80282D10  C0 A5 00 08 */	lfs f5, 8(r5)
lbl_80282D14:
/* 80282D14  C8 24 00 00 */	lfd f1, 0(r4)
/* 80282D18  C8 04 00 08 */	lfd f0, 8(r4)
/* 80282D1C  FC 21 00 28 */	fsub f1, f1, f0
/* 80282D20  4B FF EA 55 */	bl interpolateValue_BSpline_uniform__Q27JStudio13functionvalueFddddd
/* 80282D24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80282D28  7C 08 03 A6 */	mtlr r0
/* 80282D2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80282D30  4E 80 00 20 */	blr 
