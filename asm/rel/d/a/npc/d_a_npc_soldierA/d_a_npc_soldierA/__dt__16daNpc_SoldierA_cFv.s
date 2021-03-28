lbl_80AEF7A0:
/* 80AEF7A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AEF7A4  7C 08 02 A6 */	mflr r0
/* 80AEF7A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEF7AC  39 61 00 20 */	addi r11, r1, 0x20
/* 80AEF7B0  4B 87 2A 20 */	b _savegpr_26
/* 80AEF7B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AEF7B8  7C 9F 23 78 */	mr r31, r4
/* 80AEF7BC  41 82 01 C8 */	beq lbl_80AEF984
/* 80AEF7C0  3C 60 80 AF */	lis r3, __vt__16daNpc_SoldierA_c@ha
/* 80AEF7C4  38 03 2A 0C */	addi r0, r3, __vt__16daNpc_SoldierA_c@l
/* 80AEF7C8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AEF7CC  3B A0 00 00 */	li r29, 0
/* 80AEF7D0  3B 80 00 00 */	li r28, 0
/* 80AEF7D4  3C 60 80 AF */	lis r3, l_resNames@ha
/* 80AEF7D8  3B 43 29 30 */	addi r26, r3, l_resNames@l
/* 80AEF7DC  3C 60 80 AF */	lis r3, l_loadRes_list@ha
/* 80AEF7E0  3B 63 29 20 */	addi r27, r3, l_loadRes_list@l
/* 80AEF7E4  48 00 00 20 */	b lbl_80AEF804
lbl_80AEF7E8:
/* 80AEF7E8  38 7C 0D E8 */	addi r3, r28, 0xde8
/* 80AEF7EC  7C 7E 1A 14 */	add r3, r30, r3
/* 80AEF7F0  54 00 10 3A */	slwi r0, r0, 2
/* 80AEF7F4  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80AEF7F8  4B 53 D8 10 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80AEF7FC  3B BD 00 04 */	addi r29, r29, 4
/* 80AEF800  3B 9C 00 08 */	addi r28, r28, 8
lbl_80AEF804:
/* 80AEF804  88 1E 0E 18 */	lbz r0, 0xe18(r30)
/* 80AEF808  54 00 10 3A */	slwi r0, r0, 2
/* 80AEF80C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80AEF810  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80AEF814  2C 00 00 00 */	cmpwi r0, 0
/* 80AEF818  40 80 FF D0 */	bge lbl_80AEF7E8
/* 80AEF81C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AEF820  28 00 00 00 */	cmplwi r0, 0
/* 80AEF824  41 82 00 0C */	beq lbl_80AEF830
/* 80AEF828  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AEF82C  4B 52 1A E4 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AEF830:
/* 80AEF830  34 1E 0C 94 */	addic. r0, r30, 0xc94
/* 80AEF834  41 82 00 84 */	beq lbl_80AEF8B8
/* 80AEF838  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AEF83C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AEF840  90 7E 0C D0 */	stw r3, 0xcd0(r30)
/* 80AEF844  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AEF848  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 80AEF84C  38 03 00 84 */	addi r0, r3, 0x84
/* 80AEF850  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 80AEF854  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 80AEF858  41 82 00 54 */	beq lbl_80AEF8AC
/* 80AEF85C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AEF860  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AEF864  90 7E 0D B4 */	stw r3, 0xdb4(r30)
/* 80AEF868  38 03 00 58 */	addi r0, r3, 0x58
/* 80AEF86C  90 1E 0D CC */	stw r0, 0xdcc(r30)
/* 80AEF870  34 1E 0D B8 */	addic. r0, r30, 0xdb8
/* 80AEF874  41 82 00 10 */	beq lbl_80AEF884
/* 80AEF878  3C 60 80 AF */	lis r3, __vt__8cM3dGCyl@ha
/* 80AEF87C  38 03 2A B4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AEF880  90 1E 0D CC */	stw r0, 0xdcc(r30)
lbl_80AEF884:
/* 80AEF884  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 80AEF888  41 82 00 24 */	beq lbl_80AEF8AC
/* 80AEF88C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AEF890  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AEF894  90 1E 0D B4 */	stw r0, 0xdb4(r30)
/* 80AEF898  34 1E 0D 98 */	addic. r0, r30, 0xd98
/* 80AEF89C  41 82 00 10 */	beq lbl_80AEF8AC
/* 80AEF8A0  3C 60 80 AF */	lis r3, __vt__8cM3dGAab@ha
/* 80AEF8A4  38 03 2A C0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AEF8A8  90 1E 0D B0 */	stw r0, 0xdb0(r30)
lbl_80AEF8AC:
/* 80AEF8AC  38 7E 0C 94 */	addi r3, r30, 0xc94
/* 80AEF8B0  38 80 00 00 */	li r4, 0
/* 80AEF8B4  4B 59 48 30 */	b __dt__12dCcD_GObjInfFv
lbl_80AEF8B8:
/* 80AEF8B8  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80AEF8BC  3C 80 80 AF */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AEF8C0  38 84 1D E0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AEF8C4  38 A0 00 08 */	li r5, 8
/* 80AEF8C8  38 C0 00 03 */	li r6, 3
/* 80AEF8CC  4B 87 24 1C */	b __destroy_arr
/* 80AEF8D0  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 80AEF8D4  41 82 00 88 */	beq lbl_80AEF95C
/* 80AEF8D8  3C 60 80 AF */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80AEF8DC  38 03 2A CC */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80AEF8E0  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 80AEF8E4  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 80AEF8E8  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AEF8EC  38 84 1F 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AEF8F0  38 A0 00 06 */	li r5, 6
/* 80AEF8F4  38 C0 00 04 */	li r6, 4
/* 80AEF8F8  4B 87 23 F0 */	b __destroy_arr
/* 80AEF8FC  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 80AEF900  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AEF904  38 84 1F 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AEF908  38 A0 00 06 */	li r5, 6
/* 80AEF90C  38 C0 00 04 */	li r6, 4
/* 80AEF910  4B 87 23 D8 */	b __destroy_arr
/* 80AEF914  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 80AEF918  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AEF91C  38 84 1F 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AEF920  38 A0 00 06 */	li r5, 6
/* 80AEF924  38 C0 00 04 */	li r6, 4
/* 80AEF928  4B 87 23 C0 */	b __destroy_arr
/* 80AEF92C  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 80AEF930  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AEF934  38 84 1F 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AEF938  38 A0 00 06 */	li r5, 6
/* 80AEF93C  38 C0 00 04 */	li r6, 4
/* 80AEF940  4B 87 23 A8 */	b __destroy_arr
/* 80AEF944  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 80AEF948  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AEF94C  38 84 1F 74 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AEF950  38 A0 00 0C */	li r5, 0xc
/* 80AEF954  38 C0 00 04 */	li r6, 4
/* 80AEF958  4B 87 23 90 */	b __destroy_arr
lbl_80AEF95C:
/* 80AEF95C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80AEF960  38 80 FF FF */	li r4, -1
/* 80AEF964  4B 7D 0A BC */	b __dt__10Z2CreatureFv
/* 80AEF968  7F C3 F3 78 */	mr r3, r30
/* 80AEF96C  38 80 00 00 */	li r4, 0
/* 80AEF970  48 00 26 45 */	bl __dt__8daNpcF_cFv
/* 80AEF974  7F E0 07 35 */	extsh. r0, r31
/* 80AEF978  40 81 00 0C */	ble lbl_80AEF984
/* 80AEF97C  7F C3 F3 78 */	mr r3, r30
/* 80AEF980  4B 7D F3 BC */	b __dl__FPv
lbl_80AEF984:
/* 80AEF984  7F C3 F3 78 */	mr r3, r30
/* 80AEF988  39 61 00 20 */	addi r11, r1, 0x20
/* 80AEF98C  4B 87 28 90 */	b _restgpr_26
/* 80AEF990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AEF994  7C 08 03 A6 */	mtlr r0
/* 80AEF998  38 21 00 20 */	addi r1, r1, 0x20
/* 80AEF99C  4E 80 00 20 */	blr 
