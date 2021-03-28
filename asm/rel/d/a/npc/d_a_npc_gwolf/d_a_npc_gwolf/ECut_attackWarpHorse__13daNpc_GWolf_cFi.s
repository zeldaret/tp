lbl_809F6548:
/* 809F6548  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 809F654C  7C 08 02 A6 */	mflr r0
/* 809F6550  90 01 00 94 */	stw r0, 0x94(r1)
/* 809F6554  39 61 00 90 */	addi r11, r1, 0x90
/* 809F6558  4B 96 BC 70 */	b _savegpr_24
/* 809F655C  7C 7A 1B 78 */	mr r26, r3
/* 809F6560  7C 98 23 78 */	mr r24, r4
/* 809F6564  3C 60 80 A0 */	lis r3, m__19daNpc_GWolf_Param_c@ha
/* 809F6568  3B C3 84 F4 */	addi r30, r3, m__19daNpc_GWolf_Param_c@l
/* 809F656C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809F6570  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 809F6574  3B 3F 4F F8 */	addi r25, r31, 0x4ff8
/* 809F6578  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 809F657C  3B 80 00 00 */	li r28, 0
/* 809F6580  3B 60 FF FF */	li r27, -1
/* 809F6584  7F 23 CB 78 */	mr r3, r25
/* 809F6588  3C A0 80 A0 */	lis r5, stringBase0@ha
/* 809F658C  38 A5 87 1C */	addi r5, r5, stringBase0@l
/* 809F6590  38 A5 00 D3 */	addi r5, r5, 0xd3
/* 809F6594  38 C0 00 03 */	li r6, 3
/* 809F6598  4B 65 1B 54 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809F659C  28 03 00 00 */	cmplwi r3, 0
/* 809F65A0  41 82 00 08 */	beq lbl_809F65A8
/* 809F65A4  83 63 00 00 */	lwz r27, 0(r3)
lbl_809F65A8:
/* 809F65A8  7F 23 CB 78 */	mr r3, r25
/* 809F65AC  7F 04 C3 78 */	mr r4, r24
/* 809F65B0  4B 65 17 9C */	b getIsAddvance__16dEvent_manager_cFi
/* 809F65B4  2C 03 00 00 */	cmpwi r3, 0
/* 809F65B8  41 82 02 AC */	beq lbl_809F6864
/* 809F65BC  28 1B 00 28 */	cmplwi r27, 0x28
/* 809F65C0  41 81 02 A4 */	bgt lbl_809F6864
/* 809F65C4  3C 60 80 A0 */	lis r3, lit_5816@ha
/* 809F65C8  38 63 8C C0 */	addi r3, r3, lit_5816@l
/* 809F65CC  57 60 10 3A */	slwi r0, r27, 2
/* 809F65D0  7C 03 00 2E */	lwzx r0, r3, r0
/* 809F65D4  7C 09 03 A6 */	mtctr r0
/* 809F65D8  4E 80 04 20 */	bctr 
lbl_809F65DC:
/* 809F65DC  7F 43 D3 78 */	mr r3, r26
/* 809F65E0  38 80 00 00 */	li r4, 0
/* 809F65E4  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809F65E8  38 A0 00 00 */	li r5, 0
/* 809F65EC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 809F65F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F65F4  7D 89 03 A6 */	mtctr r12
/* 809F65F8  4E 80 04 21 */	bctrl 
/* 809F65FC  7F 43 D3 78 */	mr r3, r26
/* 809F6600  38 80 00 00 */	li r4, 0
/* 809F6604  4B FF F5 5D */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F6608  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F660C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 809F6610  48 00 02 54 */	b lbl_809F6864
lbl_809F6614:
/* 809F6614  7F 43 D3 78 */	mr r3, r26
/* 809F6618  38 80 00 01 */	li r4, 1
/* 809F661C  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809F6620  38 A0 00 00 */	li r5, 0
/* 809F6624  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 809F6628  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F662C  7D 89 03 A6 */	mtctr r12
/* 809F6630  4E 80 04 21 */	bctrl 
/* 809F6634  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060085@ha */
/* 809F6638  38 03 00 85 */	addi r0, r3, 0x0085 /* 0x00060085@l */
/* 809F663C  90 01 00 18 */	stw r0, 0x18(r1)
/* 809F6640  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 809F6644  38 81 00 18 */	addi r4, r1, 0x18
/* 809F6648  38 A0 FF FF */	li r5, -1
/* 809F664C  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 809F6650  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809F6654  7D 89 03 A6 */	mtctr r12
/* 809F6658  4E 80 04 21 */	bctrl 
/* 809F665C  48 00 02 08 */	b lbl_809F6864
lbl_809F6660:
/* 809F6660  38 00 00 14 */	li r0, 0x14
/* 809F6664  90 1A 09 60 */	stw r0, 0x960(r26)
/* 809F6668  4B 78 AF D8 */	b dCam_getBody__Fv
/* 809F666C  38 80 13 88 */	li r4, 0x1388
/* 809F6670  7F 45 D3 78 */	mr r5, r26
/* 809F6674  C0 3E 01 E8 */	lfs f1, 0x1e8(r30)
/* 809F6678  C0 5E 01 EC */	lfs f2, 0x1ec(r30)
/* 809F667C  4B 78 AA F4 */	b StartBlure__9dCamera_cFiP10fopAc_ac_cff
/* 809F6680  48 00 01 E4 */	b lbl_809F6864
lbl_809F6684:
/* 809F6684  7F 43 D3 78 */	mr r3, r26
/* 809F6688  38 80 00 02 */	li r4, 2
/* 809F668C  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809F6690  38 A0 00 00 */	li r5, 0
/* 809F6694  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 809F6698  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F669C  7D 89 03 A6 */	mtctr r12
/* 809F66A0  4E 80 04 21 */	bctrl 
/* 809F66A4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060084@ha */
/* 809F66A8  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00060084@l */
/* 809F66AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F66B0  38 7A 0B 48 */	addi r3, r26, 0xb48
/* 809F66B4  38 81 00 14 */	addi r4, r1, 0x14
/* 809F66B8  38 A0 FF FF */	li r5, -1
/* 809F66BC  81 9A 0B 48 */	lwz r12, 0xb48(r26)
/* 809F66C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809F66C4  7D 89 03 A6 */	mtctr r12
/* 809F66C8  4E 80 04 21 */	bctrl 
/* 809F66CC  48 00 01 98 */	b lbl_809F6864
lbl_809F66D0:
/* 809F66D0  80 1A 0C B8 */	lwz r0, 0xcb8(r26)
/* 809F66D4  60 00 01 00 */	ori r0, r0, 0x100
/* 809F66D8  90 1A 0C B8 */	stw r0, 0xcb8(r26)
/* 809F66DC  80 1A 0C B8 */	lwz r0, 0xcb8(r26)
/* 809F66E0  60 00 02 00 */	ori r0, r0, 0x200
/* 809F66E4  90 1A 0C B8 */	stw r0, 0xcb8(r26)
/* 809F66E8  38 7E 00 00 */	addi r3, r30, 0
/* 809F66EC  C0 03 00 74 */	lfs f0, 0x74(r3)
/* 809F66F0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 809F66F4  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 809F66F8  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 809F66FC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 809F6700  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 809F6704  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 809F6708  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 809F670C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 809F6710  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 809F6714  38 61 00 40 */	addi r3, r1, 0x40
/* 809F6718  38 81 00 58 */	addi r4, r1, 0x58
/* 809F671C  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 809F6720  4B 87 04 14 */	b __mi__4cXyzCFRC3Vec
/* 809F6724  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 809F6728  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809F672C  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6730  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809F6734  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 809F6738  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809F673C  38 61 00 28 */	addi r3, r1, 0x28
/* 809F6740  4B 95 09 F8 */	b PSVECSquareMag
/* 809F6744  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6748  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F674C  40 81 00 58 */	ble lbl_809F67A4
/* 809F6750  FC 00 08 34 */	frsqrte f0, f1
/* 809F6754  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 809F6758  FC 44 00 32 */	fmul f2, f4, f0
/* 809F675C  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 809F6760  FC 00 00 32 */	fmul f0, f0, f0
/* 809F6764  FC 01 00 32 */	fmul f0, f1, f0
/* 809F6768  FC 03 00 28 */	fsub f0, f3, f0
/* 809F676C  FC 02 00 32 */	fmul f0, f2, f0
/* 809F6770  FC 44 00 32 */	fmul f2, f4, f0
/* 809F6774  FC 00 00 32 */	fmul f0, f0, f0
/* 809F6778  FC 01 00 32 */	fmul f0, f1, f0
/* 809F677C  FC 03 00 28 */	fsub f0, f3, f0
/* 809F6780  FC 02 00 32 */	fmul f0, f2, f0
/* 809F6784  FC 44 00 32 */	fmul f2, f4, f0
/* 809F6788  FC 00 00 32 */	fmul f0, f0, f0
/* 809F678C  FC 01 00 32 */	fmul f0, f1, f0
/* 809F6790  FC 03 00 28 */	fsub f0, f3, f0
/* 809F6794  FC 02 00 32 */	fmul f0, f2, f0
/* 809F6798  FC 21 00 32 */	fmul f1, f1, f0
/* 809F679C  FC 20 08 18 */	frsp f1, f1
/* 809F67A0  48 00 00 88 */	b lbl_809F6828
lbl_809F67A4:
/* 809F67A4  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 809F67A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F67AC  40 80 00 10 */	bge lbl_809F67BC
/* 809F67B0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809F67B4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 809F67B8  48 00 00 70 */	b lbl_809F6828
lbl_809F67BC:
/* 809F67BC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809F67C0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809F67C4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809F67C8  3C 00 7F 80 */	lis r0, 0x7f80
/* 809F67CC  7C 03 00 00 */	cmpw r3, r0
/* 809F67D0  41 82 00 14 */	beq lbl_809F67E4
/* 809F67D4  40 80 00 40 */	bge lbl_809F6814
/* 809F67D8  2C 03 00 00 */	cmpwi r3, 0
/* 809F67DC  41 82 00 20 */	beq lbl_809F67FC
/* 809F67E0  48 00 00 34 */	b lbl_809F6814
lbl_809F67E4:
/* 809F67E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F67E8  41 82 00 0C */	beq lbl_809F67F4
/* 809F67EC  38 00 00 01 */	li r0, 1
/* 809F67F0  48 00 00 28 */	b lbl_809F6818
lbl_809F67F4:
/* 809F67F4  38 00 00 02 */	li r0, 2
/* 809F67F8  48 00 00 20 */	b lbl_809F6818
lbl_809F67FC:
/* 809F67FC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F6800  41 82 00 0C */	beq lbl_809F680C
/* 809F6804  38 00 00 05 */	li r0, 5
/* 809F6808  48 00 00 10 */	b lbl_809F6818
lbl_809F680C:
/* 809F680C  38 00 00 03 */	li r0, 3
/* 809F6810  48 00 00 08 */	b lbl_809F6818
lbl_809F6814:
/* 809F6814  38 00 00 04 */	li r0, 4
lbl_809F6818:
/* 809F6818  2C 00 00 01 */	cmpwi r0, 1
/* 809F681C  40 82 00 0C */	bne lbl_809F6828
/* 809F6820  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809F6824  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_809F6828:
/* 809F6828  C0 7A 04 FC */	lfs f3, 0x4fc(r26)
/* 809F682C  C0 41 00 5C */	lfs f2, 0x5c(r1)
/* 809F6830  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 809F6834  EC 42 00 28 */	fsubs f2, f2, f0
/* 809F6838  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 809F683C  EC 01 00 24 */	fdivs f0, f1, f0
/* 809F6840  EC 02 00 24 */	fdivs f0, f2, f0
/* 809F6844  EC 03 00 2A */	fadds f0, f3, f0
/* 809F6848  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 809F684C  48 00 00 18 */	b lbl_809F6864
lbl_809F6850:
/* 809F6850  38 7E 00 00 */	addi r3, r30, 0
/* 809F6854  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 809F6858  C0 1E 01 DC */	lfs f0, 0x1dc(r30)
/* 809F685C  EC 01 00 32 */	fmuls f0, f1, f0
/* 809F6860  D0 1A 05 2C */	stfs f0, 0x52c(r26)
lbl_809F6864:
/* 809F6864  28 1B 00 28 */	cmplwi r27, 0x28
/* 809F6868  41 81 03 74 */	bgt lbl_809F6BDC
/* 809F686C  3C 60 80 A0 */	lis r3, lit_5817@ha
/* 809F6870  38 63 8C 1C */	addi r3, r3, lit_5817@l
/* 809F6874  57 60 10 3A */	slwi r0, r27, 2
/* 809F6878  7C 03 00 2E */	lwzx r0, r3, r0
/* 809F687C  7C 09 03 A6 */	mtctr r0
/* 809F6880  4E 80 04 20 */	bctr 
lbl_809F6884:
/* 809F6884  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6888  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 809F688C  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 809F6890  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 809F6894  C0 1E 01 D8 */	lfs f0, 0x1d8(r30)
/* 809F6898  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 809F689C  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 809F68A0  4B 61 64 C4 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 809F68A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F68A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F68AC  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 809F68B0  4B 61 5B 84 */	b mDoMtx_YrotM__FPA4_fs
/* 809F68B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809F68B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809F68BC  38 81 00 4C */	addi r4, r1, 0x4c
/* 809F68C0  7C 85 23 78 */	mr r5, r4
/* 809F68C4  4B 95 04 A8 */	b PSMTXMultVec
/* 809F68C8  38 61 00 4C */	addi r3, r1, 0x4c
/* 809F68CC  4B 62 73 F0 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 809F68D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809F68D4  41 82 00 10 */	beq lbl_809F68E4
/* 809F68D8  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 809F68DC  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 809F68E0  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_809F68E4:
/* 809F68E4  38 61 00 4C */	addi r3, r1, 0x4c
/* 809F68E8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 809F68EC  4B 87 A3 18 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 809F68F0  38 03 C0 00 */	addi r0, r3, -16384
/* 809F68F4  7C 05 07 34 */	extsh r5, r0
/* 809F68F8  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 809F68FC  38 81 00 4C */	addi r4, r1, 0x4c
/* 809F6900  38 C0 00 00 */	li r6, 0
/* 809F6904  81 83 06 28 */	lwz r12, 0x628(r3)
/* 809F6908  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 809F690C  7D 89 03 A6 */	mtctr r12
/* 809F6910  4E 80 04 21 */	bctrl 
/* 809F6914  3B 80 00 01 */	li r28, 1
/* 809F6918  48 00 02 C8 */	b lbl_809F6BE0
lbl_809F691C:
/* 809F691C  7F 43 D3 78 */	mr r3, r26
/* 809F6920  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F6924  4B 62 3D EC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F6928  7C 64 1B 78 */	mr r4, r3
/* 809F692C  38 7A 08 F2 */	addi r3, r26, 0x8f2
/* 809F6930  38 A0 00 02 */	li r5, 2
/* 809F6934  38 C0 08 00 */	li r6, 0x800
/* 809F6938  4B 87 9C D0 */	b cLib_addCalcAngleS2__FPssss
/* 809F693C  7F 43 D3 78 */	mr r3, r26
/* 809F6940  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 809F6944  4B 75 D9 0C */	b setAngle__8daNpcF_cFs
/* 809F6948  3B 80 00 01 */	li r28, 1
/* 809F694C  48 00 02 94 */	b lbl_809F6BE0
lbl_809F6950:
/* 809F6950  38 7A 09 60 */	addi r3, r26, 0x960
/* 809F6954  48 00 1A 45 */	bl func_809F8398
/* 809F6958  2C 03 00 00 */	cmpwi r3, 0
/* 809F695C  40 82 02 84 */	bne lbl_809F6BE0
/* 809F6960  3B 80 00 01 */	li r28, 1
/* 809F6964  48 00 02 7C */	b lbl_809F6BE0
lbl_809F6968:
/* 809F6968  A8 1A 09 E0 */	lha r0, 0x9e0(r26)
/* 809F696C  2C 00 00 02 */	cmpwi r0, 2
/* 809F6970  40 82 02 70 */	bne lbl_809F6BE0
/* 809F6974  A8 1A 09 DA */	lha r0, 0x9da(r26)
/* 809F6978  2C 00 00 00 */	cmpwi r0, 0
/* 809F697C  40 81 02 64 */	ble lbl_809F6BE0
/* 809F6980  3B 80 00 01 */	li r28, 1
/* 809F6984  48 00 02 5C */	b lbl_809F6BE0
lbl_809F6988:
/* 809F6988  A8 1A 09 E0 */	lha r0, 0x9e0(r26)
/* 809F698C  2C 00 00 02 */	cmpwi r0, 2
/* 809F6990  40 82 02 50 */	bne lbl_809F6BE0
/* 809F6994  A8 1A 09 DA */	lha r0, 0x9da(r26)
/* 809F6998  2C 00 00 00 */	cmpwi r0, 0
/* 809F699C  40 81 02 44 */	ble lbl_809F6BE0
/* 809F69A0  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 809F69A4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809F69A8  C0 1E 01 E0 */	lfs f0, 0x1e0(r30)
/* 809F69AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F69B0  4C 41 13 82 */	cror 2, 1, 2
/* 809F69B4  40 82 00 2C */	bne lbl_809F69E0
/* 809F69B8  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 809F69BC  C0 1E 01 E4 */	lfs f0, 0x1e4(r30)
/* 809F69C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F69C4  40 81 00 1C */	ble lbl_809F69E0
/* 809F69C8  40 81 00 10 */	ble lbl_809F69D8
/* 809F69CC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F69D0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809F69D4  48 00 00 0C */	b lbl_809F69E0
lbl_809F69D8:
/* 809F69D8  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809F69DC  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_809F69E0:
/* 809F69E0  38 61 00 34 */	addi r3, r1, 0x34
/* 809F69E4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 809F69E8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 809F69EC  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 809F69F0  4B 87 01 44 */	b __mi__4cXyzCFRC3Vec
/* 809F69F4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 809F69F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809F69FC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6A00  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809F6A04  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 809F6A08  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809F6A0C  38 61 00 1C */	addi r3, r1, 0x1c
/* 809F6A10  4B 95 07 28 */	b PSVECSquareMag
/* 809F6A14  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6A18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F6A1C  40 81 00 58 */	ble lbl_809F6A74
/* 809F6A20  FC 00 08 34 */	frsqrte f0, f1
/* 809F6A24  C8 9E 00 D0 */	lfd f4, 0xd0(r30)
/* 809F6A28  FC 44 00 32 */	fmul f2, f4, f0
/* 809F6A2C  C8 7E 00 D8 */	lfd f3, 0xd8(r30)
/* 809F6A30  FC 00 00 32 */	fmul f0, f0, f0
/* 809F6A34  FC 01 00 32 */	fmul f0, f1, f0
/* 809F6A38  FC 03 00 28 */	fsub f0, f3, f0
/* 809F6A3C  FC 02 00 32 */	fmul f0, f2, f0
/* 809F6A40  FC 44 00 32 */	fmul f2, f4, f0
/* 809F6A44  FC 00 00 32 */	fmul f0, f0, f0
/* 809F6A48  FC 01 00 32 */	fmul f0, f1, f0
/* 809F6A4C  FC 03 00 28 */	fsub f0, f3, f0
/* 809F6A50  FC 02 00 32 */	fmul f0, f2, f0
/* 809F6A54  FC 44 00 32 */	fmul f2, f4, f0
/* 809F6A58  FC 00 00 32 */	fmul f0, f0, f0
/* 809F6A5C  FC 01 00 32 */	fmul f0, f1, f0
/* 809F6A60  FC 03 00 28 */	fsub f0, f3, f0
/* 809F6A64  FC 02 00 32 */	fmul f0, f2, f0
/* 809F6A68  FC 21 00 32 */	fmul f1, f1, f0
/* 809F6A6C  FC 20 08 18 */	frsp f1, f1
/* 809F6A70  48 00 00 88 */	b lbl_809F6AF8
lbl_809F6A74:
/* 809F6A74  C8 1E 00 E0 */	lfd f0, 0xe0(r30)
/* 809F6A78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F6A7C  40 80 00 10 */	bge lbl_809F6A8C
/* 809F6A80  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809F6A84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 809F6A88  48 00 00 70 */	b lbl_809F6AF8
lbl_809F6A8C:
/* 809F6A8C  D0 21 00 08 */	stfs f1, 8(r1)
/* 809F6A90  80 81 00 08 */	lwz r4, 8(r1)
/* 809F6A94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 809F6A98  3C 00 7F 80 */	lis r0, 0x7f80
/* 809F6A9C  7C 03 00 00 */	cmpw r3, r0
/* 809F6AA0  41 82 00 14 */	beq lbl_809F6AB4
/* 809F6AA4  40 80 00 40 */	bge lbl_809F6AE4
/* 809F6AA8  2C 03 00 00 */	cmpwi r3, 0
/* 809F6AAC  41 82 00 20 */	beq lbl_809F6ACC
/* 809F6AB0  48 00 00 34 */	b lbl_809F6AE4
lbl_809F6AB4:
/* 809F6AB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F6AB8  41 82 00 0C */	beq lbl_809F6AC4
/* 809F6ABC  38 00 00 01 */	li r0, 1
/* 809F6AC0  48 00 00 28 */	b lbl_809F6AE8
lbl_809F6AC4:
/* 809F6AC4  38 00 00 02 */	li r0, 2
/* 809F6AC8  48 00 00 20 */	b lbl_809F6AE8
lbl_809F6ACC:
/* 809F6ACC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 809F6AD0  41 82 00 0C */	beq lbl_809F6ADC
/* 809F6AD4  38 00 00 05 */	li r0, 5
/* 809F6AD8  48 00 00 10 */	b lbl_809F6AE8
lbl_809F6ADC:
/* 809F6ADC  38 00 00 03 */	li r0, 3
/* 809F6AE0  48 00 00 08 */	b lbl_809F6AE8
lbl_809F6AE4:
/* 809F6AE4  38 00 00 04 */	li r0, 4
lbl_809F6AE8:
/* 809F6AE8  2C 00 00 01 */	cmpwi r0, 1
/* 809F6AEC  40 82 00 0C */	bne lbl_809F6AF8
/* 809F6AF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 809F6AF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_809F6AF8:
/* 809F6AF8  38 7E 00 00 */	addi r3, r30, 0
/* 809F6AFC  C0 03 00 88 */	lfs f0, 0x88(r3)
/* 809F6B00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F6B04  40 80 00 DC */	bge lbl_809F6BE0
/* 809F6B08  88 1A 0E 11 */	lbz r0, 0xe11(r26)
/* 809F6B0C  7C 00 07 74 */	extsb r0, r0
/* 809F6B10  54 00 08 3C */	slwi r0, r0, 1
/* 809F6B14  3C 60 80 A0 */	lis r3, l_appearTmpFlag@ha
/* 809F6B18  38 63 89 70 */	addi r3, r3, l_appearTmpFlag@l
/* 809F6B1C  7C 63 02 AE */	lhax r3, r3, r0
/* 809F6B20  2C 03 FF FF */	cmpwi r3, -1
/* 809F6B24  41 82 00 08 */	beq lbl_809F6B2C
/* 809F6B28  4B 75 5F C4 */	b daNpcT_onTmpBit__FUl
lbl_809F6B2C:
/* 809F6B2C  80 7A 0E 14 */	lwz r3, 0xe14(r26)
/* 809F6B30  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 809F6B34  38 80 00 00 */	li r4, 0
/* 809F6B38  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 809F6B3C  7C 05 07 74 */	extsb r5, r0
/* 809F6B40  38 C0 00 00 */	li r6, 0
/* 809F6B44  38 E0 FF FF */	li r7, -1
/* 809F6B48  4B 63 06 28 */	b dStage_changeScene__FifUlScsi
/* 809F6B4C  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 809F6B50  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 809F6B54  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 809F6B58  38 00 00 87 */	li r0, 0x87
/* 809F6B5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809F6B60  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 809F6B64  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 809F6B68  80 63 00 00 */	lwz r3, 0(r3)
/* 809F6B6C  38 81 00 10 */	addi r4, r1, 0x10
/* 809F6B70  38 A0 00 00 */	li r5, 0
/* 809F6B74  38 C0 00 00 */	li r6, 0
/* 809F6B78  38 E0 00 00 */	li r7, 0
/* 809F6B7C  FC 40 08 90 */	fmr f2, f1
/* 809F6B80  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 809F6B84  FC 80 18 90 */	fmr f4, f3
/* 809F6B88  39 00 00 00 */	li r8, 0
/* 809F6B8C  4B 8B 4D F8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809F6B90  3B 80 00 01 */	li r28, 1
/* 809F6B94  48 00 00 4C */	b lbl_809F6BE0
lbl_809F6B98:
/* 809F6B98  80 1A 05 FC */	lwz r0, 0x5fc(r26)
/* 809F6B9C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 809F6BA0  41 82 00 40 */	beq lbl_809F6BE0
/* 809F6BA4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809F6BA8  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 809F6BAC  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 809F6BB0  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 809F6BB4  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 809F6BB8  7F 43 D3 78 */	mr r3, r26
/* 809F6BBC  38 80 00 03 */	li r4, 3
/* 809F6BC0  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 809F6BC4  38 A0 00 00 */	li r5, 0
/* 809F6BC8  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 809F6BCC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F6BD0  7D 89 03 A6 */	mtctr r12
/* 809F6BD4  4E 80 04 21 */	bctrl 
/* 809F6BD8  48 00 00 08 */	b lbl_809F6BE0
lbl_809F6BDC:
/* 809F6BDC  3B 80 00 01 */	li r28, 1
lbl_809F6BE0:
/* 809F6BE0  7F 83 E3 78 */	mr r3, r28
/* 809F6BE4  39 61 00 90 */	addi r11, r1, 0x90
/* 809F6BE8  4B 96 B6 2C */	b _restgpr_24
/* 809F6BEC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 809F6BF0  7C 08 03 A6 */	mtlr r0
/* 809F6BF4  38 21 00 90 */	addi r1, r1, 0x90
/* 809F6BF8  4E 80 00 20 */	blr 
