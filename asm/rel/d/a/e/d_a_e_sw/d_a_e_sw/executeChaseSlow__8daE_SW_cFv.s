lbl_807A831C:
/* 807A831C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 807A8320  7C 08 02 A6 */	mflr r0
/* 807A8324  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 807A8328  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 807A832C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 807A8330  39 61 00 90 */	addi r11, r1, 0x90
/* 807A8334  4B BB 9E A5 */	bl _savegpr_28
/* 807A8338  7C 7D 1B 78 */	mr r29, r3
/* 807A833C  3C 60 80 7B */	lis r3, lit_3909@ha /* 0x807AFD2C@ha */
/* 807A8340  3B E3 FD 2C */	addi r31, r3, lit_3909@l /* 0x807AFD2C@l */
/* 807A8344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A8348  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A834C  83 DC 5D AC */	lwz r30, 0x5dac(r28)
/* 807A8350  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807A8354  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 807A8358  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807A835C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 807A8360  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807A8364  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807A8368  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 807A836C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807A8370  EF E1 00 2A */	fadds f31, f1, f0
/* 807A8374  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807A8378  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807A837C  40 80 00 08 */	bge lbl_807A8384
/* 807A8380  FF E0 00 90 */	fmr f31, f0
lbl_807A8384:
/* 807A8384  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807A8388  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 807A838C  40 81 00 08 */	ble lbl_807A8394
/* 807A8390  FF E0 00 90 */	fmr f31, f0
lbl_807A8394:
/* 807A8394  7F A3 EB 78 */	mr r3, r29
/* 807A8398  4B FF F5 1D */	bl setSmokeEffect__8daE_SW_cFv
/* 807A839C  7F A3 EB 78 */	mr r3, r29
/* 807A83A0  4B FF F9 31 */	bl bomb_check__8daE_SW_cFv
/* 807A83A4  2C 03 00 00 */	cmpwi r3, 0
/* 807A83A8  40 82 07 D0 */	bne lbl_807A8B78
/* 807A83AC  7F A3 EB 78 */	mr r3, r29
/* 807A83B0  38 80 00 00 */	li r4, 0
/* 807A83B4  48 00 2B BD */	bl checkSuddenAttack__8daE_SW_cFi
/* 807A83B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A83BC  40 82 07 BC */	bne lbl_807A8B78
/* 807A83C0  A8 1D 06 BC */	lha r0, 0x6bc(r29)
/* 807A83C4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A83C8  40 82 00 18 */	bne lbl_807A83E0
/* 807A83CC  7F A3 EB 78 */	mr r3, r29
/* 807A83D0  38 80 00 07 */	li r4, 7
/* 807A83D4  38 A0 00 00 */	li r5, 0
/* 807A83D8  4B FF F7 8D */	bl setActionMode__8daE_SW_cFss
/* 807A83DC  48 00 07 9C */	b lbl_807A8B78
lbl_807A83E0:
/* 807A83E0  7F A3 EB 78 */	mr r3, r29
/* 807A83E4  4B FF FE AD */	bl checkRunChase__8daE_SW_cFv
/* 807A83E8  2C 03 00 00 */	cmpwi r3, 0
/* 807A83EC  40 81 01 44 */	ble lbl_807A8530
/* 807A83F0  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 807A83F4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 807A83F8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 807A83FC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807A8400  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A8404  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 807A8408  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 807A840C  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 807A8410  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807A8414  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807A8418  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 807A841C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 807A8420  38 61 00 28 */	addi r3, r1, 0x28
/* 807A8424  38 81 00 34 */	addi r4, r1, 0x34
/* 807A8428  4B B9 EF 75 */	bl PSVECSquareDistance
/* 807A842C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A8430  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8434  40 81 00 58 */	ble lbl_807A848C
/* 807A8438  FC 00 08 34 */	frsqrte f0, f1
/* 807A843C  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807A8440  FC 44 00 32 */	fmul f2, f4, f0
/* 807A8444  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807A8448  FC 00 00 32 */	fmul f0, f0, f0
/* 807A844C  FC 01 00 32 */	fmul f0, f1, f0
/* 807A8450  FC 03 00 28 */	fsub f0, f3, f0
/* 807A8454  FC 02 00 32 */	fmul f0, f2, f0
/* 807A8458  FC 44 00 32 */	fmul f2, f4, f0
/* 807A845C  FC 00 00 32 */	fmul f0, f0, f0
/* 807A8460  FC 01 00 32 */	fmul f0, f1, f0
/* 807A8464  FC 03 00 28 */	fsub f0, f3, f0
/* 807A8468  FC 02 00 32 */	fmul f0, f2, f0
/* 807A846C  FC 44 00 32 */	fmul f2, f4, f0
/* 807A8470  FC 00 00 32 */	fmul f0, f0, f0
/* 807A8474  FC 01 00 32 */	fmul f0, f1, f0
/* 807A8478  FC 03 00 28 */	fsub f0, f3, f0
/* 807A847C  FC 02 00 32 */	fmul f0, f2, f0
/* 807A8480  FC 21 00 32 */	fmul f1, f1, f0
/* 807A8484  FC 20 08 18 */	frsp f1, f1
/* 807A8488  48 00 00 88 */	b lbl_807A8510
lbl_807A848C:
/* 807A848C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807A8490  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8494  40 80 00 10 */	bge lbl_807A84A4
/* 807A8498  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A849C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807A84A0  48 00 00 70 */	b lbl_807A8510
lbl_807A84A4:
/* 807A84A4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A84A8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807A84AC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A84B0  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A84B4  7C 03 00 00 */	cmpw r3, r0
/* 807A84B8  41 82 00 14 */	beq lbl_807A84CC
/* 807A84BC  40 80 00 40 */	bge lbl_807A84FC
/* 807A84C0  2C 03 00 00 */	cmpwi r3, 0
/* 807A84C4  41 82 00 20 */	beq lbl_807A84E4
/* 807A84C8  48 00 00 34 */	b lbl_807A84FC
lbl_807A84CC:
/* 807A84CC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A84D0  41 82 00 0C */	beq lbl_807A84DC
/* 807A84D4  38 00 00 01 */	li r0, 1
/* 807A84D8  48 00 00 28 */	b lbl_807A8500
lbl_807A84DC:
/* 807A84DC  38 00 00 02 */	li r0, 2
/* 807A84E0  48 00 00 20 */	b lbl_807A8500
lbl_807A84E4:
/* 807A84E4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A84E8  41 82 00 0C */	beq lbl_807A84F4
/* 807A84EC  38 00 00 05 */	li r0, 5
/* 807A84F0  48 00 00 10 */	b lbl_807A8500
lbl_807A84F4:
/* 807A84F4  38 00 00 03 */	li r0, 3
/* 807A84F8  48 00 00 08 */	b lbl_807A8500
lbl_807A84FC:
/* 807A84FC  38 00 00 04 */	li r0, 4
lbl_807A8500:
/* 807A8500  2C 00 00 01 */	cmpwi r0, 1
/* 807A8504  40 82 00 0C */	bne lbl_807A8510
/* 807A8508  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A850C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807A8510:
/* 807A8510  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 807A8514  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8518  40 81 00 18 */	ble lbl_807A8530
/* 807A851C  7F A3 EB 78 */	mr r3, r29
/* 807A8520  38 80 00 02 */	li r4, 2
/* 807A8524  38 A0 00 00 */	li r5, 0
/* 807A8528  4B FF F6 3D */	bl setActionMode__8daE_SW_cFss
/* 807A852C  48 00 06 4C */	b lbl_807A8B78
lbl_807A8530:
/* 807A8530  C0 5D 04 B0 */	lfs f2, 0x4b0(r29)
/* 807A8534  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 807A8538  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807A853C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807A8540  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807A8544  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 807A8548  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 807A854C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807A8550  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 807A8554  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 807A8558  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807A855C  38 61 00 10 */	addi r3, r1, 0x10
/* 807A8560  38 81 00 1C */	addi r4, r1, 0x1c
/* 807A8564  4B B9 EE 39 */	bl PSVECSquareDistance
/* 807A8568  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A856C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8570  40 81 00 58 */	ble lbl_807A85C8
/* 807A8574  FC 00 08 34 */	frsqrte f0, f1
/* 807A8578  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 807A857C  FC 44 00 32 */	fmul f2, f4, f0
/* 807A8580  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 807A8584  FC 00 00 32 */	fmul f0, f0, f0
/* 807A8588  FC 01 00 32 */	fmul f0, f1, f0
/* 807A858C  FC 03 00 28 */	fsub f0, f3, f0
/* 807A8590  FC 02 00 32 */	fmul f0, f2, f0
/* 807A8594  FC 44 00 32 */	fmul f2, f4, f0
/* 807A8598  FC 00 00 32 */	fmul f0, f0, f0
/* 807A859C  FC 01 00 32 */	fmul f0, f1, f0
/* 807A85A0  FC 03 00 28 */	fsub f0, f3, f0
/* 807A85A4  FC 02 00 32 */	fmul f0, f2, f0
/* 807A85A8  FC 44 00 32 */	fmul f2, f4, f0
/* 807A85AC  FC 00 00 32 */	fmul f0, f0, f0
/* 807A85B0  FC 01 00 32 */	fmul f0, f1, f0
/* 807A85B4  FC 03 00 28 */	fsub f0, f3, f0
/* 807A85B8  FC 02 00 32 */	fmul f0, f2, f0
/* 807A85BC  FC 21 00 32 */	fmul f1, f1, f0
/* 807A85C0  FC 20 08 18 */	frsp f1, f1
/* 807A85C4  48 00 00 88 */	b lbl_807A864C
lbl_807A85C8:
/* 807A85C8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 807A85CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A85D0  40 80 00 10 */	bge lbl_807A85E0
/* 807A85D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A85D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807A85DC  48 00 00 70 */	b lbl_807A864C
lbl_807A85E0:
/* 807A85E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 807A85E4  80 81 00 08 */	lwz r4, 8(r1)
/* 807A85E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A85EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A85F0  7C 03 00 00 */	cmpw r3, r0
/* 807A85F4  41 82 00 14 */	beq lbl_807A8608
/* 807A85F8  40 80 00 40 */	bge lbl_807A8638
/* 807A85FC  2C 03 00 00 */	cmpwi r3, 0
/* 807A8600  41 82 00 20 */	beq lbl_807A8620
/* 807A8604  48 00 00 34 */	b lbl_807A8638
lbl_807A8608:
/* 807A8608  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A860C  41 82 00 0C */	beq lbl_807A8618
/* 807A8610  38 00 00 01 */	li r0, 1
/* 807A8614  48 00 00 28 */	b lbl_807A863C
lbl_807A8618:
/* 807A8618  38 00 00 02 */	li r0, 2
/* 807A861C  48 00 00 20 */	b lbl_807A863C
lbl_807A8620:
/* 807A8620  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A8624  41 82 00 0C */	beq lbl_807A8630
/* 807A8628  38 00 00 05 */	li r0, 5
/* 807A862C  48 00 00 10 */	b lbl_807A863C
lbl_807A8630:
/* 807A8630  38 00 00 03 */	li r0, 3
/* 807A8634  48 00 00 08 */	b lbl_807A863C
lbl_807A8638:
/* 807A8638  38 00 00 04 */	li r0, 4
lbl_807A863C:
/* 807A863C  2C 00 00 01 */	cmpwi r0, 1
/* 807A8640  40 82 00 0C */	bne lbl_807A864C
/* 807A8644  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A8648  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807A864C:
/* 807A864C  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 807A8650  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8654  40 81 00 18 */	ble lbl_807A866C
/* 807A8658  7F A3 EB 78 */	mr r3, r29
/* 807A865C  38 80 00 06 */	li r4, 6
/* 807A8660  38 A0 00 00 */	li r5, 0
/* 807A8664  4B FF F5 01 */	bl setActionMode__8daE_SW_cFss
/* 807A8668  48 00 05 10 */	b lbl_807A8B78
lbl_807A866C:
/* 807A866C  A8 1D 06 80 */	lha r0, 0x680(r29)
/* 807A8670  2C 00 00 02 */	cmpwi r0, 2
/* 807A8674  41 82 02 B8 */	beq lbl_807A892C
/* 807A8678  40 80 00 14 */	bge lbl_807A868C
/* 807A867C  2C 00 00 00 */	cmpwi r0, 0
/* 807A8680  41 82 00 24 */	beq lbl_807A86A4
/* 807A8684  40 80 00 D0 */	bge lbl_807A8754
/* 807A8688  48 00 04 E8 */	b lbl_807A8B70
lbl_807A868C:
/* 807A868C  2C 00 00 06 */	cmpwi r0, 6
/* 807A8690  41 82 04 70 */	beq lbl_807A8B00
/* 807A8694  40 80 04 DC */	bge lbl_807A8B70
/* 807A8698  2C 00 00 05 */	cmpwi r0, 5
/* 807A869C  40 80 03 A0 */	bge lbl_807A8A3C
/* 807A86A0  48 00 04 D0 */	b lbl_807A8B70
lbl_807A86A4:
/* 807A86A4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807A86A8  4B AB F2 AD */	bl cM_rndF__Ff
/* 807A86AC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 807A86B0  EC 00 08 2A */	fadds f0, f0, f1
/* 807A86B4  D0 1D 06 B8 */	stfs f0, 0x6b8(r29)
/* 807A86B8  7F A3 EB 78 */	mr r3, r29
/* 807A86BC  38 80 00 0C */	li r4, 0xc
/* 807A86C0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807A86C4  38 A0 00 02 */	li r5, 2
/* 807A86C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807A86CC  4B FF ED 95 */	bl bckSet__8daE_SW_cFifUcf
/* 807A86D0  4B AB F1 9D */	bl cM_rnd__Fv
/* 807A86D4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 807A86D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A86DC  40 80 00 10 */	bge lbl_807A86EC
/* 807A86E0  38 00 FE 00 */	li r0, -512
/* 807A86E4  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 807A86E8  48 00 00 0C */	b lbl_807A86F4
lbl_807A86EC:
/* 807A86EC  38 00 02 00 */	li r0, 0x200
/* 807A86F0  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
lbl_807A86F4:
/* 807A86F4  A8 7D 06 CC */	lha r3, 0x6cc(r29)
/* 807A86F8  3C 63 00 01 */	addis r3, r3, 1
/* 807A86FC  38 03 80 00 */	addi r0, r3, -32768
/* 807A8700  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 807A8704  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807A8708  4B AB F2 85 */	bl cM_rndFX__Ff
/* 807A870C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807A8710  EC 00 08 2A */	fadds f0, f0, f1
/* 807A8714  FC 00 00 1E */	fctiwz f0, f0
/* 807A8718  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807A871C  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 807A8720  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 807A8724  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807A8728  4B AB F2 65 */	bl cM_rndFX__Ff
/* 807A872C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807A8730  EC 00 08 2A */	fadds f0, f0, f1
/* 807A8734  FC 00 00 1E */	fctiwz f0, f0
/* 807A8738  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 807A873C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807A8740  B0 1D 06 EC */	sth r0, 0x6ec(r29)
/* 807A8744  38 00 00 1E */	li r0, 0x1e
/* 807A8748  B0 1D 06 EE */	sth r0, 0x6ee(r29)
/* 807A874C  38 00 00 01 */	li r0, 1
/* 807A8750  B0 1D 06 80 */	sth r0, 0x680(r29)
lbl_807A8754:
/* 807A8754  C0 3D 06 B8 */	lfs f1, 0x6b8(r29)
/* 807A8758  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 807A875C  EC 21 00 28 */	fsubs f1, f1, f0
/* 807A8760  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A8764  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807A8768  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807A876C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807A8770  38 61 00 4C */	addi r3, r1, 0x4c
/* 807A8774  38 81 00 58 */	addi r4, r1, 0x58
/* 807A8778  A8 BD 06 A4 */	lha r5, 0x6a4(r29)
/* 807A877C  38 C1 00 40 */	addi r6, r1, 0x40
/* 807A8780  4B AC 86 41 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807A8784  38 61 00 58 */	addi r3, r1, 0x58
/* 807A8788  38 81 00 4C */	addi r4, r1, 0x4c
/* 807A878C  4B AC 84 79 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807A8790  7C 64 07 34 */	extsh r4, r3
/* 807A8794  A8 7D 06 CC */	lha r3, 0x6cc(r29)
/* 807A8798  3C 63 00 01 */	addis r3, r3, 1
/* 807A879C  38 03 80 00 */	addi r0, r3, -32768
/* 807A87A0  7C 04 00 50 */	subf r0, r4, r0
/* 807A87A4  7C 03 07 34 */	extsh r3, r0
/* 807A87A8  4B BB C9 29 */	bl abs
/* 807A87AC  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807A87B0  40 80 00 14 */	bge lbl_807A87C4
/* 807A87B4  A8 7D 06 A4 */	lha r3, 0x6a4(r29)
/* 807A87B8  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807A87BC  7C 03 02 14 */	add r0, r3, r0
/* 807A87C0  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
lbl_807A87C4:
/* 807A87C4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807A87C8  FC 20 F8 90 */	fmr f1, f31
/* 807A87CC  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 807A87D0  4B AC 7F 71 */	bl cLib_chaseF__FPfff
/* 807A87D4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807A87D8  38 81 00 4C */	addi r4, r1, 0x4c
/* 807A87DC  4B AC 84 29 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807A87E0  7C 64 1B 78 */	mr r4, r3
/* 807A87E4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807A87E8  38 A0 00 08 */	li r5, 8
/* 807A87EC  38 C0 04 00 */	li r6, 0x400
/* 807A87F0  4B AC 7E 19 */	bl cLib_addCalcAngleS2__FPssss
/* 807A87F4  7F A3 EB 78 */	mr r3, r29
/* 807A87F8  4B FF F7 05 */	bl checkBeforeWall__8daE_SW_cFv
/* 807A87FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A8800  41 82 00 30 */	beq lbl_807A8830
/* 807A8804  38 00 00 1E */	li r0, 0x1e
/* 807A8808  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 807A880C  38 00 00 02 */	li r0, 2
/* 807A8810  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A8814  A8 7D 06 CC */	lha r3, 0x6cc(r29)
/* 807A8818  3C 63 00 01 */	addis r3, r3, 1
/* 807A881C  38 03 80 00 */	addi r0, r3, -32768
/* 807A8820  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 807A8824  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807A8828  7C 00 00 D0 */	neg r0, r0
/* 807A882C  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
lbl_807A8830:
/* 807A8830  A8 1D 06 EA */	lha r0, 0x6ea(r29)
/* 807A8834  2C 00 00 00 */	cmpwi r0, 0
/* 807A8838  40 82 00 C8 */	bne lbl_807A8900
/* 807A883C  3B C0 00 00 */	li r30, 0
/* 807A8840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A8844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A8848  3B 83 56 B8 */	addi r28, r3, 0x56b8
/* 807A884C  7F 83 E3 78 */	mr r3, r28
/* 807A8850  4B 8C AF 95 */	bl LockonTruth__12dAttention_cFv
/* 807A8854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807A8858  41 82 00 1C */	beq lbl_807A8874
/* 807A885C  7F 83 E3 78 */	mr r3, r28
/* 807A8860  38 80 00 00 */	li r4, 0
/* 807A8864  4B 8C AC D9 */	bl LockonTarget__12dAttention_cFl
/* 807A8868  7C 03 E8 40 */	cmplw r3, r29
/* 807A886C  40 82 00 08 */	bne lbl_807A8874
/* 807A8870  3B C0 00 01 */	li r30, 1
lbl_807A8874:
/* 807A8874  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807A8878  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807A887C  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 807A8880  7C 00 07 74 */	extsb r0, r0
/* 807A8884  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807A8888  7C 63 02 14 */	add r3, r3, r0
/* 807A888C  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 807A8890  A8 63 02 32 */	lha r3, 0x232(r3)
/* 807A8894  A8 9D 06 CC */	lha r4, 0x6cc(r29)
/* 807A8898  4B AC 85 8D */	bl cLib_distanceAngleS__Fss
/* 807A889C  7C 60 07 34 */	extsh r0, r3
/* 807A88A0  2C 00 60 00 */	cmpwi r0, 0x6000
/* 807A88A4  41 81 00 0C */	bgt lbl_807A88B0
/* 807A88A8  7F C0 07 35 */	extsh. r0, r30
/* 807A88AC  41 82 00 34 */	beq lbl_807A88E0
lbl_807A88B0:
/* 807A88B0  3C 60 80 7B */	lis r3, struct_807B0200+0x0@ha /* 0x807B0200@ha */
/* 807A88B4  8C 03 02 00 */	lbzu r0, struct_807B0200+0x0@l(r3)  /* 0x807B0200@l */
/* 807A88B8  28 00 00 00 */	cmplwi r0, 0
/* 807A88BC  40 82 00 24 */	bne lbl_807A88E0
/* 807A88C0  38 00 00 3C */	li r0, 0x3c
/* 807A88C4  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 807A88C8  38 00 00 01 */	li r0, 1
/* 807A88CC  98 03 00 00 */	stb r0, 0(r3)
/* 807A88D0  98 1D 06 E6 */	stb r0, 0x6e6(r29)
/* 807A88D4  38 00 00 05 */	li r0, 5
/* 807A88D8  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A88DC  48 00 02 9C */	b lbl_807A8B78
lbl_807A88E0:
/* 807A88E0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807A88E4  4B AB F0 71 */	bl cM_rndF__Ff
/* 807A88E8  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 807A88EC  EC 00 08 2A */	fadds f0, f0, f1
/* 807A88F0  FC 00 00 1E */	fctiwz f0, f0
/* 807A88F4  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 807A88F8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807A88FC  B0 1D 06 EA */	sth r0, 0x6ea(r29)
lbl_807A8900:
/* 807A8900  A8 1D 06 EC */	lha r0, 0x6ec(r29)
/* 807A8904  2C 00 00 00 */	cmpwi r0, 0
/* 807A8908  40 82 02 68 */	bne lbl_807A8B70
/* 807A890C  38 00 00 1E */	li r0, 0x1e
/* 807A8910  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 807A8914  38 00 00 02 */	li r0, 2
/* 807A8918  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A891C  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807A8920  7C 00 00 D0 */	neg r0, r0
/* 807A8924  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 807A8928  48 00 02 48 */	b lbl_807A8B70
lbl_807A892C:
/* 807A892C  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 807A8930  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 807A8934  EC 21 00 2A */	fadds f1, f1, f0
/* 807A8938  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A893C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807A8940  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807A8944  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807A8948  38 61 00 4C */	addi r3, r1, 0x4c
/* 807A894C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807A8950  A8 BD 06 A4 */	lha r5, 0x6a4(r29)
/* 807A8954  38 C1 00 40 */	addi r6, r1, 0x40
/* 807A8958  4B AC 84 69 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807A895C  38 61 00 58 */	addi r3, r1, 0x58
/* 807A8960  38 81 00 4C */	addi r4, r1, 0x4c
/* 807A8964  4B AC 82 A1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807A8968  7C 64 07 34 */	extsh r4, r3
/* 807A896C  A8 7D 06 CC */	lha r3, 0x6cc(r29)
/* 807A8970  3C 63 00 01 */	addis r3, r3, 1
/* 807A8974  38 03 80 00 */	addi r0, r3, -32768
/* 807A8978  7C 04 00 50 */	subf r0, r4, r0
/* 807A897C  7C 03 07 34 */	extsh r3, r0
/* 807A8980  4B BB C7 51 */	bl abs
/* 807A8984  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807A8988  40 80 00 14 */	bge lbl_807A899C
/* 807A898C  A8 7D 06 A4 */	lha r3, 0x6a4(r29)
/* 807A8990  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807A8994  7C 03 02 14 */	add r0, r3, r0
/* 807A8998  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
lbl_807A899C:
/* 807A899C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807A89A0  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 807A89A4  EC 3F 00 28 */	fsubs f1, f31, f0
/* 807A89A8  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 807A89AC  4B AC 7D 95 */	bl cLib_chaseF__FPfff
/* 807A89B0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807A89B4  38 81 00 4C */	addi r4, r1, 0x4c
/* 807A89B8  4B AC 82 4D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807A89BC  7C 64 1B 78 */	mr r4, r3
/* 807A89C0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807A89C4  38 A0 00 08 */	li r5, 8
/* 807A89C8  38 C0 04 00 */	li r6, 0x400
/* 807A89CC  4B AC 7C 3D */	bl cLib_addCalcAngleS2__FPssss
/* 807A89D0  A8 1D 06 EA */	lha r0, 0x6ea(r29)
/* 807A89D4  2C 00 00 00 */	cmpwi r0, 0
/* 807A89D8  40 82 01 98 */	bne lbl_807A8B70
/* 807A89DC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807A89E0  4B AB EF 75 */	bl cM_rndF__Ff
/* 807A89E4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 807A89E8  EC 00 08 2A */	fadds f0, f0, f1
/* 807A89EC  D0 1D 06 B8 */	stfs f0, 0x6b8(r29)
/* 807A89F0  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807A89F4  4B AB EF 99 */	bl cM_rndFX__Ff
/* 807A89F8  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 807A89FC  EC 00 08 2A */	fadds f0, f0, f1
/* 807A8A00  FC 00 00 1E */	fctiwz f0, f0
/* 807A8A04  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 807A8A08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807A8A0C  B0 1D 06 EA */	sth r0, 0x6ea(r29)
/* 807A8A10  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 807A8A14  4B AB EF 79 */	bl cM_rndFX__Ff
/* 807A8A18  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807A8A1C  EC 00 08 2A */	fadds f0, f0, f1
/* 807A8A20  FC 00 00 1E */	fctiwz f0, f0
/* 807A8A24  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807A8A28  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 807A8A2C  B0 1D 06 EC */	sth r0, 0x6ec(r29)
/* 807A8A30  38 00 00 01 */	li r0, 1
/* 807A8A34  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A8A38  48 00 01 38 */	b lbl_807A8B70
lbl_807A8A3C:
/* 807A8A3C  7F A3 EB 78 */	mr r3, r29
/* 807A8A40  4B FF EC A5 */	bl setBeforeJumpEffect__8daE_SW_cFv
/* 807A8A44  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 807A8A48  C0 1D 06 B8 */	lfs f0, 0x6b8(r29)
/* 807A8A4C  EC 21 00 2A */	fadds f1, f1, f0
/* 807A8A50  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807A8A54  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807A8A58  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807A8A5C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807A8A60  38 61 00 4C */	addi r3, r1, 0x4c
/* 807A8A64  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807A8A68  A8 BD 06 A4 */	lha r5, 0x6a4(r29)
/* 807A8A6C  38 C1 00 40 */	addi r6, r1, 0x40
/* 807A8A70  4B AC 83 51 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 807A8A74  38 61 00 58 */	addi r3, r1, 0x58
/* 807A8A78  38 81 00 4C */	addi r4, r1, 0x4c
/* 807A8A7C  4B AC 81 89 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807A8A80  7C 64 07 34 */	extsh r4, r3
/* 807A8A84  A8 7D 06 CC */	lha r3, 0x6cc(r29)
/* 807A8A88  3C 63 00 01 */	addis r3, r3, 1
/* 807A8A8C  38 03 80 00 */	addi r0, r3, -32768
/* 807A8A90  7C 04 00 50 */	subf r0, r4, r0
/* 807A8A94  7C 03 07 34 */	extsh r3, r0
/* 807A8A98  4B BB C6 39 */	bl abs
/* 807A8A9C  2C 03 20 00 */	cmpwi r3, 0x2000
/* 807A8AA0  40 80 00 14 */	bge lbl_807A8AB4
/* 807A8AA4  A8 7D 06 A2 */	lha r3, 0x6a2(r29)
/* 807A8AA8  A8 1D 06 A4 */	lha r0, 0x6a4(r29)
/* 807A8AAC  7C 03 00 50 */	subf r0, r3, r0
/* 807A8AB0  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
lbl_807A8AB4:
/* 807A8AB4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807A8AB8  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807A8ABC  EC 20 F8 2A */	fadds f1, f0, f31
/* 807A8AC0  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 807A8AC4  4B AC 7C 7D */	bl cLib_chaseF__FPfff
/* 807A8AC8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 807A8ACC  38 81 00 4C */	addi r4, r1, 0x4c
/* 807A8AD0  4B AC 81 35 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807A8AD4  7C 64 1B 78 */	mr r4, r3
/* 807A8AD8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807A8ADC  38 A0 00 08 */	li r5, 8
/* 807A8AE0  38 C0 04 00 */	li r6, 0x400
/* 807A8AE4  4B AC 7B 25 */	bl cLib_addCalcAngleS2__FPssss
/* 807A8AE8  A8 1D 06 EA */	lha r0, 0x6ea(r29)
/* 807A8AEC  2C 00 00 00 */	cmpwi r0, 0
/* 807A8AF0  40 82 00 80 */	bne lbl_807A8B70
/* 807A8AF4  38 00 00 06 */	li r0, 6
/* 807A8AF8  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 807A8AFC  48 00 00 74 */	b lbl_807A8B70
lbl_807A8B00:
/* 807A8B00  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807A8B04  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807A8B08  EC 20 F8 2A */	fadds f1, f0, f31
/* 807A8B0C  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 807A8B10  4B AC 7C 31 */	bl cLib_chaseF__FPfff
/* 807A8B14  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807A8B18  A8 9D 06 CC */	lha r4, 0x6cc(r29)
/* 807A8B1C  38 A0 00 08 */	li r5, 8
/* 807A8B20  38 C0 04 00 */	li r6, 0x400
/* 807A8B24  4B AC 7A E5 */	bl cLib_addCalcAngleS2__FPssss
/* 807A8B28  C0 3D 06 C8 */	lfs f1, 0x6c8(r29)
/* 807A8B2C  3C 60 80 7B */	lis r3, l_HIO@ha /* 0x807B0210@ha */
/* 807A8B30  38 63 02 10 */	addi r3, r3, l_HIO@l /* 0x807B0210@l */
/* 807A8B34  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 807A8B38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A8B3C  40 80 00 34 */	bge lbl_807A8B70
/* 807A8B40  7F A3 EB 78 */	mr r3, r29
/* 807A8B44  38 80 00 03 */	li r4, 3
/* 807A8B48  38 A0 00 00 */	li r5, 0
/* 807A8B4C  4B FF F0 19 */	bl setActionMode__8daE_SW_cFss
/* 807A8B50  38 80 00 00 */	li r4, 0
/* 807A8B54  B0 9D 06 9C */	sth r4, 0x69c(r29)
/* 807A8B58  88 1D 06 E6 */	lbz r0, 0x6e6(r29)
/* 807A8B5C  28 00 00 00 */	cmplwi r0, 0
/* 807A8B60  41 82 00 10 */	beq lbl_807A8B70
/* 807A8B64  3C 60 80 7B */	lis r3, struct_807B0200+0x0@ha /* 0x807B0200@ha */
/* 807A8B68  98 83 02 00 */	stb r4, struct_807B0200+0x0@l(r3)  /* 0x807B0200@l */
/* 807A8B6C  98 9D 06 E6 */	stb r4, 0x6e6(r29)
lbl_807A8B70:
/* 807A8B70  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 807A8B74  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_807A8B78:
/* 807A8B78  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 807A8B7C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 807A8B80  39 61 00 90 */	addi r11, r1, 0x90
/* 807A8B84  4B BB 96 A1 */	bl _restgpr_28
/* 807A8B88  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 807A8B8C  7C 08 03 A6 */	mtlr r0
/* 807A8B90  38 21 00 A0 */	addi r1, r1, 0xa0
/* 807A8B94  4E 80 00 20 */	blr 
