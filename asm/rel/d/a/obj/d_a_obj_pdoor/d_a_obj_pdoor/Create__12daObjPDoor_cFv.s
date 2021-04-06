lbl_80CAA03C:
/* 80CAA03C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAA040  7C 08 02 A6 */	mflr r0
/* 80CAA044  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAA048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAA04C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAA050  7C 7F 1B 78 */	mr r31, r3
/* 80CAA054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA058  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA05C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAA060  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CAA064  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAA068  7C 05 07 74 */	extsb r5, r0
/* 80CAA06C  4B 38 B2 F5 */	bl isSwitch__10dSv_info_cCFii
/* 80CAA070  7C 7E 1B 78 */	mr r30, r3
/* 80CAA074  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CAA078  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CAA07C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CAA080  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CAA084  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CAA088  7C 05 07 74 */	extsb r5, r0
/* 80CAA08C  4B 38 B2 D5 */	bl isSwitch__10dSv_info_cCFii
/* 80CAA090  2C 1E 00 00 */	cmpwi r30, 0
/* 80CAA094  40 82 00 18 */	bne lbl_80CAA0AC
/* 80CAA098  2C 03 00 00 */	cmpwi r3, 0
/* 80CAA09C  40 82 00 10 */	bne lbl_80CAA0AC
/* 80CAA0A0  38 00 00 00 */	li r0, 0
/* 80CAA0A4  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80CAA0A8  48 00 00 40 */	b lbl_80CAA0E8
lbl_80CAA0AC:
/* 80CAA0AC  2C 1E 00 00 */	cmpwi r30, 0
/* 80CAA0B0  41 82 00 1C */	beq lbl_80CAA0CC
/* 80CAA0B4  38 00 00 01 */	li r0, 1
/* 80CAA0B8  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80CAA0BC  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80CAA0C0  38 03 15 55 */	addi r0, r3, 0x1555
/* 80CAA0C4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80CAA0C8  48 00 00 20 */	b lbl_80CAA0E8
lbl_80CAA0CC:
/* 80CAA0CC  2C 03 00 00 */	cmpwi r3, 0
/* 80CAA0D0  41 82 00 18 */	beq lbl_80CAA0E8
/* 80CAA0D4  38 00 FF FF */	li r0, -1
/* 80CAA0D8  98 1F 05 AC */	stb r0, 0x5ac(r31)
/* 80CAA0DC  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80CAA0E0  38 03 EA AB */	addi r0, r3, -5461
/* 80CAA0E4  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
lbl_80CAA0E8:
/* 80CAA0E8  7F E3 FB 78 */	mr r3, r31
/* 80CAA0EC  4B FF FE B1 */	bl initBaseMtx__12daObjPDoor_cFv
/* 80CAA0F0  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80CAA0F4  38 03 00 24 */	addi r0, r3, 0x24
/* 80CAA0F8  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80CAA0FC  3C 60 80 CB */	lis r3, PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@ha /* 0x80CA9E98@ha */
/* 80CAA100  38 03 9E 98 */	addi r0, r3, PPCallBack__FP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@l /* 0x80CA9E98@l */
/* 80CAA104  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80CAA108  90 03 00 10 */	stw r0, 0x10(r3)
/* 80CAA10C  7F E3 FB 78 */	mr r3, r31
/* 80CAA110  3C 80 80 CB */	lis r4, l_cull_box@ha /* 0x80CAAB70@ha */
/* 80CAA114  C4 24 AB 70 */	lfsu f1, l_cull_box@l(r4)  /* 0x80CAAB70@l */
/* 80CAA118  C0 44 00 04 */	lfs f2, 4(r4)
/* 80CAA11C  C0 64 00 08 */	lfs f3, 8(r4)
/* 80CAA120  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80CAA124  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80CAA128  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80CAA12C  4B 37 04 1D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80CAA130  38 60 00 01 */	li r3, 1
/* 80CAA134  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAA138  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAA13C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAA140  7C 08 03 A6 */	mtlr r0
/* 80CAA144  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAA148  4E 80 00 20 */	blr 
