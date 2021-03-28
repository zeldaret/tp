lbl_80796D80:
/* 80796D80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80796D84  7C 08 02 A6 */	mflr r0
/* 80796D88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80796D8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80796D90  4B BC B4 48 */	b _savegpr_28
/* 80796D94  7C 7E 1B 78 */	mr r30, r3
/* 80796D98  3C 80 80 7A */	lis r4, lit_1109@ha
/* 80796D9C  3B 84 89 80 */	addi r28, r4, lit_1109@l
/* 80796DA0  3C 80 80 7A */	lis r4, lit_3920@ha
/* 80796DA4  3B E4 85 E0 */	addi r31, r4, lit_3920@l
/* 80796DA8  C0 03 09 90 */	lfs f0, 0x990(r3)
/* 80796DAC  D0 03 09 9C */	stfs f0, 0x99c(r3)
/* 80796DB0  C0 03 09 94 */	lfs f0, 0x994(r3)
/* 80796DB4  D0 03 09 A0 */	stfs f0, 0x9a0(r3)
/* 80796DB8  C0 03 09 98 */	lfs f0, 0x998(r3)
/* 80796DBC  D0 03 09 A4 */	stfs f0, 0x9a4(r3)
/* 80796DC0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80796DC4  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80796DC8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80796DCC  4B 88 39 44 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80796DD0  B0 7C 00 64 */	sth r3, 0x64(r28)
/* 80796DD4  7F C3 F3 78 */	mr r3, r30
/* 80796DD8  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80796DDC  4B 88 3B 88 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80796DE0  D0 3C 00 60 */	stfs f1, 0x60(r28)
/* 80796DE4  38 7E 06 F0 */	addi r3, r30, 0x6f0
/* 80796DE8  C0 3E 04 EC */	lfs f1, 0x4ec(r30)
/* 80796DEC  38 9C 00 4C */	addi r4, r28, 0x4c
/* 80796DF0  C0 04 00 08 */	lfs f0, 8(r4)
/* 80796DF4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80796DF8  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 80796DFC  FC 60 10 90 */	fmr f3, f2
/* 80796E00  4B AD 8C 3C */	b cLib_addCalc2__FPffff
/* 80796E04  38 60 00 00 */	li r3, 0
/* 80796E08  38 00 00 05 */	li r0, 5
/* 80796E0C  7C 09 03 A6 */	mtctr r0
lbl_80796E10:
/* 80796E10  7C BE 1A 14 */	add r5, r30, r3
/* 80796E14  A8 85 06 C0 */	lha r4, 0x6c0(r5)
/* 80796E18  2C 04 00 00 */	cmpwi r4, 0
/* 80796E1C  41 82 00 0C */	beq lbl_80796E28
/* 80796E20  38 04 FF FF */	addi r0, r4, -1
/* 80796E24  B0 05 06 C0 */	sth r0, 0x6c0(r5)
lbl_80796E28:
/* 80796E28  A8 85 06 CA */	lha r4, 0x6ca(r5)
/* 80796E2C  2C 04 00 00 */	cmpwi r4, 0
/* 80796E30  41 82 00 0C */	beq lbl_80796E3C
/* 80796E34  38 04 FF FF */	addi r0, r4, -1
/* 80796E38  B0 05 06 CA */	sth r0, 0x6ca(r5)
lbl_80796E3C:
/* 80796E3C  38 63 00 02 */	addi r3, r3, 2
/* 80796E40  42 00 FF D0 */	bdnz lbl_80796E10
/* 80796E44  A8 7E 06 D4 */	lha r3, 0x6d4(r30)
/* 80796E48  2C 03 00 00 */	cmpwi r3, 0
/* 80796E4C  41 82 00 0C */	beq lbl_80796E58
/* 80796E50  38 03 FF FF */	addi r0, r3, -1
/* 80796E54  B0 1E 06 D4 */	sth r0, 0x6d4(r30)
lbl_80796E58:
/* 80796E58  A8 7E 06 D6 */	lha r3, 0x6d6(r30)
/* 80796E5C  2C 03 00 00 */	cmpwi r3, 0
/* 80796E60  41 82 00 0C */	beq lbl_80796E6C
/* 80796E64  38 03 FF FF */	addi r0, r3, -1
/* 80796E68  B0 1E 06 D6 */	sth r0, 0x6d6(r30)
lbl_80796E6C:
/* 80796E6C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80796E70  60 00 01 00 */	ori r0, r0, 0x100
/* 80796E74  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 80796E78  7F C3 F3 78 */	mr r3, r30
/* 80796E7C  4B FF D2 85 */	bl Action__8daE_SM_cFv
/* 80796E80  7F C3 F3 78 */	mr r3, r30
/* 80796E84  4B FF FA 61 */	bl CoreAction__8daE_SM_cFv
/* 80796E88  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80796E8C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80796E90  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80796E94  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80796E98  7F C3 F3 78 */	mr r3, r30
/* 80796E9C  38 9E 05 BC */	addi r4, r30, 0x5bc
/* 80796EA0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80796EA4  38 C1 00 08 */	addi r6, r1, 8
/* 80796EA8  48 00 12 D5 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 80796EAC  7F C3 F3 78 */	mr r3, r30
/* 80796EB0  48 00 01 15 */	bl setSmBaseMtx__8daE_SM_cFv
/* 80796EB4  7F C3 F3 78 */	mr r3, r30
/* 80796EB8  48 00 03 BD */	bl setBaseMtx__8daE_SM_cFv
/* 80796EBC  7F C3 F3 78 */	mr r3, r30
/* 80796EC0  48 00 05 85 */	bl CoSmSet__8daE_SM_cFv
/* 80796EC4  7F C3 F3 78 */	mr r3, r30
/* 80796EC8  48 00 04 45 */	bl CoCoreSet__8daE_SM_cFv
/* 80796ECC  A8 1E 06 B0 */	lha r0, 0x6b0(r30)
/* 80796ED0  2C 00 00 03 */	cmpwi r0, 3
/* 80796ED4  40 82 00 54 */	bne lbl_80796F28
/* 80796ED8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80796EDC  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80796EE0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80796EE4  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80796EE8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80796EEC  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80796EF0  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80796EF4  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80796EF8  EC 00 08 2A */	fadds f0, f0, f1
/* 80796EFC  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80796F00  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80796F04  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80796F08  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80796F0C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80796F10  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80796F14  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80796F18  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80796F1C  EC 00 08 2A */	fadds f0, f0, f1
/* 80796F20  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80796F24  48 00 00 54 */	b lbl_80796F78
lbl_80796F28:
/* 80796F28  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80796F2C  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80796F30  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80796F34  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80796F38  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80796F3C  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80796F40  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80796F44  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 80796F48  EC 01 00 2A */	fadds f0, f1, f0
/* 80796F4C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80796F50  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 80796F54  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80796F58  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80796F5C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80796F60  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 80796F64  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80796F68  C0 3E 05 54 */	lfs f1, 0x554(r30)
/* 80796F6C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80796F70  EC 01 00 2A */	fadds f0, f1, f0
/* 80796F74  D0 1E 05 54 */	stfs f0, 0x554(r30)
lbl_80796F78:
/* 80796F78  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80796F7C  7C 03 07 74 */	extsb r3, r0
/* 80796F80  4B 89 60 EC */	b dComIfGp_getReverb__Fi
/* 80796F84  7C 65 1B 78 */	mr r5, r3
/* 80796F88  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80796F8C  38 80 00 00 */	li r4, 0
/* 80796F90  4B 87 A1 20 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80796F94  88 1E 06 82 */	lbz r0, 0x682(r30)
/* 80796F98  28 00 00 00 */	cmplwi r0, 0
/* 80796F9C  40 82 00 0C */	bne lbl_80796FA8
/* 80796FA0  7F C3 F3 78 */	mr r3, r30
/* 80796FA4  4B FF FB 49 */	bl ArrowOn__8daE_SM_cFv
lbl_80796FA8:
/* 80796FA8  38 60 00 01 */	li r3, 1
/* 80796FAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80796FB0  4B BC B2 74 */	b _restgpr_28
/* 80796FB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80796FB8  7C 08 03 A6 */	mtlr r0
/* 80796FBC  38 21 00 30 */	addi r1, r1, 0x30
/* 80796FC0  4E 80 00 20 */	blr 
