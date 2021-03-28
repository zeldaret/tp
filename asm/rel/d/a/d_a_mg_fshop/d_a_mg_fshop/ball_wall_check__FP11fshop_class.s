lbl_8086D854:
/* 8086D854  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8086D858  7C 08 02 A6 */	mflr r0
/* 8086D85C  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8086D860  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8086D864  4B AF 49 6C */	b _savegpr_26
/* 8086D868  80 03 40 E0 */	lwz r0, 0x40e0(r3)
/* 8086D86C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8086D870  40 82 00 0C */	bne lbl_8086D87C
/* 8086D874  38 60 00 00 */	li r3, 0
/* 8086D878  48 00 01 70 */	b lbl_8086D9E8
lbl_8086D87C:
/* 8086D87C  7C 7C 1B 78 */	mr r28, r3
/* 8086D880  38 61 00 38 */	addi r3, r1, 0x38
/* 8086D884  4B 80 A3 E4 */	b __ct__11dBgS_LinChkFv
/* 8086D888  3C 60 80 87 */	lis r3, lit_3980@ha
/* 8086D88C  C0 03 00 B0 */	lfs f0, lit_3980@l(r3)
/* 8086D890  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8086D894  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8086D898  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8086D89C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8086D8A0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8086D8A4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8086D8A8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8086D8AC  3C 60 80 87 */	lis r3, lit_3871@ha
/* 8086D8B0  C0 03 00 A0 */	lfs f0, lit_3871@l(r3)
/* 8086D8B4  EC 01 00 2A */	fadds f0, f1, f0
/* 8086D8B8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8086D8BC  3B 60 00 00 */	li r27, 0
/* 8086D8C0  3B 40 00 00 */	li r26, 0
/* 8086D8C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8086D8C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8086D8CC  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8086D8D0  3C 60 80 87 */	lis r3, c_x@ha
/* 8086D8D4  3B C3 07 A4 */	addi r30, r3, c_x@l
/* 8086D8D8  3C 60 80 87 */	lis r3, c_z@ha
/* 8086D8DC  3B E3 07 B4 */	addi r31, r3, c_z@l
lbl_8086D8E0:
/* 8086D8E0  7C 1E D4 2E */	lfsx f0, r30, r26
/* 8086D8E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8086D8E8  7C 1F D4 2E */	lfsx f0, r31, r26
/* 8086D8EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8086D8F0  38 61 00 08 */	addi r3, r1, 8
/* 8086D8F4  38 81 00 2C */	addi r4, r1, 0x2c
/* 8086D8F8  38 A1 00 14 */	addi r5, r1, 0x14
/* 8086D8FC  4B 9F 91 E8 */	b __pl__4cXyzCFRC3Vec
/* 8086D900  C0 01 00 08 */	lfs f0, 8(r1)
/* 8086D904  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8086D908  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8086D90C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8086D910  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8086D914  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8086D918  38 61 00 38 */	addi r3, r1, 0x38
/* 8086D91C  38 81 00 2C */	addi r4, r1, 0x2c
/* 8086D920  38 A1 00 20 */	addi r5, r1, 0x20
/* 8086D924  7F 86 E3 78 */	mr r6, r28
/* 8086D928  4B 80 A4 3C */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8086D92C  7F A3 EB 78 */	mr r3, r29
/* 8086D930  38 81 00 38 */	addi r4, r1, 0x38
/* 8086D934  4B 80 6A 80 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8086D938  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8086D93C  41 82 00 8C */	beq lbl_8086D9C8
/* 8086D940  2C 1B 00 00 */	cmpwi r27, 0
/* 8086D944  40 82 00 18 */	bne lbl_8086D95C
/* 8086D948  C0 3C 04 F8 */	lfs f1, 0x4f8(r28)
/* 8086D94C  3C 60 80 87 */	lis r3, lit_3980@ha
/* 8086D950  C0 03 00 B0 */	lfs f0, lit_3980@l(r3)
/* 8086D954  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086D958  41 81 00 20 */	bgt lbl_8086D978
lbl_8086D95C:
/* 8086D95C  2C 1B 00 01 */	cmpwi r27, 1
/* 8086D960  40 82 00 24 */	bne lbl_8086D984
/* 8086D964  C0 3C 04 F8 */	lfs f1, 0x4f8(r28)
/* 8086D968  3C 60 80 87 */	lis r3, lit_3980@ha
/* 8086D96C  C0 03 00 B0 */	lfs f0, lit_3980@l(r3)
/* 8086D970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086D974  40 80 00 10 */	bge lbl_8086D984
lbl_8086D978:
/* 8086D978  3C 60 80 87 */	lis r3, lit_3980@ha
/* 8086D97C  C0 03 00 B0 */	lfs f0, lit_3980@l(r3)
/* 8086D980  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
lbl_8086D984:
/* 8086D984  2C 1B 00 02 */	cmpwi r27, 2
/* 8086D988  40 82 00 18 */	bne lbl_8086D9A0
/* 8086D98C  C0 3C 05 00 */	lfs f1, 0x500(r28)
/* 8086D990  3C 60 80 87 */	lis r3, lit_3980@ha
/* 8086D994  C0 03 00 B0 */	lfs f0, lit_3980@l(r3)
/* 8086D998  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086D99C  41 81 00 20 */	bgt lbl_8086D9BC
lbl_8086D9A0:
/* 8086D9A0  2C 1B 00 03 */	cmpwi r27, 3
/* 8086D9A4  40 82 00 24 */	bne lbl_8086D9C8
/* 8086D9A8  C0 3C 05 00 */	lfs f1, 0x500(r28)
/* 8086D9AC  3C 60 80 87 */	lis r3, lit_3980@ha
/* 8086D9B0  C0 03 00 B0 */	lfs f0, lit_3980@l(r3)
/* 8086D9B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8086D9B8  40 80 00 10 */	bge lbl_8086D9C8
lbl_8086D9BC:
/* 8086D9BC  3C 60 80 87 */	lis r3, lit_3980@ha
/* 8086D9C0  C0 03 00 B0 */	lfs f0, lit_3980@l(r3)
/* 8086D9C4  D0 1C 05 00 */	stfs f0, 0x500(r28)
lbl_8086D9C8:
/* 8086D9C8  3B 7B 00 01 */	addi r27, r27, 1
/* 8086D9CC  2C 1B 00 04 */	cmpwi r27, 4
/* 8086D9D0  3B 5A 00 04 */	addi r26, r26, 4
/* 8086D9D4  41 80 FF 0C */	blt lbl_8086D8E0
/* 8086D9D8  38 61 00 38 */	addi r3, r1, 0x38
/* 8086D9DC  38 80 FF FF */	li r4, -1
/* 8086D9E0  4B 80 A2 FC */	b __dt__11dBgS_LinChkFv
/* 8086D9E4  38 60 00 00 */	li r3, 0
lbl_8086D9E8:
/* 8086D9E8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8086D9EC  4B AF 48 30 */	b _restgpr_26
/* 8086D9F0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8086D9F4  7C 08 03 A6 */	mtlr r0
/* 8086D9F8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8086D9FC  4E 80 00 20 */	blr 
