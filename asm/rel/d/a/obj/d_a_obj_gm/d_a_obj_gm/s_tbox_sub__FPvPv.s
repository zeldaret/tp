lbl_80BFC7D0:
/* 80BFC7D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFC7D4  7C 08 02 A6 */	mflr r0
/* 80BFC7D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFC7DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFC7E0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BFC7E4  7C 7E 1B 78 */	mr r30, r3
/* 80BFC7E8  7C 9F 23 78 */	mr r31, r4
/* 80BFC7EC  4B 41 C4 F5 */	bl fopAc_IsActor__FPv
/* 80BFC7F0  2C 03 00 00 */	cmpwi r3, 0
/* 80BFC7F4  41 82 00 4C */	beq lbl_80BFC840
/* 80BFC7F8  A8 1E 00 08 */	lha r0, 8(r30)
/* 80BFC7FC  2C 00 00 FB */	cmpwi r0, 0xfb
/* 80BFC800  40 82 00 40 */	bne lbl_80BFC840
/* 80BFC804  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80BFC808  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80BFC80C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80BFC810  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80BFC814  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80BFC818  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BFC81C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80BFC820  EC 00 00 32 */	fmuls f0, f0, f0
/* 80BFC824  EC 21 00 2A */	fadds f1, f1, f0
/* 80BFC828  3C 60 80 C0 */	lis r3, lit_4229@ha /* 0x80BFD3A8@ha */
/* 80BFC82C  C0 03 D3 A8 */	lfs f0, lit_4229@l(r3)  /* 0x80BFD3A8@l */
/* 80BFC830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BFC834  40 80 00 0C */	bge lbl_80BFC840
/* 80BFC838  7F C3 F3 78 */	mr r3, r30
/* 80BFC83C  48 00 00 08 */	b lbl_80BFC844
lbl_80BFC840:
/* 80BFC840  38 60 00 00 */	li r3, 0
lbl_80BFC844:
/* 80BFC844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFC848  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BFC84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFC850  7C 08 03 A6 */	mtlr r0
/* 80BFC854  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFC858  4E 80 00 20 */	blr 
