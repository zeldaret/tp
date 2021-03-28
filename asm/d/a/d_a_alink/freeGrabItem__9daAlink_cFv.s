lbl_800E4BD4:
/* 800E4BD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 800E4BD8  7C 08 02 A6 */	mflr r0
/* 800E4BDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 800E4BE0  39 61 00 50 */	addi r11, r1, 0x50
/* 800E4BE4  48 27 D5 F9 */	bl _savegpr_29
/* 800E4BE8  7C 7F 1B 78 */	mr r31, r3
/* 800E4BEC  83 C3 28 30 */	lwz r30, 0x2830(r3)
/* 800E4BF0  28 1E 00 00 */	cmplwi r30, 0
/* 800E4BF4  41 82 01 44 */	beq lbl_800E4D38
/* 800E4BF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E4BFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E4C00  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 800E4C04  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 800E4C08  28 00 00 00 */	cmplwi r0, 0
/* 800E4C0C  40 82 00 10 */	bne lbl_800E4C1C
/* 800E4C10  A0 1F 06 04 */	lhz r0, 0x604(r31)
/* 800E4C14  2C 00 00 05 */	cmpwi r0, 5
/* 800E4C18  40 82 00 10 */	bne lbl_800E4C28
lbl_800E4C1C:
/* 800E4C1C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 800E4C20  60 00 08 00 */	ori r0, r0, 0x800
/* 800E4C24  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_800E4C28:
/* 800E4C28  7F C3 F3 78 */	mr r3, r30
/* 800E4C2C  4B F3 7F 75 */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 800E4C30  38 00 00 00 */	li r0, 0
/* 800E4C34  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 800E4C38  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 800E4C3C  7F E3 FB 78 */	mr r3, r31
/* 800E4C40  4B FF F0 B5 */	bl checkGrabCarryActor__9daAlink_cFv
/* 800E4C44  2C 03 00 00 */	cmpwi r3, 0
/* 800E4C48  41 82 00 10 */	beq lbl_800E4C58
/* 800E4C4C  38 00 00 00 */	li r0, 0
/* 800E4C50  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 800E4C54  B0 1E 04 DC */	sth r0, 0x4dc(r30)
lbl_800E4C58:
/* 800E4C58  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E4C5C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800E4C60  41 82 00 38 */	beq lbl_800E4C98
/* 800E4C64  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800E4C68  28 03 00 00 */	cmplwi r3, 0
/* 800E4C6C  41 82 00 CC */	beq lbl_800E4D38
/* 800E4C70  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 800E4C74  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E4C78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E4C7C  40 81 00 10 */	ble lbl_800E4C8C
/* 800E4C80  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 800E4C84  EC 00 08 2A */	fadds f0, f0, f1
/* 800E4C88  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_800E4C8C:
/* 800E4C8C  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 800E4C90  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800E4C94  48 00 00 A4 */	b lbl_800E4D38
lbl_800E4C98:
/* 800E4C98  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800E4C9C  C0 3F 34 E4 */	lfs f1, 0x34e4(r31)
/* 800E4CA0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800E4CA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800E4CA8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800E4CAC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800E4CB0  7F E3 FB 78 */	mr r3, r31
/* 800E4CB4  38 81 00 14 */	addi r4, r1, 0x14
/* 800E4CB8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 800E4CBC  48 00 0E B1 */	bl grabLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800E4CC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E4CC4  41 82 00 74 */	beq lbl_800E4D38
/* 800E4CC8  C0 1F 1E 8C */	lfs f0, 0x1e8c(r31)
/* 800E4CCC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800E4CD0  C0 1F 1E 90 */	lfs f0, 0x1e90(r31)
/* 800E4CD4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 800E4CD8  C0 1F 1E 94 */	lfs f0, 0x1e94(r31)
/* 800E4CDC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 800E4CE0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800E4CE4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800E4CE8  90 01 00 30 */	stw r0, 0x30(r1)
/* 800E4CEC  7F A3 EB 78 */	mr r3, r29
/* 800E4CF0  38 9F 1E 70 */	addi r4, r31, 0x1e70
/* 800E4CF4  38 A1 00 20 */	addi r5, r1, 0x20
/* 800E4CF8  4B F8 FA 4D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800E4CFC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 800E4D00  48 18 35 11 */	bl cBgW_CheckBWall__Ff
/* 800E4D04  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E4D08  41 82 00 24 */	beq lbl_800E4D2C
/* 800E4D0C  38 61 00 08 */	addi r3, r1, 8
/* 800E4D10  38 81 00 20 */	addi r4, r1, 0x20
/* 800E4D14  C0 22 93 30 */	lfs f1, lit_7625(r2)
/* 800E4D18  48 18 1E 6D */	bl __ml__4cXyzCFf
/* 800E4D1C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 800E4D20  38 81 00 08 */	addi r4, r1, 8
/* 800E4D24  7C 65 1B 78 */	mr r5, r3
/* 800E4D28  48 26 23 69 */	bl PSVECAdd
lbl_800E4D2C:
/* 800E4D2C  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha
/* 800E4D30  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 800E4D34  90 01 00 30 */	stw r0, 0x30(r1)
lbl_800E4D38:
/* 800E4D38  38 7F 28 2C */	addi r3, r31, 0x282c
/* 800E4D3C  48 07 9F C1 */	bl clearData__16daPy_actorKeep_cFv
/* 800E4D40  7F E3 FB 78 */	mr r3, r31
/* 800E4D44  4B FF EF 29 */	bl checkGrabAnime__9daAlink_cCFv
/* 800E4D48  2C 03 00 00 */	cmpwi r3, 0
/* 800E4D4C  40 82 00 2C */	bne lbl_800E4D78
/* 800E4D50  38 60 00 00 */	li r3, 0
/* 800E4D54  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E4D58  28 00 02 DA */	cmplwi r0, 0x2da
/* 800E4D5C  41 82 00 10 */	beq lbl_800E4D6C
/* 800E4D60  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800E4D64  28 00 02 DB */	cmplwi r0, 0x2db
/* 800E4D68  40 82 00 08 */	bne lbl_800E4D70
lbl_800E4D6C:
/* 800E4D6C  38 60 00 01 */	li r3, 1
lbl_800E4D70:
/* 800E4D70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E4D74  41 82 00 14 */	beq lbl_800E4D88
lbl_800E4D78:
/* 800E4D78  7F E3 FB 78 */	mr r3, r31
/* 800E4D7C  38 80 00 02 */	li r4, 2
/* 800E4D80  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800E4D84  4B FC 89 A1 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800E4D88:
/* 800E4D88  38 60 00 00 */	li r3, 0
/* 800E4D8C  38 8D 8B E0 */	la r4, Zero__5csXyz(r13) /* 80451160-_SDA_BASE_ */
/* 800E4D90  38 00 00 02 */	li r0, 2
/* 800E4D94  7C 09 03 A6 */	mtctr r0
lbl_800E4D98:
/* 800E4D98  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 800E4D9C  7C BF 1A 14 */	add r5, r31, r3
/* 800E4DA0  B0 05 31 2A */	sth r0, 0x312a(r5)
/* 800E4DA4  A8 04 00 02 */	lha r0, 2(r4)
/* 800E4DA8  B0 05 31 2C */	sth r0, 0x312c(r5)
/* 800E4DAC  A8 04 00 04 */	lha r0, 4(r4)
/* 800E4DB0  B0 05 31 2E */	sth r0, 0x312e(r5)
/* 800E4DB4  A8 0D 8B E0 */	lha r0, Zero__5csXyz(r13)
/* 800E4DB8  B0 05 31 36 */	sth r0, 0x3136(r5)
/* 800E4DBC  A8 04 00 02 */	lha r0, 2(r4)
/* 800E4DC0  B0 05 31 38 */	sth r0, 0x3138(r5)
/* 800E4DC4  A8 04 00 04 */	lha r0, 4(r4)
/* 800E4DC8  B0 05 31 3A */	sth r0, 0x313a(r5)
/* 800E4DCC  38 63 00 06 */	addi r3, r3, 6
/* 800E4DD0  42 00 FF C8 */	bdnz lbl_800E4D98
/* 800E4DD4  39 61 00 50 */	addi r11, r1, 0x50
/* 800E4DD8  48 27 D4 51 */	bl _restgpr_29
/* 800E4DDC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 800E4DE0  7C 08 03 A6 */	mtlr r0
/* 800E4DE4  38 21 00 50 */	addi r1, r1, 0x50
/* 800E4DE8  4E 80 00 20 */	blr 
