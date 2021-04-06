lbl_80338E8C:
/* 80338E8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80338E90  7C 08 02 A6 */	mflr r0
/* 80338E94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80338E98  39 61 00 20 */	addi r11, r1, 0x20
/* 80338E9C  48 02 93 35 */	bl _savegpr_26
/* 80338EA0  7C 7B 1B 78 */	mr r27, r3
/* 80338EA4  7C 9C 23 78 */	mr r28, r4
/* 80338EA8  3B C5 00 20 */	addi r30, r5, 0x20
/* 80338EAC  3B A0 00 00 */	li r29, 0
/* 80338EB0  3C 60 54 52 */	lis r3, 0x5452 /* 0x54524B31@ha */
/* 80338EB4  3B E3 4B 31 */	addi r31, r3, 0x4B31 /* 0x54524B31@l */
/* 80338EB8  83 45 00 0C */	lwz r26, 0xc(r5)
/* 80338EBC  48 00 01 10 */	b lbl_80338FCC
lbl_80338EC0:
/* 80338EC0  80 9E 00 00 */	lwz r4, 0(r30)
/* 80338EC4  7C 04 F8 00 */	cmpw r4, r31
/* 80338EC8  41 82 00 BC */	beq lbl_80338F84
/* 80338ECC  40 80 00 40 */	bge lbl_80338F0C
/* 80338ED0  3C 60 43 4C */	lis r3, 0x434C /* 0x434C4B31@ha */
/* 80338ED4  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x434C4B31@l */
/* 80338ED8  7C 04 00 00 */	cmpw r4, r0
/* 80338EDC  41 82 00 80 */	beq lbl_80338F5C
/* 80338EE0  40 80 00 18 */	bge lbl_80338EF8
/* 80338EE4  3C 60 41 4E */	lis r3, 0x414E /* 0x414E4B31@ha */
/* 80338EE8  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x414E4B31@l */
/* 80338EEC  7C 04 00 00 */	cmpw r4, r0
/* 80338EF0  41 82 00 44 */	beq lbl_80338F34
/* 80338EF4  48 00 00 B8 */	b lbl_80338FAC
lbl_80338EF8:
/* 80338EF8  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414B31@ha */
/* 80338EFC  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x50414B31@l */
/* 80338F00  7C 04 00 00 */	cmpw r4, r0
/* 80338F04  41 82 00 44 */	beq lbl_80338F48
/* 80338F08  48 00 00 A4 */	b lbl_80338FAC
lbl_80338F0C:
/* 80338F0C  3C 60 56 43 */	lis r3, 0x5643 /* 0x56434B31@ha */
/* 80338F10  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x56434B31@l */
/* 80338F14  7C 04 00 00 */	cmpw r4, r0
/* 80338F18  41 82 00 80 */	beq lbl_80338F98
/* 80338F1C  40 80 00 90 */	bge lbl_80338FAC
/* 80338F20  3C 60 54 54 */	lis r3, 0x5454 /* 0x54544B31@ha */
/* 80338F24  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x54544B31@l */
/* 80338F28  7C 04 00 00 */	cmpw r4, r0
/* 80338F2C  41 82 00 44 */	beq lbl_80338F70
/* 80338F30  48 00 00 7C */	b lbl_80338FAC
lbl_80338F34:
/* 80338F34  7F 63 DB 78 */	mr r3, r27
/* 80338F38  7F 84 E3 78 */	mr r4, r28
/* 80338F3C  7F C5 F3 78 */	mr r5, r30
/* 80338F40  48 00 00 D5 */	bl setAnmTransform__19J3DAnmKeyLoader_v15FP18J3DAnmTransformKeyPC22J3DAnmTransformKeyData
/* 80338F44  48 00 00 7C */	b lbl_80338FC0
lbl_80338F48:
/* 80338F48  7F 63 DB 78 */	mr r3, r27
/* 80338F4C  7F 84 E3 78 */	mr r4, r28
/* 80338F50  7F C5 F3 78 */	mr r5, r30
/* 80338F54  48 00 03 85 */	bl setAnmColor__19J3DAnmKeyLoader_v15FP14J3DAnmColorKeyPC18J3DAnmColorKeyData
/* 80338F58  48 00 00 68 */	b lbl_80338FC0
lbl_80338F5C:
/* 80338F5C  7F 63 DB 78 */	mr r3, r27
/* 80338F60  7F 84 E3 78 */	mr r4, r28
/* 80338F64  7F C5 F3 78 */	mr r5, r30
/* 80338F68  48 00 04 85 */	bl setAnmCluster__19J3DAnmKeyLoader_v15FP16J3DAnmClusterKeyPC20J3DAnmClusterKeyData
/* 80338F6C  48 00 00 54 */	b lbl_80338FC0
lbl_80338F70:
/* 80338F70  7F 63 DB 78 */	mr r3, r27
/* 80338F74  7F 84 E3 78 */	mr r4, r28
/* 80338F78  7F C5 F3 78 */	mr r5, r30
/* 80338F7C  48 00 01 5D */	bl setAnmTextureSRT__19J3DAnmKeyLoader_v15FP19J3DAnmTextureSRTKeyPC23J3DAnmTextureSRTKeyData
/* 80338F80  48 00 00 40 */	b lbl_80338FC0
lbl_80338F84:
/* 80338F84  7F 63 DB 78 */	mr r3, r27
/* 80338F88  7F 84 E3 78 */	mr r4, r28
/* 80338F8C  7F C5 F3 78 */	mr r5, r30
/* 80338F90  48 00 04 F1 */	bl setAnmTevReg__19J3DAnmKeyLoader_v15FP15J3DAnmTevRegKeyPC19J3DAnmTevRegKeyData
/* 80338F94  48 00 00 2C */	b lbl_80338FC0
lbl_80338F98:
/* 80338F98  7F 63 DB 78 */	mr r3, r27
/* 80338F9C  7F 84 E3 78 */	mr r4, r28
/* 80338FA0  7F C5 F3 78 */	mr r5, r30
/* 80338FA4  48 00 06 91 */	bl setAnmVtxColor__19J3DAnmKeyLoader_v15FP17J3DAnmVtxColorKeyPC21J3DAnmVtxColorKeyData
/* 80338FA8  48 00 00 18 */	b lbl_80338FC0
lbl_80338FAC:
/* 80338FAC  3C 60 80 3A */	lis r3, J3DAnmLoader__stringBase0@ha /* 0x803A2130@ha */
/* 80338FB0  38 63 21 30 */	addi r3, r3, J3DAnmLoader__stringBase0@l /* 0x803A2130@l */
/* 80338FB4  38 63 00 29 */	addi r3, r3, 0x29
/* 80338FB8  4C C6 31 82 */	crclr 6
/* 80338FBC  4B CC DB 01 */	bl OSReport
lbl_80338FC0:
/* 80338FC0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80338FC4  7F DE 02 14 */	add r30, r30, r0
/* 80338FC8  3B BD 00 01 */	addi r29, r29, 1
lbl_80338FCC:
/* 80338FCC  7C 1D D0 40 */	cmplw r29, r26
/* 80338FD0  41 80 FE F0 */	blt lbl_80338EC0
/* 80338FD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80338FD8  48 02 92 45 */	bl _restgpr_26
/* 80338FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80338FE0  7C 08 03 A6 */	mtlr r0
/* 80338FE4  38 21 00 20 */	addi r1, r1, 0x20
/* 80338FE8  4E 80 00 20 */	blr 
