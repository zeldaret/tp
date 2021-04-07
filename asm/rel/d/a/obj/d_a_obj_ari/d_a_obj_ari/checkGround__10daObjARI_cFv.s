lbl_80BA3408:
/* 80BA3408  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80BA340C  7C 08 02 A6 */	mflr r0
/* 80BA3410  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80BA3414  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BA3418  4B 7B ED C5 */	bl _savegpr_29
/* 80BA341C  7C 7F 1B 78 */	mr r31, r3
/* 80BA3420  3C 60 80 BA */	lis r3, lit_3776@ha /* 0x80BA5408@ha */
/* 80BA3424  3B C3 54 08 */	addi r30, r3, lit_3776@l /* 0x80BA5408@l */
/* 80BA3428  38 61 00 38 */	addi r3, r1, 0x38
/* 80BA342C  4B 4D 48 3D */	bl __ct__11dBgS_LinChkFv
/* 80BA3430  38 61 00 90 */	addi r3, r1, 0x90
/* 80BA3434  4B 4D 5A 35 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80BA3438  38 61 00 38 */	addi r3, r1, 0x38
/* 80BA343C  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 80BA3440  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BA3444  38 C0 00 00 */	li r6, 0
/* 80BA3448  4B 4D 49 1D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80BA344C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA3450  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA3454  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80BA3458  7F A3 EB 78 */	mr r3, r29
/* 80BA345C  38 81 00 38 */	addi r4, r1, 0x38
/* 80BA3460  4B 4D 0F 55 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80BA3464  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA3468  41 82 01 AC */	beq lbl_80BA3614
/* 80BA346C  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha /* 0x80BA55B4@ha */
/* 80BA3470  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BA55B4@l */
/* 80BA3474  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BA3478  7F A3 EB 78 */	mr r3, r29
/* 80BA347C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80BA3480  38 A1 00 24 */	addi r5, r1, 0x24
/* 80BA3484  4B 4D 12 C1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80BA3488  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80BA348C  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80BA3490  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80BA3494  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80BA3498  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80BA349C  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80BA34A0  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BA34A4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BA34A8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80BA34AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BA34B0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BA34B4  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BA34B8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BA34BC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80BA34C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BA34C4  38 61 00 18 */	addi r3, r1, 0x18
/* 80BA34C8  38 81 00 0C */	addi r4, r1, 0xc
/* 80BA34CC  4B 7A 3E D1 */	bl PSVECSquareDistance
/* 80BA34D0  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80BA34D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA34D8  40 81 00 58 */	ble lbl_80BA3530
/* 80BA34DC  FC 00 08 34 */	frsqrte f0, f1
/* 80BA34E0  C8 9E 00 88 */	lfd f4, 0x88(r30)
/* 80BA34E4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA34E8  C8 7E 00 90 */	lfd f3, 0x90(r30)
/* 80BA34EC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA34F0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA34F4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA34F8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA34FC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA3500  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA3504  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA3508  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA350C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA3510  FC 44 00 32 */	fmul f2, f4, f0
/* 80BA3514  FC 00 00 32 */	fmul f0, f0, f0
/* 80BA3518  FC 01 00 32 */	fmul f0, f1, f0
/* 80BA351C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BA3520  FC 02 00 32 */	fmul f0, f2, f0
/* 80BA3524  FC 41 00 32 */	fmul f2, f1, f0
/* 80BA3528  FC 40 10 18 */	frsp f2, f2
/* 80BA352C  48 00 00 90 */	b lbl_80BA35BC
lbl_80BA3530:
/* 80BA3530  C8 1E 00 98 */	lfd f0, 0x98(r30)
/* 80BA3534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BA3538  40 80 00 10 */	bge lbl_80BA3548
/* 80BA353C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BA3540  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BA3544  48 00 00 78 */	b lbl_80BA35BC
lbl_80BA3548:
/* 80BA3548  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BA354C  80 81 00 08 */	lwz r4, 8(r1)
/* 80BA3550  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BA3554  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BA3558  7C 03 00 00 */	cmpw r3, r0
/* 80BA355C  41 82 00 14 */	beq lbl_80BA3570
/* 80BA3560  40 80 00 40 */	bge lbl_80BA35A0
/* 80BA3564  2C 03 00 00 */	cmpwi r3, 0
/* 80BA3568  41 82 00 20 */	beq lbl_80BA3588
/* 80BA356C  48 00 00 34 */	b lbl_80BA35A0
lbl_80BA3570:
/* 80BA3570  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA3574  41 82 00 0C */	beq lbl_80BA3580
/* 80BA3578  38 00 00 01 */	li r0, 1
/* 80BA357C  48 00 00 28 */	b lbl_80BA35A4
lbl_80BA3580:
/* 80BA3580  38 00 00 02 */	li r0, 2
/* 80BA3584  48 00 00 20 */	b lbl_80BA35A4
lbl_80BA3588:
/* 80BA3588  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BA358C  41 82 00 0C */	beq lbl_80BA3598
/* 80BA3590  38 00 00 05 */	li r0, 5
/* 80BA3594  48 00 00 10 */	b lbl_80BA35A4
lbl_80BA3598:
/* 80BA3598  38 00 00 03 */	li r0, 3
/* 80BA359C  48 00 00 08 */	b lbl_80BA35A4
lbl_80BA35A0:
/* 80BA35A0  38 00 00 04 */	li r0, 4
lbl_80BA35A4:
/* 80BA35A4  2C 00 00 01 */	cmpwi r0, 1
/* 80BA35A8  40 82 00 10 */	bne lbl_80BA35B8
/* 80BA35AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BA35B0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BA35B4  48 00 00 08 */	b lbl_80BA35BC
lbl_80BA35B8:
/* 80BA35B8  FC 40 08 90 */	fmr f2, f1
lbl_80BA35BC:
/* 80BA35BC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80BA35C0  4B 6C 40 B5 */	bl cM_atan2s__Fff
/* 80BA35C4  7C 03 00 D0 */	neg r0, r3
/* 80BA35C8  B0 1F 06 02 */	sth r0, 0x602(r31)
/* 80BA35CC  B0 1F 06 08 */	sth r0, 0x608(r31)
/* 80BA35D0  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80BA35D4  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 80BA35D8  4B 6C 40 9D */	bl cM_atan2s__Fff
/* 80BA35DC  B0 7F 05 FE */	sth r3, 0x5fe(r31)
/* 80BA35E0  B0 7F 06 04 */	sth r3, 0x604(r31)
/* 80BA35E4  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80BA35E8  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80BA35EC  4B 6C 40 89 */	bl cM_atan2s__Fff
/* 80BA35F0  B0 7F 06 0E */	sth r3, 0x60e(r31)
/* 80BA35F4  38 00 00 00 */	li r0, 0
/* 80BA35F8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80BA35FC  88 7F 05 E9 */	lbz r3, 0x5e9(r31)
/* 80BA3600  38 03 00 01 */	addi r0, r3, 1
/* 80BA3604  98 1F 05 E9 */	stb r0, 0x5e9(r31)
/* 80BA3608  3C 60 80 BA */	lis r3, __vt__8cM3dGPla@ha /* 0x80BA55B4@ha */
/* 80BA360C  38 03 55 B4 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80BA55B4@l */
/* 80BA3610  90 01 00 34 */	stw r0, 0x34(r1)
lbl_80BA3614:
/* 80BA3614  38 61 00 38 */	addi r3, r1, 0x38
/* 80BA3618  38 80 FF FF */	li r4, -1
/* 80BA361C  4B 4D 46 C1 */	bl __dt__11dBgS_LinChkFv
/* 80BA3620  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80BA3624  4B 7B EC 05 */	bl _restgpr_29
/* 80BA3628  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80BA362C  7C 08 03 A6 */	mtlr r0
/* 80BA3630  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80BA3634  4E 80 00 20 */	blr 
