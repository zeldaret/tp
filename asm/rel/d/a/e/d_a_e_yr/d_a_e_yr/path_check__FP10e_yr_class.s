lbl_80822AFC:
/* 80822AFC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80822B00  7C 08 02 A6 */	mflr r0
/* 80822B04  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80822B08  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80822B0C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80822B10  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80822B14  4B B3 F6 C0 */	b _savegpr_27
/* 80822B18  7C 7E 1B 78 */	mr r30, r3
/* 80822B1C  3C 60 80 83 */	lis r3, lit_3902@ha
/* 80822B20  3B E3 88 50 */	addi r31, r3, lit_3902@l
/* 80822B24  80 1E 06 EC */	lwz r0, 0x6ec(r30)
/* 80822B28  28 00 00 00 */	cmplwi r0, 0
/* 80822B2C  41 82 02 00 */	beq lbl_80822D2C
/* 80822B30  38 61 00 20 */	addi r3, r1, 0x20
/* 80822B34  4B 85 51 34 */	b __ct__11dBgS_LinChkFv
/* 80822B38  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80822B3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80822B40  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80822B44  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80822B48  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80822B4C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80822B50  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80822B54  EC 01 F8 2A */	fadds f0, f1, f31
/* 80822B58  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80822B5C  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 80822B60  83 83 00 08 */	lwz r28, 8(r3)
/* 80822B64  3B 60 00 00 */	li r27, 0
/* 80822B68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80822B6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80822B70  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80822B74  48 00 00 74 */	b lbl_80822BE8
lbl_80822B78:
/* 80822B78  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80822B7C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80822B80  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80822B84  EC 1F 00 2A */	fadds f0, f31, f0
/* 80822B88  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80822B8C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80822B90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80822B94  38 61 00 20 */	addi r3, r1, 0x20
/* 80822B98  38 81 00 14 */	addi r4, r1, 0x14
/* 80822B9C  38 A1 00 08 */	addi r5, r1, 8
/* 80822BA0  7F C6 F3 78 */	mr r6, r30
/* 80822BA4  4B 85 51 C0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80822BA8  7F A3 EB 78 */	mr r3, r29
/* 80822BAC  38 81 00 20 */	addi r4, r1, 0x20
/* 80822BB0  4B 85 18 04 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80822BB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80822BB8  40 82 00 18 */	bne lbl_80822BD0
/* 80822BBC  38 00 00 01 */	li r0, 1
/* 80822BC0  3C 60 80 83 */	lis r3, check_index@ha
/* 80822BC4  38 63 8E 34 */	addi r3, r3, check_index@l
/* 80822BC8  7C 03 D9 AE */	stbx r0, r3, r27
/* 80822BCC  48 00 00 14 */	b lbl_80822BE0
lbl_80822BD0:
/* 80822BD0  38 00 00 00 */	li r0, 0
/* 80822BD4  3C 60 80 83 */	lis r3, check_index@ha
/* 80822BD8  38 63 8E 34 */	addi r3, r3, check_index@l
/* 80822BDC  7C 03 D9 AE */	stbx r0, r3, r27
lbl_80822BE0:
/* 80822BE0  3B 7B 00 01 */	addi r27, r27, 1
/* 80822BE4  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_80822BE8:
/* 80822BE8  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 80822BEC  A0 03 00 00 */	lhz r0, 0(r3)
/* 80822BF0  7C 1B 00 00 */	cmpw r27, r0
/* 80822BF4  41 80 FF 84 */	blt lbl_80822B78
/* 80822BF8  C0 DF 00 04 */	lfs f6, 4(r31)
/* 80822BFC  38 C0 00 00 */	li r6, 0
/* 80822C00  38 E0 00 00 */	li r7, 0
/* 80822C04  3C 60 80 83 */	lis r3, check_index@ha
/* 80822C08  38 A3 8E 34 */	addi r5, r3, check_index@l
/* 80822C0C  C0 1F 00 48 */	lfs f0, 0x48(r31)
lbl_80822C10:
/* 80822C10  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 80822C14  80 83 00 08 */	lwz r4, 8(r3)
/* 80822C18  39 00 00 00 */	li r8, 0
/* 80822C1C  A0 03 00 00 */	lhz r0, 0(r3)
/* 80822C20  7C A3 2B 78 */	mr r3, r5
/* 80822C24  7C 09 03 A6 */	mtctr r0
/* 80822C28  2C 00 00 00 */	cmpwi r0, 0
/* 80822C2C  40 81 00 BC */	ble lbl_80822CE8
lbl_80822C30:
/* 80822C30  88 03 00 00 */	lbz r0, 0(r3)
/* 80822C34  28 00 00 00 */	cmplwi r0, 0
/* 80822C38  41 82 00 A0 */	beq lbl_80822CD8
/* 80822C3C  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 80822C40  C0 24 00 04 */	lfs f1, 4(r4)
/* 80822C44  EC 82 08 28 */	fsubs f4, f2, f1
/* 80822C48  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 80822C4C  C0 24 00 08 */	lfs f1, 8(r4)
/* 80822C50  EC A2 08 28 */	fsubs f5, f2, f1
/* 80822C54  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80822C58  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 80822C5C  EC 22 08 28 */	fsubs f1, f2, f1
/* 80822C60  EC 61 00 72 */	fmuls f3, f1, f1
/* 80822C64  EC 44 01 32 */	fmuls f2, f4, f4
/* 80822C68  EC 25 01 72 */	fmuls f1, f5, f5
/* 80822C6C  EC 22 08 2A */	fadds f1, f2, f1
/* 80822C70  EC 43 08 2A */	fadds f2, f3, f1
/* 80822C74  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80822C78  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80822C7C  40 81 00 0C */	ble lbl_80822C88
/* 80822C80  FC 20 10 34 */	frsqrte f1, f2
/* 80822C84  EC 41 00 B2 */	fmuls f2, f1, f2
lbl_80822C88:
/* 80822C88  FC 02 30 40 */	fcmpo cr0, f2, f6
/* 80822C8C  40 80 00 4C */	bge lbl_80822CD8
/* 80822C90  88 1E 06 EB */	lbz r0, 0x6eb(r30)
/* 80822C94  7C 00 40 50 */	subf r0, r0, r8
/* 80822C98  98 1E 06 EA */	stb r0, 0x6ea(r30)
/* 80822C9C  88 DE 06 EA */	lbz r6, 0x6ea(r30)
/* 80822CA0  7C C4 07 74 */	extsb r4, r6
/* 80822CA4  80 7E 06 EC */	lwz r3, 0x6ec(r30)
/* 80822CA8  A0 63 00 00 */	lhz r3, 0(r3)
/* 80822CAC  7C 60 07 74 */	extsb r0, r3
/* 80822CB0  7C 04 00 00 */	cmpw r4, r0
/* 80822CB4  41 80 00 0C */	blt lbl_80822CC0
/* 80822CB8  98 7E 06 EA */	stb r3, 0x6ea(r30)
/* 80822CBC  48 00 00 14 */	b lbl_80822CD0
lbl_80822CC0:
/* 80822CC0  7C C0 07 75 */	extsb. r0, r6
/* 80822CC4  40 80 00 0C */	bge lbl_80822CD0
/* 80822CC8  38 00 00 00 */	li r0, 0
/* 80822CCC  98 1E 06 EA */	stb r0, 0x6ea(r30)
lbl_80822CD0:
/* 80822CD0  38 C0 00 01 */	li r6, 1
/* 80822CD4  48 00 00 14 */	b lbl_80822CE8
lbl_80822CD8:
/* 80822CD8  39 08 00 01 */	addi r8, r8, 1
/* 80822CDC  38 63 00 01 */	addi r3, r3, 1
/* 80822CE0  38 84 00 10 */	addi r4, r4, 0x10
/* 80822CE4  42 00 FF 4C */	bdnz lbl_80822C30
lbl_80822CE8:
/* 80822CE8  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80822CEC  40 82 00 14 */	bne lbl_80822D00
/* 80822CF0  EC C6 00 2A */	fadds f6, f6, f0
/* 80822CF4  38 E7 00 01 */	addi r7, r7, 1
/* 80822CF8  2C 07 00 64 */	cmpwi r7, 0x64
/* 80822CFC  41 80 FF 14 */	blt lbl_80822C10
lbl_80822D00:
/* 80822D00  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80822D04  40 82 00 10 */	bne lbl_80822D14
/* 80822D08  38 00 00 00 */	li r0, 0
/* 80822D0C  98 1E 06 E9 */	stb r0, 0x6e9(r30)
/* 80822D10  48 00 00 10 */	b lbl_80822D20
lbl_80822D14:
/* 80822D14  88 7E 06 66 */	lbz r3, 0x666(r30)
/* 80822D18  38 03 00 01 */	addi r0, r3, 1
/* 80822D1C  98 1E 06 E9 */	stb r0, 0x6e9(r30)
lbl_80822D20:
/* 80822D20  38 61 00 20 */	addi r3, r1, 0x20
/* 80822D24  38 80 FF FF */	li r4, -1
/* 80822D28  4B 85 4F B4 */	b __dt__11dBgS_LinChkFv
lbl_80822D2C:
/* 80822D2C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80822D30  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80822D34  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80822D38  4B B3 F4 E8 */	b _restgpr_27
/* 80822D3C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80822D40  7C 08 03 A6 */	mtlr r0
/* 80822D44  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80822D48  4E 80 00 20 */	blr 
