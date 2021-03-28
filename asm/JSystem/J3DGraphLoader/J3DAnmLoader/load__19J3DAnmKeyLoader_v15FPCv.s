lbl_80338D44:
/* 80338D44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80338D48  7C 08 02 A6 */	mflr r0
/* 80338D4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80338D50  39 61 00 20 */	addi r11, r1, 0x20
/* 80338D54  48 02 94 81 */	bl _savegpr_27
/* 80338D58  7C 7D 1B 78 */	mr r29, r3
/* 80338D5C  3B E4 00 20 */	addi r31, r4, 0x20
/* 80338D60  3B C0 00 00 */	li r30, 0
/* 80338D64  3C 60 54 52 */	lis r3, 0x5452 /* 0x54524B31@ha */
/* 80338D68  3B 63 4B 31 */	addi r27, r3, 0x4B31 /* 0x54524B31@l */
/* 80338D6C  83 84 00 0C */	lwz r28, 0xc(r4)
/* 80338D70  48 00 00 F8 */	b lbl_80338E68
lbl_80338D74:
/* 80338D74  80 9F 00 00 */	lwz r4, 0(r31)
/* 80338D78  7C 04 D8 00 */	cmpw r4, r27
/* 80338D7C  41 82 00 AC */	beq lbl_80338E28
/* 80338D80  40 80 00 40 */	bge lbl_80338DC0
/* 80338D84  3C 60 43 4C */	lis r3, 0x434C /* 0x434C4B31@ha */
/* 80338D88  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x434C4B31@l */
/* 80338D8C  7C 04 00 00 */	cmpw r4, r0
/* 80338D90  41 82 00 78 */	beq lbl_80338E08
/* 80338D94  40 80 00 18 */	bge lbl_80338DAC
/* 80338D98  3C 60 41 4E */	lis r3, 0x414E /* 0x414E4B31@ha */
/* 80338D9C  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x414E4B31@l */
/* 80338DA0  7C 04 00 00 */	cmpw r4, r0
/* 80338DA4  41 82 00 44 */	beq lbl_80338DE8
/* 80338DA8  48 00 00 A0 */	b lbl_80338E48
lbl_80338DAC:
/* 80338DAC  3C 60 50 41 */	lis r3, 0x5041 /* 0x50414B31@ha */
/* 80338DB0  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x50414B31@l */
/* 80338DB4  7C 04 00 00 */	cmpw r4, r0
/* 80338DB8  41 82 00 40 */	beq lbl_80338DF8
/* 80338DBC  48 00 00 8C */	b lbl_80338E48
lbl_80338DC0:
/* 80338DC0  3C 60 56 43 */	lis r3, 0x5643 /* 0x56434B31@ha */
/* 80338DC4  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x56434B31@l */
/* 80338DC8  7C 04 00 00 */	cmpw r4, r0
/* 80338DCC  41 82 00 6C */	beq lbl_80338E38
/* 80338DD0  40 80 00 78 */	bge lbl_80338E48
/* 80338DD4  3C 60 54 54 */	lis r3, 0x5454 /* 0x54544B31@ha */
/* 80338DD8  38 03 4B 31 */	addi r0, r3, 0x4B31 /* 0x54544B31@l */
/* 80338DDC  7C 04 00 00 */	cmpw r4, r0
/* 80338DE0  41 82 00 38 */	beq lbl_80338E18
/* 80338DE4  48 00 00 64 */	b lbl_80338E48
lbl_80338DE8:
/* 80338DE8  7F A3 EB 78 */	mr r3, r29
/* 80338DEC  7F E4 FB 78 */	mr r4, r31
/* 80338DF0  48 00 01 FD */	bl readAnmTransform__19J3DAnmKeyLoader_v15FPC22J3DAnmTransformKeyData
/* 80338DF4  48 00 00 68 */	b lbl_80338E5C
lbl_80338DF8:
/* 80338DF8  7F A3 EB 78 */	mr r3, r29
/* 80338DFC  7F E4 FB 78 */	mr r4, r31
/* 80338E00  48 00 04 B1 */	bl readAnmColor__19J3DAnmKeyLoader_v15FPC18J3DAnmColorKeyData
/* 80338E04  48 00 00 58 */	b lbl_80338E5C
lbl_80338E08:
/* 80338E08  7F A3 EB 78 */	mr r3, r29
/* 80338E0C  7F E4 FB 78 */	mr r4, r31
/* 80338E10  48 00 05 B5 */	bl readAnmCluster__19J3DAnmKeyLoader_v15FPC20J3DAnmClusterKeyData
/* 80338E14  48 00 00 48 */	b lbl_80338E5C
lbl_80338E18:
/* 80338E18  7F A3 EB 78 */	mr r3, r29
/* 80338E1C  7F E4 FB 78 */	mr r4, r31
/* 80338E20  48 00 02 91 */	bl readAnmTextureSRT__19J3DAnmKeyLoader_v15FPC23J3DAnmTextureSRTKeyData
/* 80338E24  48 00 00 38 */	b lbl_80338E5C
lbl_80338E28:
/* 80338E28  7F A3 EB 78 */	mr r3, r29
/* 80338E2C  7F E4 FB 78 */	mr r4, r31
/* 80338E30  48 00 06 29 */	bl readAnmTevReg__19J3DAnmKeyLoader_v15FPC19J3DAnmTevRegKeyData
/* 80338E34  48 00 00 28 */	b lbl_80338E5C
lbl_80338E38:
/* 80338E38  7F A3 EB 78 */	mr r3, r29
/* 80338E3C  7F E4 FB 78 */	mr r4, r31
/* 80338E40  48 00 07 CD */	bl readAnmVtxColor__19J3DAnmKeyLoader_v15FPC21J3DAnmVtxColorKeyData
/* 80338E44  48 00 00 18 */	b lbl_80338E5C
lbl_80338E48:
/* 80338E48  3C 60 80 3A */	lis r3, J3DAnmLoader__stringBase0@ha
/* 80338E4C  38 63 21 30 */	addi r3, r3, J3DAnmLoader__stringBase0@l
/* 80338E50  38 63 00 29 */	addi r3, r3, 0x29
/* 80338E54  4C C6 31 82 */	crclr 6
/* 80338E58  4B CC DC 65 */	bl OSReport
lbl_80338E5C:
/* 80338E5C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80338E60  7F FF 02 14 */	add r31, r31, r0
/* 80338E64  3B DE 00 01 */	addi r30, r30, 1
lbl_80338E68:
/* 80338E68  7C 1E E0 40 */	cmplw r30, r28
/* 80338E6C  41 80 FF 08 */	blt lbl_80338D74
/* 80338E70  80 7D 00 04 */	lwz r3, 4(r29)
/* 80338E74  39 61 00 20 */	addi r11, r1, 0x20
/* 80338E78  48 02 93 A9 */	bl _restgpr_27
/* 80338E7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80338E80  7C 08 03 A6 */	mtlr r0
/* 80338E84  38 21 00 20 */	addi r1, r1, 0x20
/* 80338E88  4E 80 00 20 */	blr 
