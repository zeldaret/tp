lbl_800C6A48:
/* 800C6A48  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800C6A4C  7C 08 02 A6 */	mflr r0
/* 800C6A50  90 01 00 44 */	stw r0, 0x44(r1)
/* 800C6A54  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800C6A58  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800C6A5C  39 61 00 30 */	addi r11, r1, 0x30
/* 800C6A60  48 29 B7 75 */	bl _savegpr_27
/* 800C6A64  7C 7C 1B 78 */	mr r28, r3
/* 800C6A68  7C 9D 23 78 */	mr r29, r4
/* 800C6A6C  FF E0 08 90 */	fmr f31, f1
/* 800C6A70  80 03 06 14 */	lwz r0, 0x614(r3)
/* 800C6A74  28 00 00 11 */	cmplwi r0, 0x11
/* 800C6A78  40 82 00 1C */	bne lbl_800C6A94
/* 800C6A7C  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 800C6A80  60 00 00 02 */	ori r0, r0, 2
/* 800C6A84  90 1C 19 9C */	stw r0, 0x199c(r28)
/* 800C6A88  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 800C6A8C  60 00 40 00 */	ori r0, r0, 0x4000
/* 800C6A90  90 1C 19 9C */	stw r0, 0x199c(r28)
lbl_800C6A94:
/* 800C6A94  38 80 00 00 */	li r4, 0
/* 800C6A98  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800C6A9C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800C6AA0  41 82 00 1C */	beq lbl_800C6ABC
/* 800C6AA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C6AA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C6AAC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800C6AB0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800C6AB4  40 82 00 08 */	bne lbl_800C6ABC
/* 800C6AB8  38 80 00 01 */	li r4, 1
lbl_800C6ABC:
/* 800C6ABC  54 9B 06 3E */	clrlwi r27, r4, 0x18
/* 800C6AC0  A0 9C 2F E8 */	lhz r4, 0x2fe8(r28)
/* 800C6AC4  20 64 00 8E */	subfic r3, r4, 0x8e
/* 800C6AC8  30 03 FF FF */	addic r0, r3, -1
/* 800C6ACC  7C 00 19 10 */	subfe r0, r0, r3
/* 800C6AD0  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 800C6AD4  20 04 00 88 */	subfic r0, r4, 0x88
/* 800C6AD8  7C 00 00 34 */	cntlzw r0, r0
/* 800C6ADC  54 1E DE 3E */	rlwinm r30, r0, 0x1b, 0x18, 0x1f
/* 800C6AE0  28 04 00 3B */	cmplwi r4, 0x3b
/* 800C6AE4  40 82 00 0C */	bne lbl_800C6AF0
/* 800C6AE8  7F 83 E3 78 */	mr r3, r28
/* 800C6AEC  48 02 88 A9 */	bl horseGetOffEnd__9daAlink_cFv
lbl_800C6AF0:
/* 800C6AF0  7F 83 E3 78 */	mr r3, r28
/* 800C6AF4  38 80 00 18 */	li r4, 0x18
/* 800C6AF8  4B FF C2 AD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C6AFC  2C 03 00 00 */	cmpwi r3, 0
/* 800C6B00  40 82 00 0C */	bne lbl_800C6B0C
/* 800C6B04  38 60 00 00 */	li r3, 0
/* 800C6B08  48 00 01 F8 */	b lbl_800C6D00
lbl_800C6B0C:
/* 800C6B0C  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800C6B10  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800C6B14  41 82 00 10 */	beq lbl_800C6B24
/* 800C6B18  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800C6B1C  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 800C6B20  90 1C 05 70 */	stw r0, 0x570(r28)
lbl_800C6B24:
/* 800C6B24  38 00 00 00 */	li r0, 0
/* 800C6B28  B0 1C 30 12 */	sth r0, 0x3012(r28)
/* 800C6B2C  2C 1D 00 01 */	cmpwi r29, 1
/* 800C6B30  40 82 00 6C */	bne lbl_800C6B9C
/* 800C6B34  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C6B38  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 800C6B3C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 800C6B40  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800C6B44  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 800C6B48  28 1B 00 00 */	cmplwi r27, 0
/* 800C6B4C  41 82 00 E4 */	beq lbl_800C6C30
/* 800C6B50  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800C6B54  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C6B58  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800C6B5C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800C6B60  7C 03 04 2E */	lfsx f0, r3, r0
/* 800C6B64  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 800C6B68  C0 42 93 3C */	lfs f2, lit_7808(r2)
/* 800C6B6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C6B70  EC 01 00 2A */	fadds f0, f1, f0
/* 800C6B74  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 800C6B78  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800C6B7C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800C6B80  7C 63 02 14 */	add r3, r3, r0
/* 800C6B84  C0 03 00 04 */	lfs f0, 4(r3)
/* 800C6B88  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 800C6B8C  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C6B90  EC 01 00 2A */	fadds f0, f1, f0
/* 800C6B94  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 800C6B98  48 00 00 98 */	b lbl_800C6C30
lbl_800C6B9C:
/* 800C6B9C  2C 1D 00 04 */	cmpwi r29, 4
/* 800C6BA0  40 82 00 90 */	bne lbl_800C6C30
/* 800C6BA4  A8 1C 2F FE */	lha r0, 0x2ffe(r28)
/* 800C6BA8  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 800C6BAC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C6BB0  D0 21 00 08 */	stfs f1, 8(r1)
/* 800C6BB4  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C6BB8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800C6BBC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800C6BC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C6BC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C6BC8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800C6BCC  38 80 00 06 */	li r4, 6
/* 800C6BD0  38 A0 00 1F */	li r5, 0x1f
/* 800C6BD4  38 C1 00 08 */	addi r6, r1, 8
/* 800C6BD8  4B FA 8E 4D */	bl StartShock__12dVibration_cFii4cXyz
/* 800C6BDC  7F 83 E3 78 */	mr r3, r28
/* 800C6BE0  80 9C 31 8C */	lwz r4, 0x318c(r28)
/* 800C6BE4  38 A0 00 00 */	li r5, 0
/* 800C6BE8  38 C0 00 01 */	li r6, 1
/* 800C6BEC  38 E0 00 00 */	li r7, 0
/* 800C6BF0  48 01 06 CD */	bl setDamagePoint__9daAlink_cFiiii
/* 800C6BF4  80 1C 05 74 */	lwz r0, 0x574(r28)
/* 800C6BF8  60 00 40 00 */	ori r0, r0, 0x4000
/* 800C6BFC  90 1C 05 74 */	stw r0, 0x574(r28)
/* 800C6C00  A8 1C 05 6C */	lha r0, 0x56c(r28)
/* 800C6C04  2C 00 00 00 */	cmpwi r0, 0
/* 800C6C08  41 82 00 10 */	beq lbl_800C6C18
/* 800C6C0C  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800C6C10  60 00 00 08 */	ori r0, r0, 8
/* 800C6C14  90 1C 31 A0 */	stw r0, 0x31a0(r28)
lbl_800C6C18:
/* 800C6C18  C0 1C 34 08 */	lfs f0, 0x3408(r28)
/* 800C6C1C  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 800C6C20  C0 1C 34 0C */	lfs f0, 0x340c(r28)
/* 800C6C24  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 800C6C28  38 00 00 01 */	li r0, 1
/* 800C6C2C  B0 1C 30 12 */	sth r0, 0x3012(r28)
lbl_800C6C30:
/* 800C6C30  B3 FC 30 10 */	sth r31, 0x3010(r28)
/* 800C6C34  7F 83 E3 78 */	mr r3, r28
/* 800C6C38  38 80 00 33 */	li r4, 0x33
/* 800C6C3C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C6C40  FC 40 F8 90 */	fmr f2, f31
/* 800C6C44  4B FE 63 9D */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800C6C48  7F 83 E3 78 */	mr r3, r28
/* 800C6C4C  4B FF 88 95 */	bl resetBasAnime__9daAlink_cFv
/* 800C6C50  2C 1D 00 04 */	cmpwi r29, 4
/* 800C6C54  41 82 00 4C */	beq lbl_800C6CA0
/* 800C6C58  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 800C6C5C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800C6C60  7C 03 00 00 */	cmpw r3, r0
/* 800C6C64  40 82 00 3C */	bne lbl_800C6CA0
/* 800C6C68  7F 83 E3 78 */	mr r3, r28
/* 800C6C6C  48 01 D0 01 */	bl checkGrabAnime__9daAlink_cCFv
/* 800C6C70  2C 03 00 00 */	cmpwi r3, 0
/* 800C6C74  40 82 00 2C */	bne lbl_800C6CA0
/* 800C6C78  C0 3C 33 98 */	lfs f1, 0x3398(r28)
/* 800C6C7C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C6C80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C6C84  40 81 00 10 */	ble lbl_800C6C94
/* 800C6C88  38 00 00 02 */	li r0, 2
/* 800C6C8C  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800C6C90  48 00 00 18 */	b lbl_800C6CA8
lbl_800C6C94:
/* 800C6C94  38 00 00 01 */	li r0, 1
/* 800C6C98  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800C6C9C  48 00 00 0C */	b lbl_800C6CA8
lbl_800C6CA0:
/* 800C6CA0  38 00 00 00 */	li r0, 0
/* 800C6CA4  B0 1C 30 08 */	sth r0, 0x3008(r28)
lbl_800C6CA8:
/* 800C6CA8  2C 1E 00 00 */	cmpwi r30, 0
/* 800C6CAC  41 82 00 18 */	beq lbl_800C6CC4
/* 800C6CB0  38 00 00 02 */	li r0, 2
/* 800C6CB4  B0 1C 30 0A */	sth r0, 0x300a(r28)
/* 800C6CB8  38 00 00 01 */	li r0, 1
/* 800C6CBC  90 1C 32 CC */	stw r0, 0x32cc(r28)
/* 800C6CC0  48 00 00 14 */	b lbl_800C6CD4
lbl_800C6CC4:
/* 800C6CC4  38 00 00 07 */	li r0, 7
/* 800C6CC8  B0 1C 30 0A */	sth r0, 0x300a(r28)
/* 800C6CCC  38 00 00 00 */	li r0, 0
/* 800C6CD0  90 1C 32 CC */	stw r0, 0x32cc(r28)
lbl_800C6CD4:
/* 800C6CD4  38 60 00 00 */	li r3, 0
/* 800C6CD8  B0 7C 30 0C */	sth r3, 0x300c(r28)
/* 800C6CDC  20 1D 00 03 */	subfic r0, r29, 3
/* 800C6CE0  7C 00 00 34 */	cntlzw r0, r0
/* 800C6CE4  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 800C6CE8  B0 1C 30 0E */	sth r0, 0x300e(r28)
/* 800C6CEC  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800C6CF0  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 800C6CF4  90 1C 05 70 */	stw r0, 0x570(r28)
/* 800C6CF8  B0 7C 30 14 */	sth r3, 0x3014(r28)
/* 800C6CFC  38 60 00 01 */	li r3, 1
lbl_800C6D00:
/* 800C6D00  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800C6D04  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800C6D08  39 61 00 30 */	addi r11, r1, 0x30
/* 800C6D0C  48 29 B5 15 */	bl _restgpr_27
/* 800C6D10  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800C6D14  7C 08 03 A6 */	mtlr r0
/* 800C6D18  38 21 00 40 */	addi r1, r1, 0x40
/* 800C6D1C  4E 80 00 20 */	blr 
