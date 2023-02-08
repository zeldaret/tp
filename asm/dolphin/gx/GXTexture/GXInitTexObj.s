lbl_8035DE40:
/* 8035DE40  7C 08 02 A6 */	mflr r0
/* 8035DE44  90 01 00 04 */	stw r0, 4(r1)
/* 8035DE48  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8035DE4C  BF 01 00 40 */	stmw r24, 0x40(r1)
/* 8035DE50  3B 64 00 00 */	addi r27, r4, 0
/* 8035DE54  3B 85 00 00 */	addi r28, r5, 0
/* 8035DE58  3B E3 00 00 */	addi r31, r3, 0
/* 8035DE5C  3B A6 00 00 */	addi r29, r6, 0
/* 8035DE60  3B C7 00 00 */	addi r30, r7, 0
/* 8035DE64  3B 08 00 00 */	addi r24, r8, 0
/* 8035DE68  3B 29 00 00 */	addi r25, r9, 0
/* 8035DE6C  3B 4A 00 00 */	addi r26, r10, 0
/* 8035DE70  38 80 00 00 */	li r4, 0
/* 8035DE74  38 A0 00 20 */	li r5, 0x20
/* 8035DE78  4B CA 55 E1 */	bl memset
/* 8035DE7C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8035DE80  53 03 07 BE */	rlwimi r3, r24, 0, 0x1e, 0x1f
/* 8035DE84  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8035DE88  90 7F 00 00 */	stw r3, 0(r31)
/* 8035DE8C  38 60 00 01 */	li r3, 1
/* 8035DE90  80 1F 00 00 */	lwz r0, 0(r31)
/* 8035DE94  53 20 17 3A */	rlwimi r0, r25, 2, 0x1c, 0x1d
/* 8035DE98  90 1F 00 00 */	stw r0, 0(r31)
/* 8035DE9C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8035DEA0  50 60 26 F6 */	rlwimi r0, r3, 4, 0x1b, 0x1b
/* 8035DEA4  90 1F 00 00 */	stw r0, 0(r31)
/* 8035DEA8  41 82 00 A0 */	beq lbl_8035DF48
/* 8035DEAC  88 7F 00 1F */	lbz r3, 0x1f(r31)
/* 8035DEB0  38 1E FF F8 */	addi r0, r30, -8
/* 8035DEB4  28 00 00 02 */	cmplwi r0, 2
/* 8035DEB8  60 60 00 01 */	ori r0, r3, 1
/* 8035DEBC  98 1F 00 1F */	stb r0, 0x1f(r31)
/* 8035DEC0  41 81 00 18 */	bgt lbl_8035DED8
/* 8035DEC4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8035DEC8  38 00 00 05 */	li r0, 5
/* 8035DECC  50 03 2E 34 */	rlwimi r3, r0, 5, 0x18, 0x1a
/* 8035DED0  90 7F 00 00 */	stw r3, 0(r31)
/* 8035DED4  48 00 00 14 */	b lbl_8035DEE8
lbl_8035DED8:
/* 8035DED8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8035DEDC  38 00 00 06 */	li r0, 6
/* 8035DEE0  50 03 2E 34 */	rlwimi r3, r0, 5, 0x18, 0x1a
/* 8035DEE4  90 7F 00 00 */	stw r3, 0(r31)
lbl_8035DEE8:
/* 8035DEE8  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 8035DEEC  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 8035DEF0  7C 03 00 40 */	cmplw r3, r0
/* 8035DEF4  40 81 00 10 */	ble lbl_8035DF04
/* 8035DEF8  7C 60 00 34 */	cntlzw r0, r3
/* 8035DEFC  20 00 00 1F */	subfic r0, r0, 0x1f
/* 8035DF00  48 00 00 0C */	b lbl_8035DF0C
lbl_8035DF04:
/* 8035DF04  7C 00 00 34 */	cntlzw r0, r0
/* 8035DF08  20 00 00 1F */	subfic r0, r0, 0x1f
lbl_8035DF0C:
/* 8035DF0C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 8035DF10  3C 00 43 30 */	lis r0, 0x4330
/* 8035DF14  C8 22 CB F0 */	lfd f1, lit_222(r2)
/* 8035DF18  90 01 00 38 */	stw r0, 0x38(r1)
/* 8035DF1C  C0 42 CB E8 */	lfs f2, lit_220(r2)
/* 8035DF20  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 8035DF24  80 7F 00 04 */	lwz r3, 4(r31)
/* 8035DF28  EC 00 08 28 */	fsubs f0, f0, f1
/* 8035DF2C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8035DF30  FC 00 00 1E */	fctiwz f0, f0
/* 8035DF34  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8035DF38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8035DF3C  50 03 44 2E */	rlwimi r3, r0, 8, 0x10, 0x17
/* 8035DF40  90 7F 00 04 */	stw r3, 4(r31)
/* 8035DF44  48 00 00 14 */	b lbl_8035DF58
lbl_8035DF48:
/* 8035DF48  80 7F 00 00 */	lwz r3, 0(r31)
/* 8035DF4C  38 00 00 04 */	li r0, 4
/* 8035DF50  50 03 2E 34 */	rlwimi r3, r0, 5, 0x18, 0x1a
/* 8035DF54  90 7F 00 00 */	stw r3, 0(r31)
lbl_8035DF58:
/* 8035DF58  93 DF 00 14 */	stw r30, 0x14(r31)
/* 8035DF5C  57 87 04 3E */	clrlwi r7, r28, 0x10
/* 8035DF60  57 C4 07 3E */	clrlwi r4, r30, 0x1c
/* 8035DF64  38 07 FF FF */	addi r0, r7, -1
/* 8035DF68  80 7F 00 08 */	lwz r3, 8(r31)
/* 8035DF6C  50 03 05 BE */	rlwimi r3, r0, 0, 0x16, 0x1f
/* 8035DF70  90 7F 00 08 */	stw r3, 8(r31)
/* 8035DF74  57 A5 04 3E */	clrlwi r5, r29, 0x10
/* 8035DF78  38 05 FF FF */	addi r0, r5, -1
/* 8035DF7C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8035DF80  50 03 53 2A */	rlwimi r3, r0, 0xa, 0xc, 0x15
/* 8035DF84  28 04 00 0E */	cmplwi r4, 0xe
/* 8035DF88  90 7F 00 08 */	stw r3, 8(r31)
/* 8035DF8C  80 1F 00 08 */	lwz r0, 8(r31)
/* 8035DF90  53 C0 A2 16 */	rlwimi r0, r30, 0x14, 8, 0xb
/* 8035DF94  90 1F 00 08 */	stw r0, 8(r31)
/* 8035DF98  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 8035DF9C  53 60 DA FE */	rlwimi r0, r27, 0x1b, 0xb, 0x1f
/* 8035DFA0  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8035DFA4  41 81 00 80 */	bgt lbl_8035E024
/* 8035DFA8  3C 60 80 3D */	lis r3, lit_224@ha /* 0x803D2780@ha */
/* 8035DFAC  38 63 27 80 */	addi r3, r3, lit_224@l /* 0x803D2780@l */
/* 8035DFB0  54 80 10 3A */	slwi r0, r4, 2
/* 8035DFB4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8035DFB8  7C 09 03 A6 */	mtctr r0
/* 8035DFBC  4E 80 04 20 */	bctr 
/* 8035DFC0  38 00 00 01 */	li r0, 1
/* 8035DFC4  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 8035DFC8  38 00 00 03 */	li r0, 3
/* 8035DFCC  38 C0 00 03 */	li r6, 3
/* 8035DFD0  48 00 00 64 */	b lbl_8035E034
/* 8035DFD4  38 00 00 02 */	li r0, 2
/* 8035DFD8  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 8035DFDC  38 00 00 03 */	li r0, 3
/* 8035DFE0  38 C0 00 02 */	li r6, 2
/* 8035DFE4  48 00 00 50 */	b lbl_8035E034
/* 8035DFE8  38 00 00 02 */	li r0, 2
/* 8035DFEC  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 8035DFF0  38 00 00 02 */	li r0, 2
/* 8035DFF4  38 C0 00 02 */	li r6, 2
/* 8035DFF8  48 00 00 3C */	b lbl_8035E034
/* 8035DFFC  38 00 00 03 */	li r0, 3
/* 8035E000  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 8035E004  38 00 00 02 */	li r0, 2
/* 8035E008  38 C0 00 02 */	li r6, 2
/* 8035E00C  48 00 00 28 */	b lbl_8035E034
/* 8035E010  38 00 00 00 */	li r0, 0
/* 8035E014  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 8035E018  38 00 00 03 */	li r0, 3
/* 8035E01C  38 C0 00 03 */	li r6, 3
/* 8035E020  48 00 00 14 */	b lbl_8035E034
lbl_8035E024:
/* 8035E024  38 00 00 02 */	li r0, 2
/* 8035E028  98 1F 00 1E */	stb r0, 0x1e(r31)
/* 8035E02C  38 00 00 02 */	li r0, 2
/* 8035E030  38 C0 00 02 */	li r6, 2
lbl_8035E034:
/* 8035E034  54 08 04 3E */	clrlwi r8, r0, 0x10
/* 8035E038  38 80 00 01 */	li r4, 1
/* 8035E03C  7C 83 40 30 */	slw r3, r4, r8
/* 8035E040  54 C6 04 3E */	clrlwi r6, r6, 0x10
/* 8035E044  38 03 FF FF */	addi r0, r3, -1
/* 8035E048  7C 83 30 30 */	slw r3, r4, r6
/* 8035E04C  7C 87 02 14 */	add r4, r7, r0
/* 8035E050  38 03 FF FF */	addi r0, r3, -1
/* 8035E054  7C 83 46 30 */	sraw r3, r4, r8
/* 8035E058  7C 05 02 14 */	add r0, r5, r0
/* 8035E05C  7C 00 36 30 */	sraw r0, r0, r6
/* 8035E060  7C 03 01 D6 */	mullw r0, r3, r0
/* 8035E064  54 00 04 7E */	clrlwi r0, r0, 0x11
/* 8035E068  B0 1F 00 1C */	sth r0, 0x1c(r31)
/* 8035E06C  88 1F 00 1F */	lbz r0, 0x1f(r31)
/* 8035E070  60 00 00 02 */	ori r0, r0, 2
/* 8035E074  98 1F 00 1F */	stb r0, 0x1f(r31)
/* 8035E078  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8035E07C  BB 01 00 40 */	lmw r24, 0x40(r1)
/* 8035E080  38 21 00 60 */	addi r1, r1, 0x60
/* 8035E084  7C 08 03 A6 */	mtlr r0
/* 8035E088  4E 80 00 20 */	blr 
