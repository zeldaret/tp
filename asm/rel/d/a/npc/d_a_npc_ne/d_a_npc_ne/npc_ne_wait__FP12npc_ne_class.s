lbl_80A89EF4:
/* 80A89EF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A89EF8  7C 08 02 A6 */	mflr r0
/* 80A89EFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A89F00  39 61 00 20 */	addi r11, r1, 0x20
/* 80A89F04  4B 8D 82 D8 */	b _savegpr_29
/* 80A89F08  7C 7E 1B 78 */	mr r30, r3
/* 80A89F0C  3C 60 80 A9 */	lis r3, lit_3990@ha
/* 80A89F10  3B E3 24 1C */	addi r31, r3, lit_3990@l
/* 80A89F14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A89F18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A89F1C  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 80A89F20  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A89F24  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A89F28  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80A89F2C  4B 7E 5B 54 */	b cLib_addCalc0__FPfff
/* 80A89F30  80 9E 05 E4 */	lwz r4, 0x5e4(r30)
/* 80A89F34  3C 60 80 A9 */	lis r3, stringBase0@ha
/* 80A89F38  38 03 25 D0 */	addi r0, r3, stringBase0@l
/* 80A89F3C  7C 04 00 40 */	cmplw r4, r0
/* 80A89F40  40 82 01 04 */	bne lbl_80A8A044
/* 80A89F44  A8 1E 06 46 */	lha r0, 0x646(r30)
/* 80A89F48  2C 00 00 01 */	cmpwi r0, 1
/* 80A89F4C  41 82 00 38 */	beq lbl_80A89F84
/* 80A89F50  40 80 00 10 */	bge lbl_80A89F60
/* 80A89F54  2C 00 00 00 */	cmpwi r0, 0
/* 80A89F58  40 80 00 14 */	bge lbl_80A89F6C
/* 80A89F5C  48 00 00 C8 */	b lbl_80A8A024
lbl_80A89F60:
/* 80A89F60  2C 00 00 03 */	cmpwi r0, 3
/* 80A89F64  40 80 00 C0 */	bge lbl_80A8A024
/* 80A89F68  48 00 00 A8 */	b lbl_80A8A010
lbl_80A89F6C:
/* 80A89F6C  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80A89F70  4B 7D D9 E4 */	b cM_rndF__Ff
/* 80A89F74  FC 00 08 1E */	fctiwz f0, f1
/* 80A89F78  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A89F7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A89F80  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_80A89F84:
/* 80A89F84  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A89F88  4B 7D D9 CC */	b cM_rndF__Ff
/* 80A89F8C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A89F90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A89F94  40 80 00 2C */	bge lbl_80A89FC0
/* 80A89F98  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80A89F9C  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A89FA0  41 82 00 44 */	beq lbl_80A89FE4
/* 80A89FA4  7F C3 F3 78 */	mr r3, r30
/* 80A89FA8  38 80 00 18 */	li r4, 0x18
/* 80A89FAC  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A89FB0  38 A0 00 02 */	li r5, 2
/* 80A89FB4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A89FB8  4B FF ED 5D */	bl anm_init__FP12npc_ne_classifUcf
/* 80A89FBC  48 00 00 28 */	b lbl_80A89FE4
lbl_80A89FC0:
/* 80A89FC0  80 1E 06 30 */	lwz r0, 0x630(r30)
/* 80A89FC4  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A89FC8  41 82 00 1C */	beq lbl_80A89FE4
/* 80A89FCC  7F C3 F3 78 */	mr r3, r30
/* 80A89FD0  38 80 00 13 */	li r4, 0x13
/* 80A89FD4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A89FD8  38 A0 00 00 */	li r5, 0
/* 80A89FDC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A89FE0  4B FF ED 35 */	bl anm_init__FP12npc_ne_classifUcf
lbl_80A89FE4:
/* 80A89FE4  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80A89FE8  4B 7D D9 6C */	b cM_rndF__Ff
/* 80A89FEC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80A89FF0  EC 00 08 2A */	fadds f0, f0, f1
/* 80A89FF4  FC 00 00 1E */	fctiwz f0, f0
/* 80A89FF8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A89FFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A8A000  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8A004  38 00 00 02 */	li r0, 2
/* 80A8A008  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8A00C  48 00 00 18 */	b lbl_80A8A024
lbl_80A8A010:
/* 80A8A010  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8A014  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A018  40 82 00 0C */	bne lbl_80A8A024
/* 80A8A01C  38 00 00 01 */	li r0, 1
/* 80A8A020  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8A024:
/* 80A8A024  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A8A028  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 80A8A02C  38 A0 00 04 */	li r5, 4
/* 80A8A030  38 C0 04 00 */	li r6, 0x400
/* 80A8A034  4B 7E 65 D4 */	b cLib_addCalcAngleS2__FPssss
/* 80A8A038  38 00 00 02 */	li r0, 2
/* 80A8A03C  98 1E 0C 08 */	stb r0, 0xc08(r30)
/* 80A8A040  48 00 01 DC */	b lbl_80A8A21C
lbl_80A8A044:
/* 80A8A044  38 00 00 01 */	li r0, 1
/* 80A8A048  98 1E 06 68 */	stb r0, 0x668(r30)
/* 80A8A04C  A8 1E 06 46 */	lha r0, 0x646(r30)
/* 80A8A050  2C 00 00 01 */	cmpwi r0, 1
/* 80A8A054  41 82 00 80 */	beq lbl_80A8A0D4
/* 80A8A058  40 80 00 10 */	bge lbl_80A8A068
/* 80A8A05C  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A060  40 80 00 14 */	bge lbl_80A8A074
/* 80A8A064  48 00 01 5C */	b lbl_80A8A1C0
lbl_80A8A068:
/* 80A8A068  2C 00 00 03 */	cmpwi r0, 3
/* 80A8A06C  40 80 01 54 */	bge lbl_80A8A1C0
/* 80A8A070  48 00 00 F4 */	b lbl_80A8A164
lbl_80A8A074:
/* 80A8A074  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80A8A078  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8A07C  7F C3 F3 78 */	mr r3, r30
/* 80A8A080  38 80 00 19 */	li r4, 0x19
/* 80A8A084  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8A088  38 A0 00 02 */	li r5, 2
/* 80A8A08C  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8A090  4B FF EC 85 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8A094  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8A098  38 03 00 01 */	addi r0, r3, 1
/* 80A8A09C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8A0A0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80A8A0A4  4B 7D D8 B0 */	b cM_rndF__Ff
/* 80A8A0A8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8A0AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8A0B0  40 80 00 18 */	bge lbl_80A8A0C8
/* 80A8A0B4  A8 7E 05 DC */	lha r3, 0x5dc(r30)
/* 80A8A0B8  3C 63 00 01 */	addis r3, r3, 1
/* 80A8A0BC  38 03 B0 00 */	addi r0, r3, -20480
/* 80A8A0C0  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
/* 80A8A0C4  48 00 00 10 */	b lbl_80A8A0D4
lbl_80A8A0C8:
/* 80A8A0C8  A8 7E 05 DC */	lha r3, 0x5dc(r30)
/* 80A8A0CC  38 03 50 00 */	addi r0, r3, 0x5000
/* 80A8A0D0  B0 1E 05 D0 */	sth r0, 0x5d0(r30)
lbl_80A8A0D4:
/* 80A8A0D4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80A8A0D8  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 80A8A0DC  38 A0 00 04 */	li r5, 4
/* 80A8A0E0  38 C0 04 00 */	li r6, 0x400
/* 80A8A0E4  4B 7E 65 24 */	b cLib_addCalcAngleS2__FPssss
/* 80A8A0E8  A8 7E 05 D0 */	lha r3, 0x5d0(r30)
/* 80A8A0EC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8A0F0  7C 03 00 50 */	subf r0, r3, r0
/* 80A8A0F4  7C 00 07 34 */	extsh r0, r0
/* 80A8A0F8  2C 00 02 00 */	cmpwi r0, 0x200
/* 80A8A0FC  40 80 00 C4 */	bge lbl_80A8A1C0
/* 80A8A100  2C 00 FE 00 */	cmpwi r0, -512
/* 80A8A104  40 81 00 BC */	ble lbl_80A8A1C0
/* 80A8A108  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8A10C  4B 7D D8 48 */	b cM_rndF__Ff
/* 80A8A110  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8A114  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A118  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8A11C  7F C3 F3 78 */	mr r3, r30
/* 80A8A120  38 80 00 18 */	li r4, 0x18
/* 80A8A124  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8A128  38 A0 00 02 */	li r5, 2
/* 80A8A12C  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8A130  4B FF EB E5 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8A134  A8 7E 06 46 */	lha r3, 0x646(r30)
/* 80A8A138  38 03 00 01 */	addi r0, r3, 1
/* 80A8A13C  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8A140  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80A8A144  4B 7D D8 10 */	b cM_rndF__Ff
/* 80A8A148  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8A14C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A150  FC 00 00 1E */	fctiwz f0, f0
/* 80A8A154  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A8A158  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A8A15C  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 80A8A160  48 00 00 60 */	b lbl_80A8A1C0
lbl_80A8A164:
/* 80A8A164  A8 7E 05 DC */	lha r3, 0x5dc(r30)
/* 80A8A168  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80A8A16C  7C 63 00 50 */	subf r3, r3, r0
/* 80A8A170  3C 63 00 01 */	addis r3, r3, 1
/* 80A8A174  38 03 80 00 */	addi r0, r3, -32768
/* 80A8A178  7C 00 07 34 */	extsh r0, r0
/* 80A8A17C  2C 00 08 00 */	cmpwi r0, 0x800
/* 80A8A180  40 80 00 14 */	bge lbl_80A8A194
/* 80A8A184  2C 00 F8 00 */	cmpwi r0, -2048
/* 80A8A188  40 81 00 0C */	ble lbl_80A8A194
/* 80A8A18C  38 00 00 00 */	li r0, 0
/* 80A8A190  B0 1E 06 46 */	sth r0, 0x646(r30)
lbl_80A8A194:
/* 80A8A194  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 80A8A198  2C 00 00 01 */	cmpwi r0, 1
/* 80A8A19C  40 82 00 24 */	bne lbl_80A8A1C0
/* 80A8A1A0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8A1A4  D0 1E 06 38 */	stfs f0, 0x638(r30)
/* 80A8A1A8  7F C3 F3 78 */	mr r3, r30
/* 80A8A1AC  38 80 00 13 */	li r4, 0x13
/* 80A8A1B0  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A8A1B4  38 A0 00 00 */	li r5, 0
/* 80A8A1B8  C0 5E 06 38 */	lfs f2, 0x638(r30)
/* 80A8A1BC  4B FF EB 59 */	bl anm_init__FP12npc_ne_classifUcf
lbl_80A8A1C0:
/* 80A8A1C0  A8 1E 06 40 */	lha r0, 0x640(r30)
/* 80A8A1C4  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80A8A1C8  40 82 00 54 */	bne lbl_80A8A21C
/* 80A8A1CC  7F C3 F3 78 */	mr r3, r30
/* 80A8A1D0  7F A4 EB 78 */	mr r4, r29
/* 80A8A1D4  4B FF EF C9 */	bl other_bg_check__FP10fopAc_ac_cP10fopAc_ac_c
/* 80A8A1D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A8A1DC  40 82 00 40 */	bne lbl_80A8A21C
/* 80A8A1E0  88 1E 07 00 */	lbz r0, 0x700(r30)
/* 80A8A1E4  7C 00 07 75 */	extsb. r0, r0
/* 80A8A1E8  41 82 00 14 */	beq lbl_80A8A1FC
/* 80A8A1EC  C0 3E 05 D8 */	lfs f1, 0x5d8(r30)
/* 80A8A1F0  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80A8A1F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8A1F8  40 80 00 24 */	bge lbl_80A8A21C
lbl_80A8A1FC:
/* 80A8A1FC  38 00 00 01 */	li r0, 1
/* 80A8A200  B0 1E 06 42 */	sth r0, 0x642(r30)
/* 80A8A204  38 00 00 00 */	li r0, 0
/* 80A8A208  B0 1E 06 46 */	sth r0, 0x646(r30)
/* 80A8A20C  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80A8A210  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 80A8A214  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 80A8A218  B0 1E 06 4C */	sth r0, 0x64c(r30)
lbl_80A8A21C:
/* 80A8A21C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A8A220  4B 8D 80 08 */	b _restgpr_29
/* 80A8A224  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A8A228  7C 08 03 A6 */	mtlr r0
/* 80A8A22C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A8A230  4E 80 00 20 */	blr 
