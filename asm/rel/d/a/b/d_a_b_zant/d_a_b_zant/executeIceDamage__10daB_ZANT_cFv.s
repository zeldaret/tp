lbl_8064687C:
/* 8064687C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80646880  7C 08 02 A6 */	mflr r0
/* 80646884  90 01 00 54 */	stw r0, 0x54(r1)
/* 80646888  39 61 00 50 */	addi r11, r1, 0x50
/* 8064688C  4B D1 B9 50 */	b _savegpr_29
/* 80646890  7C 7E 1B 78 */	mr r30, r3
/* 80646894  3C 60 80 65 */	lis r3, lit_3757@ha
/* 80646898  3B E3 EB 1C */	addi r31, r3, lit_3757@l
/* 8064689C  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 806468A0  2C 00 00 0A */	cmpwi r0, 0xa
/* 806468A4  41 80 00 98 */	blt lbl_8064693C
/* 806468A8  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 806468AC  2C 00 00 00 */	cmpwi r0, 0
/* 806468B0  40 82 00 8C */	bne lbl_8064693C
/* 806468B4  38 60 00 00 */	li r3, 0
/* 806468B8  38 00 00 0B */	li r0, 0xb
/* 806468BC  7C 09 03 A6 */	mtctr r0
lbl_806468C0:
/* 806468C0  7C 9E 1A 14 */	add r4, r30, r3
/* 806468C4  80 04 1A B4 */	lwz r0, 0x1ab4(r4)
/* 806468C8  60 00 00 01 */	ori r0, r0, 1
/* 806468CC  90 04 1A B4 */	stw r0, 0x1ab4(r4)
/* 806468D0  80 04 1A 30 */	lwz r0, 0x1a30(r4)
/* 806468D4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806468D8  90 04 1A 30 */	stw r0, 0x1a30(r4)
/* 806468DC  80 04 1A B4 */	lwz r0, 0x1ab4(r4)
/* 806468E0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806468E4  90 04 1A B4 */	stw r0, 0x1ab4(r4)
/* 806468E8  38 63 01 38 */	addi r3, r3, 0x138
/* 806468EC  42 00 FF D4 */	bdnz lbl_806468C0
/* 806468F0  38 60 00 00 */	li r3, 0
/* 806468F4  38 DF 00 40 */	addi r6, r31, 0x40
/* 806468F8  38 00 00 06 */	li r0, 6
/* 806468FC  7C 09 03 A6 */	mtctr r0
lbl_80646900:
/* 80646900  7C 06 18 2E */	lwzx r0, r6, r3
/* 80646904  1C A0 01 38 */	mulli r5, r0, 0x138
/* 80646908  38 85 0C C8 */	addi r4, r5, 0xcc8
/* 8064690C  7C 1E 20 2E */	lwzx r0, r30, r4
/* 80646910  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80646914  7C 1E 21 2E */	stwx r0, r30, r4
/* 80646918  38 85 0D 4C */	addi r4, r5, 0xd4c
/* 8064691C  7C 1E 20 2E */	lwzx r0, r30, r4
/* 80646920  60 00 00 01 */	ori r0, r0, 1
/* 80646924  7C 1E 21 2E */	stwx r0, r30, r4
/* 80646928  7C 1E 20 2E */	lwzx r0, r30, r4
/* 8064692C  60 00 01 00 */	ori r0, r0, 0x100
/* 80646930  7C 1E 21 2E */	stwx r0, r30, r4
/* 80646934  38 63 00 04 */	addi r3, r3, 4
/* 80646938  42 00 FF C8 */	bdnz lbl_80646900
lbl_8064693C:
/* 8064693C  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 80646940  28 00 00 29 */	cmplwi r0, 0x29
/* 80646944  41 81 08 70 */	bgt lbl_806471B4
/* 80646948  3C 60 80 65 */	lis r3, lit_7981@ha
/* 8064694C  38 63 F1 60 */	addi r3, r3, lit_7981@l
/* 80646950  54 00 10 3A */	slwi r0, r0, 2
/* 80646954  7C 03 00 2E */	lwzx r0, r3, r0
/* 80646958  7C 09 03 A6 */	mtctr r0
/* 8064695C  4E 80 04 20 */	bctr 
lbl_80646960:
/* 80646960  38 00 00 02 */	li r0, 2
/* 80646964  98 1E 07 0E */	stb r0, 0x70e(r30)
/* 80646968  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 8064696C  2C 00 00 00 */	cmpwi r0, 0
/* 80646970  40 82 00 20 */	bne lbl_80646990
/* 80646974  7F C3 F3 78 */	mr r3, r30
/* 80646978  38 80 00 2E */	li r4, 0x2e
/* 8064697C  38 A0 00 02 */	li r5, 2
/* 80646980  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80646984  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80646988  4B FF 7C 3D */	bl setBck__10daB_ZANT_cFiUcff
/* 8064698C  48 00 00 1C */	b lbl_806469A8
lbl_80646990:
/* 80646990  7F C3 F3 78 */	mr r3, r30
/* 80646994  38 80 00 2F */	li r4, 0x2f
/* 80646998  38 A0 00 02 */	li r5, 2
/* 8064699C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 806469A0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 806469A4  4B FF 7C 21 */	bl setBck__10daB_ZANT_cFiUcff
lbl_806469A8:
/* 806469A8  80 1E 1A 18 */	lwz r0, 0x1a18(r30)
/* 806469AC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806469B0  90 1E 1A 18 */	stw r0, 0x1a18(r30)
/* 806469B4  80 1E 1E F8 */	lwz r0, 0x1ef8(r30)
/* 806469B8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806469BC  90 1E 1E F8 */	stw r0, 0x1ef8(r30)
/* 806469C0  38 60 00 00 */	li r3, 0
/* 806469C4  38 BF 00 40 */	addi r5, r31, 0x40
/* 806469C8  38 00 00 06 */	li r0, 6
/* 806469CC  7C 09 03 A6 */	mtctr r0
lbl_806469D0:
/* 806469D0  7C 05 18 2E */	lwzx r0, r5, r3
/* 806469D4  1C 80 01 38 */	mulli r4, r0, 0x138
/* 806469D8  38 84 0D 4C */	addi r4, r4, 0xd4c
/* 806469DC  7C 1E 20 2E */	lwzx r0, r30, r4
/* 806469E0  60 00 00 01 */	ori r0, r0, 1
/* 806469E4  7C 1E 21 2E */	stwx r0, r30, r4
/* 806469E8  38 63 00 04 */	addi r3, r3, 4
/* 806469EC  42 00 FF E4 */	bdnz lbl_806469D0
/* 806469F0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806469F4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806469F8  38 00 00 02 */	li r0, 2
/* 806469FC  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80646A00  38 00 01 2C */	li r0, 0x12c
/* 80646A04  90 1E 06 E8 */	stw r0, 0x6e8(r30)
/* 80646A08  38 00 00 00 */	li r0, 0
/* 80646A0C  98 1E 07 0B */	stb r0, 0x70b(r30)
/* 80646A10  88 7E 07 0B */	lbz r3, 0x70b(r30)
/* 80646A14  38 03 00 01 */	addi r0, r3, 1
/* 80646A18  98 1E 07 0B */	stb r0, 0x70b(r30)
/* 80646A1C  C0 3E 06 C0 */	lfs f1, 0x6c0(r30)
/* 80646A20  88 1E 07 0B */	lbz r0, 0x70b(r30)
/* 80646A24  54 00 10 3A */	slwi r0, r0, 2
/* 80646A28  38 7F 02 20 */	addi r3, r31, 0x220
/* 80646A2C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80646A30  EC 21 00 28 */	fsubs f1, f1, f0
/* 80646A34  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80646A38  EC 01 00 24 */	fdivs f0, f1, f0
/* 80646A3C  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
lbl_80646A40:
/* 80646A40  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80646A44  38 63 00 0C */	addi r3, r3, 0xc
/* 80646A48  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 80646A4C  4B CE 19 E0 */	b checkPass__12J3DFrameCtrlFf
/* 80646A50  2C 03 00 00 */	cmpwi r3, 0
/* 80646A54  40 82 00 1C */	bne lbl_80646A70
/* 80646A58  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80646A5C  38 63 00 0C */	addi r3, r3, 0xc
/* 80646A60  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80646A64  4B CE 19 C8 */	b checkPass__12J3DFrameCtrlFf
/* 80646A68  2C 03 00 00 */	cmpwi r3, 0
/* 80646A6C  41 82 00 E0 */	beq lbl_80646B4C
lbl_80646A70:
/* 80646A70  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80646A74  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80646A78  C0 1F 01 FC */	lfs f0, 0x1fc(r31)
/* 80646A7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80646A80  40 80 00 10 */	bge lbl_80646A90
/* 80646A84  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80646A88  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80646A8C  48 00 00 0C */	b lbl_80646A98
lbl_80646A90:
/* 80646A90  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80646A94  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80646A98:
/* 80646A98  88 1E 07 0B */	lbz r0, 0x70b(r30)
/* 80646A9C  28 00 00 08 */	cmplwi r0, 8
/* 80646AA0  41 81 00 10 */	bgt lbl_80646AB0
/* 80646AA4  C0 1F 02 78 */	lfs f0, 0x278(r31)
/* 80646AA8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80646AAC  48 00 00 50 */	b lbl_80646AFC
lbl_80646AB0:
/* 80646AB0  28 00 00 09 */	cmplwi r0, 9
/* 80646AB4  40 82 00 28 */	bne lbl_80646ADC
/* 80646AB8  88 1E 07 1A */	lbz r0, 0x71a(r30)
/* 80646ABC  28 00 00 00 */	cmplwi r0, 0
/* 80646AC0  40 82 00 10 */	bne lbl_80646AD0
/* 80646AC4  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 80646AC8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80646ACC  48 00 00 30 */	b lbl_80646AFC
lbl_80646AD0:
/* 80646AD0  C0 1F 01 B0 */	lfs f0, 0x1b0(r31)
/* 80646AD4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80646AD8  48 00 00 24 */	b lbl_80646AFC
lbl_80646ADC:
/* 80646ADC  88 1E 07 1A */	lbz r0, 0x71a(r30)
/* 80646AE0  28 00 00 00 */	cmplwi r0, 0
/* 80646AE4  40 82 00 10 */	bne lbl_80646AF4
/* 80646AE8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80646AEC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80646AF0  48 00 00 0C */	b lbl_80646AFC
lbl_80646AF4:
/* 80646AF4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80646AF8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80646AFC:
/* 80646AFC  88 1E 07 0B */	lbz r0, 0x70b(r30)
/* 80646B00  54 00 10 3A */	slwi r0, r0, 2
/* 80646B04  38 7F 02 4C */	addi r3, r31, 0x24c
/* 80646B08  7C 03 04 2E */	lfsx f0, r3, r0
/* 80646B0C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80646B10  C0 1F 02 7C */	lfs f0, 0x27c(r31)
/* 80646B14  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 80646B18  38 00 00 03 */	li r0, 3
/* 80646B1C  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80646B20  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070439@ha */
/* 80646B24  38 03 04 39 */	addi r0, r3, 0x0439 /* 0x00070439@l */
/* 80646B28  90 01 00 18 */	stw r0, 0x18(r1)
/* 80646B2C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80646B30  38 81 00 18 */	addi r4, r1, 0x18
/* 80646B34  38 A0 FF FF */	li r5, -1
/* 80646B38  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80646B3C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80646B40  7D 89 03 A6 */	mtctr r12
/* 80646B44  4E 80 04 21 */	bctrl 
/* 80646B48  48 00 06 6C */	b lbl_806471B4
lbl_80646B4C:
/* 80646B4C  88 1E 07 0B */	lbz r0, 0x70b(r30)
/* 80646B50  28 00 00 0A */	cmplwi r0, 0xa
/* 80646B54  41 81 00 24 */	bgt lbl_80646B78
/* 80646B58  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80646B5C  54 00 15 BA */	rlwinm r0, r0, 2, 0x16, 0x1d
/* 80646B60  38 9F 02 20 */	addi r4, r31, 0x220
/* 80646B64  7C 24 04 2E */	lfsx f1, r4, r0
/* 80646B68  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80646B6C  C0 7E 06 CC */	lfs f3, 0x6cc(r30)
/* 80646B70  4B C2 8E CC */	b cLib_addCalc2__FPffff
/* 80646B74  48 00 00 14 */	b lbl_80646B88
lbl_80646B78:
/* 80646B78  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80646B7C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80646B80  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80646B84  4B C2 9B BC */	b cLib_chaseF__FPfff
lbl_80646B88:
/* 80646B88  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 80646B8C  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 80646B90  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 80646B94  A8 9E 06 BA */	lha r4, 0x6ba(r30)
/* 80646B98  38 A0 00 08 */	li r5, 8
/* 80646B9C  38 C0 10 00 */	li r6, 0x1000
/* 80646BA0  4B C2 9A 68 */	b cLib_addCalcAngleS2__FPssss
/* 80646BA4  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80646BA8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80646BAC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80646BB0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80646BB4  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 80646BB8  2C 00 00 00 */	cmpwi r0, 0
/* 80646BBC  40 82 05 F8 */	bne lbl_806471B4
/* 80646BC0  38 00 00 1E */	li r0, 0x1e
/* 80646BC4  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80646BC8  48 00 05 EC */	b lbl_806471B4
lbl_80646BCC:
/* 80646BCC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80646BD0  38 63 00 0C */	addi r3, r3, 0xc
/* 80646BD4  C0 3F 01 CC */	lfs f1, 0x1cc(r31)
/* 80646BD8  4B CE 18 54 */	b checkPass__12J3DFrameCtrlFf
/* 80646BDC  2C 03 00 00 */	cmpwi r3, 0
/* 80646BE0  40 82 00 1C */	bne lbl_80646BFC
/* 80646BE4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80646BE8  38 63 00 0C */	addi r3, r3, 0xc
/* 80646BEC  C0 3F 02 78 */	lfs f1, 0x278(r31)
/* 80646BF0  4B CE 18 3C */	b checkPass__12J3DFrameCtrlFf
/* 80646BF4  2C 03 00 00 */	cmpwi r3, 0
/* 80646BF8  41 82 05 BC */	beq lbl_806471B4
lbl_80646BFC:
/* 80646BFC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80646C00  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80646C04  C0 1F 01 FC */	lfs f0, 0x1fc(r31)
/* 80646C08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80646C0C  40 80 00 10 */	bge lbl_80646C1C
/* 80646C10  C0 1F 01 CC */	lfs f0, 0x1cc(r31)
/* 80646C14  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80646C18  48 00 00 0C */	b lbl_80646C24
lbl_80646C1C:
/* 80646C1C  C0 1F 02 78 */	lfs f0, 0x278(r31)
/* 80646C20  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80646C24:
/* 80646C24  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80646C28  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80646C2C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80646C30  38 00 00 04 */	li r0, 4
/* 80646C34  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80646C38  48 00 05 7C */	b lbl_806471B4
lbl_80646C3C:
/* 80646C3C  80 1E 07 F8 */	lwz r0, 0x7f8(r30)
/* 80646C40  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80646C44  41 82 05 70 */	beq lbl_806471B4
/* 80646C48  7F C3 F3 78 */	mr r3, r30
/* 80646C4C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80646C50  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80646C54  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80646C58  4B 9D 3A B8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80646C5C  7C 7D 1B 78 */	mr r29, r3
/* 80646C60  C0 3F 02 80 */	lfs f1, 0x280(r31)
/* 80646C64  4B C2 0D 28 */	b cM_rndFX__Ff
/* 80646C68  C0 1F 01 9C */	lfs f0, 0x19c(r31)
/* 80646C6C  EC 40 00 72 */	fmuls f2, f0, f1
/* 80646C70  7F A0 07 34 */	extsh r0, r29
/* 80646C74  C8 3F 01 80 */	lfd f1, 0x180(r31)
/* 80646C78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80646C7C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80646C80  3C 00 43 30 */	lis r0, 0x4330
/* 80646C84  90 01 00 28 */	stw r0, 0x28(r1)
/* 80646C88  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80646C8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80646C90  EC 20 10 2A */	fadds f1, f0, f2
/* 80646C94  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80646C98  EC 00 08 2A */	fadds f0, f0, f1
/* 80646C9C  FC 00 00 1E */	fctiwz f0, f0
/* 80646CA0  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80646CA4  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80646CA8  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80646CAC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80646CB0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80646CB4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80646CB8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80646CBC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80646CC0  38 61 00 1C */	addi r3, r1, 0x1c
/* 80646CC4  4B D0 04 74 */	b PSVECSquareMag
/* 80646CC8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80646CCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80646CD0  40 81 00 58 */	ble lbl_80646D28
/* 80646CD4  FC 00 08 34 */	frsqrte f0, f1
/* 80646CD8  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 80646CDC  FC 44 00 32 */	fmul f2, f4, f0
/* 80646CE0  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 80646CE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80646CE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80646CEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80646CF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80646CF4  FC 44 00 32 */	fmul f2, f4, f0
/* 80646CF8  FC 00 00 32 */	fmul f0, f0, f0
/* 80646CFC  FC 01 00 32 */	fmul f0, f1, f0
/* 80646D00  FC 03 00 28 */	fsub f0, f3, f0
/* 80646D04  FC 02 00 32 */	fmul f0, f2, f0
/* 80646D08  FC 44 00 32 */	fmul f2, f4, f0
/* 80646D0C  FC 00 00 32 */	fmul f0, f0, f0
/* 80646D10  FC 01 00 32 */	fmul f0, f1, f0
/* 80646D14  FC 03 00 28 */	fsub f0, f3, f0
/* 80646D18  FC 02 00 32 */	fmul f0, f2, f0
/* 80646D1C  FC 21 00 32 */	fmul f1, f1, f0
/* 80646D20  FC 20 08 18 */	frsp f1, f1
/* 80646D24  48 00 00 88 */	b lbl_80646DAC
lbl_80646D28:
/* 80646D28  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 80646D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80646D30  40 80 00 10 */	bge lbl_80646D40
/* 80646D34  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80646D38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80646D3C  48 00 00 70 */	b lbl_80646DAC
lbl_80646D40:
/* 80646D40  D0 21 00 08 */	stfs f1, 8(r1)
/* 80646D44  80 81 00 08 */	lwz r4, 8(r1)
/* 80646D48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80646D4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80646D50  7C 03 00 00 */	cmpw r3, r0
/* 80646D54  41 82 00 14 */	beq lbl_80646D68
/* 80646D58  40 80 00 40 */	bge lbl_80646D98
/* 80646D5C  2C 03 00 00 */	cmpwi r3, 0
/* 80646D60  41 82 00 20 */	beq lbl_80646D80
/* 80646D64  48 00 00 34 */	b lbl_80646D98
lbl_80646D68:
/* 80646D68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80646D6C  41 82 00 0C */	beq lbl_80646D78
/* 80646D70  38 00 00 01 */	li r0, 1
/* 80646D74  48 00 00 28 */	b lbl_80646D9C
lbl_80646D78:
/* 80646D78  38 00 00 02 */	li r0, 2
/* 80646D7C  48 00 00 20 */	b lbl_80646D9C
lbl_80646D80:
/* 80646D80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80646D84  41 82 00 0C */	beq lbl_80646D90
/* 80646D88  38 00 00 05 */	li r0, 5
/* 80646D8C  48 00 00 10 */	b lbl_80646D9C
lbl_80646D90:
/* 80646D90  38 00 00 03 */	li r0, 3
/* 80646D94  48 00 00 08 */	b lbl_80646D9C
lbl_80646D98:
/* 80646D98  38 00 00 04 */	li r0, 4
lbl_80646D9C:
/* 80646D9C  2C 00 00 01 */	cmpwi r0, 1
/* 80646DA0  40 82 00 0C */	bne lbl_80646DAC
/* 80646DA4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80646DA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80646DAC:
/* 80646DAC  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80646DB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80646DB4  40 81 00 1C */	ble lbl_80646DD0
/* 80646DB8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80646DBC  FC 20 00 50 */	fneg f1, f0
/* 80646DC0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80646DC4  FC 40 00 50 */	fneg f2, f0
/* 80646DC8  4B C2 08 AC */	b cM_atan2s__Fff
/* 80646DCC  7C 7D 1B 78 */	mr r29, r3
lbl_80646DD0:
/* 80646DD0  B3 BE 06 BA */	sth r29, 0x6ba(r30)
/* 80646DD4  88 7E 07 0B */	lbz r3, 0x70b(r30)
/* 80646DD8  28 03 00 0A */	cmplwi r3, 0xa
/* 80646DDC  40 80 00 0C */	bge lbl_80646DE8
/* 80646DE0  38 03 00 01 */	addi r0, r3, 1
/* 80646DE4  98 1E 07 0B */	stb r0, 0x70b(r30)
lbl_80646DE8:
/* 80646DE8  C0 3E 06 C0 */	lfs f1, 0x6c0(r30)
/* 80646DEC  88 1E 07 0B */	lbz r0, 0x70b(r30)
/* 80646DF0  54 00 10 3A */	slwi r0, r0, 2
/* 80646DF4  38 7F 02 20 */	addi r3, r31, 0x220
/* 80646DF8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80646DFC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80646E00  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80646E04  EC 01 00 24 */	fdivs f0, f1, f0
/* 80646E08  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 80646E0C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80646E10  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80646E14  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 80646E18  EC 01 00 28 */	fsubs f0, f1, f0
/* 80646E1C  EC 00 08 24 */	fdivs f0, f0, f1
/* 80646E20  EC 02 00 2A */	fadds f0, f2, f0
/* 80646E24  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80646E28  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80646E2C  88 1E 07 0B */	lbz r0, 0x70b(r30)
/* 80646E30  28 00 00 08 */	cmplwi r0, 8
/* 80646E34  40 82 00 70 */	bne lbl_80646EA4
/* 80646E38  38 60 00 00 */	li r3, 0
/* 80646E3C  38 00 00 0B */	li r0, 0xb
/* 80646E40  7C 09 03 A6 */	mtctr r0
lbl_80646E44:
/* 80646E44  38 83 1A B4 */	addi r4, r3, 0x1ab4
/* 80646E48  7C 1E 20 2E */	lwzx r0, r30, r4
/* 80646E4C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80646E50  7C 1E 21 2E */	stwx r0, r30, r4
/* 80646E54  7C 1E 20 2E */	lwzx r0, r30, r4
/* 80646E58  60 00 00 04 */	ori r0, r0, 4
/* 80646E5C  7C 1E 21 2E */	stwx r0, r30, r4
/* 80646E60  38 63 01 38 */	addi r3, r3, 0x138
/* 80646E64  42 00 FF E0 */	bdnz lbl_80646E44
/* 80646E68  38 60 00 00 */	li r3, 0
/* 80646E6C  38 BF 00 40 */	addi r5, r31, 0x40
/* 80646E70  38 00 00 06 */	li r0, 6
/* 80646E74  7C 09 03 A6 */	mtctr r0
lbl_80646E78:
/* 80646E78  7C 05 18 2E */	lwzx r0, r5, r3
/* 80646E7C  1C 80 01 38 */	mulli r4, r0, 0x138
/* 80646E80  38 84 0D 4C */	addi r4, r4, 0xd4c
/* 80646E84  7C 1E 20 2E */	lwzx r0, r30, r4
/* 80646E88  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80646E8C  7C 1E 21 2E */	stwx r0, r30, r4
/* 80646E90  7C 1E 20 2E */	lwzx r0, r30, r4
/* 80646E94  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80646E98  7C 1E 21 2E */	stwx r0, r30, r4
/* 80646E9C  38 63 00 04 */	addi r3, r3, 4
/* 80646EA0  42 00 FF D8 */	bdnz lbl_80646E78
lbl_80646EA4:
/* 80646EA4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070438@ha */
/* 80646EA8  38 03 04 38 */	addi r0, r3, 0x0438 /* 0x00070438@l */
/* 80646EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80646EB0  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80646EB4  38 81 00 14 */	addi r4, r1, 0x14
/* 80646EB8  38 A0 00 00 */	li r5, 0
/* 80646EBC  38 C0 FF FF */	li r6, -1
/* 80646EC0  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80646EC4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80646EC8  7D 89 03 A6 */	mtctr r12
/* 80646ECC  4E 80 04 21 */	bctrl 
/* 80646ED0  38 00 00 02 */	li r0, 2
/* 80646ED4  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80646ED8  48 00 02 DC */	b lbl_806471B4
lbl_80646EDC:
/* 80646EDC  7F C3 F3 78 */	mr r3, r30
/* 80646EE0  38 80 00 00 */	li r4, 0
/* 80646EE4  4B FF 89 69 */	bl setNextDamageMode__10daB_ZANT_cFi
/* 80646EE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80646EEC  40 82 02 C8 */	bne lbl_806471B4
/* 80646EF0  4B C2 09 7C */	b cM_rnd__Fv
/* 80646EF4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80646EF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80646EFC  40 80 00 20 */	bge lbl_80646F1C
/* 80646F00  7F C3 F3 78 */	mr r3, r30
/* 80646F04  38 80 00 07 */	li r4, 7
/* 80646F08  38 A0 00 00 */	li r5, 0
/* 80646F0C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80646F10  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80646F14  4B FF 76 B1 */	bl setBck__10daB_ZANT_cFiUcff
/* 80646F18  48 00 00 1C */	b lbl_80646F34
lbl_80646F1C:
/* 80646F1C  7F C3 F3 78 */	mr r3, r30
/* 80646F20  38 80 00 08 */	li r4, 8
/* 80646F24  38 A0 00 00 */	li r5, 0
/* 80646F28  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80646F2C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80646F30  4B FF 76 95 */	bl setBck__10daB_ZANT_cFiUcff
lbl_80646F34:
/* 80646F34  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007040C@ha */
/* 80646F38  38 03 04 0C */	addi r0, r3, 0x040C /* 0x0007040C@l */
/* 80646F3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80646F40  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80646F44  38 81 00 10 */	addi r4, r1, 0x10
/* 80646F48  38 A0 FF FF */	li r5, -1
/* 80646F4C  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 80646F50  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80646F54  7D 89 03 A6 */	mtctr r12
/* 80646F58  4E 80 04 21 */	bctrl 
/* 80646F5C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80646F60  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80646F64  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80646F68  38 00 00 0B */	li r0, 0xb
/* 80646F6C  90 1E 06 DC */	stw r0, 0x6dc(r30)
lbl_80646F70:
/* 80646F70  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80646F74  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80646F78  C0 5F 00 AC */	lfs f2, 0xac(r31)
/* 80646F7C  4B C2 97 C4 */	b cLib_chaseF__FPfff
/* 80646F80  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 80646F84  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 80646F88  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80646F8C  38 80 00 01 */	li r4, 1
/* 80646F90  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80646F94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80646F98  40 82 00 18 */	bne lbl_80646FB0
/* 80646F9C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80646FA0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80646FA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80646FA8  41 82 00 08 */	beq lbl_80646FB0
/* 80646FAC  38 80 00 00 */	li r4, 0
lbl_80646FB0:
/* 80646FB0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80646FB4  41 82 02 00 */	beq lbl_806471B4
/* 80646FB8  38 00 00 0C */	li r0, 0xc
/* 80646FBC  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80646FC0  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 80646FC4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80646FC8  41 80 00 0C */	blt lbl_80646FD4
/* 80646FCC  38 00 00 1E */	li r0, 0x1e
/* 80646FD0  90 1E 06 E8 */	stw r0, 0x6e8(r30)
lbl_80646FD4:
/* 80646FD4  7F C3 F3 78 */	mr r3, r30
/* 80646FD8  38 80 00 41 */	li r4, 0x41
/* 80646FDC  38 A0 00 02 */	li r5, 2
/* 80646FE0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80646FE4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80646FE8  4B FF 75 DD */	bl setBck__10daB_ZANT_cFiUcff
/* 80646FEC  48 00 01 C8 */	b lbl_806471B4
lbl_80646FF0:
/* 80646FF0  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 80646FF4  2C 00 00 00 */	cmpwi r0, 0
/* 80646FF8  40 82 01 BC */	bne lbl_806471B4
/* 80646FFC  38 00 00 1E */	li r0, 0x1e
/* 80647000  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80647004  48 00 01 B0 */	b lbl_806471B4
lbl_80647008:
/* 80647008  7F C3 F3 78 */	mr r3, r30
/* 8064700C  38 80 00 14 */	li r4, 0x14
/* 80647010  38 A0 00 00 */	li r5, 0
/* 80647014  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80647018  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 8064701C  4B FF 75 A9 */	bl setBck__10daB_ZANT_cFiUcff
/* 80647020  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070412@ha */
/* 80647024  38 03 04 12 */	addi r0, r3, 0x0412 /* 0x00070412@l */
/* 80647028  90 01 00 0C */	stw r0, 0xc(r1)
/* 8064702C  38 7E 05 F0 */	addi r3, r30, 0x5f0
/* 80647030  38 81 00 0C */	addi r4, r1, 0xc
/* 80647034  38 A0 FF FF */	li r5, -1
/* 80647038  81 9E 05 F0 */	lwz r12, 0x5f0(r30)
/* 8064703C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80647040  7D 89 03 A6 */	mtctr r12
/* 80647044  4E 80 04 21 */	bctrl 
/* 80647048  38 00 00 15 */	li r0, 0x15
/* 8064704C  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80647050  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80647054  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80647058  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_8064705C:
/* 8064705C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80647060  38 80 00 01 */	li r4, 1
/* 80647064  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80647068  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8064706C  40 82 00 18 */	bne lbl_80647084
/* 80647070  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80647074  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80647078  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8064707C  41 82 00 08 */	beq lbl_80647084
/* 80647080  38 80 00 00 */	li r4, 0
lbl_80647084:
/* 80647084  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80647088  41 82 01 2C */	beq lbl_806471B4
/* 8064708C  38 00 00 1E */	li r0, 0x1e
/* 80647090  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 80647094  48 00 01 20 */	b lbl_806471B4
lbl_80647098:
/* 80647098  7F C3 F3 78 */	mr r3, r30
/* 8064709C  38 80 00 0A */	li r4, 0xa
/* 806470A0  38 A0 00 02 */	li r5, 2
/* 806470A4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806470A8  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 806470AC  4B FF 75 19 */	bl setBck__10daB_ZANT_cFiUcff
/* 806470B0  38 00 00 29 */	li r0, 0x29
/* 806470B4  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 806470B8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806470BC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806470C0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806470C4  38 00 00 1E */	li r0, 0x1e
/* 806470C8  90 1E 06 E8 */	stw r0, 0x6e8(r30)
lbl_806470CC:
/* 806470CC  80 1E 06 E8 */	lwz r0, 0x6e8(r30)
/* 806470D0  2C 00 00 00 */	cmpwi r0, 0
/* 806470D4  40 82 00 E0 */	bne lbl_806471B4
/* 806470D8  38 00 00 1E */	li r0, 0x1e
/* 806470DC  90 1E 06 DC */	stw r0, 0x6dc(r30)
/* 806470E0  48 00 00 D4 */	b lbl_806471B4
lbl_806470E4:
/* 806470E4  38 60 00 00 */	li r3, 0
/* 806470E8  38 00 00 0B */	li r0, 0xb
/* 806470EC  7C 09 03 A6 */	mtctr r0
lbl_806470F0:
/* 806470F0  7C 9E 1A 14 */	add r4, r30, r3
/* 806470F4  80 04 1A B4 */	lwz r0, 0x1ab4(r4)
/* 806470F8  60 00 00 01 */	ori r0, r0, 1
/* 806470FC  90 04 1A B4 */	stw r0, 0x1ab4(r4)
/* 80647100  80 04 1A 30 */	lwz r0, 0x1a30(r4)
/* 80647104  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80647108  90 04 1A 30 */	stw r0, 0x1a30(r4)
/* 8064710C  80 04 1A B4 */	lwz r0, 0x1ab4(r4)
/* 80647110  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80647114  90 04 1A B4 */	stw r0, 0x1ab4(r4)
/* 80647118  38 63 01 38 */	addi r3, r3, 0x138
/* 8064711C  42 00 FF D4 */	bdnz lbl_806470F0
/* 80647120  38 60 00 00 */	li r3, 0
/* 80647124  38 DF 00 40 */	addi r6, r31, 0x40
/* 80647128  38 00 00 06 */	li r0, 6
/* 8064712C  7C 09 03 A6 */	mtctr r0
lbl_80647130:
/* 80647130  7C 06 18 2E */	lwzx r0, r6, r3
/* 80647134  1C A0 01 38 */	mulli r5, r0, 0x138
/* 80647138  38 85 0C C8 */	addi r4, r5, 0xcc8
/* 8064713C  7C 1E 20 2E */	lwzx r0, r30, r4
/* 80647140  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80647144  7C 1E 21 2E */	stwx r0, r30, r4
/* 80647148  38 85 0D 4C */	addi r4, r5, 0xd4c
/* 8064714C  7C 1E 20 2E */	lwzx r0, r30, r4
/* 80647150  60 00 00 01 */	ori r0, r0, 1
/* 80647154  7C 1E 21 2E */	stwx r0, r30, r4
/* 80647158  7C 1E 20 2E */	lwzx r0, r30, r4
/* 8064715C  60 00 01 00 */	ori r0, r0, 0x100
/* 80647160  7C 1E 21 2E */	stwx r0, r30, r4
/* 80647164  38 63 00 04 */	addi r3, r3, 4
/* 80647168  42 00 FF C8 */	bdnz lbl_80647130
/* 8064716C  7F C3 F3 78 */	mr r3, r30
/* 80647170  38 80 00 01 */	li r4, 1
/* 80647174  4B FF 86 D9 */	bl setNextDamageMode__10daB_ZANT_cFi
/* 80647178  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8064717C  40 82 00 38 */	bne lbl_806471B4
/* 80647180  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80647184  D0 3E 06 A0 */	stfs f1, 0x6a0(r30)
/* 80647188  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8064718C  D0 1E 06 A4 */	stfs f0, 0x6a4(r30)
/* 80647190  D0 3E 06 A8 */	stfs f1, 0x6a8(r30)
/* 80647194  38 00 00 01 */	li r0, 1
/* 80647198  98 1E 07 11 */	stb r0, 0x711(r30)
/* 8064719C  7F C3 F3 78 */	mr r3, r30
/* 806471A0  38 80 00 01 */	li r4, 1
/* 806471A4  38 A0 00 01 */	li r5, 1
/* 806471A8  4B FF 75 1D */	bl setActionMode__10daB_ZANT_cFii
/* 806471AC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 806471B0  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_806471B4:
/* 806471B4  39 61 00 50 */	addi r11, r1, 0x50
/* 806471B8  4B D1 B0 70 */	b _restgpr_29
/* 806471BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806471C0  7C 08 03 A6 */	mtlr r0
/* 806471C4  38 21 00 50 */	addi r1, r1, 0x50
/* 806471C8  4E 80 00 20 */	blr 
