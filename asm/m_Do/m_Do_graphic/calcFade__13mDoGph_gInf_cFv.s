lbl_80008330:
/* 80008330  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80008334  7C 08 02 A6 */	mflr r0
/* 80008338  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000833C  88 0D 86 66 */	lbz r0, struct_80450BE4+0x2(r13)
/* 80008340  28 00 00 00 */	cmplwi r0, 0
/* 80008344  41 82 00 64 */	beq lbl_800083A8
/* 80008348  C0 2D 86 5C */	lfs f1, mFadeRate__13mDoGph_gInf_c(r13)
/* 8000834C  C0 0D 86 60 */	lfs f0, mFadeSpeed__13mDoGph_gInf_c(r13)
/* 80008350  EC 21 00 2A */	fadds f1, f1, f0
/* 80008354  D0 2D 86 5C */	stfs f1, mFadeRate__13mDoGph_gInf_c(r13)
/* 80008358  C0 02 80 38 */	lfs f0, lit_4062(r2)
/* 8000835C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80008360  40 80 00 14 */	bge lbl_80008374
/* 80008364  D0 0D 86 5C */	stfs f0, mFadeRate__13mDoGph_gInf_c(r13)
/* 80008368  38 00 00 00 */	li r0, 0
/* 8000836C  98 0D 86 66 */	stb r0, struct_80450BE4+0x2(r13)
/* 80008370  48 00 00 14 */	b lbl_80008384
lbl_80008374:
/* 80008374  C0 02 80 3C */	lfs f0, lit_4063(r2)
/* 80008378  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8000837C  40 81 00 08 */	ble lbl_80008384
/* 80008380  D0 0D 86 5C */	stfs f0, mFadeRate__13mDoGph_gInf_c(r13)
lbl_80008384:
/* 80008384  C0 22 80 44 */	lfs f1, lit_4131(r2)
/* 80008388  C0 0D 86 5C */	lfs f0, mFadeRate__13mDoGph_gInf_c(r13)
/* 8000838C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80008390  FC 00 00 1E */	fctiwz f0, f0
/* 80008394  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80008398  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000839C  38 6D 80 14 */	la r3, mFadeColor__13mDoGph_gInf_c(r13) /* 80450594-_SDA_BASE_ */
/* 800083A0  98 03 00 03 */	stb r0, 3(r3)
/* 800083A4  48 00 00 48 */	b lbl_800083EC
lbl_800083A8:
/* 800083A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800083AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800083B0  3C 63 00 02 */	addis r3, r3, 2
/* 800083B4  88 83 DD F8 */	lbz r4, -0x2208(r3)
/* 800083B8  28 04 00 FF */	cmplwi r4, 0xff
/* 800083BC  41 82 00 24 */	beq lbl_800083E0
/* 800083C0  38 00 00 00 */	li r0, 0
/* 800083C4  98 0D 80 14 */	stb r0, mFadeColor__13mDoGph_gInf_c(r13)
/* 800083C8  38 6D 80 14 */	la r3, mFadeColor__13mDoGph_gInf_c(r13) /* 80450594-_SDA_BASE_ */
/* 800083CC  98 03 00 01 */	stb r0, 1(r3)
/* 800083D0  98 03 00 02 */	stb r0, 2(r3)
/* 800083D4  20 04 00 FF */	subfic r0, r4, 0xff
/* 800083D8  98 03 00 03 */	stb r0, 3(r3)
/* 800083DC  48 00 00 10 */	b lbl_800083EC
lbl_800083E0:
/* 800083E0  38 00 00 00 */	li r0, 0
/* 800083E4  38 6D 80 14 */	la r3, mFadeColor__13mDoGph_gInf_c(r13) /* 80450594-_SDA_BASE_ */
/* 800083E8  98 03 00 03 */	stb r0, 3(r3)
lbl_800083EC:
/* 800083EC  38 6D 80 14 */	la r3, mFadeColor__13mDoGph_gInf_c(r13) /* 80450594-_SDA_BASE_ */
/* 800083F0  88 03 00 03 */	lbz r0, 3(r3)
/* 800083F4  28 00 00 00 */	cmplwi r0, 0
/* 800083F8  41 82 00 14 */	beq lbl_8000840C
/* 800083FC  80 0D 80 14 */	lwz r0, mFadeColor__13mDoGph_gInf_c(r13)
/* 80008400  90 01 00 08 */	stw r0, 8(r1)
/* 80008404  38 61 00 08 */	addi r3, r1, 8
/* 80008408  4B FF FC ED */	bl darwFilter__F8_GXColor
lbl_8000840C:
/* 8000840C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80008410  7C 08 03 A6 */	mtlr r0
/* 80008414  38 21 00 20 */	addi r1, r1, 0x20
/* 80008418  4E 80 00 20 */	blr 
