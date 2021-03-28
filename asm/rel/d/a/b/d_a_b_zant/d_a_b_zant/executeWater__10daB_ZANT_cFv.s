lbl_80643690:
/* 80643690  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80643694  7C 08 02 A6 */	mflr r0
/* 80643698  90 01 00 74 */	stw r0, 0x74(r1)
/* 8064369C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 806436A0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 806436A4  39 61 00 60 */	addi r11, r1, 0x60
/* 806436A8  4B D1 EB 2C */	b _savegpr_27
/* 806436AC  7C 7D 1B 78 */	mr r29, r3
/* 806436B0  3C 60 80 65 */	lis r3, lit_3757@ha
/* 806436B4  3B E3 EB 1C */	addi r31, r3, lit_3757@l
/* 806436B8  88 1D 07 28 */	lbz r0, 0x728(r29)
/* 806436BC  54 00 10 3A */	slwi r0, r0, 2
/* 806436C0  7C 7D 02 14 */	add r3, r29, r0
/* 806436C4  80 63 07 2C */	lwz r3, 0x72c(r3)
/* 806436C8  38 81 00 10 */	addi r4, r1, 0x10
/* 806436CC  4B 9D 62 F0 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806436D0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 806436D4  28 04 00 00 */	cmplwi r4, 0
/* 806436D8  41 82 09 7C */	beq lbl_80644054
/* 806436DC  AB 84 04 E6 */	lha r28, 0x4e6(r4)
/* 806436E0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806436E4  57 80 04 38 */	rlwinm r0, r28, 0, 0x10, 0x1c
/* 806436E8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806436EC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806436F0  7C 03 04 2E */	lfsx f0, r3, r0
/* 806436F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 806436F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806436FC  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80643700  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80643704  7C 63 02 14 */	add r3, r3, r0
/* 80643708  C0 03 00 04 */	lfs f0, 4(r3)
/* 8064370C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80643710  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80643714  38 61 00 20 */	addi r3, r1, 0x20
/* 80643718  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8064371C  7C 65 1B 78 */	mr r5, r3
/* 80643720  4B D0 39 70 */	b PSVECAdd
/* 80643724  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80643728  28 00 00 1E */	cmplwi r0, 0x1e
/* 8064372C  41 81 09 28 */	bgt lbl_80644054
/* 80643730  3C 60 80 65 */	lis r3, lit_6631@ha
/* 80643734  38 63 F0 94 */	addi r3, r3, lit_6631@l
/* 80643738  54 00 10 3A */	slwi r0, r0, 2
/* 8064373C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80643740  7C 09 03 A6 */	mtctr r0
/* 80643744  4E 80 04 20 */	bctr 
lbl_80643748:
/* 80643748  80 1D 06 D8 */	lwz r0, 0x6d8(r29)
/* 8064374C  2C 00 00 00 */	cmpwi r0, 0
/* 80643750  40 82 00 40 */	bne lbl_80643790
/* 80643754  38 00 00 19 */	li r0, 0x19
/* 80643758  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 8064375C  38 00 00 78 */	li r0, 0x78
/* 80643760  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 80643764  38 00 00 01 */	li r0, 1
/* 80643768  98 1D 07 05 */	stb r0, 0x705(r29)
/* 8064376C  38 00 00 04 */	li r0, 4
/* 80643770  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80643774  7F A3 EB 78 */	mr r3, r29
/* 80643778  38 80 00 12 */	li r4, 0x12
/* 8064377C  38 A0 00 02 */	li r5, 2
/* 80643780  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80643784  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80643788  4B FF AE 3D */	bl setBck__10daB_ZANT_cFiUcff
/* 8064378C  48 00 08 C8 */	b lbl_80644054
lbl_80643790:
/* 80643790  88 1D 07 05 */	lbz r0, 0x705(r29)
/* 80643794  28 00 00 00 */	cmplwi r0, 0
/* 80643798  41 82 00 3C */	beq lbl_806437D4
/* 8064379C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 806437A0  88 03 06 6D */	lbz r0, 0x66d(r3)
/* 806437A4  2C 00 00 03 */	cmpwi r0, 3
/* 806437A8  40 82 00 10 */	bne lbl_806437B8
/* 806437AC  38 00 00 0F */	li r0, 0xf
/* 806437B0  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 806437B4  48 00 00 14 */	b lbl_806437C8
lbl_806437B8:
/* 806437B8  38 80 00 02 */	li r4, 2
/* 806437BC  48 00 D3 C0 */	b setMouthMode__11daB_ZANTZ_cFUc
/* 806437C0  38 00 00 1B */	li r0, 0x1b
/* 806437C4  90 1D 06 DC */	stw r0, 0x6dc(r29)
lbl_806437C8:
/* 806437C8  38 00 00 00 */	li r0, 0
/* 806437CC  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806437D0  48 00 08 84 */	b lbl_80644054
lbl_806437D4:
/* 806437D4  7F A3 EB 78 */	mr r3, r29
/* 806437D8  38 80 00 09 */	li r4, 9
/* 806437DC  38 A0 00 00 */	li r5, 0
/* 806437E0  4B FF AE E5 */	bl setActionMode__10daB_ZANT_cFii
/* 806437E4  48 00 08 70 */	b lbl_80644054
lbl_806437E8:
/* 806437E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806437EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806437F0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806437F4  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 806437F8  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 806437FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80643800  40 80 08 54 */	bge lbl_80644054
/* 80643804  38 00 00 14 */	li r0, 0x14
/* 80643808  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 8064380C  88 1D 07 1A */	lbz r0, 0x71a(r29)
/* 80643810  28 00 00 00 */	cmplwi r0, 0
/* 80643814  40 82 00 14 */	bne lbl_80643828
/* 80643818  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8064381C  38 80 00 00 */	li r4, 0
/* 80643820  48 00 D4 EC */	b setAppearMode__11daB_ZANTZ_cFUc
/* 80643824  48 00 00 40 */	b lbl_80643864
lbl_80643828:
/* 80643828  3B C0 00 00 */	li r30, 0
/* 8064382C  3B 80 00 00 */	li r28, 0
lbl_80643830:
/* 80643830  38 1C 07 2C */	addi r0, r28, 0x72c
/* 80643834  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80643838  38 81 00 10 */	addi r4, r1, 0x10
/* 8064383C  4B 9D 61 80 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80643840  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643844  28 03 00 00 */	cmplwi r3, 0
/* 80643848  41 82 00 0C */	beq lbl_80643854
/* 8064384C  38 80 00 00 */	li r4, 0
/* 80643850  48 00 D4 BC */	b setAppearMode__11daB_ZANTZ_cFUc
lbl_80643854:
/* 80643854  3B DE 00 01 */	addi r30, r30, 1
/* 80643858  2C 1E 00 04 */	cmpwi r30, 4
/* 8064385C  3B 9C 00 04 */	addi r28, r28, 4
/* 80643860  41 80 FF D0 */	blt lbl_80643830
lbl_80643864:
/* 80643864  38 00 00 00 */	li r0, 0
/* 80643868  98 1D 07 04 */	stb r0, 0x704(r29)
/* 8064386C  48 00 07 E8 */	b lbl_80644054
lbl_80643870:
/* 80643870  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80643874  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80643878  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8064387C  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80643880  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80643884  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80643888  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 8064388C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80643890  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 80643894  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80643898  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 8064389C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 806438A0  B3 9D 04 E6 */	sth r28, 0x4e6(r29)
/* 806438A4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 806438A8  88 03 06 6D */	lbz r0, 0x66d(r3)
/* 806438AC  2C 00 00 01 */	cmpwi r0, 1
/* 806438B0  40 82 07 A4 */	bne lbl_80644054
/* 806438B4  38 00 00 1E */	li r0, 0x1e
/* 806438B8  90 1D 06 E8 */	stw r0, 0x6e8(r29)
/* 806438BC  38 00 00 15 */	li r0, 0x15
/* 806438C0  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 806438C4  88 1D 07 1A */	lbz r0, 0x71a(r29)
/* 806438C8  28 00 00 00 */	cmplwi r0, 0
/* 806438CC  41 82 07 88 */	beq lbl_80644054
/* 806438D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806438D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806438D8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806438DC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806438E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806438E4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806438E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806438EC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 806438F0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806438F4  C3 FF 00 28 */	lfs f31, 0x28(r31)
/* 806438F8  3B 60 00 00 */	li r27, 0
/* 806438FC  3B C0 00 00 */	li r30, 0
/* 80643900  3B 80 00 00 */	li r28, 0
lbl_80643904:
/* 80643904  38 1C 07 2C */	addi r0, r28, 0x72c
/* 80643908  7C 7D 00 2E */	lwzx r3, r29, r0
/* 8064390C  38 81 00 10 */	addi r4, r1, 0x10
/* 80643910  4B 9D 60 AC */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80643914  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643918  28 03 00 00 */	cmplwi r3, 0
/* 8064391C  41 82 01 F8 */	beq lbl_80643B14
/* 80643920  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80643924  38 81 00 14 */	addi r4, r1, 0x14
/* 80643928  4B D0 3A 74 */	b PSVECSquareDistance
/* 8064392C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80643930  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80643934  40 81 00 58 */	ble lbl_8064398C
/* 80643938  FC 00 08 34 */	frsqrte f0, f1
/* 8064393C  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 80643940  FC 44 00 32 */	fmul f2, f4, f0
/* 80643944  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 80643948  FC 00 00 32 */	fmul f0, f0, f0
/* 8064394C  FC 01 00 32 */	fmul f0, f1, f0
/* 80643950  FC 03 00 28 */	fsub f0, f3, f0
/* 80643954  FC 02 00 32 */	fmul f0, f2, f0
/* 80643958  FC 44 00 32 */	fmul f2, f4, f0
/* 8064395C  FC 00 00 32 */	fmul f0, f0, f0
/* 80643960  FC 01 00 32 */	fmul f0, f1, f0
/* 80643964  FC 03 00 28 */	fsub f0, f3, f0
/* 80643968  FC 02 00 32 */	fmul f0, f2, f0
/* 8064396C  FC 44 00 32 */	fmul f2, f4, f0
/* 80643970  FC 00 00 32 */	fmul f0, f0, f0
/* 80643974  FC 01 00 32 */	fmul f0, f1, f0
/* 80643978  FC 03 00 28 */	fsub f0, f3, f0
/* 8064397C  FC 02 00 32 */	fmul f0, f2, f0
/* 80643980  FC 21 00 32 */	fmul f1, f1, f0
/* 80643984  FC 20 08 18 */	frsp f1, f1
/* 80643988  48 00 00 88 */	b lbl_80643A10
lbl_8064398C:
/* 8064398C  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 80643990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80643994  40 80 00 10 */	bge lbl_806439A4
/* 80643998  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8064399C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806439A0  48 00 00 70 */	b lbl_80643A10
lbl_806439A4:
/* 806439A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806439A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806439AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806439B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806439B4  7C 03 00 00 */	cmpw r3, r0
/* 806439B8  41 82 00 14 */	beq lbl_806439CC
/* 806439BC  40 80 00 40 */	bge lbl_806439FC
/* 806439C0  2C 03 00 00 */	cmpwi r3, 0
/* 806439C4  41 82 00 20 */	beq lbl_806439E4
/* 806439C8  48 00 00 34 */	b lbl_806439FC
lbl_806439CC:
/* 806439CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806439D0  41 82 00 0C */	beq lbl_806439DC
/* 806439D4  38 00 00 01 */	li r0, 1
/* 806439D8  48 00 00 28 */	b lbl_80643A00
lbl_806439DC:
/* 806439DC  38 00 00 02 */	li r0, 2
/* 806439E0  48 00 00 20 */	b lbl_80643A00
lbl_806439E4:
/* 806439E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806439E8  41 82 00 0C */	beq lbl_806439F4
/* 806439EC  38 00 00 05 */	li r0, 5
/* 806439F0  48 00 00 10 */	b lbl_80643A00
lbl_806439F4:
/* 806439F4  38 00 00 03 */	li r0, 3
/* 806439F8  48 00 00 08 */	b lbl_80643A00
lbl_806439FC:
/* 806439FC  38 00 00 04 */	li r0, 4
lbl_80643A00:
/* 80643A00  2C 00 00 01 */	cmpwi r0, 1
/* 80643A04  40 82 00 0C */	bne lbl_80643A10
/* 80643A08  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80643A0C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80643A10:
/* 80643A10  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80643A14  40 80 01 00 */	bge lbl_80643B14
/* 80643A18  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643A1C  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 80643A20  38 81 00 14 */	addi r4, r1, 0x14
/* 80643A24  4B D0 39 78 */	b PSVECSquareDistance
/* 80643A28  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80643A2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80643A30  40 81 00 58 */	ble lbl_80643A88
/* 80643A34  FC 00 08 34 */	frsqrte f0, f1
/* 80643A38  C8 9F 00 80 */	lfd f4, 0x80(r31)
/* 80643A3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80643A40  C8 7F 00 88 */	lfd f3, 0x88(r31)
/* 80643A44  FC 00 00 32 */	fmul f0, f0, f0
/* 80643A48  FC 01 00 32 */	fmul f0, f1, f0
/* 80643A4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80643A50  FC 02 00 32 */	fmul f0, f2, f0
/* 80643A54  FC 44 00 32 */	fmul f2, f4, f0
/* 80643A58  FC 00 00 32 */	fmul f0, f0, f0
/* 80643A5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80643A60  FC 03 00 28 */	fsub f0, f3, f0
/* 80643A64  FC 02 00 32 */	fmul f0, f2, f0
/* 80643A68  FC 44 00 32 */	fmul f2, f4, f0
/* 80643A6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80643A70  FC 01 00 32 */	fmul f0, f1, f0
/* 80643A74  FC 03 00 28 */	fsub f0, f3, f0
/* 80643A78  FC 02 00 32 */	fmul f0, f2, f0
/* 80643A7C  FC 21 00 32 */	fmul f1, f1, f0
/* 80643A80  FC 20 08 18 */	frsp f1, f1
/* 80643A84  48 00 00 88 */	b lbl_80643B0C
lbl_80643A88:
/* 80643A88  C8 1F 00 90 */	lfd f0, 0x90(r31)
/* 80643A8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80643A90  40 80 00 10 */	bge lbl_80643AA0
/* 80643A94  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80643A98  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80643A9C  48 00 00 70 */	b lbl_80643B0C
lbl_80643AA0:
/* 80643AA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80643AA4  80 81 00 08 */	lwz r4, 8(r1)
/* 80643AA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80643AAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80643AB0  7C 03 00 00 */	cmpw r3, r0
/* 80643AB4  41 82 00 14 */	beq lbl_80643AC8
/* 80643AB8  40 80 00 40 */	bge lbl_80643AF8
/* 80643ABC  2C 03 00 00 */	cmpwi r3, 0
/* 80643AC0  41 82 00 20 */	beq lbl_80643AE0
/* 80643AC4  48 00 00 34 */	b lbl_80643AF8
lbl_80643AC8:
/* 80643AC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80643ACC  41 82 00 0C */	beq lbl_80643AD8
/* 80643AD0  38 00 00 01 */	li r0, 1
/* 80643AD4  48 00 00 28 */	b lbl_80643AFC
lbl_80643AD8:
/* 80643AD8  38 00 00 02 */	li r0, 2
/* 80643ADC  48 00 00 20 */	b lbl_80643AFC
lbl_80643AE0:
/* 80643AE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80643AE4  41 82 00 0C */	beq lbl_80643AF0
/* 80643AE8  38 00 00 05 */	li r0, 5
/* 80643AEC  48 00 00 10 */	b lbl_80643AFC
lbl_80643AF0:
/* 80643AF0  38 00 00 03 */	li r0, 3
/* 80643AF4  48 00 00 08 */	b lbl_80643AFC
lbl_80643AF8:
/* 80643AF8  38 00 00 04 */	li r0, 4
lbl_80643AFC:
/* 80643AFC  2C 00 00 01 */	cmpwi r0, 1
/* 80643B00  40 82 00 0C */	bne lbl_80643B0C
/* 80643B04  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80643B08  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80643B0C:
/* 80643B0C  FF E0 08 90 */	fmr f31, f1
/* 80643B10  7F DB F3 78 */	mr r27, r30
lbl_80643B14:
/* 80643B14  3B DE 00 01 */	addi r30, r30, 1
/* 80643B18  2C 1E 00 04 */	cmpwi r30, 4
/* 80643B1C  3B 9C 00 04 */	addi r28, r28, 4
/* 80643B20  41 80 FD E4 */	blt lbl_80643904
/* 80643B24  9B 7D 07 28 */	stb r27, 0x728(r29)
/* 80643B28  48 00 05 2C */	b lbl_80644054
lbl_80643B2C:
/* 80643B2C  80 1D 06 E8 */	lwz r0, 0x6e8(r29)
/* 80643B30  2C 00 00 00 */	cmpwi r0, 0
/* 80643B34  40 82 05 20 */	bne lbl_80644054
/* 80643B38  38 00 00 01 */	li r0, 1
/* 80643B3C  98 1D 06 FD */	stb r0, 0x6fd(r29)
/* 80643B40  88 1D 07 1A */	lbz r0, 0x71a(r29)
/* 80643B44  28 00 00 00 */	cmplwi r0, 0
/* 80643B48  40 82 00 14 */	bne lbl_80643B5C
/* 80643B4C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643B50  38 80 00 04 */	li r4, 4
/* 80643B54  48 00 D1 B8 */	b setAppearMode__11daB_ZANTZ_cFUc
/* 80643B58  48 00 00 B8 */	b lbl_80643C10
lbl_80643B5C:
/* 80643B5C  3B 60 00 00 */	li r27, 0
/* 80643B60  3B E0 00 00 */	li r31, 0
/* 80643B64  3B C0 00 00 */	li r30, 0
/* 80643B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80643B6C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
lbl_80643B70:
/* 80643B70  38 1E 07 2C */	addi r0, r30, 0x72c
/* 80643B74  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80643B78  38 81 00 10 */	addi r4, r1, 0x10
/* 80643B7C  4B 9D 5E 40 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80643B80  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643B84  28 03 00 00 */	cmplwi r3, 0
/* 80643B88  41 82 00 2C */	beq lbl_80643BB4
/* 80643B8C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80643B90  4B 9D 6B 80 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80643B94  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80643B98  A8 04 04 E6 */	lha r0, 0x4e6(r4)
/* 80643B9C  7C 00 18 50 */	subf r0, r0, r3
/* 80643BA0  7C 03 07 34 */	extsh r3, r0
/* 80643BA4  4B D2 15 2C */	b abs
/* 80643BA8  2C 03 10 00 */	cmpwi r3, 0x1000
/* 80643BAC  40 81 00 08 */	ble lbl_80643BB4
/* 80643BB0  3B 7B 00 01 */	addi r27, r27, 1
lbl_80643BB4:
/* 80643BB4  3B FF 00 01 */	addi r31, r31, 1
/* 80643BB8  2C 1F 00 04 */	cmpwi r31, 4
/* 80643BBC  3B DE 00 04 */	addi r30, r30, 4
/* 80643BC0  41 80 FF B0 */	blt lbl_80643B70
/* 80643BC4  2C 1B 00 00 */	cmpwi r27, 0
/* 80643BC8  41 82 00 48 */	beq lbl_80643C10
/* 80643BCC  3B 60 00 00 */	li r27, 0
/* 80643BD0  3B C0 00 00 */	li r30, 0
lbl_80643BD4:
/* 80643BD4  38 1E 07 2C */	addi r0, r30, 0x72c
/* 80643BD8  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80643BDC  38 81 00 10 */	addi r4, r1, 0x10
/* 80643BE0  4B 9D 5D DC */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80643BE4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643BE8  28 03 00 00 */	cmplwi r3, 0
/* 80643BEC  41 82 00 0C */	beq lbl_80643BF8
/* 80643BF0  38 80 00 05 */	li r4, 5
/* 80643BF4  48 00 D1 18 */	b setAppearMode__11daB_ZANTZ_cFUc
lbl_80643BF8:
/* 80643BF8  3B 7B 00 01 */	addi r27, r27, 1
/* 80643BFC  2C 1B 00 04 */	cmpwi r27, 4
/* 80643C00  3B DE 00 04 */	addi r30, r30, 4
/* 80643C04  41 80 FF D0 */	blt lbl_80643BD4
/* 80643C08  38 00 00 00 */	li r0, 0
/* 80643C0C  98 1D 06 FD */	stb r0, 0x6fd(r29)
lbl_80643C10:
/* 80643C10  38 00 00 16 */	li r0, 0x16
/* 80643C14  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80643C18  48 00 04 3C */	b lbl_80644054
lbl_80643C1C:
/* 80643C1C  88 1D 07 1A */	lbz r0, 0x71a(r29)
/* 80643C20  28 00 00 00 */	cmplwi r0, 0
/* 80643C24  40 82 00 30 */	bne lbl_80643C54
/* 80643C28  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643C2C  88 03 06 6D */	lbz r0, 0x66d(r3)
/* 80643C30  2C 00 00 01 */	cmpwi r0, 1
/* 80643C34  40 82 04 20 */	bne lbl_80644054
/* 80643C38  38 80 00 1E */	li r4, 0x1e
/* 80643C3C  48 00 CC 18 */	b setSnortEffect__11daB_ZANTZ_cFi
/* 80643C40  38 00 00 1E */	li r0, 0x1e
/* 80643C44  90 1D 06 E8 */	stw r0, 0x6e8(r29)
/* 80643C48  38 00 00 17 */	li r0, 0x17
/* 80643C4C  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80643C50  48 00 04 04 */	b lbl_80644054
lbl_80643C54:
/* 80643C54  3B 60 00 00 */	li r27, 0
/* 80643C58  88 1D 06 FD */	lbz r0, 0x6fd(r29)
/* 80643C5C  28 00 00 00 */	cmplwi r0, 0
/* 80643C60  40 82 00 C8 */	bne lbl_80643D28
/* 80643C64  3B E0 00 00 */	li r31, 0
/* 80643C68  3B C0 00 00 */	li r30, 0
/* 80643C6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80643C70  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
lbl_80643C74:
/* 80643C74  38 1E 07 2C */	addi r0, r30, 0x72c
/* 80643C78  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80643C7C  38 81 00 10 */	addi r4, r1, 0x10
/* 80643C80  4B 9D 5D 3C */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80643C84  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643C88  28 03 00 00 */	cmplwi r3, 0
/* 80643C8C  41 82 00 38 */	beq lbl_80643CC4
/* 80643C90  88 03 06 71 */	lbz r0, 0x671(r3)
/* 80643C94  28 00 00 00 */	cmplwi r0, 0
/* 80643C98  41 82 00 2C */	beq lbl_80643CC4
/* 80643C9C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80643CA0  4B 9D 6A 70 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80643CA4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80643CA8  A8 04 04 E6 */	lha r0, 0x4e6(r4)
/* 80643CAC  7C 00 18 50 */	subf r0, r0, r3
/* 80643CB0  7C 03 07 34 */	extsh r3, r0
/* 80643CB4  4B D2 14 1C */	b abs
/* 80643CB8  2C 03 0C 00 */	cmpwi r3, 0xc00
/* 80643CBC  40 80 00 08 */	bge lbl_80643CC4
/* 80643CC0  3B 7B 00 01 */	addi r27, r27, 1
lbl_80643CC4:
/* 80643CC4  3B FF 00 01 */	addi r31, r31, 1
/* 80643CC8  2C 1F 00 04 */	cmpwi r31, 4
/* 80643CCC  3B DE 00 04 */	addi r30, r30, 4
/* 80643CD0  41 80 FF A4 */	blt lbl_80643C74
/* 80643CD4  2C 1B 00 04 */	cmpwi r27, 4
/* 80643CD8  40 82 03 7C */	bne lbl_80644054
/* 80643CDC  3B 60 00 00 */	li r27, 0
/* 80643CE0  3B C0 00 00 */	li r30, 0
/* 80643CE4  3B 80 00 00 */	li r28, 0
lbl_80643CE8:
/* 80643CE8  38 1E 07 2C */	addi r0, r30, 0x72c
/* 80643CEC  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80643CF0  38 81 00 10 */	addi r4, r1, 0x10
/* 80643CF4  4B 9D 5C C8 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80643CF8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643CFC  28 03 00 00 */	cmplwi r3, 0
/* 80643D00  41 82 00 08 */	beq lbl_80643D08
/* 80643D04  9B 83 06 71 */	stb r28, 0x671(r3)
lbl_80643D08:
/* 80643D08  3B 7B 00 01 */	addi r27, r27, 1
/* 80643D0C  2C 1B 00 04 */	cmpwi r27, 4
/* 80643D10  3B DE 00 04 */	addi r30, r30, 4
/* 80643D14  41 80 FF D4 */	blt lbl_80643CE8
/* 80643D18  88 7D 06 FD */	lbz r3, 0x6fd(r29)
/* 80643D1C  38 03 00 01 */	addi r0, r3, 1
/* 80643D20  98 1D 06 FD */	stb r0, 0x6fd(r29)
/* 80643D24  48 00 03 30 */	b lbl_80644054
lbl_80643D28:
/* 80643D28  3B 80 00 00 */	li r28, 0
/* 80643D2C  3B C0 00 00 */	li r30, 0
lbl_80643D30:
/* 80643D30  38 1E 07 2C */	addi r0, r30, 0x72c
/* 80643D34  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80643D38  38 81 00 10 */	addi r4, r1, 0x10
/* 80643D3C  4B 9D 5C 80 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80643D40  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643D44  28 03 00 00 */	cmplwi r3, 0
/* 80643D48  41 82 00 14 */	beq lbl_80643D5C
/* 80643D4C  88 03 06 6D */	lbz r0, 0x66d(r3)
/* 80643D50  2C 00 00 01 */	cmpwi r0, 1
/* 80643D54  40 82 00 08 */	bne lbl_80643D5C
/* 80643D58  3B 7B 00 01 */	addi r27, r27, 1
lbl_80643D5C:
/* 80643D5C  3B 9C 00 01 */	addi r28, r28, 1
/* 80643D60  2C 1C 00 04 */	cmpwi r28, 4
/* 80643D64  3B DE 00 04 */	addi r30, r30, 4
/* 80643D68  41 80 FF C8 */	blt lbl_80643D30
/* 80643D6C  2C 1B 00 04 */	cmpwi r27, 4
/* 80643D70  40 82 02 E4 */	bne lbl_80644054
/* 80643D74  3B 60 00 00 */	li r27, 0
/* 80643D78  3B C0 00 00 */	li r30, 0
lbl_80643D7C:
/* 80643D7C  38 1E 07 2C */	addi r0, r30, 0x72c
/* 80643D80  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80643D84  38 81 00 10 */	addi r4, r1, 0x10
/* 80643D88  4B 9D 5C 34 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80643D8C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643D90  28 03 00 00 */	cmplwi r3, 0
/* 80643D94  41 82 00 0C */	beq lbl_80643DA0
/* 80643D98  38 80 00 1E */	li r4, 0x1e
/* 80643D9C  48 00 CA B8 */	b setSnortEffect__11daB_ZANTZ_cFi
lbl_80643DA0:
/* 80643DA0  3B 7B 00 01 */	addi r27, r27, 1
/* 80643DA4  2C 1B 00 04 */	cmpwi r27, 4
/* 80643DA8  3B DE 00 04 */	addi r30, r30, 4
/* 80643DAC  41 80 FF D0 */	blt lbl_80643D7C
/* 80643DB0  38 00 00 1E */	li r0, 0x1e
/* 80643DB4  90 1D 06 E8 */	stw r0, 0x6e8(r29)
/* 80643DB8  38 00 00 17 */	li r0, 0x17
/* 80643DBC  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80643DC0  48 00 02 94 */	b lbl_80644054
lbl_80643DC4:
/* 80643DC4  80 1D 06 E8 */	lwz r0, 0x6e8(r29)
/* 80643DC8  2C 00 00 00 */	cmpwi r0, 0
/* 80643DCC  40 82 02 88 */	bne lbl_80644054
/* 80643DD0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80643DD4  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 80643DD8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80643DDC  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80643DE0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80643DE4  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 80643DE8  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 80643DEC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80643DF0  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 80643DF4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80643DF8  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 80643DFC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80643E00  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643E04  38 80 00 00 */	li r4, 0
/* 80643E08  48 00 CD 74 */	b setMouthMode__11daB_ZANTZ_cFUc
/* 80643E0C  38 00 00 18 */	li r0, 0x18
/* 80643E10  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80643E14  7F A3 EB 78 */	mr r3, r29
/* 80643E18  38 80 00 01 */	li r4, 1
/* 80643E1C  4B FF C1 51 */	bl setTgHitBit__10daB_ZANT_cFi
/* 80643E20  38 00 00 01 */	li r0, 1
/* 80643E24  98 1D 07 06 */	stb r0, 0x706(r29)
/* 80643E28  48 00 02 2C */	b lbl_80644054
lbl_80643E2C:
/* 80643E2C  7F A3 EB 78 */	mr r3, r29
/* 80643E30  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80643E34  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80643E38  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80643E3C  4B 9D 68 D4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80643E40  7C 64 1B 78 */	mr r4, r3
/* 80643E44  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80643E48  38 A0 00 08 */	li r5, 8
/* 80643E4C  38 C0 04 00 */	li r6, 0x400
/* 80643E50  38 E0 00 80 */	li r7, 0x80
/* 80643E54  4B C2 C6 EC */	b cLib_addCalcAngleS__FPsssss
/* 80643E58  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643E5C  88 03 06 6C */	lbz r0, 0x66c(r3)
/* 80643E60  2C 00 00 01 */	cmpwi r0, 1
/* 80643E64  40 82 01 F0 */	bne lbl_80644054
/* 80643E68  38 00 00 04 */	li r0, 4
/* 80643E6C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80643E70  38 00 00 08 */	li r0, 8
/* 80643E74  98 1D 07 03 */	stb r0, 0x703(r29)
/* 80643E78  38 00 00 00 */	li r0, 0
/* 80643E7C  98 1D 06 FF */	stb r0, 0x6ff(r29)
/* 80643E80  38 00 00 01 */	li r0, 1
/* 80643E84  98 1D 07 11 */	stb r0, 0x711(r29)
/* 80643E88  7F A3 EB 78 */	mr r3, r29
/* 80643E8C  38 80 00 00 */	li r4, 0
/* 80643E90  38 A0 00 00 */	li r5, 0
/* 80643E94  4B FF A8 31 */	bl setActionMode__10daB_ZANT_cFii
/* 80643E98  48 00 01 BC */	b lbl_80644054
lbl_80643E9C:
/* 80643E9C  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 80643EA0  2C 00 00 00 */	cmpwi r0, 0
/* 80643EA4  40 82 01 B0 */	bne lbl_80644054
/* 80643EA8  38 00 00 00 */	li r0, 0
/* 80643EAC  98 1D 07 06 */	stb r0, 0x706(r29)
/* 80643EB0  7F A3 EB 78 */	mr r3, r29
/* 80643EB4  38 80 00 00 */	li r4, 0
/* 80643EB8  4B FF C0 B5 */	bl setTgHitBit__10daB_ZANT_cFi
/* 80643EBC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643EC0  38 80 00 02 */	li r4, 2
/* 80643EC4  48 00 CC B8 */	b setMouthMode__11daB_ZANTZ_cFUc
/* 80643EC8  38 00 00 1B */	li r0, 0x1b
/* 80643ECC  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80643ED0  48 00 01 84 */	b lbl_80644054
lbl_80643ED4:
/* 80643ED4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643ED8  88 03 06 6C */	lbz r0, 0x66c(r3)
/* 80643EDC  2C 00 00 03 */	cmpwi r0, 3
/* 80643EE0  40 82 01 74 */	bne lbl_80644054
/* 80643EE4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80643EE8  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80643EEC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80643EF0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80643EF4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80643EF8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80643EFC  38 00 00 01 */	li r0, 1
/* 80643F00  98 1D 07 05 */	stb r0, 0x705(r29)
/* 80643F04  38 00 00 00 */	li r0, 0
/* 80643F08  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80643F0C  88 1D 07 1A */	lbz r0, 0x71a(r29)
/* 80643F10  28 00 00 00 */	cmplwi r0, 0
/* 80643F14  40 82 00 30 */	bne lbl_80643F44
/* 80643F18  38 00 00 1E */	li r0, 0x1e
/* 80643F1C  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80643F20  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80643F24  4B C2 3A 30 */	b cM_rndF__Ff
/* 80643F28  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80643F2C  EC 00 08 2A */	fadds f0, f0, f1
/* 80643F30  FC 00 00 1E */	fctiwz f0, f0
/* 80643F34  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80643F38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80643F3C  90 1D 06 E8 */	stw r0, 0x6e8(r29)
/* 80643F40  48 00 01 14 */	b lbl_80644054
lbl_80643F44:
/* 80643F44  88 7D 07 12 */	lbz r3, 0x712(r29)
/* 80643F48  28 03 00 00 */	cmplwi r3, 0
/* 80643F4C  40 82 00 20 */	bne lbl_80643F6C
/* 80643F50  38 03 00 01 */	addi r0, r3, 1
/* 80643F54  98 1D 07 12 */	stb r0, 0x712(r29)
/* 80643F58  38 00 00 1C */	li r0, 0x1c
/* 80643F5C  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80643F60  38 00 00 1E */	li r0, 0x1e
/* 80643F64  90 1D 06 E8 */	stw r0, 0x6e8(r29)
/* 80643F68  48 00 00 EC */	b lbl_80644054
lbl_80643F6C:
/* 80643F6C  38 00 00 1E */	li r0, 0x1e
/* 80643F70  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80643F74  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80643F78  4B C2 39 DC */	b cM_rndF__Ff
/* 80643F7C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80643F80  EC 00 08 2A */	fadds f0, f0, f1
/* 80643F84  FC 00 00 1E */	fctiwz f0, f0
/* 80643F88  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80643F8C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80643F90  90 1D 06 E8 */	stw r0, 0x6e8(r29)
/* 80643F94  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 80643F98  4B C2 39 BC */	b cM_rndF__Ff
/* 80643F9C  88 1D 07 28 */	lbz r0, 0x728(r29)
/* 80643FA0  C8 5F 00 70 */	lfd f2, 0x70(r31)
/* 80643FA4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80643FA8  3C 00 43 30 */	lis r0, 0x4330
/* 80643FAC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80643FB0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80643FB4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80643FB8  EC 20 08 2A */	fadds f1, f0, f1
/* 80643FBC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80643FC0  EC 00 08 2A */	fadds f0, f0, f1
/* 80643FC4  FC 00 00 1E */	fctiwz f0, f0
/* 80643FC8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80643FCC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80643FD0  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80643FD4  98 1D 07 28 */	stb r0, 0x728(r29)
/* 80643FD8  48 00 00 7C */	b lbl_80644054
lbl_80643FDC:
/* 80643FDC  80 1D 06 E8 */	lwz r0, 0x6e8(r29)
/* 80643FE0  2C 00 00 00 */	cmpwi r0, 0
/* 80643FE4  40 82 00 70 */	bne lbl_80644054
/* 80643FE8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80643FEC  38 80 00 02 */	li r4, 2
/* 80643FF0  48 00 CD 1C */	b setAppearMode__11daB_ZANTZ_cFUc
/* 80643FF4  38 00 00 1D */	li r0, 0x1d
/* 80643FF8  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80643FFC  48 00 00 58 */	b lbl_80644054
lbl_80644000:
/* 80644000  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80644004  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80644008  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8064400C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80644010  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80644014  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80644018  B3 9D 04 E6 */	sth r28, 0x4e6(r29)
/* 8064401C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80644020  88 03 06 6D */	lbz r0, 0x66d(r3)
/* 80644024  2C 00 00 03 */	cmpwi r0, 3
/* 80644028  40 82 00 2C */	bne lbl_80644054
/* 8064402C  38 00 00 0F */	li r0, 0xf
/* 80644030  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80644034  48 00 00 20 */	b lbl_80644054
lbl_80644038:
/* 80644038  80 1D 06 E8 */	lwz r0, 0x6e8(r29)
/* 8064403C  2C 00 00 00 */	cmpwi r0, 0
/* 80644040  40 82 00 14 */	bne lbl_80644054
/* 80644044  38 00 00 1E */	li r0, 0x1e
/* 80644048  90 1D 06 E8 */	stw r0, 0x6e8(r29)
/* 8064404C  38 00 00 15 */	li r0, 0x15
/* 80644050  90 1D 06 DC */	stw r0, 0x6dc(r29)
lbl_80644054:
/* 80644054  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80644058  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8064405C  39 61 00 60 */	addi r11, r1, 0x60
/* 80644060  4B D1 E1 C0 */	b _restgpr_27
/* 80644064  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80644068  7C 08 03 A6 */	mtlr r0
/* 8064406C  38 21 00 70 */	addi r1, r1, 0x70
/* 80644070  4E 80 00 20 */	blr 
