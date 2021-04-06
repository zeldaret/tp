lbl_80085690:
/* 80085690  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80085694  7C 08 02 A6 */	mflr r0
/* 80085698  90 01 00 44 */	stw r0, 0x44(r1)
/* 8008569C  39 61 00 40 */	addi r11, r1, 0x40
/* 800856A0  48 2D CB 3D */	bl _savegpr_29
/* 800856A4  7C 7F 1B 78 */	mr r31, r3
/* 800856A8  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 800856AC  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 800856B0  90 01 00 20 */	stw r0, 0x20(r1)
/* 800856B4  38 61 00 08 */	addi r3, r1, 8
/* 800856B8  48 1E 96 41 */	bl ClearForMinMax__8cM3dGAabFv
/* 800856BC  3B DF 00 44 */	addi r30, r31, 0x44
/* 800856C0  48 00 00 3C */	b lbl_800856FC
lbl_800856C4:
/* 800856C4  80 7E 00 00 */	lwz r3, 0(r30)
/* 800856C8  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 800856CC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800856D0  7D 89 03 A6 */	mtctr r12
/* 800856D4  4E 80 04 21 */	bctrl 
/* 800856D8  7C 7D 1B 78 */	mr r29, r3
/* 800856DC  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 800856E0  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 800856E4  7D 89 03 A6 */	mtctr r12
/* 800856E8  4E 80 04 21 */	bctrl 
/* 800856EC  38 61 00 08 */	addi r3, r1, 8
/* 800856F0  7F A4 EB 78 */	mr r4, r29
/* 800856F4  48 1E 96 6D */	bl SetMinMax__8cM3dGAabFRC8cM3dGAab
/* 800856F8  3B DE 00 20 */	addi r30, r30, 0x20
lbl_800856FC:
/* 800856FC  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 80085700  54 03 28 34 */	slwi r3, r0, 5
/* 80085704  38 03 00 44 */	addi r0, r3, 0x44
/* 80085708  7C 1F 02 14 */	add r0, r31, r0
/* 8008570C  7C 1E 00 40 */	cmplw r30, r0
/* 80085710  41 80 FF B4 */	blt lbl_800856C4
/* 80085714  3B BF 01 88 */	addi r29, r31, 0x188
/* 80085718  48 00 00 3C */	b lbl_80085754
lbl_8008571C:
/* 8008571C  80 7D 00 00 */	lwz r3, 0(r29)
/* 80085720  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80085724  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80085728  7D 89 03 A6 */	mtctr r12
/* 8008572C  4E 80 04 21 */	bctrl 
/* 80085730  7C 7E 1B 78 */	mr r30, r3
/* 80085734  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 80085738  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8008573C  7D 89 03 A6 */	mtctr r12
/* 80085740  4E 80 04 21 */	bctrl 
/* 80085744  38 61 00 08 */	addi r3, r1, 8
/* 80085748  7F C4 F3 78 */	mr r4, r30
/* 8008574C  48 1E 96 15 */	bl SetMinMax__8cM3dGAabFRC8cM3dGAab
/* 80085750  3B BD 00 20 */	addi r29, r29, 0x20
lbl_80085754:
/* 80085754  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 80085758  54 03 28 34 */	slwi r3, r0, 5
/* 8008575C  38 03 01 88 */	addi r0, r3, 0x188
/* 80085760  7C 1F 02 14 */	add r0, r31, r0
/* 80085764  7C 1D 00 40 */	cmplw r29, r0
/* 80085768  41 80 FF B4 */	blt lbl_8008571C
/* 8008576C  88 1F 02 02 */	lbz r0, 0x202(r31)
/* 80085770  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80085774  41 82 00 24 */	beq lbl_80085798
/* 80085778  38 7F 02 24 */	addi r3, r31, 0x224
/* 8008577C  81 9F 02 40 */	lwz r12, 0x240(r31)
/* 80085780  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80085784  7D 89 03 A6 */	mtctr r12
/* 80085788  4E 80 04 21 */	bctrl 
/* 8008578C  38 61 00 08 */	addi r3, r1, 8
/* 80085790  38 9F 02 24 */	addi r4, r31, 0x224
/* 80085794  48 1E 95 CD */	bl SetMinMax__8cM3dGAabFRC8cM3dGAab
lbl_80085798:
/* 80085798  7F E3 FB 78 */	mr r3, r31
/* 8008579C  38 81 00 08 */	addi r4, r1, 8
/* 800857A0  48 1D DC 09 */	bl SetArea__15cCcD_DivideAreaFRC8cM3dGAab
/* 800857A4  3B BF 00 44 */	addi r29, r31, 0x44
/* 800857A8  48 00 00 30 */	b lbl_800857D8
lbl_800857AC:
/* 800857AC  80 7D 00 00 */	lwz r3, 0(r29)
/* 800857B0  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 800857B4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 800857B8  7D 89 03 A6 */	mtctr r12
/* 800857BC  4E 80 04 21 */	bctrl 
/* 800857C0  7C 65 1B 78 */	mr r5, r3
/* 800857C4  38 9D 00 0C */	addi r4, r29, 0xc
/* 800857C8  7F E3 FB 78 */	mr r3, r31
/* 800857CC  38 C0 00 00 */	li r6, 0
/* 800857D0  48 1D DD 05 */	bl CalcDivideInfo__15cCcD_DivideAreaFP15cCcD_DivideInfoRC8cM3dGAabUl
/* 800857D4  3B BD 00 20 */	addi r29, r29, 0x20
lbl_800857D8:
/* 800857D8  80 1F 00 40 */	lwz r0, 0x40(r31)
/* 800857DC  54 03 28 34 */	slwi r3, r0, 5
/* 800857E0  38 03 00 44 */	addi r0, r3, 0x44
/* 800857E4  7C 1F 02 14 */	add r0, r31, r0
/* 800857E8  7C 1D 00 40 */	cmplw r29, r0
/* 800857EC  41 80 FF C0 */	blt lbl_800857AC
/* 800857F0  3B BF 01 88 */	addi r29, r31, 0x188
/* 800857F4  48 00 00 30 */	b lbl_80085824
lbl_800857F8:
/* 800857F8  80 7D 00 00 */	lwz r3, 0(r29)
/* 800857FC  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80085800  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80085804  7D 89 03 A6 */	mtctr r12
/* 80085808  4E 80 04 21 */	bctrl 
/* 8008580C  7C 65 1B 78 */	mr r5, r3
/* 80085810  38 9D 00 0C */	addi r4, r29, 0xc
/* 80085814  7F E3 FB 78 */	mr r3, r31
/* 80085818  38 C0 00 00 */	li r6, 0
/* 8008581C  48 1D DC B9 */	bl CalcDivideInfo__15cCcD_DivideAreaFP15cCcD_DivideInfoRC8cM3dGAabUl
/* 80085820  3B BD 00 20 */	addi r29, r29, 0x20
lbl_80085824:
/* 80085824  80 1F 01 84 */	lwz r0, 0x184(r31)
/* 80085828  54 03 28 34 */	slwi r3, r0, 5
/* 8008582C  38 03 01 88 */	addi r0, r3, 0x188
/* 80085830  7C 1F 02 14 */	add r0, r31, r0
/* 80085834  7C 1D 00 40 */	cmplw r29, r0
/* 80085838  41 80 FF C0 */	blt lbl_800857F8
/* 8008583C  88 1F 02 02 */	lbz r0, 0x202(r31)
/* 80085840  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80085844  41 82 00 18 */	beq lbl_8008585C
/* 80085848  7F E3 FB 78 */	mr r3, r31
/* 8008584C  38 9F 02 64 */	addi r4, r31, 0x264
/* 80085850  38 BF 02 24 */	addi r5, r31, 0x224
/* 80085854  38 C0 00 00 */	li r6, 0
/* 80085858  48 1D DC 7D */	bl CalcDivideInfo__15cCcD_DivideAreaFP15cCcD_DivideInfoRC8cM3dGAabUl
lbl_8008585C:
/* 8008585C  C0 42 8D 60 */	lfs f2, lit_3627(r2)
/* 80085860  D0 5F 02 04 */	stfs f2, 0x204(r31)
/* 80085864  C0 22 8D 64 */	lfs f1, lit_3724(r2)
/* 80085868  D0 3F 02 08 */	stfs f1, 0x208(r31)
/* 8008586C  D0 5F 02 0C */	stfs f2, 0x20c(r31)
/* 80085870  C0 02 8D 68 */	lfs f0, lit_3780(r2)
/* 80085874  D0 1F 02 10 */	stfs f0, 0x210(r31)
/* 80085878  D0 5F 02 14 */	stfs f2, 0x214(r31)
/* 8008587C  D0 3F 02 18 */	stfs f1, 0x218(r31)
/* 80085880  D0 5F 02 1C */	stfs f2, 0x21c(r31)
/* 80085884  D0 1F 02 20 */	stfs f0, 0x220(r31)
/* 80085888  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 8008588C  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 80085890  90 01 00 20 */	stw r0, 0x20(r1)
/* 80085894  39 61 00 40 */	addi r11, r1, 0x40
/* 80085898  48 2D C9 91 */	bl _restgpr_29
/* 8008589C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800858A0  7C 08 03 A6 */	mtlr r0
/* 800858A4  38 21 00 40 */	addi r1, r1, 0x40
/* 800858A8  4E 80 00 20 */	blr 
