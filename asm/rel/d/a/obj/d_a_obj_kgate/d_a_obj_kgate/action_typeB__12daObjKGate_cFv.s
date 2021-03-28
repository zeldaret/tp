lbl_80589F40:
/* 80589F40  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80589F44  7C 08 02 A6 */	mflr r0
/* 80589F48  90 01 00 64 */	stw r0, 0x64(r1)
/* 80589F4C  39 61 00 60 */	addi r11, r1, 0x60
/* 80589F50  4B DD 82 78 */	b _savegpr_24
/* 80589F54  7C 7D 1B 78 */	mr r29, r3
/* 80589F58  3C 60 80 59 */	lis r3, l_gateBmdIdx@ha
/* 80589F5C  3B E3 AB 30 */	addi r31, r3, l_gateBmdIdx@l
/* 80589F60  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80589F64  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 80589F68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80589F6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80589F70  7F C4 F3 78 */	mr r4, r30
/* 80589F74  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80589F78  7C 05 07 74 */	extsb r5, r0
/* 80589F7C  4B AA B3 E4 */	b isSwitch__10dSv_info_cCFii
/* 80589F80  2C 03 00 00 */	cmpwi r3, 0
/* 80589F84  40 82 02 14 */	bne lbl_8058A198
/* 80589F88  7F A3 EB 78 */	mr r3, r29
/* 80589F8C  38 81 00 20 */	addi r4, r1, 0x20
/* 80589F90  38 A1 00 14 */	addi r5, r1, 0x14
/* 80589F94  4B FF ED 6D */	bl checkAreaL__12daObjKGate_cFPC4cXyzPC4cXyz
/* 80589F98  7C 7B 1B 78 */	mr r27, r3
/* 80589F9C  7F A3 EB 78 */	mr r3, r29
/* 80589FA0  38 81 00 20 */	addi r4, r1, 0x20
/* 80589FA4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80589FA8  4B FF F1 2D */	bl checkAreaR__12daObjKGate_cFPC4cXyzPC4cXyz
/* 80589FAC  2C 1B 00 00 */	cmpwi r27, 0
/* 80589FB0  40 82 00 0C */	bne lbl_80589FBC
/* 80589FB4  2C 03 00 00 */	cmpwi r3, 0
/* 80589FB8  41 82 00 60 */	beq lbl_8058A018
lbl_80589FBC:
/* 80589FBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80589FC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80589FC4  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80589FC8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80589FCC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80589FD0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80589FD4  41 82 00 2C */	beq lbl_8058A000
/* 80589FD8  80 04 05 84 */	lwz r0, 0x584(r4)
/* 80589FDC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80589FE0  40 82 00 10 */	bne lbl_80589FF0
/* 80589FE4  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80589FE8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80589FEC  41 82 00 2C */	beq lbl_8058A018
lbl_80589FF0:
/* 80589FF0  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 80589FF4  D0 1D 0B 98 */	stfs f0, 0xb98(r29)
/* 80589FF8  D0 1D 0B 94 */	stfs f0, 0xb94(r29)
/* 80589FFC  48 00 00 1C */	b lbl_8058A018
lbl_8058A000:
/* 8058A000  80 04 05 80 */	lwz r0, 0x580(r4)
/* 8058A004  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8058A008  41 82 00 10 */	beq lbl_8058A018
/* 8058A00C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 8058A010  D0 1D 0B 98 */	stfs f0, 0xb98(r29)
/* 8058A014  D0 1D 0B 94 */	stfs f0, 0xb94(r29)
lbl_8058A018:
/* 8058A018  80 1D 0B 9C */	lwz r0, 0xb9c(r29)
/* 8058A01C  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 8058A020  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8058A024  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8058A028  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8058A02C  7C 23 04 2E */	lfsx f1, r3, r0
/* 8058A030  C0 1D 0B 94 */	lfs f0, 0xb94(r29)
/* 8058A034  EC 00 00 72 */	fmuls f0, f0, f1
/* 8058A038  FC 00 00 1E */	fctiwz f0, f0
/* 8058A03C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 8058A040  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058A044  B0 1D 0B 7A */	sth r0, 0xb7a(r29)
/* 8058A048  80 1D 0B 9C */	lwz r0, 0xb9c(r29)
/* 8058A04C  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 8058A050  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8058A054  7C 03 04 2E */	lfsx f0, r3, r0
/* 8058A058  C0 3D 0B 98 */	lfs f1, 0xb98(r29)
/* 8058A05C  FC 00 00 50 */	fneg f0, f0
/* 8058A060  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058A064  FC 00 00 1E */	fctiwz f0, f0
/* 8058A068  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8058A06C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8058A070  B0 1D 0B 78 */	sth r0, 0xb78(r29)
/* 8058A074  38 7D 0B 94 */	addi r3, r29, 0xb94
/* 8058A078  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 8058A07C  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 8058A080  4B CE 5A 00 */	b cLib_addCalc0__FPfff
/* 8058A084  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 8058A088  C0 3F 01 40 */	lfs f1, 0x140(r31)
/* 8058A08C  C0 5F 01 44 */	lfs f2, 0x144(r31)
/* 8058A090  4B CE 59 F0 */	b cLib_addCalc0__FPfff
/* 8058A094  3B 20 00 00 */	li r25, 0
/* 8058A098  3B 80 00 00 */	li r28, 0
lbl_8058A09C:
/* 8058A09C  3B 5C 05 F4 */	addi r26, r28, 0x5f4
/* 8058A0A0  7F 5D D2 14 */	add r26, r29, r26
/* 8058A0A4  7F 43 D3 78 */	mr r3, r26
/* 8058A0A8  4B AF A3 B8 */	b ChkTgHit__12dCcD_GObjInfFv
/* 8058A0AC  28 03 00 00 */	cmplwi r3, 0
/* 8058A0B0  41 82 00 44 */	beq lbl_8058A0F4
/* 8058A0B4  7F 43 D3 78 */	mr r3, r26
/* 8058A0B8  4B AF A4 40 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8058A0BC  28 03 00 00 */	cmplwi r3, 0
/* 8058A0C0  41 82 00 34 */	beq lbl_8058A0F4
/* 8058A0C4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8058A0C8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8058A0CC  41 82 00 28 */	beq lbl_8058A0F4
/* 8058A0D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058A0D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058A0D8  7F C4 F3 78 */	mr r4, r30
/* 8058A0DC  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8058A0E0  7C 05 07 74 */	extsb r5, r0
/* 8058A0E4  4B AA B1 1C */	b onSwitch__10dSv_info_cFii
/* 8058A0E8  7F A3 EB 78 */	mr r3, r29
/* 8058A0EC  4B A8 FB 90 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8058A0F0  48 00 00 14 */	b lbl_8058A104
lbl_8058A0F4:
/* 8058A0F4  3B 39 00 01 */	addi r25, r25, 1
/* 8058A0F8  2C 19 00 04 */	cmpwi r25, 4
/* 8058A0FC  3B 9C 01 3C */	addi r28, r28, 0x13c
/* 8058A100  41 80 FF 9C */	blt lbl_8058A09C
lbl_8058A104:
/* 8058A104  3B 00 00 00 */	li r24, 0
/* 8058A108  3B C0 00 00 */	li r30, 0
/* 8058A10C  3B 80 00 00 */	li r28, 0
/* 8058A110  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058A114  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058A118  3B 43 23 3C */	addi r26, r3, 0x233c
/* 8058A11C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8058A120  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
lbl_8058A124:
/* 8058A124  38 7F 01 58 */	addi r3, r31, 0x158
/* 8058A128  7C 63 E2 14 */	add r3, r3, r28
/* 8058A12C  C0 03 00 00 */	lfs f0, 0(r3)
/* 8058A130  D0 01 00 08 */	stfs f0, 8(r1)
/* 8058A134  C0 03 00 04 */	lfs f0, 4(r3)
/* 8058A138  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8058A13C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8058A140  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8058A144  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8058A148  4B A8 2C 1C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8058A14C  7F 63 DB 78 */	mr r3, r27
/* 8058A150  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8058A154  4B A8 22 E0 */	b mDoMtx_YrotM__FPA4_fs
/* 8058A158  7F 63 DB 78 */	mr r3, r27
/* 8058A15C  38 81 00 08 */	addi r4, r1, 8
/* 8058A160  7C 85 23 78 */	mr r5, r4
/* 8058A164  4B DB CC 08 */	b PSMTXMultVec
/* 8058A168  7F 3D F2 14 */	add r25, r29, r30
/* 8058A16C  38 79 07 18 */	addi r3, r25, 0x718
/* 8058A170  38 81 00 08 */	addi r4, r1, 8
/* 8058A174  4B CE 50 68 */	b SetC__8cM3dGCylFRC4cXyz
/* 8058A178  7F 43 D3 78 */	mr r3, r26
/* 8058A17C  38 99 05 F4 */	addi r4, r25, 0x5f4
/* 8058A180  4B CD AA 28 */	b Set__4cCcSFP8cCcD_Obj
/* 8058A184  3B 18 00 01 */	addi r24, r24, 1
/* 8058A188  2C 18 00 04 */	cmpwi r24, 4
/* 8058A18C  3B DE 01 3C */	addi r30, r30, 0x13c
/* 8058A190  3B 9C 00 0C */	addi r28, r28, 0xc
/* 8058A194  41 80 FF 90 */	blt lbl_8058A124
lbl_8058A198:
/* 8058A198  39 61 00 60 */	addi r11, r1, 0x60
/* 8058A19C  4B DD 80 78 */	b _restgpr_24
/* 8058A1A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8058A1A4  7C 08 03 A6 */	mtlr r0
/* 8058A1A8  38 21 00 60 */	addi r1, r1, 0x60
/* 8058A1AC  4E 80 00 20 */	blr 
