lbl_802C3BD4:
/* 802C3BD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 802C3BD8  7C 08 02 A6 */	mflr r0
/* 802C3BDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 802C3BE0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 802C3BE4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 802C3BE8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 802C3BEC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 802C3BF0  39 61 00 30 */	addi r11, r1, 0x30
/* 802C3BF4  48 09 E5 E9 */	bl _savegpr_29
/* 802C3BF8  7C 7E 1B 78 */	mr r30, r3
/* 802C3BFC  7C 9D 23 78 */	mr r29, r4
/* 802C3C00  80 04 00 00 */	lwz r0, 0(r4)
/* 802C3C04  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C3C08  38 81 00 0C */	addi r4, r1, 0xc
/* 802C3C0C  81 83 00 00 */	lwz r12, 0(r3)
/* 802C3C10  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802C3C14  7D 89 03 A6 */	mtctr r12
/* 802C3C18  4E 80 04 21 */	bctrl 
/* 802C3C1C  7C 7F 1B 78 */	mr r31, r3
/* 802C3C20  80 9D 00 00 */	lwz r4, 0(r29)
/* 802C3C24  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002004C@ha */
/* 802C3C28  38 03 00 4C */	addi r0, r3, 0x004C /* 0x0002004C@l */
/* 802C3C2C  7C 04 00 00 */	cmpw r4, r0
/* 802C3C30  41 82 00 54 */	beq lbl_802C3C84
/* 802C3C34  40 80 00 30 */	bge lbl_802C3C64
/* 802C3C38  38 03 00 48 */	addi r0, r3, 0x48
/* 802C3C3C  7C 04 00 00 */	cmpw r4, r0
/* 802C3C40  41 82 00 54 */	beq lbl_802C3C94
/* 802C3C44  40 80 01 F8 */	bge lbl_802C3E3C
/* 802C3C48  38 03 00 16 */	addi r0, r3, 0x16
/* 802C3C4C  7C 04 00 00 */	cmpw r4, r0
/* 802C3C50  40 80 01 EC */	bge lbl_802C3E3C
/* 802C3C54  38 03 00 14 */	addi r0, r3, 0x14
/* 802C3C58  7C 04 00 00 */	cmpw r4, r0
/* 802C3C5C  40 80 00 28 */	bge lbl_802C3C84
/* 802C3C60  48 00 01 DC */	b lbl_802C3E3C
lbl_802C3C64:
/* 802C3C64  38 03 00 74 */	addi r0, r3, 0x74
/* 802C3C68  7C 04 00 00 */	cmpw r4, r0
/* 802C3C6C  41 82 01 14 */	beq lbl_802C3D80
/* 802C3C70  40 80 01 CC */	bge lbl_802C3E3C
/* 802C3C74  38 03 00 71 */	addi r0, r3, 0x71
/* 802C3C78  7C 04 00 00 */	cmpw r4, r0
/* 802C3C7C  41 82 00 44 */	beq lbl_802C3CC0
/* 802C3C80  48 00 01 BC */	b lbl_802C3E3C
lbl_802C3C84:
/* 802C3C84  80 6D 86 04 */	lwz r3, __OSReport_disable-0x14(r13)
/* 802C3C88  38 80 00 02 */	li r4, 2
/* 802C3C8C  4B FF 0B B9 */	bl setBattleSeqState__8Z2SeqMgrFUc
/* 802C3C90  48 00 01 AC */	b lbl_802C3E3C
lbl_802C3C94:
/* 802C3C94  38 03 00 43 */	addi r0, r3, 0x43
/* 802C3C98  90 01 00 08 */	stw r0, 8(r1)
/* 802C3C9C  38 7E 00 08 */	addi r3, r30, 8
/* 802C3CA0  38 81 00 08 */	addi r4, r1, 8
/* 802C3CA4  4B FE 75 B1 */	bl getHandleSoundID__14Z2SoundHandlesF10JAISoundID
/* 802C3CA8  28 03 00 00 */	cmplwi r3, 0
/* 802C3CAC  41 82 01 90 */	beq lbl_802C3E3C
/* 802C3CB0  80 63 00 00 */	lwz r3, 0(r3)
/* 802C3CB4  38 80 00 00 */	li r4, 0
/* 802C3CB8  4B FD E8 25 */	bl stop__8JAISoundFUl
/* 802C3CBC  48 00 01 80 */	b lbl_802C3E3C
lbl_802C3CC0:
/* 802C3CC0  28 1F 00 00 */	cmplwi r31, 0
/* 802C3CC4  41 82 01 78 */	beq lbl_802C3E3C
/* 802C3CC8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C3CCC  28 00 00 00 */	cmplwi r0, 0
/* 802C3CD0  41 82 01 6C */	beq lbl_802C3E3C
/* 802C3CD4  88 1E 00 CA */	lbz r0, 0xca(r30)
/* 802C3CD8  7C 00 07 74 */	extsb r0, r0
/* 802C3CDC  C8 22 C2 E0 */	lfd f1, lit_3842(r2)
/* 802C3CE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C3CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3CE8  3C 00 43 30 */	lis r0, 0x4330
/* 802C3CEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C3CF0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C3CF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C3CF8  C0 42 C2 C4 */	lfs f2, lit_3834(r2)
/* 802C3CFC  C0 62 C2 C8 */	lfs f3, lit_3835(r2)
/* 802C3D00  C0 82 C2 CC */	lfs f4, lit_3836(r2)
/* 802C3D04  C0 A2 C2 98 */	lfs f5, lit_3721(r2)
/* 802C3D08  38 60 00 00 */	li r3, 0
/* 802C3D0C  4B FE 59 81 */	bl linearTransform__6Z2CalcFfffffb
/* 802C3D10  FF E0 08 90 */	fmr f31, f1
/* 802C3D14  88 1E 00 CA */	lbz r0, 0xca(r30)
/* 802C3D18  7C 00 07 74 */	extsb r0, r0
/* 802C3D1C  C8 22 C2 E0 */	lfd f1, lit_3842(r2)
/* 802C3D20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C3D24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C3D28  3C 00 43 30 */	lis r0, 0x4330
/* 802C3D2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C3D30  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C3D34  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C3D38  C0 42 C2 C4 */	lfs f2, lit_3834(r2)
/* 802C3D3C  C0 62 C2 C8 */	lfs f3, lit_3835(r2)
/* 802C3D40  C0 82 C2 98 */	lfs f4, lit_3721(r2)
/* 802C3D44  C0 A2 C2 D0 */	lfs f5, lit_3837(r2)
/* 802C3D48  38 60 00 00 */	li r3, 0
/* 802C3D4C  4B FE 59 41 */	bl linearTransform__6Z2CalcFfffffb
/* 802C3D50  FF C0 08 90 */	fmr f30, f1
/* 802C3D54  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C3D58  38 63 00 48 */	addi r3, r3, 0x48
/* 802C3D5C  FC 20 F8 90 */	fmr f1, f31
/* 802C3D60  38 80 00 00 */	li r4, 0
/* 802C3D64  4B FD F0 51 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C3D68  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C3D6C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C3D70  FC 20 F0 90 */	fmr f1, f30
/* 802C3D74  38 80 00 00 */	li r4, 0
/* 802C3D78  4B FD F0 95 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C3D7C  48 00 00 C0 */	b lbl_802C3E3C
lbl_802C3D80:
/* 802C3D80  28 1F 00 00 */	cmplwi r31, 0
/* 802C3D84  41 82 00 B8 */	beq lbl_802C3E3C
/* 802C3D88  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C3D8C  28 00 00 00 */	cmplwi r0, 0
/* 802C3D90  41 82 00 AC */	beq lbl_802C3E3C
/* 802C3D94  88 1E 00 CA */	lbz r0, 0xca(r30)
/* 802C3D98  7C 00 07 74 */	extsb r0, r0
/* 802C3D9C  C8 22 C2 E0 */	lfd f1, lit_3842(r2)
/* 802C3DA0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C3DA4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802C3DA8  3C 00 43 30 */	lis r0, 0x4330
/* 802C3DAC  90 01 00 18 */	stw r0, 0x18(r1)
/* 802C3DB0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802C3DB4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C3DB8  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C3DBC  C0 62 C2 D4 */	lfs f3, lit_3838(r2)
/* 802C3DC0  C0 82 C2 D8 */	lfs f4, lit_3839(r2)
/* 802C3DC4  C0 A2 C2 98 */	lfs f5, lit_3721(r2)
/* 802C3DC8  38 60 00 00 */	li r3, 0
/* 802C3DCC  4B FE 58 C1 */	bl linearTransform__6Z2CalcFfffffb
/* 802C3DD0  FF C0 08 90 */	fmr f30, f1
/* 802C3DD4  88 1E 00 CA */	lbz r0, 0xca(r30)
/* 802C3DD8  7C 00 07 74 */	extsb r0, r0
/* 802C3DDC  C8 22 C2 E0 */	lfd f1, lit_3842(r2)
/* 802C3DE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802C3DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3DE8  3C 00 43 30 */	lis r0, 0x4330
/* 802C3DEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C3DF0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C3DF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C3DF8  C0 42 C2 A0 */	lfs f2, lit_3723(r2)
/* 802C3DFC  C0 62 C2 D4 */	lfs f3, lit_3838(r2)
/* 802C3E00  C0 82 C2 98 */	lfs f4, lit_3721(r2)
/* 802C3E04  C0 A2 C2 D0 */	lfs f5, lit_3837(r2)
/* 802C3E08  38 60 00 00 */	li r3, 0
/* 802C3E0C  4B FE 58 81 */	bl linearTransform__6Z2CalcFfffffb
/* 802C3E10  FF E0 08 90 */	fmr f31, f1
/* 802C3E14  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C3E18  38 63 00 48 */	addi r3, r3, 0x48
/* 802C3E1C  FC 20 F0 90 */	fmr f1, f30
/* 802C3E20  38 80 00 00 */	li r4, 0
/* 802C3E24  4B FD EF 91 */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C3E28  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C3E2C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C3E30  FC 20 F8 90 */	fmr f1, f31
/* 802C3E34  38 80 00 00 */	li r4, 0
/* 802C3E38  4B FD EF D5 */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802C3E3C:
/* 802C3E3C  7F E3 FB 78 */	mr r3, r31
/* 802C3E40  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802C3E44  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802C3E48  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802C3E4C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802C3E50  39 61 00 30 */	addi r11, r1, 0x30
/* 802C3E54  48 09 E3 D5 */	bl _restgpr_29
/* 802C3E58  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802C3E5C  7C 08 03 A6 */	mtlr r0
/* 802C3E60  38 21 00 50 */	addi r1, r1, 0x50
/* 802C3E64  4E 80 00 20 */	blr 
