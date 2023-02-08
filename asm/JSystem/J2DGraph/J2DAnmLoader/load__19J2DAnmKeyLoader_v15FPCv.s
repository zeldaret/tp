lbl_80309308:
/* 80309308  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030930C  7C 08 02 A6 */	mflr r0
/* 80309310  90 01 00 24 */	stw r0, 0x24(r1)
/* 80309314  39 61 00 20 */	addi r11, r1, 0x20
/* 80309318  48 05 8E BD */	bl _savegpr_27
/* 8030931C  7C 7B 1B 78 */	mr r27, r3
/* 80309320  3B A4 00 20 */	addi r29, r4, 0x20
/* 80309324  3B 80 00 00 */	li r28, 0
/* 80309328  3C 60 54 52 */	lis r3, 0x5452 /* 0x54524B31@ha */
/* 8030932C  3B C3 4B 31 */	addi r30, r3, 0x4B31 /* 0x54524B31@l */
/* 80309330  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 80309334  48 00 00 BC */	b lbl_803093F0
lbl_80309338:
/* 80309338  80 9D 00 00 */	lwz r4, 0(r29)
/* 8030933C  7C 04 F0 00 */	cmpw r4, r30
/* 80309340  41 82 00 98 */	beq lbl_803093D8
/* 80309344  40 80 00 2C */	bge lbl_80309370
/* 80309348  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414B31@ha */
/* 8030934C  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x50414B31@l */
/* 80309350  7C 04 00 00 */	cmpw r4, r0
/* 80309354  41 82 00 54 */	beq lbl_803093A8
/* 80309358  40 80 00 8C */	bge lbl_803093E4
/* 8030935C  3C 60 41 4E */	lis r3, 0x414E /* 0x414E4B31@ha */
/* 80309360  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x414E4B31@l */
/* 80309364  7C 04 00 00 */	cmpw r4, r0
/* 80309368  41 82 00 30 */	beq lbl_80309398
/* 8030936C  48 00 00 78 */	b lbl_803093E4
lbl_80309370:
/* 80309370  3C 60 56 43 */	lis r3, 0x5643 /* 0x56434B31@ha */
/* 80309374  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x56434B31@l */
/* 80309378  7C 04 00 00 */	cmpw r4, r0
/* 8030937C  41 82 00 4C */	beq lbl_803093C8
/* 80309380  40 80 00 64 */	bge lbl_803093E4
/* 80309384  3C 60 54 54 */	lis r3, 0x5454 /* 0x54544B31@ha */
/* 80309388  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x54544B31@l */
/* 8030938C  7C 04 00 00 */	cmpw r4, r0
/* 80309390  41 82 00 28 */	beq lbl_803093B8
/* 80309394  48 00 00 50 */	b lbl_803093E4
lbl_80309398:
/* 80309398  7F 63 DB 78 */	mr r3, r27
/* 8030939C  7F A4 EB 78 */	mr r4, r29
/* 803093A0  48 00 01 D1 */	bl readAnmTransform__19J2DAnmKeyLoader_v15FPC22J3DAnmTransformKeyData
/* 803093A4  48 00 00 40 */	b lbl_803093E4
lbl_803093A8:
/* 803093A8  7F 63 DB 78 */	mr r3, r27
/* 803093AC  7F A4 EB 78 */	mr r4, r29
/* 803093B0  48 00 04 99 */	bl readAnmColor__19J2DAnmKeyLoader_v15FPC18J3DAnmColorKeyData
/* 803093B4  48 00 00 30 */	b lbl_803093E4
lbl_803093B8:
/* 803093B8  7F 63 DB 78 */	mr r3, r27
/* 803093BC  7F A4 EB 78 */	mr r4, r29
/* 803093C0  48 00 02 75 */	bl readAnmTextureSRT__19J2DAnmKeyLoader_v15FPC23J3DAnmTextureSRTKeyData
/* 803093C4  48 00 00 20 */	b lbl_803093E4
lbl_803093C8:
/* 803093C8  7F 63 DB 78 */	mr r3, r27
/* 803093CC  7F A4 EB 78 */	mr r4, r29
/* 803093D0  48 00 05 8D */	bl readAnmVtxColor__19J2DAnmKeyLoader_v15FPC21J3DAnmVtxColorKeyData
/* 803093D4  48 00 00 10 */	b lbl_803093E4
lbl_803093D8:
/* 803093D8  7F 63 DB 78 */	mr r3, r27
/* 803093DC  7F A4 EB 78 */	mr r4, r29
/* 803093E0  48 00 0B FD */	bl readAnmTevReg__19J2DAnmKeyLoader_v15FPC19J3DAnmTevRegKeyData
lbl_803093E4:
/* 803093E4  80 1D 00 04 */	lwz r0, 4(r29)
/* 803093E8  7F BD 02 14 */	add r29, r29, r0
/* 803093EC  3B 9C 00 01 */	addi r28, r28, 1
lbl_803093F0:
/* 803093F0  7C 1C F8 40 */	cmplw r28, r31
/* 803093F4  41 80 FF 44 */	blt lbl_80309338
/* 803093F8  80 7B 00 04 */	lwz r3, 4(r27)
/* 803093FC  39 61 00 20 */	addi r11, r1, 0x20
/* 80309400  48 05 8E 21 */	bl _restgpr_27
/* 80309404  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80309408  7C 08 03 A6 */	mtlr r0
/* 8030940C  38 21 00 20 */	addi r1, r1, 0x20
/* 80309410  4E 80 00 20 */	blr 
