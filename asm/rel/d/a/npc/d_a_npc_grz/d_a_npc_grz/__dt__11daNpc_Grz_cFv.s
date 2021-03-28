lbl_809E88C0:
/* 809E88C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E88C4  7C 08 02 A6 */	mflr r0
/* 809E88C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E88CC  39 61 00 20 */	addi r11, r1, 0x20
/* 809E88D0  4B 97 99 00 */	b _savegpr_26
/* 809E88D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809E88D8  7C 9F 23 78 */	mr r31, r4
/* 809E88DC  41 82 02 A8 */	beq lbl_809E8B84
/* 809E88E0  3C 60 80 9F */	lis r3, __vt__11daNpc_Grz_c@ha
/* 809E88E4  38 03 FB 04 */	addi r0, r3, __vt__11daNpc_Grz_c@l
/* 809E88E8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809E88EC  3B A0 00 00 */	li r29, 0
/* 809E88F0  3B 80 00 00 */	li r28, 0
/* 809E88F4  3C 60 80 9F */	lis r3, l_resNames@ha
/* 809E88F8  3B 43 F8 E8 */	addi r26, r3, l_resNames@l
/* 809E88FC  3C 60 80 9F */	lis r3, l_loadRes_list@ha
/* 809E8900  3B 63 F8 D4 */	addi r27, r3, l_loadRes_list@l
/* 809E8904  48 00 00 20 */	b lbl_809E8924
lbl_809E8908:
/* 809E8908  38 7C 1A 3C */	addi r3, r28, 0x1a3c
/* 809E890C  7C 7E 1A 14 */	add r3, r30, r3
/* 809E8910  54 00 10 3A */	slwi r0, r0, 2
/* 809E8914  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809E8918  4B 64 46 F0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809E891C  3B BD 00 04 */	addi r29, r29, 4
/* 809E8920  3B 9C 00 08 */	addi r28, r28, 8
lbl_809E8924:
/* 809E8924  88 1E 1A 7C */	lbz r0, 0x1a7c(r30)
/* 809E8928  54 00 10 3A */	slwi r0, r0, 2
/* 809E892C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809E8930  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809E8934  2C 00 00 00 */	cmpwi r0, 0
/* 809E8938  40 80 FF D0 */	bge lbl_809E8908
/* 809E893C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809E8940  28 00 00 00 */	cmplwi r0, 0
/* 809E8944  41 82 00 0C */	beq lbl_809E8950
/* 809E8948  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809E894C  4B 62 89 C4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809E8950:
/* 809E8950  38 7E 1A AC */	addi r3, r30, 0x1aac
/* 809E8954  3C 80 80 9F */	lis r4, __dt__Q211daNpc_Grz_c21daNpc_GrZ_prtclMngr_cFv@ha
/* 809E8958  38 84 86 58 */	addi r4, r4, __dt__Q211daNpc_Grz_c21daNpc_GrZ_prtclMngr_cFv@l
/* 809E895C  38 A0 00 5C */	li r5, 0x5c
/* 809E8960  38 C0 00 01 */	li r6, 1
/* 809E8964  4B 97 93 84 */	b __destroy_arr
/* 809E8968  38 7E 15 44 */	addi r3, r30, 0x1544
/* 809E896C  3C 80 80 9F */	lis r4, __dt__8dCcD_SphFv@ha
/* 809E8970  38 84 86 98 */	addi r4, r4, __dt__8dCcD_SphFv@l
/* 809E8974  38 A0 01 38 */	li r5, 0x138
/* 809E8978  38 C0 00 04 */	li r6, 4
/* 809E897C  4B 97 93 6C */	b __destroy_arr
/* 809E8980  34 1E 14 08 */	addic. r0, r30, 0x1408
/* 809E8984  41 82 00 84 */	beq lbl_809E8A08
/* 809E8988  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809E898C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809E8990  90 7E 14 44 */	stw r3, 0x1444(r30)
/* 809E8994  38 03 00 2C */	addi r0, r3, 0x2c
/* 809E8998  90 1E 15 28 */	stw r0, 0x1528(r30)
/* 809E899C  38 03 00 84 */	addi r0, r3, 0x84
/* 809E89A0  90 1E 15 40 */	stw r0, 0x1540(r30)
/* 809E89A4  34 1E 15 0C */	addic. r0, r30, 0x150c
/* 809E89A8  41 82 00 54 */	beq lbl_809E89FC
/* 809E89AC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809E89B0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809E89B4  90 7E 15 28 */	stw r3, 0x1528(r30)
/* 809E89B8  38 03 00 58 */	addi r0, r3, 0x58
/* 809E89BC  90 1E 15 40 */	stw r0, 0x1540(r30)
/* 809E89C0  34 1E 15 2C */	addic. r0, r30, 0x152c
/* 809E89C4  41 82 00 10 */	beq lbl_809E89D4
/* 809E89C8  3C 60 80 9F */	lis r3, __vt__8cM3dGCyl@ha
/* 809E89CC  38 03 FB B8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809E89D0  90 1E 15 40 */	stw r0, 0x1540(r30)
lbl_809E89D4:
/* 809E89D4  34 1E 15 0C */	addic. r0, r30, 0x150c
/* 809E89D8  41 82 00 24 */	beq lbl_809E89FC
/* 809E89DC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809E89E0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809E89E4  90 1E 15 28 */	stw r0, 0x1528(r30)
/* 809E89E8  34 1E 15 0C */	addic. r0, r30, 0x150c
/* 809E89EC  41 82 00 10 */	beq lbl_809E89FC
/* 809E89F0  3C 60 80 9F */	lis r3, __vt__8cM3dGAab@ha
/* 809E89F4  38 03 FB C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809E89F8  90 1E 15 24 */	stw r0, 0x1524(r30)
lbl_809E89FC:
/* 809E89FC  38 7E 14 08 */	addi r3, r30, 0x1408
/* 809E8A00  38 80 00 00 */	li r4, 0
/* 809E8A04  4B 69 B6 E0 */	b __dt__12dCcD_GObjInfFv
lbl_809E8A08:
/* 809E8A08  34 1E 12 CC */	addic. r0, r30, 0x12cc
/* 809E8A0C  41 82 00 84 */	beq lbl_809E8A90
/* 809E8A10  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809E8A14  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809E8A18  90 7E 13 08 */	stw r3, 0x1308(r30)
/* 809E8A1C  38 03 00 2C */	addi r0, r3, 0x2c
/* 809E8A20  90 1E 13 EC */	stw r0, 0x13ec(r30)
/* 809E8A24  38 03 00 84 */	addi r0, r3, 0x84
/* 809E8A28  90 1E 14 04 */	stw r0, 0x1404(r30)
/* 809E8A2C  34 1E 13 D0 */	addic. r0, r30, 0x13d0
/* 809E8A30  41 82 00 54 */	beq lbl_809E8A84
/* 809E8A34  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809E8A38  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809E8A3C  90 7E 13 EC */	stw r3, 0x13ec(r30)
/* 809E8A40  38 03 00 58 */	addi r0, r3, 0x58
/* 809E8A44  90 1E 14 04 */	stw r0, 0x1404(r30)
/* 809E8A48  34 1E 13 F0 */	addic. r0, r30, 0x13f0
/* 809E8A4C  41 82 00 10 */	beq lbl_809E8A5C
/* 809E8A50  3C 60 80 9F */	lis r3, __vt__8cM3dGCyl@ha
/* 809E8A54  38 03 FB B8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809E8A58  90 1E 14 04 */	stw r0, 0x1404(r30)
lbl_809E8A5C:
/* 809E8A5C  34 1E 13 D0 */	addic. r0, r30, 0x13d0
/* 809E8A60  41 82 00 24 */	beq lbl_809E8A84
/* 809E8A64  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809E8A68  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809E8A6C  90 1E 13 EC */	stw r0, 0x13ec(r30)
/* 809E8A70  34 1E 13 D0 */	addic. r0, r30, 0x13d0
/* 809E8A74  41 82 00 10 */	beq lbl_809E8A84
/* 809E8A78  3C 60 80 9F */	lis r3, __vt__8cM3dGAab@ha
/* 809E8A7C  38 03 FB C4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809E8A80  90 1E 13 E8 */	stw r0, 0x13e8(r30)
lbl_809E8A84:
/* 809E8A84  38 7E 12 CC */	addi r3, r30, 0x12cc
/* 809E8A88  38 80 00 00 */	li r4, 0
/* 809E8A8C  4B 69 B6 58 */	b __dt__12dCcD_GObjInfFv
lbl_809E8A90:
/* 809E8A90  38 7E 12 A8 */	addi r3, r30, 0x12a8
/* 809E8A94  3C 80 80 9F */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809E8A98  38 84 E7 DC */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809E8A9C  38 A0 00 08 */	li r5, 8
/* 809E8AA0  38 C0 00 04 */	li r6, 4
/* 809E8AA4  4B 97 92 44 */	b __destroy_arr
/* 809E8AA8  34 1E 0C 78 */	addic. r0, r30, 0xc78
/* 809E8AAC  41 82 00 24 */	beq lbl_809E8AD0
/* 809E8AB0  3C 60 80 9F */	lis r3, __vt__13daNpcF_Path_c@ha
/* 809E8AB4  38 03 FB DC */	addi r0, r3, __vt__13daNpcF_Path_c@l
/* 809E8AB8  90 1E 12 A4 */	stw r0, 0x12a4(r30)
/* 809E8ABC  34 1E 0C 98 */	addic. r0, r30, 0xc98
/* 809E8AC0  41 82 00 10 */	beq lbl_809E8AD0
/* 809E8AC4  3C 60 80 9F */	lis r3, __vt__16daNpcF_SPCurve_c@ha
/* 809E8AC8  38 03 FB D0 */	addi r0, r3, __vt__16daNpcF_SPCurve_c@l
/* 809E8ACC  90 1E 12 A0 */	stw r0, 0x12a0(r30)
lbl_809E8AD0:
/* 809E8AD0  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 809E8AD4  41 82 00 88 */	beq lbl_809E8B5C
/* 809E8AD8  3C 60 80 9F */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 809E8ADC  38 03 FB E8 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 809E8AE0  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 809E8AE4  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 809E8AE8  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809E8AEC  38 84 E9 D8 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E8AF0  38 A0 00 06 */	li r5, 6
/* 809E8AF4  38 C0 00 04 */	li r6, 4
/* 809E8AF8  4B 97 91 F0 */	b __destroy_arr
/* 809E8AFC  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 809E8B00  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809E8B04  38 84 E9 D8 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E8B08  38 A0 00 06 */	li r5, 6
/* 809E8B0C  38 C0 00 04 */	li r6, 4
/* 809E8B10  4B 97 91 D8 */	b __destroy_arr
/* 809E8B14  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 809E8B18  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809E8B1C  38 84 E9 D8 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E8B20  38 A0 00 06 */	li r5, 6
/* 809E8B24  38 C0 00 04 */	li r6, 4
/* 809E8B28  4B 97 91 C0 */	b __destroy_arr
/* 809E8B2C  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 809E8B30  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha
/* 809E8B34  38 84 E9 D8 */	addi r4, r4, __dt__5csXyzFv@l
/* 809E8B38  38 A0 00 06 */	li r5, 6
/* 809E8B3C  38 C0 00 04 */	li r6, 4
/* 809E8B40  4B 97 91 A8 */	b __destroy_arr
/* 809E8B44  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 809E8B48  3C 80 80 9F */	lis r4, __dt__4cXyzFv@ha
/* 809E8B4C  38 84 EA 18 */	addi r4, r4, __dt__4cXyzFv@l
/* 809E8B50  38 A0 00 0C */	li r5, 0xc
/* 809E8B54  38 C0 00 04 */	li r6, 4
/* 809E8B58  4B 97 91 90 */	b __destroy_arr
lbl_809E8B5C:
/* 809E8B5C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809E8B60  38 80 FF FF */	li r4, -1
/* 809E8B64  4B 8D 78 BC */	b __dt__10Z2CreatureFv
/* 809E8B68  7F C3 F3 78 */	mr r3, r30
/* 809E8B6C  38 80 00 00 */	li r4, 0
/* 809E8B70  48 00 5E E9 */	bl __dt__8daNpcF_cFv
/* 809E8B74  7F E0 07 35 */	extsh. r0, r31
/* 809E8B78  40 81 00 0C */	ble lbl_809E8B84
/* 809E8B7C  7F C3 F3 78 */	mr r3, r30
/* 809E8B80  4B 8E 61 BC */	b __dl__FPv
lbl_809E8B84:
/* 809E8B84  7F C3 F3 78 */	mr r3, r30
/* 809E8B88  39 61 00 20 */	addi r11, r1, 0x20
/* 809E8B8C  4B 97 96 90 */	b _restgpr_26
/* 809E8B90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E8B94  7C 08 03 A6 */	mtlr r0
/* 809E8B98  38 21 00 20 */	addi r1, r1, 0x20
/* 809E8B9C  4E 80 00 20 */	blr 
