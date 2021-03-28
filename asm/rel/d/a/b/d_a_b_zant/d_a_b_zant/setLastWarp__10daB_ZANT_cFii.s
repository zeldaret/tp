lbl_80648778:
/* 80648778  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8064877C  7C 08 02 A6 */	mflr r0
/* 80648780  90 01 00 64 */	stw r0, 0x64(r1)
/* 80648784  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80648788  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8064878C  39 61 00 50 */	addi r11, r1, 0x50
/* 80648790  4B D1 9A 4C */	b _savegpr_29
/* 80648794  7C 7D 1B 78 */	mr r29, r3
/* 80648798  3C 60 80 65 */	lis r3, lit_3757@ha
/* 8064879C  3B C3 EB 1C */	addi r30, r3, lit_3757@l
/* 806487A0  98 BD 06 FE */	stb r5, 0x6fe(r29)
/* 806487A4  88 1D 07 1A */	lbz r0, 0x71a(r29)
/* 806487A8  28 00 00 00 */	cmplwi r0, 0
/* 806487AC  40 82 00 1C */	bne lbl_806487C8
/* 806487B0  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806487B4  2C 00 01 90 */	cmpwi r0, 0x190
/* 806487B8  41 81 00 2C */	bgt lbl_806487E4
/* 806487BC  38 00 00 01 */	li r0, 1
/* 806487C0  98 1D 07 1A */	stb r0, 0x71a(r29)
/* 806487C4  48 00 00 20 */	b lbl_806487E4
lbl_806487C8:
/* 806487C8  28 00 00 01 */	cmplwi r0, 1
/* 806487CC  40 82 00 18 */	bne lbl_806487E4
/* 806487D0  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806487D4  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 806487D8  41 81 00 0C */	bgt lbl_806487E4
/* 806487DC  38 00 00 02 */	li r0, 2
/* 806487E0  98 1D 07 1A */	stb r0, 0x71a(r29)
lbl_806487E4:
/* 806487E4  88 7D 07 13 */	lbz r3, 0x713(r29)
/* 806487E8  88 1D 07 1A */	lbz r0, 0x71a(r29)
/* 806487EC  7C 03 00 40 */	cmplw r3, r0
/* 806487F0  41 82 00 38 */	beq lbl_80648828
/* 806487F4  38 60 00 00 */	li r3, 0
/* 806487F8  98 7D 07 1D */	stb r3, 0x71d(r29)
/* 806487FC  98 7D 07 03 */	stb r3, 0x703(r29)
/* 80648800  98 7D 07 1C */	stb r3, 0x71c(r29)
/* 80648804  98 7D 07 12 */	stb r3, 0x712(r29)
/* 80648808  88 1D 07 1A */	lbz r0, 0x71a(r29)
/* 8064880C  28 00 00 02 */	cmplwi r0, 2
/* 80648810  40 82 00 18 */	bne lbl_80648828
/* 80648814  38 00 01 C2 */	li r0, 0x1c2
/* 80648818  90 1D 06 EC */	stw r0, 0x6ec(r29)
/* 8064881C  38 00 00 01 */	li r0, 1
/* 80648820  98 1D 07 1D */	stb r0, 0x71d(r29)
/* 80648824  98 7D 06 FF */	stb r3, 0x6ff(r29)
lbl_80648828:
/* 80648828  88 1D 07 1A */	lbz r0, 0x71a(r29)
/* 8064882C  98 1D 07 13 */	stb r0, 0x713(r29)
/* 80648830  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80648834  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80648838  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8064883C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80648840  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80648844  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80648848  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8064884C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80648850  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80648854  88 1D 07 13 */	lbz r0, 0x713(r29)
/* 80648858  28 00 00 02 */	cmplwi r0, 2
/* 8064885C  40 82 00 84 */	bne lbl_806488E0
/* 80648860  2C 04 00 00 */	cmpwi r4, 0
/* 80648864  41 82 00 7C */	beq lbl_806488E0
/* 80648868  88 1D 07 03 */	lbz r0, 0x703(r29)
/* 8064886C  28 00 00 01 */	cmplwi r0, 1
/* 80648870  40 81 00 10 */	ble lbl_80648880
/* 80648874  88 1D 06 FF */	lbz r0, 0x6ff(r29)
/* 80648878  28 00 00 03 */	cmplwi r0, 3
/* 8064887C  41 80 00 20 */	blt lbl_8064889C
lbl_80648880:
/* 80648880  88 1D 07 1D */	lbz r0, 0x71d(r29)
/* 80648884  28 00 00 01 */	cmplwi r0, 1
/* 80648888  40 82 00 0C */	bne lbl_80648894
/* 8064888C  38 80 00 03 */	li r4, 3
/* 80648890  48 00 00 4C */	b lbl_806488DC
lbl_80648894:
/* 80648894  38 80 00 01 */	li r4, 1
/* 80648898  48 00 00 44 */	b lbl_806488DC
lbl_8064889C:
/* 8064889C  4B C1 EF D0 */	b cM_rnd__Fv
/* 806488A0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 806488A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806488A8  40 80 00 0C */	bge lbl_806488B4
/* 806488AC  38 80 00 03 */	li r4, 3
/* 806488B0  48 00 00 08 */	b lbl_806488B8
lbl_806488B4:
/* 806488B4  38 80 00 01 */	li r4, 1
lbl_806488B8:
/* 806488B8  88 1D 07 1D */	lbz r0, 0x71d(r29)
/* 806488BC  7C 00 20 00 */	cmpw r0, r4
/* 806488C0  40 82 00 14 */	bne lbl_806488D4
/* 806488C4  88 7D 06 FF */	lbz r3, 0x6ff(r29)
/* 806488C8  38 03 00 01 */	addi r0, r3, 1
/* 806488CC  98 1D 06 FF */	stb r0, 0x6ff(r29)
/* 806488D0  48 00 00 0C */	b lbl_806488DC
lbl_806488D4:
/* 806488D4  38 00 00 00 */	li r0, 0
/* 806488D8  98 1D 06 FF */	stb r0, 0x6ff(r29)
lbl_806488DC:
/* 806488DC  98 9D 07 1D */	stb r4, 0x71d(r29)
lbl_806488E0:
/* 806488E0  2C 04 00 02 */	cmpwi r4, 2
/* 806488E4  41 82 03 20 */	beq lbl_80648C04
/* 806488E8  40 80 00 14 */	bge lbl_806488FC
/* 806488EC  2C 04 00 00 */	cmpwi r4, 0
/* 806488F0  41 82 00 18 */	beq lbl_80648908
/* 806488F4  40 80 00 44 */	bge lbl_80648938
/* 806488F8  48 00 06 34 */	b lbl_80648F2C
lbl_806488FC:
/* 806488FC  2C 04 00 04 */	cmpwi r4, 4
/* 80648900  40 80 06 2C */	bge lbl_80648F2C
/* 80648904  48 00 04 C4 */	b lbl_80648DC8
lbl_80648908:
/* 80648908  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064890C  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80648910  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80648914  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 80648918  D0 1D 06 A8 */	stfs f0, 0x6a8(r29)
/* 8064891C  38 00 00 00 */	li r0, 0
/* 80648920  98 1D 07 0F */	stb r0, 0x70f(r29)
/* 80648924  38 00 00 01 */	li r0, 1
/* 80648928  98 1D 07 10 */	stb r0, 0x710(r29)
/* 8064892C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80648930  D0 1D 06 D0 */	stfs f0, 0x6d0(r29)
/* 80648934  48 00 05 F8 */	b lbl_80648F2C
lbl_80648938:
/* 80648938  88 1D 07 13 */	lbz r0, 0x713(r29)
/* 8064893C  28 00 00 00 */	cmplwi r0, 0
/* 80648940  40 82 00 D8 */	bne lbl_80648A18
/* 80648944  38 00 00 00 */	li r0, 0
/* 80648948  98 1D 07 0F */	stb r0, 0x70f(r29)
/* 8064894C  88 7D 07 03 */	lbz r3, 0x703(r29)
/* 80648950  38 03 00 01 */	addi r0, r3, 1
/* 80648954  98 1D 07 03 */	stb r0, 0x703(r29)
/* 80648958  88 1D 07 03 */	lbz r0, 0x703(r29)
/* 8064895C  28 00 00 03 */	cmplwi r0, 3
/* 80648960  41 80 00 58 */	blt lbl_806489B8
/* 80648964  4B C1 EF 08 */	b cM_rnd__Fv
/* 80648968  C0 7E 01 68 */	lfs f3, 0x168(r30)
/* 8064896C  88 1D 07 03 */	lbz r0, 0x703(r29)
/* 80648970  C8 5E 00 70 */	lfd f2, 0x70(r30)
/* 80648974  90 01 00 34 */	stw r0, 0x34(r1)
/* 80648978  3C 00 43 30 */	lis r0, 0x4330
/* 8064897C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80648980  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80648984  EC 40 10 28 */	fsubs f2, f0, f2
/* 80648988  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 8064898C  EC 02 00 24 */	fdivs f0, f2, f0
/* 80648990  EC 03 00 2A */	fadds f0, f3, f0
/* 80648994  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648998  40 80 00 20 */	bge lbl_806489B8
/* 8064899C  38 00 00 0A */	li r0, 0xa
/* 806489A0  98 1D 07 0F */	stb r0, 0x70f(r29)
/* 806489A4  38 00 00 00 */	li r0, 0
/* 806489A8  98 1D 07 1D */	stb r0, 0x71d(r29)
/* 806489AC  98 1D 07 03 */	stb r0, 0x703(r29)
/* 806489B0  98 1D 07 1C */	stb r0, 0x71c(r29)
/* 806489B4  98 1D 07 12 */	stb r0, 0x712(r29)
lbl_806489B8:
/* 806489B8  38 00 00 00 */	li r0, 0
/* 806489BC  98 1D 07 04 */	stb r0, 0x704(r29)
/* 806489C0  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806489C4  FC 20 00 50 */	fneg f1, f0
/* 806489C8  C0 5E 02 94 */	lfs f2, 0x294(r30)
/* 806489CC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806489D0  EC 42 00 28 */	fsubs f2, f2, f0
/* 806489D4  4B C1 EC A0 */	b cM_atan2s__Fff
/* 806489D8  C0 5E 01 BC */	lfs f2, 0x1bc(r30)
/* 806489DC  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 806489E0  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 806489E4  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 806489E8  7C 64 02 14 */	add r3, r4, r0
/* 806489EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 806489F0  EC 22 00 32 */	fmuls f1, f2, f0
/* 806489F4  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 806489F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 806489FC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80648A00  EC 02 00 32 */	fmuls f0, f2, f0
/* 80648A04  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80648A08  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80648A0C  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80648A10  D0 3D 06 A8 */	stfs f1, 0x6a8(r29)
/* 80648A14  48 00 05 18 */	b lbl_80648F2C
lbl_80648A18:
/* 80648A18  38 00 00 00 */	li r0, 0
/* 80648A1C  98 1D 07 0F */	stb r0, 0x70f(r29)
/* 80648A20  88 7D 07 03 */	lbz r3, 0x703(r29)
/* 80648A24  38 03 00 01 */	addi r0, r3, 1
/* 80648A28  98 1D 07 03 */	stb r0, 0x703(r29)
/* 80648A2C  88 1D 07 13 */	lbz r0, 0x713(r29)
/* 80648A30  28 00 00 02 */	cmplwi r0, 2
/* 80648A34  41 82 00 64 */	beq lbl_80648A98
/* 80648A38  88 1D 07 03 */	lbz r0, 0x703(r29)
/* 80648A3C  28 00 00 03 */	cmplwi r0, 3
/* 80648A40  41 80 00 58 */	blt lbl_80648A98
/* 80648A44  4B C1 EE 28 */	b cM_rnd__Fv
/* 80648A48  C0 7E 01 68 */	lfs f3, 0x168(r30)
/* 80648A4C  88 1D 07 03 */	lbz r0, 0x703(r29)
/* 80648A50  C8 5E 00 70 */	lfd f2, 0x70(r30)
/* 80648A54  90 01 00 34 */	stw r0, 0x34(r1)
/* 80648A58  3C 00 43 30 */	lis r0, 0x4330
/* 80648A5C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80648A60  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80648A64  EC 40 10 28 */	fsubs f2, f0, f2
/* 80648A68  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80648A6C  EC 02 00 24 */	fdivs f0, f2, f0
/* 80648A70  EC 03 00 2A */	fadds f0, f3, f0
/* 80648A74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648A78  40 80 00 20 */	bge lbl_80648A98
/* 80648A7C  38 00 00 0A */	li r0, 0xa
/* 80648A80  98 1D 07 0F */	stb r0, 0x70f(r29)
/* 80648A84  38 00 00 00 */	li r0, 0
/* 80648A88  98 1D 07 1D */	stb r0, 0x71d(r29)
/* 80648A8C  98 1D 07 03 */	stb r0, 0x703(r29)
/* 80648A90  98 1D 07 1C */	stb r0, 0x71c(r29)
/* 80648A94  98 1D 07 12 */	stb r0, 0x712(r29)
lbl_80648A98:
/* 80648A98  38 00 00 00 */	li r0, 0
/* 80648A9C  98 1D 07 04 */	stb r0, 0x704(r29)
/* 80648AA0  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80648AA4  4B C1 EE B0 */	b cM_rndF__Ff
/* 80648AA8  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80648AAC  EF E0 08 2A */	fadds f31, f0, f1
/* 80648AB0  83 FF 5D AC */	lwz r31, 0x5dac(r31)
/* 80648AB4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80648AB8  3C 63 00 01 */	addis r3, r3, 1
/* 80648ABC  38 03 80 00 */	addi r0, r3, -32768
/* 80648AC0  7C 04 07 34 */	extsh r4, r0
/* 80648AC4  88 1D 07 0F */	lbz r0, 0x70f(r29)
/* 80648AC8  28 00 00 0A */	cmplwi r0, 0xa
/* 80648ACC  40 82 00 50 */	bne lbl_80648B1C
/* 80648AD0  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80648AD4  EF FF 00 2A */	fadds f31, f31, f0
/* 80648AD8  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 80648ADC  4B C1 EE B0 */	b cM_rndFX__Ff
/* 80648AE0  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 80648AE4  EC 40 00 72 */	fmuls f2, f0, f1
/* 80648AE8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80648AEC  C8 3E 01 80 */	lfd f1, 0x180(r30)
/* 80648AF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80648AF4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80648AF8  3C 00 43 30 */	lis r0, 0x4330
/* 80648AFC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80648B00  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80648B04  EC 00 08 28 */	fsubs f0, f0, f1
/* 80648B08  EC 00 10 2A */	fadds f0, f0, f2
/* 80648B0C  FC 00 00 1E */	fctiwz f0, f0
/* 80648B10  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80648B14  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 80648B18  48 00 00 20 */	b lbl_80648B38
lbl_80648B1C:
/* 80648B1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80648B20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80648B24  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80648B28  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80648B2C  41 82 00 0C */	beq lbl_80648B38
/* 80648B30  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80648B34  EF FF 00 2A */	fadds f31, f31, f0
lbl_80648B38:
/* 80648B38  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80648B3C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80648B40  3B E3 00 04 */	addi r31, r3, 4
/* 80648B44  54 80 04 38 */	rlwinm r0, r4, 0, 0x10, 0x1c
/* 80648B48  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80648B4C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80648B50  7C 03 04 2E */	lfsx f0, r3, r0
/* 80648B54  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80648B58  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80648B5C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80648B60  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80648B64  D0 3D 06 A8 */	stfs f1, 0x6a8(r29)
/* 80648B68  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 80648B6C  38 81 00 24 */	addi r4, r1, 0x24
/* 80648B70  7C 65 1B 78 */	mr r5, r3
/* 80648B74  4B CF E5 1C */	b PSVECAdd
/* 80648B78  C0 3D 06 A8 */	lfs f1, 0x6a8(r29)
/* 80648B7C  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 80648B80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648B84  41 81 00 28 */	bgt lbl_80648BAC
/* 80648B88  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 80648B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648B90  41 80 00 1C */	blt lbl_80648BAC
/* 80648B94  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 80648B98  FC 00 02 10 */	fabs f0, f0
/* 80648B9C  FC 20 00 18 */	frsp f1, f0
/* 80648BA0  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 80648BA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648BA8  40 81 03 84 */	ble lbl_80648F2C
lbl_80648BAC:
/* 80648BAC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80648BB0  FC 20 00 50 */	fneg f1, f0
/* 80648BB4  C0 5E 02 94 */	lfs f2, 0x294(r30)
/* 80648BB8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80648BBC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80648BC0  4B C1 EA B4 */	b cM_atan2s__Fff
/* 80648BC4  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80648BC8  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80648BCC  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80648BD0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80648BD4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80648BD8  7C 03 04 2E */	lfsx f0, r3, r0
/* 80648BDC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80648BE0  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80648BE4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80648BE8  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80648BEC  D0 3D 06 A8 */	stfs f1, 0x6a8(r29)
/* 80648BF0  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 80648BF4  38 81 00 24 */	addi r4, r1, 0x24
/* 80648BF8  7C 65 1B 78 */	mr r5, r3
/* 80648BFC  4B CF E4 94 */	b PSVECAdd
/* 80648C00  48 00 03 2C */	b lbl_80648F2C
lbl_80648C04:
/* 80648C04  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80648C08  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80648C0C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 80648C10  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80648C14  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80648C18  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80648C1C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80648C20  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80648C24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80648C28  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80648C2C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80648C30  38 61 00 0C */	addi r3, r1, 0xc
/* 80648C34  38 81 00 18 */	addi r4, r1, 0x18
/* 80648C38  4B CF E7 64 */	b PSVECSquareDistance
/* 80648C3C  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80648C40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648C44  40 81 00 58 */	ble lbl_80648C9C
/* 80648C48  FC 00 08 34 */	frsqrte f0, f1
/* 80648C4C  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 80648C50  FC 44 00 32 */	fmul f2, f4, f0
/* 80648C54  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 80648C58  FC 00 00 32 */	fmul f0, f0, f0
/* 80648C5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80648C60  FC 03 00 28 */	fsub f0, f3, f0
/* 80648C64  FC 02 00 32 */	fmul f0, f2, f0
/* 80648C68  FC 44 00 32 */	fmul f2, f4, f0
/* 80648C6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80648C70  FC 01 00 32 */	fmul f0, f1, f0
/* 80648C74  FC 03 00 28 */	fsub f0, f3, f0
/* 80648C78  FC 02 00 32 */	fmul f0, f2, f0
/* 80648C7C  FC 44 00 32 */	fmul f2, f4, f0
/* 80648C80  FC 00 00 32 */	fmul f0, f0, f0
/* 80648C84  FC 01 00 32 */	fmul f0, f1, f0
/* 80648C88  FC 03 00 28 */	fsub f0, f3, f0
/* 80648C8C  FC 02 00 32 */	fmul f0, f2, f0
/* 80648C90  FF E1 00 32 */	fmul f31, f1, f0
/* 80648C94  FF E0 F8 18 */	frsp f31, f31
/* 80648C98  48 00 00 90 */	b lbl_80648D28
lbl_80648C9C:
/* 80648C9C  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 80648CA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648CA4  40 80 00 10 */	bge lbl_80648CB4
/* 80648CA8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80648CAC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80648CB0  48 00 00 78 */	b lbl_80648D28
lbl_80648CB4:
/* 80648CB4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80648CB8  80 81 00 08 */	lwz r4, 8(r1)
/* 80648CBC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80648CC0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80648CC4  7C 03 00 00 */	cmpw r3, r0
/* 80648CC8  41 82 00 14 */	beq lbl_80648CDC
/* 80648CCC  40 80 00 40 */	bge lbl_80648D0C
/* 80648CD0  2C 03 00 00 */	cmpwi r3, 0
/* 80648CD4  41 82 00 20 */	beq lbl_80648CF4
/* 80648CD8  48 00 00 34 */	b lbl_80648D0C
lbl_80648CDC:
/* 80648CDC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80648CE0  41 82 00 0C */	beq lbl_80648CEC
/* 80648CE4  38 00 00 01 */	li r0, 1
/* 80648CE8  48 00 00 28 */	b lbl_80648D10
lbl_80648CEC:
/* 80648CEC  38 00 00 02 */	li r0, 2
/* 80648CF0  48 00 00 20 */	b lbl_80648D10
lbl_80648CF4:
/* 80648CF4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80648CF8  41 82 00 0C */	beq lbl_80648D04
/* 80648CFC  38 00 00 05 */	li r0, 5
/* 80648D00  48 00 00 10 */	b lbl_80648D10
lbl_80648D04:
/* 80648D04  38 00 00 03 */	li r0, 3
/* 80648D08  48 00 00 08 */	b lbl_80648D10
lbl_80648D0C:
/* 80648D0C  38 00 00 04 */	li r0, 4
lbl_80648D10:
/* 80648D10  2C 00 00 01 */	cmpwi r0, 1
/* 80648D14  40 82 00 10 */	bne lbl_80648D24
/* 80648D18  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80648D1C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80648D20  48 00 00 08 */	b lbl_80648D28
lbl_80648D24:
/* 80648D24  FF E0 08 90 */	fmr f31, f1
lbl_80648D28:
/* 80648D28  38 61 00 24 */	addi r3, r1, 0x24
/* 80648D2C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80648D30  4B C2 7E D4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80648D34  7C 7F 1B 78 */	mr r31, r3
/* 80648D38  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80648D3C  FC 20 00 50 */	fneg f1, f0
/* 80648D40  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80648D44  FC 40 00 50 */	fneg f2, f0
/* 80648D48  4B C1 E9 2C */	b cM_atan2s__Fff
/* 80648D4C  7F E4 07 34 */	extsh r4, r31
/* 80648D50  7C 03 20 50 */	subf r0, r3, r4
/* 80648D54  7C 00 07 35 */	extsh. r0, r0
/* 80648D58  38 04 E0 00 */	addi r0, r4, -8192
/* 80648D5C  7C 00 07 34 */	extsh r0, r0
/* 80648D60  40 80 00 0C */	bge lbl_80648D6C
/* 80648D64  38 04 20 00 */	addi r0, r4, 0x2000
/* 80648D68  7C 00 07 34 */	extsh r0, r0
lbl_80648D6C:
/* 80648D6C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80648D70  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80648D74  40 80 00 08 */	bge lbl_80648D7C
/* 80648D78  FF E0 00 90 */	fmr f31, f0
lbl_80648D7C:
/* 80648D7C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80648D80  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80648D84  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80648D88  7C 64 02 14 */	add r3, r4, r0
/* 80648D8C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80648D90  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80648D94  7C 04 04 2E */	lfsx f0, r4, r0
/* 80648D98  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80648D9C  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80648DA0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80648DA4  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80648DA8  D0 3D 06 A8 */	stfs f1, 0x6a8(r29)
/* 80648DAC  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 80648DB0  38 81 00 24 */	addi r4, r1, 0x24
/* 80648DB4  7C 65 1B 78 */	mr r5, r3
/* 80648DB8  4B CF E2 D8 */	b PSVECAdd
/* 80648DBC  38 00 00 14 */	li r0, 0x14
/* 80648DC0  98 1D 07 0F */	stb r0, 0x70f(r29)
/* 80648DC4  48 00 01 68 */	b lbl_80648F2C
lbl_80648DC8:
/* 80648DC8  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 80648DCC  4B C1 EB 88 */	b cM_rndF__Ff
/* 80648DD0  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 80648DD4  EF E0 08 2A */	fadds f31, f0, f1
/* 80648DD8  88 1D 07 13 */	lbz r0, 0x713(r29)
/* 80648DDC  28 00 00 00 */	cmplwi r0, 0
/* 80648DE0  40 82 00 28 */	bne lbl_80648E08
/* 80648DE4  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80648DE8  EF FF 00 2A */	fadds f31, f31, f0
/* 80648DEC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80648DF0  FC 20 00 50 */	fneg f1, f0
/* 80648DF4  C0 5E 02 94 */	lfs f2, 0x294(r30)
/* 80648DF8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80648DFC  EC 42 00 28 */	fsubs f2, f2, f0
/* 80648E00  4B C1 E8 74 */	b cM_atan2s__Fff
/* 80648E04  48 00 00 50 */	b lbl_80648E54
lbl_80648E08:
/* 80648E08  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80648E0C  EF FF 00 2A */	fadds f31, f31, f0
/* 80648E10  83 FF 5D AC */	lwz r31, 0x5dac(r31)
/* 80648E14  C0 3E 02 A0 */	lfs f1, 0x2a0(r30)
/* 80648E18  4B C1 EB 74 */	b cM_rndFX__Ff
/* 80648E1C  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 80648E20  EC 40 00 72 */	fmuls f2, f0, f1
/* 80648E24  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80648E28  C8 3E 01 80 */	lfd f1, 0x180(r30)
/* 80648E2C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80648E30  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80648E34  3C 00 43 30 */	lis r0, 0x4330
/* 80648E38  90 01 00 38 */	stw r0, 0x38(r1)
/* 80648E3C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80648E40  EC 00 08 28 */	fsubs f0, f0, f1
/* 80648E44  EC 00 10 2A */	fadds f0, f0, f2
/* 80648E48  FC 00 00 1E */	fctiwz f0, f0
/* 80648E4C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80648E50  80 61 00 34 */	lwz r3, 0x34(r1)
lbl_80648E54:
/* 80648E54  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha
/* 80648E58  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l
/* 80648E5C  3B E4 00 04 */	addi r31, r4, 4
/* 80648E60  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80648E64  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80648E68  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80648E6C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80648E70  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80648E74  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80648E78  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80648E7C  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80648E80  D0 3D 06 A8 */	stfs f1, 0x6a8(r29)
/* 80648E84  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 80648E88  38 81 00 24 */	addi r4, r1, 0x24
/* 80648E8C  7C 65 1B 78 */	mr r5, r3
/* 80648E90  4B CF E2 00 */	b PSVECAdd
/* 80648E94  C0 3D 06 A8 */	lfs f1, 0x6a8(r29)
/* 80648E98  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 80648E9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648EA0  41 81 00 28 */	bgt lbl_80648EC8
/* 80648EA4  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 80648EA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648EAC  41 80 00 1C */	blt lbl_80648EC8
/* 80648EB0  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 80648EB4  FC 00 02 10 */	fabs f0, f0
/* 80648EB8  FC 20 00 18 */	frsp f1, f0
/* 80648EBC  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 80648EC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80648EC4  40 81 00 58 */	ble lbl_80648F1C
lbl_80648EC8:
/* 80648EC8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80648ECC  FC 20 00 50 */	fneg f1, f0
/* 80648ED0  C0 5E 02 94 */	lfs f2, 0x294(r30)
/* 80648ED4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80648ED8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80648EDC  4B C1 E7 98 */	b cM_atan2s__Fff
/* 80648EE0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80648EE4  7C 1F 04 2E */	lfsx f0, r31, r0
/* 80648EE8  EC 3F 00 32 */	fmuls f1, f31, f0
/* 80648EEC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80648EF0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80648EF4  7C 03 04 2E */	lfsx f0, r3, r0
/* 80648EF8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80648EFC  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80648F00  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80648F04  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80648F08  D0 3D 06 A8 */	stfs f1, 0x6a8(r29)
/* 80648F0C  38 7D 06 A0 */	addi r3, r29, 0x6a0
/* 80648F10  38 81 00 24 */	addi r4, r1, 0x24
/* 80648F14  7C 65 1B 78 */	mr r5, r3
/* 80648F18  4B CF E1 78 */	b PSVECAdd
lbl_80648F1C:
/* 80648F1C  38 00 00 0A */	li r0, 0xa
/* 80648F20  98 1D 07 0F */	stb r0, 0x70f(r29)
/* 80648F24  38 00 00 01 */	li r0, 1
/* 80648F28  98 1D 07 04 */	stb r0, 0x704(r29)
lbl_80648F2C:
/* 80648F2C  38 00 00 00 */	li r0, 0
/* 80648F30  98 1D 07 11 */	stb r0, 0x711(r29)
/* 80648F34  7F A3 EB 78 */	mr r3, r29
/* 80648F38  38 80 00 01 */	li r4, 1
/* 80648F3C  38 A0 00 01 */	li r5, 1
/* 80648F40  4B FF 57 85 */	bl setActionMode__10daB_ZANT_cFii
/* 80648F44  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80648F48  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80648F4C  39 61 00 50 */	addi r11, r1, 0x50
/* 80648F50  4B D1 92 D8 */	b _restgpr_29
/* 80648F54  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80648F58  7C 08 03 A6 */	mtlr r0
/* 80648F5C  38 21 00 60 */	addi r1, r1, 0x60
/* 80648F60  4E 80 00 20 */	blr 
