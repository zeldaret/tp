lbl_80309A80:
/* 80309A80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80309A84  7C 08 02 A6 */	mflr r0
/* 80309A88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80309A8C  39 61 00 20 */	addi r11, r1, 0x20
/* 80309A90  48 05 87 45 */	bl _savegpr_27
/* 80309A94  7C 7B 1B 78 */	mr r27, r3
/* 80309A98  3B A4 00 20 */	addi r29, r4, 0x20
/* 80309A9C  3B 80 00 00 */	li r28, 0
/* 80309AA0  3C 60 54 50 */	lis r3, 0x5450 /* 0x54505431@ha */
/* 80309AA4  3B C3 54 31 */	addi r30, r3, 0x5431 /* 0x54505431@l */
/* 80309AA8  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 80309AAC  48 00 00 BC */	b lbl_80309B68
lbl_80309AB0:
/* 80309AB0  80 9D 00 00 */	lwz r4, 0(r29)
/* 80309AB4  7C 04 F0 00 */	cmpw r4, r30
/* 80309AB8  41 82 00 78 */	beq lbl_80309B30
/* 80309ABC  40 80 00 2C */	bge lbl_80309AE8
/* 80309AC0  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414631@ha */
/* 80309AC4  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x50414631@l */
/* 80309AC8  7C 04 00 00 */	cmpw r4, r0
/* 80309ACC  41 82 00 54 */	beq lbl_80309B20
/* 80309AD0  40 80 00 8C */	bge lbl_80309B5C
/* 80309AD4  3C 60 41 4E */	lis r3, 0x414E /* 0x414E4631@ha */
/* 80309AD8  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x414E4631@l */
/* 80309ADC  7C 04 00 00 */	cmpw r4, r0
/* 80309AE0  41 82 00 30 */	beq lbl_80309B10
/* 80309AE4  48 00 00 78 */	b lbl_80309B5C
lbl_80309AE8:
/* 80309AE8  3C 60 56 43 */	lis r3, 0x5643 /* 0x56434631@ha */
/* 80309AEC  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x56434631@l */
/* 80309AF0  7C 04 00 00 */	cmpw r4, r0
/* 80309AF4  41 82 00 5C */	beq lbl_80309B50
/* 80309AF8  40 80 00 64 */	bge lbl_80309B5C
/* 80309AFC  3C 60 56 41 */	lis r3, 0x5641 /* 0x56414631@ha */
/* 80309B00  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x56414631@l */
/* 80309B04  7C 04 00 00 */	cmpw r4, r0
/* 80309B08  41 82 00 38 */	beq lbl_80309B40
/* 80309B0C  48 00 00 50 */	b lbl_80309B5C
lbl_80309B10:
/* 80309B10  7F 63 DB 78 */	mr r3, r27
/* 80309B14  7F A4 EB 78 */	mr r4, r29
/* 80309B18  48 00 02 49 */	bl readAnmTransform__20J2DAnmFullLoader_v15FPC23J3DAnmTransformFullData
/* 80309B1C  48 00 00 40 */	b lbl_80309B5C
lbl_80309B20:
/* 80309B20  7F 63 DB 78 */	mr r3, r27
/* 80309B24  7F A4 EB 78 */	mr r4, r29
/* 80309B28  48 00 02 F5 */	bl readAnmColor__20J2DAnmFullLoader_v15FPC19J3DAnmColorFullData
/* 80309B2C  48 00 00 30 */	b lbl_80309B5C
lbl_80309B30:
/* 80309B30  7F 63 DB 78 */	mr r3, r27
/* 80309B34  7F A4 EB 78 */	mr r4, r29
/* 80309B38  48 00 03 D9 */	bl readAnmTexPattern__20J2DAnmFullLoader_v15FPC24J3DAnmTexPatternFullData
/* 80309B3C  48 00 00 20 */	b lbl_80309B5C
lbl_80309B40:
/* 80309B40  7F 63 DB 78 */	mr r3, r27
/* 80309B44  7F A4 EB 78 */	mr r4, r29
/* 80309B48  48 00 06 49 */	bl readAnmVisibility__20J2DAnmFullLoader_v15FPC24J3DAnmVisibilityFullData
/* 80309B4C  48 00 00 10 */	b lbl_80309B5C
lbl_80309B50:
/* 80309B50  7F 63 DB 78 */	mr r3, r27
/* 80309B54  7F A4 EB 78 */	mr r4, r29
/* 80309B58  48 00 06 DD */	bl readAnmVtxColor__20J2DAnmFullLoader_v15FPC22J3DAnmVtxColorFullData
lbl_80309B5C:
/* 80309B5C  80 1D 00 04 */	lwz r0, 4(r29)
/* 80309B60  7F BD 02 14 */	add r29, r29, r0
/* 80309B64  3B 9C 00 01 */	addi r28, r28, 1
lbl_80309B68:
/* 80309B68  7C 1C F8 40 */	cmplw r28, r31
/* 80309B6C  41 80 FF 44 */	blt lbl_80309AB0
/* 80309B70  80 7B 00 04 */	lwz r3, 4(r27)
/* 80309B74  39 61 00 20 */	addi r11, r1, 0x20
/* 80309B78  48 05 86 A9 */	bl _restgpr_27
/* 80309B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80309B80  7C 08 03 A6 */	mtlr r0
/* 80309B84  38 21 00 20 */	addi r1, r1, 0x20
/* 80309B88  4E 80 00 20 */	blr 
