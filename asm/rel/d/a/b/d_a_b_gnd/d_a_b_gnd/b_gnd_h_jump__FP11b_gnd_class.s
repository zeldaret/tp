lbl_805F74F4:
/* 805F74F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F74F8  7C 08 02 A6 */	mflr r0
/* 805F74FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F7500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F7504  93 C1 00 08 */	stw r30, 8(r1)
/* 805F7508  7C 7F 1B 78 */	mr r31, r3
/* 805F750C  3C 80 80 60 */	lis r4, lit_3815@ha
/* 805F7510  3B C4 26 64 */	addi r30, r4, lit_3815@l
/* 805F7514  A8 03 05 BC */	lha r0, 0x5bc(r3)
/* 805F7518  2C 00 00 02 */	cmpwi r0, 2
/* 805F751C  41 82 00 D0 */	beq lbl_805F75EC
/* 805F7520  40 80 00 14 */	bge lbl_805F7534
/* 805F7524  2C 00 00 00 */	cmpwi r0, 0
/* 805F7528  41 82 00 18 */	beq lbl_805F7540
/* 805F752C  40 80 00 54 */	bge lbl_805F7580
/* 805F7530  48 00 01 7C */	b lbl_805F76AC
lbl_805F7534:
/* 805F7534  2C 00 00 04 */	cmpwi r0, 4
/* 805F7538  40 80 01 74 */	bge lbl_805F76AC
/* 805F753C  48 00 00 FC */	b lbl_805F7638
lbl_805F7540:
/* 805F7540  38 00 00 01 */	li r0, 1
/* 805F7544  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 805F7548  38 80 00 47 */	li r4, 0x47
/* 805F754C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F7550  38 A0 00 00 */	li r5, 0
/* 805F7554  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F7558  4B FF D5 3D */	bl anm_init__FP11b_gnd_classifUcf
/* 805F755C  7F E3 FB 78 */	mr r3, r31
/* 805F7560  38 80 00 08 */	li r4, 8
/* 805F7564  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F7568  38 A0 00 00 */	li r5, 0
/* 805F756C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F7570  4B FF D5 D9 */	bl h_anm_init__FP11b_gnd_classifUcf
/* 805F7574  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 805F7578  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805F757C  48 00 01 30 */	b lbl_805F76AC
lbl_805F7580:
/* 805F7580  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805F7584  38 80 00 01 */	li r4, 1
/* 805F7588  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F758C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F7590  40 82 00 18 */	bne lbl_805F75A8
/* 805F7594  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F7598  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F759C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F75A0  41 82 00 08 */	beq lbl_805F75A8
/* 805F75A4  38 80 00 00 */	li r4, 0
lbl_805F75A8:
/* 805F75A8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F75AC  41 82 01 00 */	beq lbl_805F76AC
/* 805F75B0  38 00 00 02 */	li r0, 2
/* 805F75B4  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 805F75B8  7F E3 FB 78 */	mr r3, r31
/* 805F75BC  38 80 00 46 */	li r4, 0x46
/* 805F75C0  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F75C4  38 A0 00 00 */	li r5, 0
/* 805F75C8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F75CC  4B FF D4 C9 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F75D0  7F E3 FB 78 */	mr r3, r31
/* 805F75D4  38 80 00 07 */	li r4, 7
/* 805F75D8  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F75DC  38 A0 00 00 */	li r5, 0
/* 805F75E0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F75E4  4B FF D5 65 */	bl h_anm_init__FP11b_gnd_classifUcf
/* 805F75E8  48 00 00 C4 */	b lbl_805F76AC
lbl_805F75EC:
/* 805F75EC  80 1F 0D 00 */	lwz r0, 0xd00(r31)
/* 805F75F0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805F75F4  41 82 00 B8 */	beq lbl_805F76AC
/* 805F75F8  38 00 00 03 */	li r0, 3
/* 805F75FC  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 805F7600  38 80 00 45 */	li r4, 0x45
/* 805F7604  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F7608  38 A0 00 00 */	li r5, 0
/* 805F760C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F7610  4B FF D4 85 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F7614  7F E3 FB 78 */	mr r3, r31
/* 805F7618  38 80 00 06 */	li r4, 6
/* 805F761C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F7620  38 A0 00 00 */	li r5, 0
/* 805F7624  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805F7628  4B FF D5 21 */	bl h_anm_init__FP11b_gnd_classifUcf
/* 805F762C  38 00 00 01 */	li r0, 1
/* 805F7630  98 1F 26 99 */	stb r0, 0x2699(r31)
/* 805F7634  48 00 00 78 */	b lbl_805F76AC
lbl_805F7638:
/* 805F7638  80 7F 05 D0 */	lwz r3, 0x5d0(r31)
/* 805F763C  38 80 00 01 */	li r4, 1
/* 805F7640  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F7644  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F7648  40 82 00 18 */	bne lbl_805F7660
/* 805F764C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805F7650  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F7654  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F7658  41 82 00 08 */	beq lbl_805F7660
/* 805F765C  38 80 00 00 */	li r4, 0
lbl_805F7660:
/* 805F7660  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F7664  41 82 00 48 */	beq lbl_805F76AC
/* 805F7668  A8 1F 0B 00 */	lha r0, 0xb00(r31)
/* 805F766C  B0 1F 0A FE */	sth r0, 0xafe(r31)
/* 805F7670  38 00 00 00 */	li r0, 0
/* 805F7674  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 805F7678  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 805F767C  D0 5F 07 60 */	stfs f2, 0x760(r31)
/* 805F7680  7F E3 FB 78 */	mr r3, r31
/* 805F7684  38 80 00 49 */	li r4, 0x49
/* 805F7688  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F768C  38 A0 00 02 */	li r5, 2
/* 805F7690  4B FF D4 05 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F7694  7F E3 FB 78 */	mr r3, r31
/* 805F7698  38 80 00 09 */	li r4, 9
/* 805F769C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805F76A0  38 A0 00 02 */	li r5, 2
/* 805F76A4  C0 5E 00 EC */	lfs f2, 0xec(r30)
/* 805F76A8  4B FF D4 A1 */	bl h_anm_init__FP11b_gnd_classifUcf
lbl_805F76AC:
/* 805F76AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F76B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F76B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F76B8  7C 08 03 A6 */	mtlr r0
/* 805F76BC  38 21 00 10 */	addi r1, r1, 0x10
/* 805F76C0  4E 80 00 20 */	blr 
