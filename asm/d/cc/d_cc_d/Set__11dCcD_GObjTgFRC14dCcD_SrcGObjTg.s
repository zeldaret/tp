lbl_800839A0:
/* 800839A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800839A4  7C 08 02 A6 */	mflr r0
/* 800839A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800839AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800839B0  93 C1 00 08 */	stw r30, 8(r1)
/* 800839B4  7C 7E 1B 78 */	mr r30, r3
/* 800839B8  7C 9F 23 78 */	mr r31, r4
/* 800839BC  38 9F 00 04 */	addi r4, r31, 4
/* 800839C0  4B FF FD 45 */	bl Set__22dCcD_GAtTgCoCommonBaseFRC25dCcD_SrcGAtTgCoCommonBase
/* 800839C4  88 1F 00 00 */	lbz r0, 0(r31)
/* 800839C8  98 1E 00 1C */	stb r0, 0x1c(r30)
/* 800839CC  88 1F 00 03 */	lbz r0, 3(r31)
/* 800839D0  98 1E 00 1D */	stb r0, 0x1d(r30)
/* 800839D4  88 1F 00 01 */	lbz r0, 1(r31)
/* 800839D8  98 1E 00 1E */	stb r0, 0x1e(r30)
/* 800839DC  88 1F 00 02 */	lbz r0, 2(r31)
/* 800839E0  98 1E 00 1F */	stb r0, 0x1f(r30)
/* 800839E4  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 800839E8  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 800839EC  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 800839F0  C0 03 00 04 */	lfs f0, 4(r3)
/* 800839F4  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 800839F8  C0 03 00 08 */	lfs f0, 8(r3)
/* 800839FC  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80083A00  38 00 00 00 */	li r0, 0
/* 80083A04  90 1E 00 44 */	stw r0, 0x44(r30)
/* 80083A08  38 00 40 00 */	li r0, 0x4000
/* 80083A0C  B0 1E 00 48 */	sth r0, 0x48(r30)
/* 80083A10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80083A14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80083A18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80083A1C  7C 08 03 A6 */	mtlr r0
/* 80083A20  38 21 00 10 */	addi r1, r1, 0x10
/* 80083A24  4E 80 00 20 */	blr 
