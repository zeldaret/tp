lbl_80472B54:
/* 80472B54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80472B58  7C 08 02 A6 */	mflr r0
/* 80472B5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80472B60  39 61 00 40 */	addi r11, r1, 0x40
/* 80472B64  4B EE F6 75 */	bl _savegpr_28
/* 80472B68  7C 7D 1B 78 */	mr r29, r3
/* 80472B6C  3C 60 80 48 */	lis r3, l_cyl_info@ha /* 0x8047990C@ha */
/* 80472B70  3B E3 99 0C */	addi r31, r3, l_cyl_info@l /* 0x8047990C@l */
/* 80472B74  88 1D 0D 14 */	lbz r0, 0xd14(r29)
/* 80472B78  28 00 00 00 */	cmplwi r0, 0
/* 80472B7C  41 82 00 50 */	beq lbl_80472BCC
/* 80472B80  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80472B84  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 80472B88  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 80472B8C  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80472B90  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80472B94  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 80472B98  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80472B9C  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 80472BA0  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 80472BA4  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80472BA8  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80472BAC  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 80472BB0  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80472BB4  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 80472BB8  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 80472BBC  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80472BC0  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 80472BC4  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 80472BC8  48 00 01 AC */	b lbl_80472D74
lbl_80472BCC:
/* 80472BCC  3B C0 00 00 */	li r30, 0
/* 80472BD0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80472BD4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80472BD8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80472BDC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80472BE0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80472BE4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80472BE8  88 1D 0C F1 */	lbz r0, 0xcf1(r29)
/* 80472BEC  28 00 00 02 */	cmplwi r0, 2
/* 80472BF0  41 82 00 10 */	beq lbl_80472C00
/* 80472BF4  88 1D 0D B0 */	lbz r0, 0xdb0(r29)
/* 80472BF8  28 00 00 01 */	cmplwi r0, 1
/* 80472BFC  40 82 00 08 */	bne lbl_80472C04
lbl_80472C00:
/* 80472C00  3B C0 00 01 */	li r30, 1
lbl_80472C04:
/* 80472C04  38 7D 05 74 */	addi r3, r29, 0x574
/* 80472C08  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80472C0C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80472C10  3B 84 0F 38 */	addi r28, r4, 0xf38
/* 80472C14  7F 84 E3 78 */	mr r4, r28
/* 80472C18  4B C0 3E 95 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80472C1C  88 1D 0E 25 */	lbz r0, 0xe25(r29)
/* 80472C20  28 00 00 00 */	cmplwi r0, 0
/* 80472C24  41 82 00 70 */	beq lbl_80472C94
/* 80472C28  C0 9D 04 D8 */	lfs f4, 0x4d8(r29)
/* 80472C2C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80472C30  C0 3F 0B 14 */	lfs f1, 0xb14(r31)
/* 80472C34  EC 62 08 28 */	fsubs f3, f2, f1
/* 80472C38  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80472C3C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80472C40  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 80472C44  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80472C48  38 7D 06 F4 */	addi r3, r29, 0x6f4
/* 80472C4C  38 81 00 14 */	addi r4, r1, 0x14
/* 80472C50  EC 21 10 2A */	fadds f1, f1, f2
/* 80472C54  4B C0 5F 3D */	bl Set__14dBgS_SplGrpChkFR4cXyzf
/* 80472C58  7F 83 E3 78 */	mr r3, r28
/* 80472C5C  38 9D 06 F4 */	addi r4, r29, 0x6f4
/* 80472C60  4B C0 29 05 */	bl SplGrpChk__4dBgSFP14dBgS_SplGrpChk
/* 80472C64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80472C68  41 82 00 2C */	beq lbl_80472C94
/* 80472C6C  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80472C70  60 00 08 00 */	ori r0, r0, 0x800
/* 80472C74  90 1D 05 A0 */	stw r0, 0x5a0(r29)
/* 80472C78  C0 3D 07 40 */	lfs f1, 0x740(r29)
/* 80472C7C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80472C80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80472C84  40 81 00 10 */	ble lbl_80472C94
/* 80472C88  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80472C8C  60 00 10 00 */	ori r0, r0, 0x1000
/* 80472C90  90 1D 05 A0 */	stw r0, 0x5a0(r29)
lbl_80472C94:
/* 80472C94  38 61 00 08 */	addi r3, r1, 8
/* 80472C98  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80472C9C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80472CA0  4B DF 3E 95 */	bl __mi__4cXyzCFRC3Vec
/* 80472CA4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80472CA8  D0 1D 0D 08 */	stfs f0, 0xd08(r29)
/* 80472CAC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80472CB0  D0 1D 0D 0C */	stfs f0, 0xd0c(r29)
/* 80472CB4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80472CB8  D0 1D 0D 10 */	stfs f0, 0xd10(r29)
/* 80472CBC  7F 83 E3 78 */	mr r3, r28
/* 80472CC0  38 9D 06 64 */	addi r4, r29, 0x664
/* 80472CC4  4B C0 1E 7D */	bl ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo
/* 80472CC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80472CCC  41 82 00 1C */	beq lbl_80472CE8
/* 80472CD0  88 1D 0D B2 */	lbz r0, 0xdb2(r29)
/* 80472CD4  28 00 00 00 */	cmplwi r0, 0
/* 80472CD8  41 82 00 10 */	beq lbl_80472CE8
/* 80472CDC  3B C0 00 00 */	li r30, 0
/* 80472CE0  38 00 00 00 */	li r0, 0
/* 80472CE4  98 1D 0D B2 */	stb r0, 0xdb2(r29)
lbl_80472CE8:
/* 80472CE8  88 1D 0C F0 */	lbz r0, 0xcf0(r29)
/* 80472CEC  28 00 00 03 */	cmplwi r0, 3
/* 80472CF0  40 82 00 44 */	bne lbl_80472D34
/* 80472CF4  80 1D 05 A0 */	lwz r0, 0x5a0(r29)
/* 80472CF8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80472CFC  41 82 00 28 */	beq lbl_80472D24
/* 80472D00  7F 83 E3 78 */	mr r3, r28
/* 80472D04  38 9D 06 64 */	addi r4, r29, 0x664
/* 80472D08  4B C0 21 49 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 80472D0C  2C 03 00 0D */	cmpwi r3, 0xd
/* 80472D10  41 82 00 08 */	beq lbl_80472D18
/* 80472D14  48 00 00 20 */	b lbl_80472D34
lbl_80472D18:
/* 80472D18  C0 1F 0B 18 */	lfs f0, 0xb18(r31)
/* 80472D1C  D0 1D 0D DC */	stfs f0, 0xddc(r29)
/* 80472D20  48 00 00 14 */	b lbl_80472D34
lbl_80472D24:
/* 80472D24  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80472D28  C0 3F 0A 48 */	lfs f1, 0xa48(r31)
/* 80472D2C  C0 5F 0A C0 */	lfs f2, 0xac0(r31)
/* 80472D30  4B DF DA 11 */	bl cLib_chaseF__FPfff
lbl_80472D34:
/* 80472D34  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80472D38  41 82 00 3C */	beq lbl_80472D74
/* 80472D3C  88 1D 0D B0 */	lbz r0, 0xdb0(r29)
/* 80472D40  28 00 00 00 */	cmplwi r0, 0
/* 80472D44  41 82 00 18 */	beq lbl_80472D5C
/* 80472D48  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80472D4C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80472D50  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80472D54  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80472D58  48 00 00 1C */	b lbl_80472D74
lbl_80472D5C:
/* 80472D5C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80472D60  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80472D64  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80472D68  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80472D6C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80472D70  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_80472D74:
/* 80472D74  39 61 00 40 */	addi r11, r1, 0x40
/* 80472D78  4B EE F4 AD */	bl _restgpr_28
/* 80472D7C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80472D80  7C 08 03 A6 */	mtlr r0
/* 80472D84  38 21 00 40 */	addi r1, r1, 0x40
/* 80472D88  4E 80 00 20 */	blr 
