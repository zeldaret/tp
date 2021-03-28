lbl_80D00D78:
/* 80D00D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00D7C  7C 08 02 A6 */	mflr r0
/* 80D00D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00D84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D00D88  7C 7F 1B 78 */	mr r31, r3
/* 80D00D8C  88 03 05 AD */	lbz r0, 0x5ad(r3)
/* 80D00D90  28 00 00 00 */	cmplwi r0, 0
/* 80D00D94  40 82 00 50 */	bne lbl_80D00DE4
/* 80D00D98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D00D9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D00DA0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D00DA4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D00DA8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D00DAC  7C 05 07 74 */	extsb r5, r0
/* 80D00DB0  4B 33 45 B0 */	b isSwitch__10dSv_info_cCFii
/* 80D00DB4  2C 03 00 00 */	cmpwi r3, 0
/* 80D00DB8  41 82 00 10 */	beq lbl_80D00DC8
/* 80D00DBC  38 00 00 01 */	li r0, 1
/* 80D00DC0  B0 1F 05 C4 */	sth r0, 0x5c4(r31)
/* 80D00DC4  48 00 00 0C */	b lbl_80D00DD0
lbl_80D00DC8:
/* 80D00DC8  38 00 00 00 */	li r0, 0
/* 80D00DCC  B0 1F 05 C4 */	sth r0, 0x5c4(r31)
lbl_80D00DD0:
/* 80D00DD0  38 00 00 00 */	li r0, 0
/* 80D00DD4  98 1F 05 CF */	stb r0, 0x5cf(r31)
/* 80D00DD8  38 00 00 01 */	li r0, 1
/* 80D00DDC  98 1F 05 CE */	stb r0, 0x5ce(r31)
/* 80D00DE0  48 00 00 A8 */	b lbl_80D00E88
lbl_80D00DE4:
/* 80D00DE4  28 00 00 01 */	cmplwi r0, 1
/* 80D00DE8  40 82 00 A0 */	bne lbl_80D00E88
/* 80D00DEC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D00DF0  54 03 A6 3E */	rlwinm r3, r0, 0x14, 0x18, 0x1f
/* 80D00DF4  A0 1F 05 D2 */	lhz r0, 0x5d2(r31)
/* 80D00DF8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80D00DFC  28 03 00 FF */	cmplwi r3, 0xff
/* 80D00E00  40 82 00 08 */	bne lbl_80D00E08
/* 80D00E04  38 60 00 0C */	li r3, 0xc
lbl_80D00E08:
/* 80D00E08  28 00 00 FF */	cmplwi r0, 0xff
/* 80D00E0C  40 82 00 08 */	bne lbl_80D00E14
/* 80D00E10  38 00 00 0C */	li r0, 0xc
lbl_80D00E14:
/* 80D00E14  98 7F 05 CE */	stb r3, 0x5ce(r31)
/* 80D00E18  98 1F 05 CF */	stb r0, 0x5cf(r31)
/* 80D00E1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D00E20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D00E24  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D00E28  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D00E2C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D00E30  7C 05 07 74 */	extsb r5, r0
/* 80D00E34  4B 33 45 2C */	b isSwitch__10dSv_info_cCFii
/* 80D00E38  2C 03 00 00 */	cmpwi r3, 0
/* 80D00E3C  41 82 00 10 */	beq lbl_80D00E4C
/* 80D00E40  88 1F 05 CE */	lbz r0, 0x5ce(r31)
/* 80D00E44  B0 1F 05 C4 */	sth r0, 0x5c4(r31)
/* 80D00E48  48 00 00 40 */	b lbl_80D00E88
lbl_80D00E4C:
/* 80D00E4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D00E50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D00E54  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D00E58  54 04 66 3E */	rlwinm r4, r0, 0xc, 0x18, 0x1f
/* 80D00E5C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D00E60  7C 05 07 74 */	extsb r5, r0
/* 80D00E64  4B 33 44 FC */	b isSwitch__10dSv_info_cCFii
/* 80D00E68  2C 03 00 00 */	cmpwi r3, 0
/* 80D00E6C  41 82 00 14 */	beq lbl_80D00E80
/* 80D00E70  88 1F 05 CF */	lbz r0, 0x5cf(r31)
/* 80D00E74  7C 00 00 D0 */	neg r0, r0
/* 80D00E78  B0 1F 05 C4 */	sth r0, 0x5c4(r31)
/* 80D00E7C  48 00 00 0C */	b lbl_80D00E88
lbl_80D00E80:
/* 80D00E80  38 00 00 00 */	li r0, 0
/* 80D00E84  B0 1F 05 C4 */	sth r0, 0x5c4(r31)
lbl_80D00E88:
/* 80D00E88  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D00E8C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D00E90  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80D00E94  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80D00E98  80 83 00 04 */	lwz r4, 4(r3)
/* 80D00E9C  7F E3 FB 78 */	mr r3, r31
/* 80D00EA0  4B 31 96 D8 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80D00EA4  3C 60 80 D0 */	lis r3, PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@ha
/* 80D00EA8  38 03 0B D8 */	addi r0, r3, PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@l
/* 80D00EAC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80D00EB0  90 03 00 10 */	stw r0, 0x10(r3)
/* 80D00EB4  7F E3 FB 78 */	mr r3, r31
/* 80D00EB8  48 00 02 A9 */	bl init_modeWait__13daObjSwTurn_cFv
/* 80D00EBC  7F E3 FB 78 */	mr r3, r31
/* 80D00EC0  4B 37 7A 90 */	b MoveBGExecute__16dBgS_MoveBgActorFv
/* 80D00EC4  7F E3 FB 78 */	mr r3, r31
/* 80D00EC8  4B FF FE 11 */	bl initBaseMtx__13daObjSwTurn_cFv
/* 80D00ECC  38 60 00 01 */	li r3, 1
/* 80D00ED0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D00ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00ED8  7C 08 03 A6 */	mtlr r0
/* 80D00EDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00EE0  4E 80 00 20 */	blr 
