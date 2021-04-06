lbl_80338558:
/* 80338558  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8033855C  7C 08 02 A6 */	mflr r0
/* 80338560  90 01 00 24 */	stw r0, 0x24(r1)
/* 80338564  39 61 00 20 */	addi r11, r1, 0x20
/* 80338568  48 02 9C 6D */	bl _savegpr_27
/* 8033856C  7C 7D 1B 78 */	mr r29, r3
/* 80338570  3B E4 00 20 */	addi r31, r4, 0x20
/* 80338574  3B C0 00 00 */	li r30, 0
/* 80338578  3C 60 54 50 */	lis r3, 0x5450 /* 0x54505431@ha */
/* 8033857C  3B 63 54 31 */	addi r27, r3, 0x5431 /* 0x54505431@l */
/* 80338580  83 84 00 0C */	lwz r28, 0xc(r4)
/* 80338584  48 00 00 F8 */	b lbl_8033867C
lbl_80338588:
/* 80338588  80 9F 00 00 */	lwz r4, 0(r31)
/* 8033858C  7C 04 D8 00 */	cmpw r4, r27
/* 80338590  41 82 00 8C */	beq lbl_8033861C
/* 80338594  40 80 00 40 */	bge lbl_803385D4
/* 80338598  3C 60 43 4C */	lis r3, 0x434C /* 0x434C4631@ha */
/* 8033859C  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x434C4631@l */
/* 803385A0  7C 04 00 00 */	cmpw r4, r0
/* 803385A4  41 82 00 88 */	beq lbl_8033862C
/* 803385A8  40 80 00 18 */	bge lbl_803385C0
/* 803385AC  3C 60 41 4E */	lis r3, 0x414E /* 0x414E4631@ha */
/* 803385B0  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x414E4631@l */
/* 803385B4  7C 04 00 00 */	cmpw r4, r0
/* 803385B8  41 82 00 44 */	beq lbl_803385FC
/* 803385BC  48 00 00 A0 */	b lbl_8033865C
lbl_803385C0:
/* 803385C0  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414631@ha */
/* 803385C4  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x50414631@l */
/* 803385C8  7C 04 00 00 */	cmpw r4, r0
/* 803385CC  41 82 00 40 */	beq lbl_8033860C
/* 803385D0  48 00 00 8C */	b lbl_8033865C
lbl_803385D4:
/* 803385D4  3C 60 56 43 */	lis r3, 0x5643 /* 0x56434631@ha */
/* 803385D8  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x56434631@l */
/* 803385DC  7C 04 00 00 */	cmpw r4, r0
/* 803385E0  41 82 00 6C */	beq lbl_8033864C
/* 803385E4  40 80 00 78 */	bge lbl_8033865C
/* 803385E8  3C 60 56 41 */	lis r3, 0x5641 /* 0x56414631@ha */
/* 803385EC  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x56414631@l */
/* 803385F0  7C 04 00 00 */	cmpw r4, r0
/* 803385F4  41 82 00 48 */	beq lbl_8033863C
/* 803385F8  48 00 00 64 */	b lbl_8033865C
lbl_803385FC:
/* 803385FC  7F A3 EB 78 */	mr r3, r29
/* 80338600  7F E4 FB 78 */	mr r4, r31
/* 80338604  48 00 01 FD */	bl readAnmTransform__20J3DAnmFullLoader_v15FPC23J3DAnmTransformFullData
/* 80338608  48 00 00 68 */	b lbl_80338670
lbl_8033860C:
/* 8033860C  7F A3 EB 78 */	mr r3, r29
/* 80338610  7F E4 FB 78 */	mr r4, r31
/* 80338614  48 00 02 A9 */	bl readAnmColor__20J3DAnmFullLoader_v15FPC19J3DAnmColorFullData
/* 80338618  48 00 00 58 */	b lbl_80338670
lbl_8033861C:
/* 8033861C  7F A3 EB 78 */	mr r3, r29
/* 80338620  7F E4 FB 78 */	mr r4, r31
/* 80338624  48 00 03 8D */	bl readAnmTexPattern__20J3DAnmFullLoader_v15FPC24J3DAnmTexPatternFullData
/* 80338628  48 00 00 48 */	b lbl_80338670
lbl_8033862C:
/* 8033862C  7F A3 EB 78 */	mr r3, r29
/* 80338630  7F E4 FB 78 */	mr r4, r31
/* 80338634  48 00 04 ED */	bl readAnmCluster__20J3DAnmFullLoader_v15FPC21J3DAnmClusterFullData
/* 80338638  48 00 00 38 */	b lbl_80338670
lbl_8033863C:
/* 8033863C  7F A3 EB 78 */	mr r3, r29
/* 80338640  7F E4 FB 78 */	mr r4, r31
/* 80338644  48 00 04 39 */	bl readAnmVisibility__20J3DAnmFullLoader_v15FPC24J3DAnmVisibilityFullData
/* 80338648  48 00 00 28 */	b lbl_80338670
lbl_8033864C:
/* 8033864C  7F A3 EB 78 */	mr r3, r29
/* 80338650  7F E4 FB 78 */	mr r4, r31
/* 80338654  48 00 05 61 */	bl readAnmVtxColor__20J3DAnmFullLoader_v15FPC22J3DAnmVtxColorFullData
/* 80338658  48 00 00 18 */	b lbl_80338670
lbl_8033865C:
/* 8033865C  3C 60 80 3A */	lis r3, J3DAnmLoader__stringBase0@ha /* 0x803A2130@ha */
/* 80338660  38 63 21 30 */	addi r3, r3, J3DAnmLoader__stringBase0@l /* 0x803A2130@l */
/* 80338664  38 63 00 29 */	addi r3, r3, 0x29
/* 80338668  4C C6 31 82 */	crclr 6
/* 8033866C  4B CC E4 51 */	bl OSReport
lbl_80338670:
/* 80338670  80 1F 00 04 */	lwz r0, 4(r31)
/* 80338674  7F FF 02 14 */	add r31, r31, r0
/* 80338678  3B DE 00 01 */	addi r30, r30, 1
lbl_8033867C:
/* 8033867C  7C 1E E0 40 */	cmplw r30, r28
/* 80338680  41 80 FF 08 */	blt lbl_80338588
/* 80338684  80 7D 00 04 */	lwz r3, 4(r29)
/* 80338688  39 61 00 20 */	addi r11, r1, 0x20
/* 8033868C  48 02 9B 95 */	bl _restgpr_27
/* 80338690  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80338694  7C 08 03 A6 */	mtlr r0
/* 80338698  38 21 00 20 */	addi r1, r1, 0x20
/* 8033869C  4E 80 00 20 */	blr 
