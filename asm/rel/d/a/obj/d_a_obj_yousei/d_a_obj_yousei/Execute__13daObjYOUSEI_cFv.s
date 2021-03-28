lbl_804D0DF0:
/* 804D0DF0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D0DF4  7C 08 02 A6 */	mflr r0
/* 804D0DF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D0DFC  39 61 00 20 */	addi r11, r1, 0x20
/* 804D0E00  4B E9 13 DC */	b _savegpr_29
/* 804D0E04  7C 7F 1B 78 */	mr r31, r3
/* 804D0E08  3C 80 80 4D */	lis r4, ccSphSrc@ha
/* 804D0E0C  3B A4 15 F0 */	addi r29, r4, ccSphSrc@l
/* 804D0E10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 804D0E14  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 804D0E18  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 804D0E1C  38 04 04 D0 */	addi r0, r4, 0x4d0
/* 804D0E20  3C A0 80 4D */	lis r5, sLink_Pos@ha
/* 804D0E24  90 05 18 2C */	stw r0, sLink_Pos@l(r5)
/* 804D0E28  4B B4 9B 3C */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804D0E2C  D0 3F 06 14 */	stfs f1, 0x614(r31)
/* 804D0E30  7F E3 FB 78 */	mr r3, r31
/* 804D0E34  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 804D0E38  4B B4 98 D8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804D0E3C  B0 7F 06 18 */	sth r3, 0x618(r31)
/* 804D0E40  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D0E44  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 804D0E48  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804D0E4C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 804D0E50  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804D0E54  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 804D0E58  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804D0E5C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804D0E60  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804D0E64  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804D0E68  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804D0E6C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804D0E70  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 804D0E74  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 804D0E78  EC 01 00 2A */	fadds f0, f1, f0
/* 804D0E7C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804D0E80  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D6@ha */
/* 804D0E84  38 03 00 D6 */	addi r0, r3, 0x00D6 /* 0x000600D6@l */
/* 804D0E88  90 01 00 0C */	stw r0, 0xc(r1)
/* 804D0E8C  38 7F 06 1C */	addi r3, r31, 0x61c
/* 804D0E90  38 81 00 0C */	addi r4, r1, 0xc
/* 804D0E94  38 A0 00 00 */	li r5, 0
/* 804D0E98  38 C0 FF FF */	li r6, -1
/* 804D0E9C  81 9F 06 1C */	lwz r12, 0x61c(r31)
/* 804D0EA0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804D0EA4  7D 89 03 A6 */	mtctr r12
/* 804D0EA8  4E 80 04 21 */	bctrl 
/* 804D0EAC  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 804D0EB0  38 63 00 0C */	addi r3, r3, 0xc
/* 804D0EB4  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 804D0EB8  4B E5 75 74 */	b checkPass__12J3DFrameCtrlFf
/* 804D0EBC  2C 03 00 00 */	cmpwi r3, 0
/* 804D0EC0  41 82 00 50 */	beq lbl_804D0F10
/* 804D0EC4  C0 3F 05 F0 */	lfs f1, 0x5f0(r31)
/* 804D0EC8  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 804D0ECC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D0ED0  40 81 00 40 */	ble lbl_804D0F10
/* 804D0ED4  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D7@ha */
/* 804D0ED8  38 03 00 D7 */	addi r0, r3, 0x00D7 /* 0x000600D7@l */
/* 804D0EDC  90 01 00 08 */	stw r0, 8(r1)
/* 804D0EE0  C0 3D 00 7C */	lfs f1, 0x7c(r29)
/* 804D0EE4  C0 1F 05 F0 */	lfs f0, 0x5f0(r31)
/* 804D0EE8  EC 21 00 32 */	fmuls f1, f1, f0
/* 804D0EEC  4B E9 11 C0 */	b __cvt_fp2unsigned
/* 804D0EF0  7C 65 1B 78 */	mr r5, r3
/* 804D0EF4  38 7F 06 1C */	addi r3, r31, 0x61c
/* 804D0EF8  38 81 00 08 */	addi r4, r1, 8
/* 804D0EFC  38 C0 FF FF */	li r6, -1
/* 804D0F00  81 9F 06 1C */	lwz r12, 0x61c(r31)
/* 804D0F04  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 804D0F08  7D 89 03 A6 */	mtctr r12
/* 804D0F0C  4E 80 04 21 */	bctrl 
lbl_804D0F10:
/* 804D0F10  38 60 00 00 */	li r3, 0
/* 804D0F14  38 00 00 04 */	li r0, 4
/* 804D0F18  7C 09 03 A6 */	mtctr r0
lbl_804D0F1C:
/* 804D0F1C  38 A3 05 CE */	addi r5, r3, 0x5ce
/* 804D0F20  7C 9F 2A AE */	lhax r4, r31, r5
/* 804D0F24  2C 04 00 00 */	cmpwi r4, 0
/* 804D0F28  41 82 00 0C */	beq lbl_804D0F34
/* 804D0F2C  38 04 FF FF */	addi r0, r4, -1
/* 804D0F30  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_804D0F34:
/* 804D0F34  38 63 00 02 */	addi r3, r3, 2
/* 804D0F38  42 00 FF E4 */	bdnz lbl_804D0F1C
/* 804D0F3C  A8 7F 05 D6 */	lha r3, 0x5d6(r31)
/* 804D0F40  2C 03 00 00 */	cmpwi r3, 0
/* 804D0F44  41 82 00 0C */	beq lbl_804D0F50
/* 804D0F48  38 03 FF FF */	addi r0, r3, -1
/* 804D0F4C  B0 1F 05 D6 */	sth r0, 0x5d6(r31)
lbl_804D0F50:
/* 804D0F50  7F E3 FB 78 */	mr r3, r31
/* 804D0F54  4B FF FB 7D */	bl Action__13daObjYOUSEI_cFv
/* 804D0F58  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804D0F5C  7C 03 07 74 */	extsb r3, r0
/* 804D0F60  4B B5 C1 0C */	b dComIfGp_getReverb__Fi
/* 804D0F64  7C 65 1B 78 */	mr r5, r3
/* 804D0F68  80 7F 06 B0 */	lwz r3, 0x6b0(r31)
/* 804D0F6C  38 80 00 00 */	li r4, 0
/* 804D0F70  4B B4 01 40 */	b play__16mDoExt_McaMorfSOFUlSc
/* 804D0F74  7F E3 FB 78 */	mr r3, r31
/* 804D0F78  48 00 00 55 */	bl setBaseMtx__13daObjYOUSEI_cFv
/* 804D0F7C  38 60 00 01 */	li r3, 1
/* 804D0F80  39 61 00 20 */	addi r11, r1, 0x20
/* 804D0F84  4B E9 12 A4 */	b _restgpr_29
/* 804D0F88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D0F8C  7C 08 03 A6 */	mtlr r0
/* 804D0F90  38 21 00 20 */	addi r1, r1, 0x20
/* 804D0F94  4E 80 00 20 */	blr 
