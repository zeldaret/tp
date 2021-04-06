lbl_80954C0C:
/* 80954C0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80954C10  7C 08 02 A6 */	mflr r0
/* 80954C14  90 01 00 24 */	stw r0, 0x24(r1)
/* 80954C18  39 61 00 20 */	addi r11, r1, 0x20
/* 80954C1C  4B A0 D5 B5 */	bl _savegpr_26
/* 80954C20  7C 7E 1B 78 */	mr r30, r3
/* 80954C24  7C 9A 23 78 */	mr r26, r4
/* 80954C28  3B E0 00 00 */	li r31, 0
/* 80954C2C  3B 60 FF FF */	li r27, -1
/* 80954C30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80954C34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80954C38  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 80954C3C  3B BC 40 C0 */	addi r29, r28, 0x40c0
/* 80954C40  7F A3 EB 78 */	mr r3, r29
/* 80954C44  3C A0 80 95 */	lis r5, d_a_npc_aru__stringBase0@ha /* 0x8095781C@ha */
/* 80954C48  38 A5 78 1C */	addi r5, r5, d_a_npc_aru__stringBase0@l /* 0x8095781C@l */
/* 80954C4C  38 A5 00 C8 */	addi r5, r5, 0xc8
/* 80954C50  38 C0 00 03 */	li r6, 3
/* 80954C54  4B 6F 34 99 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80954C58  28 03 00 00 */	cmplwi r3, 0
/* 80954C5C  41 82 00 08 */	beq lbl_80954C64
/* 80954C60  83 63 00 00 */	lwz r27, 0(r3)
lbl_80954C64:
/* 80954C64  7F A3 EB 78 */	mr r3, r29
/* 80954C68  7F 44 D3 78 */	mr r4, r26
/* 80954C6C  4B 6F 30 E1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80954C70  2C 03 00 00 */	cmpwi r3, 0
/* 80954C74  41 82 00 F0 */	beq lbl_80954D64
/* 80954C78  2C 1B 00 02 */	cmpwi r27, 2
/* 80954C7C  41 82 00 40 */	beq lbl_80954CBC
/* 80954C80  40 80 00 14 */	bge lbl_80954C94
/* 80954C84  2C 1B 00 00 */	cmpwi r27, 0
/* 80954C88  41 82 00 DC */	beq lbl_80954D64
/* 80954C8C  40 80 00 18 */	bge lbl_80954CA4
/* 80954C90  48 00 00 D4 */	b lbl_80954D64
lbl_80954C94:
/* 80954C94  2C 1B 00 04 */	cmpwi r27, 4
/* 80954C98  41 82 00 5C */	beq lbl_80954CF4
/* 80954C9C  40 80 00 C8 */	bge lbl_80954D64
/* 80954CA0  48 00 00 38 */	b lbl_80954CD8
lbl_80954CA4:
/* 80954CA4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80954CA8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80954CAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80954CB0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80954CB4  4B 95 AB D1 */	bl subBgmStop__8Z2SeqMgrFv
/* 80954CB8  48 00 00 AC */	b lbl_80954D64
lbl_80954CBC:
/* 80954CBC  38 60 00 B5 */	li r3, 0xb5
/* 80954CC0  4B 7F 7E AD */	bl daNpcT_chkTmpBit__FUl
/* 80954CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80954CC8  41 82 00 9C */	beq lbl_80954D64
/* 80954CCC  38 60 00 B6 */	li r3, 0xb6
/* 80954CD0  4B 7F 7E 1D */	bl daNpcT_onTmpBit__FUl
/* 80954CD4  48 00 00 90 */	b lbl_80954D64
lbl_80954CD8:
/* 80954CD8  38 60 00 AF */	li r3, 0xaf
/* 80954CDC  4B 7F 7E 91 */	bl daNpcT_chkTmpBit__FUl
/* 80954CE0  2C 03 00 00 */	cmpwi r3, 0
/* 80954CE4  41 82 00 80 */	beq lbl_80954D64
/* 80954CE8  38 60 00 B0 */	li r3, 0xb0
/* 80954CEC  4B 7F 7D 41 */	bl daNpcT_onEvtBit__FUl
/* 80954CF0  48 00 00 74 */	b lbl_80954D64
lbl_80954CF4:
/* 80954CF4  88 1E 0F CE */	lbz r0, 0xfce(r30)
/* 80954CF8  28 00 00 00 */	cmplwi r0, 0
/* 80954CFC  40 82 00 18 */	bne lbl_80954D14
/* 80954D00  38 60 00 B5 */	li r3, 0xb5
/* 80954D04  4B 7F 7E 29 */	bl daNpcT_offTmpBit__FUl
/* 80954D08  38 60 00 B6 */	li r3, 0xb6
/* 80954D0C  4B 7F 7E 21 */	bl daNpcT_offTmpBit__FUl
/* 80954D10  48 00 00 54 */	b lbl_80954D64
lbl_80954D14:
/* 80954D14  38 60 00 B5 */	li r3, 0xb5
/* 80954D18  4B 7F 7E 55 */	bl daNpcT_chkTmpBit__FUl
/* 80954D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80954D20  41 82 00 10 */	beq lbl_80954D30
/* 80954D24  38 60 00 B6 */	li r3, 0xb6
/* 80954D28  4B 7F 7D C5 */	bl daNpcT_onTmpBit__FUl
/* 80954D2C  48 00 00 38 */	b lbl_80954D64
lbl_80954D30:
/* 80954D30  38 60 00 B3 */	li r3, 0xb3
/* 80954D34  4B 7F 7E 39 */	bl daNpcT_chkTmpBit__FUl
/* 80954D38  2C 03 00 00 */	cmpwi r3, 0
/* 80954D3C  41 82 00 10 */	beq lbl_80954D4C
/* 80954D40  38 60 00 B4 */	li r3, 0xb4
/* 80954D44  4B 7F 7D A9 */	bl daNpcT_onTmpBit__FUl
/* 80954D48  48 00 00 1C */	b lbl_80954D64
lbl_80954D4C:
/* 80954D4C  38 60 00 AF */	li r3, 0xaf
/* 80954D50  4B 7F 7E 1D */	bl daNpcT_chkTmpBit__FUl
/* 80954D54  2C 03 00 00 */	cmpwi r3, 0
/* 80954D58  41 82 00 0C */	beq lbl_80954D64
/* 80954D5C  38 60 00 B0 */	li r3, 0xb0
/* 80954D60  4B 7F 7D 8D */	bl daNpcT_onTmpBit__FUl
lbl_80954D64:
/* 80954D64  2C 1B 00 02 */	cmpwi r27, 2
/* 80954D68  41 82 00 98 */	beq lbl_80954E00
/* 80954D6C  40 80 00 14 */	bge lbl_80954D80
/* 80954D70  2C 1B 00 00 */	cmpwi r27, 0
/* 80954D74  41 82 00 1C */	beq lbl_80954D90
/* 80954D78  40 80 00 34 */	bge lbl_80954DAC
/* 80954D7C  48 00 01 B4 */	b lbl_80954F30
lbl_80954D80:
/* 80954D80  2C 1B 00 04 */	cmpwi r27, 4
/* 80954D84  41 82 00 D4 */	beq lbl_80954E58
/* 80954D88  40 80 01 A8 */	bge lbl_80954F30
/* 80954D8C  48 00 00 90 */	b lbl_80954E1C
lbl_80954D90:
/* 80954D90  7F C3 F3 78 */	mr r3, r30
/* 80954D94  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80954D98  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80954D9C  7D 89 03 A6 */	mtctr r12
/* 80954DA0  4E 80 04 21 */	bctrl 
/* 80954DA4  3B E0 00 01 */	li r31, 1
/* 80954DA8  48 00 01 88 */	b lbl_80954F30
lbl_80954DAC:
/* 80954DAC  7F 83 E3 78 */	mr r3, r28
/* 80954DB0  4B 6D 7E 2D */	bl getTimerPtr__14dComIfG_play_cFv
/* 80954DB4  28 03 00 00 */	cmplwi r3, 0
/* 80954DB8  41 82 00 2C */	beq lbl_80954DE4
/* 80954DBC  7F 83 E3 78 */	mr r3, r28
/* 80954DC0  4B 6D 7D FD */	bl getTimerMode__14dComIfG_play_cFv
/* 80954DC4  2C 03 00 02 */	cmpwi r3, 2
/* 80954DC8  40 82 00 1C */	bne lbl_80954DE4
/* 80954DCC  38 60 00 02 */	li r3, 2
/* 80954DD0  4B 6D A9 5D */	bl dComIfG_TimerDeleteCheck__Fi
/* 80954DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80954DD8  40 82 00 0C */	bne lbl_80954DE4
/* 80954DDC  38 60 00 02 */	li r3, 2
/* 80954DE0  4B 6D A9 BD */	bl dComIfG_TimerDeleteRequest__Fi
lbl_80954DE4:
/* 80954DE4  7F C3 F3 78 */	mr r3, r30
/* 80954DE8  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80954DEC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80954DF0  7D 89 03 A6 */	mtctr r12
/* 80954DF4  4E 80 04 21 */	bctrl 
/* 80954DF8  3B E0 00 01 */	li r31, 1
/* 80954DFC  48 00 01 34 */	b lbl_80954F30
lbl_80954E00:
/* 80954E00  7F C3 F3 78 */	mr r3, r30
/* 80954E04  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80954E08  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80954E0C  7D 89 03 A6 */	mtctr r12
/* 80954E10  4E 80 04 21 */	bctrl 
/* 80954E14  3B E0 00 01 */	li r31, 1
/* 80954E18  48 00 01 18 */	b lbl_80954F30
lbl_80954E1C:
/* 80954E1C  7F C3 F3 78 */	mr r3, r30
/* 80954E20  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80954E24  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80954E28  7D 89 03 A6 */	mtctr r12
/* 80954E2C  4E 80 04 21 */	bctrl 
/* 80954E30  38 60 00 07 */	li r3, 7
/* 80954E34  3C 80 80 95 */	lis r4, lit_4100@ha /* 0x80957798@ha */
/* 80954E38  C0 24 77 98 */	lfs f1, lit_4100@l(r4)  /* 0x80957798@l */
/* 80954E3C  38 80 00 00 */	li r4, 0
/* 80954E40  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80954E44  7C 05 07 74 */	extsb r5, r0
/* 80954E48  38 C0 00 00 */	li r6, 0
/* 80954E4C  38 E0 FF FF */	li r7, -1
/* 80954E50  4B 6D 23 21 */	bl dStage_changeScene__FifUlScsi
/* 80954E54  48 00 00 DC */	b lbl_80954F30
lbl_80954E58:
/* 80954E58  7F C3 F3 78 */	mr r3, r30
/* 80954E5C  81 9E 0E 3C */	lwz r12, 0xe3c(r30)
/* 80954E60  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80954E64  7D 89 03 A6 */	mtctr r12
/* 80954E68  4E 80 04 21 */	bctrl 
/* 80954E6C  88 1E 0F CE */	lbz r0, 0xfce(r30)
/* 80954E70  28 00 00 00 */	cmplwi r0, 0
/* 80954E74  41 82 00 14 */	beq lbl_80954E88
/* 80954E78  38 60 00 B6 */	li r3, 0xb6
/* 80954E7C  4B 7F 7C F1 */	bl daNpcT_chkTmpBit__FUl
/* 80954E80  2C 03 00 00 */	cmpwi r3, 0
/* 80954E84  41 82 00 40 */	beq lbl_80954EC4
lbl_80954E88:
/* 80954E88  88 1E 0F CE */	lbz r0, 0xfce(r30)
/* 80954E8C  28 00 00 00 */	cmplwi r0, 0
/* 80954E90  41 82 00 0C */	beq lbl_80954E9C
/* 80954E94  38 60 00 5B */	li r3, 0x5b
/* 80954E98  4B 7F 7C 55 */	bl daNpcT_onTmpBit__FUl
lbl_80954E9C:
/* 80954E9C  38 60 00 0C */	li r3, 0xc
/* 80954EA0  3C 80 80 95 */	lis r4, lit_4100@ha /* 0x80957798@ha */
/* 80954EA4  C0 24 77 98 */	lfs f1, lit_4100@l(r4)  /* 0x80957798@l */
/* 80954EA8  38 80 00 00 */	li r4, 0
/* 80954EAC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80954EB0  7C 05 07 74 */	extsb r5, r0
/* 80954EB4  38 C0 00 00 */	li r6, 0
/* 80954EB8  38 E0 FF FF */	li r7, -1
/* 80954EBC  4B 6D 22 B5 */	bl dStage_changeScene__FifUlScsi
/* 80954EC0  48 00 00 70 */	b lbl_80954F30
lbl_80954EC4:
/* 80954EC4  38 60 00 B4 */	li r3, 0xb4
/* 80954EC8  4B 7F 7C A5 */	bl daNpcT_chkTmpBit__FUl
/* 80954ECC  2C 03 00 00 */	cmpwi r3, 0
/* 80954ED0  41 82 00 2C */	beq lbl_80954EFC
/* 80954ED4  38 60 00 0A */	li r3, 0xa
/* 80954ED8  3C 80 80 95 */	lis r4, lit_4100@ha /* 0x80957798@ha */
/* 80954EDC  C0 24 77 98 */	lfs f1, lit_4100@l(r4)  /* 0x80957798@l */
/* 80954EE0  38 80 00 00 */	li r4, 0
/* 80954EE4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80954EE8  7C 05 07 74 */	extsb r5, r0
/* 80954EEC  38 C0 00 00 */	li r6, 0
/* 80954EF0  38 E0 FF FF */	li r7, -1
/* 80954EF4  4B 6D 22 7D */	bl dStage_changeScene__FifUlScsi
/* 80954EF8  48 00 00 38 */	b lbl_80954F30
lbl_80954EFC:
/* 80954EFC  38 60 00 B0 */	li r3, 0xb0
/* 80954F00  4B 7F 7C 6D */	bl daNpcT_chkTmpBit__FUl
/* 80954F04  2C 03 00 00 */	cmpwi r3, 0
/* 80954F08  41 82 00 28 */	beq lbl_80954F30
/* 80954F0C  38 60 00 07 */	li r3, 7
/* 80954F10  3C 80 80 95 */	lis r4, lit_4100@ha /* 0x80957798@ha */
/* 80954F14  C0 24 77 98 */	lfs f1, lit_4100@l(r4)  /* 0x80957798@l */
/* 80954F18  38 80 00 00 */	li r4, 0
/* 80954F1C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80954F20  7C 05 07 74 */	extsb r5, r0
/* 80954F24  38 C0 00 00 */	li r6, 0
/* 80954F28  38 E0 FF FF */	li r7, -1
/* 80954F2C  4B 6D 22 45 */	bl dStage_changeScene__FifUlScsi
lbl_80954F30:
/* 80954F30  7F E3 FB 78 */	mr r3, r31
/* 80954F34  39 61 00 20 */	addi r11, r1, 0x20
/* 80954F38  4B A0 D2 E5 */	bl _restgpr_26
/* 80954F3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80954F40  7C 08 03 A6 */	mtlr r0
/* 80954F44  38 21 00 20 */	addi r1, r1, 0x20
/* 80954F48  4E 80 00 20 */	blr 
