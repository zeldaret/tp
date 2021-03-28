lbl_807C0530:
/* 807C0530  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 807C0534  7C 08 02 A6 */	mflr r0
/* 807C0538  90 01 00 94 */	stw r0, 0x94(r1)
/* 807C053C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 807C0540  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 807C0544  39 61 00 80 */	addi r11, r1, 0x80
/* 807C0548  4B BA 1C 90 */	b _savegpr_28
/* 807C054C  7C 7C 1B 78 */	mr r28, r3
/* 807C0550  3C 80 80 7C */	lis r4, lit_3908@ha
/* 807C0554  3B C4 1F B8 */	addi r30, r4, lit_3908@l
/* 807C0558  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807C055C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 807C0560  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 807C0564  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807C0568  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807C056C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 807C0570  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807C0574  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 807C0578  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807C057C  80 03 06 BC */	lwz r0, 0x6bc(r3)
/* 807C0580  28 00 00 0E */	cmplwi r0, 0xe
/* 807C0584  41 81 06 84 */	bgt lbl_807C0C08
/* 807C0588  3C 80 80 7C */	lis r4, lit_5450@ha
/* 807C058C  38 84 22 54 */	addi r4, r4, lit_5450@l
/* 807C0590  54 00 10 3A */	slwi r0, r0, 2
/* 807C0594  7C 04 00 2E */	lwzx r0, r4, r0
/* 807C0598  7C 09 03 A6 */	mtctr r0
/* 807C059C  4E 80 04 20 */	bctr 
lbl_807C05A0:
/* 807C05A0  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 807C05A4  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 807C05A8  38 80 00 0E */	li r4, 0xe
/* 807C05AC  38 A0 00 02 */	li r5, 2
/* 807C05B0  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807C05B4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807C05B8  4B FF D5 29 */	bl setBck__8daE_TT_cFiUcff
/* 807C05BC  38 00 00 01 */	li r0, 1
/* 807C05C0  90 1C 06 BC */	stw r0, 0x6bc(r28)
lbl_807C05C4:
/* 807C05C4  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 807C05C8  38 63 00 0C */	addi r3, r3, 0xc
/* 807C05CC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C05D0  4B B6 7E 5C */	b checkPass__12J3DFrameCtrlFf
/* 807C05D4  2C 03 00 00 */	cmpwi r3, 0
/* 807C05D8  41 82 00 2C */	beq lbl_807C0604
/* 807C05DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070255@ha */
/* 807C05E0  38 03 02 55 */	addi r0, r3, 0x0255 /* 0x00070255@l */
/* 807C05E4  90 01 00 18 */	stw r0, 0x18(r1)
/* 807C05E8  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807C05EC  38 81 00 18 */	addi r4, r1, 0x18
/* 807C05F0  38 A0 FF FF */	li r5, -1
/* 807C05F4  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807C05F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C05FC  7D 89 03 A6 */	mtctr r12
/* 807C0600  4E 80 04 21 */	bctrl 
lbl_807C0604:
/* 807C0604  7F 83 E3 78 */	mr r3, r28
/* 807C0608  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807C060C  4B 85 A1 04 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C0610  7C 64 1B 78 */	mr r4, r3
/* 807C0614  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 807C0618  38 A0 00 08 */	li r5, 8
/* 807C061C  38 C0 08 00 */	li r6, 0x800
/* 807C0620  38 E0 01 00 */	li r7, 0x100
/* 807C0624  4B AA FF 1C */	b cLib_addCalcAngleS__FPsssss
/* 807C0628  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 807C062C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807C0630  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 807C0634  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 807C0638  40 82 05 D0 */	bne lbl_807C0C08
/* 807C063C  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 807C0640  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 807C0644  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807C0648  EC 01 00 32 */	fmuls f0, f1, f0
/* 807C064C  EF E2 00 2A */	fadds f31, f2, f0
/* 807C0650  7F 83 E3 78 */	mr r3, r28
/* 807C0654  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807C0658  4B 85 A3 0C */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C065C  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 807C0660  40 80 05 A8 */	bge lbl_807C0C08
/* 807C0664  7F 83 E3 78 */	mr r3, r28
/* 807C0668  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807C066C  4B 85 A0 A4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807C0670  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807C0674  7C 03 00 50 */	subf r0, r3, r0
/* 807C0678  7C 03 07 34 */	extsh r3, r0
/* 807C067C  4B BA 4A 54 */	b abs
/* 807C0680  7C 60 07 34 */	extsh r0, r3
/* 807C0684  C8 3E 00 B0 */	lfd f1, 0xb0(r30)
/* 807C0688  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807C068C  90 01 00 6C */	stw r0, 0x6c(r1)
/* 807C0690  3C 00 43 30 */	lis r0, 0x4330
/* 807C0694  90 01 00 68 */	stw r0, 0x68(r1)
/* 807C0698  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 807C069C  EC 20 08 28 */	fsubs f1, f0, f1
/* 807C06A0  3C 60 80 7C */	lis r3, l_HIO@ha
/* 807C06A4  38 63 23 EC */	addi r3, r3, l_HIO@l
/* 807C06A8  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807C06AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C06B0  40 81 05 58 */	ble lbl_807C0C08
/* 807C06B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024F@ha */
/* 807C06B8  38 03 02 4F */	addi r0, r3, 0x024F /* 0x0007024F@l */
/* 807C06BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C06C0  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807C06C4  38 81 00 14 */	addi r4, r1, 0x14
/* 807C06C8  38 A0 FF FF */	li r5, -1
/* 807C06CC  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807C06D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807C06D4  7D 89 03 A6 */	mtctr r12
/* 807C06D8  4E 80 04 21 */	bctrl 
/* 807C06DC  7F 83 E3 78 */	mr r3, r28
/* 807C06E0  38 80 00 03 */	li r4, 3
/* 807C06E4  38 A0 00 00 */	li r5, 0
/* 807C06E8  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807C06EC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807C06F0  4B FF D3 F1 */	bl setBck__8daE_TT_cFiUcff
/* 807C06F4  38 00 00 0B */	li r0, 0xb
/* 807C06F8  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807C06FC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 807C0700  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 807C0704  7F A3 EB 78 */	mr r3, r29
/* 807C0708  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 807C070C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 807C0710  7D 89 03 A6 */	mtctr r12
/* 807C0714  4E 80 04 21 */	bctrl 
/* 807C0718  28 03 00 00 */	cmplwi r3, 0
/* 807C071C  41 82 00 10 */	beq lbl_807C072C
/* 807C0720  38 00 00 01 */	li r0, 1
/* 807C0724  98 1C 06 F8 */	stb r0, 0x6f8(r28)
/* 807C0728  48 00 04 E0 */	b lbl_807C0C08
lbl_807C072C:
/* 807C072C  38 00 00 00 */	li r0, 0
/* 807C0730  98 1C 06 F8 */	stb r0, 0x6f8(r28)
/* 807C0734  48 00 04 D4 */	b lbl_807C0C08
lbl_807C0738:
/* 807C0738  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 807C073C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 807C0740  EC 41 00 32 */	fmuls f2, f1, f0
/* 807C0744  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807C0748  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 807C074C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 807C0750  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807C0754  7C 64 02 14 */	add r3, r4, r0
/* 807C0758  C0 23 00 04 */	lfs f1, 4(r3)
/* 807C075C  7C 04 04 2E */	lfsx f0, r4, r0
/* 807C0760  EC 02 00 32 */	fmuls f0, f2, f0
/* 807C0764  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807C0768  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807C076C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807C0770  EC 02 00 72 */	fmuls f0, f2, f1
/* 807C0774  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807C0778  38 61 00 4C */	addi r3, r1, 0x4c
/* 807C077C  38 81 00 58 */	addi r4, r1, 0x58
/* 807C0780  7C 65 1B 78 */	mr r5, r3
/* 807C0784  4B B8 69 0C */	b PSVECAdd
/* 807C0788  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 807C078C  38 81 00 4C */	addi r4, r1, 0x4c
/* 807C0790  4B AB 04 74 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 807C0794  7C 64 1B 78 */	mr r4, r3
/* 807C0798  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 807C079C  38 A0 00 08 */	li r5, 8
/* 807C07A0  38 C0 08 00 */	li r6, 0x800
/* 807C07A4  38 E0 01 00 */	li r7, 0x100
/* 807C07A8  4B AA FD 98 */	b cLib_addCalcAngleS__FPsssss
/* 807C07AC  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 807C07B0  38 63 00 0C */	addi r3, r3, 0xc
/* 807C07B4  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 807C07B8  4B B6 7C 74 */	b checkPass__12J3DFrameCtrlFf
/* 807C07BC  2C 03 00 00 */	cmpwi r3, 0
/* 807C07C0  41 82 00 30 */	beq lbl_807C07F0
/* 807C07C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007024E@ha */
/* 807C07C8  38 03 02 4E */	addi r0, r3, 0x024E /* 0x0007024E@l */
/* 807C07CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 807C07D0  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807C07D4  38 81 00 10 */	addi r4, r1, 0x10
/* 807C07D8  38 A0 00 00 */	li r5, 0
/* 807C07DC  38 C0 FF FF */	li r6, -1
/* 807C07E0  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807C07E4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807C07E8  7D 89 03 A6 */	mtctr r12
/* 807C07EC  4E 80 04 21 */	bctrl 
lbl_807C07F0:
/* 807C07F0  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 807C07F4  38 80 00 01 */	li r4, 1
/* 807C07F8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C07FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C0800  40 82 00 18 */	bne lbl_807C0818
/* 807C0804  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C0808  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C080C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C0810  41 82 00 08 */	beq lbl_807C0818
/* 807C0814  38 80 00 00 */	li r4, 0
lbl_807C0818:
/* 807C0818  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C081C  41 82 03 EC */	beq lbl_807C0C08
/* 807C0820  7F 83 E3 78 */	mr r3, r28
/* 807C0824  38 80 00 0C */	li r4, 0xc
/* 807C0828  38 A0 00 00 */	li r5, 0
/* 807C082C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 807C0830  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807C0834  4B FF D2 AD */	bl setBck__8daE_TT_cFiUcff
/* 807C0838  38 00 00 0C */	li r0, 0xc
/* 807C083C  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807C0840  88 1C 06 F8 */	lbz r0, 0x6f8(r28)
/* 807C0844  28 00 00 00 */	cmplwi r0, 0
/* 807C0848  40 82 01 34 */	bne lbl_807C097C
/* 807C084C  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 807C0850  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 807C0854  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807C0858  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807C085C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C0860  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807C0864  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807C0868  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807C086C  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 807C0870  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807C0874  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807C0878  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 807C087C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 807C0880  38 61 00 34 */	addi r3, r1, 0x34
/* 807C0884  38 81 00 40 */	addi r4, r1, 0x40
/* 807C0888  4B B8 6B 14 */	b PSVECSquareDistance
/* 807C088C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807C0890  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C0894  40 81 00 58 */	ble lbl_807C08EC
/* 807C0898  FC 00 08 34 */	frsqrte f0, f1
/* 807C089C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807C08A0  FC 44 00 32 */	fmul f2, f4, f0
/* 807C08A4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807C08A8  FC 00 00 32 */	fmul f0, f0, f0
/* 807C08AC  FC 01 00 32 */	fmul f0, f1, f0
/* 807C08B0  FC 03 00 28 */	fsub f0, f3, f0
/* 807C08B4  FC 02 00 32 */	fmul f0, f2, f0
/* 807C08B8  FC 44 00 32 */	fmul f2, f4, f0
/* 807C08BC  FC 00 00 32 */	fmul f0, f0, f0
/* 807C08C0  FC 01 00 32 */	fmul f0, f1, f0
/* 807C08C4  FC 03 00 28 */	fsub f0, f3, f0
/* 807C08C8  FC 02 00 32 */	fmul f0, f2, f0
/* 807C08CC  FC 44 00 32 */	fmul f2, f4, f0
/* 807C08D0  FC 00 00 32 */	fmul f0, f0, f0
/* 807C08D4  FC 01 00 32 */	fmul f0, f1, f0
/* 807C08D8  FC 03 00 28 */	fsub f0, f3, f0
/* 807C08DC  FC 02 00 32 */	fmul f0, f2, f0
/* 807C08E0  FC 21 00 32 */	fmul f1, f1, f0
/* 807C08E4  FC 20 08 18 */	frsp f1, f1
/* 807C08E8  48 00 00 88 */	b lbl_807C0970
lbl_807C08EC:
/* 807C08EC  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807C08F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C08F4  40 80 00 10 */	bge lbl_807C0904
/* 807C08F8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807C08FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807C0900  48 00 00 70 */	b lbl_807C0970
lbl_807C0904:
/* 807C0904  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807C0908  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807C090C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807C0910  3C 00 7F 80 */	lis r0, 0x7f80
/* 807C0914  7C 03 00 00 */	cmpw r3, r0
/* 807C0918  41 82 00 14 */	beq lbl_807C092C
/* 807C091C  40 80 00 40 */	bge lbl_807C095C
/* 807C0920  2C 03 00 00 */	cmpwi r3, 0
/* 807C0924  41 82 00 20 */	beq lbl_807C0944
/* 807C0928  48 00 00 34 */	b lbl_807C095C
lbl_807C092C:
/* 807C092C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C0930  41 82 00 0C */	beq lbl_807C093C
/* 807C0934  38 00 00 01 */	li r0, 1
/* 807C0938  48 00 00 28 */	b lbl_807C0960
lbl_807C093C:
/* 807C093C  38 00 00 02 */	li r0, 2
/* 807C0940  48 00 00 20 */	b lbl_807C0960
lbl_807C0944:
/* 807C0944  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C0948  41 82 00 0C */	beq lbl_807C0954
/* 807C094C  38 00 00 05 */	li r0, 5
/* 807C0950  48 00 00 10 */	b lbl_807C0960
lbl_807C0954:
/* 807C0954  38 00 00 03 */	li r0, 3
/* 807C0958  48 00 00 08 */	b lbl_807C0960
lbl_807C095C:
/* 807C095C  38 00 00 04 */	li r0, 4
lbl_807C0960:
/* 807C0960  2C 00 00 01 */	cmpwi r0, 1
/* 807C0964  40 82 00 0C */	bne lbl_807C0970
/* 807C0968  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807C096C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807C0970:
/* 807C0970  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 807C0974  EC 21 00 24 */	fdivs f1, f1, f0
/* 807C0978  48 00 01 30 */	b lbl_807C0AA8
lbl_807C097C:
/* 807C097C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 807C0980  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 807C0984  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807C0988  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807C098C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C0990  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807C0994  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807C0998  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807C099C  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 807C09A0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807C09A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807C09A8  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807C09AC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807C09B0  38 61 00 1C */	addi r3, r1, 0x1c
/* 807C09B4  38 81 00 28 */	addi r4, r1, 0x28
/* 807C09B8  4B B8 69 E4 */	b PSVECSquareDistance
/* 807C09BC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807C09C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C09C4  40 81 00 58 */	ble lbl_807C0A1C
/* 807C09C8  FC 00 08 34 */	frsqrte f0, f1
/* 807C09CC  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807C09D0  FC 44 00 32 */	fmul f2, f4, f0
/* 807C09D4  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807C09D8  FC 00 00 32 */	fmul f0, f0, f0
/* 807C09DC  FC 01 00 32 */	fmul f0, f1, f0
/* 807C09E0  FC 03 00 28 */	fsub f0, f3, f0
/* 807C09E4  FC 02 00 32 */	fmul f0, f2, f0
/* 807C09E8  FC 44 00 32 */	fmul f2, f4, f0
/* 807C09EC  FC 00 00 32 */	fmul f0, f0, f0
/* 807C09F0  FC 01 00 32 */	fmul f0, f1, f0
/* 807C09F4  FC 03 00 28 */	fsub f0, f3, f0
/* 807C09F8  FC 02 00 32 */	fmul f0, f2, f0
/* 807C09FC  FC 44 00 32 */	fmul f2, f4, f0
/* 807C0A00  FC 00 00 32 */	fmul f0, f0, f0
/* 807C0A04  FC 01 00 32 */	fmul f0, f1, f0
/* 807C0A08  FC 03 00 28 */	fsub f0, f3, f0
/* 807C0A0C  FC 02 00 32 */	fmul f0, f2, f0
/* 807C0A10  FC 21 00 32 */	fmul f1, f1, f0
/* 807C0A14  FC 20 08 18 */	frsp f1, f1
/* 807C0A18  48 00 00 88 */	b lbl_807C0AA0
lbl_807C0A1C:
/* 807C0A1C  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807C0A20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C0A24  40 80 00 10 */	bge lbl_807C0A34
/* 807C0A28  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807C0A2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 807C0A30  48 00 00 70 */	b lbl_807C0AA0
lbl_807C0A34:
/* 807C0A34  D0 21 00 08 */	stfs f1, 8(r1)
/* 807C0A38  80 81 00 08 */	lwz r4, 8(r1)
/* 807C0A3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807C0A40  3C 00 7F 80 */	lis r0, 0x7f80
/* 807C0A44  7C 03 00 00 */	cmpw r3, r0
/* 807C0A48  41 82 00 14 */	beq lbl_807C0A5C
/* 807C0A4C  40 80 00 40 */	bge lbl_807C0A8C
/* 807C0A50  2C 03 00 00 */	cmpwi r3, 0
/* 807C0A54  41 82 00 20 */	beq lbl_807C0A74
/* 807C0A58  48 00 00 34 */	b lbl_807C0A8C
lbl_807C0A5C:
/* 807C0A5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C0A60  41 82 00 0C */	beq lbl_807C0A6C
/* 807C0A64  38 00 00 01 */	li r0, 1
/* 807C0A68  48 00 00 28 */	b lbl_807C0A90
lbl_807C0A6C:
/* 807C0A6C  38 00 00 02 */	li r0, 2
/* 807C0A70  48 00 00 20 */	b lbl_807C0A90
lbl_807C0A74:
/* 807C0A74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807C0A78  41 82 00 0C */	beq lbl_807C0A84
/* 807C0A7C  38 00 00 05 */	li r0, 5
/* 807C0A80  48 00 00 10 */	b lbl_807C0A90
lbl_807C0A84:
/* 807C0A84  38 00 00 03 */	li r0, 3
/* 807C0A88  48 00 00 08 */	b lbl_807C0A90
lbl_807C0A8C:
/* 807C0A8C  38 00 00 04 */	li r0, 4
lbl_807C0A90:
/* 807C0A90  2C 00 00 01 */	cmpwi r0, 1
/* 807C0A94  40 82 00 0C */	bne lbl_807C0AA0
/* 807C0A98  3C 60 80 45 */	lis r3, __float_nan@ha
/* 807C0A9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_807C0AA0:
/* 807C0AA0  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807C0AA4  EC 21 00 24 */	fdivs f1, f1, f0
lbl_807C0AA8:
/* 807C0AA8  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 807C0AAC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C0AB0  40 81 00 08 */	ble lbl_807C0AB8
/* 807C0AB4  FC 20 00 90 */	fmr f1, f0
lbl_807C0AB8:
/* 807C0AB8  D0 3C 05 2C */	stfs f1, 0x52c(r28)
/* 807C0ABC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 807C0AC0  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 807C0AC4  48 00 01 44 */	b lbl_807C0C08
lbl_807C0AC8:
/* 807C0AC8  80 1C 09 50 */	lwz r0, 0x950(r28)
/* 807C0ACC  60 00 00 01 */	ori r0, r0, 1
/* 807C0AD0  90 1C 09 50 */	stw r0, 0x950(r28)
/* 807C0AD4  80 1C 07 68 */	lwz r0, 0x768(r28)
/* 807C0AD8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 807C0ADC  41 82 00 0C */	beq lbl_807C0AE8
/* 807C0AE0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807C0AE4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_807C0AE8:
/* 807C0AE8  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 807C0AEC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807C0AF0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 807C0AF4  4C 40 13 82 */	cror 2, 0, 2
/* 807C0AF8  40 82 00 20 */	bne lbl_807C0B18
/* 807C0AFC  7F 83 E3 78 */	mr r3, r28
/* 807C0B00  38 80 00 0D */	li r4, 0xd
/* 807C0B04  38 A0 00 00 */	li r5, 0
/* 807C0B08  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 807C0B0C  4B FF CF D5 */	bl setBck__8daE_TT_cFiUcff
/* 807C0B10  38 00 00 0D */	li r0, 0xd
/* 807C0B14  90 1C 06 BC */	stw r0, 0x6bc(r28)
lbl_807C0B18:
/* 807C0B18  80 1C 09 50 */	lwz r0, 0x950(r28)
/* 807C0B1C  60 00 00 01 */	ori r0, r0, 1
/* 807C0B20  90 1C 09 50 */	stw r0, 0x950(r28)
/* 807C0B24  80 1C 07 68 */	lwz r0, 0x768(r28)
/* 807C0B28  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807C0B2C  41 82 00 DC */	beq lbl_807C0C08
/* 807C0B30  38 00 00 01 */	li r0, 1
/* 807C0B34  98 1C 06 FB */	stb r0, 0x6fb(r28)
/* 807C0B38  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 807C0B3C  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 807C0B40  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 807C0B44  38 00 00 0E */	li r0, 0xe
/* 807C0B48  90 1C 06 BC */	stw r0, 0x6bc(r28)
/* 807C0B4C  7F 83 E3 78 */	mr r3, r28
/* 807C0B50  4B FF D8 E9 */	bl setWaterEffect__8daE_TT_cFv
/* 807C0B54  88 1C 06 FA */	lbz r0, 0x6fa(r28)
/* 807C0B58  28 00 00 00 */	cmplwi r0, 0
/* 807C0B5C  41 82 00 0C */	beq lbl_807C0B68
/* 807C0B60  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 807C0B64  D0 1C 06 CC */	stfs f0, 0x6cc(r28)
lbl_807C0B68:
/* 807C0B68  38 00 00 05 */	li r0, 5
/* 807C0B6C  98 1C 06 EA */	stb r0, 0x6ea(r28)
/* 807C0B70  48 00 00 98 */	b lbl_807C0C08
lbl_807C0B74:
/* 807C0B74  88 1C 06 EA */	lbz r0, 0x6ea(r28)
/* 807C0B78  28 00 00 00 */	cmplwi r0, 0
/* 807C0B7C  41 82 00 10 */	beq lbl_807C0B8C
/* 807C0B80  80 1C 09 50 */	lwz r0, 0x950(r28)
/* 807C0B84  60 00 00 01 */	ori r0, r0, 1
/* 807C0B88  90 1C 09 50 */	stw r0, 0x950(r28)
lbl_807C0B8C:
/* 807C0B8C  7F 83 E3 78 */	mr r3, r28
/* 807C0B90  4B FF CF F5 */	bl calcHitGroundSpeed__8daE_TT_cFv
/* 807C0B94  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 807C0B98  38 80 00 01 */	li r4, 1
/* 807C0B9C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807C0BA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807C0BA4  40 82 00 18 */	bne lbl_807C0BBC
/* 807C0BA8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807C0BAC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807C0BB0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C0BB4  41 82 00 08 */	beq lbl_807C0BBC
/* 807C0BB8  38 80 00 00 */	li r4, 0
lbl_807C0BBC:
/* 807C0BBC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807C0BC0  41 82 00 48 */	beq lbl_807C0C08
/* 807C0BC4  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 807C0BC8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807C0BCC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C0BD0  40 82 00 38 */	bne lbl_807C0C08
/* 807C0BD4  7F 83 E3 78 */	mr r3, r28
/* 807C0BD8  4B FF DF D5 */	bl checkPlayerSearch__8daE_TT_cFv
/* 807C0BDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807C0BE0  40 82 00 18 */	bne lbl_807C0BF8
/* 807C0BE4  7F 83 E3 78 */	mr r3, r28
/* 807C0BE8  38 80 00 00 */	li r4, 0
/* 807C0BEC  38 A0 00 00 */	li r5, 0
/* 807C0BF0  4B FF CF F5 */	bl setActionMode__8daE_TT_cFii
/* 807C0BF4  48 00 00 14 */	b lbl_807C0C08
lbl_807C0BF8:
/* 807C0BF8  7F 83 E3 78 */	mr r3, r28
/* 807C0BFC  38 80 00 01 */	li r4, 1
/* 807C0C00  38 A0 00 00 */	li r5, 0
/* 807C0C04  4B FF CF E1 */	bl setActionMode__8daE_TT_cFii
lbl_807C0C08:
/* 807C0C08  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 807C0C0C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 807C0C10  39 61 00 80 */	addi r11, r1, 0x80
/* 807C0C14  4B BA 16 10 */	b _restgpr_28
/* 807C0C18  80 01 00 94 */	lwz r0, 0x94(r1)
/* 807C0C1C  7C 08 03 A6 */	mtlr r0
/* 807C0C20  38 21 00 90 */	addi r1, r1, 0x90
/* 807C0C24  4E 80 00 20 */	blr 
