lbl_8098EA00:
/* 8098EA00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8098EA04  7C 08 02 A6 */	mflr r0
/* 8098EA08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8098EA0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8098EA10  4B 9D 37 CC */	b _savegpr_29
/* 8098EA14  7C 7D 1B 78 */	mr r29, r3
/* 8098EA18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8098EA1C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 8098EA20  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8098EA24  3C A0 80 99 */	lis r5, m__17daNpcChin_Param_c@ha
/* 8098EA28  38 A5 19 0C */	addi r5, r5, m__17daNpcChin_Param_c@l
/* 8098EA2C  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8098EA30  4B 7C 4F C0 */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 8098EA34  2C 03 00 00 */	cmpwi r3, 0
/* 8098EA38  40 82 00 14 */	bne lbl_8098EA4C
/* 8098EA3C  38 7D 0E 70 */	addi r3, r29, 0xe70
/* 8098EA40  4B 7C 1C A0 */	b remove__18daNpcF_ActorMngr_cFv
/* 8098EA44  38 60 00 00 */	li r3, 0
/* 8098EA48  48 00 00 6C */	b lbl_8098EAB4
lbl_8098EA4C:
/* 8098EA4C  38 7D 0E 70 */	addi r3, r29, 0xe70
/* 8098EA50  4B 7C 1C 9C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 8098EA54  28 03 00 00 */	cmplwi r3, 0
/* 8098EA58  40 82 00 20 */	bne lbl_8098EA78
/* 8098EA5C  7F A3 EB 78 */	mr r3, r29
/* 8098EA60  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8098EA64  7F A5 EB 78 */	mr r5, r29
/* 8098EA68  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 8098EA6C  4B 7C 51 70 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 8098EA70  7C 7E 1B 78 */	mr r30, r3
/* 8098EA74  48 00 00 1C */	b lbl_8098EA90
lbl_8098EA78:
/* 8098EA78  7F A3 EB 78 */	mr r3, r29
/* 8098EA7C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8098EA80  7F A5 EB 78 */	mr r5, r29
/* 8098EA84  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 8098EA88  4B 7C 51 54 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 8098EA8C  7C 7E 1B 78 */	mr r30, r3
lbl_8098EA90:
/* 8098EA90  2C 1E 00 00 */	cmpwi r30, 0
/* 8098EA94  41 82 00 14 */	beq lbl_8098EAA8
/* 8098EA98  38 7D 0E 70 */	addi r3, r29, 0xe70
/* 8098EA9C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8098EAA0  4B 7C 1C 1C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 8098EAA4  48 00 00 0C */	b lbl_8098EAB0
lbl_8098EAA8:
/* 8098EAA8  38 7D 0E 70 */	addi r3, r29, 0xe70
/* 8098EAAC  4B 7C 1C 34 */	b remove__18daNpcF_ActorMngr_cFv
lbl_8098EAB0:
/* 8098EAB0  7F C3 F3 78 */	mr r3, r30
lbl_8098EAB4:
/* 8098EAB4  39 61 00 20 */	addi r11, r1, 0x20
/* 8098EAB8  4B 9D 37 70 */	b _restgpr_29
/* 8098EABC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8098EAC0  7C 08 03 A6 */	mtlr r0
/* 8098EAC4  38 21 00 20 */	addi r1, r1, 0x20
/* 8098EAC8  4E 80 00 20 */	blr 
