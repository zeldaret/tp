lbl_8065DF40:
/* 8065DF40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8065DF44  7C 08 02 A6 */	mflr r0
/* 8065DF48  90 01 00 64 */	stw r0, 0x64(r1)
/* 8065DF4C  39 61 00 60 */	addi r11, r1, 0x60
/* 8065DF50  4B D0 42 8D */	bl _savegpr_29
/* 8065DF54  7C 7D 1B 78 */	mr r29, r3
/* 8065DF58  3C 60 80 66 */	lis r3, lit_3987@ha /* 0x80662DB0@ha */
/* 8065DF5C  3B E3 2D B0 */	addi r31, r3, lit_3987@l /* 0x80662DB0@l */
/* 8065DF60  38 00 00 01 */	li r0, 1
/* 8065DF64  98 1D 0C B5 */	stb r0, 0xcb5(r29)
/* 8065DF68  80 7D 0C 0C */	lwz r3, 0xc0c(r29)
/* 8065DF6C  88 9D 0C 10 */	lbz r4, 0xc10(r29)
/* 8065DF70  7C 84 07 74 */	extsb r4, r4
/* 8065DF74  4B 9F 38 3D */	bl dPath_GetPnt__FPC5dPathi
/* 8065DF78  C0 03 00 04 */	lfs f0, 4(r3)
/* 8065DF7C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8065DF80  C0 03 00 08 */	lfs f0, 8(r3)
/* 8065DF84  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8065DF88  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8065DF8C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8065DF90  7F A3 EB 78 */	mr r3, r29
/* 8065DF94  4B FF AD 3D */	bl setSeSnort__7daCow_cFv
/* 8065DF98  7F A3 EB 78 */	mr r3, r29
/* 8065DF9C  38 80 00 02 */	li r4, 2
/* 8065DFA0  4B FF AD 9D */	bl setRushVibration__7daCow_cFi
/* 8065DFA4  80 1D 0C 90 */	lwz r0, 0xc90(r29)
/* 8065DFA8  2C 00 00 01 */	cmpwi r0, 1
/* 8065DFAC  40 82 00 2C */	bne lbl_8065DFD8
/* 8065DFB0  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050078@ha */
/* 8065DFB4  38 03 00 78 */	addi r0, r3, 0x0078 /* 0x00050078@l */
/* 8065DFB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8065DFBC  38 7D 05 7C */	addi r3, r29, 0x57c
/* 8065DFC0  38 81 00 18 */	addi r4, r1, 0x18
/* 8065DFC4  38 A0 FF FF */	li r5, -1
/* 8065DFC8  81 9D 05 7C */	lwz r12, 0x57c(r29)
/* 8065DFCC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8065DFD0  7D 89 03 A6 */	mtctr r12
/* 8065DFD4  4E 80 04 21 */	bctrl 
lbl_8065DFD8:
/* 8065DFD8  88 1D 0C 10 */	lbz r0, 0xc10(r29)
/* 8065DFDC  7C 00 07 74 */	extsb r0, r0
/* 8065DFE0  2C 00 00 04 */	cmpwi r0, 4
/* 8065DFE4  41 82 00 0C */	beq lbl_8065DFF0
/* 8065DFE8  2C 00 00 05 */	cmpwi r0, 5
/* 8065DFEC  40 82 05 08 */	bne lbl_8065E4F4
lbl_8065DFF0:
/* 8065DFF0  38 7D 0C 42 */	addi r3, r29, 0xc42
/* 8065DFF4  38 80 10 00 */	li r4, 0x1000
/* 8065DFF8  38 A0 04 00 */	li r5, 0x400
/* 8065DFFC  4B C1 26 D5 */	bl cLib_chaseS__FPsss
/* 8065E000  A0 7D 05 68 */	lhz r3, 0x568(r29)
/* 8065E004  28 03 00 00 */	cmplwi r3, 0
/* 8065E008  41 82 00 B8 */	beq lbl_8065E0C0
/* 8065E00C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8065E010  41 82 00 28 */	beq lbl_8065E038
/* 8065E014  7F A3 EB 78 */	mr r3, r29
/* 8065E018  38 80 00 00 */	li r4, 0
/* 8065E01C  48 00 06 A1 */	bl initCrazyBeforeCatch__7daCow_cFi
/* 8065E020  38 00 00 06 */	li r0, 6
/* 8065E024  98 1D 0C 10 */	stb r0, 0xc10(r29)
/* 8065E028  A0 1D 05 68 */	lhz r0, 0x568(r29)
/* 8065E02C  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 8065E030  B0 1D 05 68 */	sth r0, 0x568(r29)
/* 8065E034  48 00 06 50 */	b lbl_8065E684
lbl_8065E038:
/* 8065E038  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8065E03C  41 82 00 58 */	beq lbl_8065E094
/* 8065E040  7F A3 EB 78 */	mr r3, r29
/* 8065E044  38 80 00 00 */	li r4, 0
/* 8065E048  48 00 07 89 */	bl initCrazyCatch__7daCow_cFi
/* 8065E04C  38 00 00 06 */	li r0, 6
/* 8065E050  98 1D 0C 10 */	stb r0, 0xc10(r29)
/* 8065E054  A0 1D 05 68 */	lhz r0, 0x568(r29)
/* 8065E058  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8065E05C  B0 1D 05 68 */	sth r0, 0x568(r29)
/* 8065E060  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 8065E064  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8065E068  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8065E06C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8065E070  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8065E074  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065E078  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065E07C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8065E080  38 80 00 08 */	li r4, 8
/* 8065E084  38 A0 00 1F */	li r5, 0x1f
/* 8065E088  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8065E08C  4B A1 19 99 */	bl StartShock__12dVibration_cFii4cXyz
/* 8065E090  48 00 05 F4 */	b lbl_8065E684
lbl_8065E094:
/* 8065E094  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8065E098  41 82 05 EC */	beq lbl_8065E684
/* 8065E09C  7F A3 EB 78 */	mr r3, r29
/* 8065E0A0  38 80 00 00 */	li r4, 0
/* 8065E0A4  48 00 0F E5 */	bl initCrazyAttack__7daCow_cFi
/* 8065E0A8  38 00 00 06 */	li r0, 6
/* 8065E0AC  98 1D 0C 10 */	stb r0, 0xc10(r29)
/* 8065E0B0  A0 1D 05 68 */	lhz r0, 0x568(r29)
/* 8065E0B4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8065E0B8  B0 1D 05 68 */	sth r0, 0x568(r29)
/* 8065E0BC  48 00 05 C8 */	b lbl_8065E684
lbl_8065E0C0:
/* 8065E0C0  88 1D 0C 10 */	lbz r0, 0xc10(r29)
/* 8065E0C4  7C 04 07 74 */	extsb r4, r0
/* 8065E0C8  2C 04 00 04 */	cmpwi r4, 4
/* 8065E0CC  40 82 02 E0 */	bne lbl_8065E3AC
/* 8065E0D0  80 7D 0C 0C */	lwz r3, 0xc0c(r29)
/* 8065E0D4  38 84 FF FF */	addi r4, r4, -1
/* 8065E0D8  4B 9F 36 D9 */	bl dPath_GetPnt__FPC5dPathi
/* 8065E0DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8065E0E0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8065E0E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8065E0E8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8065E0EC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8065E0F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8065E0F4  38 61 00 34 */	addi r3, r1, 0x34
/* 8065E0F8  38 81 00 40 */	addi r4, r1, 0x40
/* 8065E0FC  4B C1 2B 09 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8065E100  7C 7E 1B 78 */	mr r30, r3
/* 8065E104  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8065E108  38 81 00 40 */	addi r4, r1, 0x40
/* 8065E10C  4B CE 92 91 */	bl PSVECSquareDistance
/* 8065E110  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065E114  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E118  40 81 00 58 */	ble lbl_8065E170
/* 8065E11C  FC 00 08 34 */	frsqrte f0, f1
/* 8065E120  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065E124  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E128  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065E12C  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E130  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E134  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E138  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E13C  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E140  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E144  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E148  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E14C  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E150  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E154  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E158  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E15C  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E160  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E164  FC 21 00 32 */	fmul f1, f1, f0
/* 8065E168  FC 20 08 18 */	frsp f1, f1
/* 8065E16C  48 00 00 88 */	b lbl_8065E1F4
lbl_8065E170:
/* 8065E170  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065E174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E178  40 80 00 10 */	bge lbl_8065E188
/* 8065E17C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065E180  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065E184  48 00 00 70 */	b lbl_8065E1F4
lbl_8065E188:
/* 8065E188  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8065E18C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8065E190  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065E194  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065E198  7C 03 00 00 */	cmpw r3, r0
/* 8065E19C  41 82 00 14 */	beq lbl_8065E1B0
/* 8065E1A0  40 80 00 40 */	bge lbl_8065E1E0
/* 8065E1A4  2C 03 00 00 */	cmpwi r3, 0
/* 8065E1A8  41 82 00 20 */	beq lbl_8065E1C8
/* 8065E1AC  48 00 00 34 */	b lbl_8065E1E0
lbl_8065E1B0:
/* 8065E1B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065E1B4  41 82 00 0C */	beq lbl_8065E1C0
/* 8065E1B8  38 00 00 01 */	li r0, 1
/* 8065E1BC  48 00 00 28 */	b lbl_8065E1E4
lbl_8065E1C0:
/* 8065E1C0  38 00 00 02 */	li r0, 2
/* 8065E1C4  48 00 00 20 */	b lbl_8065E1E4
lbl_8065E1C8:
/* 8065E1C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065E1CC  41 82 00 0C */	beq lbl_8065E1D8
/* 8065E1D0  38 00 00 05 */	li r0, 5
/* 8065E1D4  48 00 00 10 */	b lbl_8065E1E4
lbl_8065E1D8:
/* 8065E1D8  38 00 00 03 */	li r0, 3
/* 8065E1DC  48 00 00 08 */	b lbl_8065E1E4
lbl_8065E1E0:
/* 8065E1E0  38 00 00 04 */	li r0, 4
lbl_8065E1E4:
/* 8065E1E4  2C 00 00 01 */	cmpwi r0, 1
/* 8065E1E8  40 82 00 0C */	bne lbl_8065E1F4
/* 8065E1EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065E1F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065E1F4:
/* 8065E1F4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 8065E1F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E1FC  40 81 00 8C */	ble lbl_8065E288
/* 8065E200  38 00 00 00 */	li r0, 0
/* 8065E204  98 1D 0C 60 */	stb r0, 0xc60(r29)
/* 8065E208  38 61 00 34 */	addi r3, r1, 0x34
/* 8065E20C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8065E210  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8065E214  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8065E218  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8065E21C  4B C1 29 E9 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8065E220  7C 1E 18 50 */	subf r0, r30, r3
/* 8065E224  7C 00 07 35 */	extsh. r0, r0
/* 8065E228  40 80 00 1C */	bge lbl_8065E244
/* 8065E22C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8065E230  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8065E234  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065E238  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8065E23C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8065E240  48 00 00 18 */	b lbl_8065E258
lbl_8065E244:
/* 8065E244  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 8065E248  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8065E24C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065E250  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8065E254  D0 01 00 30 */	stfs f0, 0x30(r1)
lbl_8065E258:
/* 8065E258  38 61 00 40 */	addi r3, r1, 0x40
/* 8065E25C  7C 64 1B 78 */	mr r4, r3
/* 8065E260  7F C5 F3 78 */	mr r5, r30
/* 8065E264  38 C1 00 28 */	addi r6, r1, 0x28
/* 8065E268  4B C1 2B 59 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8065E26C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8065E270  D0 1D 0C 20 */	stfs f0, 0xc20(r29)
/* 8065E274  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8065E278  D0 1D 0C 24 */	stfs f0, 0xc24(r29)
/* 8065E27C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8065E280  D0 1D 0C 28 */	stfs f0, 0xc28(r29)
/* 8065E284  48 00 01 40 */	b lbl_8065E3C4
lbl_8065E288:
/* 8065E288  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8065E28C  7F C4 F3 78 */	mr r4, r30
/* 8065E290  38 A0 00 10 */	li r5, 0x10
/* 8065E294  38 C0 08 00 */	li r6, 0x800
/* 8065E298  38 E0 01 00 */	li r7, 0x100
/* 8065E29C  4B C1 22 A5 */	bl cLib_addCalcAngleS__FPsssss
/* 8065E2A0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8065E2A4  38 81 00 40 */	addi r4, r1, 0x40
/* 8065E2A8  4B CE 90 F5 */	bl PSVECSquareDistance
/* 8065E2AC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065E2B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E2B4  40 81 00 58 */	ble lbl_8065E30C
/* 8065E2B8  FC 00 08 34 */	frsqrte f0, f1
/* 8065E2BC  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065E2C0  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E2C4  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065E2C8  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E2CC  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E2D0  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E2D4  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E2D8  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E2DC  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E2E0  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E2E4  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E2E8  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E2EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E2F0  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E2F4  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E2F8  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E2FC  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E300  FC 21 00 32 */	fmul f1, f1, f0
/* 8065E304  FC 20 08 18 */	frsp f1, f1
/* 8065E308  48 00 00 88 */	b lbl_8065E390
lbl_8065E30C:
/* 8065E30C  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065E310  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E314  40 80 00 10 */	bge lbl_8065E324
/* 8065E318  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065E31C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065E320  48 00 00 70 */	b lbl_8065E390
lbl_8065E324:
/* 8065E324  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8065E328  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8065E32C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065E330  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065E334  7C 03 00 00 */	cmpw r3, r0
/* 8065E338  41 82 00 14 */	beq lbl_8065E34C
/* 8065E33C  40 80 00 40 */	bge lbl_8065E37C
/* 8065E340  2C 03 00 00 */	cmpwi r3, 0
/* 8065E344  41 82 00 20 */	beq lbl_8065E364
/* 8065E348  48 00 00 34 */	b lbl_8065E37C
lbl_8065E34C:
/* 8065E34C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065E350  41 82 00 0C */	beq lbl_8065E35C
/* 8065E354  38 00 00 01 */	li r0, 1
/* 8065E358  48 00 00 28 */	b lbl_8065E380
lbl_8065E35C:
/* 8065E35C  38 00 00 02 */	li r0, 2
/* 8065E360  48 00 00 20 */	b lbl_8065E380
lbl_8065E364:
/* 8065E364  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065E368  41 82 00 0C */	beq lbl_8065E374
/* 8065E36C  38 00 00 05 */	li r0, 5
/* 8065E370  48 00 00 10 */	b lbl_8065E380
lbl_8065E374:
/* 8065E374  38 00 00 03 */	li r0, 3
/* 8065E378  48 00 00 08 */	b lbl_8065E380
lbl_8065E37C:
/* 8065E37C  38 00 00 04 */	li r0, 4
lbl_8065E380:
/* 8065E380  2C 00 00 01 */	cmpwi r0, 1
/* 8065E384  40 82 00 0C */	bne lbl_8065E390
/* 8065E388  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065E38C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065E390:
/* 8065E390  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8065E394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E398  40 80 03 0C */	bge lbl_8065E6A4
/* 8065E39C  88 7D 0C 10 */	lbz r3, 0xc10(r29)
/* 8065E3A0  38 03 00 01 */	addi r0, r3, 1
/* 8065E3A4  98 1D 0C 10 */	stb r0, 0xc10(r29)
/* 8065E3A8  48 00 02 FC */	b lbl_8065E6A4
lbl_8065E3AC:
/* 8065E3AC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8065E3B0  D0 1D 0C 20 */	stfs f0, 0xc20(r29)
/* 8065E3B4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8065E3B8  D0 1D 0C 24 */	stfs f0, 0xc24(r29)
/* 8065E3BC  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8065E3C0  D0 1D 0C 28 */	stfs f0, 0xc28(r29)
lbl_8065E3C4:
/* 8065E3C4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8065E3C8  38 9D 0C 20 */	addi r4, r29, 0xc20
/* 8065E3CC  4B C1 28 39 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8065E3D0  7C 64 1B 78 */	mr r4, r3
/* 8065E3D4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8065E3D8  38 A0 00 10 */	li r5, 0x10
/* 8065E3DC  38 C0 08 00 */	li r6, 0x800
/* 8065E3E0  38 E0 01 00 */	li r7, 0x100
/* 8065E3E4  4B C1 21 5D */	bl cLib_addCalcAngleS__FPsssss
/* 8065E3E8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8065E3EC  38 81 00 40 */	addi r4, r1, 0x40
/* 8065E3F0  4B CE 8F AD */	bl PSVECSquareDistance
/* 8065E3F4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065E3F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E3FC  40 81 00 58 */	ble lbl_8065E454
/* 8065E400  FC 00 08 34 */	frsqrte f0, f1
/* 8065E404  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065E408  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E40C  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065E410  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E414  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E418  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E41C  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E420  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E424  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E428  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E42C  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E430  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E434  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E438  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E43C  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E440  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E444  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E448  FC 21 00 32 */	fmul f1, f1, f0
/* 8065E44C  FC 20 08 18 */	frsp f1, f1
/* 8065E450  48 00 00 88 */	b lbl_8065E4D8
lbl_8065E454:
/* 8065E454  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065E458  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E45C  40 80 00 10 */	bge lbl_8065E46C
/* 8065E460  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065E464  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065E468  48 00 00 70 */	b lbl_8065E4D8
lbl_8065E46C:
/* 8065E46C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8065E470  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8065E474  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065E478  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065E47C  7C 03 00 00 */	cmpw r3, r0
/* 8065E480  41 82 00 14 */	beq lbl_8065E494
/* 8065E484  40 80 00 40 */	bge lbl_8065E4C4
/* 8065E488  2C 03 00 00 */	cmpwi r3, 0
/* 8065E48C  41 82 00 20 */	beq lbl_8065E4AC
/* 8065E490  48 00 00 34 */	b lbl_8065E4C4
lbl_8065E494:
/* 8065E494  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065E498  41 82 00 0C */	beq lbl_8065E4A4
/* 8065E49C  38 00 00 01 */	li r0, 1
/* 8065E4A0  48 00 00 28 */	b lbl_8065E4C8
lbl_8065E4A4:
/* 8065E4A4  38 00 00 02 */	li r0, 2
/* 8065E4A8  48 00 00 20 */	b lbl_8065E4C8
lbl_8065E4AC:
/* 8065E4AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065E4B0  41 82 00 0C */	beq lbl_8065E4BC
/* 8065E4B4  38 00 00 05 */	li r0, 5
/* 8065E4B8  48 00 00 10 */	b lbl_8065E4C8
lbl_8065E4BC:
/* 8065E4BC  38 00 00 03 */	li r0, 3
/* 8065E4C0  48 00 00 08 */	b lbl_8065E4C8
lbl_8065E4C4:
/* 8065E4C4  38 00 00 04 */	li r0, 4
lbl_8065E4C8:
/* 8065E4C8  2C 00 00 01 */	cmpwi r0, 1
/* 8065E4CC  40 82 00 0C */	bne lbl_8065E4D8
/* 8065E4D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065E4D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065E4D8:
/* 8065E4D8  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8065E4DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E4E0  40 80 01 A4 */	bge lbl_8065E684
/* 8065E4E4  88 7D 0C 10 */	lbz r3, 0xc10(r29)
/* 8065E4E8  38 03 00 01 */	addi r0, r3, 1
/* 8065E4EC  98 1D 0C 10 */	stb r0, 0xc10(r29)
/* 8065E4F0  48 00 01 94 */	b lbl_8065E684
lbl_8065E4F4:
/* 8065E4F4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8065E4F8  38 81 00 40 */	addi r4, r1, 0x40
/* 8065E4FC  4B C1 27 09 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8065E500  7C 64 1B 78 */	mr r4, r3
/* 8065E504  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8065E508  38 A0 00 10 */	li r5, 0x10
/* 8065E50C  38 C0 08 00 */	li r6, 0x800
/* 8065E510  38 E0 01 00 */	li r7, 0x100
/* 8065E514  4B C1 20 2D */	bl cLib_addCalcAngleS__FPsssss
/* 8065E518  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8065E51C  38 81 00 40 */	addi r4, r1, 0x40
/* 8065E520  4B CE 8E 7D */	bl PSVECSquareDistance
/* 8065E524  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065E528  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E52C  40 81 00 58 */	ble lbl_8065E584
/* 8065E530  FC 00 08 34 */	frsqrte f0, f1
/* 8065E534  C8 9F 00 68 */	lfd f4, 0x68(r31)
/* 8065E538  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E53C  C8 7F 00 70 */	lfd f3, 0x70(r31)
/* 8065E540  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E544  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E548  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E54C  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E550  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E554  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E558  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E55C  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E560  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E564  FC 44 00 32 */	fmul f2, f4, f0
/* 8065E568  FC 00 00 32 */	fmul f0, f0, f0
/* 8065E56C  FC 01 00 32 */	fmul f0, f1, f0
/* 8065E570  FC 03 00 28 */	fsub f0, f3, f0
/* 8065E574  FC 02 00 32 */	fmul f0, f2, f0
/* 8065E578  FC 21 00 32 */	fmul f1, f1, f0
/* 8065E57C  FC 20 08 18 */	frsp f1, f1
/* 8065E580  48 00 00 88 */	b lbl_8065E608
lbl_8065E584:
/* 8065E584  C8 1F 00 78 */	lfd f0, 0x78(r31)
/* 8065E588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E58C  40 80 00 10 */	bge lbl_8065E59C
/* 8065E590  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065E594  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8065E598  48 00 00 70 */	b lbl_8065E608
lbl_8065E59C:
/* 8065E59C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8065E5A0  80 81 00 08 */	lwz r4, 8(r1)
/* 8065E5A4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8065E5A8  3C 00 7F 80 */	lis r0, 0x7f80
/* 8065E5AC  7C 03 00 00 */	cmpw r3, r0
/* 8065E5B0  41 82 00 14 */	beq lbl_8065E5C4
/* 8065E5B4  40 80 00 40 */	bge lbl_8065E5F4
/* 8065E5B8  2C 03 00 00 */	cmpwi r3, 0
/* 8065E5BC  41 82 00 20 */	beq lbl_8065E5DC
/* 8065E5C0  48 00 00 34 */	b lbl_8065E5F4
lbl_8065E5C4:
/* 8065E5C4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065E5C8  41 82 00 0C */	beq lbl_8065E5D4
/* 8065E5CC  38 00 00 01 */	li r0, 1
/* 8065E5D0  48 00 00 28 */	b lbl_8065E5F8
lbl_8065E5D4:
/* 8065E5D4  38 00 00 02 */	li r0, 2
/* 8065E5D8  48 00 00 20 */	b lbl_8065E5F8
lbl_8065E5DC:
/* 8065E5DC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8065E5E0  41 82 00 0C */	beq lbl_8065E5EC
/* 8065E5E4  38 00 00 05 */	li r0, 5
/* 8065E5E8  48 00 00 10 */	b lbl_8065E5F8
lbl_8065E5EC:
/* 8065E5EC  38 00 00 03 */	li r0, 3
/* 8065E5F0  48 00 00 08 */	b lbl_8065E5F8
lbl_8065E5F4:
/* 8065E5F4  38 00 00 04 */	li r0, 4
lbl_8065E5F8:
/* 8065E5F8  2C 00 00 01 */	cmpwi r0, 1
/* 8065E5FC  40 82 00 0C */	bne lbl_8065E608
/* 8065E600  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8065E604  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8065E608:
/* 8065E608  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8065E60C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065E610  40 80 00 74 */	bge lbl_8065E684
/* 8065E614  88 7D 0C 10 */	lbz r3, 0xc10(r29)
/* 8065E618  38 03 00 01 */	addi r0, r3, 1
/* 8065E61C  98 1D 0C 10 */	stb r0, 0xc10(r29)
/* 8065E620  88 1D 0C 10 */	lbz r0, 0xc10(r29)
/* 8065E624  7C 03 07 74 */	extsb r3, r0
/* 8065E628  80 9D 0C 0C */	lwz r4, 0xc0c(r29)
/* 8065E62C  A0 04 00 00 */	lhz r0, 0(r4)
/* 8065E630  7C 03 00 00 */	cmpw r3, r0
/* 8065E634  41 80 00 50 */	blt lbl_8065E684
/* 8065E638  A0 04 00 02 */	lhz r0, 2(r4)
/* 8065E63C  7C 00 07 34 */	extsh r0, r0
/* 8065E640  2C 00 FF FF */	cmpwi r0, -1
/* 8065E644  41 82 00 30 */	beq lbl_8065E674
/* 8065E648  38 00 00 00 */	li r0, 0
/* 8065E64C  98 1D 0C 10 */	stb r0, 0xc10(r29)
/* 8065E650  80 7D 0C 0C */	lwz r3, 0xc0c(r29)
/* 8065E654  A0 63 00 02 */	lhz r3, 2(r3)
/* 8065E658  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8065E65C  7C 04 07 74 */	extsb r4, r0
/* 8065E660  4B 9F 31 8D */	bl dPath_GetRoomPath__Fii
/* 8065E664  90 7D 0C 0C */	stw r3, 0xc0c(r29)
/* 8065E668  38 00 00 06 */	li r0, 6
/* 8065E66C  98 1D 0C 9F */	stb r0, 0xc9f(r29)
/* 8065E670  48 00 00 14 */	b lbl_8065E684
lbl_8065E674:
/* 8065E674  38 00 00 07 */	li r0, 7
/* 8065E678  98 1D 0C 9F */	stb r0, 0xc9f(r29)
/* 8065E67C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 8065E680  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_8065E684:
/* 8065E684  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8065E688  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8065E68C  38 A0 00 08 */	li r5, 8
/* 8065E690  38 C0 04 00 */	li r6, 0x400
/* 8065E694  38 E0 01 00 */	li r7, 0x100
/* 8065E698  4B C1 1E A9 */	bl cLib_addCalcAngleS__FPsssss
/* 8065E69C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8065E6A0  B0 1D 0C 34 */	sth r0, 0xc34(r29)
lbl_8065E6A4:
/* 8065E6A4  39 61 00 60 */	addi r11, r1, 0x60
/* 8065E6A8  4B D0 3B 81 */	bl _restgpr_29
/* 8065E6AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8065E6B0  7C 08 03 A6 */	mtlr r0
/* 8065E6B4  38 21 00 60 */	addi r1, r1, 0x60
/* 8065E6B8  4E 80 00 20 */	blr 
