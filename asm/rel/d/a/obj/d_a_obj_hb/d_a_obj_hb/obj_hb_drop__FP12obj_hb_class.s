lbl_80C19DA8:
/* 80C19DA8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C19DAC  7C 08 02 A6 */	mflr r0
/* 80C19DB0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C19DB4  39 61 00 60 */	addi r11, r1, 0x60
/* 80C19DB8  4B 74 84 25 */	bl _savegpr_29
/* 80C19DBC  7C 7E 1B 78 */	mr r30, r3
/* 80C19DC0  3C 60 80 C2 */	lis r3, lit_3665@ha /* 0x80C1B600@ha */
/* 80C19DC4  3B E3 B6 00 */	addi r31, r3, lit_3665@l /* 0x80C1B600@l */
/* 80C19DC8  38 7E 06 AC */	addi r3, r30, 0x6ac
/* 80C19DCC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C19DD0  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 80C19DD4  4B 65 5C AD */	bl cLib_addCalc0__FPfff
/* 80C19DD8  A8 1E 06 54 */	lha r0, 0x654(r30)
/* 80C19DDC  2C 00 00 05 */	cmpwi r0, 5
/* 80C19DE0  41 82 01 D4 */	beq lbl_80C19FB4
/* 80C19DE4  40 80 01 F8 */	bge lbl_80C19FDC
/* 80C19DE8  2C 00 00 00 */	cmpwi r0, 0
/* 80C19DEC  41 82 00 0C */	beq lbl_80C19DF8
/* 80C19DF0  40 80 00 3C */	bge lbl_80C19E2C
/* 80C19DF4  48 00 01 E8 */	b lbl_80C19FDC
lbl_80C19DF8:
/* 80C19DF8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C19DFC  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C19E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C19E04  4C 41 13 82 */	cror 2, 1, 2
/* 80C19E08  40 82 00 24 */	bne lbl_80C19E2C
/* 80C19E0C  A8 1E 06 7E */	lha r0, 0x67e(r30)
/* 80C19E10  2C 00 00 00 */	cmpwi r0, 0
/* 80C19E14  40 82 00 10 */	bne lbl_80C19E24
/* 80C19E18  38 00 0F A0 */	li r0, 0xfa0
/* 80C19E1C  B0 1E 06 84 */	sth r0, 0x684(r30)
/* 80C19E20  48 00 00 0C */	b lbl_80C19E2C
lbl_80C19E24:
/* 80C19E24  38 00 F0 60 */	li r0, -4000
/* 80C19E28  B0 1E 06 84 */	sth r0, 0x684(r30)
lbl_80C19E2C:
/* 80C19E2C  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 80C19E30  2C 00 00 00 */	cmpwi r0, 0
/* 80C19E34  40 82 00 B8 */	bne lbl_80C19EEC
/* 80C19E38  80 1E 07 24 */	lwz r0, 0x724(r30)
/* 80C19E3C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80C19E40  41 82 00 AC */	beq lbl_80C19EEC
/* 80C19E44  7F C3 F3 78 */	mr r3, r30
/* 80C19E48  4B FF FA 45 */	bl wall_angle_get__FP12obj_hb_class
/* 80C19E4C  7C 60 07 34 */	extsh r0, r3
/* 80C19E50  2C 00 00 23 */	cmpwi r0, 0x23
/* 80C19E54  41 82 00 98 */	beq lbl_80C19EEC
/* 80C19E58  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C19E5C  7C 03 00 50 */	subf r0, r3, r0
/* 80C19E60  7C 03 07 34 */	extsh r3, r0
/* 80C19E64  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80C19E68  C8 3F 00 B0 */	lfd f1, 0xb0(r31)
/* 80C19E6C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80C19E70  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C19E74  3C 00 43 30 */	lis r0, 0x4330
/* 80C19E78  90 01 00 40 */	stw r0, 0x40(r1)
/* 80C19E7C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80C19E80  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C19E84  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C19E88  FC 00 00 1E */	fctiwz f0, f0
/* 80C19E8C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C19E90  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C19E94  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 80C19E98  A8 BE 04 DE */	lha r5, 0x4de(r30)
/* 80C19E9C  54 64 08 3C */	slwi r4, r3, 1
/* 80C19EA0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80C19EA4  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80C19EA8  7C 04 00 50 */	subf r0, r4, r0
/* 80C19EAC  7C 00 07 34 */	extsh r0, r0
/* 80C19EB0  7C 05 02 14 */	add r0, r5, r0
/* 80C19EB4  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80C19EB8  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C19EBC  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C19EC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C19EC4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C19EC8  38 00 00 0A */	li r0, 0xa
/* 80C19ECC  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 80C19ED0  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C19ED4  3C 80 00 04 */	lis r4, 4
/* 80C19ED8  38 A0 00 29 */	li r5, 0x29
/* 80C19EDC  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80C19EE0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80C19EE4  7D 89 03 A6 */	mtctr r12
/* 80C19EE8  4E 80 04 21 */	bctrl 
lbl_80C19EEC:
/* 80C19EEC  80 1E 07 24 */	lwz r0, 0x724(r30)
/* 80C19EF0  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C19EF4  41 82 00 E8 */	beq lbl_80C19FDC
/* 80C19EF8  A8 7E 06 54 */	lha r3, 0x654(r30)
/* 80C19EFC  2C 03 00 04 */	cmpwi r3, 4
/* 80C19F00  40 80 00 0C */	bge lbl_80C19F0C
/* 80C19F04  38 03 00 01 */	addi r0, r3, 1
/* 80C19F08  B0 1E 06 54 */	sth r0, 0x654(r30)
lbl_80C19F0C:
/* 80C19F0C  C0 3E 06 B4 */	lfs f1, 0x6b4(r30)
/* 80C19F10  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C19F14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C19F18  40 80 00 90 */	bge lbl_80C19FA8
/* 80C19F1C  38 7E 0A 68 */	addi r3, r30, 0xa68
/* 80C19F20  38 9E 0A 6C */	addi r4, r30, 0xa6c
/* 80C19F24  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C19F28  38 DE 04 E4 */	addi r6, r30, 0x4e4
/* 80C19F2C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C19F30  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C19F34  39 00 00 01 */	li r8, 1
/* 80C19F38  4B 40 30 E9 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80C19F3C  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 80C19F40  3C 80 00 04 */	lis r4, 4
/* 80C19F44  38 A0 00 29 */	li r5, 0x29
/* 80C19F48  81 9E 05 C0 */	lwz r12, 0x5c0(r30)
/* 80C19F4C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80C19F50  7D 89 03 A6 */	mtctr r12
/* 80C19F54  4E 80 04 21 */	bctrl 
/* 80C19F58  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C19F5C  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 80C19F60  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C19F64  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C19F68  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C19F6C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80C19F70  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C19F74  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C19F78  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C19F7C  D0 1E 06 88 */	stfs f0, 0x688(r30)
/* 80C19F80  A8 1E 06 90 */	lha r0, 0x690(r30)
/* 80C19F84  2C 00 00 00 */	cmpwi r0, 0
/* 80C19F88  40 82 00 54 */	bne lbl_80C19FDC
/* 80C19F8C  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80C19F90  4B 64 D9 FD */	bl cM_rndFX__Ff
/* 80C19F94  FC 00 08 1E */	fctiwz f0, f1
/* 80C19F98  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C19F9C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C19FA0  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 80C19FA4  48 00 00 38 */	b lbl_80C19FDC
lbl_80C19FA8:
/* 80C19FA8  38 00 00 05 */	li r0, 5
/* 80C19FAC  B0 1E 06 54 */	sth r0, 0x654(r30)
/* 80C19FB0  48 00 00 2C */	b lbl_80C19FDC
lbl_80C19FB4:
/* 80C19FB4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C19FB8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C19FBC  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80C19FC0  4B 65 5A C1 */	bl cLib_addCalc0__FPfff
/* 80C19FC4  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C19FC8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C19FCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C19FD0  40 80 00 0C */	bge lbl_80C19FDC
/* 80C19FD4  38 00 00 00 */	li r0, 0
/* 80C19FD8  B0 1E 06 54 */	sth r0, 0x654(r30)
lbl_80C19FDC:
/* 80C19FDC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C19FE0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C19FE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C19FE8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80C19FEC  4B 3F 23 F1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C19FF0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C19FF4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C19FF8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C19FFC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80C1A000  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80C1A004  38 61 00 34 */	addi r3, r1, 0x34
/* 80C1A008  38 81 00 28 */	addi r4, r1, 0x28
/* 80C1A00C  4B 65 6E E1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80C1A010  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C1A014  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80C1A018  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C1A01C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80C1A020  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80C1A024  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80C1A028  EC 01 00 2A */	fadds f0, f1, f0
/* 80C1A02C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C1A030  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80C1A034  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80C1A038  EC 01 00 2A */	fadds f0, f1, f0
/* 80C1A03C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C1A040  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C1A044  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80C1A048  EC 01 00 2A */	fadds f0, f1, f0
/* 80C1A04C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C1A050  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80C1A054  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80C1A058  EC 01 00 2A */	fadds f0, f1, f0
/* 80C1A05C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80C1A060  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C1A064  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C1A068  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C1A06C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C1A070  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C1A074  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C1A078  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C1A07C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80C1A080  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C1A084  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80C1A088  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C1A08C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80C1A090  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80C1A094  60 00 00 10 */	ori r0, r0, 0x10
/* 80C1A098  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80C1A09C  38 00 00 07 */	li r0, 7
/* 80C1A0A0  98 1E 05 48 */	stb r0, 0x548(r30)
/* 80C1A0A4  A8 7E 06 78 */	lha r3, 0x678(r30)
/* 80C1A0A8  A8 1E 06 90 */	lha r0, 0x690(r30)
/* 80C1A0AC  7C 03 02 14 */	add r0, r3, r0
/* 80C1A0B0  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 80C1A0B4  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C1A0B8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C1A0BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1A0C0  4C 41 13 82 */	cror 2, 1, 2
/* 80C1A0C4  40 82 01 F4 */	bne lbl_80C1A2B8
/* 80C1A0C8  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80C1A0CC  60 00 00 01 */	ori r0, r0, 1
/* 80C1A0D0  90 1E 09 0C */	stw r0, 0x90c(r30)
/* 80C1A0D4  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80C1A0D8  54 00 07 B6 */	rlwinm r0, r0, 0, 0x1e, 0x1b
/* 80C1A0DC  90 1E 09 0C */	stw r0, 0x90c(r30)
/* 80C1A0E0  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80C1A0E4  60 00 00 02 */	ori r0, r0, 2
/* 80C1A0E8  90 1E 09 0C */	stw r0, 0x90c(r30)
/* 80C1A0EC  38 7E 0A 30 */	addi r3, r30, 0xa30
/* 80C1A0F0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C1A0F4  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80C1A0F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C1A0FC  4B 65 56 0D */	bl SetR__8cM3dGSphFf
/* 80C1A100  38 00 00 01 */	li r0, 1
/* 80C1A104  98 1E 09 82 */	stb r0, 0x982(r30)
/* 80C1A108  A8 1E 06 74 */	lha r0, 0x674(r30)
/* 80C1A10C  2C 00 00 00 */	cmpwi r0, 0
/* 80C1A110  40 82 00 2C */	bne lbl_80C1A13C
/* 80C1A114  38 7E 09 0C */	addi r3, r30, 0x90c
/* 80C1A118  4B 46 A1 A9 */	bl ChkAtHit__12dCcD_GObjInfFv
/* 80C1A11C  28 03 00 00 */	cmplwi r3, 0
/* 80C1A120  41 82 00 1C */	beq lbl_80C1A13C
/* 80C1A124  38 00 00 04 */	li r0, 4
/* 80C1A128  B0 1E 06 74 */	sth r0, 0x674(r30)
/* 80C1A12C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C1A130  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80C1A134  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C1A138  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80C1A13C:
/* 80C1A13C  80 1E 06 9C */	lwz r0, 0x69c(r30)
/* 80C1A140  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C1A144  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80C1A148  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80C1A14C  38 81 00 10 */	addi r4, r1, 0x10
/* 80C1A150  4B 3F F6 A9 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C1A154  7C 7D 1B 79 */	or. r29, r3, r3
/* 80C1A158  41 82 01 6C */	beq lbl_80C1A2C4
/* 80C1A15C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C1A160  38 9D 05 38 */	addi r4, r29, 0x538
/* 80C1A164  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C1A168  4B 64 C9 CD */	bl __mi__4cXyzCFRC3Vec
/* 80C1A16C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80C1A170  4B 72 CF C9 */	bl PSVECSquareMag
/* 80C1A174  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C1A178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1A17C  40 81 00 58 */	ble lbl_80C1A1D4
/* 80C1A180  FC 00 08 34 */	frsqrte f0, f1
/* 80C1A184  C8 9F 00 88 */	lfd f4, 0x88(r31)
/* 80C1A188  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1A18C  C8 7F 00 90 */	lfd f3, 0x90(r31)
/* 80C1A190  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1A194  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1A198  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1A19C  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1A1A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1A1A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1A1A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1A1AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1A1B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1A1B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1A1B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1A1BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1A1C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1A1C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1A1C8  FC 21 00 32 */	fmul f1, f1, f0
/* 80C1A1CC  FC 20 08 18 */	frsp f1, f1
/* 80C1A1D0  48 00 00 88 */	b lbl_80C1A258
lbl_80C1A1D4:
/* 80C1A1D4  C8 1F 00 98 */	lfd f0, 0x98(r31)
/* 80C1A1D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1A1DC  40 80 00 10 */	bge lbl_80C1A1EC
/* 80C1A1E0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C1A1E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C1A1E8  48 00 00 70 */	b lbl_80C1A258
lbl_80C1A1EC:
/* 80C1A1EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80C1A1F0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80C1A1F4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C1A1F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C1A1FC  7C 03 00 00 */	cmpw r3, r0
/* 80C1A200  41 82 00 14 */	beq lbl_80C1A214
/* 80C1A204  40 80 00 40 */	bge lbl_80C1A244
/* 80C1A208  2C 03 00 00 */	cmpwi r3, 0
/* 80C1A20C  41 82 00 20 */	beq lbl_80C1A22C
/* 80C1A210  48 00 00 34 */	b lbl_80C1A244
lbl_80C1A214:
/* 80C1A214  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C1A218  41 82 00 0C */	beq lbl_80C1A224
/* 80C1A21C  38 00 00 01 */	li r0, 1
/* 80C1A220  48 00 00 28 */	b lbl_80C1A248
lbl_80C1A224:
/* 80C1A224  38 00 00 02 */	li r0, 2
/* 80C1A228  48 00 00 20 */	b lbl_80C1A248
lbl_80C1A22C:
/* 80C1A22C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C1A230  41 82 00 0C */	beq lbl_80C1A23C
/* 80C1A234  38 00 00 05 */	li r0, 5
/* 80C1A238  48 00 00 10 */	b lbl_80C1A248
lbl_80C1A23C:
/* 80C1A23C  38 00 00 03 */	li r0, 3
/* 80C1A240  48 00 00 08 */	b lbl_80C1A248
lbl_80C1A244:
/* 80C1A244  38 00 00 04 */	li r0, 4
lbl_80C1A248:
/* 80C1A248  2C 00 00 01 */	cmpwi r0, 1
/* 80C1A24C  40 82 00 0C */	bne lbl_80C1A258
/* 80C1A250  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C1A254  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C1A258:
/* 80C1A258  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80C1A25C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1A260  40 80 00 64 */	bge lbl_80C1A2C4
/* 80C1A264  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C1A268  C0 3D 05 38 */	lfs f1, 0x538(r29)
/* 80C1A26C  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 80C1A270  C0 7E 06 A0 */	lfs f3, 0x6a0(r30)
/* 80C1A274  4B 65 57 C9 */	bl cLib_addCalc2__FPffff
/* 80C1A278  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80C1A27C  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80C1A280  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 80C1A284  C0 7E 06 A0 */	lfs f3, 0x6a0(r30)
/* 80C1A288  4B 65 57 B5 */	bl cLib_addCalc2__FPffff
/* 80C1A28C  38 7E 04 D8 */	addi r3, r30, 0x4d8
/* 80C1A290  C0 3D 05 40 */	lfs f1, 0x540(r29)
/* 80C1A294  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 80C1A298  C0 7E 06 A0 */	lfs f3, 0x6a0(r30)
/* 80C1A29C  4B 65 57 A1 */	bl cLib_addCalc2__FPffff
/* 80C1A2A0  38 7E 06 A0 */	addi r3, r30, 0x6a0
/* 80C1A2A4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80C1A2A8  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80C1A2AC  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 80C1A2B0  4B 65 57 8D */	bl cLib_addCalc2__FPffff
/* 80C1A2B4  48 00 00 10 */	b lbl_80C1A2C4
lbl_80C1A2B8:
/* 80C1A2B8  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80C1A2BC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C1A2C0  90 1E 09 0C */	stw r0, 0x90c(r30)
lbl_80C1A2C4:
/* 80C1A2C4  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80C1A2C8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C1A2CC  41 82 00 34 */	beq lbl_80C1A300
/* 80C1A2D0  38 00 00 03 */	li r0, 3
/* 80C1A2D4  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80C1A2D8  38 60 00 00 */	li r3, 0
/* 80C1A2DC  B0 7E 06 54 */	sth r3, 0x654(r30)
/* 80C1A2E0  B0 7E 06 8E */	sth r3, 0x68e(r30)
/* 80C1A2E4  B0 7E 06 8C */	sth r3, 0x68c(r30)
/* 80C1A2E8  B0 7E 06 90 */	sth r3, 0x690(r30)
/* 80C1A2EC  B0 7E 06 7C */	sth r3, 0x67c(r30)
/* 80C1A2F0  80 1E 09 0C */	lwz r0, 0x90c(r30)
/* 80C1A2F4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80C1A2F8  90 1E 09 0C */	stw r0, 0x90c(r30)
/* 80C1A2FC  98 7E 06 B0 */	stb r3, 0x6b0(r30)
lbl_80C1A300:
/* 80C1A300  7F C3 F3 78 */	mr r3, r30
/* 80C1A304  38 81 00 14 */	addi r4, r1, 0x14
/* 80C1A308  4B FF F8 E5 */	bl getGroundAngle__FP10fopAc_ac_cP5csXyz
/* 80C1A30C  2C 03 00 00 */	cmpwi r3, 0
/* 80C1A310  41 82 01 68 */	beq lbl_80C1A478
/* 80C1A314  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C1A318  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C1A31C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1A320  A8 81 00 14 */	lha r4, 0x14(r1)
/* 80C1A324  4B 3F 20 21 */	bl mDoMtx_XrotS__FPA4_fs
/* 80C1A328  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C1A32C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80C1A330  80 63 00 00 */	lwz r3, 0(r3)
/* 80C1A334  A8 81 00 18 */	lha r4, 0x18(r1)
/* 80C1A338  4B 3F 21 95 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C1A33C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C1A340  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C1A344  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80C1A348  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C1A34C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C1A350  38 61 00 34 */	addi r3, r1, 0x34
/* 80C1A354  38 81 00 28 */	addi r4, r1, 0x28
/* 80C1A358  4B 65 6B 95 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80C1A35C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C1A360  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C1A364  38 61 00 28 */	addi r3, r1, 0x28
/* 80C1A368  4B 72 CD D1 */	bl PSVECSquareMag
/* 80C1A36C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C1A370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1A374  40 81 00 58 */	ble lbl_80C1A3CC
/* 80C1A378  FC 00 08 34 */	frsqrte f0, f1
/* 80C1A37C  C8 9F 00 88 */	lfd f4, 0x88(r31)
/* 80C1A380  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1A384  C8 7F 00 90 */	lfd f3, 0x90(r31)
/* 80C1A388  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1A38C  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1A390  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1A394  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1A398  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1A39C  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1A3A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1A3A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1A3A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1A3AC  FC 44 00 32 */	fmul f2, f4, f0
/* 80C1A3B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80C1A3B4  FC 01 00 32 */	fmul f0, f1, f0
/* 80C1A3B8  FC 03 00 28 */	fsub f0, f3, f0
/* 80C1A3BC  FC 02 00 32 */	fmul f0, f2, f0
/* 80C1A3C0  FC 21 00 32 */	fmul f1, f1, f0
/* 80C1A3C4  FC 20 08 18 */	frsp f1, f1
/* 80C1A3C8  48 00 00 88 */	b lbl_80C1A450
lbl_80C1A3CC:
/* 80C1A3CC  C8 1F 00 98 */	lfd f0, 0x98(r31)
/* 80C1A3D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1A3D4  40 80 00 10 */	bge lbl_80C1A3E4
/* 80C1A3D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C1A3DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80C1A3E0  48 00 00 70 */	b lbl_80C1A450
lbl_80C1A3E4:
/* 80C1A3E4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C1A3E8  80 81 00 08 */	lwz r4, 8(r1)
/* 80C1A3EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80C1A3F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80C1A3F4  7C 03 00 00 */	cmpw r3, r0
/* 80C1A3F8  41 82 00 14 */	beq lbl_80C1A40C
/* 80C1A3FC  40 80 00 40 */	bge lbl_80C1A43C
/* 80C1A400  2C 03 00 00 */	cmpwi r3, 0
/* 80C1A404  41 82 00 20 */	beq lbl_80C1A424
/* 80C1A408  48 00 00 34 */	b lbl_80C1A43C
lbl_80C1A40C:
/* 80C1A40C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C1A410  41 82 00 0C */	beq lbl_80C1A41C
/* 80C1A414  38 00 00 01 */	li r0, 1
/* 80C1A418  48 00 00 28 */	b lbl_80C1A440
lbl_80C1A41C:
/* 80C1A41C  38 00 00 02 */	li r0, 2
/* 80C1A420  48 00 00 20 */	b lbl_80C1A440
lbl_80C1A424:
/* 80C1A424  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80C1A428  41 82 00 0C */	beq lbl_80C1A434
/* 80C1A42C  38 00 00 05 */	li r0, 5
/* 80C1A430  48 00 00 10 */	b lbl_80C1A440
lbl_80C1A434:
/* 80C1A434  38 00 00 03 */	li r0, 3
/* 80C1A438  48 00 00 08 */	b lbl_80C1A440
lbl_80C1A43C:
/* 80C1A43C  38 00 00 04 */	li r0, 4
lbl_80C1A440:
/* 80C1A440  2C 00 00 01 */	cmpwi r0, 1
/* 80C1A444  40 82 00 0C */	bne lbl_80C1A450
/* 80C1A448  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80C1A44C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80C1A450:
/* 80C1A450  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80C1A454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1A458  4C 41 13 82 */	cror 2, 1, 2
/* 80C1A45C  40 82 00 1C */	bne lbl_80C1A478
/* 80C1A460  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C1A464  38 81 00 28 */	addi r4, r1, 0x28
/* 80C1A468  7C 65 1B 78 */	mr r5, r3
/* 80C1A46C  4B 72 CC 25 */	bl PSVECAdd
/* 80C1A470  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C1A474  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_80C1A478:
/* 80C1A478  39 61 00 60 */	addi r11, r1, 0x60
/* 80C1A47C  4B 74 7D AD */	bl _restgpr_29
/* 80C1A480  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C1A484  7C 08 03 A6 */	mtlr r0
/* 80C1A488  38 21 00 60 */	addi r1, r1, 0x60
/* 80C1A48C  4E 80 00 20 */	blr 
