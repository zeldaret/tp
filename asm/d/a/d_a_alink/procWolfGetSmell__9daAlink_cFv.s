lbl_8013FC24:
/* 8013FC24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013FC28  7C 08 02 A6 */	mflr r0
/* 8013FC2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013FC30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013FC34  93 C1 00 08 */	stw r30, 8(r1)
/* 8013FC38  7C 7E 1B 78 */	mr r30, r3
/* 8013FC3C  83 E3 28 10 */	lwz r31, 0x2810(r3)
/* 8013FC40  80 83 31 9C */	lwz r4, 0x319c(r3)
/* 8013FC44  2C 04 00 00 */	cmpwi r4, 0
/* 8013FC48  41 80 00 E0 */	blt lbl_8013FD28
/* 8013FC4C  A0 1E 06 04 */	lhz r0, 0x604(r30)
/* 8013FC50  2C 00 00 05 */	cmpwi r0, 5
/* 8013FC54  40 82 00 90 */	bne lbl_8013FCE4
/* 8013FC58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013FC5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013FC60  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8013FC64  7F C4 F3 78 */	mr r4, r30
/* 8013FC68  4B F0 28 B1 */	bl reset__14dEvt_control_cFPv
/* 8013FC6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013FC70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013FC74  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8013FC78  54 00 01 88 */	rlwinm r0, r0, 0, 6, 4
/* 8013FC7C  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8013FC80  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 8013FC84  2C 00 00 B0 */	cmpwi r0, 0xb0
/* 8013FC88  40 82 00 2C */	bne lbl_8013FCB4
/* 8013FC8C  7F C3 F3 78 */	mr r3, r30
/* 8013FC90  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8013FC94  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8013FC98  38 84 03 1E */	addi r4, r4, 0x31e
/* 8013FC9C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8013FCA0  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8013FCA4  38 C0 04 00 */	li r6, 0x400
/* 8013FCA8  38 E0 00 01 */	li r7, 1
/* 8013FCAC  4B ED B7 21 */	bl fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs
/* 8013FCB0  48 00 00 28 */	b lbl_8013FCD8
lbl_8013FCB4:
/* 8013FCB4  7F C3 F3 78 */	mr r3, r30
/* 8013FCB8  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8013FCBC  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8013FCC0  38 84 03 28 */	addi r4, r4, 0x328
/* 8013FCC4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8013FCC8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8013FCCC  38 C0 04 00 */	li r6, 0x400
/* 8013FCD0  38 E0 00 01 */	li r7, 1
/* 8013FCD4  4B ED B6 F9 */	bl fopAcM_orderOtherEvent__FP10fopAc_ac_cPCcUsUsUs
lbl_8013FCD8:
/* 8013FCD8  38 00 00 02 */	li r0, 2
/* 8013FCDC  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8013FCE0  48 00 00 48 */	b lbl_8013FD28
lbl_8013FCE4:
/* 8013FCE4  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 8013FCE8  2C 00 00 00 */	cmpwi r0, 0
/* 8013FCEC  40 82 00 3C */	bne lbl_8013FD28
/* 8013FCF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013FCF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013FCF8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8013FCFC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 8013FD00  4B EF 4C 8D */	bl onEventBit__11dSv_event_cFUs
/* 8013FD04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013FD08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013FD0C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8013FD10  80 9E 31 84 */	lwz r4, 0x3184(r30)
/* 8013FD14  4B F0 84 69 */	bl cutEnd__16dEvent_manager_cFi
/* 8013FD18  28 1F 00 00 */	cmplwi r31, 0
/* 8013FD1C  41 82 00 0C */	beq lbl_8013FD28
/* 8013FD20  38 00 00 00 */	li r0, 0
/* 8013FD24  98 1F 05 88 */	stb r0, 0x588(r31)
lbl_8013FD28:
/* 8013FD28  7F C3 F3 78 */	mr r3, r30
/* 8013FD2C  38 80 00 72 */	li r4, 0x72
/* 8013FD30  4B FE 8A DD */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 8013FD34  2C 03 00 00 */	cmpwi r3, 0
/* 8013FD38  41 82 00 14 */	beq lbl_8013FD4C
/* 8013FD3C  7F C3 F3 78 */	mr r3, r30
/* 8013FD40  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001003E@ha */
/* 8013FD44  38 84 00 3E */	addi r4, r4, 0x003E /* 0x0001003E@l */
/* 8013FD48  4B F7 F3 71 */	bl voiceStartLevel__9daAlink_cFUl
lbl_8013FD4C:
/* 8013FD4C  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 8013FD50  2C 00 00 00 */	cmpwi r0, 0
/* 8013FD54  41 82 00 0C */	beq lbl_8013FD60
/* 8013FD58  38 00 00 04 */	li r0, 4
/* 8013FD5C  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_8013FD60:
/* 8013FD60  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 8013FD64  2C 00 00 00 */	cmpwi r0, 0
/* 8013FD68  41 82 00 6C */	beq lbl_8013FDD4
/* 8013FD6C  38 7E 28 64 */	addi r3, r30, 0x2864
/* 8013FD70  7F C4 F3 78 */	mr r4, r30
/* 8013FD74  38 A0 00 00 */	li r5, 0
/* 8013FD78  38 C0 00 00 */	li r6, 0
/* 8013FD7C  48 10 A5 5D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8013FD80  2C 03 00 00 */	cmpwi r3, 0
/* 8013FD84  41 82 00 20 */	beq lbl_8013FDA4
/* 8013FD88  28 1F 00 00 */	cmplwi r31, 0
/* 8013FD8C  41 82 00 0C */	beq lbl_8013FD98
/* 8013FD90  38 00 00 00 */	li r0, 0
/* 8013FD94  98 1F 05 88 */	stb r0, 0x588(r31)
lbl_8013FD98:
/* 8013FD98  7F C3 F3 78 */	mr r3, r30
/* 8013FD9C  4B FD 7E F5 */	bl resetSpecialEvent__9daAlink_cFv
/* 8013FDA0  48 00 01 6C */	b lbl_8013FF0C
lbl_8013FDA4:
/* 8013FDA4  A0 1E 28 9E */	lhz r0, 0x289e(r30)
/* 8013FDA8  7C 00 07 35 */	extsh. r0, r0
/* 8013FDAC  40 82 01 60 */	bne lbl_8013FF0C
/* 8013FDB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013FDB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013FDB8  88 63 00 16 */	lbz r3, 0x16(r3)
/* 8013FDBC  A8 1E 30 12 */	lha r0, 0x3012(r30)
/* 8013FDC0  7C 00 18 00 */	cmpw r0, r3
/* 8013FDC4  41 82 01 48 */	beq lbl_8013FF0C
/* 8013FDC8  7F C3 F3 78 */	mr r3, r30
/* 8013FDCC  4B FF FB 41 */	bl setSmellSave__9daAlink_cFv
/* 8013FDD0  48 00 01 3C */	b lbl_8013FF0C
lbl_8013FDD4:
/* 8013FDD4  A8 1E 30 10 */	lha r0, 0x3010(r30)
/* 8013FDD8  2C 00 00 00 */	cmpwi r0, 0
/* 8013FDDC  40 82 00 EC */	bne lbl_8013FEC8
/* 8013FDE0  28 1F 00 00 */	cmplwi r31, 0
/* 8013FDE4  41 82 00 34 */	beq lbl_8013FE18
/* 8013FDE8  80 1E 31 9C */	lwz r0, 0x319c(r30)
/* 8013FDEC  2C 00 00 00 */	cmpwi r0, 0
/* 8013FDF0  40 80 00 10 */	bge lbl_8013FE00
/* 8013FDF4  88 1F 05 88 */	lbz r0, 0x588(r31)
/* 8013FDF8  28 00 00 02 */	cmplwi r0, 2
/* 8013FDFC  41 82 00 1C */	beq lbl_8013FE18
lbl_8013FE00:
/* 8013FE00  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 8013FE04  28 00 00 37 */	cmplwi r0, 0x37
/* 8013FE08  40 82 00 A8 */	bne lbl_8013FEB0
/* 8013FE0C  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 8013FE10  2C 00 00 01 */	cmpwi r0, 1
/* 8013FE14  40 82 00 9C */	bne lbl_8013FEB0
lbl_8013FE18:
/* 8013FE18  7F C3 F3 78 */	mr r3, r30
/* 8013FE1C  38 80 00 83 */	li r4, 0x83
/* 8013FE20  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 8013FE24  C0 42 93 30 */	lfs f2, lit_7625(r2)
/* 8013FE28  38 A0 FF FF */	li r5, -1
/* 8013FE2C  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 8013FE30  4B FE 98 D5 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 8013FE34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013FE38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013FE3C  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8013FE40  64 00 04 00 */	oris r0, r0, 0x400
/* 8013FE44  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 8013FE48  28 1F 00 00 */	cmplwi r31, 0
/* 8013FE4C  41 82 00 10 */	beq lbl_8013FE5C
/* 8013FE50  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8013FE54  60 00 08 00 */	ori r0, r0, 0x800
/* 8013FE58  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_8013FE5C:
/* 8013FE5C  38 00 00 01 */	li r0, 1
/* 8013FE60  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 8013FE64  28 1E 00 00 */	cmplwi r30, 0
/* 8013FE68  41 82 00 0C */	beq lbl_8013FE74
/* 8013FE6C  83 FE 00 04 */	lwz r31, 4(r30)
/* 8013FE70  48 00 00 08 */	b lbl_8013FE78
lbl_8013FE74:
/* 8013FE74  3B E0 FF FF */	li r31, -1
lbl_8013FE78:
/* 8013FE78  48 04 17 C9 */	bl dCam_getBody__Fv
/* 8013FE7C  38 80 00 08 */	li r4, 8
/* 8013FE80  7F E5 FB 78 */	mr r5, r31
/* 8013FE84  38 C0 00 00 */	li r6, 0
/* 8013FE88  4C C6 31 82 */	crclr 6
/* 8013FE8C  4B F4 8B F1 */	bl StartEventCamera__9dCamera_cFiie
/* 8013FE90  38 00 00 0C */	li r0, 0xc
/* 8013FE94  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013FE98  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 8013FE9C  2C 00 0B BC */	cmpwi r0, 0xbbc
/* 8013FEA0  40 82 00 6C */	bne lbl_8013FF0C
/* 8013FEA4  7F C3 F3 78 */	mr r3, r30
/* 8013FEA8  4B FF FA 65 */	bl setSmellSave__9daAlink_cFv
/* 8013FEAC  48 00 00 60 */	b lbl_8013FF0C
lbl_8013FEB0:
/* 8013FEB0  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 8013FEB4  2C 03 00 00 */	cmpwi r3, 0
/* 8013FEB8  41 82 00 54 */	beq lbl_8013FF0C
/* 8013FEBC  38 03 FF FF */	addi r0, r3, -1
/* 8013FEC0  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 8013FEC4  48 00 00 48 */	b lbl_8013FF0C
lbl_8013FEC8:
/* 8013FEC8  38 7E 1F D0 */	addi r3, r30, 0x1fd0
/* 8013FECC  48 01 E6 01 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013FED0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013FED4  41 82 00 38 */	beq lbl_8013FF0C
/* 8013FED8  7F C3 F3 78 */	mr r3, r30
/* 8013FEDC  38 80 00 84 */	li r4, 0x84
/* 8013FEE0  4B FE 97 99 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8013FEE4  38 00 00 0C */	li r0, 0xc
/* 8013FEE8  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 8013FEEC  38 00 00 01 */	li r0, 1
/* 8013FEF0  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8013FEF4  38 7E 28 64 */	addi r3, r30, 0x2864
/* 8013FEF8  7F C4 F3 78 */	mr r4, r30
/* 8013FEFC  80 BE 31 98 */	lwz r5, 0x3198(r30)
/* 8013FF00  38 C0 00 00 */	li r6, 0
/* 8013FF04  38 E0 00 00 */	li r7, 0
/* 8013FF08  48 10 A0 89 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_8013FF0C:
/* 8013FF0C  38 60 00 01 */	li r3, 1
/* 8013FF10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8013FF14  83 C1 00 08 */	lwz r30, 8(r1)
/* 8013FF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8013FF1C  7C 08 03 A6 */	mtlr r0
/* 8013FF20  38 21 00 10 */	addi r1, r1, 0x10
/* 8013FF24  4E 80 00 20 */	blr 
