lbl_80C27A20:
/* 80C27A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C27A24  7C 08 02 A6 */	mflr r0
/* 80C27A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C27A2C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C27A30  4B 73 A7 A0 */	b _savegpr_26
/* 80C27A34  7C 7F 1B 78 */	mr r31, r3
/* 80C27A38  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C27A3C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C27A40  40 82 01 04 */	bne lbl_80C27B44
/* 80C27A44  7F E0 FB 79 */	or. r0, r31, r31
/* 80C27A48  41 82 00 F0 */	beq lbl_80C27B38
/* 80C27A4C  7C 1E 03 78 */	mr r30, r0
/* 80C27A50  4B 3F 11 14 */	b __ct__10fopAc_ac_cFv
/* 80C27A54  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C27A58  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C27A5C  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80C27A60  38 7E 05 90 */	addi r3, r30, 0x590
/* 80C27A64  4B 45 BC FC */	b __ct__10dCcD_GSttsFv
/* 80C27A68  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C27A6C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C27A70  90 7E 05 8C */	stw r3, 0x58c(r30)
/* 80C27A74  38 03 00 20 */	addi r0, r3, 0x20
/* 80C27A78  90 1E 05 90 */	stw r0, 0x590(r30)
/* 80C27A7C  3B 5E 05 B0 */	addi r26, r30, 0x5b0
/* 80C27A80  7F 43 D3 78 */	mr r3, r26
/* 80C27A84  4B 45 BF A4 */	b __ct__12dCcD_GObjInfFv
/* 80C27A88  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C27A8C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C27A90  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80C27A94  3C 60 80 C3 */	lis r3, __vt__8cM3dGAab@ha
/* 80C27A98  38 03 82 5C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C27A9C  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80C27AA0  3C 60 80 C3 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C27AA4  38 03 82 50 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C27AA8  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80C27AAC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C27AB0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C27AB4  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80C27AB8  3B A3 00 58 */	addi r29, r3, 0x58
/* 80C27ABC  93 BA 01 38 */	stw r29, 0x138(r26)
/* 80C27AC0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C27AC4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C27AC8  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80C27ACC  3B 83 00 2C */	addi r28, r3, 0x2c
/* 80C27AD0  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80C27AD4  3B 63 00 84 */	addi r27, r3, 0x84
/* 80C27AD8  93 7A 01 38 */	stw r27, 0x138(r26)
/* 80C27ADC  3B 5E 06 EC */	addi r26, r30, 0x6ec
/* 80C27AE0  7F 43 D3 78 */	mr r3, r26
/* 80C27AE4  4B 45 BF 44 */	b __ct__12dCcD_GObjInfFv
/* 80C27AE8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C27AEC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C27AF0  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80C27AF4  3C 60 80 C3 */	lis r3, __vt__8cM3dGAab@ha
/* 80C27AF8  38 03 82 5C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C27AFC  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80C27B00  3C 60 80 C3 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C27B04  38 03 82 50 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C27B08  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80C27B0C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C27B10  38 03 35 A4 */	addi r0, r3, __vt__12cCcD_CylAttr@l
/* 80C27B14  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80C27B18  93 BA 01 38 */	stw r29, 0x138(r26)
/* 80C27B1C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C27B20  38 03 C0 50 */	addi r0, r3, __vt__8dCcD_Cyl@l
/* 80C27B24  90 1A 00 3C */	stw r0, 0x3c(r26)
/* 80C27B28  93 9A 01 20 */	stw r28, 0x120(r26)
/* 80C27B2C  93 7A 01 38 */	stw r27, 0x138(r26)
/* 80C27B30  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80C27B34  4B 69 6D 10 */	b __ct__16Z2SoundObjSimpleFv
lbl_80C27B38:
/* 80C27B38  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C27B3C  60 00 00 08 */	ori r0, r0, 8
/* 80C27B40  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C27B44:
/* 80C27B44  38 7F 05 68 */	addi r3, r31, 0x568
/* 80C27B48  3C 80 80 C3 */	lis r4, l_arcName@ha
/* 80C27B4C  38 84 81 F8 */	addi r4, r4, l_arcName@l
/* 80C27B50  80 84 00 00 */	lwz r4, 0(r4)
/* 80C27B54  4B 40 53 68 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C27B58  7C 7B 1B 78 */	mr r27, r3
/* 80C27B5C  2C 1B 00 04 */	cmpwi r27, 4
/* 80C27B60  40 82 00 40 */	bne lbl_80C27BA0
/* 80C27B64  7F E3 FB 78 */	mr r3, r31
/* 80C27B68  3C 80 80 C2 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80C27B6C  38 84 78 10 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80C27B70  38 A0 08 60 */	li r5, 0x860
/* 80C27B74  4B 3F 29 3C */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80C27B78  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C27B7C  40 82 00 0C */	bne lbl_80C27B88
/* 80C27B80  38 60 00 05 */	li r3, 5
/* 80C27B84  48 00 00 20 */	b lbl_80C27BA4
lbl_80C27B88:
/* 80C27B88  7F E3 FB 78 */	mr r3, r31
/* 80C27B8C  4B FF FD 41 */	bl Create__12daObjIBone_cFv
/* 80C27B90  2C 03 00 00 */	cmpwi r3, 0
/* 80C27B94  40 82 00 0C */	bne lbl_80C27BA0
/* 80C27B98  38 60 00 05 */	li r3, 5
/* 80C27B9C  48 00 00 08 */	b lbl_80C27BA4
lbl_80C27BA0:
/* 80C27BA0  7F 63 DB 78 */	mr r3, r27
lbl_80C27BA4:
/* 80C27BA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C27BA8  4B 73 A6 74 */	b _restgpr_26
/* 80C27BAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C27BB0  7C 08 03 A6 */	mtlr r0
/* 80C27BB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80C27BB8  4E 80 00 20 */	blr 
