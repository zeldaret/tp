lbl_8034DEEC:
/* 8034DEEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8034DEF0  7C C6 07 74 */	extsb r6, r6
/* 8034DEF4  7C E6 00 D0 */	neg r7, r6
/* 8034DEF8  88 03 00 00 */	lbz r0, 0(r3)
/* 8034DEFC  89 24 00 00 */	lbz r9, 0(r4)
/* 8034DF00  7C 00 07 74 */	extsb r0, r0
/* 8034DF04  7C 07 00 00 */	cmpw r7, r0
/* 8034DF08  7D 29 07 74 */	extsb r9, r9
/* 8034DF0C  40 80 00 14 */	bge lbl_8034DF20
/* 8034DF10  7C 00 30 00 */	cmpw r0, r6
/* 8034DF14  40 80 00 0C */	bge lbl_8034DF20
/* 8034DF18  39 00 00 00 */	li r8, 0
/* 8034DF1C  48 00 00 18 */	b lbl_8034DF34
lbl_8034DF20:
/* 8034DF20  2C 00 00 00 */	cmpwi r0, 0
/* 8034DF24  40 81 00 0C */	ble lbl_8034DF30
/* 8034DF28  7D 06 00 50 */	subf r8, r6, r0
/* 8034DF2C  48 00 00 08 */	b lbl_8034DF34
lbl_8034DF30:
/* 8034DF30  7D 00 32 14 */	add r8, r0, r6
lbl_8034DF34:
/* 8034DF34  7C 07 48 00 */	cmpw r7, r9
/* 8034DF38  40 80 00 14 */	bge lbl_8034DF4C
/* 8034DF3C  7C 09 30 00 */	cmpw r9, r6
/* 8034DF40  40 80 00 0C */	bge lbl_8034DF4C
/* 8034DF44  39 20 00 00 */	li r9, 0
/* 8034DF48  48 00 00 18 */	b lbl_8034DF60
lbl_8034DF4C:
/* 8034DF4C  2C 09 00 00 */	cmpwi r9, 0
/* 8034DF50  40 81 00 0C */	ble lbl_8034DF5C
/* 8034DF54  7D 26 48 50 */	subf r9, r6, r9
/* 8034DF58  48 00 00 08 */	b lbl_8034DF60
lbl_8034DF5C:
/* 8034DF5C  7D 29 32 14 */	add r9, r9, r6
lbl_8034DF60:
/* 8034DF60  7C A7 07 74 */	extsb r7, r5
/* 8034DF64  7C C8 41 D6 */	mullw r6, r8, r8
/* 8034DF68  7C A9 49 D6 */	mullw r5, r9, r9
/* 8034DF6C  7C 07 39 D6 */	mullw r0, r7, r7
/* 8034DF70  7C A6 2A 14 */	add r5, r6, r5
/* 8034DF74  7C 00 28 00 */	cmpw r0, r5
/* 8034DF78  40 80 01 04 */	bge lbl_8034E07C
/* 8034DF7C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 8034DF80  C8 E2 CB 78 */	lfd f7, lit_164(r2)
/* 8034DF84  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 8034DF88  3C 00 43 30 */	lis r0, 0x4330
/* 8034DF8C  C0 02 CB 60 */	lfs f0, lit_160(r2)
/* 8034DF90  90 01 00 38 */	stw r0, 0x38(r1)
/* 8034DF94  C8 21 00 38 */	lfd f1, 0x38(r1)
/* 8034DF98  EC 21 38 28 */	fsubs f1, f1, f7
/* 8034DF9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8034DFA0  40 81 00 B0 */	ble lbl_8034E050
/* 8034DFA4  90 A1 00 3C */	stw r5, 0x3c(r1)
/* 8034DFA8  C8 C2 CB 68 */	lfd f6, lit_161(r2)
/* 8034DFAC  90 01 00 38 */	stw r0, 0x38(r1)
/* 8034DFB0  C8 A2 CB 70 */	lfd f5, lit_162(r2)
/* 8034DFB4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8034DFB8  90 A1 00 34 */	stw r5, 0x34(r1)
/* 8034DFBC  EC 00 38 28 */	fsubs f0, f0, f7
/* 8034DFC0  90 01 00 30 */	stw r0, 0x30(r1)
/* 8034DFC4  FC 60 00 34 */	frsqrte f3, f0
/* 8034DFC8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8034DFCC  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8034DFD0  EC 40 38 28 */	fsubs f2, f0, f7
/* 8034DFD4  FC 23 00 F2 */	fmul f1, f3, f3
/* 8034DFD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8034DFDC  FC 86 00 F2 */	fmul f4, f6, f3
/* 8034DFE0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8034DFE4  FC 22 00 72 */	fmul f1, f2, f1
/* 8034DFE8  90 A1 00 24 */	stw r5, 0x24(r1)
/* 8034DFEC  EC 60 38 28 */	fsubs f3, f0, f7
/* 8034DFF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8034DFF4  FC 25 08 28 */	fsub f1, f5, f1
/* 8034DFF8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8034DFFC  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8034E000  FC 84 00 72 */	fmul f4, f4, f1
/* 8034E004  90 01 00 18 */	stw r0, 0x18(r1)
/* 8034E008  EC 40 38 28 */	fsubs f2, f0, f7
/* 8034E00C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8034E010  FC 24 01 32 */	fmul f1, f4, f4
/* 8034E014  FC 86 01 32 */	fmul f4, f6, f4
/* 8034E018  FC 23 00 72 */	fmul f1, f3, f1
/* 8034E01C  EC 00 38 28 */	fsubs f0, f0, f7
/* 8034E020  FC 25 08 28 */	fsub f1, f5, f1
/* 8034E024  FC 64 00 72 */	fmul f3, f4, f1
/* 8034E028  FC 23 00 F2 */	fmul f1, f3, f3
/* 8034E02C  FC 66 00 F2 */	fmul f3, f6, f3
/* 8034E030  FC 22 00 72 */	fmul f1, f2, f1
/* 8034E034  FC 25 08 28 */	fsub f1, f5, f1
/* 8034E038  FC 23 00 72 */	fmul f1, f3, f1
/* 8034E03C  FC 00 00 72 */	fmul f0, f0, f1
/* 8034E040  FC 00 00 18 */	frsp f0, f0
/* 8034E044  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8034E048  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8034E04C  48 00 00 14 */	b lbl_8034E060
lbl_8034E050:
/* 8034E050  90 A1 00 1C */	stw r5, 0x1c(r1)
/* 8034E054  90 01 00 18 */	stw r0, 0x18(r1)
/* 8034E058  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8034E05C  EC 00 38 28 */	fsubs f0, f0, f7
lbl_8034E060:
/* 8034E060  FC 00 00 1E */	fctiwz f0, f0
/* 8034E064  7C A8 39 D6 */	mullw r5, r8, r7
/* 8034E068  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8034E06C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 8034E070  7C 09 39 D6 */	mullw r0, r9, r7
/* 8034E074  7D 05 33 D6 */	divw r8, r5, r6
/* 8034E078  7D 20 33 D6 */	divw r9, r0, r6
lbl_8034E07C:
/* 8034E07C  7D 00 07 74 */	extsb r0, r8
/* 8034E080  98 03 00 00 */	stb r0, 0(r3)
/* 8034E084  7D 20 07 74 */	extsb r0, r9
/* 8034E088  98 04 00 00 */	stb r0, 0(r4)
/* 8034E08C  38 21 00 40 */	addi r1, r1, 0x40
/* 8034E090  4E 80 00 20 */	blr 
