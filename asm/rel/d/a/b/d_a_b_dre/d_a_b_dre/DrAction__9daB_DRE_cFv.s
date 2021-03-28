lbl_805C9378:
/* 805C9378  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805C937C  7C 08 02 A6 */	mflr r0
/* 805C9380  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805C9384  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805C9388  4B D9 8E 54 */	b _savegpr_29
/* 805C938C  7C 7D 1B 78 */	mr r29, r3
/* 805C9390  3C 80 80 5D */	lis r4, lit_3844@ha
/* 805C9394  3B E4 AD 5C */	addi r31, r4, lit_3844@l
/* 805C9398  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805C939C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 805C93A0  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 805C93A4  88 A3 05 B4 */	lbz r5, 0x5b4(r3)
/* 805C93A8  28 05 00 09 */	cmplwi r5, 9
/* 805C93AC  41 81 07 7C */	bgt lbl_805C9B28
/* 805C93B0  3C 80 80 5D */	lis r4, lit_4621@ha
/* 805C93B4  38 84 AE FC */	addi r4, r4, lit_4621@l
/* 805C93B8  54 A0 10 3A */	slwi r0, r5, 2
/* 805C93BC  7C 04 00 2E */	lwzx r0, r4, r0
/* 805C93C0  7C 09 03 A6 */	mtctr r0
/* 805C93C4  4E 80 04 20 */	bctr 
lbl_805C93C8:
/* 805C93C8  48 00 11 35 */	bl BreathSet__9daB_DRE_cFv
/* 805C93CC  48 00 07 5C */	b lbl_805C9B28
lbl_805C93D0:
/* 805C93D0  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C93D4  2C 00 00 00 */	cmpwi r0, 0
/* 805C93D8  40 82 00 60 */	bne lbl_805C9438
/* 805C93DC  88 9D 05 B8 */	lbz r4, 0x5b8(r29)
/* 805C93E0  38 04 00 01 */	addi r0, r4, 1
/* 805C93E4  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C93E8  3C 80 80 5D */	lis r4, data_805CB098@ha
/* 805C93EC  C4 04 B0 98 */	lfsu f0, data_805CB098@l(r4)
/* 805C93F0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805C93F4  C0 04 00 04 */	lfs f0, 4(r4)
/* 805C93F8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805C93FC  C0 04 00 08 */	lfs f0, 8(r4)
/* 805C9400  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805C9404  38 81 00 4C */	addi r4, r1, 0x4c
/* 805C9408  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 805C940C  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 805C9410  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805C9414  38 05 15 00 */	addi r0, r5, 0x1500
/* 805C9418  7C 05 07 34 */	extsh r5, r0
/* 805C941C  4B FF EC 71 */	bl SetStopCam__9daB_DRE_cF4cXyzffs
/* 805C9420  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 805C9424  38 03 10 00 */	addi r0, r3, 0x1000
/* 805C9428  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 805C942C  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 805C9430  38 03 00 01 */	addi r0, r3, 1
/* 805C9434  98 1D 05 B4 */	stb r0, 0x5b4(r29)
lbl_805C9438:
/* 805C9438  7F A3 EB 78 */	mr r3, r29
/* 805C943C  48 00 10 C1 */	bl BreathSet__9daB_DRE_cFv
/* 805C9440  48 00 06 E8 */	b lbl_805C9B28
lbl_805C9444:
/* 805C9444  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805C9448  38 63 00 0C */	addi r3, r3, 0xc
/* 805C944C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 805C9450  4B D5 EF DC */	b checkPass__12J3DFrameCtrlFf
/* 805C9454  2C 03 00 00 */	cmpwi r3, 0
/* 805C9458  41 82 00 18 */	beq lbl_805C9470
/* 805C945C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C9460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C9464  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805C9468  38 80 00 1F */	li r4, 0x1f
/* 805C946C  4B AA 69 28 */	b StopQuake__12dVibration_cFi
lbl_805C9470:
/* 805C9470  80 9D 06 EC */	lwz r4, 0x6ec(r29)
/* 805C9474  38 60 00 01 */	li r3, 1
/* 805C9478  88 04 00 11 */	lbz r0, 0x11(r4)
/* 805C947C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C9480  40 82 00 18 */	bne lbl_805C9498
/* 805C9484  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C9488  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805C948C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C9490  41 82 00 08 */	beq lbl_805C9498
/* 805C9494  38 60 00 00 */	li r3, 0
lbl_805C9498:
/* 805C9498  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C949C  41 82 00 6C */	beq lbl_805C9508
/* 805C94A0  7F A3 EB 78 */	mr r3, r29
/* 805C94A4  38 A0 00 19 */	li r5, 0x19
/* 805C94A8  38 C0 00 02 */	li r6, 2
/* 805C94AC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 805C94B0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C94B4  4B FF E9 21 */	bl SetAnm__9daB_DRE_cFP16mDoExt_McaMorfSOiiff
/* 805C94B8  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 805C94BC  38 03 00 01 */	addi r0, r3, 1
/* 805C94C0  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 805C94C4  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C94C8  38 03 00 01 */	addi r0, r3, 1
/* 805C94CC  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C94D0  38 00 00 8C */	li r0, 0x8c
/* 805C94D4  B0 1D 06 32 */	sth r0, 0x632(r29)
/* 805C94D8  38 00 00 03 */	li r0, 3
/* 805C94DC  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 805C94E0  38 60 00 00 */	li r3, 0
/* 805C94E4  90 7E 06 0C */	stw r3, 0x60c(r30)
/* 805C94E8  38 00 00 04 */	li r0, 4
/* 805C94EC  90 1E 06 14 */	stw r0, 0x614(r30)
/* 805C94F0  38 00 00 02 */	li r0, 2
/* 805C94F4  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 805C94F8  90 7E 06 10 */	stw r3, 0x610(r30)
/* 805C94FC  B0 7E 06 0A */	sth r3, 0x60a(r30)
/* 805C9500  38 00 00 1E */	li r0, 0x1e
/* 805C9504  B0 1D 06 30 */	sth r0, 0x630(r29)
lbl_805C9508:
/* 805C9508  7F A3 EB 78 */	mr r3, r29
/* 805C950C  48 00 0F F1 */	bl BreathSet__9daB_DRE_cFv
/* 805C9510  48 00 06 18 */	b lbl_805C9B28
lbl_805C9514:
/* 805C9514  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C9518  2C 00 00 00 */	cmpwi r0, 0
/* 805C951C  40 82 00 2C */	bne lbl_805C9548
/* 805C9520  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805C9524  D0 1D 06 14 */	stfs f0, 0x614(r29)
/* 805C9528  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 805C952C  4B C9 E4 28 */	b cM_rndF__Ff
/* 805C9530  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 805C9534  EC 00 08 2A */	fadds f0, f0, f1
/* 805C9538  FC 00 00 1E */	fctiwz f0, f0
/* 805C953C  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805C9540  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805C9544  B0 1D 06 2C */	sth r0, 0x62c(r29)
lbl_805C9548:
/* 805C9548  A8 1D 06 32 */	lha r0, 0x632(r29)
/* 805C954C  2C 00 00 00 */	cmpwi r0, 0
/* 805C9550  40 82 00 88 */	bne lbl_805C95D8
/* 805C9554  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805C9558  38 63 00 0C */	addi r3, r3, 0xc
/* 805C955C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805C9560  4B D5 EE CC */	b checkPass__12J3DFrameCtrlFf
/* 805C9564  2C 03 00 00 */	cmpwi r3, 0
/* 805C9568  41 82 00 70 */	beq lbl_805C95D8
/* 805C956C  38 00 00 3C */	li r0, 0x3c
/* 805C9570  B0 1D 06 32 */	sth r0, 0x632(r29)
/* 805C9574  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C9578  38 03 00 01 */	addi r0, r3, 1
/* 805C957C  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C9580  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805C9584  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 805C9588  C0 7D 04 D0 */	lfs f3, 0x4d0(r29)
/* 805C958C  D0 61 00 7C */	stfs f3, 0x7c(r1)
/* 805C9590  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 805C9594  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 805C9598  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 805C959C  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 805C95A0  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 805C95A4  EC 02 00 2A */	fadds f0, f2, f0
/* 805C95A8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C95AC  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 805C95B0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805C95B4  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 805C95B8  7F A3 EB 78 */	mr r3, r29
/* 805C95BC  38 81 00 40 */	addi r4, r1, 0x40
/* 805C95C0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 805C95C4  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 805C95C8  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805C95CC  4B FF EA C1 */	bl SetStopCam__9daB_DRE_cF4cXyzffs
/* 805C95D0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C95D4  D0 1D 06 10 */	stfs f0, 0x610(r29)
lbl_805C95D8:
/* 805C95D8  A8 1D 06 2E */	lha r0, 0x62e(r29)
/* 805C95DC  2C 00 00 00 */	cmpwi r0, 0
/* 805C95E0  41 82 00 0C */	beq lbl_805C95EC
/* 805C95E4  7F A3 EB 78 */	mr r3, r29
/* 805C95E8  48 00 0F 15 */	bl BreathSet__9daB_DRE_cFv
lbl_805C95EC:
/* 805C95EC  A8 1D 06 2E */	lha r0, 0x62e(r29)
/* 805C95F0  2C 00 00 01 */	cmpwi r0, 1
/* 805C95F4  40 82 00 24 */	bne lbl_805C9618
/* 805C95F8  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805C95FC  4B C9 E3 58 */	b cM_rndF__Ff
/* 805C9600  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805C9604  EC 00 08 2A */	fadds f0, f0, f1
/* 805C9608  FC 00 00 1E */	fctiwz f0, f0
/* 805C960C  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805C9610  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805C9614  B0 1D 06 30 */	sth r0, 0x630(r29)
lbl_805C9618:
/* 805C9618  A8 1D 06 30 */	lha r0, 0x630(r29)
/* 805C961C  2C 00 00 01 */	cmpwi r0, 1
/* 805C9620  40 82 05 08 */	bne lbl_805C9B28
/* 805C9624  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 805C9628  4B C9 E3 2C */	b cM_rndF__Ff
/* 805C962C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805C9630  EC 00 08 2A */	fadds f0, f0, f1
/* 805C9634  FC 00 00 1E */	fctiwz f0, f0
/* 805C9638  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 805C963C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 805C9640  B0 1D 06 2E */	sth r0, 0x62e(r29)
/* 805C9644  48 00 04 E4 */	b lbl_805C9B28
lbl_805C9648:
/* 805C9648  80 7D 06 EC */	lwz r3, 0x6ec(r29)
/* 805C964C  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805C9650  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 805C9654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C9658  40 81 00 14 */	ble lbl_805C966C
/* 805C965C  C0 3D 06 14 */	lfs f1, 0x614(r29)
/* 805C9660  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 805C9664  EC 01 00 28 */	fsubs f0, f1, f0
/* 805C9668  D0 1D 06 14 */	stfs f0, 0x614(r29)
lbl_805C966C:
/* 805C966C  80 9D 06 EC */	lwz r4, 0x6ec(r29)
/* 805C9670  38 60 00 01 */	li r3, 1
/* 805C9674  88 04 00 11 */	lbz r0, 0x11(r4)
/* 805C9678  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805C967C  40 82 00 18 */	bne lbl_805C9694
/* 805C9680  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805C9684  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 805C9688  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805C968C  41 82 00 08 */	beq lbl_805C9694
/* 805C9690  38 60 00 00 */	li r3, 0
lbl_805C9694:
/* 805C9694  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805C9698  41 82 00 1C */	beq lbl_805C96B4
/* 805C969C  7F A3 EB 78 */	mr r3, r29
/* 805C96A0  38 A0 00 21 */	li r5, 0x21
/* 805C96A4  38 C0 00 02 */	li r6, 2
/* 805C96A8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805C96AC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805C96B0  4B FF E7 25 */	bl SetAnm__9daB_DRE_cFP16mDoExt_McaMorfSOiiff
lbl_805C96B4:
/* 805C96B4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805C96B8  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 805C96BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C96C0  40 80 00 78 */	bge lbl_805C9738
/* 805C96C4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 805C96C8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 805C96CC  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 805C96D0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805C96D4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C96D8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C96DC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C96E0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805C96E4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C96E8  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C96EC  38 03 00 01 */	addi r0, r3, 1
/* 805C96F0  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C96F4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 805C96F8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805C96FC  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 805C9700  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805C9704  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 805C9708  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805C970C  7F A3 EB 78 */	mr r3, r29
/* 805C9710  38 81 00 34 */	addi r4, r1, 0x34
/* 805C9714  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 805C9718  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 805C971C  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805C9720  4B FF E9 6D */	bl SetStopCam__9daB_DRE_cF4cXyzffs
/* 805C9724  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 805C9728  B0 1D 05 FC */	sth r0, 0x5fc(r29)
/* 805C972C  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 805C9730  38 03 00 01 */	addi r0, r3, 1
/* 805C9734  98 1D 05 B4 */	stb r0, 0x5b4(r29)
lbl_805C9738:
/* 805C9738  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805C973C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 805C9740  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805C9744  40 80 03 E4 */	bge lbl_805C9B28
/* 805C9748  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805C974C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805C9750  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 805C9754  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 805C9758  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805C975C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 805C9760  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805C9764  EC 01 00 2A */	fadds f0, f1, f0
/* 805C9768  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 805C976C  7F A3 EB 78 */	mr r3, r29
/* 805C9770  38 81 00 70 */	addi r4, r1, 0x70
/* 805C9774  38 A0 00 31 */	li r5, 0x31
/* 805C9778  38 C0 00 00 */	li r6, 0
/* 805C977C  38 E0 00 00 */	li r7, 0
/* 805C9780  4B A5 33 58 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 805C9784  38 00 00 1F */	li r0, 0x1f
/* 805C9788  90 1D 05 B0 */	stw r0, 0x5b0(r29)
/* 805C978C  38 80 00 00 */	li r4, 0
/* 805C9790  3C 60 80 43 */	lis r3, g_env_light@ha
/* 805C9794  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 805C9798  98 83 12 CC */	stb r4, 0x12cc(r3)
/* 805C979C  38 00 00 01 */	li r0, 1
/* 805C97A0  98 1D 06 36 */	stb r0, 0x636(r29)
/* 805C97A4  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 805C97A8  38 03 00 01 */	addi r0, r3, 1
/* 805C97AC  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 805C97B0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C97B4  D0 1D 06 14 */	stfs f0, 0x614(r29)
/* 805C97B8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 805C97BC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805C97C0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 805C97C4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C97C8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 805C97CC  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C97D0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 805C97D4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C97D8  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 805C97DC  38 03 10 00 */	addi r0, r3, 0x1000
/* 805C97E0  B0 81 00 14 */	sth r4, 0x14(r1)
/* 805C97E4  B0 01 00 16 */	sth r0, 0x16(r1)
/* 805C97E8  B0 81 00 18 */	sth r4, 0x18(r1)
/* 805C97EC  38 61 00 7C */	addi r3, r1, 0x7c
/* 805C97F0  38 80 00 22 */	li r4, 0x22
/* 805C97F4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805C97F8  7C 05 07 74 */	extsb r5, r0
/* 805C97FC  38 C1 00 14 */	addi r6, r1, 0x14
/* 805C9800  38 E0 00 00 */	li r7, 0
/* 805C9804  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 805C9808  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 805C980C  39 00 FF FF */	li r8, -1
/* 805C9810  4B A5 28 C4 */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
/* 805C9814  38 00 00 1E */	li r0, 0x1e
/* 805C9818  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 805C981C  48 00 03 0C */	b lbl_805C9B28
lbl_805C9820:
/* 805C9820  38 60 02 1B */	li r3, 0x21b
/* 805C9824  38 81 00 10 */	addi r4, r1, 0x10
/* 805C9828  4B A5 02 04 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 805C982C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 805C9830  28 04 00 00 */	cmplwi r4, 0
/* 805C9834  41 82 00 30 */	beq lbl_805C9864
/* 805C9838  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C983C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C9840  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805C9844  4B A7 9E 48 */	b setPtT__14dEvt_control_cFPv
/* 805C9848  38 00 00 2F */	li r0, 0x2f
/* 805C984C  90 1E 06 14 */	stw r0, 0x614(r30)
/* 805C9850  38 00 00 03 */	li r0, 3
/* 805C9854  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 805C9858  38 00 00 00 */	li r0, 0
/* 805C985C  90 1E 06 10 */	stw r0, 0x610(r30)
/* 805C9860  B0 1E 06 0A */	sth r0, 0x60a(r30)
lbl_805C9864:
/* 805C9864  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C9868  2C 00 00 00 */	cmpwi r0, 0
/* 805C986C  40 82 02 BC */	bne lbl_805C9B28
/* 805C9870  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 805C9874  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 805C9878  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 805C987C  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 805C9880  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 805C9884  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C9888  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 805C988C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 805C9890  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805C9894  7F A3 EB 78 */	mr r3, r29
/* 805C9898  38 81 00 28 */	addi r4, r1, 0x28
/* 805C989C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 805C98A0  C0 5F 00 04 */	lfs f2, 4(r31)
/* 805C98A4  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805C98A8  38 05 F0 00 */	addi r0, r5, -4096
/* 805C98AC  7C 05 07 34 */	extsh r5, r0
/* 805C98B0  4B FF E7 DD */	bl SetStopCam__9daB_DRE_cF4cXyzffs
/* 805C98B4  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C98B8  38 03 00 01 */	addi r0, r3, 1
/* 805C98BC  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C98C0  38 00 00 96 */	li r0, 0x96
/* 805C98C4  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 805C98C8  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 805C98CC  38 03 00 01 */	addi r0, r3, 1
/* 805C98D0  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 805C98D4  48 00 02 54 */	b lbl_805C9B28
lbl_805C98D8:
/* 805C98D8  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C98DC  2C 00 00 00 */	cmpwi r0, 0
/* 805C98E0  40 82 02 48 */	bne lbl_805C9B28
/* 805C98E4  38 05 00 01 */	addi r0, r5, 1
/* 805C98E8  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 805C98EC  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C98F0  38 03 00 01 */	addi r0, r3, 1
/* 805C98F4  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C98F8  38 00 00 50 */	li r0, 0x50
/* 805C98FC  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 805C9900  48 00 02 28 */	b lbl_805C9B28
lbl_805C9904:
/* 805C9904  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C9908  2C 00 00 00 */	cmpwi r0, 0
/* 805C990C  40 82 00 DC */	bne lbl_805C99E8
/* 805C9910  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C9914  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805C9918  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805C991C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805C9920  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 805C9924  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C9928  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 805C992C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C9930  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 805C9934  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C9938  38 61 00 7C */	addi r3, r1, 0x7c
/* 805C993C  7C 64 1B 78 */	mr r4, r3
/* 805C9940  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 805C9944  38 05 50 00 */	addi r0, r5, 0x5000
/* 805C9948  7C 05 07 34 */	extsh r5, r0
/* 805C994C  38 C1 00 64 */	addi r6, r1, 0x64
/* 805C9950  4B CA 74 70 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 805C9954  38 60 02 F2 */	li r3, 0x2f2
/* 805C9958  38 80 00 00 */	li r4, 0
/* 805C995C  38 A1 00 7C */	addi r5, r1, 0x7c
/* 805C9960  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805C9964  7C 06 07 74 */	extsb r6, r0
/* 805C9968  38 E0 00 00 */	li r7, 0
/* 805C996C  39 00 00 00 */	li r8, 0
/* 805C9970  39 20 FF FF */	li r9, -1
/* 805C9974  4B A5 04 24 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 805C9978  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 805C997C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 805C9980  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805C9984  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805C9988  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 805C998C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 805C9990  38 00 00 00 */	li r0, 0
/* 805C9994  B0 01 00 14 */	sth r0, 0x14(r1)
/* 805C9998  B0 01 00 16 */	sth r0, 0x16(r1)
/* 805C999C  B0 01 00 18 */	sth r0, 0x18(r1)
/* 805C99A0  38 61 00 7C */	addi r3, r1, 0x7c
/* 805C99A4  38 81 00 14 */	addi r4, r1, 0x14
/* 805C99A8  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 805C99AC  7C 05 07 74 */	extsb r5, r0
/* 805C99B0  38 C0 00 02 */	li r6, 2
/* 805C99B4  38 E0 00 01 */	li r7, 1
/* 805C99B8  39 00 00 FF */	li r8, 0xff
/* 805C99BC  4B A5 2F A0 */	b fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 805C99C0  88 7D 05 B4 */	lbz r3, 0x5b4(r29)
/* 805C99C4  38 03 00 01 */	addi r0, r3, 1
/* 805C99C8  98 1D 05 B4 */	stb r0, 0x5b4(r29)
/* 805C99CC  88 7D 05 B8 */	lbz r3, 0x5b8(r29)
/* 805C99D0  38 03 00 01 */	addi r0, r3, 1
/* 805C99D4  98 1D 05 B8 */	stb r0, 0x5b8(r29)
/* 805C99D8  38 00 00 9B */	li r0, 0x9b
/* 805C99DC  B0 1D 06 2C */	sth r0, 0x62c(r29)
/* 805C99E0  38 00 00 00 */	li r0, 0
/* 805C99E4  98 1D 06 38 */	stb r0, 0x638(r29)
lbl_805C99E8:
/* 805C99E8  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 805C99EC  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 805C99F0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 805C99F4  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 805C99F8  4B CA 60 44 */	b cLib_addCalc2__FPffff
/* 805C99FC  48 00 01 2C */	b lbl_805C9B28
lbl_805C9A00:
/* 805C9A00  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C9A04  2C 00 00 91 */	cmpwi r0, 0x91
/* 805C9A08  40 82 00 44 */	bne lbl_805C9A4C
/* 805C9A0C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080284@ha */
/* 805C9A10  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x00080284@l */
/* 805C9A14  90 01 00 08 */	stw r0, 8(r1)
/* 805C9A18  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805C9A1C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805C9A20  80 63 00 00 */	lwz r3, 0(r3)
/* 805C9A24  38 81 00 08 */	addi r4, r1, 8
/* 805C9A28  38 A0 00 00 */	li r5, 0
/* 805C9A2C  38 C0 00 00 */	li r6, 0
/* 805C9A30  38 E0 00 00 */	li r7, 0
/* 805C9A34  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805C9A38  FC 40 08 90 */	fmr f2, f1
/* 805C9A3C  C0 7F 00 08 */	lfs f3, 8(r31)
/* 805C9A40  FC 80 18 90 */	fmr f4, f3
/* 805C9A44  39 00 00 00 */	li r8, 0
/* 805C9A48  4B CE 1F 3C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_805C9A4C:
/* 805C9A4C  38 60 02 F2 */	li r3, 0x2f2
/* 805C9A50  38 81 00 0C */	addi r4, r1, 0xc
/* 805C9A54  4B A4 FF D8 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 805C9A58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805C9A5C  28 00 00 00 */	cmplwi r0, 0
/* 805C9A60  41 82 00 2C */	beq lbl_805C9A8C
/* 805C9A64  88 1D 06 38 */	lbz r0, 0x638(r29)
/* 805C9A68  28 00 00 00 */	cmplwi r0, 0
/* 805C9A6C  40 82 00 20 */	bne lbl_805C9A8C
/* 805C9A70  38 00 00 01 */	li r0, 1
/* 805C9A74  98 1D 06 38 */	stb r0, 0x638(r29)
/* 805C9A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805C9A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805C9A80  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805C9A84  80 81 00 0C */	lwz r4, 0xc(r1)
/* 805C9A88  4B A7 9C 04 */	b setPtT__14dEvt_control_cFPv
lbl_805C9A8C:
/* 805C9A8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805C9A90  28 00 00 00 */	cmplwi r0, 0
/* 805C9A94  41 82 00 94 */	beq lbl_805C9B28
/* 805C9A98  A8 1D 06 2C */	lha r0, 0x62c(r29)
/* 805C9A9C  2C 00 00 00 */	cmpwi r0, 0
/* 805C9AA0  40 82 00 88 */	bne lbl_805C9B28
/* 805C9AA4  38 00 00 2F */	li r0, 0x2f
/* 805C9AA8  90 1E 06 14 */	stw r0, 0x614(r30)
/* 805C9AAC  38 00 00 03 */	li r0, 3
/* 805C9AB0  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 805C9AB4  38 00 00 00 */	li r0, 0
/* 805C9AB8  90 1E 06 10 */	stw r0, 0x610(r30)
/* 805C9ABC  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 805C9AC0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 805C9AC4  C0 63 04 D0 */	lfs f3, 0x4d0(r3)
/* 805C9AC8  D0 61 00 58 */	stfs f3, 0x58(r1)
/* 805C9ACC  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 805C9AD0  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 805C9AD4  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 805C9AD8  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 805C9ADC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805C9AE0  EC 02 00 28 */	fsubs f0, f2, f0
/* 805C9AE4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805C9AE8  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 805C9AEC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805C9AF0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 805C9AF4  38 81 00 1C */	addi r4, r1, 0x1c
/* 805C9AF8  48 00 12 35 */	bl setCurrentPos__16obj_ystone_classF4cXyz
/* 805C9AFC  C0 5D 05 D8 */	lfs f2, 0x5d8(r29)
/* 805C9B00  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 805C9B04  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 805C9B08  EC 21 00 28 */	fsubs f1, f1, f0
/* 805C9B0C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 805C9B10  4C 41 13 82 */	cror 2, 1, 2
/* 805C9B14  40 82 00 14 */	bne lbl_805C9B28
/* 805C9B18  38 7D 05 D8 */	addi r3, r29, 0x5d8
/* 805C9B1C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 805C9B20  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 805C9B24  4B CA 5F 18 */	b cLib_addCalc2__FPffff
lbl_805C9B28:
/* 805C9B28  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805C9B2C  4B D9 86 FC */	b _restgpr_29
/* 805C9B30  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805C9B34  7C 08 03 A6 */	mtlr r0
/* 805C9B38  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805C9B3C  4E 80 00 20 */	blr 
