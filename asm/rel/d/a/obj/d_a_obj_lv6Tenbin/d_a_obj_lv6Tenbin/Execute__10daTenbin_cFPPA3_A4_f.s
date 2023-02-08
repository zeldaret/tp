lbl_80C77200:
/* 80C77200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C77204  7C 08 02 A6 */	mflr r0
/* 80C77208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7720C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C77210  93 C1 00 08 */	stw r30, 8(r1)
/* 80C77214  7C 7E 1B 78 */	mr r30, r3
/* 80C77218  7C 9F 23 78 */	mr r31, r4
/* 80C7721C  3C 80 80 C7 */	lis r4, l_cull_box@ha /* 0x80C77A08@ha */
/* 80C77220  38 A4 7A 08 */	addi r5, r4, l_cull_box@l /* 0x80C77A08@l */
/* 80C77224  C0 A5 00 10 */	lfs f5, 0x10(r5)
/* 80C77228  3C 80 80 C7 */	lis r4, l_HIO@ha /* 0x80C77ADC@ha */
/* 80C7722C  38 84 7A DC */	addi r4, r4, l_HIO@l /* 0x80C77ADC@l */
/* 80C77230  C0 24 00 04 */	lfs f1, 4(r4)
/* 80C77234  3C 80 80 C7 */	lis r4, lit_3908@ha /* 0x80C779E8@ha */
/* 80C77238  C0 04 79 E8 */	lfs f0, lit_3908@l(r4)  /* 0x80C779E8@l */
/* 80C7723C  EC 81 00 32 */	fmuls f4, f1, f0
/* 80C77240  C0 05 00 00 */	lfs f0, 0(r5)
/* 80C77244  EC 20 20 28 */	fsubs f1, f0, f4
/* 80C77248  C0 45 00 04 */	lfs f2, 4(r5)
/* 80C7724C  C0 65 00 08 */	lfs f3, 8(r5)
/* 80C77250  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 80C77254  EC 80 20 2A */	fadds f4, f0, f4
/* 80C77258  FC C0 28 90 */	fmr f6, f5
/* 80C7725C  4B 3A 32 ED */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C77260  7F C3 F3 78 */	mr r3, r30
/* 80C77264  48 00 00 59 */	bl procMain__10daTenbin_cFv
/* 80C77268  7F C3 F3 78 */	mr r3, r30
/* 80C7726C  4B FF F7 65 */	bl setBaseMtx__10daTenbin_cFv
/* 80C77270  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80C77274  38 03 00 24 */	addi r0, r3, 0x24
/* 80C77278  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7727C  80 7E 06 1C */	lwz r3, 0x61c(r30)
/* 80C77280  28 03 00 00 */	cmplwi r3, 0
/* 80C77284  41 82 00 08 */	beq lbl_80C7728C
/* 80C77288  4B 40 47 39 */	bl Move__4dBgWFv
lbl_80C7728C:
/* 80C7728C  38 00 00 00 */	li r0, 0
/* 80C77290  B0 1E 05 B2 */	sth r0, 0x5b2(r30)
/* 80C77294  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 80C77298  38 00 FF FF */	li r0, -1
/* 80C7729C  90 1E 06 50 */	stw r0, 0x650(r30)
/* 80C772A0  38 60 00 01 */	li r3, 1
/* 80C772A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C772A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C772AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C772B0  7C 08 03 A6 */	mtlr r0
/* 80C772B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C772B8  4E 80 00 20 */	blr 
