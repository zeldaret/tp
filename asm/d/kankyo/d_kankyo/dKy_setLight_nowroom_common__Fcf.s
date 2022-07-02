lbl_801A6278:
/* 801A6278  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801A627C  7C 08 02 A6 */	mflr r0
/* 801A6280  90 01 00 84 */	stw r0, 0x84(r1)
/* 801A6284  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801A6288  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 801A628C  39 61 00 70 */	addi r11, r1, 0x70
/* 801A6290  48 1B BF 1D */	bl _savegpr_17
/* 801A6294  7C 76 1B 78 */	mr r22, r3
/* 801A6298  FF E0 08 90 */	fmr f31, f1
/* 801A629C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A62A0  3B A3 CA 54 */	addi r29, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A62A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A62A8  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A62AC  83 25 5D 74 */	lwz r25, 0x5d74(r5)
/* 801A62B0  7E DB 07 74 */	extsb r27, r22
/* 801A62B4  1C 9B 04 04 */	mulli r4, r27, 0x404
/* 801A62B8  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 801A62BC  38 03 60 94 */	addi r0, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 801A62C0  7C 60 22 14 */	add r3, r0, r4
/* 801A62C4  3B 83 00 6C */	addi r28, r3, 0x6c
/* 801A62C8  3A 25 4E C4 */	addi r17, r5, 0x4ec4
/* 801A62CC  7E 23 8B 78 */	mr r3, r17
/* 801A62D0  7F 64 DB 78 */	mr r4, r27
/* 801A62D4  4B E7 E0 B1 */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A62D8  28 03 00 00 */	cmplwi r3, 0
/* 801A62DC  41 82 09 24 */	beq lbl_801A6C00
/* 801A62E0  7E 23 8B 78 */	mr r3, r17
/* 801A62E4  7F 64 DB 78 */	mr r4, r27
/* 801A62E8  4B E7 E0 9D */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A62EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801A62F0  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801A62F4  7D 89 03 A6 */	mtctr r12
/* 801A62F8  4E 80 04 21 */	bctrl 
/* 801A62FC  7C 72 1B 78 */	mr r18, r3
/* 801A6300  7E 23 8B 78 */	mr r3, r17
/* 801A6304  7F 64 DB 78 */	mr r4, r27
/* 801A6308  4B E7 E0 7D */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A630C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A6310  81 8C 00 B4 */	lwz r12, 0xb4(r12)
/* 801A6314  7D 89 03 A6 */	mtctr r12
/* 801A6318  4E 80 04 21 */	bctrl 
/* 801A631C  7C 78 1B 78 */	mr r24, r3
/* 801A6320  2C 18 00 06 */	cmpwi r24, 6
/* 801A6324  40 81 00 08 */	ble lbl_801A632C
/* 801A6328  3B 00 00 06 */	li r24, 6
lbl_801A632C:
/* 801A632C  38 C0 00 00 */	li r6, 0
/* 801A6330  B0 CD 81 80 */	sth r6, lightMask(r13)
/* 801A6334  3C 60 80 3C */	lis r3, lightMaskData@ha /* 0x803BBEAC@ha */
/* 801A6338  38 83 BE AC */	addi r4, r3, lightMaskData@l /* 0x803BBEAC@l */
/* 801A633C  7F 09 03 A6 */	mtctr r24
/* 801A6340  2C 18 00 00 */	cmpwi r24, 0
/* 801A6344  40 81 00 2C */	ble lbl_801A6370
lbl_801A6348:
/* 801A6348  28 12 00 00 */	cmplwi r18, 0
/* 801A634C  41 82 00 18 */	beq lbl_801A6364
/* 801A6350  A0 AD 81 80 */	lhz r5, lightMask(r13)
/* 801A6354  7C 64 32 14 */	add r3, r4, r6
/* 801A6358  A0 03 00 04 */	lhz r0, 4(r3)
/* 801A635C  7C A0 03 78 */	or r0, r5, r0
/* 801A6360  B0 0D 81 80 */	sth r0, lightMask(r13)
lbl_801A6364:
/* 801A6364  3A 52 00 20 */	addi r18, r18, 0x20
/* 801A6368  38 C6 00 02 */	addi r6, r6, 2
/* 801A636C  42 00 FF DC */	bdnz lbl_801A6348
lbl_801A6370:
/* 801A6370  7E 23 8B 78 */	mr r3, r17
/* 801A6374  7F 64 DB 78 */	mr r4, r27
/* 801A6378  4B E7 E0 0D */	bl getStatusRoomDt__20dStage_roomControl_cFi
/* 801A637C  81 83 00 00 */	lwz r12, 0(r3)
/* 801A6380  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 801A6384  7D 89 03 A6 */	mtctr r12
/* 801A6388  4E 80 04 21 */	bctrl 
/* 801A638C  7C 7E 1B 78 */	mr r30, r3
/* 801A6390  48 00 5D D9 */	bl dKy_SunMoon_Light_Check__Fv
/* 801A6394  2C 03 00 01 */	cmpwi r3, 1
/* 801A6398  40 82 00 38 */	bne lbl_801A63D0
/* 801A639C  28 1E 00 00 */	cmplwi r30, 0
/* 801A63A0  40 82 00 30 */	bne lbl_801A63D0
/* 801A63A4  A0 AD 81 80 */	lhz r5, lightMask(r13)
/* 801A63A8  3C 60 80 3C */	lis r3, lightMaskData@ha /* 0x803BBEAC@ha */
/* 801A63AC  38 83 BE AC */	addi r4, r3, lightMaskData@l /* 0x803BBEAC@l */
/* 801A63B0  A0 04 00 04 */	lhz r0, 4(r4)
/* 801A63B4  7C A0 03 78 */	or r0, r5, r0
/* 801A63B8  B0 0D 81 80 */	sth r0, lightMask(r13)
/* 801A63BC  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 801A63C0  A0 04 00 06 */	lhz r0, 6(r4)
/* 801A63C4  7C 60 03 78 */	or r0, r3, r0
/* 801A63C8  B0 0D 81 80 */	sth r0, lightMask(r13)
/* 801A63CC  3B 00 00 02 */	li r24, 2
lbl_801A63D0:
/* 801A63D0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A63D4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A63D8  80 03 07 80 */	lwz r0, 0x780(r3)
/* 801A63DC  2C 00 00 00 */	cmpwi r0, 0
/* 801A63E0  41 82 00 10 */	beq lbl_801A63F0
/* 801A63E4  A0 0D 81 80 */	lhz r0, lightMask(r13)
/* 801A63E8  60 00 00 01 */	ori r0, r0, 1
/* 801A63EC  B0 0D 81 80 */	sth r0, lightMask(r13)
lbl_801A63F0:
/* 801A63F0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A63F4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A63F8  80 03 07 A0 */	lwz r0, 0x7a0(r3)
/* 801A63FC  2C 00 00 00 */	cmpwi r0, 0
/* 801A6400  41 82 00 10 */	beq lbl_801A6410
/* 801A6404  A0 0D 81 80 */	lhz r0, lightMask(r13)
/* 801A6408  60 00 00 02 */	ori r0, r0, 2
/* 801A640C  B0 0D 81 80 */	sth r0, lightMask(r13)
lbl_801A6410:
/* 801A6410  28 19 00 00 */	cmplwi r25, 0
/* 801A6414  41 82 00 A8 */	beq lbl_801A64BC
/* 801A6418  C0 19 00 D8 */	lfs f0, 0xd8(r25)
/* 801A641C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 801A6420  C0 19 00 DC */	lfs f0, 0xdc(r25)
/* 801A6424  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801A6428  C0 19 00 E0 */	lfs f0, 0xe0(r25)
/* 801A642C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 801A6430  38 61 00 20 */	addi r3, r1, 0x20
/* 801A6434  38 80 00 00 */	li r4, 0
/* 801A6438  4B FF 7D 05 */	bl dKy_eflight_influence_id__F4cXyzi
/* 801A643C  2C 03 00 00 */	cmpwi r3, 0
/* 801A6440  41 80 00 5C */	blt lbl_801A649C
/* 801A6444  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A6448  38 84 CA 54 */	addi r4, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A644C  54 60 10 3A */	slwi r0, r3, 2
/* 801A6450  7E 24 02 14 */	add r17, r4, r0
/* 801A6454  84 71 05 88 */	lwzu r3, 0x588(r17)
/* 801A6458  38 80 00 01 */	li r4, 1
/* 801A645C  48 00 15 E5 */	bl dKy_bgparts_activelight_set__FP15LIGHT_INFLUENCEi
/* 801A6460  48 00 5E 2D */	bl dKy_Indoor_check__Fv
/* 801A6464  2C 03 00 01 */	cmpwi r3, 1
/* 801A6468  40 82 00 54 */	bne lbl_801A64BC
/* 801A646C  80 91 00 00 */	lwz r4, 0(r17)
/* 801A6470  C0 04 00 00 */	lfs f0, 0(r4)
/* 801A6474  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A6478  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A647C  D0 03 10 A0 */	stfs f0, 0x10a0(r3)
/* 801A6480  C0 04 00 04 */	lfs f0, 4(r4)
/* 801A6484  D0 03 10 A4 */	stfs f0, 0x10a4(r3)
/* 801A6488  C0 04 00 08 */	lfs f0, 8(r4)
/* 801A648C  D0 03 10 A8 */	stfs f0, 0x10a8(r3)
/* 801A6490  38 60 00 01 */	li r3, 1
/* 801A6494  48 00 68 49 */	bl dKy_shadow_mode_set__FUc
/* 801A6498  48 00 00 24 */	b lbl_801A64BC
lbl_801A649C:
/* 801A649C  38 60 00 01 */	li r3, 1
/* 801A64A0  48 00 16 0D */	bl dKy_bgparts_activelight_cut__Fi
/* 801A64A4  38 60 00 01 */	li r3, 1
/* 801A64A8  48 00 68 65 */	bl dKy_shadow_mode_check__FUc
/* 801A64AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A64B0  41 82 00 0C */	beq lbl_801A64BC
/* 801A64B4  38 60 00 01 */	li r3, 1
/* 801A64B8  48 00 68 3D */	bl dKy_shadow_mode_reset__FUc
lbl_801A64BC:
/* 801A64BC  38 A0 00 00 */	li r5, 0
/* 801A64C0  38 C0 00 00 */	li r6, 0
/* 801A64C4  38 E0 00 00 */	li r7, 0
/* 801A64C8  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801A64CC  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801A64D0  3C 80 80 43 */	lis r4, g_env_light@ha /* 0x8042CA54@ha */
/* 801A64D4  38 04 CA 54 */	addi r0, r4, g_env_light@l /* 0x8042CA54@l */
/* 801A64D8  38 80 00 02 */	li r4, 2
/* 801A64DC  7C 89 03 A6 */	mtctr r4
lbl_801A64E0:
/* 801A64E0  7C 80 3A 14 */	add r4, r0, r7
/* 801A64E4  81 04 07 80 */	lwz r8, 0x780(r4)
/* 801A64E8  2C 08 00 00 */	cmpwi r8, 0
/* 801A64EC  41 82 00 FC */	beq lbl_801A65E8
/* 801A64F0  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801A64F4  39 24 07 78 */	addi r9, r4, 0x778
/* 801A64F8  C0 04 07 78 */	lfs f0, 0x778(r4)
/* 801A64FC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801A6500  41 82 00 E8 */	beq lbl_801A65E8
/* 801A6504  2C 05 00 01 */	cmpwi r5, 1
/* 801A6508  40 82 00 10 */	bne lbl_801A6518
/* 801A650C  89 03 00 B9 */	lbz r8, 0xb9(r3)
/* 801A6510  28 08 00 03 */	cmplwi r8, 3
/* 801A6514  41 82 00 D4 */	beq lbl_801A65E8
lbl_801A6518:
/* 801A6518  81 0D 81 84 */	lwz r8, lightStatusPt(r13)
/* 801A651C  7D 08 32 14 */	add r8, r8, r6
/* 801A6520  C0 04 07 64 */	lfs f0, 0x764(r4)
/* 801A6524  D0 08 00 00 */	stfs f0, 0(r8)
/* 801A6528  C0 04 07 68 */	lfs f0, 0x768(r4)
/* 801A652C  D0 08 00 04 */	stfs f0, 4(r8)
/* 801A6530  C0 04 07 6C */	lfs f0, 0x76c(r4)
/* 801A6534  D0 08 00 08 */	stfs f0, 8(r8)
/* 801A6538  2C 05 00 00 */	cmpwi r5, 0
/* 801A653C  40 82 00 20 */	bne lbl_801A655C
/* 801A6540  C0 22 A2 68 */	lfs f1, lit_4731(r2)
/* 801A6544  C0 09 00 00 */	lfs f0, 0(r9)
/* 801A6548  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A654C  81 2D 81 84 */	lwz r9, lightStatusPt(r13)
/* 801A6550  39 06 00 4C */	addi r8, r6, 0x4c
/* 801A6554  7C 09 45 2E */	stfsx f0, r9, r8
/* 801A6558  48 00 00 1C */	b lbl_801A6574
lbl_801A655C:
/* 801A655C  C0 22 A2 68 */	lfs f1, lit_4731(r2)
/* 801A6560  C0 09 00 00 */	lfs f0, 0(r9)
/* 801A6564  EC 01 00 32 */	fmuls f0, f1, f0
/* 801A6568  81 2D 81 84 */	lwz r9, lightStatusPt(r13)
/* 801A656C  39 06 00 4C */	addi r8, r6, 0x4c
/* 801A6570  7C 09 45 2E */	stfsx f0, r9, r8
lbl_801A6574:
/* 801A6574  C0 02 A3 50 */	lfs f0, lit_7012(r2)
/* 801A6578  81 2D 81 84 */	lwz r9, lightStatusPt(r13)
/* 801A657C  39 06 00 50 */	addi r8, r6, 0x50
/* 801A6580  7C 09 45 2E */	stfsx f0, r9, r8
/* 801A6584  39 40 00 01 */	li r10, 1
/* 801A6588  81 2D 81 84 */	lwz r9, lightStatusPt(r13)
/* 801A658C  39 06 00 1C */	addi r8, r6, 0x1c
/* 801A6590  7D 49 41 2E */	stwx r10, r9, r8
/* 801A6594  39 40 00 03 */	li r10, 3
/* 801A6598  81 2D 81 84 */	lwz r9, lightStatusPt(r13)
/* 801A659C  39 06 00 54 */	addi r8, r6, 0x54
/* 801A65A0  7D 49 41 2E */	stwx r10, r9, r8
/* 801A65A4  39 40 00 00 */	li r10, 0
/* 801A65A8  81 2D 81 84 */	lwz r9, lightStatusPt(r13)
/* 801A65AC  39 06 00 48 */	addi r8, r6, 0x48
/* 801A65B0  7D 49 41 2E */	stwx r10, r9, r8
/* 801A65B4  A9 44 07 70 */	lha r10, 0x770(r4)
/* 801A65B8  81 2D 81 84 */	lwz r9, lightStatusPt(r13)
/* 801A65BC  39 06 00 18 */	addi r8, r6, 0x18
/* 801A65C0  7D 49 41 AE */	stbx r10, r9, r8
/* 801A65C4  A9 44 07 72 */	lha r10, 0x772(r4)
/* 801A65C8  81 2D 81 84 */	lwz r9, lightStatusPt(r13)
/* 801A65CC  39 06 00 19 */	addi r8, r6, 0x19
/* 801A65D0  7D 49 41 AE */	stbx r10, r9, r8
/* 801A65D4  A9 24 07 74 */	lha r9, 0x774(r4)
/* 801A65D8  81 0D 81 84 */	lwz r8, lightStatusPt(r13)
/* 801A65DC  38 86 00 1A */	addi r4, r6, 0x1a
/* 801A65E0  7D 28 21 AE */	stbx r9, r8, r4
/* 801A65E4  48 00 00 2C */	b lbl_801A6610
lbl_801A65E8:
/* 801A65E8  39 20 00 00 */	li r9, 0
/* 801A65EC  81 0D 81 84 */	lwz r8, lightStatusPt(r13)
/* 801A65F0  38 86 00 18 */	addi r4, r6, 0x18
/* 801A65F4  7D 28 21 AE */	stbx r9, r8, r4
/* 801A65F8  81 0D 81 84 */	lwz r8, lightStatusPt(r13)
/* 801A65FC  38 86 00 19 */	addi r4, r6, 0x19
/* 801A6600  7D 28 21 AE */	stbx r9, r8, r4
/* 801A6604  81 0D 81 84 */	lwz r8, lightStatusPt(r13)
/* 801A6608  38 86 00 1A */	addi r4, r6, 0x1a
/* 801A660C  7D 28 21 AE */	stbx r9, r8, r4
lbl_801A6610:
/* 801A6610  38 A5 00 01 */	addi r5, r5, 1
/* 801A6614  38 C6 00 E8 */	addi r6, r6, 0xe8
/* 801A6618  38 E7 00 20 */	addi r7, r7, 0x20
/* 801A661C  42 00 FE C4 */	bdnz lbl_801A64E0
/* 801A6620  3A E0 00 00 */	li r23, 0
/* 801A6624  3A A0 00 00 */	li r21, 0
/* 801A6628  3A 80 00 00 */	li r20, 0
/* 801A662C  3A 60 00 00 */	li r19, 0
/* 801A6630  3A 40 00 00 */	li r18, 0
/* 801A6634  3A 20 00 00 */	li r17, 0
/* 801A6638  3C 60 80 3C */	lis r3, lightMaskData@ha /* 0x803BBEAC@ha */
/* 801A663C  3B E3 BE AC */	addi r31, r3, lightMaskData@l /* 0x803BBEAC@l */
lbl_801A6640:
/* 801A6640  28 1E 00 00 */	cmplwi r30, 0
/* 801A6644  41 82 01 3C */	beq lbl_801A6780
/* 801A6648  7C 17 C0 00 */	cmpw r23, r24
/* 801A664C  40 80 00 DC */	bge lbl_801A6728
/* 801A6650  7F 5E 8A 14 */	add r26, r30, r17
/* 801A6654  C0 1A 00 00 */	lfs f0, 0(r26)
/* 801A6658  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A665C  38 12 01 D0 */	addi r0, r18, 0x1d0
/* 801A6660  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6664  C0 1A 00 04 */	lfs f0, 4(r26)
/* 801A6668  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A666C  38 12 01 D4 */	addi r0, r18, 0x1d4
/* 801A6670  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6674  C0 1A 00 08 */	lfs f0, 8(r26)
/* 801A6678  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A667C  38 12 01 D8 */	addi r0, r18, 0x1d8
/* 801A6680  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6684  7F 43 D3 78 */	mr r3, r26
/* 801A6688  7E C4 B3 78 */	mr r4, r22
/* 801A668C  4B FF FB 69 */	bl dKy_lightswitch_check__FP30stage_pure_lightvec_info_classc
/* 801A6690  2C 03 00 01 */	cmpwi r3, 1
/* 801A6694  40 82 00 18 */	bne lbl_801A66AC
/* 801A6698  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 801A669C  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A66A0  38 12 02 1C */	addi r0, r18, 0x21c
/* 801A66A4  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A66A8  48 00 00 14 */	b lbl_801A66BC
lbl_801A66AC:
/* 801A66AC  C0 02 A3 10 */	lfs f0, lit_6042(r2)
/* 801A66B0  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A66B4  38 12 02 1C */	addi r0, r18, 0x21c
/* 801A66B8  7C 03 05 2E */	stfsx f0, r3, r0
lbl_801A66BC:
/* 801A66BC  C0 02 A3 50 */	lfs f0, lit_7012(r2)
/* 801A66C0  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A66C4  38 12 02 20 */	addi r0, r18, 0x220
/* 801A66C8  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A66CC  38 80 00 00 */	li r4, 0
/* 801A66D0  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A66D4  38 12 01 EC */	addi r0, r18, 0x1ec
/* 801A66D8  7C 83 01 2E */	stwx r4, r3, r0
/* 801A66DC  88 9A 00 1C */	lbz r4, 0x1c(r26)
/* 801A66E0  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A66E4  38 12 02 18 */	addi r0, r18, 0x218
/* 801A66E8  7C 83 01 2E */	stwx r4, r3, r0
/* 801A66EC  88 9A 00 1D */	lbz r4, 0x1d(r26)
/* 801A66F0  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A66F4  38 12 02 24 */	addi r0, r18, 0x224
/* 801A66F8  7C 83 01 2E */	stwx r4, r3, r0
/* 801A66FC  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 801A6700  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6704  38 12 02 14 */	addi r0, r18, 0x214
/* 801A6708  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A670C  C0 3A 00 10 */	lfs f1, 0x10(r26)
/* 801A6710  C0 5A 00 14 */	lfs f2, 0x14(r26)
/* 801A6714  80 0D 81 84 */	lwz r0, lightStatusPt(r13)
/* 801A6718  38 72 02 08 */	addi r3, r18, 0x208
/* 801A671C  7C 60 1A 14 */	add r3, r0, r3
/* 801A6720  4B FF 6A 81 */	bl dKy_lightdir_set__FffP3Vec
/* 801A6724  48 00 00 5C */	b lbl_801A6780
lbl_801A6728:
/* 801A6728  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A672C  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6730  38 12 02 1C */	addi r0, r18, 0x21c
/* 801A6734  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6738  C0 02 A3 50 */	lfs f0, lit_7012(r2)
/* 801A673C  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6740  38 12 02 20 */	addi r0, r18, 0x220
/* 801A6744  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6748  38 80 00 00 */	li r4, 0
/* 801A674C  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6750  38 12 01 EC */	addi r0, r18, 0x1ec
/* 801A6754  7C 83 01 2E */	stwx r4, r3, r0
/* 801A6758  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A675C  38 12 02 24 */	addi r0, r18, 0x224
/* 801A6760  7C 83 01 2E */	stwx r4, r3, r0
/* 801A6764  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6768  38 12 02 18 */	addi r0, r18, 0x218
/* 801A676C  7C 83 01 2E */	stwx r4, r3, r0
/* 801A6770  C0 02 A2 2C */	lfs f0, lit_4442(r2)
/* 801A6774  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6778  38 12 02 14 */	addi r0, r18, 0x214
/* 801A677C  7C 03 05 2E */	stfsx f0, r3, r0
lbl_801A6780:
/* 801A6780  48 00 59 E9 */	bl dKy_SunMoon_Light_Check__Fv
/* 801A6784  2C 03 00 01 */	cmpwi r3, 1
/* 801A6788  40 82 01 10 */	bne lbl_801A6898
/* 801A678C  2C 17 00 01 */	cmpwi r23, 1
/* 801A6790  41 81 01 08 */	bgt lbl_801A6898
/* 801A6794  A0 6D 81 80 */	lhz r3, lightMask(r13)
/* 801A6798  A0 1F 00 04 */	lhz r0, 4(r31)
/* 801A679C  7C 60 03 78 */	or r0, r3, r0
/* 801A67A0  B0 0D 81 80 */	sth r0, lightMask(r13)
/* 801A67A4  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 801A67A8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 801A67AC  7C 60 03 78 */	or r0, r3, r0
/* 801A67B0  B0 0D 81 80 */	sth r0, lightMask(r13)
/* 801A67B4  2C 17 00 00 */	cmpwi r23, 0
/* 801A67B8  40 82 00 2C */	bne lbl_801A67E4
/* 801A67BC  80 0D 81 84 */	lwz r0, lightStatusPt(r13)
/* 801A67C0  38 72 01 D0 */	addi r3, r18, 0x1d0
/* 801A67C4  7C 60 1A 14 */	add r3, r0, r3
/* 801A67C8  C0 1D 10 88 */	lfs f0, 0x1088(r29)
/* 801A67CC  D0 03 00 00 */	stfs f0, 0(r3)
/* 801A67D0  C0 1D 10 8C */	lfs f0, 0x108c(r29)
/* 801A67D4  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A67D8  C0 1D 10 90 */	lfs f0, 0x1090(r29)
/* 801A67DC  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A67E0  48 00 00 68 */	b lbl_801A6848
lbl_801A67E4:
/* 801A67E4  28 19 00 00 */	cmplwi r25, 0
/* 801A67E8  41 82 00 3C */	beq lbl_801A6824
/* 801A67EC  38 61 00 14 */	addi r3, r1, 0x14
/* 801A67F0  38 99 00 D8 */	addi r4, r25, 0xd8
/* 801A67F4  38 BD 10 94 */	addi r5, r29, 0x1094
/* 801A67F8  48 0C 02 ED */	bl __pl__4cXyzCFRC3Vec
/* 801A67FC  80 0D 81 84 */	lwz r0, lightStatusPt(r13)
/* 801A6800  38 72 01 D0 */	addi r3, r18, 0x1d0
/* 801A6804  7C 60 1A 14 */	add r3, r0, r3
/* 801A6808  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 801A680C  D0 03 00 00 */	stfs f0, 0(r3)
/* 801A6810  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 801A6814  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A6818  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 801A681C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A6820  48 00 00 28 */	b lbl_801A6848
lbl_801A6824:
/* 801A6824  80 0D 81 84 */	lwz r0, lightStatusPt(r13)
/* 801A6828  38 72 01 D0 */	addi r3, r18, 0x1d0
/* 801A682C  7C 60 1A 14 */	add r3, r0, r3
/* 801A6830  C0 1D 10 94 */	lfs f0, 0x1094(r29)
/* 801A6834  D0 03 00 00 */	stfs f0, 0(r3)
/* 801A6838  C0 1D 10 98 */	lfs f0, 0x1098(r29)
/* 801A683C  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A6840  C0 1D 10 9C */	lfs f0, 0x109c(r29)
/* 801A6844  D0 03 00 08 */	stfs f0, 8(r3)
lbl_801A6848:
/* 801A6848  C0 02 A3 24 */	lfs f0, lit_6765(r2)
/* 801A684C  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6850  38 12 02 1C */	addi r0, r18, 0x21c
/* 801A6854  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6858  C0 02 A3 50 */	lfs f0, lit_7012(r2)
/* 801A685C  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6860  38 12 02 20 */	addi r0, r18, 0x220
/* 801A6864  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6868  38 80 00 01 */	li r4, 1
/* 801A686C  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6870  38 12 01 EC */	addi r0, r18, 0x1ec
/* 801A6874  7C 83 01 2E */	stwx r4, r3, r0
/* 801A6878  38 80 00 03 */	li r4, 3
/* 801A687C  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6880  38 12 02 24 */	addi r0, r18, 0x224
/* 801A6884  7C 83 01 2E */	stwx r4, r3, r0
/* 801A6888  38 80 00 00 */	li r4, 0
/* 801A688C  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6890  38 12 02 18 */	addi r0, r18, 0x218
/* 801A6894  7C 83 01 2E */	stwx r4, r3, r0
lbl_801A6898:
/* 801A6898  A0 8D 81 80 */	lhz r4, lightMask(r13)
/* 801A689C  7C 7F 9A 14 */	add r3, r31, r19
/* 801A68A0  A0 03 00 04 */	lhz r0, 4(r3)
/* 801A68A4  7C 80 00 39 */	and. r0, r4, r0
/* 801A68A8  41 82 01 1C */	beq lbl_801A69C4
/* 801A68AC  38 74 00 74 */	addi r3, r20, 0x74
/* 801A68B0  7C 7C 1A 15 */	add. r3, r28, r3
/* 801A68B4  41 82 00 44 */	beq lbl_801A68F8
/* 801A68B8  38 63 00 18 */	addi r3, r3, 0x18
/* 801A68BC  FC 20 F8 90 */	fmr f1, f31
/* 801A68C0  4B FF 7B 71 */	bl dKy_light_influence_col__FP8_GXColorf
/* 801A68C4  90 61 00 10 */	stw r3, 0x10(r1)
/* 801A68C8  80 0D 81 84 */	lwz r0, lightStatusPt(r13)
/* 801A68CC  38 72 01 E8 */	addi r3, r18, 0x1e8
/* 801A68D0  7C 60 1A 14 */	add r3, r0, r3
/* 801A68D4  88 01 00 10 */	lbz r0, 0x10(r1)
/* 801A68D8  98 03 00 00 */	stb r0, 0(r3)
/* 801A68DC  88 01 00 11 */	lbz r0, 0x11(r1)
/* 801A68E0  98 03 00 01 */	stb r0, 1(r3)
/* 801A68E4  88 01 00 12 */	lbz r0, 0x12(r1)
/* 801A68E8  98 03 00 02 */	stb r0, 2(r3)
/* 801A68EC  88 01 00 13 */	lbz r0, 0x13(r1)
/* 801A68F0  98 03 00 03 */	stb r0, 3(r3)
/* 801A68F4  48 00 00 4C */	b lbl_801A6940
lbl_801A68F8:
/* 801A68F8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A68FC  38 03 CA 54 */	addi r0, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A6900  7C 60 AA 14 */	add r3, r0, r21
/* 801A6904  38 63 09 C4 */	addi r3, r3, 0x9c4
/* 801A6908  FC 20 F8 90 */	fmr f1, f31
/* 801A690C  4B FF 7B 25 */	bl dKy_light_influence_col__FP8_GXColorf
/* 801A6910  90 61 00 0C */	stw r3, 0xc(r1)
/* 801A6914  80 0D 81 84 */	lwz r0, lightStatusPt(r13)
/* 801A6918  38 72 01 E8 */	addi r3, r18, 0x1e8
/* 801A691C  7C 60 1A 14 */	add r3, r0, r3
/* 801A6920  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801A6924  98 03 00 00 */	stb r0, 0(r3)
/* 801A6928  88 01 00 0D */	lbz r0, 0xd(r1)
/* 801A692C  98 03 00 01 */	stb r0, 1(r3)
/* 801A6930  88 01 00 0E */	lbz r0, 0xe(r1)
/* 801A6934  98 03 00 02 */	stb r0, 2(r3)
/* 801A6938  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801A693C  98 03 00 03 */	stb r0, 3(r3)
lbl_801A6940:
/* 801A6940  88 0D 87 E4 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0(r13)
/* 801A6944  7C 00 07 74 */	extsb r0, r0
/* 801A6948  7C 1B 00 00 */	cmpw r27, r0
/* 801A694C  40 82 00 A0 */	bne lbl_801A69EC
/* 801A6950  28 1E 00 00 */	cmplwi r30, 0
/* 801A6954  41 82 00 98 */	beq lbl_801A69EC
/* 801A6958  7C 17 C0 00 */	cmpw r23, r24
/* 801A695C  40 80 00 90 */	bge lbl_801A69EC
/* 801A6960  80 0D 81 84 */	lwz r0, lightStatusPt(r13)
/* 801A6964  7C 80 92 14 */	add r4, r0, r18
/* 801A6968  C0 04 01 D0 */	lfs f0, 0x1d0(r4)
/* 801A696C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A6970  38 03 CA 54 */	addi r0, r3, g_env_light@l /* 0x8042CA54@l */
/* 801A6974  7C 60 AA 14 */	add r3, r0, r21
/* 801A6978  D0 03 09 B8 */	stfs f0, 0x9b8(r3)
/* 801A697C  C0 04 01 D4 */	lfs f0, 0x1d4(r4)
/* 801A6980  D0 03 09 BC */	stfs f0, 0x9bc(r3)
/* 801A6984  C0 04 01 D8 */	lfs f0, 0x1d8(r4)
/* 801A6988  D0 03 09 C0 */	stfs f0, 0x9c0(r3)
/* 801A698C  C0 04 02 1C */	lfs f0, 0x21c(r4)
/* 801A6990  D0 03 09 C8 */	stfs f0, 0x9c8(r3)
/* 801A6994  C0 04 02 14 */	lfs f0, 0x214(r4)
/* 801A6998  D0 03 09 D0 */	stfs f0, 0x9d0(r3)
/* 801A699C  80 04 02 18 */	lwz r0, 0x218(r4)
/* 801A69A0  98 03 09 DC */	stb r0, 0x9dc(r3)
/* 801A69A4  80 04 02 24 */	lwz r0, 0x224(r4)
/* 801A69A8  98 03 09 DD */	stb r0, 0x9dd(r3)
/* 801A69AC  7C 9E 8A 14 */	add r4, r30, r17
/* 801A69B0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 801A69B4  D0 03 09 D4 */	stfs f0, 0x9d4(r3)
/* 801A69B8  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 801A69BC  D0 03 09 D8 */	stfs f0, 0x9d8(r3)
/* 801A69C0  48 00 00 2C */	b lbl_801A69EC
lbl_801A69C4:
/* 801A69C4  38 80 00 00 */	li r4, 0
/* 801A69C8  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A69CC  38 12 01 E8 */	addi r0, r18, 0x1e8
/* 801A69D0  7C 83 01 AE */	stbx r4, r3, r0
/* 801A69D4  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A69D8  38 12 01 E9 */	addi r0, r18, 0x1e9
/* 801A69DC  7C 83 01 AE */	stbx r4, r3, r0
/* 801A69E0  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A69E4  38 12 01 EA */	addi r0, r18, 0x1ea
/* 801A69E8  7C 83 01 AE */	stbx r4, r3, r0
lbl_801A69EC:
/* 801A69EC  3A F7 00 01 */	addi r23, r23, 1
/* 801A69F0  2C 17 00 06 */	cmpwi r23, 6
/* 801A69F4  3A B5 00 4C */	addi r21, r21, 0x4c
/* 801A69F8  3A 94 00 74 */	addi r20, r20, 0x74
/* 801A69FC  3A 73 00 02 */	addi r19, r19, 2
/* 801A6A00  3A 52 00 E8 */	addi r18, r18, 0xe8
/* 801A6A04  3A 31 00 20 */	addi r17, r17, 0x20
/* 801A6A08  41 80 FC 38 */	blt lbl_801A6640
/* 801A6A0C  3A E0 00 00 */	li r23, 0
/* 801A6A10  3A C0 00 00 */	li r22, 0
/* 801A6A14  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 801A6A18  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
lbl_801A6A1C:
/* 801A6A1C  7F 5D B2 14 */	add r26, r29, r22
/* 801A6A20  88 1A 0C 3E */	lbz r0, 0xc3e(r26)
/* 801A6A24  28 00 00 01 */	cmplwi r0, 1
/* 801A6A28  40 82 01 C4 */	bne lbl_801A6BEC
/* 801A6A2C  3B 00 00 00 */	li r24, 0
/* 801A6A30  38 60 00 00 */	li r3, 0
/* 801A6A34  A0 CD 81 80 */	lhz r6, lightMask(r13)
/* 801A6A38  3C 80 80 3C */	lis r4, lightMaskData@ha /* 0x803BBEAC@ha */
/* 801A6A3C  38 A4 BE AC */	addi r5, r4, lightMaskData@l /* 0x803BBEAC@l */
/* 801A6A40  38 00 00 06 */	li r0, 6
/* 801A6A44  7C 09 03 A6 */	mtctr r0
lbl_801A6A48:
/* 801A6A48  7C 85 1A 14 */	add r4, r5, r3
/* 801A6A4C  A0 84 00 04 */	lhz r4, 4(r4)
/* 801A6A50  7C C0 20 39 */	and. r0, r6, r4
/* 801A6A54  40 82 01 8C */	bne lbl_801A6BE0
/* 801A6A58  A0 0D 81 80 */	lhz r0, lightMask(r13)
/* 801A6A5C  7C 00 23 78 */	or r0, r0, r4
/* 801A6A60  B0 0D 81 80 */	sth r0, lightMask(r13)
/* 801A6A64  88 1A 0C 27 */	lbz r0, 0xc27(r26)
/* 801A6A68  28 00 00 FE */	cmplwi r0, 0xfe
/* 801A6A6C  41 82 00 0C */	beq lbl_801A6A78
/* 801A6A70  28 00 00 FD */	cmplwi r0, 0xfd
/* 801A6A74  40 82 00 0C */	bne lbl_801A6A80
lbl_801A6A78:
/* 801A6A78  7E E3 BB 78 */	mr r3, r23
/* 801A6A7C  4B FF 65 69 */	bl dKy_twi_wolflight_set__Fi
lbl_801A6A80:
/* 801A6A80  88 1C 03 7A */	lbz r0, 0x37a(r28)
/* 801A6A84  28 00 00 10 */	cmplwi r0, 0x10
/* 801A6A88  40 80 00 3C */	bge lbl_801A6AC4
/* 801A6A8C  C0 1A 0C 18 */	lfs f0, 0xc18(r26)
/* 801A6A90  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6A94  1C 98 00 E8 */	mulli r4, r24, 0xe8
/* 801A6A98  38 04 01 D0 */	addi r0, r4, 0x1d0
/* 801A6A9C  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6AA0  C0 1A 0C 1C */	lfs f0, 0xc1c(r26)
/* 801A6AA4  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6AA8  38 04 01 D4 */	addi r0, r4, 0x1d4
/* 801A6AAC  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6AB0  C0 1A 0C 20 */	lfs f0, 0xc20(r26)
/* 801A6AB4  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6AB8  38 04 01 D8 */	addi r0, r4, 0x1d8
/* 801A6ABC  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6AC0  48 00 00 64 */	b lbl_801A6B24
lbl_801A6AC4:
/* 801A6AC4  C0 1A 0C 18 */	lfs f0, 0xc18(r26)
/* 801A6AC8  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6ACC  1C 98 00 E8 */	mulli r4, r24, 0xe8
/* 801A6AD0  38 04 01 D0 */	addi r0, r4, 0x1d0
/* 801A6AD4  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6AD8  2C 17 00 00 */	cmpwi r23, 0
/* 801A6ADC  40 82 00 20 */	bne lbl_801A6AFC
/* 801A6AE0  C0 3A 0C 1C */	lfs f1, 0xc1c(r26)
/* 801A6AE4  C0 1F 12 7C */	lfs f0, 0x127c(r31)
/* 801A6AE8  EC 01 00 2A */	fadds f0, f1, f0
/* 801A6AEC  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6AF0  38 04 01 D4 */	addi r0, r4, 0x1d4
/* 801A6AF4  7C 03 05 2E */	stfsx f0, r3, r0
/* 801A6AF8  48 00 00 1C */	b lbl_801A6B14
lbl_801A6AFC:
/* 801A6AFC  C0 22 A2 8C */	lfs f1, lit_5106(r2)
/* 801A6B00  C0 1A 0C 1C */	lfs f0, 0xc1c(r26)
/* 801A6B04  EC 01 00 2A */	fadds f0, f1, f0
/* 801A6B08  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6B0C  38 04 01 D4 */	addi r0, r4, 0x1d4
/* 801A6B10  7C 03 05 2E */	stfsx f0, r3, r0
lbl_801A6B14:
/* 801A6B14  C0 1A 0C 20 */	lfs f0, 0xc20(r26)
/* 801A6B18  80 6D 81 84 */	lwz r3, lightStatusPt(r13)
/* 801A6B1C  38 04 01 D8 */	addi r0, r4, 0x1d8
/* 801A6B20  7C 03 05 2E */	stfsx f0, r3, r0
lbl_801A6B24:
/* 801A6B24  38 7A 0C 24 */	addi r3, r26, 0xc24
/* 801A6B28  FC 20 F8 90 */	fmr f1, f31
/* 801A6B2C  4B FF 79 05 */	bl dKy_light_influence_col__FP8_GXColorf
/* 801A6B30  90 61 00 08 */	stw r3, 8(r1)
/* 801A6B34  80 0D 81 84 */	lwz r0, lightStatusPt(r13)
/* 801A6B38  1C 78 00 E8 */	mulli r3, r24, 0xe8
/* 801A6B3C  38 83 01 E8 */	addi r4, r3, 0x1e8
/* 801A6B40  7C 80 22 14 */	add r4, r0, r4
/* 801A6B44  88 01 00 08 */	lbz r0, 8(r1)
/* 801A6B48  98 04 00 00 */	stb r0, 0(r4)
/* 801A6B4C  88 01 00 09 */	lbz r0, 9(r1)
/* 801A6B50  98 04 00 01 */	stb r0, 1(r4)
/* 801A6B54  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801A6B58  98 04 00 02 */	stb r0, 2(r4)
/* 801A6B5C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801A6B60  98 04 00 03 */	stb r0, 3(r4)
/* 801A6B64  C0 1A 0C 28 */	lfs f0, 0xc28(r26)
/* 801A6B68  80 8D 81 84 */	lwz r4, lightStatusPt(r13)
/* 801A6B6C  38 03 02 1C */	addi r0, r3, 0x21c
/* 801A6B70  7C 04 05 2E */	stfsx f0, r4, r0
/* 801A6B74  C0 02 A3 50 */	lfs f0, lit_7012(r2)
/* 801A6B78  80 8D 81 84 */	lwz r4, lightStatusPt(r13)
/* 801A6B7C  38 03 02 20 */	addi r0, r3, 0x220
/* 801A6B80  7C 04 05 2E */	stfsx f0, r4, r0
/* 801A6B84  38 A0 00 01 */	li r5, 1
/* 801A6B88  80 8D 81 84 */	lwz r4, lightStatusPt(r13)
/* 801A6B8C  38 03 01 EC */	addi r0, r3, 0x1ec
/* 801A6B90  7C A4 01 2E */	stwx r5, r4, r0
/* 801A6B94  88 BA 0C 3C */	lbz r5, 0xc3c(r26)
/* 801A6B98  80 8D 81 84 */	lwz r4, lightStatusPt(r13)
/* 801A6B9C  38 03 02 18 */	addi r0, r3, 0x218
/* 801A6BA0  7C A4 01 2E */	stwx r5, r4, r0
/* 801A6BA4  88 BA 0C 3D */	lbz r5, 0xc3d(r26)
/* 801A6BA8  80 8D 81 84 */	lwz r4, lightStatusPt(r13)
/* 801A6BAC  38 03 02 24 */	addi r0, r3, 0x224
/* 801A6BB0  7C A4 01 2E */	stwx r5, r4, r0
/* 801A6BB4  C0 1A 0C 30 */	lfs f0, 0xc30(r26)
/* 801A6BB8  80 8D 81 84 */	lwz r4, lightStatusPt(r13)
/* 801A6BBC  38 03 02 14 */	addi r0, r3, 0x214
/* 801A6BC0  7C 04 05 2E */	stfsx f0, r4, r0
/* 801A6BC4  C0 3A 0C 34 */	lfs f1, 0xc34(r26)
/* 801A6BC8  C0 5A 0C 38 */	lfs f2, 0xc38(r26)
/* 801A6BCC  80 0D 81 84 */	lwz r0, lightStatusPt(r13)
/* 801A6BD0  38 63 02 08 */	addi r3, r3, 0x208
/* 801A6BD4  7C 60 1A 14 */	add r3, r0, r3
/* 801A6BD8  4B FF 65 C9 */	bl dKy_lightdir_set__FffP3Vec
/* 801A6BDC  48 00 00 10 */	b lbl_801A6BEC
lbl_801A6BE0:
/* 801A6BE0  3B 18 00 01 */	addi r24, r24, 1
/* 801A6BE4  38 63 00 02 */	addi r3, r3, 2
/* 801A6BE8  42 00 FE 60 */	bdnz lbl_801A6A48
lbl_801A6BEC:
/* 801A6BEC  3A F7 00 01 */	addi r23, r23, 1
/* 801A6BF0  2C 17 00 06 */	cmpwi r23, 6
/* 801A6BF4  3A D6 00 28 */	addi r22, r22, 0x28
/* 801A6BF8  41 80 FE 24 */	blt lbl_801A6A1C
/* 801A6BFC  4B FF F4 E5 */	bl dKy_GlobalLight_set__Fv
lbl_801A6C00:
/* 801A6C00  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 801A6C04  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801A6C08  39 61 00 70 */	addi r11, r1, 0x70
/* 801A6C0C  48 1B B5 ED */	bl _restgpr_17
/* 801A6C10  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801A6C14  7C 08 03 A6 */	mtlr r0
/* 801A6C18  38 21 00 80 */	addi r1, r1, 0x80
/* 801A6C1C  4E 80 00 20 */	blr 
