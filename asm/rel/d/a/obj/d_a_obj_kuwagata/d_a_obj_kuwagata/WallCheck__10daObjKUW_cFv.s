lbl_80C4A9D0:
/* 80C4A9D0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C4A9D4  7C 08 02 A6 */	mflr r0
/* 80C4A9D8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C4A9DC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C4A9E0  4B 71 77 FC */	b _savegpr_29
/* 80C4A9E4  7C 7F 1B 78 */	mr r31, r3
/* 80C4A9E8  3C 60 80 C5 */	lis r3, lit_3775@ha
/* 80C4A9EC  3B C3 D4 90 */	addi r30, r3, lit_3775@l
/* 80C4A9F0  38 61 00 38 */	addi r3, r1, 0x38
/* 80C4A9F4  4B 42 D2 74 */	b __ct__11dBgS_LinChkFv
/* 80C4A9F8  38 61 00 90 */	addi r3, r1, 0x90
/* 80C4A9FC  4B 42 E4 6C */	b SetObj__16dBgS_PolyPassChkFv
/* 80C4AA00  38 61 00 38 */	addi r3, r1, 0x38
/* 80C4AA04  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 80C4AA08  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80C4AA0C  38 C0 00 00 */	li r6, 0
/* 80C4AA10  4B 42 D3 54 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C4AA14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4AA18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4AA1C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C4AA20  7F A3 EB 78 */	mr r3, r29
/* 80C4AA24  38 81 00 38 */	addi r4, r1, 0x38
/* 80C4AA28  4B 42 99 8C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C4AA2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4AA30  41 82 01 A4 */	beq lbl_80C4ABD4
/* 80C4AA34  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha
/* 80C4AA38  38 03 D6 34 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C4AA3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4AA40  7F A3 EB 78 */	mr r3, r29
/* 80C4AA44  38 81 00 4C */	addi r4, r1, 0x4c
/* 80C4AA48  38 A1 00 24 */	addi r5, r1, 0x24
/* 80C4AA4C  4B 42 9C F8 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C4AA50  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C4AA54  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C4AA58  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80C4AA5C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C4AA60  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80C4AA64  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C4AA68  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C4AA6C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C4AA70  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C4AA74  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C4AA78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C4AA7C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C4AA80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C4AA84  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C4AA88  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C4AA8C  38 61 00 18 */	addi r3, r1, 0x18
/* 80C4AA90  38 81 00 0C */	addi r4, r1, 0xc
/* 80C4AA94  4B 6F C9 08 */	b PSVECSquareDistance
/* 80C4AA98  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80C4AA9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4AAA0  40 81 00 58 */	ble lbl_80C4AAF8
/* 80C4AAA4  FC 00 08 34 */	frsqrte f0, f1
/* 80C4AAA8  C8 9E 00 68 */	lfd f4, 0x68(r30)
/* 80C4AAAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4AAB0  C8 7E 00 70 */	lfd f3, 0x70(r30)
/* 80C4AAB4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4AAB8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4AABC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4AAC0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4AAC4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4AAC8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4AACC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4AAD0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4AAD4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4AAD8  FC 44 00 32 */	fmul f2, f4, f0
/* 80C4AADC  FC 00 00 32 */	fmul f0, f0, f0
/* 80C4AAE0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C4AAE4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C4AAE8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C4AAEC  FC 41 00 32 */	fmul f2, f1, f0
/* 80C4AAF0  FC 40 10 18 */	frsp f2, f2
/* 80C4AAF4  48 00 00 90 */	b lbl_80C4AB84
lbl_80C4AAF8:
/* 80C4AAF8  C8 1E 00 78 */	lfd f0, 0x78(r30)
/* 80C4AAFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C4AB00  40 80 00 10 */	bge lbl_80C4AB10
/* 80C4AB04  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C4AB08  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C4AB0C  48 00 00 78 */	b lbl_80C4AB84
lbl_80C4AB10:
/* 80C4AB10  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C4AB14  80 81 00 08 */	lwz r4, 8(r1)
/* 80C4AB18  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C4AB1C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C4AB20  7C 03 00 00 */	cmpw r3, r0
/* 80C4AB24  41 82 00 14 */	beq lbl_80C4AB38
/* 80C4AB28  40 80 00 40 */	bge lbl_80C4AB68
/* 80C4AB2C  2C 03 00 00 */	cmpwi r3, 0
/* 80C4AB30  41 82 00 20 */	beq lbl_80C4AB50
/* 80C4AB34  48 00 00 34 */	b lbl_80C4AB68
lbl_80C4AB38:
/* 80C4AB38  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4AB3C  41 82 00 0C */	beq lbl_80C4AB48
/* 80C4AB40  38 00 00 01 */	li r0, 1
/* 80C4AB44  48 00 00 28 */	b lbl_80C4AB6C
lbl_80C4AB48:
/* 80C4AB48  38 00 00 02 */	li r0, 2
/* 80C4AB4C  48 00 00 20 */	b lbl_80C4AB6C
lbl_80C4AB50:
/* 80C4AB50  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C4AB54  41 82 00 0C */	beq lbl_80C4AB60
/* 80C4AB58  38 00 00 05 */	li r0, 5
/* 80C4AB5C  48 00 00 10 */	b lbl_80C4AB6C
lbl_80C4AB60:
/* 80C4AB60  38 00 00 03 */	li r0, 3
/* 80C4AB64  48 00 00 08 */	b lbl_80C4AB6C
lbl_80C4AB68:
/* 80C4AB68  38 00 00 04 */	li r0, 4
lbl_80C4AB6C:
/* 80C4AB6C  2C 00 00 01 */	cmpwi r0, 1
/* 80C4AB70  40 82 00 10 */	bne lbl_80C4AB80
/* 80C4AB74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80C4AB78  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80C4AB7C  48 00 00 08 */	b lbl_80C4AB84
lbl_80C4AB80:
/* 80C4AB80  FC 40 08 90 */	fmr f2, f1
lbl_80C4AB84:
/* 80C4AB84  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C4AB88  4B 61 CA EC */	b cM_atan2s__Fff
/* 80C4AB8C  7C 03 00 D0 */	neg r0, r3
/* 80C4AB90  B0 1F 09 9E */	sth r0, 0x99e(r31)
/* 80C4AB94  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80C4AB98  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80C4AB9C  4B 61 CA D8 */	b cM_atan2s__Fff
/* 80C4ABA0  B0 7F 09 9A */	sth r3, 0x99a(r31)
/* 80C4ABA4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80C4ABA8  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80C4ABAC  4B 61 CA C8 */	b cM_atan2s__Fff
/* 80C4ABB0  B0 7F 09 A2 */	sth r3, 0x9a2(r31)
/* 80C4ABB4  3C 60 80 C5 */	lis r3, __vt__8cM3dGPla@ha
/* 80C4ABB8  38 03 D6 34 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C4ABBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4ABC0  38 61 00 38 */	addi r3, r1, 0x38
/* 80C4ABC4  38 80 FF FF */	li r4, -1
/* 80C4ABC8  4B 42 D1 14 */	b __dt__11dBgS_LinChkFv
/* 80C4ABCC  38 60 00 01 */	li r3, 1
/* 80C4ABD0  48 00 00 14 */	b lbl_80C4ABE4
lbl_80C4ABD4:
/* 80C4ABD4  38 61 00 38 */	addi r3, r1, 0x38
/* 80C4ABD8  38 80 FF FF */	li r4, -1
/* 80C4ABDC  4B 42 D1 00 */	b __dt__11dBgS_LinChkFv
/* 80C4ABE0  38 60 00 00 */	li r3, 0
lbl_80C4ABE4:
/* 80C4ABE4  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C4ABE8  4B 71 76 40 */	b _restgpr_29
/* 80C4ABEC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C4ABF0  7C 08 03 A6 */	mtlr r0
/* 80C4ABF4  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C4ABF8  4E 80 00 20 */	blr 
