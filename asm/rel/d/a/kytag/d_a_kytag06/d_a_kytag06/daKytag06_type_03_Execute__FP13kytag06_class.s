lbl_8085931C:
/* 8085931C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80859320  7C 08 02 A6 */	mflr r0
/* 80859324  90 01 00 14 */	stw r0, 0x14(r1)
/* 80859328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8085932C  93 C1 00 08 */	stw r30, 8(r1)
/* 80859330  7C 7F 1B 78 */	mr r31, r3
/* 80859334  3C 60 80 86 */	lis r3, lit_3740@ha /* 0x80859E78@ha */
/* 80859338  3B C3 9E 78 */	addi r30, r3, lit_3740@l /* 0x80859E78@l */
/* 8085933C  88 1F 05 97 */	lbz r0, 0x597(r31)
/* 80859340  28 00 00 00 */	cmplwi r0, 0
/* 80859344  40 82 00 F4 */	bne lbl_80859438
/* 80859348  88 BF 05 90 */	lbz r5, 0x590(r31)
/* 8085934C  2C 05 00 02 */	cmpwi r5, 2
/* 80859350  41 82 00 AC */	beq lbl_808593FC
/* 80859354  40 80 01 BC */	bge lbl_80859510
/* 80859358  2C 05 00 00 */	cmpwi r5, 0
/* 8085935C  41 82 00 10 */	beq lbl_8085936C
/* 80859360  40 80 00 78 */	bge lbl_808593D8
/* 80859364  48 00 01 AC */	b lbl_80859510
/* 80859368  48 00 01 A8 */	b lbl_80859510
lbl_8085936C:
/* 8085936C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80859370  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859374  3B C3 07 F0 */	addi r30, r3, 0x7f0
/* 80859378  7F C3 F3 78 */	mr r3, r30
/* 8085937C  38 80 0C 01 */	li r4, 0xc01
/* 80859380  4B 7D B6 3D */	bl isEventBit__11dSv_event_cCFUs
/* 80859384  2C 03 00 00 */	cmpwi r3, 0
/* 80859388  41 82 01 88 */	beq lbl_80859510
/* 8085938C  7F C3 F3 78 */	mr r3, r30
/* 80859390  38 80 1E 08 */	li r4, 0x1e08
/* 80859394  4B 7D B6 29 */	bl isEventBit__11dSv_event_cCFUs
/* 80859398  2C 03 00 00 */	cmpwi r3, 0
/* 8085939C  40 82 01 74 */	bne lbl_80859510
/* 808593A0  38 00 00 01 */	li r0, 1
/* 808593A4  98 1F 05 90 */	stb r0, 0x590(r31)
/* 808593A8  38 00 01 C2 */	li r0, 0x1c2
/* 808593AC  90 1F 05 78 */	stw r0, 0x578(r31)
/* 808593B0  88 7F 05 91 */	lbz r3, 0x591(r31)
/* 808593B4  4B 94 F4 31 */	bl dKy_change_colpat__FUc
/* 808593B8  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 808593BC  88 A3 0D 64 */	lbz r5, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 808593C0  7C A5 07 74 */	extsb r5, r5
/* 808593C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808593C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808593CC  88 9F 05 95 */	lbz r4, 0x595(r31)
/* 808593D0  4B 7D BE 31 */	bl onSwitch__10dSv_info_cFii
/* 808593D4  48 00 01 3C */	b lbl_80859510
lbl_808593D8:
/* 808593D8  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 808593DC  38 03 FF FF */	addi r0, r3, -1
/* 808593E0  90 1F 05 78 */	stw r0, 0x578(r31)
/* 808593E4  2C 03 00 00 */	cmpwi r3, 0
/* 808593E8  41 81 01 28 */	bgt lbl_80859510
/* 808593EC  88 7F 05 90 */	lbz r3, 0x590(r31)
/* 808593F0  38 03 00 01 */	addi r0, r3, 1
/* 808593F4  98 1F 05 90 */	stb r0, 0x590(r31)
/* 808593F8  48 00 01 18 */	b lbl_80859510
lbl_808593FC:
/* 808593FC  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 80859400  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 80859404  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 80859408  40 82 01 08 */	bne lbl_80859510
/* 8085940C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859410  38 83 CA 54 */	addi r4, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859414  80 64 0E 80 */	lwz r3, 0xe80(r4)
/* 80859418  2C 03 00 FA */	cmpwi r3, 0xfa
/* 8085941C  40 80 00 10 */	bge lbl_8085942C
/* 80859420  38 03 00 01 */	addi r0, r3, 1
/* 80859424  90 04 0E 80 */	stw r0, 0xe80(r4)
/* 80859428  48 00 00 E8 */	b lbl_80859510
lbl_8085942C:
/* 8085942C  38 05 00 01 */	addi r0, r5, 1
/* 80859430  98 1F 05 90 */	stb r0, 0x590(r31)
/* 80859434  48 00 00 DC */	b lbl_80859510
lbl_80859438:
/* 80859438  28 00 00 02 */	cmplwi r0, 2
/* 8085943C  40 82 00 D4 */	bne lbl_80859510
/* 80859440  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 80859444  88 03 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80859448  7C 00 07 75 */	extsb. r0, r0
/* 8085944C  41 82 00 C4 */	beq lbl_80859510
/* 80859450  88 1F 05 90 */	lbz r0, 0x590(r31)
/* 80859454  2C 00 00 01 */	cmpwi r0, 1
/* 80859458  41 82 00 B8 */	beq lbl_80859510
/* 8085945C  40 80 00 B4 */	bge lbl_80859510
/* 80859460  2C 00 00 00 */	cmpwi r0, 0
/* 80859464  40 80 00 08 */	bge lbl_8085946C
/* 80859468  48 00 00 A8 */	b lbl_80859510
lbl_8085946C:
/* 8085946C  88 9F 05 95 */	lbz r4, 0x595(r31)
/* 80859470  28 04 00 FF */	cmplwi r4, 0xff
/* 80859474  41 82 00 7C */	beq lbl_808594F0
/* 80859478  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8085947C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859480  88 BF 04 E2 */	lbz r5, 0x4e2(r31)
/* 80859484  7C A5 07 74 */	extsb r5, r5
/* 80859488  4B 7D BE D9 */	bl isSwitch__10dSv_info_cCFii
/* 8085948C  2C 03 00 00 */	cmpwi r3, 0
/* 80859490  41 82 00 60 */	beq lbl_808594F0
/* 80859494  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80859498  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 8085949C  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 808594A0  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 808594A4  C0 9E 00 6C */	lfs f4, 0x6c(r30)
/* 808594A8  4B A1 64 D5 */	bl cLib_addCalc__FPfffff
/* 808594AC  C0 3F 05 6C */	lfs f1, 0x56c(r31)
/* 808594B0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 808594B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808594B8  4C 41 13 82 */	cror 2, 1, 2
/* 808594BC  40 82 00 20 */	bne lbl_808594DC
/* 808594C0  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 808594C4  38 00 00 00 */	li r0, 0
/* 808594C8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 808594CC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 808594D0  98 03 12 C8 */	stb r0, 0x12c8(r3)
/* 808594D4  38 00 00 01 */	li r0, 1
/* 808594D8  98 1F 05 90 */	stb r0, 0x590(r31)
lbl_808594DC:
/* 808594DC  88 7F 05 91 */	lbz r3, 0x591(r31)
/* 808594E0  38 80 00 00 */	li r4, 0
/* 808594E4  C0 3F 05 6C */	lfs f1, 0x56c(r31)
/* 808594E8  4B 94 F3 25 */	bl dKy_custom_colset__FUcUcf
/* 808594EC  48 00 00 24 */	b lbl_80859510
lbl_808594F0:
/* 808594F0  38 60 00 00 */	li r3, 0
/* 808594F4  88 9F 05 91 */	lbz r4, 0x591(r31)
/* 808594F8  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 808594FC  4B 94 F3 11 */	bl dKy_custom_colset__FUcUcf
/* 80859500  88 1F 05 91 */	lbz r0, 0x591(r31)
/* 80859504  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859508  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8085950C  98 03 12 C8 */	stb r0, 0x12c8(r3)
lbl_80859510:
/* 80859510  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80859514  83 C1 00 08 */	lwz r30, 8(r1)
/* 80859518  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8085951C  7C 08 03 A6 */	mtlr r0
/* 80859520  38 21 00 10 */	addi r1, r1, 0x10
/* 80859524  4E 80 00 20 */	blr 
