lbl_80CD2908:
/* 80CD2908  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CD290C  7C 08 02 A6 */	mflr r0
/* 80CD2910  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CD2914  39 61 00 50 */	addi r11, r1, 0x50
/* 80CD2918  4B 68 F8 B9 */	bl _savegpr_26
/* 80CD291C  7C 7F 1B 78 */	mr r31, r3
/* 80CD2920  7C 9A 23 78 */	mr r26, r4
/* 80CD2924  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha /* 0x80CD5CFC@ha */
/* 80CD2928  3B A3 5C FC */	addi r29, r3, m__21daObj_Sekizoa_Param_c@l /* 0x80CD5CFC@l */
/* 80CD292C  3B 80 00 00 */	li r28, 0
/* 80CD2930  3B 60 FF FF */	li r27, -1
/* 80CD2934  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD2938  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD293C  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80CD2940  7F C3 F3 78 */	mr r3, r30
/* 80CD2944  3C A0 80 CD */	lis r5, d_a_obj_sekizoa__stringBase0@ha /* 0x80CD5E64@ha */
/* 80CD2948  38 A5 5E 64 */	addi r5, r5, d_a_obj_sekizoa__stringBase0@l /* 0x80CD5E64@l */
/* 80CD294C  38 A5 00 5F */	addi r5, r5, 0x5f
/* 80CD2950  38 C0 00 03 */	li r6, 3
/* 80CD2954  4B 37 57 99 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80CD2958  28 03 00 00 */	cmplwi r3, 0
/* 80CD295C  41 82 00 08 */	beq lbl_80CD2964
/* 80CD2960  83 63 00 00 */	lwz r27, 0(r3)
lbl_80CD2964:
/* 80CD2964  7F C3 F3 78 */	mr r3, r30
/* 80CD2968  7F 44 D3 78 */	mr r4, r26
/* 80CD296C  4B 37 53 E1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80CD2970  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2974  41 82 00 20 */	beq lbl_80CD2994
/* 80CD2978  2C 1B 00 01 */	cmpwi r27, 1
/* 80CD297C  41 82 00 10 */	beq lbl_80CD298C
/* 80CD2980  40 80 00 14 */	bge lbl_80CD2994
/* 80CD2984  48 00 00 10 */	b lbl_80CD2994
/* 80CD2988  48 00 00 0C */	b lbl_80CD2994
lbl_80CD298C:
/* 80CD298C  38 00 00 01 */	li r0, 1
/* 80CD2990  98 1F 11 74 */	stb r0, 0x1174(r31)
lbl_80CD2994:
/* 80CD2994  2C 1B 00 01 */	cmpwi r27, 1
/* 80CD2998  41 82 00 58 */	beq lbl_80CD29F0
/* 80CD299C  40 80 00 10 */	bge lbl_80CD29AC
/* 80CD29A0  2C 1B 00 00 */	cmpwi r27, 0
/* 80CD29A4  40 80 00 14 */	bge lbl_80CD29B8
/* 80CD29A8  48 00 01 A0 */	b lbl_80CD2B48
lbl_80CD29AC:
/* 80CD29AC  2C 1B 00 03 */	cmpwi r27, 3
/* 80CD29B0  40 80 01 98 */	bge lbl_80CD2B48
/* 80CD29B4  48 00 00 70 */	b lbl_80CD2A24
lbl_80CD29B8:
/* 80CD29B8  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD29BC  28 00 00 00 */	cmplwi r0, 0
/* 80CD29C0  40 82 00 28 */	bne lbl_80CD29E8
/* 80CD29C4  80 1F 11 58 */	lwz r0, 0x1158(r31)
/* 80CD29C8  2C 00 00 00 */	cmpwi r0, 0
/* 80CD29CC  41 82 00 0C */	beq lbl_80CD29D8
/* 80CD29D0  38 7F 11 58 */	addi r3, r31, 0x1158
/* 80CD29D4  48 00 2E B1 */	bl func_80CD5884
lbl_80CD29D8:
/* 80CD29D8  80 1F 11 58 */	lwz r0, 0x1158(r31)
/* 80CD29DC  7C 00 00 34 */	cntlzw r0, r0
/* 80CD29E0  54 1C DE 3E */	rlwinm r28, r0, 0x1b, 0x18, 0x1f
/* 80CD29E4  48 00 01 64 */	b lbl_80CD2B48
lbl_80CD29E8:
/* 80CD29E8  3B 80 00 01 */	li r28, 1
/* 80CD29EC  48 00 01 5C */	b lbl_80CD2B48
lbl_80CD29F0:
/* 80CD29F0  7F E3 FB 78 */	mr r3, r31
/* 80CD29F4  4B FF E5 21 */	bl jump__15daObj_Sekizoa_cFv
/* 80CD29F8  C0 1D 00 C0 */	lfs f0, 0xc0(r29)
/* 80CD29FC  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80CD2A00  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80CD2A04  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80CD2A08  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80CD2A0C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80CD2A10  88 1F 11 74 */	lbz r0, 0x1174(r31)
/* 80CD2A14  28 00 00 05 */	cmplwi r0, 5
/* 80CD2A18  40 82 01 30 */	bne lbl_80CD2B48
/* 80CD2A1C  3B 80 00 01 */	li r28, 1
/* 80CD2A20  48 00 01 28 */	b lbl_80CD2B48
lbl_80CD2A24:
/* 80CD2A24  88 1F 10 C8 */	lbz r0, 0x10c8(r31)
/* 80CD2A28  28 00 00 00 */	cmplwi r0, 0
/* 80CD2A2C  40 82 01 18 */	bne lbl_80CD2B44
/* 80CD2A30  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80CD2A34  4B 47 2C D5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80CD2A38  7C 7C 1B 78 */	mr r28, r3
/* 80CD2A3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD2A40  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD2A44  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80CD2A48  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CD2A4C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CD2A50  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CD2A54  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80CD2A58  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CD2A5C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CD2A60  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CD2A64  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CD2A68  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CD2A6C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CD2A70  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80CD2A74  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CD2A78  7F E3 FB 78 */	mr r3, r31
/* 80CD2A7C  38 81 00 20 */	addi r4, r1, 0x20
/* 80CD2A80  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80CD2A84  C0 3D 01 40 */	lfs f1, 0x140(r29)
/* 80CD2A88  C0 5D 01 30 */	lfs f2, 0x130(r29)
/* 80CD2A8C  C0 7D 01 34 */	lfs f3, 0x134(r29)
/* 80CD2A90  38 C0 00 00 */	li r6, 0
/* 80CD2A94  4B 47 82 5D */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 80CD2A98  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2A9C  40 82 00 60 */	bne lbl_80CD2AFC
/* 80CD2AA0  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 80CD2AA4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80CD2AA8  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CD2AAC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80CD2AB0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CD2AB4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80CD2AB8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CD2ABC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80CD2AC0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80CD2AC4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80CD2AC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CD2ACC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80CD2AD0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80CD2AD4  7F 83 E3 78 */	mr r3, r28
/* 80CD2AD8  38 81 00 08 */	addi r4, r1, 8
/* 80CD2ADC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80CD2AE0  C0 3D 01 40 */	lfs f1, 0x140(r29)
/* 80CD2AE4  C0 5D 01 30 */	lfs f2, 0x130(r29)
/* 80CD2AE8  C0 7D 01 34 */	lfs f3, 0x134(r29)
/* 80CD2AEC  38 C0 00 00 */	li r6, 0
/* 80CD2AF0  4B 47 82 01 */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 80CD2AF4  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2AF8  41 82 00 1C */	beq lbl_80CD2B14
lbl_80CD2AFC:
/* 80CD2AFC  38 00 00 03 */	li r0, 3
/* 80CD2B00  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80CD2B04  7F E3 FB 78 */	mr r3, r31
/* 80CD2B08  4B 47 77 1D */	bl evtChange__8daNpcT_cFv
/* 80CD2B0C  38 60 00 00 */	li r3, 0
/* 80CD2B10  48 00 00 3C */	b lbl_80CD2B4C
lbl_80CD2B14:
/* 80CD2B14  7F E3 FB 78 */	mr r3, r31
/* 80CD2B18  48 00 30 6D */	bl chkGoal__15daObj_Sekizoa_cFv
/* 80CD2B1C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2B20  41 82 00 24 */	beq lbl_80CD2B44
/* 80CD2B24  7F 83 E3 78 */	mr r3, r28
/* 80CD2B28  48 00 30 5D */	bl chkGoal__15daObj_Sekizoa_cFv
/* 80CD2B2C  2C 03 00 00 */	cmpwi r3, 0
/* 80CD2B30  41 82 00 14 */	beq lbl_80CD2B44
/* 80CD2B34  38 00 00 06 */	li r0, 6
/* 80CD2B38  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80CD2B3C  7F E3 FB 78 */	mr r3, r31
/* 80CD2B40  4B 47 76 E5 */	bl evtChange__8daNpcT_cFv
lbl_80CD2B44:
/* 80CD2B44  3B 80 00 01 */	li r28, 1
lbl_80CD2B48:
/* 80CD2B48  7F 83 E3 78 */	mr r3, r28
lbl_80CD2B4C:
/* 80CD2B4C  39 61 00 50 */	addi r11, r1, 0x50
/* 80CD2B50  4B 68 F6 CD */	bl _restgpr_26
/* 80CD2B54  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CD2B58  7C 08 03 A6 */	mtlr r0
/* 80CD2B5C  38 21 00 50 */	addi r1, r1, 0x50
/* 80CD2B60  4E 80 00 20 */	blr 
