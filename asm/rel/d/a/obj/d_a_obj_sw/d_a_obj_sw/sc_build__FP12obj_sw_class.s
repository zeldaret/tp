lbl_80CF09A8:
/* 80CF09A8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80CF09AC  7C 08 02 A6 */	mflr r0
/* 80CF09B0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80CF09B4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80CF09B8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80CF09BC  39 61 00 80 */	addi r11, r1, 0x80
/* 80CF09C0  4B 67 18 14 */	b _savegpr_27
/* 80CF09C4  7C 7C 1B 78 */	mr r28, r3
/* 80CF09C8  3C 60 80 CF */	lis r3, lit_3850@ha
/* 80CF09CC  3B E3 30 00 */	addi r31, r3, lit_3850@l
/* 80CF09D0  3B DC 05 A8 */	addi r30, r28, 0x5a8
/* 80CF09D4  3B A0 00 00 */	li r29, 0
/* 80CF09D8  C3 FF 00 24 */	lfs f31, 0x24(r31)
lbl_80CF09DC:
/* 80CF09DC  88 7E 00 34 */	lbz r3, 0x34(r30)
/* 80CF09E0  7C 60 07 75 */	extsb. r0, r3
/* 80CF09E4  41 82 00 0C */	beq lbl_80CF09F0
/* 80CF09E8  38 03 FF FF */	addi r0, r3, -1
/* 80CF09EC  98 1E 00 34 */	stb r0, 0x34(r30)
lbl_80CF09F0:
/* 80CF09F0  88 1E 00 00 */	lbz r0, 0(r30)
/* 80CF09F4  7C 00 07 74 */	extsb r0, r0
/* 80CF09F8  2C 00 00 02 */	cmpwi r0, 2
/* 80CF09FC  41 82 01 14 */	beq lbl_80CF0B10
/* 80CF0A00  40 80 00 14 */	bge lbl_80CF0A14
/* 80CF0A04  2C 00 00 00 */	cmpwi r0, 0
/* 80CF0A08  41 82 00 18 */	beq lbl_80CF0A20
/* 80CF0A0C  40 80 00 94 */	bge lbl_80CF0AA0
/* 80CF0A10  48 00 05 B0 */	b lbl_80CF0FC0
lbl_80CF0A14:
/* 80CF0A14  2C 00 00 04 */	cmpwi r0, 4
/* 80CF0A18  40 80 05 A8 */	bge lbl_80CF0FC0
/* 80CF0A1C  48 00 04 50 */	b lbl_80CF0E6C
lbl_80CF0A20:
/* 80CF0A20  7F C3 F3 78 */	mr r3, r30
/* 80CF0A24  38 80 00 0E */	li r4, 0xe
/* 80CF0A28  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CF0A2C  38 A0 00 02 */	li r5, 2
/* 80CF0A30  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF0A34  4B FF FE C5 */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF0A38  38 00 00 01 */	li r0, 1
/* 80CF0A3C  98 1E 00 00 */	stb r0, 0(r30)
/* 80CF0A40  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80CF0A44  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80CF0A48  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80CF0A4C  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80CF0A50  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80CF0A54  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80CF0A58  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80CF0A5C  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0A60  3C 60 80 CF */	lis r3, sc_path@ha
/* 80CF0A64  38 83 31 00 */	addi r4, r3, sc_path@l
/* 80CF0A68  7C 64 02 14 */	add r3, r4, r0
/* 80CF0A6C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CF0A70  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80CF0A74  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80CF0A78  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0A7C  7C 64 02 14 */	add r3, r4, r0
/* 80CF0A80  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CF0A84  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80CF0A88  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80CF0A8C  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0A90  7C 64 02 14 */	add r3, r4, r0
/* 80CF0A94  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CF0A98  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80CF0A9C  48 00 05 24 */	b lbl_80CF0FC0
lbl_80CF0AA0:
/* 80CF0AA0  38 61 00 40 */	addi r3, r1, 0x40
/* 80CF0AA4  38 9E 00 1C */	addi r4, r30, 0x1c
/* 80CF0AA8  38 BE 00 04 */	addi r5, r30, 4
/* 80CF0AAC  4B 57 60 88 */	b __mi__4cXyzCFRC3Vec
/* 80CF0AB0  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80CF0AB4  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80CF0AB8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80CF0ABC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CF0AC0  C0 41 00 48 */	lfs f2, 0x48(r1)
/* 80CF0AC4  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80CF0AC8  4B 57 6B AC */	b cM_atan2s__Fff
/* 80CF0ACC  7C 64 1B 78 */	mr r4, r3
/* 80CF0AD0  38 7E 00 2A */	addi r3, r30, 0x2a
/* 80CF0AD4  38 A0 00 01 */	li r5, 1
/* 80CF0AD8  38 C0 20 00 */	li r6, 0x2000
/* 80CF0ADC  4B 57 FB 2C */	b cLib_addCalcAngleS2__FPssss
/* 80CF0AE0  88 1E 00 34 */	lbz r0, 0x34(r30)
/* 80CF0AE4  7C 00 07 75 */	extsb. r0, r0
/* 80CF0AE8  40 82 04 D8 */	bne lbl_80CF0FC0
/* 80CF0AEC  38 00 00 02 */	li r0, 2
/* 80CF0AF0  98 1E 00 00 */	stb r0, 0(r30)
/* 80CF0AF4  7F C3 F3 78 */	mr r3, r30
/* 80CF0AF8  38 80 00 0B */	li r4, 0xb
/* 80CF0AFC  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CF0B00  38 A0 00 00 */	li r5, 0
/* 80CF0B04  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF0B08  4B FF FD F1 */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF0B0C  48 00 04 B4 */	b lbl_80CF0FC0
lbl_80CF0B10:
/* 80CF0B10  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80CF0B14  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0B18  3C 60 80 CF */	lis r3, sc_path@ha
/* 80CF0B1C  38 63 31 00 */	addi r3, r3, sc_path@l
/* 80CF0B20  7C 03 00 2E */	lwzx r0, r3, r0
/* 80CF0B24  2C 00 00 01 */	cmpwi r0, 1
/* 80CF0B28  40 82 00 E8 */	bne lbl_80CF0C10
/* 80CF0B2C  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80CF0B30  2C 00 00 0B */	cmpwi r0, 0xb
/* 80CF0B34  40 82 00 E4 */	bne lbl_80CF0C18
/* 80CF0B38  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80CF0B3C  38 80 00 01 */	li r4, 1
/* 80CF0B40  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80CF0B44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CF0B48  40 82 00 18 */	bne lbl_80CF0B60
/* 80CF0B4C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CF0B50  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80CF0B54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CF0B58  41 82 00 08 */	beq lbl_80CF0B60
/* 80CF0B5C  38 80 00 00 */	li r4, 0
lbl_80CF0B60:
/* 80CF0B60  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80CF0B64  41 82 00 B4 */	beq lbl_80CF0C18
/* 80CF0B68  7F C3 F3 78 */	mr r3, r30
/* 80CF0B6C  38 80 00 0C */	li r4, 0xc
/* 80CF0B70  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CF0B74  38 A0 00 00 */	li r5, 0
/* 80CF0B78  FC 40 08 90 */	fmr f2, f1
/* 80CF0B7C  4B FF FD 7D */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF0B80  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050016@ha */
/* 80CF0B84  38 03 00 16 */	addi r0, r3, 0x0016 /* 0x00050016@l */
/* 80CF0B88  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CF0B8C  38 7E 00 44 */	addi r3, r30, 0x44
/* 80CF0B90  38 81 00 18 */	addi r4, r1, 0x18
/* 80CF0B94  38 A0 00 00 */	li r5, 0
/* 80CF0B98  38 C0 FF FF */	li r6, -1
/* 80CF0B9C  81 9E 00 54 */	lwz r12, 0x54(r30)
/* 80CF0BA0  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CF0BA4  7D 89 03 A6 */	mtctr r12
/* 80CF0BA8  4E 80 04 21 */	bctrl 
/* 80CF0BAC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060020@ha */
/* 80CF0BB0  38 03 00 20 */	addi r0, r3, 0x0020 /* 0x00060020@l */
/* 80CF0BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF0BB8  38 7E 00 44 */	addi r3, r30, 0x44
/* 80CF0BBC  38 81 00 14 */	addi r4, r1, 0x14
/* 80CF0BC0  38 A0 00 00 */	li r5, 0
/* 80CF0BC4  38 C0 FF FF */	li r6, -1
/* 80CF0BC8  81 9E 00 54 */	lwz r12, 0x54(r30)
/* 80CF0BCC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CF0BD0  7D 89 03 A6 */	mtctr r12
/* 80CF0BD4  4E 80 04 21 */	bctrl 
/* 80CF0BD8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060024@ha */
/* 80CF0BDC  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00060024@l */
/* 80CF0BE0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CF0BE4  38 7E 00 44 */	addi r3, r30, 0x44
/* 80CF0BE8  38 81 00 10 */	addi r4, r1, 0x10
/* 80CF0BEC  38 A0 00 00 */	li r5, 0
/* 80CF0BF0  38 C0 FF FF */	li r6, -1
/* 80CF0BF4  81 9E 00 54 */	lwz r12, 0x54(r30)
/* 80CF0BF8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CF0BFC  7D 89 03 A6 */	mtctr r12
/* 80CF0C00  4E 80 04 21 */	bctrl 
/* 80CF0C04  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CF0C08  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80CF0C0C  48 00 00 0C */	b lbl_80CF0C18
lbl_80CF0C10:
/* 80CF0C10  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80CF0C14  D0 1E 00 30 */	stfs f0, 0x30(r30)
lbl_80CF0C18:
/* 80CF0C18  38 61 00 34 */	addi r3, r1, 0x34
/* 80CF0C1C  38 9E 00 1C */	addi r4, r30, 0x1c
/* 80CF0C20  38 BE 00 04 */	addi r5, r30, 4
/* 80CF0C24  4B 57 5F 10 */	b __mi__4cXyzCFRC3Vec
/* 80CF0C28  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80CF0C2C  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80CF0C30  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80CF0C34  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CF0C38  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 80CF0C3C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80CF0C40  4B 57 6A 34 */	b cM_atan2s__Fff
/* 80CF0C44  7C 7B 1B 78 */	mr r27, r3
/* 80CF0C48  38 7E 00 2A */	addi r3, r30, 0x2a
/* 80CF0C4C  7F 64 DB 78 */	mr r4, r27
/* 80CF0C50  38 A0 00 01 */	li r5, 1
/* 80CF0C54  38 C0 20 00 */	li r6, 0x2000
/* 80CF0C58  4B 57 F9 B0 */	b cLib_addCalcAngleS2__FPssss
/* 80CF0C5C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CF0C60  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CF0C64  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF0C68  7F 64 DB 78 */	mr r4, r27
/* 80CF0C6C  4B 31 B7 70 */	b mDoMtx_YrotS__FPA4_fs
/* 80CF0C70  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CF0C74  EC 20 00 32 */	fmuls f1, f0, f0
/* 80CF0C78  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80CF0C7C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CF0C80  EC 41 00 2A */	fadds f2, f1, f0
/* 80CF0C84  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF0C88  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CF0C8C  40 81 00 0C */	ble lbl_80CF0C98
/* 80CF0C90  FC 00 10 34 */	frsqrte f0, f2
/* 80CF0C94  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80CF0C98:
/* 80CF0C98  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 80CF0C9C  4B 57 69 D8 */	b cM_atan2s__Fff
/* 80CF0CA0  7C 03 00 D0 */	neg r0, r3
/* 80CF0CA4  7C 04 07 34 */	extsh r4, r0
/* 80CF0CA8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CF0CAC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CF0CB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF0CB4  4B 31 B6 E8 */	b mDoMtx_XrotM__FPA4_fs
/* 80CF0CB8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF0CBC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CF0CC0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CF0CC4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80CF0CC8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CF0CCC  38 61 00 58 */	addi r3, r1, 0x58
/* 80CF0CD0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80CF0CD4  4B 58 02 18 */	b MtxPosition__FP4cXyzP4cXyz
/* 80CF0CD8  38 7E 00 04 */	addi r3, r30, 4
/* 80CF0CDC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80CF0CE0  7C 65 1B 78 */	mr r5, r3
/* 80CF0CE4  4B 65 63 AC */	b PSVECAdd
/* 80CF0CE8  38 61 00 28 */	addi r3, r1, 0x28
/* 80CF0CEC  38 9E 00 1C */	addi r4, r30, 0x1c
/* 80CF0CF0  38 BE 00 04 */	addi r5, r30, 4
/* 80CF0CF4  4B 57 5E 40 */	b __mi__4cXyzCFRC3Vec
/* 80CF0CF8  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80CF0CFC  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80CF0D00  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80CF0D04  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CF0D08  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80CF0D0C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CF0D10  EC 21 00 72 */	fmuls f1, f1, f1
/* 80CF0D14  EC 00 00 32 */	fmuls f0, f0, f0
/* 80CF0D18  EC 21 00 2A */	fadds f1, f1, f0
/* 80CF0D1C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80CF0D20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CF0D24  4C 40 13 82 */	cror 2, 0, 2
/* 80CF0D28  40 82 02 98 */	bne lbl_80CF0FC0
/* 80CF0D2C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80CF0D30  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80CF0D34  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80CF0D38  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80CF0D3C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80CF0D40  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 80CF0D44  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80CF0D48  2C 03 00 10 */	cmpwi r3, 0x10
/* 80CF0D4C  40 82 00 5C */	bne lbl_80CF0DA8
/* 80CF0D50  38 00 00 03 */	li r0, 3
/* 80CF0D54  98 1E 00 00 */	stb r0, 0(r30)
/* 80CF0D58  7F C3 F3 78 */	mr r3, r30
/* 80CF0D5C  38 80 00 04 */	li r4, 4
/* 80CF0D60  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CF0D64  38 A0 00 02 */	li r5, 2
/* 80CF0D68  FC 40 08 90 */	fmr f2, f1
/* 80CF0D6C  4B FF FB 8D */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF0D70  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF0D74  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80CF0D78  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050014@ha */
/* 80CF0D7C  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00050014@l */
/* 80CF0D80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CF0D84  38 7E 00 44 */	addi r3, r30, 0x44
/* 80CF0D88  38 81 00 0C */	addi r4, r1, 0xc
/* 80CF0D8C  38 A0 00 00 */	li r5, 0
/* 80CF0D90  38 C0 FF FF */	li r6, -1
/* 80CF0D94  81 9E 00 54 */	lwz r12, 0x54(r30)
/* 80CF0D98  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CF0D9C  7D 89 03 A6 */	mtctr r12
/* 80CF0DA0  4E 80 04 21 */	bctrl 
/* 80CF0DA4  48 00 02 1C */	b lbl_80CF0FC0
lbl_80CF0DA8:
/* 80CF0DA8  38 03 00 01 */	addi r0, r3, 1
/* 80CF0DAC  90 1E 00 38 */	stw r0, 0x38(r30)
/* 80CF0DB0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80CF0DB4  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80CF0DB8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80CF0DBC  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80CF0DC0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80CF0DC4  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80CF0DC8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80CF0DCC  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0DD0  3C 60 80 CF */	lis r3, sc_path@ha
/* 80CF0DD4  38 83 31 00 */	addi r4, r3, sc_path@l
/* 80CF0DD8  7C 64 02 14 */	add r3, r4, r0
/* 80CF0DDC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80CF0DE0  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80CF0DE4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80CF0DE8  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0DEC  7C 64 02 14 */	add r3, r4, r0
/* 80CF0DF0  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CF0DF4  D0 1E 00 20 */	stfs f0, 0x20(r30)
/* 80CF0DF8  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80CF0DFC  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0E00  7C 64 02 14 */	add r3, r4, r0
/* 80CF0E04  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80CF0E08  D0 1E 00 24 */	stfs f0, 0x24(r30)
/* 80CF0E0C  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80CF0E10  54 00 20 36 */	slwi r0, r0, 4
/* 80CF0E14  7C 04 00 2E */	lwzx r0, r4, r0
/* 80CF0E18  2C 00 00 01 */	cmpwi r0, 1
/* 80CF0E1C  40 82 00 28 */	bne lbl_80CF0E44
/* 80CF0E20  7F C3 F3 78 */	mr r3, r30
/* 80CF0E24  38 80 00 0B */	li r4, 0xb
/* 80CF0E28  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CF0E2C  38 A0 00 00 */	li r5, 0
/* 80CF0E30  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF0E34  4B FF FA C5 */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF0E38  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF0E3C  D0 1E 00 30 */	stfs f0, 0x30(r30)
/* 80CF0E40  48 00 01 80 */	b lbl_80CF0FC0
lbl_80CF0E44:
/* 80CF0E44  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80CF0E48  2C 00 00 0A */	cmpwi r0, 0xa
/* 80CF0E4C  41 82 01 74 */	beq lbl_80CF0FC0
/* 80CF0E50  7F C3 F3 78 */	mr r3, r30
/* 80CF0E54  38 80 00 0A */	li r4, 0xa
/* 80CF0E58  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80CF0E5C  38 A0 00 02 */	li r5, 2
/* 80CF0E60  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF0E64  4B FF FA 95 */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF0E68  48 00 01 58 */	b lbl_80CF0FC0
lbl_80CF0E6C:
/* 80CF0E6C  38 7E 00 2A */	addi r3, r30, 0x2a
/* 80CF0E70  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80CF0E74  3C 84 00 01 */	addis r4, r4, 1
/* 80CF0E78  38 04 80 00 */	addi r0, r4, -32768
/* 80CF0E7C  7C 04 07 34 */	extsh r4, r0
/* 80CF0E80  38 A0 00 02 */	li r5, 2
/* 80CF0E84  38 C0 10 00 */	li r6, 0x1000
/* 80CF0E88  4B 57 F7 80 */	b cLib_addCalcAngleS2__FPssss
/* 80CF0E8C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80CF0E90  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80CF0E94  80 63 00 00 */	lwz r3, 0(r3)
/* 80CF0E98  A8 9E 00 2A */	lha r4, 0x2a(r30)
/* 80CF0E9C  4B 31 B5 40 */	b mDoMtx_YrotS__FPA4_fs
/* 80CF0EA0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CF0EA4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80CF0EA8  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CF0EAC  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 80CF0EB0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80CF0EB4  38 61 00 58 */	addi r3, r1, 0x58
/* 80CF0EB8  38 81 00 4C */	addi r4, r1, 0x4c
/* 80CF0EBC  4B 58 00 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 80CF0EC0  38 7E 00 04 */	addi r3, r30, 4
/* 80CF0EC4  C0 3C 05 38 */	lfs f1, 0x538(r28)
/* 80CF0EC8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CF0ECC  EC 21 00 2A */	fadds f1, f1, f0
/* 80CF0ED0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF0ED4  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80CF0ED8  4B 57 EB 64 */	b cLib_addCalc2__FPffff
/* 80CF0EDC  38 7E 00 08 */	addi r3, r30, 8
/* 80CF0EE0  C0 3C 05 3C */	lfs f1, 0x53c(r28)
/* 80CF0EE4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF0EE8  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80CF0EEC  4B 57 EB 50 */	b cLib_addCalc2__FPffff
/* 80CF0EF0  38 7E 00 0C */	addi r3, r30, 0xc
/* 80CF0EF4  C0 3C 05 40 */	lfs f1, 0x540(r28)
/* 80CF0EF8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CF0EFC  EC 21 00 2A */	fadds f1, f1, f0
/* 80CF0F00  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF0F04  C0 7F 00 24 */	lfs f3, 0x24(r31)
/* 80CF0F08  4B 57 EB 34 */	b cLib_addCalc2__FPffff
/* 80CF0F0C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80CF0F10  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80CF0F14  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 80CF0F18  EC 01 00 2A */	fadds f0, f1, f0
/* 80CF0F1C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80CF0F20  4C 40 13 82 */	cror 2, 0, 2
/* 80CF0F24  40 82 00 9C */	bne lbl_80CF0FC0
/* 80CF0F28  38 61 00 1C */	addi r3, r1, 0x1c
/* 80CF0F2C  38 9E 00 04 */	addi r4, r30, 4
/* 80CF0F30  38 BC 05 38 */	addi r5, r28, 0x538
/* 80CF0F34  4B 57 5C 00 */	b __mi__4cXyzCFRC3Vec
/* 80CF0F38  7F C3 F3 78 */	mr r3, r30
/* 80CF0F3C  38 80 00 0D */	li r4, 0xd
/* 80CF0F40  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80CF0F44  38 A0 00 00 */	li r5, 0
/* 80CF0F48  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80CF0F4C  4B FF F9 AD */	bl anm_init__FP8obj_sc_sifUcf
/* 80CF0F50  38 00 00 0A */	li r0, 0xa
/* 80CF0F54  98 1E 00 00 */	stb r0, 0(r30)
/* 80CF0F58  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050014@ha */
/* 80CF0F5C  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00050014@l */
/* 80CF0F60  90 01 00 08 */	stw r0, 8(r1)
/* 80CF0F64  38 7E 00 44 */	addi r3, r30, 0x44
/* 80CF0F68  38 81 00 08 */	addi r4, r1, 8
/* 80CF0F6C  38 A0 00 00 */	li r5, 0
/* 80CF0F70  38 C0 FF FF */	li r6, -1
/* 80CF0F74  81 9E 00 54 */	lwz r12, 0x54(r30)
/* 80CF0F78  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80CF0F7C  7D 89 03 A6 */	mtctr r12
/* 80CF0F80  4E 80 04 21 */	bctrl 
/* 80CF0F84  2C 1D 00 07 */	cmpwi r29, 7
/* 80CF0F88  40 82 00 38 */	bne lbl_80CF0FC0
/* 80CF0F8C  38 00 00 02 */	li r0, 2
/* 80CF0F90  B0 1C 05 76 */	sth r0, 0x576(r28)
/* 80CF0F94  38 00 00 78 */	li r0, 0x78
/* 80CF0F98  B0 1C 05 7C */	sth r0, 0x57c(r28)
/* 80CF0F9C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80CF0FA0  54 04 46 3E */	srwi r4, r0, 0x18
/* 80CF0FA4  2C 04 00 FF */	cmpwi r4, 0xff
/* 80CF0FA8  41 82 00 18 */	beq lbl_80CF0FC0
/* 80CF0FAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF0FB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF0FB4  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80CF0FB8  7C 05 07 74 */	extsb r5, r0
/* 80CF0FBC  4B 34 42 44 */	b onSwitch__10dSv_info_cFii
lbl_80CF0FC0:
/* 80CF0FC0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80CF0FC4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80CF0FC8  4C 41 13 82 */	cror 2, 1, 2
/* 80CF0FCC  40 82 00 0C */	bne lbl_80CF0FD8
/* 80CF0FD0  38 00 00 01 */	li r0, 1
/* 80CF0FD4  98 1E 00 35 */	stb r0, 0x35(r30)
lbl_80CF0FD8:
/* 80CF0FD8  3B BD 00 01 */	addi r29, r29, 1
/* 80CF0FDC  2C 1D 00 08 */	cmpwi r29, 8
/* 80CF0FE0  3B DE 00 64 */	addi r30, r30, 0x64
/* 80CF0FE4  41 80 F9 F8 */	blt lbl_80CF09DC
/* 80CF0FE8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80CF0FEC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80CF0FF0  39 61 00 80 */	addi r11, r1, 0x80
/* 80CF0FF4  4B 67 12 2C */	b _restgpr_27
/* 80CF0FF8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80CF0FFC  7C 08 03 A6 */	mtlr r0
/* 80CF1000  38 21 00 90 */	addi r1, r1, 0x90
/* 80CF1004  4E 80 00 20 */	blr 
