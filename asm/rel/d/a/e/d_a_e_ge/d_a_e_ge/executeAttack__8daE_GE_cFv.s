lbl_806C921C:
/* 806C921C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 806C9220  7C 08 02 A6 */	mflr r0
/* 806C9224  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 806C9228  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806C922C  4B C9 8F A9 */	bl _savegpr_27
/* 806C9230  7C 7C 1B 78 */	mr r28, r3
/* 806C9234  3C 60 80 6D */	lis r3, lit_3904@ha /* 0x806CD000@ha */
/* 806C9238  3B E3 D0 00 */	addi r31, r3, lit_3904@l /* 0x806CD000@l */
/* 806C923C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C9240  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C9244  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 806C9248  38 80 00 00 */	li r4, 0
/* 806C924C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806C9250  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 806C9254  7D 89 03 A6 */	mtctr r12
/* 806C9258  4E 80 04 21 */	bctrl 
/* 806C925C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C9260  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C9264  4B C7 D2 4D */	bl PSMTXCopy
/* 806C9268  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806C926C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806C9270  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806C9274  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 806C9278  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806C927C  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 806C9280  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806C9284  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 806C9288  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C928C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C9290  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 806C9294  7C 00 07 74 */	extsb r0, r0
/* 806C9298  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806C929C  7C 64 02 14 */	add r3, r4, r0
/* 806C92A0  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 806C92A4  7F 83 E3 78 */	mr r3, r28
/* 806C92A8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806C92AC  4B 95 14 65 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806C92B0  7C 64 1B 78 */	mr r4, r3
/* 806C92B4  A8 7D 02 32 */	lha r3, 0x232(r29)
/* 806C92B8  4B BA 7B 6D */	bl cLib_distanceAngleS__Fss
/* 806C92BC  7C 7E 07 34 */	extsh r30, r3
/* 806C92C0  38 61 00 74 */	addi r3, r1, 0x74
/* 806C92C4  38 81 00 A4 */	addi r4, r1, 0xa4
/* 806C92C8  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 806C92CC  4B B9 D8 69 */	bl __mi__4cXyzCFRC3Vec
/* 806C92D0  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 806C92D4  D0 41 00 8C */	stfs f2, 0x8c(r1)
/* 806C92D8  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 806C92DC  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806C92E0  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 806C92E4  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 806C92E8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 806C92EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C92F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806C92F4  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 806C92F8  38 61 00 38 */	addi r3, r1, 0x38
/* 806C92FC  4B C7 DE 3D */	bl PSVECSquareMag
/* 806C9300  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9304  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9308  40 81 00 58 */	ble lbl_806C9360
/* 806C930C  FC 00 08 34 */	frsqrte f0, f1
/* 806C9310  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806C9314  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9318  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806C931C  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9320  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9324  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9328  FC 02 00 32 */	fmul f0, f2, f0
/* 806C932C  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9330  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9334  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9338  FC 03 00 28 */	fsub f0, f3, f0
/* 806C933C  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9340  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9344  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9348  FC 01 00 32 */	fmul f0, f1, f0
/* 806C934C  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9350  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9354  FC 21 00 32 */	fmul f1, f1, f0
/* 806C9358  FC 20 08 18 */	frsp f1, f1
/* 806C935C  48 00 00 88 */	b lbl_806C93E4
lbl_806C9360:
/* 806C9360  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806C9364  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9368  40 80 00 10 */	bge lbl_806C9378
/* 806C936C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C9370  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806C9374  48 00 00 70 */	b lbl_806C93E4
lbl_806C9378:
/* 806C9378  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806C937C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 806C9380  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C9384  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C9388  7C 03 00 00 */	cmpw r3, r0
/* 806C938C  41 82 00 14 */	beq lbl_806C93A0
/* 806C9390  40 80 00 40 */	bge lbl_806C93D0
/* 806C9394  2C 03 00 00 */	cmpwi r3, 0
/* 806C9398  41 82 00 20 */	beq lbl_806C93B8
/* 806C939C  48 00 00 34 */	b lbl_806C93D0
lbl_806C93A0:
/* 806C93A0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C93A4  41 82 00 0C */	beq lbl_806C93B0
/* 806C93A8  38 00 00 01 */	li r0, 1
/* 806C93AC  48 00 00 28 */	b lbl_806C93D4
lbl_806C93B0:
/* 806C93B0  38 00 00 02 */	li r0, 2
/* 806C93B4  48 00 00 20 */	b lbl_806C93D4
lbl_806C93B8:
/* 806C93B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C93BC  41 82 00 0C */	beq lbl_806C93C8
/* 806C93C0  38 00 00 05 */	li r0, 5
/* 806C93C4  48 00 00 10 */	b lbl_806C93D4
lbl_806C93C8:
/* 806C93C8  38 00 00 03 */	li r0, 3
/* 806C93CC  48 00 00 08 */	b lbl_806C93D4
lbl_806C93D0:
/* 806C93D0  38 00 00 04 */	li r0, 4
lbl_806C93D4:
/* 806C93D4  2C 00 00 01 */	cmpwi r0, 1
/* 806C93D8  40 82 00 0C */	bne lbl_806C93E4
/* 806C93DC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C93E0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806C93E4:
/* 806C93E4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 806C93E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C93EC  40 81 00 14 */	ble lbl_806C9400
/* 806C93F0  7F 83 E3 78 */	mr r3, r28
/* 806C93F4  38 80 00 03 */	li r4, 3
/* 806C93F8  4B FF ED 01 */	bl setActionMode__8daE_GE_cFi
/* 806C93FC  48 00 0A F0 */	b lbl_806C9EEC
lbl_806C9400:
/* 806C9400  3B A0 00 00 */	li r29, 0
/* 806C9404  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806C9408  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806C940C  3B 63 56 B8 */	addi r27, r3, 0x56b8
/* 806C9410  7F 63 DB 78 */	mr r3, r27
/* 806C9414  4B 9A A3 D1 */	bl LockonTruth__12dAttention_cFv
/* 806C9418  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C941C  41 82 00 1C */	beq lbl_806C9438
/* 806C9420  7F 63 DB 78 */	mr r3, r27
/* 806C9424  38 80 00 00 */	li r4, 0
/* 806C9428  4B 9A A1 15 */	bl LockonTarget__12dAttention_cFl
/* 806C942C  7C 03 E0 40 */	cmplw r3, r28
/* 806C9430  40 82 00 08 */	bne lbl_806C9438
/* 806C9434  3B A0 00 01 */	li r29, 1
lbl_806C9438:
/* 806C9438  80 1C 0B 78 */	lwz r0, 0xb78(r28)
/* 806C943C  2C 00 00 02 */	cmpwi r0, 2
/* 806C9440  41 82 05 48 */	beq lbl_806C9988
/* 806C9444  40 80 00 14 */	bge lbl_806C9458
/* 806C9448  2C 00 00 00 */	cmpwi r0, 0
/* 806C944C  41 82 00 18 */	beq lbl_806C9464
/* 806C9450  40 80 00 D8 */	bge lbl_806C9528
/* 806C9454  48 00 0A 78 */	b lbl_806C9ECC
lbl_806C9458:
/* 806C9458  2C 00 00 04 */	cmpwi r0, 4
/* 806C945C  40 80 0A 70 */	bge lbl_806C9ECC
/* 806C9460  48 00 08 F8 */	b lbl_806C9D58
lbl_806C9464:
/* 806C9464  38 00 00 00 */	li r0, 0
/* 806C9468  98 1C 0B 9E */	stb r0, 0xb9e(r28)
/* 806C946C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806C9470  4B B9 E4 E5 */	bl cM_rndF__Ff
/* 806C9474  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806C9478  EC 00 08 2A */	fadds f0, f0, f1
/* 806C947C  FC 00 00 1E */	fctiwz f0, f0
/* 806C9480  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 806C9484  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 806C9488  B0 1C 0B 8E */	sth r0, 0xb8e(r28)
/* 806C948C  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 806C9490  4B B9 E4 FD */	bl cM_rndFX__Ff
/* 806C9494  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 806C9498  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806CD368@ha */
/* 806C949C  38 63 D3 68 */	addi r3, r3, l_HIO@l /* 0x806CD368@l */
/* 806C94A0  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 806C94A4  EC 02 00 24 */	fdivs f0, f2, f0
/* 806C94A8  EC 00 08 2A */	fadds f0, f0, f1
/* 806C94AC  FC 00 00 1E */	fctiwz f0, f0
/* 806C94B0  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 806C94B4  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 806C94B8  B0 1C 0B 8A */	sth r0, 0xb8a(r28)
/* 806C94BC  4B B9 E3 B1 */	bl cM_rnd__Fv
/* 806C94C0  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806C94C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C94C8  40 80 00 10 */	bge lbl_806C94D8
/* 806C94CC  A8 1C 0B 8A */	lha r0, 0xb8a(r28)
/* 806C94D0  7C 00 00 D0 */	neg r0, r0
/* 806C94D4  B0 1C 0B 8A */	sth r0, 0xb8a(r28)
lbl_806C94D8:
/* 806C94D8  38 00 00 01 */	li r0, 1
/* 806C94DC  90 1C 0B 78 */	stw r0, 0xb78(r28)
/* 806C94E0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 806C94E4  4B B9 E4 71 */	bl cM_rndF__Ff
/* 806C94E8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 806C94EC  EC 00 08 2A */	fadds f0, f0, f1
/* 806C94F0  FC 00 00 1E */	fctiwz f0, f0
/* 806C94F4  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 806C94F8  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 806C94FC  B0 1C 0B 96 */	sth r0, 0xb96(r28)
/* 806C9500  7F 83 E3 78 */	mr r3, r28
/* 806C9504  38 80 00 07 */	li r4, 7
/* 806C9508  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806C950C  38 A0 00 02 */	li r5, 2
/* 806C9510  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9514  4B FF E5 A5 */	bl bckSet__8daE_GE_cFifUcf
/* 806C9518  38 00 00 04 */	li r0, 4
/* 806C951C  98 1C 05 46 */	stb r0, 0x546(r28)
/* 806C9520  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9524  D0 1C 0B 5C */	stfs f0, 0xb5c(r28)
lbl_806C9528:
/* 806C9528  A8 1C 0B 90 */	lha r0, 0xb90(r28)
/* 806C952C  2C 00 00 00 */	cmpwi r0, 0
/* 806C9530  40 82 01 50 */	bne lbl_806C9680
/* 806C9534  88 1C 0B 9A */	lbz r0, 0xb9a(r28)
/* 806C9538  2C 00 00 00 */	cmpwi r0, 0
/* 806C953C  40 82 01 44 */	bne lbl_806C9680
/* 806C9540  38 61 00 68 */	addi r3, r1, 0x68
/* 806C9544  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 806C9548  38 BC 04 A8 */	addi r5, r28, 0x4a8
/* 806C954C  4B B9 D5 E9 */	bl __mi__4cXyzCFRC3Vec
/* 806C9550  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 806C9554  D0 41 00 80 */	stfs f2, 0x80(r1)
/* 806C9558  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 806C955C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 806C9560  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 806C9564  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 806C9568  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 806C956C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9570  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806C9574  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 806C9578  38 61 00 2C */	addi r3, r1, 0x2c
/* 806C957C  4B C7 DB BD */	bl PSVECSquareMag
/* 806C9580  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9584  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9588  40 81 00 58 */	ble lbl_806C95E0
/* 806C958C  FC 00 08 34 */	frsqrte f0, f1
/* 806C9590  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806C9594  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9598  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806C959C  FC 00 00 32 */	fmul f0, f0, f0
/* 806C95A0  FC 01 00 32 */	fmul f0, f1, f0
/* 806C95A4  FC 03 00 28 */	fsub f0, f3, f0
/* 806C95A8  FC 02 00 32 */	fmul f0, f2, f0
/* 806C95AC  FC 44 00 32 */	fmul f2, f4, f0
/* 806C95B0  FC 00 00 32 */	fmul f0, f0, f0
/* 806C95B4  FC 01 00 32 */	fmul f0, f1, f0
/* 806C95B8  FC 03 00 28 */	fsub f0, f3, f0
/* 806C95BC  FC 02 00 32 */	fmul f0, f2, f0
/* 806C95C0  FC 44 00 32 */	fmul f2, f4, f0
/* 806C95C4  FC 00 00 32 */	fmul f0, f0, f0
/* 806C95C8  FC 01 00 32 */	fmul f0, f1, f0
/* 806C95CC  FC 03 00 28 */	fsub f0, f3, f0
/* 806C95D0  FC 02 00 32 */	fmul f0, f2, f0
/* 806C95D4  FC 21 00 32 */	fmul f1, f1, f0
/* 806C95D8  FC 20 08 18 */	frsp f1, f1
/* 806C95DC  48 00 00 88 */	b lbl_806C9664
lbl_806C95E0:
/* 806C95E0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806C95E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C95E8  40 80 00 10 */	bge lbl_806C95F8
/* 806C95EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C95F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806C95F4  48 00 00 70 */	b lbl_806C9664
lbl_806C95F8:
/* 806C95F8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 806C95FC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 806C9600  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C9604  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C9608  7C 03 00 00 */	cmpw r3, r0
/* 806C960C  41 82 00 14 */	beq lbl_806C9620
/* 806C9610  40 80 00 40 */	bge lbl_806C9650
/* 806C9614  2C 03 00 00 */	cmpwi r3, 0
/* 806C9618  41 82 00 20 */	beq lbl_806C9638
/* 806C961C  48 00 00 34 */	b lbl_806C9650
lbl_806C9620:
/* 806C9620  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C9624  41 82 00 0C */	beq lbl_806C9630
/* 806C9628  38 00 00 01 */	li r0, 1
/* 806C962C  48 00 00 28 */	b lbl_806C9654
lbl_806C9630:
/* 806C9630  38 00 00 02 */	li r0, 2
/* 806C9634  48 00 00 20 */	b lbl_806C9654
lbl_806C9638:
/* 806C9638  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C963C  41 82 00 0C */	beq lbl_806C9648
/* 806C9640  38 00 00 05 */	li r0, 5
/* 806C9644  48 00 00 10 */	b lbl_806C9654
lbl_806C9648:
/* 806C9648  38 00 00 03 */	li r0, 3
/* 806C964C  48 00 00 08 */	b lbl_806C9654
lbl_806C9650:
/* 806C9650  38 00 00 04 */	li r0, 4
lbl_806C9654:
/* 806C9654  2C 00 00 01 */	cmpwi r0, 1
/* 806C9658  40 82 00 0C */	bne lbl_806C9664
/* 806C965C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C9660  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806C9664:
/* 806C9664  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806C9668  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C966C  40 81 00 14 */	ble lbl_806C9680
/* 806C9670  7F 83 E3 78 */	mr r3, r28
/* 806C9674  38 80 00 03 */	li r4, 3
/* 806C9678  4B FF EA 81 */	bl setActionMode__8daE_GE_cFi
/* 806C967C  48 00 08 70 */	b lbl_806C9EEC
lbl_806C9680:
/* 806C9680  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 806C9684  2C 00 00 02 */	cmpwi r0, 2
/* 806C9688  41 82 00 CC */	beq lbl_806C9754
/* 806C968C  40 80 00 14 */	bge lbl_806C96A0
/* 806C9690  2C 00 00 00 */	cmpwi r0, 0
/* 806C9694  41 82 00 18 */	beq lbl_806C96AC
/* 806C9698  40 80 00 7C */	bge lbl_806C9714
/* 806C969C  48 00 01 C8 */	b lbl_806C9864
lbl_806C96A0:
/* 806C96A0  2C 00 00 04 */	cmpwi r0, 4
/* 806C96A4  40 80 01 C0 */	bge lbl_806C9864
/* 806C96A8  48 00 00 CC */	b lbl_806C9774
lbl_806C96AC:
/* 806C96AC  C0 3C 0B 5C */	lfs f1, 0xb5c(r28)
/* 806C96B0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 806C96B4  EC 01 00 2A */	fadds f0, f1, f0
/* 806C96B8  D0 1C 0B 5C */	stfs f0, 0xb5c(r28)
/* 806C96BC  C0 3C 0B 5C */	lfs f1, 0xb5c(r28)
/* 806C96C0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C96C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C96C8  4C 41 13 82 */	cror 2, 1, 2
/* 806C96CC  40 82 01 98 */	bne lbl_806C9864
/* 806C96D0  7F 83 E3 78 */	mr r3, r28
/* 806C96D4  38 80 00 0A */	li r4, 0xa
/* 806C96D8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806C96DC  38 A0 00 02 */	li r5, 2
/* 806C96E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C96E4  4B FF E3 D5 */	bl bckSet__8daE_GE_cFifUcf
/* 806C96E8  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806C96EC  4B B9 E2 69 */	bl cM_rndF__Ff
/* 806C96F0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806C96F4  EC 00 08 2A */	fadds f0, f0, f1
/* 806C96F8  FC 00 00 1E */	fctiwz f0, f0
/* 806C96FC  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 806C9700  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 806C9704  B0 1C 0B 96 */	sth r0, 0xb96(r28)
/* 806C9708  38 00 00 01 */	li r0, 1
/* 806C970C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 806C9710  48 00 01 54 */	b lbl_806C9864
lbl_806C9714:
/* 806C9714  C0 3C 0B 5C */	lfs f1, 0xb5c(r28)
/* 806C9718  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 806C971C  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C9720  D0 1C 0B 5C */	stfs f0, 0xb5c(r28)
/* 806C9724  A8 1C 0B 96 */	lha r0, 0xb96(r28)
/* 806C9728  2C 00 00 00 */	cmpwi r0, 0
/* 806C972C  40 82 01 38 */	bne lbl_806C9864
/* 806C9730  7F 83 E3 78 */	mr r3, r28
/* 806C9734  38 80 00 07 */	li r4, 7
/* 806C9738  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806C973C  38 A0 00 02 */	li r5, 2
/* 806C9740  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9744  4B FF E3 75 */	bl bckSet__8daE_GE_cFifUcf
/* 806C9748  38 00 00 00 */	li r0, 0
/* 806C974C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 806C9750  48 00 01 14 */	b lbl_806C9864
lbl_806C9754:
/* 806C9754  7F 83 E3 78 */	mr r3, r28
/* 806C9758  38 80 00 08 */	li r4, 8
/* 806C975C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806C9760  38 A0 00 00 */	li r5, 0
/* 806C9764  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9768  4B FF E3 51 */	bl bckSet__8daE_GE_cFifUcf
/* 806C976C  38 00 00 03 */	li r0, 3
/* 806C9770  90 1C 0B 7C */	stw r0, 0xb7c(r28)
lbl_806C9774:
/* 806C9774  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007046B@ha */
/* 806C9778  38 03 04 6B */	addi r0, r3, 0x046B /* 0x0007046B@l */
/* 806C977C  90 01 00 28 */	stw r0, 0x28(r1)
/* 806C9780  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806C9784  38 81 00 28 */	addi r4, r1, 0x28
/* 806C9788  38 A0 00 00 */	li r5, 0
/* 806C978C  38 C0 FF FF */	li r6, -1
/* 806C9790  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806C9794  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806C9798  7D 89 03 A6 */	mtctr r12
/* 806C979C  4E 80 04 21 */	bctrl 
/* 806C97A0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806C97A4  38 63 00 0C */	addi r3, r3, 0xc
/* 806C97A8  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 806C97AC  4B C5 EC 81 */	bl checkPass__12J3DFrameCtrlFf
/* 806C97B0  2C 03 00 00 */	cmpwi r3, 0
/* 806C97B4  40 82 00 34 */	bne lbl_806C97E8
/* 806C97B8  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806C97BC  38 63 00 0C */	addi r3, r3, 0xc
/* 806C97C0  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 806C97C4  4B C5 EC 69 */	bl checkPass__12J3DFrameCtrlFf
/* 806C97C8  2C 03 00 00 */	cmpwi r3, 0
/* 806C97CC  40 82 00 1C */	bne lbl_806C97E8
/* 806C97D0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806C97D4  38 63 00 0C */	addi r3, r3, 0xc
/* 806C97D8  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806C97DC  4B C5 EC 51 */	bl checkPass__12J3DFrameCtrlFf
/* 806C97E0  2C 03 00 00 */	cmpwi r3, 0
/* 806C97E4  41 82 00 30 */	beq lbl_806C9814
lbl_806C97E8:
/* 806C97E8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007046A@ha */
/* 806C97EC  38 03 04 6A */	addi r0, r3, 0x046A /* 0x0007046A@l */
/* 806C97F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806C97F4  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806C97F8  38 81 00 24 */	addi r4, r1, 0x24
/* 806C97FC  38 A0 00 00 */	li r5, 0
/* 806C9800  38 C0 FF FF */	li r6, -1
/* 806C9804  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806C9808  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806C980C  7D 89 03 A6 */	mtctr r12
/* 806C9810  4E 80 04 21 */	bctrl 
lbl_806C9814:
/* 806C9814  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806C9818  38 80 00 01 */	li r4, 1
/* 806C981C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C9820  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C9824  40 82 00 18 */	bne lbl_806C983C
/* 806C9828  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C982C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C9830  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C9834  41 82 00 08 */	beq lbl_806C983C
/* 806C9838  38 80 00 00 */	li r4, 0
lbl_806C983C:
/* 806C983C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C9840  41 82 00 24 */	beq lbl_806C9864
/* 806C9844  7F 83 E3 78 */	mr r3, r28
/* 806C9848  38 80 00 07 */	li r4, 7
/* 806C984C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806C9850  38 A0 00 02 */	li r5, 2
/* 806C9854  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9858  4B FF E2 61 */	bl bckSet__8daE_GE_cFifUcf
/* 806C985C  38 00 00 00 */	li r0, 0
/* 806C9860  90 1C 0B 7C */	stw r0, 0xb7c(r28)
lbl_806C9864:
/* 806C9864  7F 83 E3 78 */	mr r3, r28
/* 806C9868  7F C4 F3 78 */	mr r4, r30
/* 806C986C  7F A5 EB 78 */	mr r5, r29
/* 806C9870  4B FF F8 E1 */	bl checkAttackPossible__8daE_GE_cFsb
/* 806C9874  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C9878  41 82 00 90 */	beq lbl_806C9908
/* 806C987C  7F 83 E3 78 */	mr r3, r28
/* 806C9880  38 80 00 04 */	li r4, 4
/* 806C9884  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 806C9888  38 A0 00 00 */	li r5, 0
/* 806C988C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9890  4B FF E2 29 */	bl bckSet__8daE_GE_cFifUcf
/* 806C9894  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070468@ha */
/* 806C9898  38 03 04 68 */	addi r0, r3, 0x0468 /* 0x00070468@l */
/* 806C989C  90 01 00 20 */	stw r0, 0x20(r1)
/* 806C98A0  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806C98A4  38 81 00 20 */	addi r4, r1, 0x20
/* 806C98A8  38 A0 FF FF */	li r5, -1
/* 806C98AC  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806C98B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C98B4  7D 89 03 A6 */	mtctr r12
/* 806C98B8  4E 80 04 21 */	bctrl 
/* 806C98BC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 806C98C0  D0 1C 0B 4C */	stfs f0, 0xb4c(r28)
/* 806C98C4  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 806C98C8  D0 1C 0B 50 */	stfs f0, 0xb50(r28)
/* 806C98CC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 806C98D0  D0 1C 0B 54 */	stfs f0, 0xb54(r28)
/* 806C98D4  A8 7C 0B 8C */	lha r3, 0xb8c(r28)
/* 806C98D8  3C 63 00 01 */	addis r3, r3, 1
/* 806C98DC  38 03 80 00 */	addi r0, r3, -32768
/* 806C98E0  B0 1C 0B 8C */	sth r0, 0xb8c(r28)
/* 806C98E4  38 00 00 02 */	li r0, 2
/* 806C98E8  90 1C 0B 78 */	stw r0, 0xb78(r28)
/* 806C98EC  38 00 00 00 */	li r0, 0
/* 806C98F0  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 806C98F4  38 00 00 C8 */	li r0, 0xc8
/* 806C98F8  B0 1C 0B 8E */	sth r0, 0xb8e(r28)
/* 806C98FC  38 00 00 0E */	li r0, 0xe
/* 806C9900  B0 1C 0B 98 */	sth r0, 0xb98(r28)
/* 806C9904  48 00 05 E8 */	b lbl_806C9EEC
lbl_806C9908:
/* 806C9908  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806CD368@ha */
/* 806C990C  38 63 D3 68 */	addi r3, r3, l_HIO@l /* 0x806CD368@l */
/* 806C9910  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806C9914  C0 1C 0B 5C */	lfs f0, 0xb5c(r28)
/* 806C9918  EC 21 00 2A */	fadds f1, f1, f0
/* 806C991C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9920  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 806C9924  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 806C9928  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 806C992C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806C9930  7F 83 E3 78 */	mr r3, r28
/* 806C9934  38 81 00 A4 */	addi r4, r1, 0xa4
/* 806C9938  38 A1 00 98 */	addi r5, r1, 0x98
/* 806C993C  4B FF EB 65 */	bl checkCircleSpeedAdd__8daE_GE_cFP4cXyzP4cXyz
/* 806C9940  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C9944  41 82 00 14 */	beq lbl_806C9958
/* 806C9948  A8 7C 0B 8C */	lha r3, 0xb8c(r28)
/* 806C994C  A8 1C 0B 8A */	lha r0, 0xb8a(r28)
/* 806C9950  7C 03 02 14 */	add r0, r3, r0
/* 806C9954  B0 1C 0B 8C */	sth r0, 0xb8c(r28)
lbl_806C9958:
/* 806C9958  38 61 00 5C */	addi r3, r1, 0x5c
/* 806C995C  7F 84 E3 78 */	mr r4, r28
/* 806C9960  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 806C9964  38 C1 00 98 */	addi r6, r1, 0x98
/* 806C9968  A8 FC 0B 8C */	lha r7, 0xb8c(r28)
/* 806C996C  3D 00 80 6D */	lis r8, l_HIO@ha /* 0x806CD368@ha */
/* 806C9970  39 08 D3 68 */	addi r8, r8, l_HIO@l /* 0x806CD368@l */
/* 806C9974  C0 28 00 18 */	lfs f1, 0x18(r8)
/* 806C9978  39 00 00 06 */	li r8, 6
/* 806C997C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9980  4B FF EF 49 */	bl calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf
/* 806C9984  48 00 05 48 */	b lbl_806C9ECC
lbl_806C9988:
/* 806C9988  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 806C998C  2C 00 00 00 */	cmpwi r0, 0
/* 806C9990  40 82 00 94 */	bne lbl_806C9A24
/* 806C9994  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806C9998  38 63 00 0C */	addi r3, r3, 0xc
/* 806C999C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806C99A0  4B C5 EA 8D */	bl checkPass__12J3DFrameCtrlFf
/* 806C99A4  2C 03 00 00 */	cmpwi r3, 0
/* 806C99A8  41 82 00 2C */	beq lbl_806C99D4
/* 806C99AC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070467@ha */
/* 806C99B0  38 03 04 67 */	addi r0, r3, 0x0467 /* 0x00070467@l */
/* 806C99B4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806C99B8  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 806C99BC  38 81 00 1C */	addi r4, r1, 0x1c
/* 806C99C0  38 A0 FF FF */	li r5, -1
/* 806C99C4  81 9C 05 B8 */	lwz r12, 0x5b8(r28)
/* 806C99C8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806C99CC  7D 89 03 A6 */	mtctr r12
/* 806C99D0  4E 80 04 21 */	bctrl 
lbl_806C99D4:
/* 806C99D4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 806C99D8  38 80 00 01 */	li r4, 1
/* 806C99DC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806C99E0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806C99E4  40 82 00 18 */	bne lbl_806C99FC
/* 806C99E8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C99EC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806C99F0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806C99F4  41 82 00 08 */	beq lbl_806C99FC
/* 806C99F8  38 80 00 00 */	li r4, 0
lbl_806C99FC:
/* 806C99FC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806C9A00  41 82 00 24 */	beq lbl_806C9A24
/* 806C9A04  7F 83 E3 78 */	mr r3, r28
/* 806C9A08  38 80 00 0A */	li r4, 0xa
/* 806C9A0C  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806C9A10  38 A0 00 02 */	li r5, 2
/* 806C9A14  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9A18  4B FF E0 A1 */	bl bckSet__8daE_GE_cFifUcf
/* 806C9A1C  38 00 00 01 */	li r0, 1
/* 806C9A20  90 1C 0B 7C */	stw r0, 0xb7c(r28)
lbl_806C9A24:
/* 806C9A24  80 1C 08 B0 */	lwz r0, 0x8b0(r28)
/* 806C9A28  60 00 00 01 */	ori r0, r0, 1
/* 806C9A2C  90 1C 08 B0 */	stw r0, 0x8b0(r28)
/* 806C9A30  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9A34  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 806C9A38  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 806C9A3C  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806C9A40  38 61 00 50 */	addi r3, r1, 0x50
/* 806C9A44  7F 84 E3 78 */	mr r4, r28
/* 806C9A48  38 BC 0B 4C */	addi r5, r28, 0xb4c
/* 806C9A4C  38 C1 00 98 */	addi r6, r1, 0x98
/* 806C9A50  38 E0 00 00 */	li r7, 0
/* 806C9A54  3D 00 80 6D */	lis r8, l_HIO@ha /* 0x806CD368@ha */
/* 806C9A58  39 08 D3 68 */	addi r8, r8, l_HIO@l /* 0x806CD368@l */
/* 806C9A5C  C0 28 00 14 */	lfs f1, 0x14(r8)
/* 806C9A60  A9 1C 0B 98 */	lha r8, 0xb98(r28)
/* 806C9A64  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806C9A68  4B FF EE 61 */	bl calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf
/* 806C9A6C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 806C9A70  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806C9A74  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 806C9A78  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806C9A7C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 806C9A80  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806C9A84  38 61 00 8C */	addi r3, r1, 0x8c
/* 806C9A88  4B C7 D6 B1 */	bl PSVECSquareMag
/* 806C9A8C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9A90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9A94  40 81 00 58 */	ble lbl_806C9AEC
/* 806C9A98  FC 00 08 34 */	frsqrte f0, f1
/* 806C9A9C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806C9AA0  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9AA4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806C9AA8  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9AAC  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9AB0  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9AB4  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9AB8  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9ABC  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9AC0  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9AC4  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9AC8  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9ACC  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9AD0  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9AD4  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9AD8  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9ADC  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9AE0  FC 21 00 32 */	fmul f1, f1, f0
/* 806C9AE4  FC 20 08 18 */	frsp f1, f1
/* 806C9AE8  48 00 00 88 */	b lbl_806C9B70
lbl_806C9AEC:
/* 806C9AEC  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806C9AF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9AF4  40 80 00 10 */	bge lbl_806C9B04
/* 806C9AF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C9AFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806C9B00  48 00 00 70 */	b lbl_806C9B70
lbl_806C9B04:
/* 806C9B04  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806C9B08  80 81 00 10 */	lwz r4, 0x10(r1)
/* 806C9B0C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C9B10  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C9B14  7C 03 00 00 */	cmpw r3, r0
/* 806C9B18  41 82 00 14 */	beq lbl_806C9B2C
/* 806C9B1C  40 80 00 40 */	bge lbl_806C9B5C
/* 806C9B20  2C 03 00 00 */	cmpwi r3, 0
/* 806C9B24  41 82 00 20 */	beq lbl_806C9B44
/* 806C9B28  48 00 00 34 */	b lbl_806C9B5C
lbl_806C9B2C:
/* 806C9B2C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C9B30  41 82 00 0C */	beq lbl_806C9B3C
/* 806C9B34  38 00 00 01 */	li r0, 1
/* 806C9B38  48 00 00 28 */	b lbl_806C9B60
lbl_806C9B3C:
/* 806C9B3C  38 00 00 02 */	li r0, 2
/* 806C9B40  48 00 00 20 */	b lbl_806C9B60
lbl_806C9B44:
/* 806C9B44  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C9B48  41 82 00 0C */	beq lbl_806C9B54
/* 806C9B4C  38 00 00 05 */	li r0, 5
/* 806C9B50  48 00 00 10 */	b lbl_806C9B60
lbl_806C9B54:
/* 806C9B54  38 00 00 03 */	li r0, 3
/* 806C9B58  48 00 00 08 */	b lbl_806C9B60
lbl_806C9B5C:
/* 806C9B5C  38 00 00 04 */	li r0, 4
lbl_806C9B60:
/* 806C9B60  2C 00 00 01 */	cmpwi r0, 1
/* 806C9B64  40 82 00 0C */	bne lbl_806C9B70
/* 806C9B68  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C9B6C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806C9B70:
/* 806C9B70  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 806C9B74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9B78  40 81 00 90 */	ble lbl_806C9C08
/* 806C9B7C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 806C9B80  D0 1C 0B 4C */	stfs f0, 0xb4c(r28)
/* 806C9B84  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 806C9B88  D0 1C 0B 50 */	stfs f0, 0xb50(r28)
/* 806C9B8C  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 806C9B90  D0 1C 0B 54 */	stfs f0, 0xb54(r28)
/* 806C9B94  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 806C9B98  B0 1C 0B 8C */	sth r0, 0xb8c(r28)
/* 806C9B9C  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 806C9BA0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 806C9BA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9BA8  4C 41 13 82 */	cror 2, 1, 2
/* 806C9BAC  40 82 00 1C */	bne lbl_806C9BC8
/* 806C9BB0  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 806C9BB4  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806CD368@ha */
/* 806C9BB8  38 63 D3 68 */	addi r3, r3, l_HIO@l /* 0x806CD368@l */
/* 806C9BBC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 806C9BC0  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C9BC4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
lbl_806C9BC8:
/* 806C9BC8  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806CD368@ha */
/* 806C9BCC  38 63 D3 68 */	addi r3, r3, l_HIO@l /* 0x806CD368@l */
/* 806C9BD0  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 806C9BD4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 806C9BD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 806C9BDC  FC 00 00 1E */	fctiwz f0, f0
/* 806C9BE0  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 806C9BE4  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 806C9BE8  7C 00 07 34 */	extsh r0, r0
/* 806C9BEC  7C 1E 00 00 */	cmpw r30, r0
/* 806C9BF0  40 80 00 20 */	bge lbl_806C9C10
/* 806C9BF4  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 806C9BF8  40 82 00 18 */	bne lbl_806C9C10
/* 806C9BFC  38 00 00 00 */	li r0, 0
/* 806C9C00  B0 1C 0B 8E */	sth r0, 0xb8e(r28)
/* 806C9C04  48 00 00 0C */	b lbl_806C9C10
lbl_806C9C08:
/* 806C9C08  38 00 00 08 */	li r0, 8
/* 806C9C0C  B0 1C 0B 98 */	sth r0, 0xb98(r28)
lbl_806C9C10:
/* 806C9C10  38 61 00 8C */	addi r3, r1, 0x8c
/* 806C9C14  4B C7 D5 25 */	bl PSVECSquareMag
/* 806C9C18  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9C1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9C20  40 81 00 58 */	ble lbl_806C9C78
/* 806C9C24  FC 00 08 34 */	frsqrte f0, f1
/* 806C9C28  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806C9C2C  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9C30  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806C9C34  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9C38  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9C3C  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9C40  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9C44  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9C48  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9C4C  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9C50  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9C54  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9C58  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9C5C  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9C60  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9C64  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9C68  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9C6C  FC 21 00 32 */	fmul f1, f1, f0
/* 806C9C70  FC 20 08 18 */	frsp f1, f1
/* 806C9C74  48 00 00 88 */	b lbl_806C9CFC
lbl_806C9C78:
/* 806C9C78  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806C9C7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9C80  40 80 00 10 */	bge lbl_806C9C90
/* 806C9C84  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C9C88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806C9C8C  48 00 00 70 */	b lbl_806C9CFC
lbl_806C9C90:
/* 806C9C90  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806C9C94  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806C9C98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C9C9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C9CA0  7C 03 00 00 */	cmpw r3, r0
/* 806C9CA4  41 82 00 14 */	beq lbl_806C9CB8
/* 806C9CA8  40 80 00 40 */	bge lbl_806C9CE8
/* 806C9CAC  2C 03 00 00 */	cmpwi r3, 0
/* 806C9CB0  41 82 00 20 */	beq lbl_806C9CD0
/* 806C9CB4  48 00 00 34 */	b lbl_806C9CE8
lbl_806C9CB8:
/* 806C9CB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C9CBC  41 82 00 0C */	beq lbl_806C9CC8
/* 806C9CC0  38 00 00 01 */	li r0, 1
/* 806C9CC4  48 00 00 28 */	b lbl_806C9CEC
lbl_806C9CC8:
/* 806C9CC8  38 00 00 02 */	li r0, 2
/* 806C9CCC  48 00 00 20 */	b lbl_806C9CEC
lbl_806C9CD0:
/* 806C9CD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C9CD4  41 82 00 0C */	beq lbl_806C9CE0
/* 806C9CD8  38 00 00 05 */	li r0, 5
/* 806C9CDC  48 00 00 10 */	b lbl_806C9CEC
lbl_806C9CE0:
/* 806C9CE0  38 00 00 03 */	li r0, 3
/* 806C9CE4  48 00 00 08 */	b lbl_806C9CEC
lbl_806C9CE8:
/* 806C9CE8  38 00 00 04 */	li r0, 4
lbl_806C9CEC:
/* 806C9CEC  2C 00 00 01 */	cmpwi r0, 1
/* 806C9CF0  40 82 00 0C */	bne lbl_806C9CFC
/* 806C9CF4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C9CF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806C9CFC:
/* 806C9CFC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806C9D00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9D04  41 80 00 28 */	blt lbl_806C9D2C
/* 806C9D08  A8 1C 0B 8E */	lha r0, 0xb8e(r28)
/* 806C9D0C  2C 00 00 00 */	cmpwi r0, 0
/* 806C9D10  41 82 00 1C */	beq lbl_806C9D2C
/* 806C9D14  7F 83 E3 78 */	mr r3, r28
/* 806C9D18  38 80 00 01 */	li r4, 1
/* 806C9D1C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806C9D20  4B FF DF 8D */	bl checkBeforeBg__8daE_GE_cFif
/* 806C9D24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C9D28  41 82 01 A4 */	beq lbl_806C9ECC
lbl_806C9D2C:
/* 806C9D2C  7F 83 E3 78 */	mr r3, r28
/* 806C9D30  38 80 00 07 */	li r4, 7
/* 806C9D34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806C9D38  38 A0 00 02 */	li r5, 2
/* 806C9D3C  FC 40 08 90 */	fmr f2, f1
/* 806C9D40  4B FF DD 79 */	bl bckSet__8daE_GE_cFifUcf
/* 806C9D44  38 00 00 03 */	li r0, 3
/* 806C9D48  90 1C 0B 78 */	stw r0, 0xb78(r28)
/* 806C9D4C  38 00 00 00 */	li r0, 0
/* 806C9D50  B0 1C 0B 8E */	sth r0, 0xb8e(r28)
/* 806C9D54  48 00 01 78 */	b lbl_806C9ECC
lbl_806C9D58:
/* 806C9D58  80 1C 08 B0 */	lwz r0, 0x8b0(r28)
/* 806C9D5C  60 00 00 01 */	ori r0, r0, 1
/* 806C9D60  90 1C 08 B0 */	stw r0, 0x8b0(r28)
/* 806C9D64  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9D68  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 806C9D6C  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806CD368@ha */
/* 806C9D70  39 03 D3 68 */	addi r8, r3, l_HIO@l /* 0x806CD368@l */
/* 806C9D74  C0 08 00 1C */	lfs f0, 0x1c(r8)
/* 806C9D78  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 806C9D7C  C0 08 00 20 */	lfs f0, 0x20(r8)
/* 806C9D80  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 806C9D84  38 61 00 44 */	addi r3, r1, 0x44
/* 806C9D88  7F 84 E3 78 */	mr r4, r28
/* 806C9D8C  38 A1 00 A4 */	addi r5, r1, 0xa4
/* 806C9D90  38 C1 00 98 */	addi r6, r1, 0x98
/* 806C9D94  A8 FC 0B 8C */	lha r7, 0xb8c(r28)
/* 806C9D98  C0 28 00 14 */	lfs f1, 0x14(r8)
/* 806C9D9C  39 00 00 06 */	li r8, 6
/* 806C9DA0  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 806C9DA4  4B FF EB 25 */	bl calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf
/* 806C9DA8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 806C9DAC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 806C9DB0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 806C9DB4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 806C9DB8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 806C9DBC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 806C9DC0  38 61 00 8C */	addi r3, r1, 0x8c
/* 806C9DC4  4B C7 D3 75 */	bl PSVECSquareMag
/* 806C9DC8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806C9DCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9DD0  40 81 00 58 */	ble lbl_806C9E28
/* 806C9DD4  FC 00 08 34 */	frsqrte f0, f1
/* 806C9DD8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806C9DDC  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9DE0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806C9DE4  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9DE8  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9DEC  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9DF0  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9DF4  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9DF8  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9DFC  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9E00  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9E04  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9E08  FC 44 00 32 */	fmul f2, f4, f0
/* 806C9E0C  FC 00 00 32 */	fmul f0, f0, f0
/* 806C9E10  FC 01 00 32 */	fmul f0, f1, f0
/* 806C9E14  FC 03 00 28 */	fsub f0, f3, f0
/* 806C9E18  FC 02 00 32 */	fmul f0, f2, f0
/* 806C9E1C  FC 21 00 32 */	fmul f1, f1, f0
/* 806C9E20  FC 20 08 18 */	frsp f1, f1
/* 806C9E24  48 00 00 88 */	b lbl_806C9EAC
lbl_806C9E28:
/* 806C9E28  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806C9E2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9E30  40 80 00 10 */	bge lbl_806C9E40
/* 806C9E34  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C9E38  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806C9E3C  48 00 00 70 */	b lbl_806C9EAC
lbl_806C9E40:
/* 806C9E40  D0 21 00 08 */	stfs f1, 8(r1)
/* 806C9E44  80 81 00 08 */	lwz r4, 8(r1)
/* 806C9E48  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806C9E4C  3C 00 7F 80 */	lis r0, 0x7f80
/* 806C9E50  7C 03 00 00 */	cmpw r3, r0
/* 806C9E54  41 82 00 14 */	beq lbl_806C9E68
/* 806C9E58  40 80 00 40 */	bge lbl_806C9E98
/* 806C9E5C  2C 03 00 00 */	cmpwi r3, 0
/* 806C9E60  41 82 00 20 */	beq lbl_806C9E80
/* 806C9E64  48 00 00 34 */	b lbl_806C9E98
lbl_806C9E68:
/* 806C9E68  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C9E6C  41 82 00 0C */	beq lbl_806C9E78
/* 806C9E70  38 00 00 01 */	li r0, 1
/* 806C9E74  48 00 00 28 */	b lbl_806C9E9C
lbl_806C9E78:
/* 806C9E78  38 00 00 02 */	li r0, 2
/* 806C9E7C  48 00 00 20 */	b lbl_806C9E9C
lbl_806C9E80:
/* 806C9E80  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806C9E84  41 82 00 0C */	beq lbl_806C9E90
/* 806C9E88  38 00 00 05 */	li r0, 5
/* 806C9E8C  48 00 00 10 */	b lbl_806C9E9C
lbl_806C9E90:
/* 806C9E90  38 00 00 03 */	li r0, 3
/* 806C9E94  48 00 00 08 */	b lbl_806C9E9C
lbl_806C9E98:
/* 806C9E98  38 00 00 04 */	li r0, 4
lbl_806C9E9C:
/* 806C9E9C  2C 00 00 01 */	cmpwi r0, 1
/* 806C9EA0  40 82 00 0C */	bne lbl_806C9EAC
/* 806C9EA4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806C9EA8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806C9EAC:
/* 806C9EAC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806C9EB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C9EB4  41 80 00 10 */	blt lbl_806C9EC4
/* 806C9EB8  80 1C 06 C8 */	lwz r0, 0x6c8(r28)
/* 806C9EBC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806C9EC0  41 82 00 0C */	beq lbl_806C9ECC
lbl_806C9EC4:
/* 806C9EC4  38 00 00 00 */	li r0, 0
/* 806C9EC8  90 1C 0B 78 */	stw r0, 0xb78(r28)
lbl_806C9ECC:
/* 806C9ECC  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 806C9ED0  C0 5C 04 FC */	lfs f2, 0x4fc(r28)
/* 806C9ED4  4B B9 D7 A1 */	bl cM_atan2s__Fff
/* 806C9ED8  38 03 C0 00 */	addi r0, r3, -16384
/* 806C9EDC  7C 04 07 34 */	extsh r4, r0
/* 806C9EE0  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 806C9EE4  38 A0 01 80 */	li r5, 0x180
/* 806C9EE8  4B BA 6C A9 */	bl cLib_chaseAngleS__FPsss
lbl_806C9EEC:
/* 806C9EEC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806C9EF0  4B C9 83 31 */	bl _restgpr_27
/* 806C9EF4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 806C9EF8  7C 08 03 A6 */	mtlr r0
/* 806C9EFC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 806C9F00  4E 80 00 20 */	blr 
