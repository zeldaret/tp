lbl_80AF4DBC:
/* 80AF4DBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF4DC0  7C 08 02 A6 */	mflr r0
/* 80AF4DC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF4DC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF4DCC  4B 86 D4 0D */	bl _savegpr_28
/* 80AF4DD0  7C 7D 1B 78 */	mr r29, r3
/* 80AF4DD4  3B E0 00 00 */	li r31, 0
/* 80AF4DD8  3B C0 00 00 */	li r30, 0
/* 80AF4DDC  A0 03 0E 16 */	lhz r0, 0xe16(r3)
/* 80AF4DE0  2C 00 00 02 */	cmpwi r0, 2
/* 80AF4DE4  41 82 00 48 */	beq lbl_80AF4E2C
/* 80AF4DE8  40 80 01 50 */	bge lbl_80AF4F38
/* 80AF4DEC  2C 00 00 00 */	cmpwi r0, 0
/* 80AF4DF0  41 82 00 0C */	beq lbl_80AF4DFC
/* 80AF4DF4  48 00 01 44 */	b lbl_80AF4F38
/* 80AF4DF8  48 00 01 40 */	b lbl_80AF4F38
lbl_80AF4DFC:
/* 80AF4DFC  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80AF4E00  28 00 00 00 */	cmplwi r0, 0
/* 80AF4E04  40 82 01 34 */	bne lbl_80AF4F38
/* 80AF4E08  80 9D 0E 10 */	lwz r4, 0xe10(r29)
/* 80AF4E0C  38 00 00 00 */	li r0, 0
/* 80AF4E10  98 1D 09 E9 */	stb r0, 0x9e9(r29)
/* 80AF4E14  38 A0 00 00 */	li r5, 0
/* 80AF4E18  4B 65 EF 05 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AF4E1C  38 00 00 00 */	li r0, 0
/* 80AF4E20  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80AF4E24  38 00 00 02 */	li r0, 2
/* 80AF4E28  B0 1D 0E 16 */	sth r0, 0xe16(r29)
lbl_80AF4E2C:
/* 80AF4E2C  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 80AF4E30  28 00 00 00 */	cmplwi r0, 0
/* 80AF4E34  41 82 00 0C */	beq lbl_80AF4E40
/* 80AF4E38  3B C0 00 01 */	li r30, 1
/* 80AF4E3C  48 00 00 A0 */	b lbl_80AF4EDC
lbl_80AF4E40:
/* 80AF4E40  7F A3 EB 78 */	mr r3, r29
/* 80AF4E44  38 80 00 03 */	li r4, 3
/* 80AF4E48  4B FF FB 9D */	bl setLookMode__16daNpc_SoldierB_cFi
/* 80AF4E4C  38 7D 0C 78 */	addi r3, r29, 0xc78
/* 80AF4E50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF4E54  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF4E58  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AF4E5C  4B 65 B8 61 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AF4E60  7F A3 EB 78 */	mr r3, r29
/* 80AF4E64  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AF4E68  4B 52 58 A9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AF4E6C  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80AF4E70  7C 60 07 34 */	extsh r0, r3
/* 80AF4E74  7C 04 00 00 */	cmpw r4, r0
/* 80AF4E78  40 82 00 0C */	bne lbl_80AF4E84
/* 80AF4E7C  3B C0 00 01 */	li r30, 1
/* 80AF4E80  48 00 00 5C */	b lbl_80AF4EDC
lbl_80AF4E84:
/* 80AF4E84  7F A3 EB 78 */	mr r3, r29
/* 80AF4E88  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80AF4E8C  4B 52 58 85 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80AF4E90  7C 64 1B 78 */	mr r4, r3
/* 80AF4E94  7F A3 EB 78 */	mr r3, r29
/* 80AF4E98  38 A0 FF FF */	li r5, -1
/* 80AF4E9C  38 C0 FF FF */	li r6, -1
/* 80AF4EA0  38 E0 00 0F */	li r7, 0xf
/* 80AF4EA4  4B 65 F2 01 */	bl step__8daNpcF_cFsiii
/* 80AF4EA8  2C 03 00 00 */	cmpwi r3, 0
/* 80AF4EAC  41 82 00 30 */	beq lbl_80AF4EDC
/* 80AF4EB0  7F A3 EB 78 */	mr r3, r29
/* 80AF4EB4  38 80 00 00 */	li r4, 0
/* 80AF4EB8  3C A0 80 AF */	lis r5, lit_5036@ha /* 0x80AF5BD8@ha */
/* 80AF4EBC  C0 25 5B D8 */	lfs f1, lit_5036@l(r5)  /* 0x80AF5BD8@l */
/* 80AF4EC0  38 A0 00 00 */	li r5, 0
/* 80AF4EC4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80AF4EC8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF4ECC  7D 89 03 A6 */	mtctr r12
/* 80AF4ED0  4E 80 04 21 */	bctrl 
/* 80AF4ED4  38 00 00 00 */	li r0, 0
/* 80AF4ED8  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80AF4EDC:
/* 80AF4EDC  2C 1E 00 00 */	cmpwi r30, 0
/* 80AF4EE0  41 82 00 24 */	beq lbl_80AF4F04
/* 80AF4EE4  7F A3 EB 78 */	mr r3, r29
/* 80AF4EE8  38 80 00 00 */	li r4, 0
/* 80AF4EEC  38 A0 00 01 */	li r5, 1
/* 80AF4EF0  38 C0 00 00 */	li r6, 0
/* 80AF4EF4  4B 65 EE 91 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AF4EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80AF4EFC  41 82 00 08 */	beq lbl_80AF4F04
/* 80AF4F00  3B E0 00 01 */	li r31, 1
lbl_80AF4F04:
/* 80AF4F04  2C 1F 00 00 */	cmpwi r31, 0
/* 80AF4F08  41 82 00 30 */	beq lbl_80AF4F38
/* 80AF4F0C  38 00 00 03 */	li r0, 3
/* 80AF4F10  B0 1D 0E 16 */	sth r0, 0xe16(r29)
/* 80AF4F14  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 80AF4F18  28 00 00 00 */	cmplwi r0, 0
/* 80AF4F1C  40 82 00 14 */	bne lbl_80AF4F30
/* 80AF4F20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF4F24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF4F28  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AF4F2C  4B 54 D5 3D */	bl reset__14dEvt_control_cFv
lbl_80AF4F30:
/* 80AF4F30  38 00 00 00 */	li r0, 0
/* 80AF4F34  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_80AF4F38:
/* 80AF4F38  7F E3 FB 78 */	mr r3, r31
/* 80AF4F3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF4F40  4B 86 D2 E5 */	bl _restgpr_28
/* 80AF4F44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF4F48  7C 08 03 A6 */	mtlr r0
/* 80AF4F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF4F50  4E 80 00 20 */	blr 
