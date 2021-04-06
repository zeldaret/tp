lbl_8073FD70:
/* 8073FD70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073FD74  7C 08 02 A6 */	mflr r0
/* 8073FD78  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073FD7C  39 61 00 20 */	addi r11, r1, 0x20
/* 8073FD80  4B C2 24 5D */	bl _savegpr_29
/* 8073FD84  7C 7F 1B 78 */	mr r31, r3
/* 8073FD88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073FD8C  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073FD90  83 BE 5D AC */	lwz r29, 0x5dac(r30)
/* 8073FD94  88 03 06 60 */	lbz r0, 0x660(r3)
/* 8073FD98  2C 00 00 02 */	cmpwi r0, 2
/* 8073FD9C  41 82 00 68 */	beq lbl_8073FE04
/* 8073FDA0  40 80 01 9C */	bge lbl_8073FF3C
/* 8073FDA4  2C 00 00 01 */	cmpwi r0, 1
/* 8073FDA8  40 80 00 08 */	bge lbl_8073FDB0
/* 8073FDAC  48 00 01 90 */	b lbl_8073FF3C
lbl_8073FDB0:
/* 8073FDB0  4B FF ED B5 */	bl C_Action__8daE_PH_cFv
/* 8073FDB4  7F E3 FB 78 */	mr r3, r31
/* 8073FDB8  38 9F 09 38 */	addi r4, r31, 0x938
/* 8073FDBC  4B 8D A9 11 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 8073FDC0  7F E3 FB 78 */	mr r3, r31
/* 8073FDC4  48 00 0E 79 */	bl AttentionSet__8daE_PH_cFv
/* 8073FDC8  7F E3 FB 78 */	mr r3, r31
/* 8073FDCC  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8073FDD0  4B 8D AA 11 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8073FDD4  3C 60 80 74 */	lis r3, lit_4979@ha /* 0x80741CC4@ha */
/* 8073FDD8  C0 03 1C C4 */	lfs f0, lit_4979@l(r3)  /* 0x80741CC4@l */
/* 8073FDDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073FDE0  41 81 00 18 */	bgt lbl_8073FDF8
/* 8073FDE4  7F E3 FB 78 */	mr r3, r31
/* 8073FDE8  7F A4 EB 78 */	mr r4, r29
/* 8073FDEC  4B FF D7 01 */	bl other_bg_check__FP8daE_PH_cP10fopAc_ac_c
/* 8073FDF0  2C 03 00 00 */	cmpwi r3, 0
/* 8073FDF4  41 82 01 D8 */	beq lbl_8073FFCC
lbl_8073FDF8:
/* 8073FDF8  38 00 00 00 */	li r0, 0
/* 8073FDFC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8073FE00  48 00 01 CC */	b lbl_8073FFCC
lbl_8073FE04:
/* 8073FE04  88 1F 05 B2 */	lbz r0, 0x5b2(r31)
/* 8073FE08  28 00 00 00 */	cmplwi r0, 0
/* 8073FE0C  41 82 00 F4 */	beq lbl_8073FF00
/* 8073FE10  4B FF FD CD */	bl StopAction__8daE_PH_cFv
/* 8073FE14  7F E3 FB 78 */	mr r3, r31
/* 8073FE18  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8073FE1C  4B 8D A9 C5 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8073FE20  3C 60 80 74 */	lis r3, lit_4980@ha /* 0x80741CC8@ha */
/* 8073FE24  C0 03 1C C8 */	lfs f0, lit_4980@l(r3)  /* 0x80741CC8@l */
/* 8073FE28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073FE2C  41 81 00 18 */	bgt lbl_8073FE44
/* 8073FE30  7F E3 FB 78 */	mr r3, r31
/* 8073FE34  7F A4 EB 78 */	mr r4, r29
/* 8073FE38  4B FF D6 B5 */	bl other_bg_check__FP8daE_PH_cP10fopAc_ac_c
/* 8073FE3C  2C 03 00 00 */	cmpwi r3, 0
/* 8073FE40  41 82 00 0C */	beq lbl_8073FE4C
lbl_8073FE44:
/* 8073FE44  38 00 00 00 */	li r0, 0
/* 8073FE48  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8073FE4C:
/* 8073FE4C  34 7F 09 38 */	addic. r3, r31, 0x938
/* 8073FE50  41 82 00 34 */	beq lbl_8073FE84
/* 8073FE54  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8073FE58  C0 03 00 00 */	lfs f0, 0(r3)
/* 8073FE5C  EC 01 00 2A */	fadds f0, f1, f0
/* 8073FE60  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8073FE64  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8073FE68  C0 03 00 04 */	lfs f0, 4(r3)
/* 8073FE6C  EC 01 00 2A */	fadds f0, f1, f0
/* 8073FE70  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8073FE74  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8073FE78  C0 03 00 08 */	lfs f0, 8(r3)
/* 8073FE7C  EC 01 00 2A */	fadds f0, f1, f0
/* 8073FE80  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_8073FE84:
/* 8073FE84  7F E3 FB 78 */	mr r3, r31
/* 8073FE88  4B FF FA 41 */	bl FlyAnm2__8daE_PH_cFv
/* 8073FE8C  7F E3 FB 78 */	mr r3, r31
/* 8073FE90  48 00 0D AD */	bl AttentionSet__8daE_PH_cFv
/* 8073FE94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073FE98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073FE9C  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8073FEA0  3C 80 80 74 */	lis r4, d_a_e_ph__stringBase0@ha /* 0x80741D0C@ha */
/* 8073FEA4  38 84 1D 0C */	addi r4, r4, d_a_e_ph__stringBase0@l /* 0x80741D0C@l */
/* 8073FEA8  38 84 00 05 */	addi r4, r4, 5
/* 8073FEAC  4B C2 8A E9 */	bl strcmp
/* 8073FEB0  2C 03 00 00 */	cmpwi r3, 0
/* 8073FEB4  40 82 00 78 */	bne lbl_8073FF2C
/* 8073FEB8  80 1F 06 28 */	lwz r0, 0x628(r31)
/* 8073FEBC  2C 00 00 0B */	cmpwi r0, 0xb
/* 8073FEC0  40 82 00 14 */	bne lbl_8073FED4
/* 8073FEC4  38 60 00 18 */	li r3, 0x18
/* 8073FEC8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8073FECC  7C 04 07 74 */	extsb r4, r0
/* 8073FED0  4B 8E DA 7D */	bl dComIfGs_onZoneSwitch__Fii
lbl_8073FED4:
/* 8073FED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8073FED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8073FEDC  38 80 00 3F */	li r4, 0x3f
/* 8073FEE0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8073FEE4  7C 05 07 74 */	extsb r5, r0
/* 8073FEE8  4B 8F 54 79 */	bl isSwitch__10dSv_info_cCFii
/* 8073FEEC  2C 03 00 00 */	cmpwi r3, 0
/* 8073FEF0  40 82 00 3C */	bne lbl_8073FF2C
/* 8073FEF4  7F E3 FB 78 */	mr r3, r31
/* 8073FEF8  4B 8D 9D 85 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8073FEFC  48 00 00 30 */	b lbl_8073FF2C
lbl_8073FF00:
/* 8073FF00  38 00 00 00 */	li r0, 0
/* 8073FF04  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8073FF08  7F C3 F3 78 */	mr r3, r30
/* 8073FF0C  38 80 00 3F */	li r4, 0x3f
/* 8073FF10  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8073FF14  7C 05 07 74 */	extsb r5, r0
/* 8073FF18  4B 8F 54 49 */	bl isSwitch__10dSv_info_cCFii
/* 8073FF1C  2C 03 00 00 */	cmpwi r3, 0
/* 8073FF20  41 82 00 0C */	beq lbl_8073FF2C
/* 8073FF24  38 00 00 01 */	li r0, 1
/* 8073FF28  98 1F 05 B2 */	stb r0, 0x5b2(r31)
lbl_8073FF2C:
/* 8073FF2C  80 1F 09 A0 */	lwz r0, 0x9a0(r31)
/* 8073FF30  60 00 00 01 */	ori r0, r0, 1
/* 8073FF34  90 1F 09 A0 */	stw r0, 0x9a0(r31)
/* 8073FF38  48 00 00 94 */	b lbl_8073FFCC
lbl_8073FF3C:
/* 8073FF3C  7F E3 FB 78 */	mr r3, r31
/* 8073FF40  7F A4 EB 78 */	mr r4, r29
/* 8073FF44  4B 8D A8 9D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8073FF48  3C 60 80 74 */	lis r3, lit_4979@ha /* 0x80741CC4@ha */
/* 8073FF4C  C0 03 1C C4 */	lfs f0, lit_4979@l(r3)  /* 0x80741CC4@l */
/* 8073FF50  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073FF54  41 81 00 18 */	bgt lbl_8073FF6C
/* 8073FF58  7F E3 FB 78 */	mr r3, r31
/* 8073FF5C  7F A4 EB 78 */	mr r4, r29
/* 8073FF60  4B FF D5 8D */	bl other_bg_check__FP8daE_PH_cP10fopAc_ac_c
/* 8073FF64  2C 03 00 00 */	cmpwi r3, 0
/* 8073FF68  41 82 00 0C */	beq lbl_8073FF74
lbl_8073FF6C:
/* 8073FF6C  38 00 00 00 */	li r0, 0
/* 8073FF70  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8073FF74:
/* 8073FF74  7F E3 FB 78 */	mr r3, r31
/* 8073FF78  4B FF FB F9 */	bl S_Action__8daE_PH_cFv
/* 8073FF7C  34 7F 09 38 */	addic. r3, r31, 0x938
/* 8073FF80  41 82 00 34 */	beq lbl_8073FFB4
/* 8073FF84  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8073FF88  C0 03 00 00 */	lfs f0, 0(r3)
/* 8073FF8C  EC 01 00 2A */	fadds f0, f1, f0
/* 8073FF90  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8073FF94  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8073FF98  C0 03 00 04 */	lfs f0, 4(r3)
/* 8073FF9C  EC 01 00 2A */	fadds f0, f1, f0
/* 8073FFA0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8073FFA4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8073FFA8  C0 03 00 08 */	lfs f0, 8(r3)
/* 8073FFAC  EC 01 00 2A */	fadds f0, f1, f0
/* 8073FFB0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_8073FFB4:
/* 8073FFB4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8073FFB8  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 8073FFBC  EC 01 00 2A */	fadds f0, f1, f0
/* 8073FFC0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8073FFC4  7F E3 FB 78 */	mr r3, r31
/* 8073FFC8  48 00 0C 75 */	bl AttentionSet__8daE_PH_cFv
lbl_8073FFCC:
/* 8073FFCC  7F E3 FB 78 */	mr r3, r31
/* 8073FFD0  48 00 0E A1 */	bl ObjHit__8daE_PH_cFv
/* 8073FFD4  7F E3 FB 78 */	mr r3, r31
/* 8073FFD8  48 00 10 D9 */	bl BaseSet__8daE_PH_cFv
/* 8073FFDC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8073FFE0  7C 03 07 74 */	extsb r3, r0
/* 8073FFE4  4B 8E D0 89 */	bl dComIfGp_getReverb__Fi
/* 8073FFE8  7C 65 1B 78 */	mr r5, r3
/* 8073FFEC  80 7F 07 1C */	lwz r3, 0x71c(r31)
/* 8073FFF0  38 80 00 00 */	li r4, 0
/* 8073FFF4  4B 8D 10 BD */	bl play__16mDoExt_McaMorfSOFUlSc
/* 8073FFF8  38 7F 07 60 */	addi r3, r31, 0x760
/* 8073FFFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80740000  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80740004  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80740008  4B 93 6A A5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8074000C  39 61 00 20 */	addi r11, r1, 0x20
/* 80740010  4B C2 22 19 */	bl _restgpr_29
/* 80740014  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80740018  7C 08 03 A6 */	mtlr r0
/* 8074001C  38 21 00 20 */	addi r1, r1, 0x20
/* 80740020  4E 80 00 20 */	blr 
