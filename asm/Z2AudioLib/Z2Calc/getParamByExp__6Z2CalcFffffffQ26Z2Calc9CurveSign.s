lbl_802A96F4:
/* 802A96F4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802A96F8  7C 08 02 A6 */	mflr r0
/* 802A96FC  90 01 00 54 */	stw r0, 0x54(r1)
/* 802A9700  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802A9704  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802A9708  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802A970C  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 802A9710  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 802A9714  F3 A1 00 28 */	psq_st f29, 40(r1), 0, 0 /* qr0 */
/* 802A9718  DB 81 00 10 */	stfd f28, 0x10(r1)
/* 802A971C  F3 81 00 18 */	psq_st f28, 24(r1), 0, 0 /* qr0 */
/* 802A9720  FF 80 20 90 */	fmr f28, f4
/* 802A9724  FF A0 28 90 */	fmr f29, f5
/* 802A9728  FF C0 30 90 */	fmr f30, f6
/* 802A972C  2C 03 00 01 */	cmpwi r3, 1
/* 802A9730  40 82 00 44 */	bne lbl_802A9774
/* 802A9734  C0 82 BE 28 */	lfs f4, lit_380(r2)
/* 802A9738  FC A0 E0 90 */	fmr f5, f28
/* 802A973C  38 60 00 01 */	li r3, 1
/* 802A9740  4B FF FF 4D */	bl linearTransform__6Z2CalcFfffffb
/* 802A9744  48 0C 2F FD */	bl exp
/* 802A9748  FF E0 08 18 */	frsp f31, f1
/* 802A974C  FC 20 E0 90 */	fmr f1, f28
/* 802A9750  48 0C 2F F1 */	bl exp
/* 802A9754  FC 60 08 18 */	frsp f3, f1
/* 802A9758  FC 20 F8 90 */	fmr f1, f31
/* 802A975C  C0 42 BE 2C */	lfs f2, lit_381(r2)
/* 802A9760  FC 80 E8 90 */	fmr f4, f29
/* 802A9764  FC A0 F0 90 */	fmr f5, f30
/* 802A9768  38 60 00 01 */	li r3, 1
/* 802A976C  4B FF FF 21 */	bl linearTransform__6Z2CalcFfffffb
/* 802A9770  48 00 00 58 */	b lbl_802A97C8
lbl_802A9774:
/* 802A9774  2C 03 00 00 */	cmpwi r3, 0
/* 802A9778  40 82 00 40 */	bne lbl_802A97B8
/* 802A977C  C0 A2 BE 28 */	lfs f5, lit_380(r2)
/* 802A9780  38 60 00 01 */	li r3, 1
/* 802A9784  4B FF FF 09 */	bl linearTransform__6Z2CalcFfffffb
/* 802A9788  48 0C 2F B9 */	bl exp
/* 802A978C  FF E0 08 18 */	frsp f31, f1
/* 802A9790  FC 20 E0 90 */	fmr f1, f28
/* 802A9794  48 0C 2F AD */	bl exp
/* 802A9798  FC 40 08 18 */	frsp f2, f1
/* 802A979C  FC 20 F8 90 */	fmr f1, f31
/* 802A97A0  C0 62 BE 2C */	lfs f3, lit_381(r2)
/* 802A97A4  FC 80 E8 90 */	fmr f4, f29
/* 802A97A8  FC A0 F0 90 */	fmr f5, f30
/* 802A97AC  38 60 00 01 */	li r3, 1
/* 802A97B0  4B FF FE DD */	bl linearTransform__6Z2CalcFfffffb
/* 802A97B4  48 00 00 14 */	b lbl_802A97C8
lbl_802A97B8:
/* 802A97B8  FC 80 E8 90 */	fmr f4, f29
/* 802A97BC  FC A0 F0 90 */	fmr f5, f30
/* 802A97C0  38 60 00 00 */	li r3, 0
/* 802A97C4  4B FF FE C9 */	bl linearTransform__6Z2CalcFfffffb
lbl_802A97C8:
/* 802A97C8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 802A97CC  40 81 00 0C */	ble lbl_802A97D8
/* 802A97D0  FC 20 F0 90 */	fmr f1, f30
/* 802A97D4  48 00 00 10 */	b lbl_802A97E4
lbl_802A97D8:
/* 802A97D8  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 802A97DC  40 80 00 08 */	bge lbl_802A97E4
/* 802A97E0  FC 20 E8 90 */	fmr f1, f29
lbl_802A97E4:
/* 802A97E4  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802A97E8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802A97EC  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802A97F0  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802A97F4  E3 A1 00 28 */	psq_l f29, 40(r1), 0, 0 /* qr0 */
/* 802A97F8  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 802A97FC  E3 81 00 18 */	psq_l f28, 24(r1), 0, 0 /* qr0 */
/* 802A9800  CB 81 00 10 */	lfd f28, 0x10(r1)
/* 802A9804  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802A9808  7C 08 03 A6 */	mtlr r0
/* 802A980C  38 21 00 50 */	addi r1, r1, 0x50
/* 802A9810  4E 80 00 20 */	blr 
