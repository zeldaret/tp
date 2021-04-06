lbl_8096AAF0:
/* 8096AAF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096AAF4  7C 08 02 A6 */	mflr r0
/* 8096AAF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096AAFC  39 61 00 20 */	addi r11, r1, 0x20
/* 8096AB00  4B 9F 76 DD */	bl _savegpr_29
/* 8096AB04  7C 7D 1B 78 */	mr r29, r3
/* 8096AB08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096AB0C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096AB10  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8096AB14  3C A0 80 97 */	lis r5, m__19daNpcBlueNS_Param_c@ha /* 0x8096C964@ha */
/* 8096AB18  38 A5 C9 64 */	addi r5, r5, m__19daNpcBlueNS_Param_c@l /* 0x8096C964@l */
/* 8096AB1C  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 8096AB20  4B 7E 8E D1 */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 8096AB24  2C 03 00 00 */	cmpwi r3, 0
/* 8096AB28  40 82 00 14 */	bne lbl_8096AB3C
/* 8096AB2C  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 8096AB30  4B 7E 5B B1 */	bl remove__18daNpcF_ActorMngr_cFv
/* 8096AB34  38 60 00 00 */	li r3, 0
/* 8096AB38  48 00 00 84 */	b lbl_8096ABBC
lbl_8096AB3C:
/* 8096AB3C  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 8096AB40  4B 7E 5B AD */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 8096AB44  28 03 00 00 */	cmplwi r3, 0
/* 8096AB48  40 82 00 2C */	bne lbl_8096AB74
/* 8096AB4C  7F A3 EB 78 */	mr r3, r29
/* 8096AB50  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8096AB54  7F A5 EB 78 */	mr r5, r29
/* 8096AB58  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 8096AB5C  4B 7E 90 81 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 8096AB60  30 03 FF FF */	addic r0, r3, -1
/* 8096AB64  7C 00 19 10 */	subfe r0, r0, r3
/* 8096AB68  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8096AB6C  7C 1E 03 78 */	mr r30, r0
/* 8096AB70  48 00 00 28 */	b lbl_8096AB98
lbl_8096AB74:
/* 8096AB74  7F A3 EB 78 */	mr r3, r29
/* 8096AB78  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8096AB7C  7F A5 EB 78 */	mr r5, r29
/* 8096AB80  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 8096AB84  4B 7E 90 59 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 8096AB88  30 03 FF FF */	addic r0, r3, -1
/* 8096AB8C  7C 00 19 10 */	subfe r0, r0, r3
/* 8096AB90  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8096AB94  7C 1E 03 78 */	mr r30, r0
lbl_8096AB98:
/* 8096AB98  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8096AB9C  41 82 00 14 */	beq lbl_8096ABB0
/* 8096ABA0  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 8096ABA4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8096ABA8  4B 7E 5B 15 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 8096ABAC  48 00 00 0C */	b lbl_8096ABB8
lbl_8096ABB0:
/* 8096ABB0  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 8096ABB4  4B 7E 5B 2D */	bl remove__18daNpcF_ActorMngr_cFv
lbl_8096ABB8:
/* 8096ABB8  57 C3 06 3E */	clrlwi r3, r30, 0x18
lbl_8096ABBC:
/* 8096ABBC  39 61 00 20 */	addi r11, r1, 0x20
/* 8096ABC0  4B 9F 76 69 */	bl _restgpr_29
/* 8096ABC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096ABC8  7C 08 03 A6 */	mtlr r0
/* 8096ABCC  38 21 00 20 */	addi r1, r1, 0x20
/* 8096ABD0  4E 80 00 20 */	blr 
