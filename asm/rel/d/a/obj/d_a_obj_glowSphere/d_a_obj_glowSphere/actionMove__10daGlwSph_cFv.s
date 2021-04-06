lbl_80BFA204:
/* 80BFA204  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BFA208  7C 08 02 A6 */	mflr r0
/* 80BFA20C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BFA210  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80BFA214  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80BFA218  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BFA21C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80BFA220  7C 7E 1B 78 */	mr r30, r3
/* 80BFA224  3C 60 80 C0 */	lis r3, lit_3665@ha /* 0x80BFA970@ha */
/* 80BFA228  3B E3 A9 70 */	addi r31, r3, lit_3665@l /* 0x80BFA970@l */
/* 80BFA22C  38 7E 09 58 */	addi r3, r30, 0x958
/* 80BFA230  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80BFA234  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 80BFA238  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80BFA23C  C0 9F 00 38 */	lfs f4, 0x38(r31)
/* 80BFA240  4B 67 57 3D */	bl cLib_addCalc__FPfffff
/* 80BFA244  FF E0 08 90 */	fmr f31, f1
/* 80BFA248  38 61 00 08 */	addi r3, r1, 8
/* 80BFA24C  38 9E 09 5C */	addi r4, r30, 0x95c
/* 80BFA250  C0 3E 09 58 */	lfs f1, 0x958(r30)
/* 80BFA254  4B 66 C9 31 */	bl __ml__4cXyzCFf
/* 80BFA258  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80BFA25C  38 81 00 08 */	addi r4, r1, 8
/* 80BFA260  7C 65 1B 78 */	mr r5, r3
/* 80BFA264  4B 74 CE 2D */	bl PSVECAdd
/* 80BFA268  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80BFA26C  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80BFA270  40 82 00 14 */	bne lbl_80BFA284
/* 80BFA274  38 00 00 0A */	li r0, 0xa
/* 80BFA278  98 1E 09 55 */	stb r0, 0x955(r30)
/* 80BFA27C  7F C3 F3 78 */	mr r3, r30
/* 80BFA280  4B FF FD E5 */	bl actionWaitInit__10daGlwSph_cFv
lbl_80BFA284:
/* 80BFA284  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80BFA288  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80BFA28C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BFA290  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80BFA294  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BFA298  7C 08 03 A6 */	mtlr r0
/* 80BFA29C  38 21 00 30 */	addi r1, r1, 0x30
/* 80BFA2A0  4E 80 00 20 */	blr 
