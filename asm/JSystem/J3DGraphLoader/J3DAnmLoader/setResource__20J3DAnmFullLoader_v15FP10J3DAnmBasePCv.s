lbl_803386A0:
/* 803386A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803386A4  7C 08 02 A6 */	mflr r0
/* 803386A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 803386AC  39 61 00 20 */	addi r11, r1, 0x20
/* 803386B0  48 02 9B 21 */	bl _savegpr_26
/* 803386B4  7C 7B 1B 78 */	mr r27, r3
/* 803386B8  7C 9C 23 78 */	mr r28, r4
/* 803386BC  3B C5 00 20 */	addi r30, r5, 0x20
/* 803386C0  3B A0 00 00 */	li r29, 0
/* 803386C4  3C 60 54 50 */	lis r3, 0x5450 /* 0x54505431@ha */
/* 803386C8  3B E3 54 31 */	addi r31, r3, 0x5431 /* 0x54505431@l */
/* 803386CC  83 45 00 0C */	lwz r26, 0xc(r5)
/* 803386D0  48 00 01 10 */	b lbl_803387E0
lbl_803386D4:
/* 803386D4  80 9E 00 00 */	lwz r4, 0(r30)
/* 803386D8  7C 04 F8 00 */	cmpw r4, r31
/* 803386DC  41 82 00 94 */	beq lbl_80338770
/* 803386E0  40 80 00 40 */	bge lbl_80338720
/* 803386E4  3C 60 43 4C */	lis r3, 0x434C /* 0x434C4631@ha */
/* 803386E8  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x434C4631@l */
/* 803386EC  7C 04 00 00 */	cmpw r4, r0
/* 803386F0  41 82 00 94 */	beq lbl_80338784
/* 803386F4  40 80 00 18 */	bge lbl_8033870C
/* 803386F8  3C 60 41 4E */	lis r3, 0x414E /* 0x414E4631@ha */
/* 803386FC  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x414E4631@l */
/* 80338700  7C 04 00 00 */	cmpw r4, r0
/* 80338704  41 82 00 44 */	beq lbl_80338748
/* 80338708  48 00 00 B8 */	b lbl_803387C0
lbl_8033870C:
/* 8033870C  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414631@ha */
/* 80338710  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x50414631@l */
/* 80338714  7C 04 00 00 */	cmpw r4, r0
/* 80338718  41 82 00 44 */	beq lbl_8033875C
/* 8033871C  48 00 00 A4 */	b lbl_803387C0
lbl_80338720:
/* 80338720  3C 60 56 43 */	lis r3, 0x5643 /* 0x56434631@ha */
/* 80338724  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x56434631@l */
/* 80338728  7C 04 00 00 */	cmpw r4, r0
/* 8033872C  41 82 00 80 */	beq lbl_803387AC
/* 80338730  40 80 00 90 */	bge lbl_803387C0
/* 80338734  3C 60 56 41 */	lis r3, 0x5641 /* 0x56414631@ha */
/* 80338738  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x56414631@l */
/* 8033873C  7C 04 00 00 */	cmpw r4, r0
/* 80338740  41 82 00 58 */	beq lbl_80338798
/* 80338744  48 00 00 7C */	b lbl_803387C0
lbl_80338748:
/* 80338748  7F 63 DB 78 */	mr r3, r27
/* 8033874C  7F 84 E3 78 */	mr r4, r28
/* 80338750  7F C5 F3 78 */	mr r5, r30
/* 80338754  48 00 00 D5 */	bl setAnmTransform__20J3DAnmFullLoader_v15FP19J3DAnmTransformFullPC23J3DAnmTransformFullData
/* 80338758  48 00 00 7C */	b lbl_803387D4
lbl_8033875C:
/* 8033875C  7F 63 DB 78 */	mr r3, r27
/* 80338760  7F 84 E3 78 */	mr r4, r28
/* 80338764  7F C5 F3 78 */	mr r5, r30
/* 80338768  48 00 01 7D */	bl setAnmColor__20J3DAnmFullLoader_v15FP15J3DAnmColorFullPC19J3DAnmColorFullData
/* 8033876C  48 00 00 68 */	b lbl_803387D4
lbl_80338770:
/* 80338770  7F 63 DB 78 */	mr r3, r27
/* 80338774  7F 84 E3 78 */	mr r4, r28
/* 80338778  7F C5 F3 78 */	mr r5, r30
/* 8033877C  48 00 02 5D */	bl setAnmTexPattern__20J3DAnmFullLoader_v15FP16J3DAnmTexPatternPC24J3DAnmTexPatternFullData
/* 80338780  48 00 00 54 */	b lbl_803387D4
lbl_80338784:
/* 80338784  7F 63 DB 78 */	mr r3, r27
/* 80338788  7F 84 E3 78 */	mr r4, r28
/* 8033878C  7F C5 F3 78 */	mr r5, r30
/* 80338790  48 00 03 B9 */	bl setAnmCluster__20J3DAnmFullLoader_v15FP17J3DAnmClusterFullPC21J3DAnmClusterFullData
/* 80338794  48 00 00 40 */	b lbl_803387D4
lbl_80338798:
/* 80338798  7F 63 DB 78 */	mr r3, r27
/* 8033879C  7F 84 E3 78 */	mr r4, r28
/* 803387A0  7F C5 F3 78 */	mr r5, r30
/* 803387A4  48 00 03 01 */	bl setAnmVisibility__20J3DAnmFullLoader_v15FP20J3DAnmVisibilityFullPC24J3DAnmVisibilityFullData
/* 803387A8  48 00 00 2C */	b lbl_803387D4
lbl_803387AC:
/* 803387AC  7F 63 DB 78 */	mr r3, r27
/* 803387B0  7F 84 E3 78 */	mr r4, r28
/* 803387B4  7F C5 F3 78 */	mr r5, r30
/* 803387B8  48 00 04 25 */	bl setAnmVtxColor__20J3DAnmFullLoader_v15FP18J3DAnmVtxColorFullPC22J3DAnmVtxColorFullData
/* 803387BC  48 00 00 18 */	b lbl_803387D4
lbl_803387C0:
/* 803387C0  3C 60 80 3A */	lis r3, J3DAnmLoader__stringBase0@ha
/* 803387C4  38 63 21 30 */	addi r3, r3, J3DAnmLoader__stringBase0@l
/* 803387C8  38 63 00 29 */	addi r3, r3, 0x29
/* 803387CC  4C C6 31 82 */	crclr 6
/* 803387D0  4B CC E2 ED */	bl OSReport
lbl_803387D4:
/* 803387D4  80 1E 00 04 */	lwz r0, 4(r30)
/* 803387D8  7F DE 02 14 */	add r30, r30, r0
/* 803387DC  3B BD 00 01 */	addi r29, r29, 1
lbl_803387E0:
/* 803387E0  7C 1D D0 40 */	cmplw r29, r26
/* 803387E4  41 80 FE F0 */	blt lbl_803386D4
/* 803387E8  39 61 00 20 */	addi r11, r1, 0x20
/* 803387EC  48 02 9A 31 */	bl _restgpr_26
/* 803387F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803387F4  7C 08 03 A6 */	mtlr r0
/* 803387F8  38 21 00 20 */	addi r1, r1, 0x20
/* 803387FC  4E 80 00 20 */	blr 
