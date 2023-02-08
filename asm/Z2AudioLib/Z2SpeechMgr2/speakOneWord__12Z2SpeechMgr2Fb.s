lbl_802CC190:
/* 802CC190  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802CC194  7C 08 02 A6 */	mflr r0
/* 802CC198  90 01 00 34 */	stw r0, 0x34(r1)
/* 802CC19C  39 61 00 30 */	addi r11, r1, 0x30
/* 802CC1A0  48 09 60 3D */	bl _savegpr_29
/* 802CC1A4  7C 7E 1B 78 */	mr r30, r3
/* 802CC1A8  7C 9F 23 78 */	mr r31, r4
/* 802CC1AC  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802CC1B0  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802CC1B4  28 00 00 00 */	cmplwi r0, 0
/* 802CC1B8  41 82 01 2C */	beq lbl_802CC2E4
/* 802CC1BC  88 1E 03 FE */	lbz r0, 0x3fe(r30)
/* 802CC1C0  28 00 00 01 */	cmplwi r0, 1
/* 802CC1C4  41 82 00 0C */	beq lbl_802CC1D0
/* 802CC1C8  28 00 00 02 */	cmplwi r0, 2
/* 802CC1CC  40 82 01 18 */	bne lbl_802CC2E4
lbl_802CC1D0:
/* 802CC1D0  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 802CC1D4  28 00 00 00 */	cmplwi r0, 0
/* 802CC1D8  40 82 01 0C */	bne lbl_802CC2E4
/* 802CC1DC  88 1E 03 FF */	lbz r0, 0x3ff(r30)
/* 802CC1E0  28 00 00 1E */	cmplwi r0, 0x1e
/* 802CC1E4  41 81 01 00 */	bgt lbl_802CC2E4
/* 802CC1E8  A8 7E 03 FA */	lha r3, 0x3fa(r30)
/* 802CC1EC  A8 1E 03 F8 */	lha r0, 0x3f8(r30)
/* 802CC1F0  7C 03 00 00 */	cmpw r3, r0
/* 802CC1F4  41 80 00 18 */	blt lbl_802CC20C
/* 802CC1F8  7F C3 F3 78 */	mr r3, r30
/* 802CC1FC  48 00 05 3D */	bl selectTail__12Z2SpeechMgr2Fv
/* 802CC200  38 00 00 01 */	li r0, 1
/* 802CC204  98 1E 04 00 */	stb r0, 0x400(r30)
/* 802CC208  48 00 00 14 */	b lbl_802CC21C
lbl_802CC20C:
/* 802CC20C  7F C3 F3 78 */	mr r3, r30
/* 802CC210  48 00 00 ED */	bl isNonVerbal__12Z2SpeechMgr2Fv
/* 802CC214  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802CC218  40 82 00 CC */	bne lbl_802CC2E4
lbl_802CC21C:
/* 802CC21C  A0 7E 03 FC */	lhz r3, 0x3fc(r30)
/* 802CC220  3F A3 00 05 */	addis r29, r3, 5
/* 802CC224  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802CC228  88 63 00 0C */	lbz r3, 0xc(r3)
/* 802CC22C  7C 63 07 74 */	extsb r3, r3
/* 802CC230  3B BD 00 A1 */	addi r29, r29, 0xa1
/* 802CC234  4B D6 0E 39 */	bl dComIfGp_getReverb__Fi
/* 802CC238  7C 60 1B 78 */	mr r0, r3
/* 802CC23C  93 A1 00 08 */	stw r29, 8(r1)
/* 802CC240  38 7E 00 0C */	addi r3, r30, 0xc
/* 802CC244  38 81 00 08 */	addi r4, r1, 8
/* 802CC248  7F C5 F3 78 */	mr r5, r30
/* 802CC24C  38 C0 00 00 */	li r6, 0
/* 802CC250  38 E0 00 00 */	li r7, 0
/* 802CC254  7C 00 07 74 */	extsb r0, r0
/* 802CC258  C8 22 C5 40 */	lfd f1, lit_3887(r2)
/* 802CC25C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802CC260  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CC264  3C 00 43 30 */	lis r0, 0x4330
/* 802CC268  90 01 00 10 */	stw r0, 0x10(r1)
/* 802CC26C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802CC270  EC 20 08 28 */	fsubs f1, f0, f1
/* 802CC274  C0 02 C5 3C */	lfs f0, lit_3885(r2)
/* 802CC278  EC 21 00 24 */	fdivs f1, f1, f0
/* 802CC27C  C0 42 C5 34 */	lfs f2, lit_3837(r2)
/* 802CC280  FC 60 10 90 */	fmr f3, f2
/* 802CC284  C0 82 C5 38 */	lfs f4, lit_3838(r2)
/* 802CC288  FC A0 20 90 */	fmr f5, f4
/* 802CC28C  39 00 00 00 */	li r8, 0
/* 802CC290  81 9E 00 0C */	lwz r12, 0xc(r30)
/* 802CC294  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802CC298  7D 89 03 A6 */	mtctr r12
/* 802CC29C  4E 80 04 21 */	bctrl 
/* 802CC2A0  38 7E 00 0C */	addi r3, r30, 0xc
/* 802CC2A4  7F C4 F3 78 */	mr r4, r30
/* 802CC2A8  38 A0 00 08 */	li r5, 8
/* 802CC2AC  88 1E 04 01 */	lbz r0, 0x401(r30)
/* 802CC2B0  7C DE 02 14 */	add r6, r30, r0
/* 802CC2B4  88 06 04 01 */	lbz r0, 0x401(r6)
/* 802CC2B8  7C 06 07 74 */	extsb r6, r0
/* 802CC2BC  38 06 00 01 */	addi r0, r6, 1
/* 802CC2C0  54 06 04 3E */	clrlwi r6, r0, 0x10
/* 802CC2C4  38 E0 FF FF */	li r7, -1
/* 802CC2C8  4B FD EC 15 */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
/* 802CC2CC  88 1E 04 00 */	lbz r0, 0x400(r30)
/* 802CC2D0  28 00 00 00 */	cmplwi r0, 0
/* 802CC2D4  40 82 00 10 */	bne lbl_802CC2E4
/* 802CC2D8  7F C3 F3 78 */	mr r3, r30
/* 802CC2DC  7F E4 FB 78 */	mr r4, r31
/* 802CC2E0  48 00 01 E1 */	bl selectUnit__12Z2SpeechMgr2Fb
lbl_802CC2E4:
/* 802CC2E4  39 61 00 30 */	addi r11, r1, 0x30
/* 802CC2E8  48 09 5F 41 */	bl _restgpr_29
/* 802CC2EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802CC2F0  7C 08 03 A6 */	mtlr r0
/* 802CC2F4  38 21 00 30 */	addi r1, r1, 0x30
/* 802CC2F8  4E 80 00 20 */	blr 
