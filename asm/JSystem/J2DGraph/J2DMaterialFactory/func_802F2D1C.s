lbl_802F2D1C:
/* 802F2D1C  94 21 FC 30 */	stwu r1, -0x3d0(r1)
/* 802F2D20  7C 08 02 A6 */	mflr r0
/* 802F2D24  90 01 03 D4 */	stw r0, 0x3d4(r1)
/* 802F2D28  39 61 03 D0 */	addi r11, r1, 0x3d0
/* 802F2D2C  48 06 F4 89 */	bl _savegpr_19
/* 802F2D30  7C 7E 1B 78 */	mr r30, r3
/* 802F2D34  7C 9F 23 78 */	mr r31, r4
/* 802F2D38  7C BD 2B 78 */	mr r29, r5
/* 802F2D3C  7C D3 33 78 */	mr r19, r6
/* 802F2D40  7C F8 3B 78 */	mr r24, r7
/* 802F2D44  7D 16 43 78 */	mr r22, r8
/* 802F2D48  7D 3B 4B 78 */	mr r27, r9
/* 802F2D4C  7F A4 EB 78 */	mr r4, r29
/* 802F2D50  4B FF FF 45 */	bl countStages__18J2DMaterialFactoryCFi
/* 802F2D54  56 64 02 DE */	rlwinm r4, r19, 0, 0xb, 0xf
/* 802F2D58  56 60 86 FE */	rlwinm r0, r19, 0x10, 0x1b, 0x1f
/* 802F2D5C  7C 03 00 40 */	cmplw r3, r0
/* 802F2D60  7C 1C 03 78 */	mr r28, r0
/* 802F2D64  40 81 00 08 */	ble lbl_802F2D6C
/* 802F2D68  7C 7C 1B 78 */	mr r28, r3
lbl_802F2D6C:
/* 802F2D6C  28 1C 00 08 */	cmplwi r28, 8
/* 802F2D70  3B 20 00 08 */	li r25, 8
/* 802F2D74  41 81 00 08 */	bgt lbl_802F2D7C
/* 802F2D78  7F 99 E3 78 */	mr r25, r28
lbl_802F2D7C:
/* 802F2D7C  56 63 47 FE */	rlwinm r3, r19, 8, 0x1f, 0x1f
/* 802F2D80  20 04 00 00 */	subfic r0, r4, 0
/* 802F2D84  7C 00 01 10 */	subfe r0, r0, r0
/* 802F2D88  7C 74 00 38 */	and r20, r3, r0
/* 802F2D8C  30 04 FF FF */	addic r0, r4, -1
/* 802F2D90  7C 00 21 10 */	subfe r0, r0, r4
/* 802F2D94  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 802F2D98  7C 93 23 78 */	mr r19, r4
/* 802F2D9C  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 802F2DA0  4B FF 76 71 */	bl createTevBlock__11J2DMaterialFib
/* 802F2DA4  90 7F 00 70 */	stw r3, 0x70(r31)
/* 802F2DA8  7E 83 A3 78 */	mr r3, r20
/* 802F2DAC  7E 64 9B 78 */	mr r4, r19
/* 802F2DB0  4B FF 78 15 */	bl createIndBlock__11J2DMaterialFib
/* 802F2DB4  90 7F 00 74 */	stw r3, 0x74(r31)
/* 802F2DB8  B3 BF 00 0C */	sth r29, 0xc(r31)
/* 802F2DBC  80 9E 00 04 */	lwz r4, 4(r30)
/* 802F2DC0  80 7E 00 08 */	lwz r3, 8(r30)
/* 802F2DC4  57 BA 08 3C */	slwi r26, r29, 1
/* 802F2DC8  7C 03 D2 2E */	lhzx r0, r3, r26
/* 802F2DCC  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F2DD0  7C 04 00 AE */	lbzx r0, r4, r0
/* 802F2DD4  90 1F 00 08 */	stw r0, 8(r31)
/* 802F2DD8  7F C3 F3 78 */	mr r3, r30
/* 802F2DDC  7F A4 EB 78 */	mr r4, r29
/* 802F2DE0  48 00 08 ED */	bl newColorChanNum__18J2DMaterialFactoryCFi
/* 802F2DE4  98 7F 00 18 */	stb r3, 0x18(r31)
/* 802F2DE8  7F C3 F3 78 */	mr r3, r30
/* 802F2DEC  7F A4 EB 78 */	mr r4, r29
/* 802F2DF0  48 00 0A F1 */	bl newCullMode__18J2DMaterialFactoryCFi
/* 802F2DF4  98 7F 00 22 */	stb r3, 0x22(r31)
/* 802F2DF8  7F C3 F3 78 */	mr r3, r30
/* 802F2DFC  7F A4 EB 78 */	mr r4, r29
/* 802F2E00  48 00 09 59 */	bl newTexGenNum__18J2DMaterialFactoryCFi
/* 802F2E04  90 7F 00 28 */	stw r3, 0x28(r31)
/* 802F2E08  38 61 00 4C */	addi r3, r1, 0x4c
/* 802F2E0C  7F C4 F3 78 */	mr r4, r30
/* 802F2E10  7F A5 EB 78 */	mr r5, r29
/* 802F2E14  48 00 11 CD */	bl newAlphaComp__18J2DMaterialFactoryCFi
/* 802F2E18  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 802F2E1C  90 01 00 50 */	stw r0, 0x50(r1)
/* 802F2E20  A0 01 00 50 */	lhz r0, 0x50(r1)
/* 802F2E24  B0 1F 00 78 */	sth r0, 0x78(r31)
/* 802F2E28  88 01 00 52 */	lbz r0, 0x52(r1)
/* 802F2E2C  98 1F 00 7A */	stb r0, 0x7a(r31)
/* 802F2E30  88 01 00 53 */	lbz r0, 0x53(r1)
/* 802F2E34  98 1F 00 7B */	stb r0, 0x7b(r31)
/* 802F2E38  38 61 00 44 */	addi r3, r1, 0x44
/* 802F2E3C  7F C4 F3 78 */	mr r4, r30
/* 802F2E40  7F A5 EB 78 */	mr r5, r29
/* 802F2E44  48 00 12 19 */	bl newBlend__18J2DMaterialFactoryCFi
/* 802F2E48  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802F2E4C  90 01 00 48 */	stw r0, 0x48(r1)
/* 802F2E50  88 01 00 48 */	lbz r0, 0x48(r1)
/* 802F2E54  98 1F 00 7C */	stb r0, 0x7c(r31)
/* 802F2E58  88 01 00 49 */	lbz r0, 0x49(r1)
/* 802F2E5C  98 1F 00 7D */	stb r0, 0x7d(r31)
/* 802F2E60  88 01 00 4A */	lbz r0, 0x4a(r1)
/* 802F2E64  98 1F 00 7E */	stb r0, 0x7e(r31)
/* 802F2E68  88 01 00 4B */	lbz r0, 0x4b(r1)
/* 802F2E6C  98 1F 00 7F */	stb r0, 0x7f(r31)
/* 802F2E70  7F C3 F3 78 */	mr r3, r30
/* 802F2E74  7F A4 EB 78 */	mr r4, r29
/* 802F2E78  48 00 12 61 */	bl newDither__18J2DMaterialFactoryCFi
/* 802F2E7C  98 7F 00 80 */	stb r3, 0x80(r31)
/* 802F2E80  82 7F 00 70 */	lwz r19, 0x70(r31)
/* 802F2E84  7F C3 F3 78 */	mr r3, r30
/* 802F2E88  7F A4 EB 78 */	mr r4, r29
/* 802F2E8C  48 00 0C C9 */	bl newTevStageNum__18J2DMaterialFactoryCFi
/* 802F2E90  7C 64 1B 78 */	mr r4, r3
/* 802F2E94  7E 63 9B 78 */	mr r3, r19
/* 802F2E98  81 93 00 00 */	lwz r12, 0(r19)
/* 802F2E9C  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 802F2EA0  7D 89 03 A6 */	mtctr r12
/* 802F2EA4  4E 80 04 21 */	bctrl 
/* 802F2EA8  80 9E 00 04 */	lwz r4, 4(r30)
/* 802F2EAC  80 7E 00 08 */	lwz r3, 8(r30)
/* 802F2EB0  7C 03 D2 2E */	lhzx r0, r3, r26
/* 802F2EB4  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F2EB8  7C 64 02 14 */	add r3, r4, r0
/* 802F2EBC  88 03 00 06 */	lbz r0, 6(r3)
/* 802F2EC0  98 1F 00 0F */	stb r0, 0xf(r31)
/* 802F2EC4  38 00 00 00 */	li r0, 0
/* 802F2EC8  98 01 02 94 */	stb r0, 0x294(r1)
/* 802F2ECC  3A E0 00 00 */	li r23, 0
/* 802F2ED0  48 00 00 E8 */	b lbl_802F2FB8
lbl_802F2ED4:
/* 802F2ED4  7F C3 F3 78 */	mr r3, r30
/* 802F2ED8  7F A4 EB 78 */	mr r4, r29
/* 802F2EDC  48 00 0A 45 */	bl newTexNo__18J2DMaterialFactoryCFii
/* 802F2EE0  7C 75 1B 78 */	mr r21, r3
/* 802F2EE4  7F 03 C3 78 */	mr r3, r24
/* 802F2EE8  7E A4 AB 78 */	mr r4, r21
/* 802F2EEC  48 01 A0 25 */	bl getResReference__15J2DResReferenceCFUs
/* 802F2EF0  7C 73 1B 79 */	or. r19, r3, r3
/* 802F2EF4  38 A0 00 00 */	li r5, 0
/* 802F2EF8  41 82 00 84 */	beq lbl_802F2F7C
/* 802F2EFC  38 61 02 94 */	addi r3, r1, 0x294
/* 802F2F00  7E 64 9B 78 */	mr r4, r19
/* 802F2F04  3C A0 54 49 */	lis r5, 0x5449 /* 0x54494D47@ha */
/* 802F2F08  38 A5 4D 47 */	addi r5, r5, 0x4D47 /* 0x54494D47@l */
/* 802F2F0C  7F 66 DB 78 */	mr r6, r27
/* 802F2F10  4B FE B2 11 */	bl getResource__15JUTResReferenceFPCvUlP10JKRArchive
/* 802F2F14  7C 65 1B 79 */	or. r5, r3, r3
/* 802F2F18  40 82 00 28 */	bne lbl_802F2F40
/* 802F2F1C  28 1B 00 00 */	cmplwi r27, 0
/* 802F2F20  41 82 00 20 */	beq lbl_802F2F40
/* 802F2F24  38 61 02 94 */	addi r3, r1, 0x294
/* 802F2F28  7E 64 9B 78 */	mr r4, r19
/* 802F2F2C  3C A0 54 49 */	lis r5, 0x5449 /* 0x54494D47@ha */
/* 802F2F30  38 A5 4D 47 */	addi r5, r5, 0x4D47 /* 0x54494D47@l */
/* 802F2F34  38 C0 00 00 */	li r6, 0
/* 802F2F38  4B FE B1 E9 */	bl getResource__15JUTResReferenceFPCvUlP10JKRArchive
/* 802F2F3C  7C 65 1B 78 */	mr r5, r3
lbl_802F2F40:
/* 802F2F40  28 05 00 00 */	cmplwi r5, 0
/* 802F2F44  40 82 00 38 */	bne lbl_802F2F7C
/* 802F2F48  80 0D 90 10 */	lwz r0, mDataManage__9J2DScreen(r13)
/* 802F2F4C  28 00 00 00 */	cmplwi r0, 0
/* 802F2F50  41 82 00 2C */	beq lbl_802F2F7C
/* 802F2F54  7F 03 C3 78 */	mr r3, r24
/* 802F2F58  7E A4 AB 78 */	mr r4, r21
/* 802F2F5C  48 01 9F E9 */	bl getName__15J2DResReferenceCFUs
/* 802F2F60  7C 64 1B 78 */	mr r4, r3
/* 802F2F64  38 61 01 90 */	addi r3, r1, 0x190
/* 802F2F68  48 07 5B C5 */	bl strcpy
/* 802F2F6C  80 6D 90 10 */	lwz r3, mDataManage__9J2DScreen(r13)
/* 802F2F70  38 81 01 90 */	addi r4, r1, 0x190
/* 802F2F74  48 01 9E A5 */	bl get__13J2DDataManageFPCc
/* 802F2F78  7C 65 1B 78 */	mr r5, r3
lbl_802F2F7C:
/* 802F2F7C  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F2F80  56 F3 06 3E */	clrlwi r19, r23, 0x18
/* 802F2F84  7E 64 9B 78 */	mr r4, r19
/* 802F2F88  81 83 00 00 */	lwz r12, 0(r3)
/* 802F2F8C  81 8C 00 78 */	lwz r12, 0x78(r12)
/* 802F2F90  7D 89 03 A6 */	mtctr r12
/* 802F2F94  4E 80 04 21 */	bctrl 
/* 802F2F98  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F2F9C  7E 64 9B 78 */	mr r4, r19
/* 802F2FA0  7E A5 AB 78 */	mr r5, r21
/* 802F2FA4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F2FA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F2FAC  7D 89 03 A6 */	mtctr r12
/* 802F2FB0  4E 80 04 21 */	bctrl 
/* 802F2FB4  3A F7 00 01 */	addi r23, r23, 1
lbl_802F2FB8:
/* 802F2FB8  56 E5 06 3E */	clrlwi r5, r23, 0x18
/* 802F2FBC  7C 05 C8 40 */	cmplw r5, r25
/* 802F2FC0  41 80 FF 14 */	blt lbl_802F2ED4
/* 802F2FC4  7F C3 F3 78 */	mr r3, r30
/* 802F2FC8  7F A4 EB 78 */	mr r4, r29
/* 802F2FCC  48 00 09 9D */	bl newFontNo__18J2DMaterialFactoryCFi
/* 802F2FD0  7C 64 1B 78 */	mr r4, r3
/* 802F2FD4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F2FD8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F2FDC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802F2FE0  7D 89 03 A6 */	mtctr r12
/* 802F2FE4  4E 80 04 21 */	bctrl 
/* 802F2FE8  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F2FEC  81 83 00 00 */	lwz r12, 0(r3)
/* 802F2FF0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802F2FF4  7D 89 03 A6 */	mtctr r12
/* 802F2FF8  4E 80 04 21 */	bctrl 
/* 802F2FFC  7C 64 1B 78 */	mr r4, r3
/* 802F3000  7E C3 B3 78 */	mr r3, r22
/* 802F3004  48 01 9F 0D */	bl getResReference__15J2DResReferenceCFUs
/* 802F3008  7C 73 1B 79 */	or. r19, r3, r3
/* 802F300C  38 80 00 00 */	li r4, 0
/* 802F3010  41 82 00 98 */	beq lbl_802F30A8
/* 802F3014  38 61 02 94 */	addi r3, r1, 0x294
/* 802F3018  7E 64 9B 78 */	mr r4, r19
/* 802F301C  3C A0 46 4F */	lis r5, 0x464F /* 0x464F4E54@ha */
/* 802F3020  38 A5 4E 54 */	addi r5, r5, 0x4E54 /* 0x464F4E54@l */
/* 802F3024  7F 66 DB 78 */	mr r6, r27
/* 802F3028  4B FE B0 F9 */	bl getResource__15JUTResReferenceFPCvUlP10JKRArchive
/* 802F302C  7C 64 1B 79 */	or. r4, r3, r3
/* 802F3030  40 82 00 28 */	bne lbl_802F3058
/* 802F3034  28 1B 00 00 */	cmplwi r27, 0
/* 802F3038  41 82 00 20 */	beq lbl_802F3058
/* 802F303C  38 61 02 94 */	addi r3, r1, 0x294
/* 802F3040  7E 64 9B 78 */	mr r4, r19
/* 802F3044  3C A0 46 4F */	lis r5, 0x464F /* 0x464F4E54@ha */
/* 802F3048  38 A5 4E 54 */	addi r5, r5, 0x4E54 /* 0x464F4E54@l */
/* 802F304C  38 C0 00 00 */	li r6, 0
/* 802F3050  4B FE B0 D1 */	bl getResource__15JUTResReferenceFPCvUlP10JKRArchive
/* 802F3054  7C 64 1B 78 */	mr r4, r3
lbl_802F3058:
/* 802F3058  28 04 00 00 */	cmplwi r4, 0
/* 802F305C  40 82 00 4C */	bne lbl_802F30A8
/* 802F3060  80 0D 90 10 */	lwz r0, mDataManage__9J2DScreen(r13)
/* 802F3064  28 00 00 00 */	cmplwi r0, 0
/* 802F3068  41 82 00 40 */	beq lbl_802F30A8
/* 802F306C  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F3070  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3074  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 802F3078  7D 89 03 A6 */	mtctr r12
/* 802F307C  4E 80 04 21 */	bctrl 
/* 802F3080  7C 64 1B 78 */	mr r4, r3
/* 802F3084  7E C3 B3 78 */	mr r3, r22
/* 802F3088  48 01 9E BD */	bl getName__15J2DResReferenceCFUs
/* 802F308C  7C 64 1B 78 */	mr r4, r3
/* 802F3090  38 61 00 8C */	addi r3, r1, 0x8c
/* 802F3094  48 07 5A 99 */	bl strcpy
/* 802F3098  80 6D 90 10 */	lwz r3, mDataManage__9J2DScreen(r13)
/* 802F309C  38 81 00 8C */	addi r4, r1, 0x8c
/* 802F30A0  48 01 9D 79 */	bl get__13J2DDataManageFPCc
/* 802F30A4  7C 64 1B 78 */	mr r4, r3
lbl_802F30A8:
/* 802F30A8  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F30AC  81 83 00 00 */	lwz r12, 0(r3)
/* 802F30B0  81 8C 00 90 */	lwz r12, 0x90(r12)
/* 802F30B4  7D 89 03 A6 */	mtctr r12
/* 802F30B8  4E 80 04 21 */	bctrl 
/* 802F30BC  3A 60 00 00 */	li r19, 0
/* 802F30C0  48 00 00 3C */	b lbl_802F30FC
lbl_802F30C4:
/* 802F30C4  38 61 00 3C */	addi r3, r1, 0x3c
/* 802F30C8  7F C4 F3 78 */	mr r4, r30
/* 802F30CC  7F A5 EB 78 */	mr r5, r29
/* 802F30D0  48 00 08 D9 */	bl newTevOrder__18J2DMaterialFactoryCFii
/* 802F30D4  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802F30D8  90 01 00 40 */	stw r0, 0x40(r1)
/* 802F30DC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F30E0  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 802F30E4  38 A1 00 40 */	addi r5, r1, 0x40
/* 802F30E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F30EC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F30F0  7D 89 03 A6 */	mtctr r12
/* 802F30F4  4E 80 04 21 */	bctrl 
/* 802F30F8  3A 73 00 01 */	addi r19, r19, 1
lbl_802F30FC:
/* 802F30FC  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 802F3100  7C 06 E0 40 */	cmplw r6, r28
/* 802F3104  41 80 FF C0 */	blt lbl_802F30C4
/* 802F3108  3B 20 00 00 */	li r25, 0
/* 802F310C  82 DE 00 04 */	lwz r22, 4(r30)
/* 802F3110  82 BE 00 08 */	lwz r21, 8(r30)
/* 802F3114  48 00 00 DC */	b lbl_802F31F0
lbl_802F3118:
/* 802F3118  7C 1A AA 2E */	lhzx r0, r26, r21
/* 802F311C  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F3120  7F 76 02 14 */	add r27, r22, r0
/* 802F3124  38 61 00 60 */	addi r3, r1, 0x60
/* 802F3128  7F C4 F3 78 */	mr r4, r30
/* 802F312C  7F A5 EB 78 */	mr r5, r29
/* 802F3130  48 00 0A 5D */	bl newTevStage__18J2DMaterialFactoryCFii
/* 802F3134  80 61 00 60 */	lwz r3, 0x60(r1)
/* 802F3138  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802F313C  90 61 00 68 */	stw r3, 0x68(r1)
/* 802F3140  90 01 00 6C */	stw r0, 0x6c(r1)
/* 802F3144  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F3148  57 37 06 3E */	clrlwi r23, r25, 0x18
/* 802F314C  7E E4 BB 78 */	mr r4, r23
/* 802F3150  38 A1 00 68 */	addi r5, r1, 0x68
/* 802F3154  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3158  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 802F315C  7D 89 03 A6 */	mtctr r12
/* 802F3160  4E 80 04 21 */	bctrl 
/* 802F3164  56 E3 08 3C */	slwi r3, r23, 1
/* 802F3168  3B 03 00 BA */	addi r24, r3, 0xba
/* 802F316C  7C 1B C2 2E */	lhzx r0, r27, r24
/* 802F3170  28 00 FF FF */	cmplwi r0, 0xffff
/* 802F3174  41 82 00 78 */	beq lbl_802F31EC
/* 802F3178  80 9E 00 48 */	lwz r4, 0x48(r30)
/* 802F317C  54 03 13 BA */	rlwinm r3, r0, 2, 0xe, 0x1d
/* 802F3180  38 03 00 01 */	addi r0, r3, 1
/* 802F3184  7E 64 00 AE */	lbzx r19, r4, r0
/* 802F3188  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F318C  7E E4 BB 78 */	mr r4, r23
/* 802F3190  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3194  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 802F3198  7D 89 03 A6 */	mtctr r12
/* 802F319C  4E 80 04 21 */	bctrl 
/* 802F31A0  88 03 00 07 */	lbz r0, 7(r3)
/* 802F31A4  54 04 07 B6 */	rlwinm r4, r0, 0, 0x1e, 0x1b
/* 802F31A8  56 60 15 BA */	rlwinm r0, r19, 2, 0x16, 0x1d
/* 802F31AC  7C 80 03 78 */	or r0, r4, r0
/* 802F31B0  98 03 00 07 */	stb r0, 7(r3)
/* 802F31B4  80 7E 00 48 */	lwz r3, 0x48(r30)
/* 802F31B8  7C 1B C2 2E */	lhzx r0, r27, r24
/* 802F31BC  54 00 10 3A */	slwi r0, r0, 2
/* 802F31C0  7E 63 00 AE */	lbzx r19, r3, r0
/* 802F31C4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F31C8  7E E4 BB 78 */	mr r4, r23
/* 802F31CC  81 83 00 00 */	lwz r12, 0(r3)
/* 802F31D0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 802F31D4  7D 89 03 A6 */	mtctr r12
/* 802F31D8  4E 80 04 21 */	bctrl 
/* 802F31DC  88 03 00 07 */	lbz r0, 7(r3)
/* 802F31E0  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 802F31E4  7C 00 9B 78 */	or r0, r0, r19
/* 802F31E8  98 03 00 07 */	stb r0, 7(r3)
lbl_802F31EC:
/* 802F31EC  3B 39 00 01 */	addi r25, r25, 1
lbl_802F31F0:
/* 802F31F0  57 26 06 3E */	clrlwi r6, r25, 0x18
/* 802F31F4  7C 06 E0 40 */	cmplw r6, r28
/* 802F31F8  41 80 FF 20 */	blt lbl_802F3118
/* 802F31FC  3A 60 00 00 */	li r19, 0
/* 802F3200  48 00 00 40 */	b lbl_802F3240
lbl_802F3204:
/* 802F3204  38 61 00 34 */	addi r3, r1, 0x34
/* 802F3208  7F C4 F3 78 */	mr r4, r30
/* 802F320C  7F A5 EB 78 */	mr r5, r29
/* 802F3210  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 802F3214  48 00 08 A1 */	bl newTevKColor__18J2DMaterialFactoryCFii
/* 802F3218  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802F321C  90 01 00 38 */	stw r0, 0x38(r1)
/* 802F3220  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F3224  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 802F3228  38 A1 00 38 */	addi r5, r1, 0x38
/* 802F322C  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3230  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 802F3234  7D 89 03 A6 */	mtctr r12
/* 802F3238  4E 80 04 21 */	bctrl 
/* 802F323C  3A 73 00 01 */	addi r19, r19, 1
lbl_802F3240:
/* 802F3240  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 802F3244  28 00 00 04 */	cmplwi r0, 4
/* 802F3248  41 80 FF BC */	blt lbl_802F3204
/* 802F324C  3A A0 00 00 */	li r21, 0
/* 802F3250  48 00 00 3C */	b lbl_802F328C
lbl_802F3254:
/* 802F3254  82 7F 00 70 */	lwz r19, 0x70(r31)
/* 802F3258  38 61 00 58 */	addi r3, r1, 0x58
/* 802F325C  7F C4 F3 78 */	mr r4, r30
/* 802F3260  7F A5 EB 78 */	mr r5, r29
/* 802F3264  56 A6 06 3E */	clrlwi r6, r21, 0x18
/* 802F3268  48 00 07 B5 */	bl newTevColor__18J2DMaterialFactoryCFii
/* 802F326C  7E 63 9B 78 */	mr r3, r19
/* 802F3270  56 A4 06 3E */	clrlwi r4, r21, 0x18
/* 802F3274  38 A1 00 58 */	addi r5, r1, 0x58
/* 802F3278  81 93 00 00 */	lwz r12, 0(r19)
/* 802F327C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802F3280  7D 89 03 A6 */	mtctr r12
/* 802F3284  4E 80 04 21 */	bctrl 
/* 802F3288  3A B5 00 01 */	addi r21, r21, 1
lbl_802F328C:
/* 802F328C  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 802F3290  28 00 00 04 */	cmplwi r0, 4
/* 802F3294  41 80 FF C0 */	blt lbl_802F3254
/* 802F3298  3A 60 00 00 */	li r19, 0
/* 802F329C  48 00 00 40 */	b lbl_802F32DC
lbl_802F32A0:
/* 802F32A0  38 61 00 08 */	addi r3, r1, 8
/* 802F32A4  7F C4 F3 78 */	mr r4, r30
/* 802F32A8  7F A5 EB 78 */	mr r5, r29
/* 802F32AC  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 802F32B0  48 00 09 3D */	bl newTevSwapModeTable__18J2DMaterialFactoryCFii
/* 802F32B4  88 01 00 08 */	lbz r0, 8(r1)
/* 802F32B8  98 01 00 0C */	stb r0, 0xc(r1)
/* 802F32BC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F32C0  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 802F32C4  38 A1 00 0C */	addi r5, r1, 0xc
/* 802F32C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F32CC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 802F32D0  7D 89 03 A6 */	mtctr r12
/* 802F32D4  4E 80 04 21 */	bctrl 
/* 802F32D8  3A 73 00 01 */	addi r19, r19, 1
lbl_802F32DC:
/* 802F32DC  56 60 06 3E */	clrlwi r0, r19, 0x18
/* 802F32E0  28 00 00 04 */	cmplwi r0, 4
/* 802F32E4  41 80 FF BC */	blt lbl_802F32A0
/* 802F32E8  3A A0 00 00 */	li r21, 0
/* 802F32EC  3A 7F 00 10 */	addi r19, r31, 0x10
/* 802F32F0  48 00 00 4C */	b lbl_802F333C
lbl_802F32F4:
/* 802F32F4  38 61 00 2C */	addi r3, r1, 0x2c
/* 802F32F8  7F C4 F3 78 */	mr r4, r30
/* 802F32FC  7F A5 EB 78 */	mr r5, r29
/* 802F3300  56 A6 06 3E */	clrlwi r6, r21, 0x18
/* 802F3304  48 00 03 29 */	bl newMatColor__18J2DMaterialFactoryCFii
/* 802F3308  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 802F330C  90 01 00 30 */	stw r0, 0x30(r1)
/* 802F3310  88 61 00 30 */	lbz r3, 0x30(r1)
/* 802F3314  56 A0 15 BA */	rlwinm r0, r21, 2, 0x16, 0x1d
/* 802F3318  7C 93 02 14 */	add r4, r19, r0
/* 802F331C  98 64 00 00 */	stb r3, 0(r4)
/* 802F3320  88 01 00 31 */	lbz r0, 0x31(r1)
/* 802F3324  98 04 00 01 */	stb r0, 1(r4)
/* 802F3328  88 01 00 32 */	lbz r0, 0x32(r1)
/* 802F332C  98 04 00 02 */	stb r0, 2(r4)
/* 802F3330  88 01 00 33 */	lbz r0, 0x33(r1)
/* 802F3334  98 04 00 03 */	stb r0, 3(r4)
/* 802F3338  3A B5 00 01 */	addi r21, r21, 1
lbl_802F333C:
/* 802F333C  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 802F3340  28 00 00 02 */	cmplwi r0, 2
/* 802F3344  41 80 FF B0 */	blt lbl_802F32F4
/* 802F3348  3A A0 00 00 */	li r21, 0
/* 802F334C  3A 7F 00 10 */	addi r19, r31, 0x10
/* 802F3350  48 00 00 2C */	b lbl_802F337C
lbl_802F3354:
/* 802F3354  38 61 00 1C */	addi r3, r1, 0x1c
/* 802F3358  7F C4 F3 78 */	mr r4, r30
/* 802F335C  7F A5 EB 78 */	mr r5, r29
/* 802F3360  56 A6 06 3E */	clrlwi r6, r21, 0x18
/* 802F3364  48 00 03 A1 */	bl newColorChan__18J2DMaterialFactoryCFii
/* 802F3368  A0 81 00 1C */	lhz r4, 0x1c(r1)
/* 802F336C  56 A3 0D FC */	rlwinm r3, r21, 1, 0x17, 0x1e
/* 802F3370  38 03 00 0A */	addi r0, r3, 0xa
/* 802F3374  7C 93 03 2E */	sthx r4, r19, r0
/* 802F3378  3A B5 00 01 */	addi r21, r21, 1
lbl_802F337C:
/* 802F337C  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 802F3380  28 00 00 04 */	cmplwi r0, 4
/* 802F3384  41 80 FF D0 */	blt lbl_802F3354
/* 802F3388  3A A0 00 00 */	li r21, 0
/* 802F338C  3A 7F 00 28 */	addi r19, r31, 0x28
/* 802F3390  48 00 00 44 */	b lbl_802F33D4
lbl_802F3394:
/* 802F3394  38 61 00 28 */	addi r3, r1, 0x28
/* 802F3398  7F C4 F3 78 */	mr r4, r30
/* 802F339C  7F A5 EB 78 */	mr r5, r29
/* 802F33A0  56 A6 06 3E */	clrlwi r6, r21, 0x18
/* 802F33A4  48 00 03 ED */	bl newTexCoord__18J2DMaterialFactoryCFii
/* 802F33A8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802F33AC  90 01 00 54 */	stw r0, 0x54(r1)
/* 802F33B0  88 61 00 54 */	lbz r3, 0x54(r1)
/* 802F33B4  56 A0 15 BA */	rlwinm r0, r21, 2, 0x16, 0x1d
/* 802F33B8  7C 93 02 14 */	add r4, r19, r0
/* 802F33BC  98 64 00 04 */	stb r3, 4(r4)
/* 802F33C0  88 01 00 55 */	lbz r0, 0x55(r1)
/* 802F33C4  98 04 00 05 */	stb r0, 5(r4)
/* 802F33C8  88 01 00 56 */	lbz r0, 0x56(r1)
/* 802F33CC  98 04 00 06 */	stb r0, 6(r4)
/* 802F33D0  3A B5 00 01 */	addi r21, r21, 1
lbl_802F33D4:
/* 802F33D4  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 802F33D8  28 00 00 08 */	cmplwi r0, 8
/* 802F33DC  41 80 FF B8 */	blt lbl_802F3394
/* 802F33E0  3A A0 00 00 */	li r21, 0
/* 802F33E4  3A 7F 00 28 */	addi r19, r31, 0x28
/* 802F33E8  48 00 00 24 */	b lbl_802F340C
lbl_802F33EC:
/* 802F33EC  7F C3 F3 78 */	mr r3, r30
/* 802F33F0  7F A4 EB 78 */	mr r4, r29
/* 802F33F4  56 A5 06 3E */	clrlwi r5, r21, 0x18
/* 802F33F8  48 00 04 0D */	bl newTexMtx__18J2DMaterialFactoryCFii
/* 802F33FC  56 A4 15 BA */	rlwinm r4, r21, 2, 0x16, 0x1d
/* 802F3400  38 04 00 24 */	addi r0, r4, 0x24
/* 802F3404  7C 73 01 2E */	stwx r3, r19, r0
/* 802F3408  3A B5 00 01 */	addi r21, r21, 1
lbl_802F340C:
/* 802F340C  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 802F3410  28 00 00 08 */	cmplwi r0, 8
/* 802F3414  41 80 FF D8 */	blt lbl_802F33EC
/* 802F3418  80 9E 00 04 */	lwz r4, 4(r30)
/* 802F341C  80 7E 00 08 */	lwz r3, 8(r30)
/* 802F3420  7C 03 D2 2E */	lhzx r0, r3, r26
/* 802F3424  1C 00 00 E8 */	mulli r0, r0, 0xe8
/* 802F3428  7E 64 02 14 */	add r19, r4, r0
/* 802F342C  3A A0 00 00 */	li r21, 0
/* 802F3430  48 00 00 28 */	b lbl_802F3458
lbl_802F3434:
/* 802F3434  56 A4 06 3E */	clrlwi r4, r21, 0x18
/* 802F3438  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F343C  38 04 00 52 */	addi r0, r4, 0x52
/* 802F3440  7C B3 00 AE */	lbzx r5, r19, r0
/* 802F3444  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3448  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 802F344C  7D 89 03 A6 */	mtctr r12
/* 802F3450  4E 80 04 21 */	bctrl 
/* 802F3454  3A B5 00 01 */	addi r21, r21, 1
lbl_802F3458:
/* 802F3458  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 802F345C  7C 00 E0 40 */	cmplw r0, r28
/* 802F3460  41 80 FF D4 */	blt lbl_802F3434
/* 802F3464  3A A0 00 00 */	li r21, 0
/* 802F3468  48 00 00 28 */	b lbl_802F3490
lbl_802F346C:
/* 802F346C  56 A4 06 3E */	clrlwi r4, r21, 0x18
/* 802F3470  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F3474  38 04 00 62 */	addi r0, r4, 0x62
/* 802F3478  7C B3 00 AE */	lbzx r5, r19, r0
/* 802F347C  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3480  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 802F3484  7D 89 03 A6 */	mtctr r12
/* 802F3488  4E 80 04 21 */	bctrl 
/* 802F348C  3A B5 00 01 */	addi r21, r21, 1
lbl_802F3490:
/* 802F3490  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 802F3494  7C 00 E0 40 */	cmplw r0, r28
/* 802F3498  41 80 FF D4 */	blt lbl_802F346C
/* 802F349C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802F34A0  28 00 00 00 */	cmplwi r0, 0
/* 802F34A4  40 82 00 0C */	bne lbl_802F34B0
/* 802F34A8  2C 14 00 00 */	cmpwi r20, 0
/* 802F34AC  41 82 01 64 */	beq lbl_802F3610
lbl_802F34B0:
/* 802F34B0  7F C3 F3 78 */	mr r3, r30
/* 802F34B4  7F A4 EB 78 */	mr r4, r29
/* 802F34B8  48 00 07 D1 */	bl newIndTexStageNum__18J2DMaterialFactoryCFi
/* 802F34BC  7C 73 1B 78 */	mr r19, r3
/* 802F34C0  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 802F34C4  7E 64 9B 78 */	mr r4, r19
/* 802F34C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802F34CC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802F34D0  7D 89 03 A6 */	mtctr r12
/* 802F34D4  4E 80 04 21 */	bctrl 
/* 802F34D8  3A A0 00 00 */	li r21, 0
/* 802F34DC  56 74 06 3E */	clrlwi r20, r19, 0x18
/* 802F34E0  48 00 00 38 */	b lbl_802F3518
lbl_802F34E4:
/* 802F34E4  38 61 00 70 */	addi r3, r1, 0x70
/* 802F34E8  7F C4 F3 78 */	mr r4, r30
/* 802F34EC  7F A5 EB 78 */	mr r5, r29
/* 802F34F0  56 A6 06 3E */	clrlwi r6, r21, 0x18
/* 802F34F4  48 00 08 2D */	bl newIndTexMtx__18J2DMaterialFactoryCFii
/* 802F34F8  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 802F34FC  56 A4 06 3E */	clrlwi r4, r21, 0x18
/* 802F3500  38 A1 00 70 */	addi r5, r1, 0x70
/* 802F3504  81 83 00 00 */	lwz r12, 0(r3)
/* 802F3508  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802F350C  7D 89 03 A6 */	mtctr r12
/* 802F3510  4E 80 04 21 */	bctrl 
/* 802F3514  3A B5 00 01 */	addi r21, r21, 1
lbl_802F3518:
/* 802F3518  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 802F351C  7C 00 A0 40 */	cmplw r0, r20
/* 802F3520  41 80 FF C4 */	blt lbl_802F34E4
/* 802F3524  3A A0 00 00 */	li r21, 0
/* 802F3528  56 74 06 3E */	clrlwi r20, r19, 0x18
/* 802F352C  48 00 00 40 */	b lbl_802F356C
lbl_802F3530:
/* 802F3530  38 61 00 14 */	addi r3, r1, 0x14
/* 802F3534  7F C4 F3 78 */	mr r4, r30
/* 802F3538  7F A5 EB 78 */	mr r5, r29
/* 802F353C  56 A6 06 3E */	clrlwi r6, r21, 0x18
/* 802F3540  48 00 07 79 */	bl newIndTexOrder__18J2DMaterialFactoryCFii
/* 802F3544  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 802F3548  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802F354C  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 802F3550  56 A4 06 3E */	clrlwi r4, r21, 0x18
/* 802F3554  38 A1 00 18 */	addi r5, r1, 0x18
/* 802F3558  81 83 00 00 */	lwz r12, 0(r3)
/* 802F355C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802F3560  7D 89 03 A6 */	mtctr r12
/* 802F3564  4E 80 04 21 */	bctrl 
/* 802F3568  3A B5 00 01 */	addi r21, r21, 1
lbl_802F356C:
/* 802F356C  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 802F3570  7C 00 A0 40 */	cmplw r0, r20
/* 802F3574  41 80 FF BC */	blt lbl_802F3530
/* 802F3578  3A A0 00 00 */	li r21, 0
/* 802F357C  56 74 06 3E */	clrlwi r20, r19, 0x18
/* 802F3580  48 00 00 38 */	b lbl_802F35B8
lbl_802F3584:
/* 802F3584  38 61 00 10 */	addi r3, r1, 0x10
/* 802F3588  7F C4 F3 78 */	mr r4, r30
/* 802F358C  7F A5 EB 78 */	mr r5, r29
/* 802F3590  56 A6 06 3E */	clrlwi r6, r21, 0x18
/* 802F3594  48 00 09 E5 */	bl newIndTexCoordScale__18J2DMaterialFactoryCFii
/* 802F3598  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 802F359C  56 A4 06 3E */	clrlwi r4, r21, 0x18
/* 802F35A0  38 A1 00 10 */	addi r5, r1, 0x10
/* 802F35A4  81 83 00 00 */	lwz r12, 0(r3)
/* 802F35A8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802F35AC  7D 89 03 A6 */	mtctr r12
/* 802F35B0  4E 80 04 21 */	bctrl 
/* 802F35B4  3A B5 00 01 */	addi r21, r21, 1
lbl_802F35B8:
/* 802F35B8  56 A0 06 3E */	clrlwi r0, r21, 0x18
/* 802F35BC  7C 00 A0 40 */	cmplw r0, r20
/* 802F35C0  41 80 FF C4 */	blt lbl_802F3584
/* 802F35C4  3A 60 00 00 */	li r19, 0
/* 802F35C8  48 00 00 3C */	b lbl_802F3604
lbl_802F35CC:
/* 802F35CC  38 61 00 20 */	addi r3, r1, 0x20
/* 802F35D0  7F C4 F3 78 */	mr r4, r30
/* 802F35D4  7F A5 EB 78 */	mr r5, r29
/* 802F35D8  48 00 08 4D */	bl newIndTevStage__18J2DMaterialFactoryCFii
/* 802F35DC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802F35E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F35E4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802F35E8  56 64 06 3E */	clrlwi r4, r19, 0x18
/* 802F35EC  38 A1 00 24 */	addi r5, r1, 0x24
/* 802F35F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802F35F4  81 8C 00 70 */	lwz r12, 0x70(r12)
/* 802F35F8  7D 89 03 A6 */	mtctr r12
/* 802F35FC  4E 80 04 21 */	bctrl 
/* 802F3600  3A 73 00 01 */	addi r19, r19, 1
lbl_802F3604:
/* 802F3604  56 66 06 3E */	clrlwi r6, r19, 0x18
/* 802F3608  7C 06 E0 40 */	cmplw r6, r28
/* 802F360C  41 80 FF C0 */	blt lbl_802F35CC
lbl_802F3610:
/* 802F3610  7F E3 FB 78 */	mr r3, r31
/* 802F3614  39 61 03 D0 */	addi r11, r1, 0x3d0
/* 802F3618  48 06 EB E9 */	bl _restgpr_19
/* 802F361C  80 01 03 D4 */	lwz r0, 0x3d4(r1)
/* 802F3620  7C 08 03 A6 */	mtlr r0
/* 802F3624  38 21 03 D0 */	addi r1, r1, 0x3d0
/* 802F3628  4E 80 00 20 */	blr 
