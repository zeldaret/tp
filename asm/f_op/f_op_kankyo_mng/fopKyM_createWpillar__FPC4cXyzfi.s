lbl_8001F87C:
/* 8001F87C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001F880  7C 08 02 A6 */	mflr r0
/* 8001F884  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001F888  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 8001F88C  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 8001F890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001F894  93 C1 00 08 */	stw r30, 8(r1)
/* 8001F898  7C 7E 1B 78 */	mr r30, r3
/* 8001F89C  FF E0 08 90 */	fmr f31, f1
/* 8001F8A0  7C 9F 23 78 */	mr r31, r4
/* 8001F8A4  4B FF FD BD */	bl fopKyM_CreateAppend__Fv
/* 8001F8A8  7C 65 1B 79 */	or. r5, r3, r3
/* 8001F8AC  40 82 00 0C */	bne lbl_8001F8B8
/* 8001F8B0  38 60 FF FF */	li r3, -1
/* 8001F8B4  48 00 00 38 */	b lbl_8001F8EC
lbl_8001F8B8:
/* 8001F8B8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8001F8BC  D0 05 00 00 */	stfs f0, 0(r5)
/* 8001F8C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8001F8C4  D0 05 00 04 */	stfs f0, 4(r5)
/* 8001F8C8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8001F8CC  D0 05 00 08 */	stfs f0, 8(r5)
/* 8001F8D0  D3 E5 00 0C */	stfs f31, 0xc(r5)
/* 8001F8D4  D3 E5 00 10 */	stfs f31, 0x10(r5)
/* 8001F8D8  D3 E5 00 14 */	stfs f31, 0x14(r5)
/* 8001F8DC  93 E5 00 18 */	stw r31, 0x18(r5)
/* 8001F8E0  38 60 03 02 */	li r3, 0x302
/* 8001F8E4  38 80 00 00 */	li r4, 0
/* 8001F8E8  4B FF FE 81 */	bl fopKyM_Create__FsPFPv_iPv
lbl_8001F8EC:
/* 8001F8EC  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 8001F8F0  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 8001F8F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001F8F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001F8FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001F900  7C 08 03 A6 */	mtlr r0
/* 8001F904  38 21 00 20 */	addi r1, r1, 0x20
/* 8001F908  4E 80 00 20 */	blr 
