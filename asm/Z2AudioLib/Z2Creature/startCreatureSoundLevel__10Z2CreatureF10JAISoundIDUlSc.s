lbl_802C087C:
/* 802C087C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802C0880  7C 08 02 A6 */	mflr r0
/* 802C0884  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C0888  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802C088C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802C0890  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802C0894  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 802C0898  39 61 00 30 */	addi r11, r1, 0x30
/* 802C089C  48 0A 19 41 */	bl _savegpr_29
/* 802C08A0  7C 67 1B 78 */	mr r7, r3
/* 802C08A4  7C 9D 23 78 */	mr r29, r4
/* 802C08A8  7C BE 2B 78 */	mr r30, r5
/* 802C08AC  80 84 00 00 */	lwz r4, 0(r4)
/* 802C08B0  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D6@ha */
/* 802C08B4  38 03 00 D6 */	addi r0, r3, 0x00D6 /* 0x000600D6@l */
/* 802C08B8  7C 04 00 00 */	cmpw r4, r0
/* 802C08BC  41 82 00 08 */	beq lbl_802C08C4
/* 802C08C0  48 00 00 3C */	b lbl_802C08FC
lbl_802C08C4:
/* 802C08C4  90 81 00 0C */	stw r4, 0xc(r1)
/* 802C08C8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802C08CC  38 81 00 0C */	addi r4, r1, 0xc
/* 802C08D0  80 A7 00 04 */	lwz r5, 4(r7)
/* 802C08D4  38 C0 00 00 */	li r6, 0
/* 802C08D8  38 E0 00 00 */	li r7, 0
/* 802C08DC  C0 22 C2 20 */	lfs f1, lit_3669(r2)
/* 802C08E0  FC 40 08 90 */	fmr f2, f1
/* 802C08E4  C0 62 C2 30 */	lfs f3, lit_3716(r2)
/* 802C08E8  FC 80 18 90 */	fmr f4, f3
/* 802C08EC  39 00 00 00 */	li r8, 0
/* 802C08F0  4B FE BC 1D */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802C08F4  38 60 00 00 */	li r3, 0
/* 802C08F8  48 00 01 2C */	b lbl_802C0A24
lbl_802C08FC:
/* 802C08FC  90 81 00 08 */	stw r4, 8(r1)
/* 802C0900  38 67 00 08 */	addi r3, r7, 8
/* 802C0904  38 81 00 08 */	addi r4, r1, 8
/* 802C0908  81 87 00 18 */	lwz r12, 0x18(r7)
/* 802C090C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C0910  7D 89 03 A6 */	mtctr r12
/* 802C0914  4E 80 04 21 */	bctrl 
/* 802C0918  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C091C  41 82 01 04 */	beq lbl_802C0A20
/* 802C0920  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C0924  28 03 00 00 */	cmplwi r3, 0
/* 802C0928  41 82 00 F8 */	beq lbl_802C0A20
/* 802C092C  80 9D 00 00 */	lwz r4, 0(r29)
/* 802C0930  3C 04 FF FA */	addis r0, r4, 0xfffa
/* 802C0934  28 00 00 86 */	cmplwi r0, 0x86
/* 802C0938  41 82 00 0C */	beq lbl_802C0944
/* 802C093C  28 00 00 8A */	cmplwi r0, 0x8a
/* 802C0940  40 82 00 AC */	bne lbl_802C09EC
lbl_802C0944:
/* 802C0944  C3 E2 C2 34 */	lfs f31, lit_3717(r2)
/* 802C0948  28 1E 00 00 */	cmplwi r30, 0
/* 802C094C  41 82 00 3C */	beq lbl_802C0988
/* 802C0950  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C0954  93 C1 00 14 */	stw r30, 0x14(r1)
/* 802C0958  3C 00 43 30 */	lis r0, 0x4330
/* 802C095C  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C0960  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C0964  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C0968  FC 40 F8 90 */	fmr f2, f31
/* 802C096C  C0 62 C2 38 */	lfs f3, lit_3718(r2)
/* 802C0970  C0 82 C2 3C */	lfs f4, lit_3719(r2)
/* 802C0974  C0 A2 C2 40 */	lfs f5, lit_3720(r2)
/* 802C0978  C0 C2 C2 20 */	lfs f6, lit_3669(r2)
/* 802C097C  38 60 00 00 */	li r3, 0
/* 802C0980  4B FE 8D 75 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C0984  FF E0 08 90 */	fmr f31, f1
lbl_802C0988:
/* 802C0988  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C098C  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802C0990  3C 00 43 30 */	lis r0, 0x4330
/* 802C0994  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C0998  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C099C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C09A0  C0 42 C2 34 */	lfs f2, lit_3717(r2)
/* 802C09A4  C0 62 C2 38 */	lfs f3, lit_3718(r2)
/* 802C09A8  C0 82 C2 10 */	lfs f4, lit_3665(r2)
/* 802C09AC  C0 A2 C2 1C */	lfs f5, lit_3668(r2)
/* 802C09B0  C0 C2 C2 18 */	lfs f6, lit_3667(r2)
/* 802C09B4  38 60 00 00 */	li r3, 0
/* 802C09B8  4B FE 8D 3D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C09BC  FF C0 08 90 */	fmr f30, f1
/* 802C09C0  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C09C4  38 63 00 48 */	addi r3, r3, 0x48
/* 802C09C8  FC 20 F8 90 */	fmr f1, f31
/* 802C09CC  38 80 00 00 */	li r4, 0
/* 802C09D0  4B FE 23 E5 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C09D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C09D8  38 63 00 48 */	addi r3, r3, 0x48
/* 802C09DC  FC 20 F0 90 */	fmr f1, f30
/* 802C09E0  38 80 00 00 */	li r4, 0
/* 802C09E4  4B FE 24 29 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C09E8  48 00 00 38 */	b lbl_802C0A20
lbl_802C09EC:
/* 802C09EC  28 00 00 98 */	cmplwi r0, 0x98
/* 802C09F0  40 82 00 30 */	bne lbl_802C0A20
/* 802C09F4  38 63 00 48 */	addi r3, r3, 0x48
/* 802C09F8  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C09FC  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802C0A00  3C 00 43 30 */	lis r0, 0x4330
/* 802C0A04  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C0A08  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C0A0C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C0A10  C0 02 C2 0C */	lfs f0, lit_3664(r2)
/* 802C0A14  EC 21 00 24 */	fdivs f1, f1, f0
/* 802C0A18  38 80 00 00 */	li r4, 0
/* 802C0A1C  4B FE 23 99 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802C0A20:
/* 802C0A20  7F E3 FB 78 */	mr r3, r31
lbl_802C0A24:
/* 802C0A24  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802C0A28  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802C0A2C  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802C0A30  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802C0A34  39 61 00 30 */	addi r11, r1, 0x30
/* 802C0A38  48 0A 17 F1 */	bl _restgpr_29
/* 802C0A3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802C0A40  7C 08 03 A6 */	mtlr r0
/* 802C0A44  38 21 00 50 */	addi r1, r1, 0x50
/* 802C0A48  4E 80 00 20 */	blr 
