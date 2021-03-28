lbl_80B14844:
/* 80B14844  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B14848  7C 08 02 A6 */	mflr r0
/* 80B1484C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B14850  39 61 00 20 */	addi r11, r1, 0x20
/* 80B14854  4B 84 D9 7C */	b _savegpr_26
/* 80B14858  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B1485C  7C 9F 23 78 */	mr r31, r4
/* 80B14860  41 82 02 7C */	beq lbl_80B14ADC
/* 80B14864  3C 60 80 B2 */	lis r3, __vt__10daNpcTks_c@ha
/* 80B14868  38 03 E4 64 */	addi r0, r3, __vt__10daNpcTks_c@l
/* 80B1486C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B14870  3B A0 00 00 */	li r29, 0
/* 80B14874  3B 80 00 00 */	li r28, 0
/* 80B14878  3C 60 80 B2 */	lis r3, l_arcNames@ha
/* 80B1487C  3B 43 E1 F4 */	addi r26, r3, l_arcNames@l
/* 80B14880  3C 60 80 B2 */	lis r3, l_loadRes_list@ha
/* 80B14884  3B 63 E1 E8 */	addi r27, r3, l_loadRes_list@l
/* 80B14888  48 00 00 20 */	b lbl_80B148A8
lbl_80B1488C:
/* 80B1488C  38 7C 13 58 */	addi r3, r28, 0x1358
/* 80B14890  7C 7E 1A 14 */	add r3, r30, r3
/* 80B14894  54 00 10 3A */	slwi r0, r0, 2
/* 80B14898  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80B1489C  4B 51 87 6C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B148A0  3B BD 00 04 */	addi r29, r29, 4
/* 80B148A4  3B 9C 00 08 */	addi r28, r28, 8
lbl_80B148A8:
/* 80B148A8  88 1E 11 5F */	lbz r0, 0x115f(r30)
/* 80B148AC  54 00 10 3A */	slwi r0, r0, 2
/* 80B148B0  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80B148B4  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80B148B8  2C 00 00 00 */	cmpwi r0, 0
/* 80B148BC  40 80 FF D0 */	bge lbl_80B1488C
/* 80B148C0  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B148C4  28 00 00 00 */	cmplwi r0, 0
/* 80B148C8  41 82 00 0C */	beq lbl_80B148D4
/* 80B148CC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B148D0  4B 4F CA 40 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B148D4:
/* 80B148D4  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 80B148D8  3C 03 00 01 */	addis r0, r3, 1
/* 80B148DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B148E0  41 82 00 08 */	beq lbl_80B148E8
/* 80B148E4  4B 50 53 D4 */	b fopAcM_delete__FUi
lbl_80B148E8:
/* 80B148E8  34 1E 12 10 */	addic. r0, r30, 0x1210
/* 80B148EC  41 82 00 84 */	beq lbl_80B14970
/* 80B148F0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B148F4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B148F8  90 7E 12 4C */	stw r3, 0x124c(r30)
/* 80B148FC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B14900  90 1E 13 30 */	stw r0, 0x1330(r30)
/* 80B14904  38 03 00 84 */	addi r0, r3, 0x84
/* 80B14908  90 1E 13 48 */	stw r0, 0x1348(r30)
/* 80B1490C  34 1E 13 14 */	addic. r0, r30, 0x1314
/* 80B14910  41 82 00 54 */	beq lbl_80B14964
/* 80B14914  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B14918  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B1491C  90 7E 13 30 */	stw r3, 0x1330(r30)
/* 80B14920  38 03 00 58 */	addi r0, r3, 0x58
/* 80B14924  90 1E 13 48 */	stw r0, 0x1348(r30)
/* 80B14928  34 1E 13 34 */	addic. r0, r30, 0x1334
/* 80B1492C  41 82 00 10 */	beq lbl_80B1493C
/* 80B14930  3C 60 80 B2 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B14934  38 03 E5 18 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B14938  90 1E 13 48 */	stw r0, 0x1348(r30)
lbl_80B1493C:
/* 80B1493C  34 1E 13 14 */	addic. r0, r30, 0x1314
/* 80B14940  41 82 00 24 */	beq lbl_80B14964
/* 80B14944  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B14948  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B1494C  90 1E 13 30 */	stw r0, 0x1330(r30)
/* 80B14950  34 1E 13 14 */	addic. r0, r30, 0x1314
/* 80B14954  41 82 00 10 */	beq lbl_80B14964
/* 80B14958  3C 60 80 B2 */	lis r3, __vt__8cM3dGAab@ha
/* 80B1495C  38 03 E5 24 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B14960  90 1E 13 2C */	stw r0, 0x132c(r30)
lbl_80B14964:
/* 80B14964  38 7E 12 10 */	addi r3, r30, 0x1210
/* 80B14968  38 80 00 00 */	li r4, 0
/* 80B1496C  4B 56 F7 78 */	b __dt__12dCcD_GObjInfFv
lbl_80B14970:
/* 80B14970  38 7E 12 00 */	addi r3, r30, 0x1200
/* 80B14974  3C 80 80 B2 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80B14978  38 84 D4 40 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80B1497C  38 A0 00 08 */	li r5, 8
/* 80B14980  38 C0 00 01 */	li r6, 1
/* 80B14984  4B 84 D3 64 */	b __destroy_arr
/* 80B14988  34 1E 11 64 */	addic. r0, r30, 0x1164
/* 80B1498C  41 82 00 88 */	beq lbl_80B14A14
/* 80B14990  3C 60 80 B2 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80B14994  38 03 E5 0C */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80B14998  90 1E 11 FC */	stw r0, 0x11fc(r30)
/* 80B1499C  38 7E 11 E0 */	addi r3, r30, 0x11e0
/* 80B149A0  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha
/* 80B149A4  38 84 D5 9C */	addi r4, r4, __dt__5csXyzFv@l
/* 80B149A8  38 A0 00 06 */	li r5, 6
/* 80B149AC  38 C0 00 04 */	li r6, 4
/* 80B149B0  4B 84 D3 38 */	b __destroy_arr
/* 80B149B4  38 7E 11 C8 */	addi r3, r30, 0x11c8
/* 80B149B8  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha
/* 80B149BC  38 84 D5 9C */	addi r4, r4, __dt__5csXyzFv@l
/* 80B149C0  38 A0 00 06 */	li r5, 6
/* 80B149C4  38 C0 00 04 */	li r6, 4
/* 80B149C8  4B 84 D3 20 */	b __destroy_arr
/* 80B149CC  38 7E 11 B0 */	addi r3, r30, 0x11b0
/* 80B149D0  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha
/* 80B149D4  38 84 D5 9C */	addi r4, r4, __dt__5csXyzFv@l
/* 80B149D8  38 A0 00 06 */	li r5, 6
/* 80B149DC  38 C0 00 04 */	li r6, 4
/* 80B149E0  4B 84 D3 08 */	b __destroy_arr
/* 80B149E4  38 7E 11 98 */	addi r3, r30, 0x1198
/* 80B149E8  3C 80 80 B2 */	lis r4, __dt__5csXyzFv@ha
/* 80B149EC  38 84 D5 9C */	addi r4, r4, __dt__5csXyzFv@l
/* 80B149F0  38 A0 00 06 */	li r5, 6
/* 80B149F4  38 C0 00 04 */	li r6, 4
/* 80B149F8  4B 84 D2 F0 */	b __destroy_arr
/* 80B149FC  38 7E 11 64 */	addi r3, r30, 0x1164
/* 80B14A00  3C 80 80 B2 */	lis r4, __dt__4cXyzFv@ha
/* 80B14A04  38 84 D6 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B14A08  38 A0 00 0C */	li r5, 0xc
/* 80B14A0C  38 C0 00 04 */	li r6, 4
/* 80B14A10  4B 84 D2 D8 */	b __destroy_arr
lbl_80B14A14:
/* 80B14A14  34 1E 0B D8 */	addic. r0, r30, 0xbd8
/* 80B14A18  41 82 00 9C */	beq lbl_80B14AB4
/* 80B14A1C  38 7E 11 30 */	addi r3, r30, 0x1130
/* 80B14A20  38 80 FF FF */	li r4, -1
/* 80B14A24  4B 75 36 8C */	b __dt__13cBgS_PolyInfoFv
/* 80B14A28  34 7E 0F F4 */	addic. r3, r30, 0xff4
/* 80B14A2C  41 82 00 7C */	beq lbl_80B14AA8
/* 80B14A30  3C 80 80 3B */	lis r4, __vt__8dCcD_Cyl@ha
/* 80B14A34  38 84 C0 50 */	addi r4, r4, __vt__8dCcD_Cyl@l
/* 80B14A38  90 9E 10 30 */	stw r4, 0x1030(r30)
/* 80B14A3C  38 04 00 2C */	addi r0, r4, 0x2c
/* 80B14A40  90 1E 11 14 */	stw r0, 0x1114(r30)
/* 80B14A44  38 04 00 84 */	addi r0, r4, 0x84
/* 80B14A48  90 1E 11 2C */	stw r0, 0x112c(r30)
/* 80B14A4C  34 BE 10 F8 */	addic. r5, r30, 0x10f8
/* 80B14A50  41 82 00 50 */	beq lbl_80B14AA0
/* 80B14A54  3C 80 80 3C */	lis r4, __vt__12cCcD_CylAttr@ha
/* 80B14A58  38 84 35 A4 */	addi r4, r4, __vt__12cCcD_CylAttr@l
/* 80B14A5C  90 9E 11 14 */	stw r4, 0x1114(r30)
/* 80B14A60  38 04 00 58 */	addi r0, r4, 0x58
/* 80B14A64  90 1E 11 2C */	stw r0, 0x112c(r30)
/* 80B14A68  34 1E 11 18 */	addic. r0, r30, 0x1118
/* 80B14A6C  41 82 00 10 */	beq lbl_80B14A7C
/* 80B14A70  3C 80 80 B2 */	lis r4, __vt__8cM3dGCyl@ha
/* 80B14A74  38 04 E5 18 */	addi r0, r4, __vt__8cM3dGCyl@l
/* 80B14A78  90 1E 11 2C */	stw r0, 0x112c(r30)
lbl_80B14A7C:
/* 80B14A7C  28 05 00 00 */	cmplwi r5, 0
/* 80B14A80  41 82 00 20 */	beq lbl_80B14AA0
/* 80B14A84  3C 80 80 3C */	lis r4, __vt__14cCcD_ShapeAttr@ha
/* 80B14A88  38 04 36 D0 */	addi r0, r4, __vt__14cCcD_ShapeAttr@l
/* 80B14A8C  90 1E 11 14 */	stw r0, 0x1114(r30)
/* 80B14A90  41 82 00 10 */	beq lbl_80B14AA0
/* 80B14A94  3C 80 80 B2 */	lis r4, __vt__8cM3dGAab@ha
/* 80B14A98  38 04 E5 24 */	addi r0, r4, __vt__8cM3dGAab@l
/* 80B14A9C  90 1E 11 10 */	stw r0, 0x1110(r30)
lbl_80B14AA0:
/* 80B14AA0  38 80 00 00 */	li r4, 0
/* 80B14AA4  4B 56 F6 40 */	b __dt__12dCcD_GObjInfFv
lbl_80B14AA8:
/* 80B14AA8  38 7E 0F 64 */	addi r3, r30, 0xf64
/* 80B14AAC  38 80 FF FF */	li r4, -1
/* 80B14AB0  4B 7A B9 70 */	b __dt__10Z2CreatureFv
lbl_80B14AB4:
/* 80B14AB4  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80B14AB8  38 80 FF FF */	li r4, -1
/* 80B14ABC  4B 7A B9 64 */	b __dt__10Z2CreatureFv
/* 80B14AC0  7F C3 F3 78 */	mr r3, r30
/* 80B14AC4  38 80 00 00 */	li r4, 0
/* 80B14AC8  48 00 8C 15 */	bl __dt__8daNpcF_cFv
/* 80B14ACC  7F E0 07 35 */	extsh. r0, r31
/* 80B14AD0  40 81 00 0C */	ble lbl_80B14ADC
/* 80B14AD4  7F C3 F3 78 */	mr r3, r30
/* 80B14AD8  4B 7B A2 64 */	b __dl__FPv
lbl_80B14ADC:
/* 80B14ADC  7F C3 F3 78 */	mr r3, r30
/* 80B14AE0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B14AE4  4B 84 D7 38 */	b _restgpr_26
/* 80B14AE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B14AEC  7C 08 03 A6 */	mtlr r0
/* 80B14AF0  38 21 00 20 */	addi r1, r1, 0x20
/* 80B14AF4  4E 80 00 20 */	blr 
