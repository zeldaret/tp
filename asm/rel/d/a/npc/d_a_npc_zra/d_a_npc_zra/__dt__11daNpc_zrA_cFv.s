lbl_80B79828:
/* 80B79828  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B7982C  7C 08 02 A6 */	mflr r0
/* 80B79830  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B79834  39 61 00 30 */	addi r11, r1, 0x30
/* 80B79838  4B 7E 89 95 */	bl _savegpr_25
/* 80B7983C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B79840  7C 9F 23 78 */	mr r31, r4
/* 80B79844  41 82 02 F8 */	beq lbl_80B79B3C
/* 80B79848  3C 60 80 B9 */	lis r3, __vt__11daNpc_zrA_c@ha /* 0x80B8D944@ha */
/* 80B7984C  38 03 D9 44 */	addi r0, r3, __vt__11daNpc_zrA_c@l /* 0x80B8D944@l */
/* 80B79850  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B79854  3B 20 00 00 */	li r25, 0
/* 80B79858  3B A0 00 00 */	li r29, 0
/* 80B7985C  3B 80 00 00 */	li r28, 0
/* 80B79860  3C 60 80 B9 */	lis r3, l_resNames@ha /* 0x80B8D300@ha */
/* 80B79864  3B 43 D3 00 */	addi r26, r3, l_resNames@l /* 0x80B8D300@l */
/* 80B79868  3C 60 80 B9 */	lis r3, l_loadRes_list@ha /* 0x80B8D2E0@ha */
/* 80B7986C  3B 63 D2 E0 */	addi r27, r3, l_loadRes_list@l /* 0x80B8D2E0@l */
/* 80B79870  48 00 00 5C */	b lbl_80B798CC
lbl_80B79874:
/* 80B79874  7C 04 03 78 */	mr r4, r0
/* 80B79878  2C 00 00 04 */	cmpwi r0, 4
/* 80B7987C  40 82 00 18 */	bne lbl_80B79894
/* 80B79880  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 80B79884  28 00 00 00 */	cmplwi r0, 0
/* 80B79888  41 82 00 24 */	beq lbl_80B798AC
/* 80B7988C  38 80 00 05 */	li r4, 5
/* 80B79890  48 00 00 1C */	b lbl_80B798AC
lbl_80B79894:
/* 80B79894  2C 00 00 01 */	cmpwi r0, 1
/* 80B79898  40 82 00 14 */	bne lbl_80B798AC
/* 80B7989C  88 1E 14 E9 */	lbz r0, 0x14e9(r30)
/* 80B798A0  28 00 00 00 */	cmplwi r0, 0
/* 80B798A4  40 82 00 08 */	bne lbl_80B798AC
/* 80B798A8  38 80 00 03 */	li r4, 3
lbl_80B798AC:
/* 80B798AC  38 7C 14 8C */	addi r3, r28, 0x148c
/* 80B798B0  7C 7E 1A 14 */	add r3, r30, r3
/* 80B798B4  54 80 10 3A */	slwi r0, r4, 2
/* 80B798B8  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80B798BC  4B 4B 37 4D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B798C0  3B 39 00 01 */	addi r25, r25, 1
/* 80B798C4  3B BD 00 04 */	addi r29, r29, 4
/* 80B798C8  3B 9C 00 08 */	addi r28, r28, 8
lbl_80B798CC:
/* 80B798CC  88 1E 14 E8 */	lbz r0, 0x14e8(r30)
/* 80B798D0  54 00 10 3A */	slwi r0, r0, 2
/* 80B798D4  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80B798D8  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80B798DC  2C 00 00 00 */	cmpwi r0, 0
/* 80B798E0  40 80 FF 94 */	bge lbl_80B79874
/* 80B798E4  88 1E 14 E9 */	lbz r0, 0x14e9(r30)
/* 80B798E8  28 00 00 02 */	cmplwi r0, 2
/* 80B798EC  41 82 00 4C */	beq lbl_80B79938
/* 80B798F0  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 80B798F4  28 00 00 00 */	cmplwi r0, 0
/* 80B798F8  41 82 00 24 */	beq lbl_80B7991C
/* 80B798FC  57 23 18 38 */	slwi r3, r25, 3
/* 80B79900  38 63 14 8C */	addi r3, r3, 0x148c
/* 80B79904  7C 7E 1A 14 */	add r3, r30, r3
/* 80B79908  3C 80 80 B9 */	lis r4, l_resNames@ha /* 0x80B8D300@ha */
/* 80B7990C  38 84 D3 00 */	addi r4, r4, l_resNames@l /* 0x80B8D300@l */
/* 80B79910  80 84 00 28 */	lwz r4, 0x28(r4)
/* 80B79914  4B 4B 36 F5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B79918  48 00 00 20 */	b lbl_80B79938
lbl_80B7991C:
/* 80B7991C  57 23 18 38 */	slwi r3, r25, 3
/* 80B79920  38 63 14 8C */	addi r3, r3, 0x148c
/* 80B79924  7C 7E 1A 14 */	add r3, r30, r3
/* 80B79928  3C 80 80 B9 */	lis r4, l_resNames@ha /* 0x80B8D300@ha */
/* 80B7992C  38 84 D3 00 */	addi r4, r4, l_resNames@l /* 0x80B8D300@l */
/* 80B79930  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 80B79934  4B 4B 36 D5 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_80B79938:
/* 80B79938  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B7993C  28 00 00 00 */	cmplwi r0, 0
/* 80B79940  41 82 00 0C */	beq lbl_80B7994C
/* 80B79944  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B79948  4B 49 79 C9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B7994C:
/* 80B7994C  38 7E 15 9C */	addi r3, r30, 0x159c
/* 80B79950  3C 80 80 B8 */	lis r4, __dt__4cXyzFv@ha /* 0x80B78730@ha */
/* 80B79954  38 84 87 30 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B78730@l */
/* 80B79958  38 A0 00 0C */	li r5, 0xc
/* 80B7995C  38 C0 00 03 */	li r6, 3
/* 80B79960  4B 7E 83 89 */	bl __destroy_arr
/* 80B79964  34 1E 13 38 */	addic. r0, r30, 0x1338
/* 80B79968  41 82 00 84 */	beq lbl_80B799EC
/* 80B7996C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B79970  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B79974  90 7E 13 74 */	stw r3, 0x1374(r30)
/* 80B79978  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B7997C  90 1E 14 58 */	stw r0, 0x1458(r30)
/* 80B79980  38 03 00 84 */	addi r0, r3, 0x84
/* 80B79984  90 1E 14 70 */	stw r0, 0x1470(r30)
/* 80B79988  34 1E 14 3C */	addic. r0, r30, 0x143c
/* 80B7998C  41 82 00 54 */	beq lbl_80B799E0
/* 80B79990  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B79994  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B79998  90 7E 14 58 */	stw r3, 0x1458(r30)
/* 80B7999C  38 03 00 58 */	addi r0, r3, 0x58
/* 80B799A0  90 1E 14 70 */	stw r0, 0x1470(r30)
/* 80B799A4  34 1E 14 5C */	addic. r0, r30, 0x145c
/* 80B799A8  41 82 00 10 */	beq lbl_80B799B8
/* 80B799AC  3C 60 80 B9 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B8D9E0@ha */
/* 80B799B0  38 03 D9 E0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B8D9E0@l */
/* 80B799B4  90 1E 14 70 */	stw r0, 0x1470(r30)
lbl_80B799B8:
/* 80B799B8  34 1E 14 3C */	addic. r0, r30, 0x143c
/* 80B799BC  41 82 00 24 */	beq lbl_80B799E0
/* 80B799C0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B799C4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B799C8  90 1E 14 58 */	stw r0, 0x1458(r30)
/* 80B799CC  34 1E 14 3C */	addic. r0, r30, 0x143c
/* 80B799D0  41 82 00 10 */	beq lbl_80B799E0
/* 80B799D4  3C 60 80 B9 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B8D9EC@ha */
/* 80B799D8  38 03 D9 EC */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B8D9EC@l */
/* 80B799DC  90 1E 14 54 */	stw r0, 0x1454(r30)
lbl_80B799E0:
/* 80B799E0  38 7E 13 38 */	addi r3, r30, 0x1338
/* 80B799E4  38 80 00 00 */	li r4, 0
/* 80B799E8  4B 50 A6 FD */	bl __dt__12dCcD_GObjInfFv
lbl_80B799EC:
/* 80B799EC  38 7E 13 1C */	addi r3, r30, 0x131c
/* 80B799F0  3C 80 80 B8 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B7EDF0@ha */
/* 80B799F4  38 84 ED F0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B7EDF0@l */
/* 80B799F8  38 A0 00 08 */	li r5, 8
/* 80B799FC  38 C0 00 03 */	li r6, 3
/* 80B79A00  4B 7E 82 E9 */	bl __destroy_arr
/* 80B79A04  34 1E 12 48 */	addic. r0, r30, 0x1248
/* 80B79A08  41 82 00 88 */	beq lbl_80B79A90
/* 80B79A0C  3C 60 80 B9 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80B8D9F8@ha */
/* 80B79A10  38 03 D9 F8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80B8D9F8@l */
/* 80B79A14  90 1E 12 E0 */	stw r0, 0x12e0(r30)
/* 80B79A18  38 7E 12 C4 */	addi r3, r30, 0x12c4
/* 80B79A1C  3C 80 80 B8 */	lis r4, __dt__5csXyzFv@ha /* 0x80B7EF44@ha */
/* 80B79A20  38 84 EF 44 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B7EF44@l */
/* 80B79A24  38 A0 00 06 */	li r5, 6
/* 80B79A28  38 C0 00 04 */	li r6, 4
/* 80B79A2C  4B 7E 82 BD */	bl __destroy_arr
/* 80B79A30  38 7E 12 AC */	addi r3, r30, 0x12ac
/* 80B79A34  3C 80 80 B8 */	lis r4, __dt__5csXyzFv@ha /* 0x80B7EF44@ha */
/* 80B79A38  38 84 EF 44 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B7EF44@l */
/* 80B79A3C  38 A0 00 06 */	li r5, 6
/* 80B79A40  38 C0 00 04 */	li r6, 4
/* 80B79A44  4B 7E 82 A5 */	bl __destroy_arr
/* 80B79A48  38 7E 12 94 */	addi r3, r30, 0x1294
/* 80B79A4C  3C 80 80 B8 */	lis r4, __dt__5csXyzFv@ha /* 0x80B7EF44@ha */
/* 80B79A50  38 84 EF 44 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B7EF44@l */
/* 80B79A54  38 A0 00 06 */	li r5, 6
/* 80B79A58  38 C0 00 04 */	li r6, 4
/* 80B79A5C  4B 7E 82 8D */	bl __destroy_arr
/* 80B79A60  38 7E 12 7C */	addi r3, r30, 0x127c
/* 80B79A64  3C 80 80 B8 */	lis r4, __dt__5csXyzFv@ha /* 0x80B7EF44@ha */
/* 80B79A68  38 84 EF 44 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80B7EF44@l */
/* 80B79A6C  38 A0 00 06 */	li r5, 6
/* 80B79A70  38 C0 00 04 */	li r6, 4
/* 80B79A74  4B 7E 82 75 */	bl __destroy_arr
/* 80B79A78  38 7E 12 48 */	addi r3, r30, 0x1248
/* 80B79A7C  3C 80 80 B8 */	lis r4, __dt__4cXyzFv@ha /* 0x80B78730@ha */
/* 80B79A80  38 84 87 30 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B78730@l */
/* 80B79A84  38 A0 00 0C */	li r5, 0xc
/* 80B79A88  38 C0 00 04 */	li r6, 4
/* 80B79A8C  4B 7E 82 5D */	bl __destroy_arr
lbl_80B79A90:
/* 80B79A90  34 1E 0C 18 */	addic. r0, r30, 0xc18
/* 80B79A94  41 82 00 38 */	beq lbl_80B79ACC
/* 80B79A98  3C 60 80 B9 */	lis r3, __vt__16daNpc_zrA_Path_c@ha /* 0x80B8DA04@ha */
/* 80B79A9C  38 03 DA 04 */	addi r0, r3, __vt__16daNpc_zrA_Path_c@l /* 0x80B8DA04@l */
/* 80B79AA0  90 1E 12 44 */	stw r0, 0x1244(r30)
/* 80B79AA4  34 1E 0C 18 */	addic. r0, r30, 0xc18
/* 80B79AA8  41 82 00 24 */	beq lbl_80B79ACC
/* 80B79AAC  3C 60 80 B9 */	lis r3, __vt__13daNpcF_Path_c@ha /* 0x80B8DA1C@ha */
/* 80B79AB0  38 03 DA 1C */	addi r0, r3, __vt__13daNpcF_Path_c@l /* 0x80B8DA1C@l */
/* 80B79AB4  90 1E 12 44 */	stw r0, 0x1244(r30)
/* 80B79AB8  34 1E 0C 38 */	addic. r0, r30, 0xc38
/* 80B79ABC  41 82 00 10 */	beq lbl_80B79ACC
/* 80B79AC0  3C 60 80 B9 */	lis r3, __vt__16daNpcF_SPCurve_c@ha /* 0x80B8DA10@ha */
/* 80B79AC4  38 03 DA 10 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l /* 0x80B8DA10@l */
/* 80B79AC8  90 1E 12 40 */	stw r0, 0x1240(r30)
lbl_80B79ACC:
/* 80B79ACC  34 1E 0C 00 */	addic. r0, r30, 0xc00
/* 80B79AD0  41 82 00 20 */	beq lbl_80B79AF0
/* 80B79AD4  34 1E 0C 00 */	addic. r0, r30, 0xc00
/* 80B79AD8  41 82 00 18 */	beq lbl_80B79AF0
/* 80B79ADC  34 1E 0C 00 */	addic. r0, r30, 0xc00
/* 80B79AE0  41 82 00 10 */	beq lbl_80B79AF0
/* 80B79AE4  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B8DA28@ha */
/* 80B79AE8  38 03 DA 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B8DA28@l */
/* 80B79AEC  90 1E 0C 00 */	stw r0, 0xc00(r30)
lbl_80B79AF0:
/* 80B79AF0  34 1E 0B E8 */	addic. r0, r30, 0xbe8
/* 80B79AF4  41 82 00 20 */	beq lbl_80B79B14
/* 80B79AF8  34 1E 0B E8 */	addic. r0, r30, 0xbe8
/* 80B79AFC  41 82 00 18 */	beq lbl_80B79B14
/* 80B79B00  34 1E 0B E8 */	addic. r0, r30, 0xbe8
/* 80B79B04  41 82 00 10 */	beq lbl_80B79B14
/* 80B79B08  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B8DA28@ha */
/* 80B79B0C  38 03 DA 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B8DA28@l */
/* 80B79B10  90 1E 0B E8 */	stw r0, 0xbe8(r30)
lbl_80B79B14:
/* 80B79B14  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80B79B18  38 80 FF FF */	li r4, -1
/* 80B79B1C  4B 74 69 05 */	bl __dt__10Z2CreatureFv
/* 80B79B20  7F C3 F3 78 */	mr r3, r30
/* 80B79B24  38 80 00 00 */	li r4, 0
/* 80B79B28  48 00 55 C1 */	bl __dt__8daNpcF_cFv
/* 80B79B2C  7F E0 07 35 */	extsh. r0, r31
/* 80B79B30  40 81 00 0C */	ble lbl_80B79B3C
/* 80B79B34  7F C3 F3 78 */	mr r3, r30
/* 80B79B38  4B 75 52 05 */	bl __dl__FPv
lbl_80B79B3C:
/* 80B79B3C  7F C3 F3 78 */	mr r3, r30
/* 80B79B40  39 61 00 30 */	addi r11, r1, 0x30
/* 80B79B44  4B 7E 86 D5 */	bl _restgpr_25
/* 80B79B48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B79B4C  7C 08 03 A6 */	mtlr r0
/* 80B79B50  38 21 00 30 */	addi r1, r1, 0x30
/* 80B79B54  4E 80 00 20 */	blr 
