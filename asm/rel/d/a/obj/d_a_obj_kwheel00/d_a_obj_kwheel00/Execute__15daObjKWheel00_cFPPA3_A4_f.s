lbl_80C4DBBC:
/* 80C4DBBC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C4DBC0  7C 08 02 A6 */	mflr r0
/* 80C4DBC4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C4DBC8  39 61 00 70 */	addi r11, r1, 0x70
/* 80C4DBCC  4B 71 45 F0 */	b _savegpr_21
/* 80C4DBD0  7C 7E 1B 78 */	mr r30, r3
/* 80C4DBD4  7C 96 23 78 */	mr r22, r4
/* 80C4DBD8  3C 60 80 C5 */	lis r3, l_dzbidx@ha
/* 80C4DBDC  3B E3 E8 00 */	addi r31, r3, l_dzbidx@l
/* 80C4DBE0  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C4DBE4  4B 3F AC 88 */	b eventUpdate__17dEvLib_callback_cFv
/* 80C4DBE8  A8 1E 06 1C */	lha r0, 0x61c(r30)
/* 80C4DBEC  2C 00 00 00 */	cmpwi r0, 0
/* 80C4DBF0  40 82 00 60 */	bne lbl_80C4DC50
/* 80C4DBF4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C4DBF8  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C4DBFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4DC00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4DC04  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C4DC08  7C 05 07 74 */	extsb r5, r0
/* 80C4DC0C  4B 3E 77 54 */	b isSwitch__10dSv_info_cCFii
/* 80C4DC10  2C 03 00 00 */	cmpwi r3, 0
/* 80C4DC14  41 82 00 3C */	beq lbl_80C4DC50
/* 80C4DC18  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C4DC1C  54 04 BE 3E */	rlwinm r4, r0, 0x17, 0x18, 0x1f
/* 80C4DC20  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C4DC24  41 82 00 18 */	beq lbl_80C4DC3C
/* 80C4DC28  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C4DC2C  38 A0 00 FF */	li r5, 0xff
/* 80C4DC30  38 C0 00 01 */	li r6, 1
/* 80C4DC34  4B 3F AD 0C */	b orderEvent__17dEvLib_callback_cFiii
/* 80C4DC38  48 00 00 18 */	b lbl_80C4DC50
lbl_80C4DC3C:
/* 80C4DC3C  7F C3 F3 78 */	mr r3, r30
/* 80C4DC40  81 9E 05 9C */	lwz r12, 0x59c(r30)
/* 80C4DC44  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80C4DC48  7D 89 03 A6 */	mtctr r12
/* 80C4DC4C  4E 80 04 21 */	bctrl 
lbl_80C4DC50:
/* 80C4DC50  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 80C4DC54  7C 60 07 35 */	extsh. r0, r3
/* 80C4DC58  41 82 04 6C */	beq lbl_80C4E0C4
/* 80C4DC5C  7C 60 07 35 */	extsh. r0, r3
/* 80C4DC60  40 81 00 18 */	ble lbl_80C4DC78
/* 80C4DC64  2C 03 00 40 */	cmpwi r3, 0x40
/* 80C4DC68  40 80 00 20 */	bge lbl_80C4DC88
/* 80C4DC6C  38 03 00 02 */	addi r0, r3, 2
/* 80C4DC70  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 80C4DC74  48 00 00 14 */	b lbl_80C4DC88
lbl_80C4DC78:
/* 80C4DC78  2C 03 FF C0 */	cmpwi r3, -64
/* 80C4DC7C  40 81 00 0C */	ble lbl_80C4DC88
/* 80C4DC80  38 03 FF FE */	addi r0, r3, -2
/* 80C4DC84  B0 1E 06 1C */	sth r0, 0x61c(r30)
lbl_80C4DC88:
/* 80C4DC88  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C4DC8C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C4DC90  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C4DC94  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C4DC98  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C4DC9C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C4DCA0  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 80C4DCA4  2C 00 00 00 */	cmpwi r0, 0
/* 80C4DCA8  40 82 00 1C */	bne lbl_80C4DCC4
/* 80C4DCAC  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C4DCB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C4DCB4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C4DCB8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008017E@ha */
/* 80C4DCBC  38 03 01 7E */	addi r0, r3, 0x017E /* 0x0008017E@l */
/* 80C4DCC0  48 00 00 18 */	b lbl_80C4DCD8
lbl_80C4DCC4:
/* 80C4DCC4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C4DCC8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C4DCCC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C4DCD0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080180@ha */
/* 80C4DCD4  38 03 01 80 */	addi r0, r3, 0x0180 /* 0x00080180@l */
lbl_80C4DCD8:
/* 80C4DCD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C4DCDC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C4DCE0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C4DCE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C4DCE8  38 81 00 24 */	addi r4, r1, 0x24
/* 80C4DCEC  38 A1 00 34 */	addi r5, r1, 0x34
/* 80C4DCF0  38 C0 00 00 */	li r6, 0
/* 80C4DCF4  38 E0 00 00 */	li r7, 0
/* 80C4DCF8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C4DCFC  FC 40 08 90 */	fmr f2, f1
/* 80C4DD00  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C4DD04  FC 80 18 90 */	fmr f4, f3
/* 80C4DD08  39 00 00 00 */	li r8, 0
/* 80C4DD0C  4B 65 E8 00 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C4DD10  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80C4DD14  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 80C4DD18  AB 7E 06 1C */	lha r27, 0x61c(r30)
/* 80C4DD1C  3B 00 00 01 */	li r24, 1
/* 80C4DD20  2C 1B 00 00 */	cmpwi r27, 0
/* 80C4DD24  40 80 00 0C */	bge lbl_80C4DD30
/* 80C4DD28  1F 7B FF FF */	mulli r27, r27, -1
/* 80C4DD2C  3B 00 FF FF */	li r24, -1
lbl_80C4DD30:
/* 80C4DD30  3B 20 00 00 */	li r25, 0
/* 80C4DD34  3B 40 00 00 */	li r26, 0
/* 80C4DD38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4DD3C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80C4DD40  3C 60 80 C5 */	lis r3, l_se_angle@ha
/* 80C4DD44  3A E3 E8 B8 */	addi r23, r3, l_se_angle@l
/* 80C4DD48  48 00 03 74 */	b lbl_80C4E0BC
lbl_80C4DD4C:
/* 80C4DD4C  38 A0 00 00 */	li r5, 0
/* 80C4DD50  38 60 00 00 */	li r3, 0
/* 80C4DD54  57 84 04 3E */	clrlwi r4, r28, 0x10
/* 80C4DD58  38 00 00 04 */	li r0, 4
/* 80C4DD5C  7C 09 03 A6 */	mtctr r0
lbl_80C4DD60:
/* 80C4DD60  7C 17 1A 2E */	lhzx r0, r23, r3
/* 80C4DD64  7C 04 00 40 */	cmplw r4, r0
/* 80C4DD68  40 82 03 30 */	bne lbl_80C4E098
/* 80C4DD6C  80 1E 0B 40 */	lwz r0, 0xb40(r30)
/* 80C4DD70  7C 05 00 00 */	cmpw r5, r0
/* 80C4DD74  41 82 03 24 */	beq lbl_80C4E098
/* 80C4DD78  3B 20 00 01 */	li r25, 1
/* 80C4DD7C  90 BE 0B 40 */	stw r5, 0xb40(r30)
/* 80C4DD80  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 80C4DD84  2C 00 00 00 */	cmpwi r0, 0
/* 80C4DD88  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080181@ha */
/* 80C4DD8C  38 03 01 81 */	addi r0, r3, 0x0181 /* 0x00080181@l */
/* 80C4DD90  40 82 00 08 */	bne lbl_80C4DD98
/* 80C4DD94  38 03 01 7F */	addi r0, r3, 0x17f
lbl_80C4DD98:
/* 80C4DD98  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C4DD9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C4DDA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C4DDA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C4DDA8  38 81 00 20 */	addi r4, r1, 0x20
/* 80C4DDAC  38 A1 00 34 */	addi r5, r1, 0x34
/* 80C4DDB0  38 C0 00 00 */	li r6, 0
/* 80C4DDB4  38 E0 00 00 */	li r7, 0
/* 80C4DDB8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C4DDBC  FC 40 08 90 */	fmr f2, f1
/* 80C4DDC0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C4DDC4  FC 80 18 90 */	fmr f4, f3
/* 80C4DDC8  39 00 00 00 */	li r8, 0
/* 80C4DDCC  4B 65 DB B8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C4DDD0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C4DDD4  7C 00 07 74 */	extsb r0, r0
/* 80C4DDD8  2C 00 00 07 */	cmpwi r0, 7
/* 80C4DDDC  40 82 00 B0 */	bne lbl_80C4DE8C
/* 80C4DDE0  3C 60 80 C5 */	lis r3, searchLv3Water__FPvPv@ha
/* 80C4DDE4  38 63 D7 A8 */	addi r3, r3, searchLv3Water__FPvPv@l
/* 80C4DDE8  7F C4 F3 78 */	mr r4, r30
/* 80C4DDEC  4B 3C BA 0C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C4DDF0  7C 75 1B 79 */	or. r21, r3, r3
/* 80C4DDF4  41 82 02 B0 */	beq lbl_80C4E0A4
/* 80C4DDF8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C4DDFC  38 80 00 00 */	li r4, 0
/* 80C4DE00  90 81 00 08 */	stw r4, 8(r1)
/* 80C4DE04  38 00 FF FF */	li r0, -1
/* 80C4DE08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4DE0C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C4DE10  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C4DE14  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C4DE18  38 80 00 00 */	li r4, 0
/* 80C4DE1C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AB0@ha */
/* 80C4DE20  38 A5 8A B0 */	addi r5, r5, 0x8AB0 /* 0x00008AB0@l */
/* 80C4DE24  38 D5 04 D0 */	addi r6, r21, 0x4d0
/* 80C4DE28  38 E0 00 00 */	li r7, 0
/* 80C4DE2C  39 00 00 00 */	li r8, 0
/* 80C4DE30  39 20 00 00 */	li r9, 0
/* 80C4DE34  39 40 00 FF */	li r10, 0xff
/* 80C4DE38  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C4DE3C  4B 3F EC 54 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C4DE40  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C4DE44  38 80 00 00 */	li r4, 0
/* 80C4DE48  90 81 00 08 */	stw r4, 8(r1)
/* 80C4DE4C  38 00 FF FF */	li r0, -1
/* 80C4DE50  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4DE54  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C4DE58  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C4DE5C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C4DE60  38 80 00 00 */	li r4, 0
/* 80C4DE64  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008AB1@ha */
/* 80C4DE68  38 A5 8A B1 */	addi r5, r5, 0x8AB1 /* 0x00008AB1@l */
/* 80C4DE6C  38 D5 04 D0 */	addi r6, r21, 0x4d0
/* 80C4DE70  38 E0 00 00 */	li r7, 0
/* 80C4DE74  39 00 00 00 */	li r8, 0
/* 80C4DE78  39 20 00 00 */	li r9, 0
/* 80C4DE7C  39 40 00 FF */	li r10, 0xff
/* 80C4DE80  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C4DE84  4B 3F EC 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C4DE88  48 00 02 1C */	b lbl_80C4E0A4
lbl_80C4DE8C:
/* 80C4DE8C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80C4DE90  40 82 00 B0 */	bne lbl_80C4DF40
/* 80C4DE94  3C 60 80 C5 */	lis r3, searchLv3Water__FPvPv@ha
/* 80C4DE98  38 63 D7 A8 */	addi r3, r3, searchLv3Water__FPvPv@l
/* 80C4DE9C  7F C4 F3 78 */	mr r4, r30
/* 80C4DEA0  4B 3C B9 58 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C4DEA4  7C 75 1B 79 */	or. r21, r3, r3
/* 80C4DEA8  41 82 01 FC */	beq lbl_80C4E0A4
/* 80C4DEAC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C4DEB0  38 80 00 00 */	li r4, 0
/* 80C4DEB4  90 81 00 08 */	stw r4, 8(r1)
/* 80C4DEB8  38 00 FF FF */	li r0, -1
/* 80C4DEBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4DEC0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C4DEC4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C4DEC8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C4DECC  38 80 00 00 */	li r4, 0
/* 80C4DED0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008ABD@ha */
/* 80C4DED4  38 A5 8A BD */	addi r5, r5, 0x8ABD /* 0x00008ABD@l */
/* 80C4DED8  38 D5 04 D0 */	addi r6, r21, 0x4d0
/* 80C4DEDC  38 E0 00 00 */	li r7, 0
/* 80C4DEE0  39 00 00 00 */	li r8, 0
/* 80C4DEE4  39 20 00 00 */	li r9, 0
/* 80C4DEE8  39 40 00 FF */	li r10, 0xff
/* 80C4DEEC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C4DEF0  4B 3F EB A0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C4DEF4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C4DEF8  38 80 00 00 */	li r4, 0
/* 80C4DEFC  90 81 00 08 */	stw r4, 8(r1)
/* 80C4DF00  38 00 FF FF */	li r0, -1
/* 80C4DF04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4DF08  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C4DF0C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C4DF10  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C4DF14  38 80 00 00 */	li r4, 0
/* 80C4DF18  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008ABE@ha */
/* 80C4DF1C  38 A5 8A BE */	addi r5, r5, 0x8ABE /* 0x00008ABE@l */
/* 80C4DF20  38 D5 04 D0 */	addi r6, r21, 0x4d0
/* 80C4DF24  38 E0 00 00 */	li r7, 0
/* 80C4DF28  39 00 00 00 */	li r8, 0
/* 80C4DF2C  39 20 00 00 */	li r9, 0
/* 80C4DF30  39 40 00 FF */	li r10, 0xff
/* 80C4DF34  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C4DF38  4B 3F EB 58 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C4DF3C  48 00 01 68 */	b lbl_80C4E0A4
lbl_80C4DF40:
/* 80C4DF40  2C 00 00 02 */	cmpwi r0, 2
/* 80C4DF44  40 82 01 60 */	bne lbl_80C4E0A4
/* 80C4DF48  3C 60 80 C5 */	lis r3, searchLv3Water__FPvPv@ha
/* 80C4DF4C  38 63 D7 A8 */	addi r3, r3, searchLv3Water__FPvPv@l
/* 80C4DF50  7F C4 F3 78 */	mr r4, r30
/* 80C4DF54  4B 3C B8 A4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C4DF58  7C 75 1B 79 */	or. r21, r3, r3
/* 80C4DF5C  41 82 01 48 */	beq lbl_80C4E0A4
/* 80C4DF60  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C4DF64  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C4DF68  2C 00 00 09 */	cmpwi r0, 9
/* 80C4DF6C  40 82 00 98 */	bne lbl_80C4E004
/* 80C4DF70  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C4DF74  38 80 00 00 */	li r4, 0
/* 80C4DF78  90 81 00 08 */	stw r4, 8(r1)
/* 80C4DF7C  38 00 FF FF */	li r0, -1
/* 80C4DF80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4DF84  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C4DF88  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C4DF8C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C4DF90  38 80 00 00 */	li r4, 0
/* 80C4DF94  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B04@ha */
/* 80C4DF98  38 A5 8B 04 */	addi r5, r5, 0x8B04 /* 0x00008B04@l */
/* 80C4DF9C  38 D5 04 D0 */	addi r6, r21, 0x4d0
/* 80C4DFA0  38 E0 00 00 */	li r7, 0
/* 80C4DFA4  39 00 00 00 */	li r8, 0
/* 80C4DFA8  39 20 00 00 */	li r9, 0
/* 80C4DFAC  39 40 00 FF */	li r10, 0xff
/* 80C4DFB0  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C4DFB4  4B 3F EA DC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C4DFB8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C4DFBC  38 80 00 00 */	li r4, 0
/* 80C4DFC0  90 81 00 08 */	stw r4, 8(r1)
/* 80C4DFC4  38 00 FF FF */	li r0, -1
/* 80C4DFC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4DFCC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C4DFD0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C4DFD4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C4DFD8  38 80 00 00 */	li r4, 0
/* 80C4DFDC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B05@ha */
/* 80C4DFE0  38 A5 8B 05 */	addi r5, r5, 0x8B05 /* 0x00008B05@l */
/* 80C4DFE4  38 D5 04 D0 */	addi r6, r21, 0x4d0
/* 80C4DFE8  38 E0 00 00 */	li r7, 0
/* 80C4DFEC  39 00 00 00 */	li r8, 0
/* 80C4DFF0  39 20 00 00 */	li r9, 0
/* 80C4DFF4  39 40 00 FF */	li r10, 0xff
/* 80C4DFF8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C4DFFC  4B 3F EA 94 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C4E000  48 00 00 A4 */	b lbl_80C4E0A4
lbl_80C4E004:
/* 80C4E004  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C4E008  38 80 00 00 */	li r4, 0
/* 80C4E00C  90 81 00 08 */	stw r4, 8(r1)
/* 80C4E010  38 00 FF FF */	li r0, -1
/* 80C4E014  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4E018  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C4E01C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C4E020  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C4E024  38 80 00 00 */	li r4, 0
/* 80C4E028  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B06@ha */
/* 80C4E02C  38 A5 8B 06 */	addi r5, r5, 0x8B06 /* 0x00008B06@l */
/* 80C4E030  38 D5 04 D0 */	addi r6, r21, 0x4d0
/* 80C4E034  38 E0 00 00 */	li r7, 0
/* 80C4E038  39 00 00 00 */	li r8, 0
/* 80C4E03C  39 20 00 00 */	li r9, 0
/* 80C4E040  39 40 00 FF */	li r10, 0xff
/* 80C4E044  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C4E048  4B 3F EA 48 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C4E04C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80C4E050  38 80 00 00 */	li r4, 0
/* 80C4E054  90 81 00 08 */	stw r4, 8(r1)
/* 80C4E058  38 00 FF FF */	li r0, -1
/* 80C4E05C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C4E060  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C4E064  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C4E068  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C4E06C  38 80 00 00 */	li r4, 0
/* 80C4E070  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008B07@ha */
/* 80C4E074  38 A5 8B 07 */	addi r5, r5, 0x8B07 /* 0x00008B07@l */
/* 80C4E078  38 D5 04 D0 */	addi r6, r21, 0x4d0
/* 80C4E07C  38 E0 00 00 */	li r7, 0
/* 80C4E080  39 00 00 00 */	li r8, 0
/* 80C4E084  39 20 00 00 */	li r9, 0
/* 80C4E088  39 40 00 FF */	li r10, 0xff
/* 80C4E08C  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C4E090  4B 3F EA 00 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C4E094  48 00 00 10 */	b lbl_80C4E0A4
lbl_80C4E098:
/* 80C4E098  38 A5 00 01 */	addi r5, r5, 1
/* 80C4E09C  38 63 00 02 */	addi r3, r3, 2
/* 80C4E0A0  42 00 FC C0 */	bdnz lbl_80C4DD60
lbl_80C4E0A4:
/* 80C4E0A4  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 80C4E0A8  28 00 00 01 */	cmplwi r0, 1
/* 80C4E0AC  41 82 00 18 */	beq lbl_80C4E0C4
/* 80C4E0B0  7C 1C C2 14 */	add r0, r28, r24
/* 80C4E0B4  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 80C4E0B8  3B 5A 00 01 */	addi r26, r26, 1
lbl_80C4E0BC:
/* 80C4E0BC  7C 1A D8 00 */	cmpw r26, r27
/* 80C4E0C0  41 80 FC 8C */	blt lbl_80C4DD4C
lbl_80C4E0C4:
/* 80C4E0C4  A8 7E 04 E0 */	lha r3, 0x4e0(r30)
/* 80C4E0C8  A8 1E 06 1C */	lha r0, 0x61c(r30)
/* 80C4E0CC  7C 03 02 14 */	add r0, r3, r0
/* 80C4E0D0  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 80C4E0D4  7F C3 F3 78 */	mr r3, r30
/* 80C4E0D8  4B FF F7 95 */	bl setMtx__15daObjKWheel00_cFv
/* 80C4E0DC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80C4E0E0  80 9E 06 18 */	lwz r4, 0x618(r30)
/* 80C4E0E4  38 84 00 24 */	addi r4, r4, 0x24
/* 80C4E0E8  4B 6F 83 C8 */	b PSMTXCopy
/* 80C4E0EC  38 1E 05 B8 */	addi r0, r30, 0x5b8
/* 80C4E0F0  90 16 00 00 */	stw r0, 0(r22)
/* 80C4E0F4  A8 1E 06 1C */	lha r0, 0x61c(r30)
/* 80C4E0F8  2C 00 00 00 */	cmpwi r0, 0
/* 80C4E0FC  41 82 00 98 */	beq lbl_80C4E194
/* 80C4E100  3B 40 00 00 */	li r26, 0
/* 80C4E104  3A A0 00 00 */	li r21, 0
/* 80C4E108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4E10C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4E110  3A E3 23 3C */	addi r23, r3, 0x233c
/* 80C4E114  3C 60 80 C5 */	lis r3, l_pos@ha
/* 80C4E118  3A C3 E8 C0 */	addi r22, r3, l_pos@l
lbl_80C4E11C:
/* 80C4E11C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80C4E120  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 80C4E124  54 00 10 3A */	slwi r0, r0, 2
/* 80C4E128  7C 1A 02 14 */	add r0, r26, r0
/* 80C4E12C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C4E130  7C 96 02 14 */	add r4, r22, r0
/* 80C4E134  38 A1 00 28 */	addi r5, r1, 0x28
/* 80C4E138  4B 6F 8C 34 */	b PSMTXMultVec
/* 80C4E13C  7F 3E AA 14 */	add r25, r30, r21
/* 80C4E140  3B 19 07 84 */	addi r24, r25, 0x784
/* 80C4E144  7F 03 C3 78 */	mr r3, r24
/* 80C4E148  38 81 00 28 */	addi r4, r1, 0x28
/* 80C4E14C  4B 62 14 FC */	b SetC__8cM3dGSphFRC4cXyz
/* 80C4E150  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 80C4E154  2C 00 00 00 */	cmpwi r0, 0
/* 80C4E158  40 82 00 14 */	bne lbl_80C4E16C
/* 80C4E15C  7F 03 C3 78 */	mr r3, r24
/* 80C4E160  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C4E164  4B 62 15 A4 */	b SetR__8cM3dGSphFf
/* 80C4E168  48 00 00 10 */	b lbl_80C4E178
lbl_80C4E16C:
/* 80C4E16C  7F 03 C3 78 */	mr r3, r24
/* 80C4E170  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C4E174  4B 62 15 94 */	b SetR__8cM3dGSphFf
lbl_80C4E178:
/* 80C4E178  7E E3 BB 78 */	mr r3, r23
/* 80C4E17C  38 99 06 60 */	addi r4, r25, 0x660
/* 80C4E180  4B 61 6A 28 */	b Set__4cCcSFP8cCcD_Obj
/* 80C4E184  3B 5A 00 01 */	addi r26, r26, 1
/* 80C4E188  2C 1A 00 04 */	cmpwi r26, 4
/* 80C4E18C  3A B5 01 38 */	addi r21, r21, 0x138
/* 80C4E190  41 80 FF 8C */	blt lbl_80C4E11C
lbl_80C4E194:
/* 80C4E194  38 60 00 01 */	li r3, 1
/* 80C4E198  39 61 00 70 */	addi r11, r1, 0x70
/* 80C4E19C  4B 71 40 6C */	b _restgpr_21
/* 80C4E1A0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C4E1A4  7C 08 03 A6 */	mtlr r0
/* 80C4E1A8  38 21 00 70 */	addi r1, r1, 0x70
/* 80C4E1AC  4E 80 00 20 */	blr 
