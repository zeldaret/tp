lbl_80B0E124:
/* 80B0E124  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0E128  7C 08 02 A6 */	mflr r0
/* 80B0E12C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0E130  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0E134  4B 85 40 A9 */	bl _savegpr_29
/* 80B0E138  7C 7F 1B 78 */	mr r31, r3
/* 80B0E13C  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E140  4B 64 25 AD */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B0E144  28 03 00 00 */	cmplwi r3, 0
/* 80B0E148  41 82 00 B4 */	beq lbl_80B0E1FC
/* 80B0E14C  7F E3 FB 78 */	mr r3, r31
/* 80B0E150  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0E154  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0E158  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B0E15C  3C A0 80 B1 */	lis r5, m__16daNpcTkc_Param_c@ha /* 0x80B108B4@ha */
/* 80B0E160  38 A5 08 B4 */	addi r5, r5, m__16daNpcTkc_Param_c@l /* 0x80B108B4@l */
/* 80B0E164  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80B0E168  4B 64 58 89 */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80B0E16C  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E170  40 82 00 14 */	bne lbl_80B0E184
/* 80B0E174  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E178  4B 64 25 69 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80B0E17C  3B A0 00 00 */	li r29, 0
/* 80B0E180  48 00 00 68 */	b lbl_80B0E1E8
lbl_80B0E184:
/* 80B0E184  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E188  4B 64 25 65 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B0E18C  28 03 00 00 */	cmplwi r3, 0
/* 80B0E190  40 82 00 20 */	bne lbl_80B0E1B0
/* 80B0E194  7F E3 FB 78 */	mr r3, r31
/* 80B0E198  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B0E19C  7F E5 FB 78 */	mr r5, r31
/* 80B0E1A0  88 DF 05 47 */	lbz r6, 0x547(r31)
/* 80B0E1A4  4B 64 5A 39 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80B0E1A8  7C 7D 1B 78 */	mr r29, r3
/* 80B0E1AC  48 00 00 1C */	b lbl_80B0E1C8
lbl_80B0E1B0:
/* 80B0E1B0  7F E3 FB 78 */	mr r3, r31
/* 80B0E1B4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B0E1B8  7F E5 FB 78 */	mr r5, r31
/* 80B0E1BC  88 DF 05 45 */	lbz r6, 0x545(r31)
/* 80B0E1C0  4B 64 5A 1D */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80B0E1C4  7C 7D 1B 78 */	mr r29, r3
lbl_80B0E1C8:
/* 80B0E1C8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B0E1CC  41 82 00 14 */	beq lbl_80B0E1E0
/* 80B0E1D0  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E1D4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B0E1D8  4B 64 24 E5 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B0E1DC  48 00 00 0C */	b lbl_80B0E1E8
lbl_80B0E1E0:
/* 80B0E1E0  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E1E4  4B 64 24 FD */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80B0E1E8:
/* 80B0E1E8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B0E1EC  40 82 00 BC */	bne lbl_80B0E2A8
/* 80B0E1F0  38 00 00 00 */	li r0, 0
/* 80B0E1F4  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80B0E1F8  48 00 00 B0 */	b lbl_80B0E2A8
lbl_80B0E1FC:
/* 80B0E1FC  7F E3 FB 78 */	mr r3, r31
/* 80B0E200  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0E204  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0E208  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B0E20C  3C A0 80 B1 */	lis r5, m__16daNpcTkc_Param_c@ha /* 0x80B108B4@ha */
/* 80B0E210  38 A5 08 B4 */	addi r5, r5, m__16daNpcTkc_Param_c@l /* 0x80B108B4@l */
/* 80B0E214  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80B0E218  4B 64 57 D9 */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80B0E21C  2C 03 00 00 */	cmpwi r3, 0
/* 80B0E220  40 82 00 14 */	bne lbl_80B0E234
/* 80B0E224  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E228  4B 64 24 B9 */	bl remove__18daNpcF_ActorMngr_cFv
/* 80B0E22C  3B A0 00 00 */	li r29, 0
/* 80B0E230  48 00 00 68 */	b lbl_80B0E298
lbl_80B0E234:
/* 80B0E234  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E238  4B 64 24 B5 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B0E23C  28 03 00 00 */	cmplwi r3, 0
/* 80B0E240  40 82 00 20 */	bne lbl_80B0E260
/* 80B0E244  7F E3 FB 78 */	mr r3, r31
/* 80B0E248  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B0E24C  7F E5 FB 78 */	mr r5, r31
/* 80B0E250  88 DF 05 47 */	lbz r6, 0x547(r31)
/* 80B0E254  4B 64 59 89 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80B0E258  7C 7D 1B 78 */	mr r29, r3
/* 80B0E25C  48 00 00 1C */	b lbl_80B0E278
lbl_80B0E260:
/* 80B0E260  7F E3 FB 78 */	mr r3, r31
/* 80B0E264  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B0E268  7F E5 FB 78 */	mr r5, r31
/* 80B0E26C  88 DF 05 45 */	lbz r6, 0x545(r31)
/* 80B0E270  4B 64 59 6D */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80B0E274  7C 7D 1B 78 */	mr r29, r3
lbl_80B0E278:
/* 80B0E278  2C 1D 00 00 */	cmpwi r29, 0
/* 80B0E27C  41 82 00 14 */	beq lbl_80B0E290
/* 80B0E280  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E284  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 80B0E288  4B 64 24 35 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B0E28C  48 00 00 0C */	b lbl_80B0E298
lbl_80B0E290:
/* 80B0E290  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E294  4B 64 24 4D */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80B0E298:
/* 80B0E298  2C 1D 00 00 */	cmpwi r29, 0
/* 80B0E29C  41 82 00 0C */	beq lbl_80B0E2A8
/* 80B0E2A0  38 00 00 00 */	li r0, 0
/* 80B0E2A4  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_80B0E2A8:
/* 80B0E2A8  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80B0E2AC  4B 64 24 41 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B0E2B0  28 03 00 00 */	cmplwi r3, 0
/* 80B0E2B4  41 82 00 20 */	beq lbl_80B0E2D4
/* 80B0E2B8  A8 1F 0D 74 */	lha r0, 0xd74(r31)
/* 80B0E2BC  2C 00 00 01 */	cmpwi r0, 1
/* 80B0E2C0  41 82 00 0C */	beq lbl_80B0E2CC
/* 80B0E2C4  38 00 00 01 */	li r0, 1
/* 80B0E2C8  B0 1F 0D 74 */	sth r0, 0xd74(r31)
lbl_80B0E2CC:
/* 80B0E2CC  38 60 00 01 */	li r3, 1
/* 80B0E2D0  48 00 00 1C */	b lbl_80B0E2EC
lbl_80B0E2D4:
/* 80B0E2D4  A8 1F 0D 74 */	lha r0, 0xd74(r31)
/* 80B0E2D8  2C 00 00 00 */	cmpwi r0, 0
/* 80B0E2DC  41 82 00 0C */	beq lbl_80B0E2E8
/* 80B0E2E0  38 00 00 00 */	li r0, 0
/* 80B0E2E4  B0 1F 0D 74 */	sth r0, 0xd74(r31)
lbl_80B0E2E8:
/* 80B0E2E8  38 60 00 00 */	li r3, 0
lbl_80B0E2EC:
/* 80B0E2EC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0E2F0  4B 85 3F 39 */	bl _restgpr_29
/* 80B0E2F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0E2F8  7C 08 03 A6 */	mtlr r0
/* 80B0E2FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0E300  4E 80 00 20 */	blr 
