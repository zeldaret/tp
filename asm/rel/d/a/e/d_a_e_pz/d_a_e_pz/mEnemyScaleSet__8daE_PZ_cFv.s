lbl_80758BA0:
/* 80758BA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80758BA4  7C 08 02 A6 */	mflr r0
/* 80758BA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80758BAC  39 61 00 30 */	addi r11, r1, 0x30
/* 80758BB0  4B C0 96 21 */	bl _savegpr_26
/* 80758BB4  7C 7B 1B 78 */	mr r27, r3
/* 80758BB8  3C 60 80 76 */	lis r3, lit_3906@ha /* 0x807614FC@ha */
/* 80758BBC  3B C3 14 FC */	addi r30, r3, lit_3906@l /* 0x807614FC@l */
/* 80758BC0  80 1B 08 4C */	lwz r0, 0x84c(r27)
/* 80758BC4  2C 00 00 07 */	cmpwi r0, 7
/* 80758BC8  40 80 00 10 */	bge lbl_80758BD8
/* 80758BCC  A8 1B 05 62 */	lha r0, 0x562(r27)
/* 80758BD0  2C 00 00 01 */	cmpwi r0, 1
/* 80758BD4  41 81 01 58 */	bgt lbl_80758D2C
lbl_80758BD8:
/* 80758BD8  88 1B 07 D8 */	lbz r0, 0x7d8(r27)
/* 80758BDC  28 00 00 02 */	cmplwi r0, 2
/* 80758BE0  41 82 00 10 */	beq lbl_80758BF0
/* 80758BE4  A8 1B 05 62 */	lha r0, 0x562(r27)
/* 80758BE8  2C 00 00 01 */	cmpwi r0, 1
/* 80758BEC  41 81 01 40 */	bgt lbl_80758D2C
lbl_80758BF0:
/* 80758BF0  3B 80 00 00 */	li r28, 0
/* 80758BF4  3B 40 00 00 */	li r26, 0
/* 80758BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80758BFC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_80758C00:
/* 80758C00  3B BA 07 DC */	addi r29, r26, 0x7dc
/* 80758C04  7C 7B E8 2E */	lwzx r3, r27, r29
/* 80758C08  28 03 00 00 */	cmplwi r3, 0
/* 80758C0C  41 82 01 00 */	beq lbl_80758D0C
/* 80758C10  38 81 00 0C */	addi r4, r1, 0xc
/* 80758C14  4B 8C 0D A9 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80758C18  2C 03 00 00 */	cmpwi r3, 0
/* 80758C1C  41 82 00 F0 */	beq lbl_80758D0C
/* 80758C20  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80758C24  28 03 00 00 */	cmplwi r3, 0
/* 80758C28  41 82 00 E4 */	beq lbl_80758D0C
/* 80758C2C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80758C30  60 00 40 00 */	ori r0, r0, 0x4000
/* 80758C34  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80758C38  88 1B 07 D8 */	lbz r0, 0x7d8(r27)
/* 80758C3C  28 00 00 02 */	cmplwi r0, 2
/* 80758C40  40 82 00 54 */	bne lbl_80758C94
/* 80758C44  88 1B 08 43 */	lbz r0, 0x843(r27)
/* 80758C48  28 00 00 00 */	cmplwi r0, 0
/* 80758C4C  40 82 00 48 */	bne lbl_80758C94
/* 80758C50  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703F9@ha */
/* 80758C54  38 03 03 F9 */	addi r0, r3, 0x03F9 /* 0x000703F9@l */
/* 80758C58  90 01 00 08 */	stw r0, 8(r1)
/* 80758C5C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80758C60  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80758C64  80 63 00 00 */	lwz r3, 0(r3)
/* 80758C68  38 81 00 08 */	addi r4, r1, 8
/* 80758C6C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80758C70  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80758C74  38 C0 00 00 */	li r6, 0
/* 80758C78  38 E0 00 00 */	li r7, 0
/* 80758C7C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80758C80  FC 40 08 90 */	fmr f2, f1
/* 80758C84  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80758C88  FC 80 18 90 */	fmr f4, f3
/* 80758C8C  39 00 00 00 */	li r8, 0
/* 80758C90  4B B5 2C F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80758C94:
/* 80758C94  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80758C98  38 63 04 EC */	addi r3, r3, 0x4ec
/* 80758C9C  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80758CA0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80758CA4  4B B1 6D DD */	bl cLib_addCalc0__FPfff
/* 80758CA8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80758CAC  38 63 04 F0 */	addi r3, r3, 0x4f0
/* 80758CB0  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80758CB4  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 80758CB8  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 80758CBC  4B B1 6D 81 */	bl cLib_addCalc2__FPffff
/* 80758CC0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80758CC4  38 63 04 F4 */	addi r3, r3, 0x4f4
/* 80758CC8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 80758CCC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80758CD0  4B B1 6D B1 */	bl cLib_addCalc0__FPfff
/* 80758CD4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80758CD8  C0 23 04 EC */	lfs f1, 0x4ec(r3)
/* 80758CDC  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80758CE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80758CE4  40 81 00 10 */	ble lbl_80758CF4
/* 80758CE8  80 1B 08 4C */	lwz r0, 0x84c(r27)
/* 80758CEC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80758CF0  41 80 00 24 */	blt lbl_80758D14
lbl_80758CF4:
/* 80758CF4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80758CF8  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80758CFC  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 80758D00  90 03 05 70 */	stw r0, 0x570(r3)
/* 80758D04  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80758D08  4B 8C 0F 75 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80758D0C:
/* 80758D0C  38 00 00 00 */	li r0, 0
/* 80758D10  7C 1B E9 2E */	stwx r0, r27, r29
lbl_80758D14:
/* 80758D14  3B 9C 00 01 */	addi r28, r28, 1
/* 80758D18  2C 1C 00 19 */	cmpwi r28, 0x19
/* 80758D1C  3B 5A 00 04 */	addi r26, r26, 4
/* 80758D20  41 80 FE E0 */	blt lbl_80758C00
/* 80758D24  38 00 00 01 */	li r0, 1
/* 80758D28  98 1B 08 43 */	stb r0, 0x843(r27)
lbl_80758D2C:
/* 80758D2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80758D30  4B C0 94 ED */	bl _restgpr_26
/* 80758D34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80758D38  7C 08 03 A6 */	mtlr r0
/* 80758D3C  38 21 00 30 */	addi r1, r1, 0x30
/* 80758D40  4E 80 00 20 */	blr 
