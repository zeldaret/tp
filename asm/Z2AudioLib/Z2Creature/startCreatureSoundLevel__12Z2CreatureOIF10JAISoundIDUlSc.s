lbl_802C29D4:
/* 802C29D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802C29D8  7C 08 02 A6 */	mflr r0
/* 802C29DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 802C29E0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802C29E4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 802C29E8  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802C29EC  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 802C29F0  39 61 00 50 */	addi r11, r1, 0x50
/* 802C29F4  48 09 F7 D9 */	bl _savegpr_25
/* 802C29F8  7C 79 1B 78 */	mr r25, r3
/* 802C29FC  7C 9A 23 78 */	mr r26, r4
/* 802C2A00  7C BB 2B 78 */	mr r27, r5
/* 802C2A04  7C DF 33 78 */	mr r31, r6
/* 802C2A08  80 64 00 00 */	lwz r3, 0(r4)
/* 802C2A0C  3C 03 FF F9 */	addis r0, r3, 0xfff9
/* 802C2A10  28 00 03 53 */	cmplwi r0, 0x353
/* 802C2A14  40 82 02 2C */	bne lbl_802C2C40
/* 802C2A18  90 61 00 18 */	stw r3, 0x18(r1)
/* 802C2A1C  38 79 00 08 */	addi r3, r25, 8
/* 802C2A20  38 81 00 18 */	addi r4, r1, 0x18
/* 802C2A24  81 99 00 18 */	lwz r12, 0x18(r25)
/* 802C2A28  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2A2C  7D 89 03 A6 */	mtctr r12
/* 802C2A30  4E 80 04 21 */	bctrl 
/* 802C2A34  7C 7C 1B 78 */	mr r28, r3
/* 802C2A38  80 1A 00 00 */	lwz r0, 0(r26)
/* 802C2A3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C2A40  38 79 00 A4 */	addi r3, r25, 0xa4
/* 802C2A44  38 81 00 14 */	addi r4, r1, 0x14
/* 802C2A48  7F 65 DB 78 */	mr r5, r27
/* 802C2A4C  7F E6 FB 78 */	mr r6, r31
/* 802C2A50  81 99 00 B4 */	lwz r12, 0xb4(r25)
/* 802C2A54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2A58  7D 89 03 A6 */	mtctr r12
/* 802C2A5C  4E 80 04 21 */	bctrl 
/* 802C2A60  7C 7D 1B 78 */	mr r29, r3
/* 802C2A64  80 1A 00 00 */	lwz r0, 0(r26)
/* 802C2A68  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C2A6C  38 79 00 C4 */	addi r3, r25, 0xc4
/* 802C2A70  38 81 00 10 */	addi r4, r1, 0x10
/* 802C2A74  7F 65 DB 78 */	mr r5, r27
/* 802C2A78  7F E6 FB 78 */	mr r6, r31
/* 802C2A7C  81 99 00 D4 */	lwz r12, 0xd4(r25)
/* 802C2A80  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2A84  7D 89 03 A6 */	mtctr r12
/* 802C2A88  4E 80 04 21 */	bctrl 
/* 802C2A8C  7C 7E 1B 78 */	mr r30, r3
/* 802C2A90  80 1A 00 00 */	lwz r0, 0(r26)
/* 802C2A94  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C2A98  38 79 00 E4 */	addi r3, r25, 0xe4
/* 802C2A9C  38 81 00 0C */	addi r4, r1, 0xc
/* 802C2AA0  7F 65 DB 78 */	mr r5, r27
/* 802C2AA4  7F E6 FB 78 */	mr r6, r31
/* 802C2AA8  81 99 00 F4 */	lwz r12, 0xf4(r25)
/* 802C2AAC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2AB0  7D 89 03 A6 */	mtctr r12
/* 802C2AB4  4E 80 04 21 */	bctrl 
/* 802C2AB8  7C 7F 1B 78 */	mr r31, r3
/* 802C2ABC  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C2AC0  93 61 00 24 */	stw r27, 0x24(r1)
/* 802C2AC4  3C 00 43 30 */	lis r0, 0x4330
/* 802C2AC8  90 01 00 20 */	stw r0, 0x20(r1)
/* 802C2ACC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802C2AD0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C2AD4  C0 42 C2 34 */	lfs f2, lit_3717(r2)
/* 802C2AD8  C0 62 C2 80 */	lfs f3, lit_4837(r2)
/* 802C2ADC  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C2AE0  FC A0 10 90 */	fmr f5, f2
/* 802C2AE4  C0 C2 C2 20 */	lfs f6, lit_3669(r2)
/* 802C2AE8  38 60 00 01 */	li r3, 1
/* 802C2AEC  4B FE 6C 09 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C2AF0  FF E0 08 90 */	fmr f31, f1
/* 802C2AF4  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C2AF8  93 61 00 2C */	stw r27, 0x2c(r1)
/* 802C2AFC  3C 00 43 30 */	lis r0, 0x4330
/* 802C2B00  90 01 00 28 */	stw r0, 0x28(r1)
/* 802C2B04  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802C2B08  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C2B0C  C0 42 C2 34 */	lfs f2, lit_3717(r2)
/* 802C2B10  C0 62 C2 80 */	lfs f3, lit_4837(r2)
/* 802C2B14  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C2B18  C0 A2 C2 84 */	lfs f5, lit_4838(r2)
/* 802C2B1C  C0 C2 C2 54 */	lfs f6, lit_4188(r2)
/* 802C2B20  38 60 00 01 */	li r3, 1
/* 802C2B24  4B FE 6B D1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C2B28  FF C0 08 90 */	fmr f30, f1
/* 802C2B2C  28 1C 00 00 */	cmplwi r28, 0
/* 802C2B30  41 82 00 38 */	beq lbl_802C2B68
/* 802C2B34  80 7C 00 00 */	lwz r3, 0(r28)
/* 802C2B38  28 03 00 00 */	cmplwi r3, 0
/* 802C2B3C  41 82 00 2C */	beq lbl_802C2B68
/* 802C2B40  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2B44  FC 20 F8 90 */	fmr f1, f31
/* 802C2B48  38 80 00 00 */	li r4, 0
/* 802C2B4C  4B FE 02 69 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C2B50  80 7C 00 00 */	lwz r3, 0(r28)
/* 802C2B54  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2B58  FC 20 F0 90 */	fmr f1, f30
/* 802C2B5C  38 80 00 00 */	li r4, 0
/* 802C2B60  4B FE 02 AD */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C2B64  48 00 00 0C */	b lbl_802C2B70
lbl_802C2B68:
/* 802C2B68  38 60 00 00 */	li r3, 0
/* 802C2B6C  48 00 00 F0 */	b lbl_802C2C5C
lbl_802C2B70:
/* 802C2B70  28 1D 00 00 */	cmplwi r29, 0
/* 802C2B74  41 82 00 38 */	beq lbl_802C2BAC
/* 802C2B78  80 7D 00 00 */	lwz r3, 0(r29)
/* 802C2B7C  28 03 00 00 */	cmplwi r3, 0
/* 802C2B80  41 82 00 2C */	beq lbl_802C2BAC
/* 802C2B84  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2B88  FC 20 F8 90 */	fmr f1, f31
/* 802C2B8C  38 80 00 00 */	li r4, 0
/* 802C2B90  4B FE 02 25 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C2B94  80 7D 00 00 */	lwz r3, 0(r29)
/* 802C2B98  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2B9C  FC 20 F0 90 */	fmr f1, f30
/* 802C2BA0  38 80 00 00 */	li r4, 0
/* 802C2BA4  4B FE 02 69 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C2BA8  48 00 00 0C */	b lbl_802C2BB4
lbl_802C2BAC:
/* 802C2BAC  38 60 00 00 */	li r3, 0
/* 802C2BB0  48 00 00 AC */	b lbl_802C2C5C
lbl_802C2BB4:
/* 802C2BB4  28 1E 00 00 */	cmplwi r30, 0
/* 802C2BB8  41 82 00 38 */	beq lbl_802C2BF0
/* 802C2BBC  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C2BC0  28 03 00 00 */	cmplwi r3, 0
/* 802C2BC4  41 82 00 2C */	beq lbl_802C2BF0
/* 802C2BC8  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2BCC  FC 20 F8 90 */	fmr f1, f31
/* 802C2BD0  38 80 00 00 */	li r4, 0
/* 802C2BD4  4B FE 01 E1 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C2BD8  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C2BDC  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2BE0  FC 20 F0 90 */	fmr f1, f30
/* 802C2BE4  38 80 00 00 */	li r4, 0
/* 802C2BE8  4B FE 02 25 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C2BEC  48 00 00 0C */	b lbl_802C2BF8
lbl_802C2BF0:
/* 802C2BF0  38 60 00 00 */	li r3, 0
/* 802C2BF4  48 00 00 68 */	b lbl_802C2C5C
lbl_802C2BF8:
/* 802C2BF8  28 1F 00 00 */	cmplwi r31, 0
/* 802C2BFC  41 82 00 3C */	beq lbl_802C2C38
/* 802C2C00  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C2C04  28 03 00 00 */	cmplwi r3, 0
/* 802C2C08  41 82 00 30 */	beq lbl_802C2C38
/* 802C2C0C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2C10  FC 20 F8 90 */	fmr f1, f31
/* 802C2C14  38 80 00 00 */	li r4, 0
/* 802C2C18  4B FE 01 9D */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C2C1C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C2C20  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2C24  FC 20 F0 90 */	fmr f1, f30
/* 802C2C28  38 80 00 00 */	li r4, 0
/* 802C2C2C  4B FE 01 E1 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C2C30  7F E3 FB 78 */	mr r3, r31
/* 802C2C34  48 00 00 28 */	b lbl_802C2C5C
lbl_802C2C38:
/* 802C2C38  38 60 00 00 */	li r3, 0
/* 802C2C3C  48 00 00 20 */	b lbl_802C2C5C
lbl_802C2C40:
/* 802C2C40  90 61 00 08 */	stw r3, 8(r1)
/* 802C2C44  38 79 00 08 */	addi r3, r25, 8
/* 802C2C48  38 81 00 08 */	addi r4, r1, 8
/* 802C2C4C  81 99 00 18 */	lwz r12, 0x18(r25)
/* 802C2C50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2C54  7D 89 03 A6 */	mtctr r12
/* 802C2C58  4E 80 04 21 */	bctrl 
lbl_802C2C5C:
/* 802C2C5C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 802C2C60  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 802C2C64  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 802C2C68  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 802C2C6C  39 61 00 50 */	addi r11, r1, 0x50
/* 802C2C70  48 09 F5 A9 */	bl _restgpr_25
/* 802C2C74  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802C2C78  7C 08 03 A6 */	mtlr r0
/* 802C2C7C  38 21 00 70 */	addi r1, r1, 0x70
/* 802C2C80  4E 80 00 20 */	blr 
