lbl_802C0720:
/* 802C0720  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C0724  7C 08 02 A6 */	mflr r0
/* 802C0728  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C072C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802C0730  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802C0734  39 61 00 30 */	addi r11, r1, 0x30
/* 802C0738  48 0A 1A A5 */	bl _savegpr_29
/* 802C073C  7C 9D 23 78 */	mr r29, r4
/* 802C0740  7C BE 2B 78 */	mr r30, r5
/* 802C0744  80 E4 00 00 */	lwz r7, 0(r4)
/* 802C0748  3C 80 00 05 */	lis r4, 0x0005 /* 0x00050046@ha */
/* 802C074C  38 04 00 46 */	addi r0, r4, 0x0046 /* 0x00050046@l */
/* 802C0750  7C 07 00 00 */	cmpw r7, r0
/* 802C0754  41 82 00 08 */	beq lbl_802C075C
/* 802C0758  48 00 00 28 */	b lbl_802C0780
lbl_802C075C:
/* 802C075C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 802C0760  38 63 00 50 */	addi r3, r3, 0x50
/* 802C0764  38 81 00 0C */	addi r4, r1, 0xc
/* 802C0768  38 C0 00 00 */	li r6, 0
/* 802C076C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C0770  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C0774  7D 89 03 A6 */	mtctr r12
/* 802C0778  4E 80 04 21 */	bctrl 
/* 802C077C  48 00 00 E0 */	b lbl_802C085C
lbl_802C0780:
/* 802C0780  90 E1 00 08 */	stw r7, 8(r1)
/* 802C0784  38 63 00 08 */	addi r3, r3, 8
/* 802C0788  38 81 00 08 */	addi r4, r1, 8
/* 802C078C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C0790  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 802C0794  7D 89 03 A6 */	mtctr r12
/* 802C0798  4E 80 04 21 */	bctrl 
/* 802C079C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C07A0  41 82 00 B8 */	beq lbl_802C0858
/* 802C07A4  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C07A8  28 00 00 00 */	cmplwi r0, 0
/* 802C07AC  41 82 00 AC */	beq lbl_802C0858
/* 802C07B0  80 9D 00 00 */	lwz r4, 0(r29)
/* 802C07B4  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D7@ha */
/* 802C07B8  38 03 00 D7 */	addi r0, r3, 0x00D7 /* 0x000600D7@l */
/* 802C07BC  7C 04 00 00 */	cmpw r4, r0
/* 802C07C0  41 82 00 08 */	beq lbl_802C07C8
/* 802C07C4  48 00 00 94 */	b lbl_802C0858
lbl_802C07C8:
/* 802C07C8  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C07CC  93 C1 00 14 */	stw r30, 0x14(r1)
/* 802C07D0  3C 00 43 30 */	lis r0, 0x4330
/* 802C07D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C07D8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C07DC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C07E0  C0 42 C2 08 */	lfs f2, lit_3663(r2)
/* 802C07E4  C0 62 C2 0C */	lfs f3, lit_3664(r2)
/* 802C07E8  C0 82 C2 10 */	lfs f4, lit_3665(r2)
/* 802C07EC  C0 A2 C2 14 */	lfs f5, lit_3666(r2)
/* 802C07F0  C0 C2 C2 18 */	lfs f6, lit_3667(r2)
/* 802C07F4  38 60 00 00 */	li r3, 0
/* 802C07F8  4B FE 8E FD */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C07FC  FF E0 08 90 */	fmr f31, f1
/* 802C0800  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C0804  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802C0808  3C 00 43 30 */	lis r0, 0x4330
/* 802C080C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C0810  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C0814  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C0818  C0 42 C2 08 */	lfs f2, lit_3663(r2)
/* 802C081C  C0 62 C2 0C */	lfs f3, lit_3664(r2)
/* 802C0820  C0 82 C2 10 */	lfs f4, lit_3665(r2)
/* 802C0824  C0 A2 C2 1C */	lfs f5, lit_3668(r2)
/* 802C0828  C0 C2 C2 20 */	lfs f6, lit_3669(r2)
/* 802C082C  38 60 00 00 */	li r3, 0
/* 802C0830  4B FE 8E C5 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C0834  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C0838  38 63 00 48 */	addi r3, r3, 0x48
/* 802C083C  38 80 00 00 */	li r4, 0
/* 802C0840  4B FE 25 75 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C0844  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C0848  38 63 00 48 */	addi r3, r3, 0x48
/* 802C084C  FC 20 F8 90 */	fmr f1, f31
/* 802C0850  38 80 00 00 */	li r4, 0
/* 802C0854  4B FE 25 B9 */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802C0858:
/* 802C0858  7F E3 FB 78 */	mr r3, r31
lbl_802C085C:
/* 802C085C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802C0860  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802C0864  39 61 00 30 */	addi r11, r1, 0x30
/* 802C0868  48 0A 19 C1 */	bl _restgpr_29
/* 802C086C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C0870  7C 08 03 A6 */	mtlr r0
/* 802C0874  38 21 00 40 */	addi r1, r1, 0x40
/* 802C0878  4E 80 00 20 */	blr 
