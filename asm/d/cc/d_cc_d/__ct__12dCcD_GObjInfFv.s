lbl_80083A28:
/* 80083A28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80083A2C  7C 08 02 A6 */	mflr r0
/* 80083A30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80083A34  39 61 00 20 */	addi r11, r1, 0x20
/* 80083A38  48 2D E7 A5 */	bl _savegpr_29
/* 80083A3C  7C 7F 1B 78 */	mr r31, r3
/* 80083A40  7F FD FB 78 */	mr r29, r31
/* 80083A44  3C 80 80 3B */	lis r4, __vt__14cCcD_ObjHitInf@ha
/* 80083A48  38 04 C2 D8 */	addi r0, r4, __vt__14cCcD_ObjHitInf@l
/* 80083A4C  90 03 00 3C */	stw r0, 0x3c(r3)
/* 80083A50  7F A5 EB 78 */	mr r5, r29
/* 80083A54  7C BE 2B 78 */	mr r30, r5
/* 80083A58  3C 80 80 3B */	lis r4, __vt__18cCcD_ObjCommonBase@ha
/* 80083A5C  38 04 C2 CC */	addi r0, r4, __vt__18cCcD_ObjCommonBase@l
/* 80083A60  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80083A64  48 1D FF 4D */	bl ct__18cCcD_ObjCommonBaseFv
/* 80083A68  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjAt@ha
/* 80083A6C  38 03 C2 C0 */	addi r0, r3, __vt__10cCcD_ObjAt@l
/* 80083A70  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80083A74  38 00 00 00 */	li r0, 0
/* 80083A78  90 1E 00 10 */	stw r0, 0x10(r30)
/* 80083A7C  3B DD 00 18 */	addi r30, r29, 0x18
/* 80083A80  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha
/* 80083A84  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l
/* 80083A88  90 1D 00 24 */	stw r0, 0x24(r29)
/* 80083A8C  7F C3 F3 78 */	mr r3, r30
/* 80083A90  48 1D FF 21 */	bl ct__18cCcD_ObjCommonBaseFv
/* 80083A94  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjTg@ha
/* 80083A98  38 03 C2 B4 */	addi r0, r3, __vt__10cCcD_ObjTg@l
/* 80083A9C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80083AA0  7F C3 F3 78 */	mr r3, r30
/* 80083AA4  48 1D FF 0D */	bl ct__18cCcD_ObjCommonBaseFv
/* 80083AA8  3B BD 00 2C */	addi r29, r29, 0x2c
/* 80083AAC  3C 60 80 3B */	lis r3, __vt__18cCcD_ObjCommonBase@ha
/* 80083AB0  38 03 C2 CC */	addi r0, r3, __vt__18cCcD_ObjCommonBase@l
/* 80083AB4  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80083AB8  7F A3 EB 78 */	mr r3, r29
/* 80083ABC  48 1D FE F5 */	bl ct__18cCcD_ObjCommonBaseFv
/* 80083AC0  3C 60 80 3B */	lis r3, __vt__10cCcD_ObjCo@ha
/* 80083AC4  38 03 C2 A8 */	addi r0, r3, __vt__10cCcD_ObjCo@l
/* 80083AC8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80083ACC  3C 60 80 3B */	lis r3, __vt__8cCcD_Obj@ha
/* 80083AD0  38 03 C2 88 */	addi r0, r3, __vt__8cCcD_Obj@l
/* 80083AD4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80083AD8  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha
/* 80083ADC  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l
/* 80083AE0  90 1F 00 54 */	stw r0, 0x54(r31)
/* 80083AE4  7F E3 FB 78 */	mr r3, r31
/* 80083AE8  48 1D FF 29 */	bl ct__8cCcD_ObjFv
/* 80083AEC  3C 60 80 3B */	lis r3, __vt__12cCcD_GObjInf@ha
/* 80083AF0  38 03 C2 5C */	addi r0, r3, __vt__12cCcD_GObjInf@l
/* 80083AF4  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80083AF8  3C 60 80 3B */	lis r3, __vt__12dCcD_GObjInf@ha
/* 80083AFC  38 03 C2 00 */	addi r0, r3, __vt__12dCcD_GObjInf@l
/* 80083B00  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 80083B04  3B BF 00 58 */	addi r29, r31, 0x58
/* 80083B08  3C 60 80 3B */	lis r3, __vt__22dCcD_GAtTgCoCommonBase@ha
/* 80083B0C  38 03 C2 50 */	addi r0, r3, __vt__22dCcD_GAtTgCoCommonBase@l
/* 80083B10  90 1F 00 70 */	stw r0, 0x70(r31)
/* 80083B14  7F A3 EB 78 */	mr r3, r29
/* 80083B18  4B FF FB 49 */	bl ct__22dCcD_GAtTgCoCommonBaseFv
/* 80083B1C  3C 60 80 3B */	lis r3, __vt__11dCcD_GObjAt@ha
/* 80083B20  38 03 C2 44 */	addi r0, r3, __vt__11dCcD_GObjAt@l
/* 80083B24  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80083B28  3B BF 00 9C */	addi r29, r31, 0x9c
/* 80083B2C  3C 60 80 3B */	lis r3, __vt__22dCcD_GAtTgCoCommonBase@ha
/* 80083B30  38 03 C2 50 */	addi r0, r3, __vt__22dCcD_GAtTgCoCommonBase@l
/* 80083B34  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 80083B38  7F A3 EB 78 */	mr r3, r29
/* 80083B3C  4B FF FB 25 */	bl ct__22dCcD_GAtTgCoCommonBaseFv
/* 80083B40  3C 60 80 3B */	lis r3, __vt__11dCcD_GObjTg@ha
/* 80083B44  38 03 C2 38 */	addi r0, r3, __vt__11dCcD_GObjTg@l
/* 80083B48  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80083B4C  3B BF 00 E8 */	addi r29, r31, 0xe8
/* 80083B50  3C 60 80 3B */	lis r3, __vt__22dCcD_GAtTgCoCommonBase@ha
/* 80083B54  38 03 C2 50 */	addi r0, r3, __vt__22dCcD_GAtTgCoCommonBase@l
/* 80083B58  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80083B5C  7F A3 EB 78 */	mr r3, r29
/* 80083B60  4B FF FB 01 */	bl ct__22dCcD_GAtTgCoCommonBaseFv
/* 80083B64  3C 60 80 3B */	lis r3, __vt__11dCcD_GObjCo@ha
/* 80083B68  38 03 C2 2C */	addi r0, r3, __vt__11dCcD_GObjCo@l
/* 80083B6C  90 1D 00 18 */	stw r0, 0x18(r29)
/* 80083B70  7F E3 FB 78 */	mr r3, r31
/* 80083B74  39 61 00 20 */	addi r11, r1, 0x20
/* 80083B78  48 2D E6 B1 */	bl _restgpr_29
/* 80083B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80083B80  7C 08 03 A6 */	mtlr r0
/* 80083B84  38 21 00 20 */	addi r1, r1, 0x20
/* 80083B88  4E 80 00 20 */	blr 
