lbl_80666DE8:
/* 80666DE8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80666DEC  7C 08 02 A6 */	mflr r0
/* 80666DF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 80666DF4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80666DF8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80666DFC  39 61 00 40 */	addi r11, r1, 0x40
/* 80666E00  4B CF B3 D9 */	bl _savegpr_28
/* 80666E04  7C 7C 1B 78 */	mr r28, r3
/* 80666E08  3C 60 80 66 */	lis r3, lit_3768@ha /* 0x80667698@ha */
/* 80666E0C  3B E3 76 98 */	addi r31, r3, lit_3768@l /* 0x80667698@l */
/* 80666E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80666E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80666E18  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 80666E1C  38 00 00 00 */	li r0, 0
/* 80666E20  98 1C 0A E5 */	stb r0, 0xae5(r28)
/* 80666E24  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80666E28  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80666E2C  41 82 00 8C */	beq lbl_80666EB8
/* 80666E30  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 80666E34  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80666E38  40 82 00 80 */	bne lbl_80666EB8
/* 80666E3C  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80666E40  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80666E44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80666E48  40 81 00 18 */	ble lbl_80666E60
/* 80666E4C  C0 1F 01 4C */	lfs f0, 0x14c(r31)
/* 80666E50  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80666E54  C0 1F 03 14 */	lfs f0, 0x314(r31)
/* 80666E58  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80666E5C  48 00 00 5C */	b lbl_80666EB8
lbl_80666E60:
/* 80666E60  38 00 00 03 */	li r0, 3
/* 80666E64  98 1C 0A E0 */	stb r0, 0xae0(r28)
/* 80666E68  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 80666E6C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80666E70  40 82 00 1C */	bne lbl_80666E8C
/* 80666E74  C0 3C 07 44 */	lfs f1, 0x744(r28)
/* 80666E78  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80666E7C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80666E80  C0 1F 01 C8 */	lfs f0, 0x1c8(r31)
/* 80666E84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80666E88  40 81 00 30 */	ble lbl_80666EB8
lbl_80666E8C:
/* 80666E8C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060064@ha */
/* 80666E90  38 03 00 64 */	addi r0, r3, 0x0064 /* 0x00060064@l */
/* 80666E94  90 01 00 10 */	stw r0, 0x10(r1)
/* 80666E98  38 7C 0A 14 */	addi r3, r28, 0xa14
/* 80666E9C  38 81 00 10 */	addi r4, r1, 0x10
/* 80666EA0  38 A0 00 00 */	li r5, 0
/* 80666EA4  88 DC 0A DC */	lbz r6, 0xadc(r28)
/* 80666EA8  81 9C 0A 14 */	lwz r12, 0xa14(r28)
/* 80666EAC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80666EB0  7D 89 03 A6 */	mtctr r12
/* 80666EB4  4E 80 04 21 */	bctrl 
lbl_80666EB8:
/* 80666EB8  88 7C 0A E1 */	lbz r3, 0xae1(r28)
/* 80666EBC  28 03 00 00 */	cmplwi r3, 0
/* 80666EC0  41 82 00 E8 */	beq lbl_80666FA8
/* 80666EC4  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80666EC8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80666ECC  41 82 00 54 */	beq lbl_80666F20
/* 80666ED0  7F 83 E3 78 */	mr r3, r28
/* 80666ED4  4B 9B 2D A9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80666ED8  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80666EDC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80666EE0  41 82 00 38 */	beq lbl_80666F18
/* 80666EE4  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80666EE8  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 80666EEC  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 80666EF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80666EF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80666EF8  3B A3 09 58 */	addi r29, r3, 0x958
/* 80666EFC  7F A3 EB 78 */	mr r3, r29
/* 80666F00  88 9C 0A E4 */	lbz r4, 0xae4(r28)
/* 80666F04  4B 9C D8 C1 */	bl offTbox__12dSv_memBit_cFi
/* 80666F08  7F A3 EB 78 */	mr r3, r29
/* 80666F0C  88 9C 0A E4 */	lbz r4, 0xae4(r28)
/* 80666F10  38 84 00 01 */	addi r4, r4, 1
/* 80666F14  4B 9C D8 8D */	bl onTbox__12dSv_memBit_cFi
lbl_80666F18:
/* 80666F18  38 60 00 01 */	li r3, 1
/* 80666F1C  48 00 04 DC */	b lbl_806673F8
lbl_80666F20:
/* 80666F20  28 03 00 03 */	cmplwi r3, 3
/* 80666F24  40 82 00 44 */	bne lbl_80666F68
/* 80666F28  7F C3 F3 78 */	mr r3, r30
/* 80666F2C  4B A7 A4 49 */	bl getCopyRodControllActor__9daAlink_cFv
/* 80666F30  7C 03 E0 40 */	cmplw r3, r28
/* 80666F34  40 82 00 18 */	bne lbl_80666F4C
/* 80666F38  80 7E 28 40 */	lwz r3, 0x2840(r30)
/* 80666F3C  28 03 00 00 */	cmplwi r3, 0
/* 80666F40  41 82 00 0C */	beq lbl_80666F4C
/* 80666F44  38 63 07 40 */	addi r3, r3, 0x740
/* 80666F48  4B AF 7D B5 */	bl clearData__16daPy_actorKeep_cFv
lbl_80666F4C:
/* 80666F4C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80666F50  38 9C 0B 14 */	addi r4, r28, 0xb14
/* 80666F54  C0 3F 01 88 */	lfs f1, 0x188(r31)
/* 80666F58  C0 5F 02 F8 */	lfs f2, 0x2f8(r31)
/* 80666F5C  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80666F60  4B C0 8E 95 */	bl cLib_addCalcPosXZ__FP4cXyzRC4cXyzfff
/* 80666F64  48 00 00 44 */	b lbl_80666FA8
lbl_80666F68:
/* 80666F68  28 03 00 01 */	cmplwi r3, 1
/* 80666F6C  40 82 00 3C */	bne lbl_80666FA8
/* 80666F70  C0 1C 0B 14 */	lfs f0, 0xb14(r28)
/* 80666F74  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80666F78  C0 1C 0B 18 */	lfs f0, 0xb18(r28)
/* 80666F7C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80666F80  C0 1C 0B 1C */	lfs f0, 0xb1c(r28)
/* 80666F84  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80666F88  C0 1C 0B 14 */	lfs f0, 0xb14(r28)
/* 80666F8C  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80666F90  C0 1C 0B 18 */	lfs f0, 0xb18(r28)
/* 80666F94  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80666F98  C0 1C 0B 1C */	lfs f0, 0xb1c(r28)
/* 80666F9C  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80666FA0  38 00 00 00 */	li r0, 0
/* 80666FA4  98 1C 0A E1 */	stb r0, 0xae1(r28)
lbl_80666FA8:
/* 80666FA8  7F 83 E3 78 */	mr r3, r28
/* 80666FAC  4B FF F3 E5 */	bl setAnime__11daCstatue_cFv
/* 80666FB0  38 00 00 00 */	li r0, 0
/* 80666FB4  88 7C 0A DD */	lbz r3, 0xadd(r28)
/* 80666FB8  28 03 00 04 */	cmplwi r3, 4
/* 80666FBC  41 82 00 0C */	beq lbl_80666FC8
/* 80666FC0  28 03 00 03 */	cmplwi r3, 3
/* 80666FC4  40 82 00 08 */	bne lbl_80666FCC
lbl_80666FC8:
/* 80666FC8  38 00 00 01 */	li r0, 1
lbl_80666FCC:
/* 80666FCC  54 1D 06 3F */	clrlwi. r29, r0, 0x18
/* 80666FD0  41 82 00 1C */	beq lbl_80666FEC
/* 80666FD4  38 7C 06 AC */	addi r3, r28, 0x6ac
/* 80666FD8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80666FDC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80666FE0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80666FE4  4B A0 FA C9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80666FE8  48 00 01 14 */	b lbl_806670FC
lbl_80666FEC:
/* 80666FEC  28 03 00 02 */	cmplwi r3, 2
/* 80666FF0  40 82 00 A4 */	bne lbl_80667094
/* 80666FF4  88 9C 0A DE */	lbz r4, 0xade(r28)
/* 80666FF8  28 04 00 FF */	cmplwi r4, 0xff
/* 80666FFC  41 82 00 30 */	beq lbl_8066702C
/* 80667000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80667004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80667008  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 8066700C  7C 05 07 74 */	extsb r5, r0
/* 80667010  4B 9C E3 51 */	bl isSwitch__10dSv_info_cCFii
/* 80667014  2C 03 00 00 */	cmpwi r3, 0
/* 80667018  41 82 00 14 */	beq lbl_8066702C
/* 8066701C  7F 83 E3 78 */	mr r3, r28
/* 80667020  4B 9B 2C 5D */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80667024  38 60 00 01 */	li r3, 1
/* 80667028  48 00 03 D0 */	b lbl_806673F8
lbl_8066702C:
/* 8066702C  4B 9C 8A 29 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80667030  2C 03 00 00 */	cmpwi r3, 0
/* 80667034  41 82 00 C8 */	beq lbl_806670FC
/* 80667038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8066703C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80667040  38 80 00 1F */	li r4, 0x1f
/* 80667044  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 80667048  7C 05 07 74 */	extsb r5, r0
/* 8066704C  4B 9C E3 15 */	bl isSwitch__10dSv_info_cCFii
/* 80667050  2C 03 00 00 */	cmpwi r3, 0
/* 80667054  41 82 00 A8 */	beq lbl_806670FC
/* 80667058  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 8066705C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80667060  40 82 00 9C */	bne lbl_806670FC
/* 80667064  38 7C 05 38 */	addi r3, r28, 0x538
/* 80667068  38 9E 05 38 */	addi r4, r30, 0x538
/* 8066706C  7F 85 E3 78 */	mr r5, r28
/* 80667070  4B 9B 6B F9 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80667074  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80667078  40 82 00 84 */	bne lbl_806670FC
/* 8066707C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80667080  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80667084  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80667088  38 80 54 40 */	li r4, 0x5440
/* 8066708C  4B 9C D9 01 */	bl onEventBit__11dSv_event_cFUs
/* 80667090  48 00 00 6C */	b lbl_806670FC
lbl_80667094:
/* 80667094  28 03 00 00 */	cmplwi r3, 0
/* 80667098  40 82 00 5C */	bne lbl_806670F4
/* 8066709C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806670A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806670A4  38 80 00 06 */	li r4, 6
/* 806670A8  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 806670AC  7C 05 07 74 */	extsb r5, r0
/* 806670B0  4B 9C E2 B1 */	bl isSwitch__10dSv_info_cCFii
/* 806670B4  2C 03 00 00 */	cmpwi r3, 0
/* 806670B8  41 82 00 3C */	beq lbl_806670F4
/* 806670BC  3C 60 D8 7B */	lis r3, 0xD87B /* 0xD87AFDDF@ha */
/* 806670C0  38 03 FD DF */	addi r0, r3, 0xFDDF /* 0xD87AFDDF@l */
/* 806670C4  90 1C 08 E8 */	stw r0, 0x8e8(r28)
/* 806670C8  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 806670CC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 806670D0  41 82 00 24 */	beq lbl_806670F4
/* 806670D4  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 806670D8  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 806670DC  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 806670E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806670E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806670E8  38 63 09 58 */	addi r3, r3, 0x958
/* 806670EC  88 9C 0A E4 */	lbz r4, 0xae4(r28)
/* 806670F0  4B 9C D6 D5 */	bl offTbox__12dSv_memBit_cFi
lbl_806670F4:
/* 806670F4  7F 83 E3 78 */	mr r3, r28
/* 806670F8  4B FF DB A5 */	bl posMove__11daCstatue_cFv
lbl_806670FC:
/* 806670FC  C0 3F 01 58 */	lfs f1, 0x158(r31)
/* 80667100  C0 1C 07 44 */	lfs f0, 0x744(r28)
/* 80667104  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80667108  41 82 00 14 */	beq lbl_8066711C
/* 8066710C  38 7C 07 9C */	addi r3, r28, 0x79c
/* 80667110  4B B4 43 B1 */	bl dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 80667114  54 64 06 3E */	clrlwi r4, r3, 0x18
/* 80667118  48 00 00 08 */	b lbl_80667120
lbl_8066711C:
/* 8066711C  38 80 00 00 */	li r4, 0
lbl_80667120:
/* 80667120  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80667124  88 BC 0A DC */	lbz r5, 0xadc(r28)
/* 80667128  4B 9A 9F 89 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8066712C  2C 1D 00 00 */	cmpwi r29, 0
/* 80667130  40 82 00 F8 */	bne lbl_80667228
/* 80667134  88 1C 0A DF */	lbz r0, 0xadf(r28)
/* 80667138  28 00 00 02 */	cmplwi r0, 2
/* 8066713C  40 82 00 EC */	bne lbl_80667228
/* 80667140  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 80667144  28 00 00 65 */	cmplwi r0, 0x65
/* 80667148  40 82 00 E0 */	bne lbl_80667228
/* 8066714C  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80667150  A8 03 00 14 */	lha r0, 0x14(r3)
/* 80667154  C8 3F 01 50 */	lfd f1, 0x150(r31)
/* 80667158  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8066715C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80667160  3C 00 43 30 */	lis r0, 0x4330
/* 80667164  90 01 00 18 */	stw r0, 0x18(r1)
/* 80667168  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8066716C  EF E0 08 28 */	fsubs f31, f0, f1
/* 80667170  7F C3 F3 78 */	mr r3, r30
/* 80667174  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80667178  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8066717C  7D 89 03 A6 */	mtctr r12
/* 80667180  4E 80 04 21 */	bctrl 
/* 80667184  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80667188  40 81 00 50 */	ble lbl_806671D8
/* 8066718C  7F C3 F3 78 */	mr r3, r30
/* 80667190  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80667194  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80667198  7D 89 03 A6 */	mtctr r12
/* 8066719C  4E 80 04 21 */	bctrl 
/* 806671A0  FC 00 08 1E */	fctiwz f0, f1
/* 806671A4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 806671A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 806671AC  7C 00 07 34 */	extsh r0, r0
/* 806671B0  C8 3F 01 50 */	lfd f1, 0x150(r31)
/* 806671B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806671B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806671BC  3C 00 43 30 */	lis r0, 0x4330
/* 806671C0  90 01 00 20 */	stw r0, 0x20(r1)
/* 806671C4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 806671C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 806671CC  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 806671D0  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 806671D4  48 00 00 74 */	b lbl_80667248
lbl_806671D8:
/* 806671D8  80 9C 05 78 */	lwz r4, 0x578(r28)
/* 806671DC  A8 04 00 14 */	lha r0, 0x14(r4)
/* 806671E0  C8 3F 01 50 */	lfd f1, 0x150(r31)
/* 806671E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806671E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806671EC  3C 60 43 30 */	lis r3, 0x4330
/* 806671F0  90 61 00 20 */	stw r3, 0x20(r1)
/* 806671F4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 806671F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 806671FC  FC 00 00 1E */	fctiwz f0, f0
/* 80667200  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80667204  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80667208  7C 00 07 34 */	extsh r0, r0
/* 8066720C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80667210  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80667214  90 61 00 28 */	stw r3, 0x28(r1)
/* 80667218  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 8066721C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80667220  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 80667224  48 00 00 24 */	b lbl_80667248
lbl_80667228:
/* 80667228  A8 7C 0A EA */	lha r3, 0xaea(r28)
/* 8066722C  2C 03 00 00 */	cmpwi r3, 0
/* 80667230  41 82 00 18 */	beq lbl_80667248
/* 80667234  38 03 FF FF */	addi r0, r3, -1
/* 80667238  B0 1C 0A EA */	sth r0, 0xaea(r28)
/* 8066723C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80667240  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80667244  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_80667248:
/* 80667248  7F 83 E3 78 */	mr r3, r28
/* 8066724C  4B FF D8 55 */	bl setRoomInfo__11daCstatue_cFv
/* 80667250  7F 83 E3 78 */	mr r3, r28
/* 80667254  4B FF D8 E5 */	bl setMatrix__11daCstatue_cFv
/* 80667258  38 7C 08 C0 */	addi r3, r28, 0x8c0
/* 8066725C  4B A1 D2 05 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80667260  28 03 00 00 */	cmplwi r3, 0
/* 80667264  41 82 00 50 */	beq lbl_806672B4
/* 80667268  38 7C 08 C0 */	addi r3, r28, 0x8c0
/* 8066726C  4B A1 D2 DD */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 80667270  28 03 00 00 */	cmplwi r3, 0
/* 80667274  41 82 00 40 */	beq lbl_806672B4
/* 80667278  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8066727C  3C 03 FF 00 */	addis r0, r3, 0xff00
/* 80667280  28 00 00 00 */	cmplwi r0, 0
/* 80667284  41 82 00 30 */	beq lbl_806672B4
/* 80667288  38 7C 08 C0 */	addi r3, r28, 0x8c0
/* 8066728C  4B A1 D2 F1 */	bl GetTgHitObjSe__12dCcD_GObjInfFv
/* 80667290  38 80 00 01 */	li r4, 1
/* 80667294  4B A1 D3 1D */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80667298  7C 64 1B 78 */	mr r4, r3
/* 8066729C  38 7C 0A 14 */	addi r3, r28, 0xa14
/* 806672A0  38 A0 00 2A */	li r5, 0x2a
/* 806672A4  81 9C 0A 14 */	lwz r12, 0xa14(r28)
/* 806672A8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 806672AC  7D 89 03 A6 */	mtctr r12
/* 806672B0  4E 80 04 21 */	bctrl 
lbl_806672B4:
/* 806672B4  7F 83 E3 78 */	mr r3, r28
/* 806672B8  4B FF E2 A5 */	bl setCollision__11daCstatue_cFv
/* 806672BC  88 1C 0A DD */	lbz r0, 0xadd(r28)
/* 806672C0  28 00 00 01 */	cmplwi r0, 1
/* 806672C4  40 82 00 38 */	bne lbl_806672FC
/* 806672C8  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 806672CC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806672D0  41 82 00 20 */	beq lbl_806672F0
/* 806672D4  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 806672D8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 806672DC  40 82 00 14 */	bne lbl_806672F0
/* 806672E0  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 806672E4  60 00 00 10 */	ori r0, r0, 0x10
/* 806672E8  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 806672EC  48 00 00 10 */	b lbl_806672FC
lbl_806672F0:
/* 806672F0  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 806672F4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 806672F8  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_806672FC:
/* 806672FC  3B A0 00 00 */	li r29, 0
/* 80667300  80 1C 06 D8 */	lwz r0, 0x6d8(r28)
/* 80667304  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80667308  40 82 00 34 */	bne lbl_8066733C
/* 8066730C  88 1C 0A DD */	lbz r0, 0xadd(r28)
/* 80667310  28 00 00 01 */	cmplwi r0, 1
/* 80667314  40 82 00 2C */	bne lbl_80667340
/* 80667318  88 1C 0A DF */	lbz r0, 0xadf(r28)
/* 8066731C  28 00 00 02 */	cmplwi r0, 2
/* 80667320  40 82 00 20 */	bne lbl_80667340
/* 80667324  80 7C 05 78 */	lwz r3, 0x578(r28)
/* 80667328  38 63 00 0C */	addi r3, r3, 0xc
/* 8066732C  C0 3F 01 9C */	lfs f1, 0x19c(r31)
/* 80667330  4B CC 10 FD */	bl checkPass__12J3DFrameCtrlFf
/* 80667334  2C 03 00 00 */	cmpwi r3, 0
/* 80667338  41 82 00 08 */	beq lbl_80667340
lbl_8066733C:
/* 8066733C  3B A0 00 07 */	li r29, 7
lbl_80667340:
/* 80667340  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80667344  7C 00 07 74 */	extsb r0, r0
/* 80667348  90 01 00 08 */	stw r0, 8(r1)
/* 8066734C  38 7C 0A A4 */	addi r3, r28, 0xaa4
/* 80667350  38 9C 01 0C */	addi r4, r28, 0x10c
/* 80667354  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80667358  7F A6 EB 78 */	mr r6, r29
/* 8066735C  38 E0 00 00 */	li r7, 0
/* 80667360  28 1D 00 00 */	cmplwi r29, 0
/* 80667364  41 82 00 0C */	beq lbl_80667370
/* 80667368  7C A8 2B 78 */	mr r8, r5
/* 8066736C  48 00 00 08 */	b lbl_80667374
lbl_80667370:
/* 80667370  39 00 00 00 */	li r8, 0
lbl_80667374:
/* 80667374  39 3C 04 DC */	addi r9, r28, 0x4dc
/* 80667378  39 5C 04 EC */	addi r10, r28, 0x4ec
/* 8066737C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80667380  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80667384  4B 9E 9C 85 */	bl setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 80667388  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 8066738C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80667390  41 82 00 20 */	beq lbl_806673B0
/* 80667394  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 80667398  60 00 00 02 */	ori r0, r0, 2
/* 8066739C  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 806673A0  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 806673A4  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 806673A8  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 806673AC  48 00 00 1C */	b lbl_806673C8
lbl_806673B0:
/* 806673B0  80 1C 0A EC */	lwz r0, 0xaec(r28)
/* 806673B4  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 806673B8  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 806673BC  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 806673C0  60 00 04 00 */	ori r0, r0, 0x400
/* 806673C4  90 1C 04 9C */	stw r0, 0x49c(r28)
lbl_806673C8:
/* 806673C8  88 7C 0A E4 */	lbz r3, 0xae4(r28)
/* 806673CC  28 03 00 3F */	cmplwi r3, 0x3f
/* 806673D0  41 82 00 14 */	beq lbl_806673E4
/* 806673D4  38 80 00 0F */	li r4, 0xf
/* 806673D8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 806673DC  38 C0 FF FF */	li r6, -1
/* 806673E0  4B A3 4F ED */	bl setPosition__7dTres_cFiUcPC3Veci
lbl_806673E4:
/* 806673E4  80 7C 0A EC */	lwz r3, 0xaec(r28)
/* 806673E8  38 00 FE BF */	li r0, -321
/* 806673EC  7C 60 00 38 */	and r0, r3, r0
/* 806673F0  90 1C 0A EC */	stw r0, 0xaec(r28)
/* 806673F4  38 60 00 01 */	li r3, 1
lbl_806673F8:
/* 806673F8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 806673FC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80667400  39 61 00 40 */	addi r11, r1, 0x40
/* 80667404  4B CF AE 21 */	bl _restgpr_28
/* 80667408  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8066740C  7C 08 03 A6 */	mtlr r0
/* 80667410  38 21 00 50 */	addi r1, r1, 0x50
/* 80667414  4E 80 00 20 */	blr 
