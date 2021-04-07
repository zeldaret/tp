lbl_805E73A8:
/* 805E73A8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E73AC  7C 08 02 A6 */	mflr r0
/* 805E73B0  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E73B4  39 61 00 40 */	addi r11, r1, 0x40
/* 805E73B8  4B D7 AE 25 */	bl _savegpr_29
/* 805E73BC  7C 7D 1B 78 */	mr r29, r3
/* 805E73C0  3C 60 80 5F */	lis r3, lit_1109@ha /* 0x805ED6C0@ha */
/* 805E73C4  3B C3 D6 C0 */	addi r30, r3, lit_1109@l /* 0x805ED6C0@l */
/* 805E73C8  3C 60 80 5F */	lis r3, lit_3911@ha /* 0x805ED060@ha */
/* 805E73CC  3B E3 D0 60 */	addi r31, r3, lit_3911@l /* 0x805ED060@l */
/* 805E73D0  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E73D4  2C 00 00 11 */	cmpwi r0, 0x11
/* 805E73D8  41 82 00 30 */	beq lbl_805E7408
/* 805E73DC  2C 00 00 18 */	cmpwi r0, 0x18
/* 805E73E0  41 82 00 28 */	beq lbl_805E7408
/* 805E73E4  38 60 00 00 */	li r3, 0
/* 805E73E8  38 00 00 03 */	li r0, 3
/* 805E73EC  7C 09 03 A6 */	mtctr r0
lbl_805E73F0:
/* 805E73F0  38 83 08 14 */	addi r4, r3, 0x814
/* 805E73F4  7C 1D 20 2E */	lwzx r0, r29, r4
/* 805E73F8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E73FC  7C 1D 21 2E */	stwx r0, r29, r4
/* 805E7400  38 63 01 38 */	addi r3, r3, 0x138
/* 805E7404  42 00 FF EC */	bdnz lbl_805E73F0
lbl_805E7408:
/* 805E7408  88 1D 05 C7 */	lbz r0, 0x5c7(r29)
/* 805E740C  28 00 00 0A */	cmplwi r0, 0xa
/* 805E7410  41 81 09 20 */	bgt lbl_805E7D30
/* 805E7414  3C 60 80 5F */	lis r3, lit_7820@ha /* 0x805ED4D0@ha */
/* 805E7418  38 63 D4 D0 */	addi r3, r3, lit_7820@l /* 0x805ED4D0@l */
/* 805E741C  54 00 10 3A */	slwi r0, r0, 2
/* 805E7420  7C 03 00 2E */	lwzx r0, r3, r0
/* 805E7424  7C 09 03 A6 */	mtctr r0
/* 805E7428  4E 80 04 20 */	bctr 
lbl_805E742C:
/* 805E742C  7F A3 EB 78 */	mr r3, r29
/* 805E7430  4B FF EC 5D */	bl CutChk__8daB_GG_cFv
/* 805E7434  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E7438  2C 00 00 18 */	cmpwi r0, 0x18
/* 805E743C  40 82 01 F8 */	bne lbl_805E7634
/* 805E7440  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E7444  38 80 00 01 */	li r4, 1
/* 805E7448  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E744C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E7450  40 82 00 18 */	bne lbl_805E7468
/* 805E7454  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E7458  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E745C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E7460  41 82 00 08 */	beq lbl_805E7468
/* 805E7464  38 80 00 00 */	li r4, 0
lbl_805E7468:
/* 805E7468  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E746C  41 82 01 C8 */	beq lbl_805E7634
/* 805E7470  7F A3 EB 78 */	mr r3, r29
/* 805E7474  38 80 00 01 */	li r4, 1
/* 805E7478  38 A0 00 01 */	li r5, 1
/* 805E747C  38 C0 00 01 */	li r6, 1
/* 805E7480  4B FF 85 E5 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E7484  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E7488  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E748C  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 805E7490  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 805E7494  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E7498  40 80 01 90 */	bge lbl_805E7628
/* 805E749C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805E74A0  4B C8 04 B5 */	bl cM_rndF__Ff
/* 805E74A4  FC 00 08 1E */	fctiwz f0, f1
/* 805E74A8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805E74AC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 805E74B0  2C 00 00 32 */	cmpwi r0, 0x32
/* 805E74B4  41 81 00 B0 */	bgt lbl_805E7564
/* 805E74B8  2C 00 00 14 */	cmpwi r0, 0x14
/* 805E74BC  40 81 00 10 */	ble lbl_805E74CC
/* 805E74C0  38 00 00 00 */	li r0, 0
/* 805E74C4  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E74C8  48 00 00 9C */	b lbl_805E7564
lbl_805E74CC:
/* 805E74CC  7F A3 EB 78 */	mr r3, r29
/* 805E74D0  38 80 00 11 */	li r4, 0x11
/* 805E74D4  38 A0 00 00 */	li r5, 0
/* 805E74D8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E74DC  FC 40 08 90 */	fmr f2, f1
/* 805E74E0  4B FF 7A 85 */	bl SetAnm__8daB_GG_cFiiff
/* 805E74E4  38 60 00 00 */	li r3, 0
/* 805E74E8  38 E0 00 02 */	li r7, 2
/* 805E74EC  38 C0 00 01 */	li r6, 1
/* 805E74F0  38 A0 00 0A */	li r5, 0xa
/* 805E74F4  38 80 00 00 */	li r4, 0
/* 805E74F8  38 00 00 03 */	li r0, 3
/* 805E74FC  7C 09 03 A6 */	mtctr r0
lbl_805E7500:
/* 805E7500  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805E7504  28 00 00 00 */	cmplwi r0, 0
/* 805E7508  40 82 00 10 */	bne lbl_805E7518
/* 805E750C  38 03 08 28 */	addi r0, r3, 0x828
/* 805E7510  7C FD 01 AE */	stbx r7, r29, r0
/* 805E7514  48 00 00 0C */	b lbl_805E7520
lbl_805E7518:
/* 805E7518  38 03 08 28 */	addi r0, r3, 0x828
/* 805E751C  7C DD 01 AE */	stbx r6, r29, r0
lbl_805E7520:
/* 805E7520  7D 1D 1A 14 */	add r8, r29, r3
/* 805E7524  80 08 08 14 */	lwz r0, 0x814(r8)
/* 805E7528  60 00 00 01 */	ori r0, r0, 1
/* 805E752C  90 08 08 14 */	stw r0, 0x814(r8)
/* 805E7530  98 A8 08 8B */	stb r5, 0x88b(r8)
/* 805E7534  B0 9D 06 5A */	sth r4, 0x65a(r29)
/* 805E7538  38 63 01 38 */	addi r3, r3, 0x138
/* 805E753C  42 00 FF C4 */	bdnz lbl_805E7500
/* 805E7540  7F A3 EB 78 */	mr r3, r29
/* 805E7544  38 80 00 01 */	li r4, 1
/* 805E7548  38 A0 00 02 */	li r5, 2
/* 805E754C  38 C0 00 01 */	li r6, 1
/* 805E7550  4B FF 85 15 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E7554  7F A3 EB 78 */	mr r3, r29
/* 805E7558  48 00 1D 49 */	bl HitChk__8daB_GG_cFv
/* 805E755C  38 00 00 01 */	li r0, 1
/* 805E7560  98 1D 05 C7 */	stb r0, 0x5c7(r29)
lbl_805E7564:
/* 805E7564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E7568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E756C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805E7570  88 63 05 68 */	lbz r3, 0x568(r3)
/* 805E7574  28 03 00 08 */	cmplwi r3, 8
/* 805E7578  41 82 00 18 */	beq lbl_805E7590
/* 805E757C  38 03 FF EA */	addi r0, r3, -22
/* 805E7580  28 00 00 01 */	cmplwi r0, 1
/* 805E7584  40 81 00 0C */	ble lbl_805E7590
/* 805E7588  28 03 00 18 */	cmplwi r3, 0x18
/* 805E758C  40 82 00 9C */	bne lbl_805E7628
lbl_805E7590:
/* 805E7590  7F A3 EB 78 */	mr r3, r29
/* 805E7594  38 80 00 11 */	li r4, 0x11
/* 805E7598  38 A0 00 00 */	li r5, 0
/* 805E759C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E75A0  FC 40 08 90 */	fmr f2, f1
/* 805E75A4  4B FF 79 C1 */	bl SetAnm__8daB_GG_cFiiff
/* 805E75A8  38 60 00 00 */	li r3, 0
/* 805E75AC  38 E0 00 02 */	li r7, 2
/* 805E75B0  38 C0 00 01 */	li r6, 1
/* 805E75B4  38 A0 00 0A */	li r5, 0xa
/* 805E75B8  38 80 00 00 */	li r4, 0
/* 805E75BC  38 00 00 03 */	li r0, 3
/* 805E75C0  7C 09 03 A6 */	mtctr r0
lbl_805E75C4:
/* 805E75C4  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805E75C8  28 00 00 00 */	cmplwi r0, 0
/* 805E75CC  40 82 00 10 */	bne lbl_805E75DC
/* 805E75D0  38 03 08 28 */	addi r0, r3, 0x828
/* 805E75D4  7C FD 01 AE */	stbx r7, r29, r0
/* 805E75D8  48 00 00 0C */	b lbl_805E75E4
lbl_805E75DC:
/* 805E75DC  38 03 08 28 */	addi r0, r3, 0x828
/* 805E75E0  7C DD 01 AE */	stbx r6, r29, r0
lbl_805E75E4:
/* 805E75E4  7D 1D 1A 14 */	add r8, r29, r3
/* 805E75E8  80 08 08 14 */	lwz r0, 0x814(r8)
/* 805E75EC  60 00 00 01 */	ori r0, r0, 1
/* 805E75F0  90 08 08 14 */	stw r0, 0x814(r8)
/* 805E75F4  98 A8 08 8B */	stb r5, 0x88b(r8)
/* 805E75F8  B0 9D 06 5A */	sth r4, 0x65a(r29)
/* 805E75FC  38 63 01 38 */	addi r3, r3, 0x138
/* 805E7600  42 00 FF C4 */	bdnz lbl_805E75C4
/* 805E7604  7F A3 EB 78 */	mr r3, r29
/* 805E7608  38 80 00 01 */	li r4, 1
/* 805E760C  38 A0 00 02 */	li r5, 2
/* 805E7610  38 C0 00 01 */	li r6, 1
/* 805E7614  4B FF 84 51 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E7618  7F A3 EB 78 */	mr r3, r29
/* 805E761C  48 00 1C 85 */	bl HitChk__8daB_GG_cFv
/* 805E7620  38 00 00 01 */	li r0, 1
/* 805E7624  98 1D 05 C7 */	stb r0, 0x5c7(r29)
lbl_805E7628:
/* 805E7628  38 00 00 00 */	li r0, 0
/* 805E762C  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805E7630  48 00 07 00 */	b lbl_805E7D30
lbl_805E7634:
/* 805E7634  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E7638  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E763C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805E7640  8B C3 05 68 */	lbz r30, 0x568(r3)
/* 805E7644  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805E7648  4B C8 03 0D */	bl cM_rndF__Ff
/* 805E764C  FC 00 08 1E */	fctiwz f0, f1
/* 805E7650  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 805E7654  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 805E7658  88 1D 05 F0 */	lbz r0, 0x5f0(r29)
/* 805E765C  28 00 00 01 */	cmplwi r0, 1
/* 805E7660  40 81 00 C0 */	ble lbl_805E7720
/* 805E7664  7F A3 EB 78 */	mr r3, r29
/* 805E7668  38 80 00 11 */	li r4, 0x11
/* 805E766C  38 A0 00 00 */	li r5, 0
/* 805E7670  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E7674  FC 40 08 90 */	fmr f2, f1
/* 805E7678  4B FF 78 ED */	bl SetAnm__8daB_GG_cFiiff
/* 805E767C  38 60 00 00 */	li r3, 0
/* 805E7680  38 E0 00 02 */	li r7, 2
/* 805E7684  38 C0 00 01 */	li r6, 1
/* 805E7688  38 A0 00 0A */	li r5, 0xa
/* 805E768C  38 80 00 00 */	li r4, 0
/* 805E7690  38 00 00 03 */	li r0, 3
/* 805E7694  7C 09 03 A6 */	mtctr r0
lbl_805E7698:
/* 805E7698  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805E769C  28 00 00 00 */	cmplwi r0, 0
/* 805E76A0  40 82 00 10 */	bne lbl_805E76B0
/* 805E76A4  38 03 08 28 */	addi r0, r3, 0x828
/* 805E76A8  7C FD 01 AE */	stbx r7, r29, r0
/* 805E76AC  48 00 00 0C */	b lbl_805E76B8
lbl_805E76B0:
/* 805E76B0  38 03 08 28 */	addi r0, r3, 0x828
/* 805E76B4  7C DD 01 AE */	stbx r6, r29, r0
lbl_805E76B8:
/* 805E76B8  7D 1D 1A 14 */	add r8, r29, r3
/* 805E76BC  80 08 08 14 */	lwz r0, 0x814(r8)
/* 805E76C0  60 00 00 01 */	ori r0, r0, 1
/* 805E76C4  90 08 08 14 */	stw r0, 0x814(r8)
/* 805E76C8  98 A8 08 8B */	stb r5, 0x88b(r8)
/* 805E76CC  B0 9D 06 5A */	sth r4, 0x65a(r29)
/* 805E76D0  38 63 01 38 */	addi r3, r3, 0x138
/* 805E76D4  42 00 FF C4 */	bdnz lbl_805E7698
/* 805E76D8  7F A3 EB 78 */	mr r3, r29
/* 805E76DC  38 80 00 01 */	li r4, 1
/* 805E76E0  38 A0 00 02 */	li r5, 2
/* 805E76E4  38 C0 00 01 */	li r6, 1
/* 805E76E8  4B FF 83 7D */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E76EC  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E76F0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E76F4  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E76F8  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E76FC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E7700  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E7704  38 00 00 01 */	li r0, 1
/* 805E7708  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E770C  38 00 00 00 */	li r0, 0
/* 805E7710  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805E7714  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E7718  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E771C  48 00 06 14 */	b lbl_805E7D30
lbl_805E7720:
/* 805E7720  28 1E 00 00 */	cmplwi r30, 0
/* 805E7724  41 82 06 0C */	beq lbl_805E7D30
/* 805E7728  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 805E772C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 805E7730  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805E7734  3C 00 43 30 */	lis r0, 0x4330
/* 805E7738  90 01 00 18 */	stw r0, 0x18(r1)
/* 805E773C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805E7740  EC 20 08 28 */	fsubs f1, f0, f1
/* 805E7744  C0 1F 02 70 */	lfs f0, 0x270(r31)
/* 805E7748  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E774C  40 80 05 E4 */	bge lbl_805E7D30
/* 805E7750  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E7754  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 805E7758  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 805E775C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E7760  40 81 05 D0 */	ble lbl_805E7D30
/* 805E7764  7F A3 EB 78 */	mr r3, r29
/* 805E7768  38 80 00 11 */	li r4, 0x11
/* 805E776C  38 A0 00 00 */	li r5, 0
/* 805E7770  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E7774  FC 40 08 90 */	fmr f2, f1
/* 805E7778  4B FF 77 ED */	bl SetAnm__8daB_GG_cFiiff
/* 805E777C  38 60 00 00 */	li r3, 0
/* 805E7780  38 00 00 03 */	li r0, 3
/* 805E7784  7C 09 03 A6 */	mtctr r0
lbl_805E7788:
/* 805E7788  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805E778C  28 00 00 00 */	cmplwi r0, 0
/* 805E7790  40 82 00 14 */	bne lbl_805E77A4
/* 805E7794  38 80 00 02 */	li r4, 2
/* 805E7798  38 03 08 28 */	addi r0, r3, 0x828
/* 805E779C  7C 9D 01 AE */	stbx r4, r29, r0
/* 805E77A0  48 00 00 10 */	b lbl_805E77B0
lbl_805E77A4:
/* 805E77A4  38 80 00 01 */	li r4, 1
/* 805E77A8  38 03 08 28 */	addi r0, r3, 0x828
/* 805E77AC  7C 9D 01 AE */	stbx r4, r29, r0
lbl_805E77B0:
/* 805E77B0  7C 9D 1A 14 */	add r4, r29, r3
/* 805E77B4  80 04 08 14 */	lwz r0, 0x814(r4)
/* 805E77B8  60 00 00 01 */	ori r0, r0, 1
/* 805E77BC  90 04 08 14 */	stw r0, 0x814(r4)
/* 805E77C0  38 00 00 0A */	li r0, 0xa
/* 805E77C4  98 04 08 8B */	stb r0, 0x88b(r4)
/* 805E77C8  38 00 00 00 */	li r0, 0
/* 805E77CC  B0 1D 06 5A */	sth r0, 0x65a(r29)
/* 805E77D0  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805E77D4  38 63 01 38 */	addi r3, r3, 0x138
/* 805E77D8  42 00 FF B0 */	bdnz lbl_805E7788
/* 805E77DC  7F A3 EB 78 */	mr r3, r29
/* 805E77E0  38 80 00 01 */	li r4, 1
/* 805E77E4  38 A0 00 02 */	li r5, 2
/* 805E77E8  38 C0 00 01 */	li r6, 1
/* 805E77EC  4B FF 82 79 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E77F0  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E77F4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E77F8  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E77FC  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E7800  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E7804  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E7808  38 00 00 01 */	li r0, 1
/* 805E780C  98 1D 05 C7 */	stb r0, 0x5c7(r29)
/* 805E7810  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E7814  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E7818  48 00 05 18 */	b lbl_805E7D30
lbl_805E781C:
/* 805E781C  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E7820  2C 00 00 18 */	cmpwi r0, 0x18
/* 805E7824  41 82 00 40 */	beq lbl_805E7864
/* 805E7828  7F A3 EB 78 */	mr r3, r29
/* 805E782C  38 80 00 18 */	li r4, 0x18
/* 805E7830  38 A0 00 00 */	li r5, 0
/* 805E7834  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E7838  FC 40 08 90 */	fmr f2, f1
/* 805E783C  4B FF 77 29 */	bl SetAnm__8daB_GG_cFiiff
/* 805E7840  C0 1F 01 64 */	lfs f0, 0x164(r31)
/* 805E7844  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E7848  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E784C  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E7850  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E7854  3C 63 00 01 */	addis r3, r3, 1
/* 805E7858  38 03 80 00 */	addi r0, r3, -32768
/* 805E785C  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805E7860  48 00 00 5C */	b lbl_805E78BC
lbl_805E7864:
/* 805E7864  40 82 00 58 */	bne lbl_805E78BC
/* 805E7868  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E786C  38 80 00 01 */	li r4, 1
/* 805E7870  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E7874  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E7878  40 82 00 18 */	bne lbl_805E7890
/* 805E787C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E7880  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E7884  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E7888  41 82 00 08 */	beq lbl_805E7890
/* 805E788C  38 80 00 00 */	li r4, 0
lbl_805E7890:
/* 805E7890  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E7894  41 82 00 28 */	beq lbl_805E78BC
/* 805E7898  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805E789C  4B C8 00 B9 */	bl cM_rndF__Ff
/* 805E78A0  7F A3 EB 78 */	mr r3, r29
/* 805E78A4  38 80 00 01 */	li r4, 1
/* 805E78A8  38 A0 00 01 */	li r5, 1
/* 805E78AC  38 C0 00 01 */	li r6, 1
/* 805E78B0  4B FF 81 B5 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E78B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E78B8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_805E78BC:
/* 805E78BC  A8 7E 00 70 */	lha r3, 0x70(r30)
/* 805E78C0  38 03 40 00 */	addi r0, r3, 0x4000
/* 805E78C4  B0 1E 00 70 */	sth r0, 0x70(r30)
/* 805E78C8  48 00 04 68 */	b lbl_805E7D30
lbl_805E78CC:
/* 805E78CC  38 9D 07 AC */	addi r4, r29, 0x7ac
/* 805E78D0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 805E78D4  4B C8 93 31 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 805E78D8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 805E78DC  7C 60 07 34 */	extsh r0, r3
/* 805E78E0  7C 04 00 51 */	subf. r0, r4, r0
/* 805E78E4  40 81 00 48 */	ble lbl_805E792C
/* 805E78E8  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E78EC  2C 00 00 14 */	cmpwi r0, 0x14
/* 805E78F0  41 82 00 20 */	beq lbl_805E7910
/* 805E78F4  7F A3 EB 78 */	mr r3, r29
/* 805E78F8  38 80 00 14 */	li r4, 0x14
/* 805E78FC  38 A0 00 00 */	li r5, 0
/* 805E7900  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E7904  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E7908  4B FF 76 5D */	bl SetAnm__8daB_GG_cFiiff
/* 805E790C  48 00 00 60 */	b lbl_805E796C
lbl_805E7910:
/* 805E7910  7F A3 EB 78 */	mr r3, r29
/* 805E7914  38 80 00 13 */	li r4, 0x13
/* 805E7918  38 A0 00 00 */	li r5, 0
/* 805E791C  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E7920  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E7924  4B FF 76 41 */	bl SetAnm__8daB_GG_cFiiff
/* 805E7928  48 00 00 44 */	b lbl_805E796C
lbl_805E792C:
/* 805E792C  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E7930  2C 00 00 13 */	cmpwi r0, 0x13
/* 805E7934  41 82 00 20 */	beq lbl_805E7954
/* 805E7938  7F A3 EB 78 */	mr r3, r29
/* 805E793C  38 80 00 13 */	li r4, 0x13
/* 805E7940  38 A0 00 00 */	li r5, 0
/* 805E7944  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E7948  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E794C  4B FF 76 19 */	bl SetAnm__8daB_GG_cFiiff
/* 805E7950  48 00 00 1C */	b lbl_805E796C
lbl_805E7954:
/* 805E7954  7F A3 EB 78 */	mr r3, r29
/* 805E7958  38 80 00 14 */	li r4, 0x14
/* 805E795C  38 A0 00 00 */	li r5, 0
/* 805E7960  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E7964  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E7968  4B FF 75 FD */	bl SetAnm__8daB_GG_cFiiff
lbl_805E796C:
/* 805E796C  7F A3 EB 78 */	mr r3, r29
/* 805E7970  38 80 00 01 */	li r4, 1
/* 805E7974  38 A0 00 03 */	li r5, 3
/* 805E7978  38 C0 00 03 */	li r6, 3
/* 805E797C  4B FF 80 E9 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E7980  A8 9D 05 62 */	lha r4, 0x562(r29)
/* 805E7984  A8 1D 05 60 */	lha r0, 0x560(r29)
/* 805E7988  C8 3F 01 48 */	lfd f1, 0x148(r31)
/* 805E798C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805E7990  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805E7994  3C 00 43 30 */	lis r0, 0x4330
/* 805E7998  90 01 00 18 */	stw r0, 0x18(r1)
/* 805E799C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 805E79A0  EC 20 08 28 */	fsubs f1, f0, f1
/* 805E79A4  38 7E 00 4C */	addi r3, r30, 0x4c
/* 805E79A8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E79AC  EC 01 00 32 */	fmuls f0, f1, f0
/* 805E79B0  FC 00 00 1E */	fctiwz f0, f0
/* 805E79B4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 805E79B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805E79BC  7C 00 07 34 */	extsh r0, r0
/* 805E79C0  7C 04 00 00 */	cmpw r4, r0
/* 805E79C4  40 80 00 48 */	bge lbl_805E7A0C
/* 805E79C8  88 1D 05 B0 */	lbz r0, 0x5b0(r29)
/* 805E79CC  28 00 00 00 */	cmplwi r0, 0
/* 805E79D0  40 82 00 3C */	bne lbl_805E7A0C
/* 805E79D4  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805E79D8  28 00 00 00 */	cmplwi r0, 0
/* 805E79DC  40 82 00 30 */	bne lbl_805E7A0C
/* 805E79E0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805E79E4  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E79E8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805E79EC  7F A3 EB 78 */	mr r3, r29
/* 805E79F0  38 80 00 03 */	li r4, 3
/* 805E79F4  38 A0 00 01 */	li r5, 1
/* 805E79F8  38 C0 00 00 */	li r6, 0
/* 805E79FC  4B FF 80 69 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E7A00  38 00 00 00 */	li r0, 0
/* 805E7A04  98 1D 05 CB */	stb r0, 0x5cb(r29)
/* 805E7A08  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_805E7A0C:
/* 805E7A0C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805E7A10  D0 1D 05 BC */	stfs f0, 0x5bc(r29)
/* 805E7A14  C0 1F 02 E4 */	lfs f0, 0x2e4(r31)
/* 805E7A18  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 805E7A1C  A8 1E 00 70 */	lha r0, 0x70(r30)
/* 805E7A20  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 805E7A24  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805E7A28  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 805E7A2C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 805E7A30  B0 1D 05 BA */	sth r0, 0x5ba(r29)
/* 805E7A34  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 805E7A38  2C 00 00 00 */	cmpwi r0, 0
/* 805E7A3C  41 81 02 F4 */	bgt lbl_805E7D30
/* 805E7A40  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805E7A44  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805E7A48  80 63 00 00 */	lwz r3, 0(r3)
/* 805E7A4C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 805E7A50  4B CC 7E 35 */	bl subBgmStop__8Z2SeqMgrFv
/* 805E7A54  7F A3 EB 78 */	mr r3, r29
/* 805E7A58  38 80 00 01 */	li r4, 1
/* 805E7A5C  38 A0 00 04 */	li r5, 4
/* 805E7A60  38 C0 00 00 */	li r6, 0
/* 805E7A64  4B FF 80 01 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E7A68  38 00 00 00 */	li r0, 0
/* 805E7A6C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 805E7A70  88 1D 06 90 */	lbz r0, 0x690(r29)
/* 805E7A74  28 00 00 00 */	cmplwi r0, 0
/* 805E7A78  40 82 00 20 */	bne lbl_805E7A98
/* 805E7A7C  7F A3 EB 78 */	mr r3, r29
/* 805E7A80  38 80 00 15 */	li r4, 0x15
/* 805E7A84  38 A0 00 00 */	li r5, 0
/* 805E7A88  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E7A8C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E7A90  4B FF 74 D5 */	bl SetAnm__8daB_GG_cFiiff
/* 805E7A94  48 00 00 40 */	b lbl_805E7AD4
lbl_805E7A98:
/* 805E7A98  7F A3 EB 78 */	mr r3, r29
/* 805E7A9C  38 80 00 1F */	li r4, 0x1f
/* 805E7AA0  38 A0 00 00 */	li r5, 0
/* 805E7AA4  C0 3F 02 0C */	lfs f1, 0x20c(r31)
/* 805E7AA8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805E7AAC  4B FF 74 B9 */	bl SetAnm__8daB_GG_cFiiff
/* 805E7AB0  80 1D 06 F0 */	lwz r0, 0x6f0(r29)
/* 805E7AB4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E7AB8  90 1D 06 F0 */	stw r0, 0x6f0(r29)
/* 805E7ABC  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E7AC0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E7AC4  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E7AC8  80 1D 0B D4 */	lwz r0, 0xbd4(r29)
/* 805E7ACC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E7AD0  90 1D 0B D4 */	stw r0, 0xbd4(r29)
lbl_805E7AD4:
/* 805E7AD4  38 00 00 00 */	li r0, 0
/* 805E7AD8  98 1D 05 CB */	stb r0, 0x5cb(r29)
/* 805E7ADC  48 00 02 54 */	b lbl_805E7D30
lbl_805E7AE0:
/* 805E7AE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805E7AE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805E7AE8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805E7AEC  88 63 05 68 */	lbz r3, 0x568(r3)
/* 805E7AF0  28 03 00 08 */	cmplwi r3, 8
/* 805E7AF4  41 82 00 18 */	beq lbl_805E7B0C
/* 805E7AF8  38 03 FF EA */	addi r0, r3, -22
/* 805E7AFC  28 00 00 01 */	cmplwi r0, 1
/* 805E7B00  40 81 00 0C */	ble lbl_805E7B0C
/* 805E7B04  28 03 00 18 */	cmplwi r3, 0x18
/* 805E7B08  40 82 00 38 */	bne lbl_805E7B40
lbl_805E7B0C:
/* 805E7B0C  A8 1D 06 BC */	lha r0, 0x6bc(r29)
/* 805E7B10  2C 00 00 00 */	cmpwi r0, 0
/* 805E7B14  40 81 00 2C */	ble lbl_805E7B40
/* 805E7B18  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E7B1C  60 00 00 01 */	ori r0, r0, 1
/* 805E7B20  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E7B24  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E7B28  60 00 00 01 */	ori r0, r0, 1
/* 805E7B2C  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E7B30  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E7B34  60 00 00 01 */	ori r0, r0, 1
/* 805E7B38  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E7B3C  48 00 00 50 */	b lbl_805E7B8C
lbl_805E7B40:
/* 805E7B40  A8 1D 05 E0 */	lha r0, 0x5e0(r29)
/* 805E7B44  2C 00 00 04 */	cmpwi r0, 4
/* 805E7B48  40 80 00 20 */	bge lbl_805E7B68
/* 805E7B4C  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E7B50  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E7B54  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E7B58  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E7B5C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805E7B60  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E7B64  48 00 00 28 */	b lbl_805E7B8C
lbl_805E7B68:
/* 805E7B68  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E7B6C  60 00 00 01 */	ori r0, r0, 1
/* 805E7B70  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E7B74  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E7B78  60 00 00 01 */	ori r0, r0, 1
/* 805E7B7C  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E7B80  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E7B84  60 00 00 01 */	ori r0, r0, 1
/* 805E7B88  90 1D 0D 10 */	stw r0, 0xd10(r29)
lbl_805E7B8C:
/* 805E7B8C  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E7B90  38 80 00 01 */	li r4, 1
/* 805E7B94  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E7B98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E7B9C  40 82 00 18 */	bne lbl_805E7BB4
/* 805E7BA0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E7BA4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E7BA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E7BAC  41 82 00 08 */	beq lbl_805E7BB4
/* 805E7BB0  38 80 00 00 */	li r4, 0
lbl_805E7BB4:
/* 805E7BB4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E7BB8  41 82 00 50 */	beq lbl_805E7C08
/* 805E7BBC  38 00 00 00 */	li r0, 0
/* 805E7BC0  B0 1D 06 BC */	sth r0, 0x6bc(r29)
/* 805E7BC4  B0 1D 05 E0 */	sth r0, 0x5e0(r29)
/* 805E7BC8  7F A3 EB 78 */	mr r3, r29
/* 805E7BCC  38 80 00 01 */	li r4, 1
/* 805E7BD0  38 A0 00 01 */	li r5, 1
/* 805E7BD4  38 C0 00 00 */	li r6, 0
/* 805E7BD8  4B FF 7E 8D */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E7BDC  38 00 00 3C */	li r0, 0x3c
/* 805E7BE0  B0 1D 05 DA */	sth r0, 0x5da(r29)
/* 805E7BE4  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E7BE8  60 00 00 01 */	ori r0, r0, 1
/* 805E7BEC  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E7BF0  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E7BF4  60 00 00 01 */	ori r0, r0, 1
/* 805E7BF8  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E7BFC  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E7C00  60 00 00 01 */	ori r0, r0, 1
/* 805E7C04  90 1D 0D 10 */	stw r0, 0xd10(r29)
lbl_805E7C08:
/* 805E7C08  7F A3 EB 78 */	mr r3, r29
/* 805E7C0C  4B FF EE A5 */	bl FallChk__8daB_GG_cFv
/* 805E7C10  48 00 01 20 */	b lbl_805E7D30
lbl_805E7C14:
/* 805E7C14  C0 7D 05 38 */	lfs f3, 0x538(r29)
/* 805E7C18  D0 61 00 08 */	stfs f3, 8(r1)
/* 805E7C1C  C0 5D 05 3C */	lfs f2, 0x53c(r29)
/* 805E7C20  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 805E7C24  C0 3D 05 40 */	lfs f1, 0x540(r29)
/* 805E7C28  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805E7C2C  C0 1F 01 94 */	lfs f0, 0x194(r31)
/* 805E7C30  EC 02 00 2A */	fadds f0, f2, f0
/* 805E7C34  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 805E7C38  D0 7D 05 74 */	stfs f3, 0x574(r29)
/* 805E7C3C  D0 1D 05 78 */	stfs f0, 0x578(r29)
/* 805E7C40  D0 3D 05 7C */	stfs f1, 0x57c(r29)
/* 805E7C44  80 7D 0E 30 */	lwz r3, 0xe30(r29)
/* 805E7C48  38 80 00 01 */	li r4, 1
/* 805E7C4C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805E7C50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805E7C54  40 82 00 18 */	bne lbl_805E7C6C
/* 805E7C58  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805E7C5C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805E7C60  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805E7C64  41 82 00 08 */	beq lbl_805E7C6C
/* 805E7C68  38 80 00 00 */	li r4, 0
lbl_805E7C6C:
/* 805E7C6C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805E7C70  41 82 00 C0 */	beq lbl_805E7D30
/* 805E7C74  38 00 00 00 */	li r0, 0
/* 805E7C78  98 1D 05 F0 */	stb r0, 0x5f0(r29)
/* 805E7C7C  80 1D 0D 10 */	lwz r0, 0xd10(r29)
/* 805E7C80  60 00 00 01 */	ori r0, r0, 1
/* 805E7C84  90 1D 0D 10 */	stw r0, 0xd10(r29)
/* 805E7C88  80 1D 07 74 */	lwz r0, 0x774(r29)
/* 805E7C8C  60 00 00 01 */	ori r0, r0, 1
/* 805E7C90  90 1D 07 74 */	stw r0, 0x774(r29)
/* 805E7C94  80 1D 0D 94 */	lwz r0, 0xd94(r29)
/* 805E7C98  60 00 00 01 */	ori r0, r0, 1
/* 805E7C9C  90 1D 0D 94 */	stw r0, 0xd94(r29)
/* 805E7CA0  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 805E7CA4  C0 1F 01 68 */	lfs f0, 0x168(r31)
/* 805E7CA8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805E7CAC  40 80 00 1C */	bge lbl_805E7CC8
/* 805E7CB0  7F A3 EB 78 */	mr r3, r29
/* 805E7CB4  38 80 00 01 */	li r4, 1
/* 805E7CB8  38 A0 00 02 */	li r5, 2
/* 805E7CBC  38 C0 00 00 */	li r6, 0
/* 805E7CC0  4B FF 7D A5 */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E7CC4  48 00 00 6C */	b lbl_805E7D30
lbl_805E7CC8:
/* 805E7CC8  7F A3 EB 78 */	mr r3, r29
/* 805E7CCC  38 80 00 01 */	li r4, 1
/* 805E7CD0  38 A0 00 01 */	li r5, 1
/* 805E7CD4  38 C0 00 02 */	li r6, 2
/* 805E7CD8  4B FF 7D 8D */	bl SetAction__8daB_GG_cFUcUcUc
/* 805E7CDC  48 00 00 54 */	b lbl_805E7D30
lbl_805E7CE0:
/* 805E7CE0  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 805E7CE4  54 03 02 D7 */	rlwinm. r3, r0, 0, 0xb, 0xb
/* 805E7CE8  41 82 00 2C */	beq lbl_805E7D14
/* 805E7CEC  80 1D 05 D4 */	lwz r0, 0x5d4(r29)
/* 805E7CF0  2C 00 00 19 */	cmpwi r0, 0x19
/* 805E7CF4  41 82 00 20 */	beq lbl_805E7D14
/* 805E7CF8  7F A3 EB 78 */	mr r3, r29
/* 805E7CFC  38 80 00 19 */	li r4, 0x19
/* 805E7D00  38 A0 00 02 */	li r5, 2
/* 805E7D04  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805E7D08  FC 40 08 90 */	fmr f2, f1
/* 805E7D0C  4B FF 72 59 */	bl SetAnm__8daB_GG_cFiiff
/* 805E7D10  48 00 00 20 */	b lbl_805E7D30
lbl_805E7D14:
/* 805E7D14  28 03 00 00 */	cmplwi r3, 0
/* 805E7D18  40 82 00 18 */	bne lbl_805E7D30
/* 805E7D1C  7F A3 EB 78 */	mr r3, r29
/* 805E7D20  38 80 00 01 */	li r4, 1
/* 805E7D24  38 A0 00 02 */	li r5, 2
/* 805E7D28  38 C0 00 0A */	li r6, 0xa
/* 805E7D2C  4B FF 7D 39 */	bl SetAction__8daB_GG_cFUcUcUc
lbl_805E7D30:
/* 805E7D30  7F A3 EB 78 */	mr r3, r29
/* 805E7D34  4B FF ED 7D */	bl FallChk__8daB_GG_cFv
/* 805E7D38  39 61 00 40 */	addi r11, r1, 0x40
/* 805E7D3C  4B D7 A4 ED */	bl _restgpr_29
/* 805E7D40  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E7D44  7C 08 03 A6 */	mtlr r0
/* 805E7D48  38 21 00 40 */	addi r1, r1, 0x40
/* 805E7D4C  4E 80 00 20 */	blr 
