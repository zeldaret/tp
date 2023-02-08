lbl_8046A858:
/* 8046A858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046A85C  7C 08 02 A6 */	mflr r0
/* 8046A860  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046A864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046A868  7C 7F 1B 78 */	mr r31, r3
/* 8046A86C  38 00 00 00 */	li r0, 0
/* 8046A870  90 03 05 A4 */	stw r0, 0x5a4(r3)
/* 8046A874  98 03 06 0D */	stb r0, 0x60d(r3)
/* 8046A878  38 1F 05 70 */	addi r0, r31, 0x570
/* 8046A87C  90 03 05 04 */	stw r0, 0x504(r3)
/* 8046A880  3C 80 80 47 */	lis r4, lit_4639@ha /* 0x8046B0AC@ha */
/* 8046A884  C0 24 B0 AC */	lfs f1, lit_4639@l(r4)  /* 0x8046B0AC@l */
/* 8046A888  FC 40 08 90 */	fmr f2, f1
/* 8046A88C  FC 60 08 90 */	fmr f3, f1
/* 8046A890  4B BA FC 99 */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8046A894  7F E3 FB 78 */	mr r3, r31
/* 8046A898  3C 80 80 47 */	lis r4, lit_4640@ha /* 0x8046B0B0@ha */
/* 8046A89C  C0 24 B0 B0 */	lfs f1, lit_4640@l(r4)  /* 0x8046B0B0@l */
/* 8046A8A0  FC 40 08 90 */	fmr f2, f1
/* 8046A8A4  FC 60 08 90 */	fmr f3, f1
/* 8046A8A8  4B BA FC 91 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8046A8AC  7F E3 FB 78 */	mr r3, r31
/* 8046A8B0  4B FF F6 2D */	bl daEp_set_mtx__FP8ep_class
/* 8046A8B4  38 00 00 00 */	li r0, 0
/* 8046A8B8  98 1F 06 01 */	stb r0, 0x601(r31)
/* 8046A8BC  98 1F 06 02 */	stb r0, 0x602(r31)
/* 8046A8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046A8C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046A8C8  7C 08 03 A6 */	mtlr r0
/* 8046A8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8046A8D0  4E 80 00 20 */	blr 
