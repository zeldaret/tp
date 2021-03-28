lbl_8010F8E4:
/* 8010F8E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010F8E8  7C 08 02 A6 */	mflr r0
/* 8010F8EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8010F8F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8010F8F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8010F8F8  7C 7E 1B 78 */	mr r30, r3
/* 8010F8FC  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 8010F900  A8 63 30 0C */	lha r3, 0x300c(r3)
/* 8010F904  7C 60 07 35 */	extsh. r0, r3
/* 8010F908  40 82 00 10 */	bne lbl_8010F918
/* 8010F90C  80 7E 07 18 */	lwz r3, 0x718(r30)
/* 8010F910  4B F9 99 39 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 8010F914  48 00 00 58 */	b lbl_8010F96C
lbl_8010F918:
/* 8010F918  2C 03 00 02 */	cmpwi r3, 2
/* 8010F91C  40 82 00 24 */	bne lbl_8010F940
/* 8010F920  80 7E 07 20 */	lwz r3, 0x720(r30)
/* 8010F924  4B F9 99 25 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 8010F928  2C 03 00 00 */	cmpwi r3, 0
/* 8010F92C  41 82 00 40 */	beq lbl_8010F96C
/* 8010F930  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 8010F934  80 7E 07 2C */	lwz r3, 0x72c(r30)
/* 8010F938  D0 03 00 08 */	stfs f0, 8(r3)
/* 8010F93C  48 00 00 30 */	b lbl_8010F96C
lbl_8010F940:
/* 8010F940  80 7E 07 1C */	lwz r3, 0x71c(r30)
/* 8010F944  4B F9 99 05 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 8010F948  2C 03 00 00 */	cmpwi r3, 0
/* 8010F94C  41 82 00 20 */	beq lbl_8010F96C
/* 8010F950  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 8010F954  80 63 00 04 */	lwz r3, 4(r3)
/* 8010F958  38 63 00 58 */	addi r3, r3, 0x58
/* 8010F95C  80 9E 07 18 */	lwz r4, 0x718(r30)
/* 8010F960  48 22 03 65 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8010F964  38 00 00 00 */	li r0, 0
/* 8010F968  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_8010F96C:
/* 8010F96C  7F C3 F3 78 */	mr r3, r30
/* 8010F970  38 80 01 04 */	li r4, 0x104
/* 8010F974  4B F9 CB E5 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 8010F978  2C 03 00 00 */	cmpwi r3, 0
/* 8010F97C  41 82 01 30 */	beq lbl_8010FAAC
/* 8010F980  7F E3 FB 78 */	mr r3, r31
/* 8010F984  48 04 EB 49 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010F988  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010F98C  41 82 00 70 */	beq lbl_8010F9FC
/* 8010F990  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 8010F994  28 00 00 6C */	cmplwi r0, 0x6c
/* 8010F998  40 82 00 18 */	bne lbl_8010F9B0
/* 8010F99C  7F C3 F3 78 */	mr r3, r30
/* 8010F9A0  38 80 01 06 */	li r4, 0x106
/* 8010F9A4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 8010F9A8  4B F9 D6 09 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 8010F9AC  48 00 02 70 */	b lbl_8010FC1C
lbl_8010F9B0:
/* 8010F9B0  7F C3 F3 78 */	mr r3, r30
/* 8010F9B4  38 80 01 05 */	li r4, 0x105
/* 8010F9B8  3C A0 80 39 */	lis r5, m__20daAlinkHIO_bottle_c0@ha
/* 8010F9BC  38 A5 E9 0C */	addi r5, r5, m__20daAlinkHIO_bottle_c0@l
/* 8010F9C0  38 A5 00 3C */	addi r5, r5, 0x3c
/* 8010F9C4  4B F9 D7 31 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010F9C8  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 8010F9CC  28 00 00 67 */	cmplwi r0, 0x67
/* 8010F9D0  40 82 02 4C */	bne lbl_8010FC1C
/* 8010F9D4  C0 3E 33 B4 */	lfs f1, 0x33b4(r30)
/* 8010F9D8  C0 1E 05 CC */	lfs f0, 0x5cc(r30)
/* 8010F9DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010F9E0  40 81 00 10 */	ble lbl_8010F9F0
/* 8010F9E4  38 00 00 00 */	li r0, 0
/* 8010F9E8  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8010F9EC  48 00 02 30 */	b lbl_8010FC1C
lbl_8010F9F0:
/* 8010F9F0  38 00 00 01 */	li r0, 1
/* 8010F9F4  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8010F9F8  48 00 02 24 */	b lbl_8010FC1C
lbl_8010F9FC:
/* 8010F9FC  7F E3 FB 78 */	mr r3, r31
/* 8010FA00  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 8010FA04  48 21 8A 29 */	bl checkPass__12J3DFrameCtrlFf
/* 8010FA08  2C 03 00 00 */	cmpwi r3, 0
/* 8010FA0C  41 82 00 80 */	beq lbl_8010FA8C
/* 8010FA10  38 00 00 01 */	li r0, 1
/* 8010FA14  B0 1E 30 1A */	sth r0, 0x301a(r30)
/* 8010FA18  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8010FA1C  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 8010FA20  80 63 00 04 */	lwz r3, 4(r3)
/* 8010FA24  38 63 00 58 */	addi r3, r3, 0x58
/* 8010FA28  80 9E 07 1C */	lwz r4, 0x71c(r30)
/* 8010FA2C  48 22 02 99 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8010FA30  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 8010FA34  28 00 00 6C */	cmplwi r0, 0x6c
/* 8010FA38  40 82 01 E4 */	bne lbl_8010FC1C
/* 8010FA3C  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 8010FA40  38 63 00 24 */	addi r3, r3, 0x24
/* 8010FA44  3C 80 80 39 */	lis r4, bottleTop@ha
/* 8010FA48  38 84 1A 14 */	addi r4, r4, bottleTop@l
/* 8010FA4C  38 A1 00 0C */	addi r5, r1, 0xc
/* 8010FA50  48 23 73 1D */	bl PSMTXMultVec
/* 8010FA54  7F C3 F3 78 */	mr r3, r30
/* 8010FA58  38 81 00 0C */	addi r4, r1, 0xc
/* 8010FA5C  38 A0 00 00 */	li r5, 0
/* 8010FA60  4B FF F9 FD */	bl makeFairy__9daAlink_cFP4cXyzUl
/* 8010FA64  28 03 00 00 */	cmplwi r3, 0
/* 8010FA68  41 82 01 B4 */	beq lbl_8010FC1C
/* 8010FA6C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 8010FA70  64 00 08 00 */	oris r0, r0, 0x800
/* 8010FA74  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 8010FA78  38 00 00 00 */	li r0, 0
/* 8010FA7C  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 8010FA80  7F C3 F3 78 */	mr r3, r30
/* 8010FA84  48 01 50 E5 */	bl resetFairyEffect__9daAlink_cFv
/* 8010FA88  48 00 01 94 */	b lbl_8010FC1C
lbl_8010FA8C:
/* 8010FA8C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8010FA90  C0 02 93 C0 */	lfs f0, lit_10193(r2)
/* 8010FA94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010FA98  4C 41 13 82 */	cror 2, 1, 2
/* 8010FA9C  40 82 01 80 */	bne lbl_8010FC1C
/* 8010FAA0  38 00 00 05 */	li r0, 5
/* 8010FAA4  98 1E 2F 93 */	stb r0, 0x2f93(r30)
/* 8010FAA8  48 00 01 74 */	b lbl_8010FC1C
lbl_8010FAAC:
/* 8010FAAC  7F E3 FB 78 */	mr r3, r31
/* 8010FAB0  48 04 EA 1D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8010FAB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8010FAB8  41 82 00 24 */	beq lbl_8010FADC
/* 8010FABC  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 8010FAC0  2C 00 00 00 */	cmpwi r0, 0
/* 8010FAC4  41 82 00 18 */	beq lbl_8010FADC
/* 8010FAC8  7F C3 F3 78 */	mr r3, r30
/* 8010FACC  4B FA FD B9 */	bl returnKeepItemData__9daAlink_cFv
/* 8010FAD0  7F C3 F3 78 */	mr r3, r30
/* 8010FAD4  48 00 81 BD */	bl resetSpecialEvent__9daAlink_cFv
/* 8010FAD8  48 00 00 B0 */	b lbl_8010FB88
lbl_8010FADC:
/* 8010FADC  7F E3 FB 78 */	mr r3, r31
/* 8010FAE0  C0 22 94 B4 */	lfs f1, lit_17382(r2)
/* 8010FAE4  48 21 89 49 */	bl checkPass__12J3DFrameCtrlFf
/* 8010FAE8  2C 03 00 00 */	cmpwi r3, 0
/* 8010FAEC  41 82 00 6C */	beq lbl_8010FB58
/* 8010FAF0  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 8010FAF4  80 63 00 04 */	lwz r3, 4(r3)
/* 8010FAF8  38 63 00 58 */	addi r3, r3, 0x58
/* 8010FAFC  80 9E 07 20 */	lwz r4, 0x720(r30)
/* 8010FB00  48 22 01 C5 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 8010FB04  38 00 00 02 */	li r0, 2
/* 8010FB08  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8010FB0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8010FB10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8010FB14  38 63 00 9C */	addi r3, r3, 0x9c
/* 8010FB18  88 9E 2F 9C */	lbz r4, 0x2f9c(r30)
/* 8010FB1C  4B F2 3B A1 */	bl setEquipBottleItemEmpty__17dSv_player_item_cFUc
/* 8010FB20  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 8010FB24  28 00 00 67 */	cmplwi r0, 0x67
/* 8010FB28  40 82 00 60 */	bne lbl_8010FB88
/* 8010FB2C  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 8010FB30  2C 00 00 00 */	cmpwi r0, 0
/* 8010FB34  41 82 00 54 */	beq lbl_8010FB88
/* 8010FB38  7F C3 F3 78 */	mr r3, r30
/* 8010FB3C  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002004E@ha */
/* 8010FB40  38 84 00 4E */	addi r4, r4, 0x004E /* 0x0002004E@l */
/* 8010FB44  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 8010FB48  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8010FB4C  7D 89 03 A6 */	mtctr r12
/* 8010FB50  4E 80 04 21 */	bctrl 
/* 8010FB54  48 00 00 34 */	b lbl_8010FB88
lbl_8010FB58:
/* 8010FB58  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8010FB5C  C0 02 94 04 */	lfs f0, lit_13794(r2)
/* 8010FB60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010FB64  40 81 00 1C */	ble lbl_8010FB80
/* 8010FB68  C0 02 95 58 */	lfs f0, lit_24323(r2)
/* 8010FB6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010FB70  40 80 00 10 */	bge lbl_8010FB80
/* 8010FB74  38 00 00 01 */	li r0, 1
/* 8010FB78  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 8010FB7C  48 00 00 0C */	b lbl_8010FB88
lbl_8010FB80:
/* 8010FB80  38 00 00 00 */	li r0, 0
/* 8010FB84  B0 1E 30 10 */	sth r0, 0x3010(r30)
lbl_8010FB88:
/* 8010FB88  A8 1E 30 08 */	lha r0, 0x3008(r30)
/* 8010FB8C  2C 00 00 00 */	cmpwi r0, 0
/* 8010FB90  40 82 00 8C */	bne lbl_8010FC1C
/* 8010FB94  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8010FB98  C0 02 92 9C */	lfs f0, lit_5944(r2)
/* 8010FB9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8010FBA0  4C 41 13 82 */	cror 2, 1, 2
/* 8010FBA4  40 82 00 78 */	bne lbl_8010FC1C
/* 8010FBA8  80 1E 32 CC */	lwz r0, 0x32cc(r30)
/* 8010FBAC  90 01 00 08 */	stw r0, 8(r1)
/* 8010FBB0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8010FBB4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8010FBB8  38 81 00 08 */	addi r4, r1, 8
/* 8010FBBC  4B F0 9C 3D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8010FBC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8010FBC4  41 82 00 58 */	beq lbl_8010FC1C
/* 8010FBC8  38 00 00 00 */	li r0, 0
/* 8010FBCC  90 1E 07 0C */	stw r0, 0x70c(r30)
/* 8010FBD0  38 00 00 01 */	li r0, 1
/* 8010FBD4  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 8010FBD8  80 7E 07 08 */	lwz r3, 0x708(r30)
/* 8010FBDC  38 63 00 24 */	addi r3, r3, 0x24
/* 8010FBE0  3C 80 80 39 */	lis r4, bottleTop@ha
/* 8010FBE4  38 84 1A 14 */	addi r4, r4, bottleTop@l
/* 8010FBE8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 8010FBEC  48 23 71 81 */	bl PSMTXMultVec
/* 8010FBF0  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8010FBF4  60 00 08 00 */	ori r0, r0, 0x800
/* 8010FBF8  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8010FBFC  A8 1E 30 0A */	lha r0, 0x300a(r30)
/* 8010FC00  2C 00 00 00 */	cmpwi r0, 0
/* 8010FC04  41 82 00 18 */	beq lbl_8010FC1C
/* 8010FC08  7F E3 FB 78 */	mr r3, r31
/* 8010FC0C  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8010FC10  81 8C 00 08 */	lwz r12, 8(r12)
/* 8010FC14  7D 89 03 A6 */	mtctr r12
/* 8010FC18  4E 80 04 21 */	bctrl 
lbl_8010FC1C:
/* 8010FC1C  38 60 00 01 */	li r3, 1
/* 8010FC20  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8010FC24  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010FC28  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8010FC2C  7C 08 03 A6 */	mtlr r0
/* 8010FC30  38 21 00 20 */	addi r1, r1, 0x20
/* 8010FC34  4E 80 00 20 */	blr 
