lbl_80A27E24:
/* 80A27E24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A27E28  7C 08 02 A6 */	mflr r0
/* 80A27E2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A27E30  39 61 00 20 */	addi r11, r1, 0x20
/* 80A27E34  4B 93 A3 A9 */	bl _savegpr_29
/* 80A27E38  7C 7D 1B 78 */	mr r29, r3
/* 80A27E3C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A27E40  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A27E44  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A27E48  3C A0 80 A3 */	lis r5, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A27E4C  38 A5 A0 4C */	addi r5, r5, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A27E50  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80A27E54  4B 72 BB 9D */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80A27E58  2C 03 00 00 */	cmpwi r3, 0
/* 80A27E5C  40 82 00 14 */	bne lbl_80A27E70
/* 80A27E60  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80A27E64  4B 72 88 7D */	bl remove__18daNpcF_ActorMngr_cFv
/* 80A27E68  38 60 00 00 */	li r3, 0
/* 80A27E6C  48 00 00 84 */	b lbl_80A27EF0
lbl_80A27E70:
/* 80A27E70  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80A27E74  4B 72 88 79 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A27E78  28 03 00 00 */	cmplwi r3, 0
/* 80A27E7C  40 82 00 2C */	bne lbl_80A27EA8
/* 80A27E80  7F A3 EB 78 */	mr r3, r29
/* 80A27E84  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A27E88  7F A5 EB 78 */	mr r5, r29
/* 80A27E8C  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80A27E90  4B 72 BD 4D */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A27E94  30 03 FF FF */	addic r0, r3, -1
/* 80A27E98  7C 00 19 10 */	subfe r0, r0, r3
/* 80A27E9C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80A27EA0  7C 1E 03 78 */	mr r30, r0
/* 80A27EA4  48 00 00 28 */	b lbl_80A27ECC
lbl_80A27EA8:
/* 80A27EA8  7F A3 EB 78 */	mr r3, r29
/* 80A27EAC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A27EB0  7F A5 EB 78 */	mr r5, r29
/* 80A27EB4  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80A27EB8  4B 72 BD 25 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80A27EBC  30 03 FF FF */	addic r0, r3, -1
/* 80A27EC0  7C 00 19 10 */	subfe r0, r0, r3
/* 80A27EC4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80A27EC8  7C 1E 03 78 */	mr r30, r0
lbl_80A27ECC:
/* 80A27ECC  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80A27ED0  41 82 00 14 */	beq lbl_80A27EE4
/* 80A27ED4  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80A27ED8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A27EDC  4B 72 87 E1 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80A27EE0  48 00 00 0C */	b lbl_80A27EEC
lbl_80A27EE4:
/* 80A27EE4  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80A27EE8  4B 72 87 F9 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80A27EEC:
/* 80A27EEC  57 C3 06 3E */	clrlwi r3, r30, 0x18
lbl_80A27EF0:
/* 80A27EF0  39 61 00 20 */	addi r11, r1, 0x20
/* 80A27EF4  4B 93 A3 35 */	bl _restgpr_29
/* 80A27EF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A27EFC  7C 08 03 A6 */	mtlr r0
/* 80A27F00  38 21 00 20 */	addi r1, r1, 0x20
/* 80A27F04  4E 80 00 20 */	blr 
