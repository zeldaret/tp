lbl_802BEBFC:
/* 802BEBFC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802BEC00  7C 08 02 A6 */	mflr r0
/* 802BEC04  90 01 00 44 */	stw r0, 0x44(r1)
/* 802BEC08  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802BEC0C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802BEC10  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802BEC14  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 802BEC18  39 61 00 20 */	addi r11, r1, 0x20
/* 802BEC1C  48 0A 35 C1 */	bl _savegpr_29
/* 802BEC20  7C 7F 1B 78 */	mr r31, r3
/* 802BEC24  7C 9D 23 78 */	mr r29, r4
/* 802BEC28  7C BE 2B 78 */	mr r30, r5
/* 802BEC2C  FF C0 08 90 */	fmr f30, f1
/* 802BEC30  FF E0 10 90 */	fmr f31, f2
/* 802BEC34  48 00 01 35 */	bl ageSounds___15Z2SoundObjAnimeFv
/* 802BEC38  93 BF 00 20 */	stw r29, 0x20(r31)
/* 802BEC3C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 802BEC40  28 00 00 00 */	cmplwi r0, 0
/* 802BEC44  41 82 00 FC */	beq lbl_802BED40
/* 802BEC48  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802BEC4C  7C 00 00 34 */	cntlzw r0, r0
/* 802BEC50  54 00 D9 7E */	srwi r0, r0, 5
/* 802BEC54  98 1F 00 44 */	stb r0, 0x44(r31)
/* 802BEC58  38 60 00 00 */	li r3, 0
/* 802BEC5C  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 802BEC60  88 1F 00 44 */	lbz r0, 0x44(r31)
/* 802BEC64  28 00 00 00 */	cmplwi r0, 0
/* 802BEC68  41 82 00 70 */	beq lbl_802BECD8
/* 802BEC6C  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 802BEC70  80 64 00 04 */	lwz r3, 4(r4)
/* 802BEC74  28 03 00 00 */	cmplwi r3, 0
/* 802BEC78  41 82 00 18 */	beq lbl_802BEC90
/* 802BEC7C  81 83 00 00 */	lwz r12, 0(r3)
/* 802BEC80  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BEC84  7D 89 03 A6 */	mtctr r12
/* 802BEC88  4E 80 04 21 */	bctrl 
/* 802BEC8C  48 00 00 08 */	b lbl_802BEC94
lbl_802BEC90:
/* 802BEC90  A0 64 00 00 */	lhz r3, 0(r4)
lbl_802BEC94:
/* 802BEC94  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 802BEC98  38 03 FF FF */	addi r0, r3, -1
/* 802BEC9C  90 1F 00 40 */	stw r0, 0x40(r31)
/* 802BECA0  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 802BECA4  C0 03 0A E8 */	lfs f0, __float_max@l(r3)  /* 0x80450AE8@l */
/* 802BECA8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802BECAC  C0 22 C1 50 */	lfs f1, lit_3821(r2)
/* 802BECB0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 802BECB4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802BECB8  4B FE 82 B9 */	bl getStartSoundIndex__17JAUSoundAnimationCFf
/* 802BECBC  90 7F 00 34 */	stw r3, 0x34(r31)
/* 802BECC0  D3 DF 00 30 */	stfs f30, 0x30(r31)
/* 802BECC4  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802BECC8  FC 20 F0 90 */	fmr f1, f30
/* 802BECCC  4B FE 83 79 */	bl getEndSoundIndex__17JAUSoundAnimationCFf
/* 802BECD0  90 7F 00 38 */	stw r3, 0x38(r31)
/* 802BECD4  48 00 00 38 */	b lbl_802BED0C
lbl_802BECD8:
/* 802BECD8  90 7F 00 40 */	stw r3, 0x40(r31)
/* 802BECDC  C0 02 C1 50 */	lfs f0, lit_3821(r2)
/* 802BECE0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 802BECE4  D3 DF 00 2C */	stfs f30, 0x2c(r31)
/* 802BECE8  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802BECEC  FC 20 F0 90 */	fmr f1, f30
/* 802BECF0  4B FE 82 81 */	bl getStartSoundIndex__17JAUSoundAnimationCFf
/* 802BECF4  90 7F 00 34 */	stw r3, 0x34(r31)
/* 802BECF8  C0 22 C1 50 */	lfs f1, lit_3821(r2)
/* 802BECFC  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 802BED00  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802BED04  4B FE 83 41 */	bl getEndSoundIndex__17JAUSoundAnimationCFf
/* 802BED08  90 7F 00 38 */	stw r3, 0x38(r31)
lbl_802BED0C:
/* 802BED0C  D3 FF 00 28 */	stfs f31, 0x28(r31)
/* 802BED10  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 802BED14  FC 20 F8 90 */	fmr f1, f31
/* 802BED18  4B FE 82 59 */	bl getStartSoundIndex__17JAUSoundAnimationCFf
/* 802BED1C  90 7F 00 40 */	stw r3, 0x40(r31)
/* 802BED20  88 1F 00 44 */	lbz r0, 0x44(r31)
/* 802BED24  28 00 00 00 */	cmplwi r0, 0
/* 802BED28  41 82 00 18 */	beq lbl_802BED40
/* 802BED2C  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 802BED30  2C 03 00 00 */	cmpwi r3, 0
/* 802BED34  40 81 00 0C */	ble lbl_802BED40
/* 802BED38  38 03 FF FF */	addi r0, r3, -1
/* 802BED3C  90 1F 00 40 */	stw r0, 0x40(r31)
lbl_802BED40:
/* 802BED40  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802BED44  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802BED48  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 802BED4C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802BED50  39 61 00 20 */	addi r11, r1, 0x20
/* 802BED54  48 0A 34 D5 */	bl _restgpr_29
/* 802BED58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802BED5C  7C 08 03 A6 */	mtlr r0
/* 802BED60  38 21 00 40 */	addi r1, r1, 0x40
/* 802BED64  4E 80 00 20 */	blr 
