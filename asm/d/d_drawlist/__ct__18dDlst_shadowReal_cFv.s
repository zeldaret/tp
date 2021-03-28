lbl_800562D0:
/* 800562D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800562D4  7C 08 02 A6 */	mflr r0
/* 800562D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800562DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800562E0  7C 7F 1B 78 */	mr r31, r3
/* 800562E4  3C 60 80 3B */	lis r3, __vt__18dDlst_shadowPoly_c@ha
/* 800562E8  38 03 8D CC */	addi r0, r3, __vt__18dDlst_shadowPoly_c@l
/* 800562EC  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 800562F0  38 00 00 00 */	li r0, 0
/* 800562F4  B0 1F 00 AC */	sth r0, 0xac(r31)
/* 800562F8  3C 60 80 3B */	lis r3, __vt__22dDlst_shadowRealPoly_c@ha
/* 800562FC  38 03 8D DC */	addi r0, r3, __vt__22dDlst_shadowRealPoly_c@l
/* 80056300  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 80056304  38 7F 00 B0 */	addi r3, r31, 0xb0
/* 80056308  3C 80 80 05 */	lis r4, __ct__17dDlst_shadowTri_cFv@ha
/* 8005630C  38 84 63 44 */	addi r4, r4, __ct__17dDlst_shadowTri_cFv@l
/* 80056310  3C A0 80 05 */	lis r5, __dt__17dDlst_shadowTri_cFv@ha
/* 80056314  38 A5 62 70 */	addi r5, r5, __dt__17dDlst_shadowTri_cFv@l
/* 80056318  38 C0 00 24 */	li r6, 0x24
/* 8005631C  38 E0 01 00 */	li r7, 0x100
/* 80056320  48 30 BA 41 */	bl __construct_array
/* 80056324  38 00 00 00 */	li r0, 0
/* 80056328  98 1F 00 00 */	stb r0, 0(r31)
/* 8005632C  7F E3 FB 78 */	mr r3, r31
/* 80056330  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80056334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80056338  7C 08 03 A6 */	mtlr r0
/* 8005633C  38 21 00 10 */	addi r1, r1, 0x10
/* 80056340  4E 80 00 20 */	blr 
