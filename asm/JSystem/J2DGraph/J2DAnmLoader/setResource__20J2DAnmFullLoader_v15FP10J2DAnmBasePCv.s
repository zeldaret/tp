lbl_80309B8C:
/* 80309B8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80309B90  7C 08 02 A6 */	mflr r0
/* 80309B94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80309B98  39 61 00 20 */	addi r11, r1, 0x20
/* 80309B9C  48 05 86 35 */	bl _savegpr_26
/* 80309BA0  7C 7B 1B 78 */	mr r27, r3
/* 80309BA4  7C 9C 23 78 */	mr r28, r4
/* 80309BA8  3B C5 00 20 */	addi r30, r5, 0x20
/* 80309BAC  3B A0 00 00 */	li r29, 0
/* 80309BB0  3C 60 54 50 */	lis r3, 0x5450 /* 0x54505431@ha */
/* 80309BB4  3B E3 54 31 */	addi r31, r3, 0x5431 /* 0x54505431@l */
/* 80309BB8  83 45 00 0C */	lwz r26, 0xc(r5)
/* 80309BBC  48 00 01 0C */	b lbl_80309CC8
lbl_80309BC0:
/* 80309BC0  80 9E 00 00 */	lwz r4, 0(r30)
/* 80309BC4  7C 04 F8 00 */	cmpw r4, r31
/* 80309BC8  41 82 00 98 */	beq lbl_80309C60
/* 80309BCC  40 80 00 2C */	bge lbl_80309BF8
/* 80309BD0  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414631@ha */
/* 80309BD4  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x50414631@l */
/* 80309BD8  7C 04 00 00 */	cmpw r4, r0
/* 80309BDC  41 82 00 64 */	beq lbl_80309C40
/* 80309BE0  40 80 00 DC */	bge lbl_80309CBC
/* 80309BE4  3C 60 41 4E */	lis r3, 0x414E /* 0x414E4631@ha */
/* 80309BE8  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x414E4631@l */
/* 80309BEC  7C 04 00 00 */	cmpw r4, r0
/* 80309BF0  41 82 00 30 */	beq lbl_80309C20
/* 80309BF4  48 00 00 C8 */	b lbl_80309CBC
lbl_80309BF8:
/* 80309BF8  3C 60 56 43 */	lis r3, 0x5643 /* 0x56434631@ha */
/* 80309BFC  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x56434631@l */
/* 80309C00  7C 04 00 00 */	cmpw r4, r0
/* 80309C04  41 82 00 9C */	beq lbl_80309CA0
/* 80309C08  40 80 00 B4 */	bge lbl_80309CBC
/* 80309C0C  3C 60 56 41 */	lis r3, 0x5641 /* 0x56414631@ha */
/* 80309C10  38 03 46 31 */	addi r0, r3, 0x4631 /* 0x56414631@l */
/* 80309C14  7C 04 00 00 */	cmpw r4, r0
/* 80309C18  41 82 00 68 */	beq lbl_80309C80
/* 80309C1C  48 00 00 A0 */	b lbl_80309CBC
lbl_80309C20:
/* 80309C20  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80309C24  2C 00 00 00 */	cmpwi r0, 0
/* 80309C28  40 82 00 94 */	bne lbl_80309CBC
/* 80309C2C  7F 63 DB 78 */	mr r3, r27
/* 80309C30  7F 84 E3 78 */	mr r4, r28
/* 80309C34  7F C5 F3 78 */	mr r5, r30
/* 80309C38  48 00 01 51 */	bl setAnmTransform__20J2DAnmFullLoader_v15FP19J2DAnmTransformFullPC23J3DAnmTransformFullData
/* 80309C3C  48 00 00 80 */	b lbl_80309CBC
lbl_80309C40:
/* 80309C40  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80309C44  2C 00 00 01 */	cmpwi r0, 1
/* 80309C48  40 82 00 74 */	bne lbl_80309CBC
/* 80309C4C  7F 63 DB 78 */	mr r3, r27
/* 80309C50  7F 84 E3 78 */	mr r4, r28
/* 80309C54  7F C5 F3 78 */	mr r5, r30
/* 80309C58  48 00 01 ED */	bl setAnmColor__20J2DAnmFullLoader_v15FP15J2DAnmColorFullPC19J3DAnmColorFullData
/* 80309C5C  48 00 00 60 */	b lbl_80309CBC
lbl_80309C60:
/* 80309C60  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80309C64  2C 00 00 02 */	cmpwi r0, 2
/* 80309C68  40 82 00 54 */	bne lbl_80309CBC
/* 80309C6C  7F 63 DB 78 */	mr r3, r27
/* 80309C70  7F 84 E3 78 */	mr r4, r28
/* 80309C74  7F C5 F3 78 */	mr r5, r30
/* 80309C78  48 00 02 C1 */	bl setAnmTexPattern__20J2DAnmFullLoader_v15FP16J2DAnmTexPatternPC24J3DAnmTexPatternFullData
/* 80309C7C  48 00 00 40 */	b lbl_80309CBC
lbl_80309C80:
/* 80309C80  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80309C84  2C 00 00 06 */	cmpwi r0, 6
/* 80309C88  40 82 00 34 */	bne lbl_80309CBC
/* 80309C8C  7F 63 DB 78 */	mr r3, r27
/* 80309C90  7F 84 E3 78 */	mr r4, r28
/* 80309C94  7F C5 F3 78 */	mr r5, r30
/* 80309C98  48 00 05 21 */	bl setAnmVisibility__20J2DAnmFullLoader_v15FP20J2DAnmVisibilityFullPC24J3DAnmVisibilityFullData
/* 80309C9C  48 00 00 20 */	b lbl_80309CBC
lbl_80309CA0:
/* 80309CA0  80 1C 00 0C */	lwz r0, 0xc(r28)
/* 80309CA4  2C 00 00 07 */	cmpwi r0, 7
/* 80309CA8  40 82 00 14 */	bne lbl_80309CBC
/* 80309CAC  7F 63 DB 78 */	mr r3, r27
/* 80309CB0  7F 84 E3 78 */	mr r4, r28
/* 80309CB4  7F C5 F3 78 */	mr r5, r30
/* 80309CB8  48 00 05 A5 */	bl setAnmVtxColor__20J2DAnmFullLoader_v15FP18J2DAnmVtxColorFullPC22J3DAnmVtxColorFullData
lbl_80309CBC:
/* 80309CBC  80 1E 00 04 */	lwz r0, 4(r30)
/* 80309CC0  7F DE 02 14 */	add r30, r30, r0
/* 80309CC4  3B BD 00 01 */	addi r29, r29, 1
lbl_80309CC8:
/* 80309CC8  7C 1D D0 40 */	cmplw r29, r26
/* 80309CCC  41 80 FE F4 */	blt lbl_80309BC0
/* 80309CD0  39 61 00 20 */	addi r11, r1, 0x20
/* 80309CD4  48 05 85 49 */	bl _restgpr_26
/* 80309CD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80309CDC  7C 08 03 A6 */	mtlr r0
/* 80309CE0  38 21 00 20 */	addi r1, r1, 0x20
/* 80309CE4  4E 80 00 20 */	blr 
