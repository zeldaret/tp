lbl_800D3ADC:
/* 800D3ADC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D3AE0  7C 08 02 A6 */	mflr r0
/* 800D3AE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D3AE8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800D3AEC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800D3AF0  39 61 00 20 */	addi r11, r1, 0x20
/* 800D3AF4  48 28 E6 E9 */	bl _savegpr_29
/* 800D3AF8  7C 7E 1B 78 */	mr r30, r3
/* 800D3AFC  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800D3B00  3B E4 D6 58 */	addi r31, r4, lit_3757@l /* 0x8038D658@l */
/* 800D3B04  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D3B08  20 00 00 11 */	subfic r0, r0, 0x11
/* 800D3B0C  7C 00 00 34 */	cntlzw r0, r0
/* 800D3B10  54 1D DE 3E */	rlwinm r29, r0, 0x1b, 0x18, 0x1f
/* 800D3B14  38 80 00 23 */	li r4, 0x23
/* 800D3B18  4B FE E4 55 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D3B1C  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800D3B20  28 00 01 03 */	cmplwi r0, 0x103
/* 800D3B24  41 82 00 1C */	beq lbl_800D3B40
/* 800D3B28  7F C3 F3 78 */	mr r3, r30
/* 800D3B2C  38 80 00 00 */	li r4, 0
/* 800D3B30  38 A0 00 00 */	li r5, 0
/* 800D3B34  4B FE D7 A9 */	bl deleteEquipItem__9daAlink_cFii
/* 800D3B38  7F C3 F3 78 */	mr r3, r30
/* 800D3B3C  4B FF D7 2D */	bl setSwordModel__9daAlink_cFv
lbl_800D3B40:
/* 800D3B40  7F C3 F3 78 */	mr r3, r30
/* 800D3B44  38 80 00 1E */	li r4, 0x1e
/* 800D3B48  4B FF D9 E5 */	bl setCutType__9daAlink_cFUc
/* 800D3B4C  38 7F 04 94 */	addi r3, r31, 0x494
/* 800D3B50  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800D3B54  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800D3B58  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800D3B5C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D3B60  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800D3B64  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800D3B68  41 82 00 2C */	beq lbl_800D3B94
/* 800D3B6C  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800D3B70  38 7F 11 9C */	addi r3, r31, 0x119c
/* 800D3B74  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800D3B78  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D3B7C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D3B80  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 800D3B84  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800D3B88  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D3B8C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800D3B90  48 00 00 2C */	b lbl_800D3BBC
lbl_800D3B94:
/* 800D3B94  7F C3 F3 78 */	mr r3, r30
/* 800D3B98  38 80 00 01 */	li r4, 1
/* 800D3B9C  38 A0 00 01 */	li r5, 1
/* 800D3BA0  4B FE 79 19 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800D3BA4  2C 03 00 00 */	cmpwi r3, 0
/* 800D3BA8  41 82 00 14 */	beq lbl_800D3BBC
/* 800D3BAC  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 800D3BB0  C0 02 93 2C */	lfs f0, lit_7624(r2)
/* 800D3BB4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D3BB8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_800D3BBC:
/* 800D3BBC  2C 1D 00 00 */	cmpwi r29, 0
/* 800D3BC0  41 82 00 30 */	beq lbl_800D3BF0
/* 800D3BC4  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 800D3BC8  28 00 00 02 */	cmplwi r0, 2
/* 800D3BCC  40 82 00 14 */	bne lbl_800D3BE0
/* 800D3BD0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800D3BD4  38 03 40 00 */	addi r0, r3, 0x4000
/* 800D3BD8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800D3BDC  48 00 00 1C */	b lbl_800D3BF8
lbl_800D3BE0:
/* 800D3BE0  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800D3BE4  38 03 C0 00 */	addi r0, r3, -16384
/* 800D3BE8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800D3BEC  48 00 00 0C */	b lbl_800D3BF8
lbl_800D3BF0:
/* 800D3BF0  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800D3BF4  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_800D3BF8:
/* 800D3BF8  38 7F 08 34 */	addi r3, r31, 0x834
/* 800D3BFC  A8 03 00 52 */	lha r0, 0x52(r3)
/* 800D3C00  B0 1E 30 7E */	sth r0, 0x307e(r30)
/* 800D3C04  38 7F 04 94 */	addi r3, r31, 0x494
/* 800D3C08  C3 E3 00 08 */	lfs f31, 8(r3)
/* 800D3C0C  4B FF D3 51 */	bl getSwordAtType__9daAlink_cFv
/* 800D3C10  7C 64 1B 78 */	mr r4, r3
/* 800D3C14  7F C3 F3 78 */	mr r3, r30
/* 800D3C18  38 A0 00 01 */	li r5, 1
/* 800D3C1C  38 C0 00 03 */	li r6, 3
/* 800D3C20  38 E0 00 01 */	li r7, 1
/* 800D3C24  39 00 00 03 */	li r8, 3
/* 800D3C28  39 3F 04 94 */	addi r9, r31, 0x494
/* 800D3C2C  C0 29 00 4C */	lfs f1, 0x4c(r9)
/* 800D3C30  C0 42 93 30 */	lfs f2, lit_7625(r2)
/* 800D3C34  4B FF D9 0D */	bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
/* 800D3C38  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020003@ha */
/* 800D3C3C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0x00020003@l */
/* 800D3C40  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 800D3C44  7F C3 F3 78 */	mr r3, r30
/* 800D3C48  38 80 00 6D */	li r4, 0x6d
/* 800D3C4C  38 DF 04 94 */	addi r6, r31, 0x494
/* 800D3C50  C0 26 00 04 */	lfs f1, 4(r6)
/* 800D3C54  FC 40 F8 90 */	fmr f2, f31
/* 800D3C58  A8 BF 04 94 */	lha r5, 0x494(r31)
/* 800D3C5C  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 800D3C60  4B FD 93 AD */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800D3C64  7F C3 F3 78 */	mr r3, r30
/* 800D3C68  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010097@ha */
/* 800D3C6C  38 84 00 97 */	addi r4, r4, 0x0097 /* 0x00010097@l */
/* 800D3C70  4B FF E6 15 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D3C74  38 00 00 00 */	li r0, 0
/* 800D3C78  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800D3C7C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800D3C80  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800D3C84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D3C88  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D3C8C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800D3C90  60 00 80 00 */	ori r0, r0, 0x8000
/* 800D3C94  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800D3C98  7F C3 F3 78 */	mr r3, r30
/* 800D3C9C  48 05 04 A9 */	bl setCutWaterDropEffect__9daAlink_cFv
/* 800D3CA0  38 00 00 01 */	li r0, 1
/* 800D3CA4  98 1E 2F D0 */	stb r0, 0x2fd0(r30)
/* 800D3CA8  38 60 00 01 */	li r3, 1
/* 800D3CAC  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800D3CB0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800D3CB4  39 61 00 20 */	addi r11, r1, 0x20
/* 800D3CB8  48 28 E5 71 */	bl _restgpr_29
/* 800D3CBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D3CC0  7C 08 03 A6 */	mtlr r0
/* 800D3CC4  38 21 00 30 */	addi r1, r1, 0x30
/* 800D3CC8  4E 80 00 20 */	blr 
