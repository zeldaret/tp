lbl_8053949C:
/* 8053949C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 805394A0  7C 08 02 A6 */	mflr r0
/* 805394A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 805394A8  39 61 00 50 */	addi r11, r1, 0x50
/* 805394AC  4B E2 8D 31 */	bl _savegpr_29
/* 805394B0  7C 7E 1B 78 */	mr r30, r3
/* 805394B4  80 63 05 78 */	lwz r3, 0x578(r3)
/* 805394B8  83 A3 00 04 */	lwz r29, 4(r3)
/* 805394BC  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 805394C0  28 03 00 00 */	cmplwi r3, 0
/* 805394C4  41 82 00 78 */	beq lbl_8053953C
/* 805394C8  80 83 00 04 */	lwz r4, 4(r3)
/* 805394CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 805394D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 805394D4  80 84 00 04 */	lwz r4, 4(r4)
/* 805394D8  38 BE 01 0C */	addi r5, r30, 0x10c
/* 805394DC  4B C6 B8 C5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 805394E0  88 1E 11 2E */	lbz r0, 0x112e(r30)
/* 805394E4  28 00 00 00 */	cmplwi r0, 0
/* 805394E8  40 82 00 1C */	bne lbl_80539504
/* 805394EC  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 805394F0  80 63 00 04 */	lwz r3, 4(r3)
/* 805394F4  80 63 00 04 */	lwz r3, 4(r3)
/* 805394F8  38 63 00 78 */	addi r3, r3, 0x78
/* 805394FC  4B DE C3 A5 */	bl hide__13J3DShapeTableFv
/* 80539500  48 00 00 18 */	b lbl_80539518
lbl_80539504:
/* 80539504  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80539508  80 63 00 04 */	lwz r3, 4(r3)
/* 8053950C  80 63 00 04 */	lwz r3, 4(r3)
/* 80539510  38 63 00 78 */	addi r3, r3, 0x78
/* 80539514  4B DE C3 C5 */	bl show__13J3DShapeTableFv
lbl_80539518:
/* 80539518  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 8053951C  4B AD 7C A5 */	bl entryDL__16mDoExt_McaMorfSOFv
/* 80539520  80 7E 0E 40 */	lwz r3, 0xe40(r30)
/* 80539524  80 A3 00 04 */	lwz r5, 4(r3)
/* 80539528  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8053952C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80539530  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 80539534  80 9E 0D 94 */	lwz r4, 0xd94(r30)
/* 80539538  4B B1 C9 E5 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_8053953C:
/* 8053953C  38 00 00 00 */	li r0, 0
/* 80539540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80539544  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80539548  3B E3 61 C0 */	addi r31, r3, 0x61c0
/* 8053954C  80 9E 0E 48 */	lwz r4, 0xe48(r30)
/* 80539550  28 04 00 00 */	cmplwi r4, 0
/* 80539554  41 82 00 88 */	beq lbl_805395DC
/* 80539558  2C 00 00 00 */	cmpwi r0, 0
/* 8053955C  40 82 00 80 */	bne lbl_805395DC
/* 80539560  88 1E 11 2D */	lbz r0, 0x112d(r30)
/* 80539564  28 00 00 00 */	cmplwi r0, 0
/* 80539568  41 82 00 74 */	beq lbl_805395DC
/* 8053956C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80539570  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80539574  80 84 00 04 */	lwz r4, 4(r4)
/* 80539578  38 BE 01 0C */	addi r5, r30, 0x10c
/* 8053957C  4B C6 B8 25 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 80539580  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80539584  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80539588  3C 60 80 54 */	lis r3, jointNo@ha /* 0x8053E8C8@ha */
/* 8053958C  80 03 E8 C8 */	lwz r0, jointNo@l(r3)  /* 0x8053E8C8@l */
/* 80539590  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80539594  7C 64 02 14 */	add r3, r4, r0
/* 80539598  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8053959C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805395A0  4B E0 CF 11 */	bl PSMTXCopy
/* 805395A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805395A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805395AC  38 81 00 08 */	addi r4, r1, 8
/* 805395B0  4B E0 CF 01 */	bl PSMTXCopy
/* 805395B4  38 61 00 08 */	addi r3, r1, 8
/* 805395B8  80 9E 0E 48 */	lwz r4, 0xe48(r30)
/* 805395BC  38 84 00 24 */	addi r4, r4, 0x24
/* 805395C0  4B E0 CE F1 */	bl PSMTXCopy
/* 805395C4  80 7E 0E 48 */	lwz r3, 0xe48(r30)
/* 805395C8  4B AD 46 FD */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 805395CC  7F E3 FB 78 */	mr r3, r31
/* 805395D0  80 9E 0D 94 */	lwz r4, 0xd94(r30)
/* 805395D4  80 BE 0E 48 */	lwz r5, 0xe48(r30)
/* 805395D8  4B B1 C9 45 */	bl addReal__21dDlst_shadowControl_cFUlP8J3DModel
lbl_805395DC:
/* 805395DC  39 61 00 50 */	addi r11, r1, 0x50
/* 805395E0  4B E2 8C 49 */	bl _restgpr_29
/* 805395E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 805395E8  7C 08 03 A6 */	mtlr r0
/* 805395EC  38 21 00 50 */	addi r1, r1, 0x50
/* 805395F0  4E 80 00 20 */	blr 
