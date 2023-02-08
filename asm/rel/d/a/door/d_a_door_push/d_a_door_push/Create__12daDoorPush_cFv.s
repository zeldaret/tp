lbl_8067809C:
/* 8067809C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806780A0  7C 08 02 A6 */	mflr r0
/* 806780A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806780A8  39 61 00 20 */	addi r11, r1, 0x20
/* 806780AC  4B CE A1 25 */	bl _savegpr_26
/* 806780B0  7C 7F 1B 78 */	mr r31, r3
/* 806780B4  80 83 05 B0 */	lwz r4, 0x5b0(r3)
/* 806780B8  28 04 00 00 */	cmplwi r4, 0
/* 806780BC  41 82 00 28 */	beq lbl_806780E4
/* 806780C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806780C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806780C8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806780CC  7F E5 FB 78 */	mr r5, r31
/* 806780D0  4B 9F C9 39 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
/* 806780D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806780D8  41 82 00 0C */	beq lbl_806780E4
/* 806780DC  38 60 00 00 */	li r3, 0
/* 806780E0  48 00 01 04 */	b lbl_806781E4
lbl_806780E4:
/* 806780E4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806780E8  B0 1F 06 30 */	sth r0, 0x630(r31)
/* 806780EC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 806780F0  38 03 7F FF */	addi r0, r3, 0x7fff
/* 806780F4  B0 1F 06 32 */	sth r0, 0x632(r31)
/* 806780F8  A8 1F 06 30 */	lha r0, 0x630(r31)
/* 806780FC  B0 1F 06 34 */	sth r0, 0x634(r31)
/* 80678100  A8 1F 06 32 */	lha r0, 0x632(r31)
/* 80678104  B0 1F 06 36 */	sth r0, 0x636(r31)
/* 80678108  38 00 00 02 */	li r0, 2
/* 8067810C  98 1F 06 39 */	stb r0, 0x639(r31)
/* 80678110  7F E3 FB 78 */	mr r3, r31
/* 80678114  4B FF FC F5 */	bl initBaseMtx__12daDoorPush_cFv
/* 80678118  38 1F 05 E4 */	addi r0, r31, 0x5e4
/* 8067811C  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80678120  7F E3 FB 78 */	mr r3, r31
/* 80678124  3C 80 80 68 */	lis r4, l_cull_box@ha /* 0x80678F74@ha */
/* 80678128  C4 24 8F 74 */	lfsu f1, l_cull_box@l(r4)  /* 0x80678F74@l */
/* 8067812C  C0 44 00 04 */	lfs f2, 4(r4)
/* 80678130  C0 64 00 08 */	lfs f3, 8(r4)
/* 80678134  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80678138  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 8067813C  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80678140  4B 9A 24 09 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80678144  3C 60 80 67 */	lis r3, PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@ha /* 0x80677DB8@ha */
/* 80678148  38 03 7D B8 */	addi r0, r3, PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@l /* 0x80677DB8@l */
/* 8067814C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80678150  90 03 00 10 */	stw r0, 0x10(r3)
/* 80678154  3C 60 80 67 */	lis r3, PPCallBack2__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@ha /* 0x80677DE0@ha */
/* 80678158  38 03 7D E0 */	addi r0, r3, PPCallBack2__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@l /* 0x80677DE0@l */
/* 8067815C  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80678160  90 03 00 10 */	stw r0, 0x10(r3)
/* 80678164  3C 60 80 68 */	lis r3, l_arcName@ha /* 0x80678F70@ha */
/* 80678168  80 03 8F 70 */	lwz r0, l_arcName@l(r3)  /* 0x80678F70@l */
/* 8067816C  90 1F 01 00 */	stw r0, 0x100(r31)
/* 80678170  3B 40 00 00 */	li r26, 0
/* 80678174  3B C0 00 00 */	li r30, 0
/* 80678178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067817C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80678180  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80678184  3C 60 80 68 */	lis r3, d_a_door_push__stringBase0@ha /* 0x80678F18@ha */
/* 80678188  3B 83 8F 18 */	addi r28, r3, d_a_door_push__stringBase0@l /* 0x80678F18@l */
/* 8067818C  3B A0 00 FF */	li r29, 0xff
lbl_80678190:
/* 80678190  7F 63 DB 78 */	mr r3, r27
/* 80678194  7F E4 FB 78 */	mr r4, r31
/* 80678198  38 BC 00 0A */	addi r5, r28, 0xa
/* 8067819C  38 C0 00 FF */	li r6, 0xff
/* 806781A0  4B 9C F5 B9 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 806781A4  38 1E 06 3A */	addi r0, r30, 0x63a
/* 806781A8  7C 7F 03 2E */	sthx r3, r31, r0
/* 806781AC  38 1A 06 3E */	addi r0, r26, 0x63e
/* 806781B0  7F BF 01 AE */	stbx r29, r31, r0
/* 806781B4  3B 5A 00 01 */	addi r26, r26, 1
/* 806781B8  2C 1A 00 02 */	cmpwi r26, 2
/* 806781BC  3B DE 00 02 */	addi r30, r30, 2
/* 806781C0  41 80 FF D0 */	blt lbl_80678190
/* 806781C4  3C 60 80 68 */	lis r3, lit_3744@ha /* 0x80678EE0@ha */
/* 806781C8  C0 03 8E E0 */	lfs f0, lit_3744@l(r3)  /* 0x80678EE0@l */
/* 806781CC  D0 1F 05 20 */	stfs f0, 0x520(r31)
/* 806781D0  7F E3 FB 78 */	mr r3, r31
/* 806781D4  48 00 02 B5 */	bl init_modeWait__12daDoorPush_cFv
/* 806781D8  7F E3 FB 78 */	mr r3, r31
/* 806781DC  4B A0 07 75 */	bl MoveBGExecute__16dBgS_MoveBgActorFv
/* 806781E0  38 60 00 01 */	li r3, 1
lbl_806781E4:
/* 806781E4  39 61 00 20 */	addi r11, r1, 0x20
/* 806781E8  4B CE A0 35 */	bl _restgpr_26
/* 806781EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806781F0  7C 08 03 A6 */	mtlr r0
/* 806781F4  38 21 00 20 */	addi r1, r1, 0x20
/* 806781F8  4E 80 00 20 */	blr 
