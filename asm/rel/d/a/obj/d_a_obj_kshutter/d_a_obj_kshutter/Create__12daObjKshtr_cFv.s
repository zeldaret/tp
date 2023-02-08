lbl_80C47C14:
/* 80C47C14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C47C18  7C 08 02 A6 */	mflr r0
/* 80C47C1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C47C20  39 61 00 30 */	addi r11, r1, 0x30
/* 80C47C24  4B 71 A5 B1 */	bl _savegpr_27
/* 80C47C28  7C 7E 1B 78 */	mr r30, r3
/* 80C47C2C  3C 60 80 C5 */	lis r3, l_bmd@ha /* 0x80C49CA8@ha */
/* 80C47C30  3B E3 9C A8 */	addi r31, r3, l_bmd@l /* 0x80C49CA8@l */
/* 80C47C34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C47C38  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C47C3C  88 9E 05 EB */	lbz r4, 0x5eb(r30)
/* 80C47C40  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C47C44  7C 05 07 74 */	extsb r5, r0
/* 80C47C48  4B 3E D7 19 */	bl isSwitch__10dSv_info_cCFii
/* 80C47C4C  2C 03 00 00 */	cmpwi r3, 0
/* 80C47C50  40 82 00 70 */	bne lbl_80C47CC0
/* 80C47C54  38 60 00 00 */	li r3, 0
/* 80C47C58  98 7E 05 EC */	stb r3, 0x5ec(r30)
/* 80C47C5C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C47C60  D0 1E 05 FC */	stfs f0, 0x5fc(r30)
/* 80C47C64  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 80C47C68  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80C47C6C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C47C70  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80C47C74  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 80C47C78  EC 00 08 2A */	fadds f0, f0, f1
/* 80C47C7C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C47C80  38 00 00 20 */	li r0, 0x20
/* 80C47C84  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80C47C88  88 1E 05 ED */	lbz r0, 0x5ed(r30)
/* 80C47C8C  28 00 00 00 */	cmplwi r0, 0
/* 80C47C90  41 82 00 0C */	beq lbl_80C47C9C
/* 80C47C94  98 7E 05 E8 */	stb r3, 0x5e8(r30)
/* 80C47C98  48 00 00 08 */	b lbl_80C47CA0
lbl_80C47C9C:
/* 80C47C9C  98 7E 05 E8 */	stb r3, 0x5e8(r30)
lbl_80C47CA0:
/* 80C47CA0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C47CA4  28 03 00 00 */	cmplwi r3, 0
/* 80C47CA8  41 82 00 88 */	beq lbl_80C47D30
/* 80C47CAC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C47CB0  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C47CB4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C47CB8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80C47CBC  48 00 00 74 */	b lbl_80C47D30
lbl_80C47CC0:
/* 80C47CC0  38 00 00 01 */	li r0, 1
/* 80C47CC4  98 1E 05 EC */	stb r0, 0x5ec(r30)
/* 80C47CC8  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C47CCC  2C 00 00 03 */	cmpwi r0, 3
/* 80C47CD0  41 82 00 30 */	beq lbl_80C47D00
/* 80C47CD4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 80C47CD8  A8 03 00 08 */	lha r0, 8(r3)
/* 80C47CDC  C8 3F 00 60 */	lfd f1, 0x60(r31)
/* 80C47CE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C47CE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C47CE8  3C 00 43 30 */	lis r0, 0x4330
/* 80C47CEC  90 01 00 08 */	stw r0, 8(r1)
/* 80C47CF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C47CF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C47CF8  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80C47CFC  48 00 00 0C */	b lbl_80C47D08
lbl_80C47D00:
/* 80C47D00  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80C47D04  D0 1E 05 FC */	stfs f0, 0x5fc(r30)
lbl_80C47D08:
/* 80C47D08  7F C3 F3 78 */	mr r3, r30
/* 80C47D0C  48 00 01 49 */	bl offDzb__12daObjKshtr_cFv
/* 80C47D10  88 1E 05 ED */	lbz r0, 0x5ed(r30)
/* 80C47D14  28 00 00 00 */	cmplwi r0, 0
/* 80C47D18  41 82 00 10 */	beq lbl_80C47D28
/* 80C47D1C  38 00 00 02 */	li r0, 2
/* 80C47D20  98 1E 05 E8 */	stb r0, 0x5e8(r30)
/* 80C47D24  48 00 00 0C */	b lbl_80C47D30
lbl_80C47D28:
/* 80C47D28  38 00 00 02 */	li r0, 2
/* 80C47D2C  98 1E 05 E8 */	stb r0, 0x5e8(r30)
lbl_80C47D30:
/* 80C47D30  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C47D34  28 00 00 04 */	cmplwi r0, 4
/* 80C47D38  40 82 00 10 */	bne lbl_80C47D48
/* 80C47D3C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80C47D40  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 80C47D44  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80C47D48:
/* 80C47D48  7F C3 F3 78 */	mr r3, r30
/* 80C47D4C  4B FF FD 6D */	bl initBaseMtx__12daObjKshtr_cFv
/* 80C47D50  38 1E 05 B8 */	addi r0, r30, 0x5b8
/* 80C47D54  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C47D58  7F C3 F3 78 */	mr r3, r30
/* 80C47D5C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80C47D60  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80C47D64  C0 44 00 04 */	lfs f2, 4(r4)
/* 80C47D68  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C47D6C  C0 84 00 0C */	lfs f4, 0xc(r4)
/* 80C47D70  C0 A4 00 10 */	lfs f5, 0x10(r4)
/* 80C47D74  C0 C4 00 14 */	lfs f6, 0x14(r4)
/* 80C47D78  4B 3D 27 D1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C47D7C  80 7E 00 B0 */	lwz r3, 0xb0(r30)
/* 80C47D80  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80C47D84  28 00 00 01 */	cmplwi r0, 1
/* 80C47D88  40 82 00 84 */	bne lbl_80C47E0C
/* 80C47D8C  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C47D90  54 00 10 3A */	slwi r0, r0, 2
/* 80C47D94  3C 60 80 C5 */	lis r3, l_arcName@ha /* 0x80C49E80@ha */
/* 80C47D98  38 63 9E 80 */	addi r3, r3, l_arcName@l /* 0x80C49E80@l */
/* 80C47D9C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C47DA0  90 1E 01 00 */	stw r0, 0x100(r30)
/* 80C47DA4  3B 60 00 00 */	li r27, 0
/* 80C47DA8  3B E0 00 00 */	li r31, 0
/* 80C47DAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C47DB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C47DB4  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80C47DB8  3C 60 80 C5 */	lis r3, l_eventName@ha /* 0x80C49EBC@ha */
/* 80C47DBC  3B A3 9E BC */	addi r29, r3, l_eventName@l /* 0x80C49EBC@l */
lbl_80C47DC0:
/* 80C47DC0  7F 83 E3 78 */	mr r3, r28
/* 80C47DC4  7F C4 F3 78 */	mr r4, r30
/* 80C47DC8  88 1E 05 EA */	lbz r0, 0x5ea(r30)
/* 80C47DCC  54 00 08 3C */	slwi r0, r0, 1
/* 80C47DD0  7C 1B 02 14 */	add r0, r27, r0
/* 80C47DD4  54 00 10 3A */	slwi r0, r0, 2
/* 80C47DD8  7C BD 00 2E */	lwzx r5, r29, r0
/* 80C47DDC  38 C0 00 FF */	li r6, 0xff
/* 80C47DE0  4B 3F F9 79 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80C47DE4  38 1F 05 F0 */	addi r0, r31, 0x5f0
/* 80C47DE8  7C 7E 03 2E */	sthx r3, r30, r0
/* 80C47DEC  3B 7B 00 01 */	addi r27, r27, 1
/* 80C47DF0  2C 1B 00 02 */	cmpwi r27, 2
/* 80C47DF4  3B FF 00 02 */	addi r31, r31, 2
/* 80C47DF8  41 80 FF C8 */	blt lbl_80C47DC0
/* 80C47DFC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C47E00  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80C47E04  98 1E 05 EE */	stb r0, 0x5ee(r30)
/* 80C47E08  48 00 00 30 */	b lbl_80C47E38
lbl_80C47E0C:
/* 80C47E0C  54 60 86 3E */	rlwinm r0, r3, 0x10, 0x18, 0x1f
/* 80C47E10  98 1E 05 EE */	stb r0, 0x5ee(r30)
/* 80C47E14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C47E18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C47E1C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80C47E20  7F C4 F3 78 */	mr r4, r30
/* 80C47E24  88 BE 05 EE */	lbz r5, 0x5ee(r30)
/* 80C47E28  4B 3F F8 71 */	bl getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 80C47E2C  B0 7E 05 F0 */	sth r3, 0x5f0(r30)
/* 80C47E30  38 00 FF FF */	li r0, -1
/* 80C47E34  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
lbl_80C47E38:
/* 80C47E38  38 60 00 01 */	li r3, 1
/* 80C47E3C  39 61 00 30 */	addi r11, r1, 0x30
/* 80C47E40  4B 71 A3 E1 */	bl _restgpr_27
/* 80C47E44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C47E48  7C 08 03 A6 */	mtlr r0
/* 80C47E4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80C47E50  4E 80 00 20 */	blr 
