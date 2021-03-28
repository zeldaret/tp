lbl_801B66C8:
/* 801B66C8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 801B66CC  7C 08 02 A6 */	mflr r0
/* 801B66D0  90 01 00 94 */	stw r0, 0x94(r1)
/* 801B66D4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 801B66D8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 801B66DC  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 801B66E0  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 801B66E4  39 61 00 70 */	addi r11, r1, 0x70
/* 801B66E8  48 1A BA F5 */	bl _savegpr_29
/* 801B66EC  7C 7F 1B 78 */	mr r31, r3
/* 801B66F0  7C 9D 23 78 */	mr r29, r4
/* 801B66F4  7C BE 2B 78 */	mr r30, r5
/* 801B66F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801B66FC  80 83 00 A8 */	lwz r4, 0xa8(r3)
/* 801B6700  38 61 00 14 */	addi r3, r1, 0x14
/* 801B6704  80 A4 00 04 */	lwz r5, 4(r4)
/* 801B6708  38 C0 00 00 */	li r6, 0
/* 801B670C  38 E0 00 00 */	li r7, 0
/* 801B6710  48 09 E7 AD */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801B6714  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801B6718  80 01 00 18 */	lwz r0, 0x18(r1)
/* 801B671C  90 61 00 38 */	stw r3, 0x38(r1)
/* 801B6720  90 01 00 3C */	stw r0, 0x3c(r1)
/* 801B6724  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801B6728  90 01 00 40 */	stw r0, 0x40(r1)
/* 801B672C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801B6730  28 00 00 00 */	cmplwi r0, 0
/* 801B6734  41 82 00 18 */	beq lbl_801B674C
/* 801B6738  C0 22 A5 80 */	lfs f1, lit_7324(r2)
/* 801B673C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801B6740  EC 41 00 2A */	fadds f2, f1, f0
/* 801B6744  C0 62 A5 84 */	lfs f3, lit_7325(r2)
/* 801B6748  48 00 00 14 */	b lbl_801B675C
lbl_801B674C:
/* 801B674C  C0 22 A5 88 */	lfs f1, lit_7326(r2)
/* 801B6750  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801B6754  EC 41 00 2A */	fadds f2, f1, f0
/* 801B6758  C0 62 A5 8C */	lfs f3, lit_7327(r2)
lbl_801B675C:
/* 801B675C  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 801B6760  38 61 00 44 */	addi r3, r1, 0x44
/* 801B6764  48 00 0E FD */	bl toItem3Dpos__17dMenu_Collect3D_cFfffP4cXyz
/* 801B6768  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801B676C  40 82 00 2C */	bne lbl_801B6798
/* 801B6770  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801B6774  40 82 00 24 */	bne lbl_801B6798
/* 801B6778  A8 7F 03 D8 */	lha r3, 0x3d8(r31)
/* 801B677C  C0 02 A5 90 */	lfs f0, lit_7328(r2)
/* 801B6780  FC 00 00 1E */	fctiwz f0, f0
/* 801B6784  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 801B6788  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801B678C  7C 03 02 14 */	add r0, r3, r0
/* 801B6790  B0 1F 03 D8 */	sth r0, 0x3d8(r31)
/* 801B6794  48 00 00 2C */	b lbl_801B67C0
lbl_801B6798:
/* 801B6798  38 7F 03 D8 */	addi r3, r31, 0x3d8
/* 801B679C  80 1F 00 24 */	lwz r0, 0x24(r31)
/* 801B67A0  28 00 00 00 */	cmplwi r0, 0
/* 801B67A4  38 80 A4 E4 */	li r4, -23324
/* 801B67A8  41 82 00 08 */	beq lbl_801B67B0
/* 801B67AC  38 80 AE F4 */	li r4, -20748
lbl_801B67B0:
/* 801B67B0  38 A0 00 04 */	li r5, 4
/* 801B67B4  38 C0 08 00 */	li r6, 0x800
/* 801B67B8  38 E0 00 80 */	li r7, 0x80
/* 801B67BC  48 0B 9D 85 */	bl cLib_addCalcAngleS__FPsssss
lbl_801B67C0:
/* 801B67C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801B67C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801B67C8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 801B67CC  28 03 00 00 */	cmplwi r3, 0
/* 801B67D0  41 82 00 10 */	beq lbl_801B67E0
/* 801B67D4  38 81 00 44 */	addi r4, r1, 0x44
/* 801B67D8  A8 BF 03 D8 */	lha r5, 0x3d8(r31)
/* 801B67DC  4B F8 A0 AD */	bl statusWindowExecute__9daAlink_cFPC4cXyzs
lbl_801B67E0:
/* 801B67E0  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 801B67E4  28 00 00 00 */	cmplwi r0, 0
/* 801B67E8  41 82 01 5C */	beq lbl_801B6944
/* 801B67EC  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 801B67F0  80 83 00 AC */	lwz r4, 0xac(r3)
/* 801B67F4  38 61 00 08 */	addi r3, r1, 8
/* 801B67F8  80 A4 00 04 */	lwz r5, 4(r4)
/* 801B67FC  38 C0 00 00 */	li r6, 0
/* 801B6800  38 E0 00 00 */	li r7, 0
/* 801B6804  48 09 E6 B9 */	bl getGlobalVtxCenter__8CPaneMgrFP7J2DPanebs
/* 801B6808  80 61 00 08 */	lwz r3, 8(r1)
/* 801B680C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801B6810  90 61 00 20 */	stw r3, 0x20(r1)
/* 801B6814  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B6818  80 01 00 10 */	lwz r0, 0x10(r1)
/* 801B681C  90 01 00 28 */	stw r0, 0x28(r1)
/* 801B6820  C3 E2 A5 28 */	lfs f31, lit_4481(r2)
/* 801B6824  FF C0 F8 90 */	fmr f30, f31
/* 801B6828  48 00 0C DD */	bl getMaskMdlVisible__17dMenu_Collect3D_cFv
/* 801B682C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B6830  28 00 00 02 */	cmplwi r0, 2
/* 801B6834  40 82 00 30 */	bne lbl_801B6864
/* 801B6838  48 00 0C 65 */	bl getMirrorNum__17dMenu_Collect3D_cFv
/* 801B683C  38 03 FF FF */	addi r0, r3, -1
/* 801B6840  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 801B6844  28 00 00 02 */	cmplwi r0, 2
/* 801B6848  40 81 00 10 */	ble lbl_801B6858
/* 801B684C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B6850  28 00 00 04 */	cmplwi r0, 4
/* 801B6854  40 82 00 64 */	bne lbl_801B68B8
lbl_801B6858:
/* 801B6858  C3 E2 A5 94 */	lfs f31, lit_7329(r2)
/* 801B685C  C3 C2 A5 98 */	lfs f30, lit_7330(r2)
/* 801B6860  48 00 00 58 */	b lbl_801B68B8
lbl_801B6864:
/* 801B6864  48 00 0B D1 */	bl getCrystalNum__17dMenu_Collect3D_cFv
/* 801B6868  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B686C  28 00 00 01 */	cmplwi r0, 1
/* 801B6870  40 82 00 10 */	bne lbl_801B6880
/* 801B6874  C3 E2 A5 9C */	lfs f31, lit_7331(r2)
/* 801B6878  C3 C2 A5 28 */	lfs f30, lit_4481(r2)
/* 801B687C  48 00 00 3C */	b lbl_801B68B8
lbl_801B6880:
/* 801B6880  28 00 00 02 */	cmplwi r0, 2
/* 801B6884  40 82 00 10 */	bne lbl_801B6894
/* 801B6888  C3 E2 A5 A0 */	lfs f31, lit_7332(r2)
/* 801B688C  C3 C2 A5 94 */	lfs f30, lit_7329(r2)
/* 801B6890  48 00 00 28 */	b lbl_801B68B8
lbl_801B6894:
/* 801B6894  28 00 00 03 */	cmplwi r0, 3
/* 801B6898  40 82 00 10 */	bne lbl_801B68A8
/* 801B689C  C3 E2 A5 A4 */	lfs f31, lit_7333(r2)
/* 801B68A0  C3 C2 A5 A8 */	lfs f30, lit_7334(r2)
/* 801B68A4  48 00 00 14 */	b lbl_801B68B8
lbl_801B68A8:
/* 801B68A8  28 00 00 04 */	cmplwi r0, 4
/* 801B68AC  40 82 00 0C */	bne lbl_801B68B8
/* 801B68B0  C3 E2 A5 98 */	lfs f31, lit_7330(r2)
/* 801B68B4  C3 C2 A5 AC */	lfs f30, lit_7335(r2)
lbl_801B68B8:
/* 801B68B8  C0 5F 03 C4 */	lfs f2, 0x3c4(r31)
/* 801B68BC  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 801B68C0  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801B68C4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801B68C8  C0 03 06 40 */	lfs f0, 0x640(r3)
/* 801B68CC  EC 01 00 2A */	fadds f0, f1, f0
/* 801B68D0  EC 02 00 2A */	fadds f0, f2, f0
/* 801B68D4  EC 3F 00 2A */	fadds f1, f31, f0
/* 801B68D8  C0 7F 03 C8 */	lfs f3, 0x3c8(r31)
/* 801B68DC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 801B68E0  C0 03 06 44 */	lfs f0, 0x644(r3)
/* 801B68E4  EC 02 00 2A */	fadds f0, f2, f0
/* 801B68E8  EC 03 00 2A */	fadds f0, f3, f0
/* 801B68EC  EC 5E 00 2A */	fadds f2, f30, f0
/* 801B68F0  C0 62 A5 B0 */	lfs f3, lit_7336(r2)
/* 801B68F4  38 61 00 2C */	addi r3, r1, 0x2c
/* 801B68F8  48 00 0D 69 */	bl toItem3Dpos__17dMenu_Collect3D_cFfffP4cXyz
/* 801B68FC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 801B6900  D0 1F 03 B0 */	stfs f0, 0x3b0(r31)
/* 801B6904  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 801B6908  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 801B690C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801B6910  D0 1F 03 B8 */	stfs f0, 0x3b8(r31)
/* 801B6914  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801B6918  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801B691C  A8 A3 06 B0 */	lha r5, 0x6b0(r3)
/* 801B6920  A8 83 06 AE */	lha r4, 0x6ae(r3)
/* 801B6924  A8 03 06 AC */	lha r0, 0x6ac(r3)
/* 801B6928  B0 1F 03 BC */	sth r0, 0x3bc(r31)
/* 801B692C  B0 9F 03 BE */	sth r4, 0x3be(r31)
/* 801B6930  B0 BF 03 C0 */	sth r5, 0x3c0(r31)
/* 801B6934  7F E3 FB 78 */	mr r3, r31
/* 801B6938  48 00 05 39 */	bl animePlay__17dMenu_Collect3D_cFv
/* 801B693C  7F E3 FB 78 */	mr r3, r31
/* 801B6940  48 00 03 F1 */	bl set_mtx__17dMenu_Collect3D_cFv
lbl_801B6944:
/* 801B6944  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 801B6948  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 801B694C  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 801B6950  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 801B6954  39 61 00 70 */	addi r11, r1, 0x70
/* 801B6958  48 1A B8 D1 */	bl _restgpr_29
/* 801B695C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 801B6960  7C 08 03 A6 */	mtlr r0
/* 801B6964  38 21 00 90 */	addi r1, r1, 0x90
/* 801B6968  4E 80 00 20 */	blr 
