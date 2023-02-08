lbl_80609D70:
/* 80609D70  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80609D74  7C 08 02 A6 */	mflr r0
/* 80609D78  90 01 00 74 */	stw r0, 0x74(r1)
/* 80609D7C  39 61 00 70 */	addi r11, r1, 0x70
/* 80609D80  4B D5 84 59 */	bl _savegpr_28
/* 80609D84  7C 7D 1B 78 */	mr r29, r3
/* 80609D88  3C 60 80 61 */	lis r3, lit_3928@ha /* 0x8060FDE0@ha */
/* 80609D8C  3B C3 FD E0 */	addi r30, r3, lit_3928@l /* 0x8060FDE0@l */
/* 80609D90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80609D94  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80609D98  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80609D9C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80609DA0  4B A0 2F C5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80609DA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80609DA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80609DAC  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80609DB0  4B A0 26 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 80609DB4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80609DB8  FC 40 08 90 */	fmr f2, f1
/* 80609DBC  C0 7E 01 28 */	lfs f3, 0x128(r30)
/* 80609DC0  4B A0 2F DD */	bl transM__14mDoMtx_stack_cFfff
/* 80609DC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80609DC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80609DCC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80609DD0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80609DD4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80609DD8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80609DDC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80609DE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80609DE4  88 1D 0A FA */	lbz r0, 0xafa(r29)
/* 80609DE8  28 00 00 0B */	cmplwi r0, 0xb
/* 80609DEC  41 81 08 6C */	bgt lbl_8060A658
/* 80609DF0  3C 60 80 61 */	lis r3, lit_6262@ha /* 0x80610274@ha */
/* 80609DF4  38 63 02 74 */	addi r3, r3, lit_6262@l /* 0x80610274@l */
/* 80609DF8  54 00 10 3A */	slwi r0, r0, 2
/* 80609DFC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80609E00  7C 09 03 A6 */	mtctr r0
/* 80609E04  4E 80 04 20 */	bctr 
lbl_80609E08:
/* 80609E08  38 60 00 02 */	li r3, 2
/* 80609E0C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80609E10  7C 04 07 74 */	extsb r4, r0
/* 80609E14  4B A2 3D 51 */	bl dComIfGs_isOneZoneSwitch__Fii
/* 80609E18  2C 03 00 00 */	cmpwi r3, 0
/* 80609E1C  40 82 00 14 */	bne lbl_80609E30
/* 80609E20  38 60 00 02 */	li r3, 2
/* 80609E24  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80609E28  7C 04 07 74 */	extsb r4, r0
/* 80609E2C  4B A2 3C 71 */	bl dComIfGs_onOneZoneSwitch__Fii
lbl_80609E30:
/* 80609E30  7F A3 EB 78 */	mr r3, r29
/* 80609E34  38 80 00 1C */	li r4, 0x1c
/* 80609E38  38 A0 00 00 */	li r5, 0
/* 80609E3C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80609E40  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80609E44  4B FF DA E1 */	bl setBck__9daB_MGN_cFiUcff
/* 80609E48  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80609E4C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80609E50  38 00 00 02 */	li r0, 2
/* 80609E54  98 1D 0A FA */	stb r0, 0xafa(r29)
/* 80609E58  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 80609E5C  38 00 00 00 */	li r0, 0
/* 80609E60  98 1D 0B 03 */	stb r0, 0xb03(r29)
/* 80609E64  38 00 00 01 */	li r0, 1
/* 80609E68  98 1D 0B 01 */	stb r0, 0xb01(r29)
/* 80609E6C  38 60 00 0B */	li r3, 0xb
/* 80609E70  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80609E74  7C 04 07 74 */	extsb r4, r0
/* 80609E78  4B A2 3C 25 */	bl dComIfGs_onOneZoneSwitch__Fii
/* 80609E7C  38 00 00 00 */	li r0, 0
/* 80609E80  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80609E84  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80609E88  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80609E8C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80609E90  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80609E94  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80609E98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80609E9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80609EA0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80609EA4  38 80 00 06 */	li r4, 6
/* 80609EA8  38 A0 00 1F */	li r5, 0x1f
/* 80609EAC  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80609EB0  4B A6 5C 61 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80609EB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FE@ha */
/* 80609EB8  38 03 04 FE */	addi r0, r3, 0x04FE /* 0x000704FE@l */
/* 80609EBC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80609EC0  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 80609EC4  38 81 00 20 */	addi r4, r1, 0x20
/* 80609EC8  38 A0 00 00 */	li r5, 0
/* 80609ECC  38 C0 FF FF */	li r6, -1
/* 80609ED0  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 80609ED4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80609ED8  7D 89 03 A6 */	mtctr r12
/* 80609EDC  4E 80 04 21 */	bctrl 
lbl_80609EE0:
/* 80609EE0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FF@ha */
/* 80609EE4  38 03 04 FF */	addi r0, r3, 0x04FF /* 0x000704FF@l */
/* 80609EE8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80609EEC  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 80609EF0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80609EF4  38 A0 FF FF */	li r5, -1
/* 80609EF8  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 80609EFC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80609F00  7D 89 03 A6 */	mtctr r12
/* 80609F04  4E 80 04 21 */	bctrl 
/* 80609F08  7F A3 EB 78 */	mr r3, r29
/* 80609F0C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80609F10  4B A1 08 01 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80609F14  7C 64 1B 78 */	mr r4, r3
/* 80609F18  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80609F1C  38 A0 00 10 */	li r5, 0x10
/* 80609F20  38 C0 04 00 */	li r6, 0x400
/* 80609F24  38 E0 00 80 */	li r7, 0x80
/* 80609F28  4B C6 66 19 */	bl cLib_addCalcAngleS__FPsssss
/* 80609F2C  7F A3 EB 78 */	mr r3, r29
/* 80609F30  4B FF C4 F5 */	bl setBodySlideEffect__9daB_MGN_cFv
/* 80609F34  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80609F38  38 81 00 48 */	addi r4, r1, 0x48
/* 80609F3C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80609F40  4B C6 68 6D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80609F44  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80609F48  38 80 00 01 */	li r4, 1
/* 80609F4C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80609F50  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80609F54  40 82 00 18 */	bne lbl_80609F6C
/* 80609F58  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80609F5C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80609F60  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80609F64  41 82 00 08 */	beq lbl_80609F6C
/* 80609F68  38 80 00 00 */	li r4, 0
lbl_80609F6C:
/* 80609F6C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80609F70  41 82 06 E8 */	beq lbl_8060A658
/* 80609F74  7F A3 EB 78 */	mr r3, r29
/* 80609F78  38 80 00 1B */	li r4, 0x1b
/* 80609F7C  38 A0 00 02 */	li r5, 2
/* 80609F80  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 80609F84  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80609F88  4B FF D9 9D */	bl setBck__9daB_MGN_cFiUcff
/* 80609F8C  38 00 00 03 */	li r0, 3
/* 80609F90  98 1D 0A FA */	stb r0, 0xafa(r29)
/* 80609F94  38 00 00 1E */	li r0, 0x1e
/* 80609F98  90 1D 0A 9C */	stw r0, 0xa9c(r29)
/* 80609F9C  48 00 06 BC */	b lbl_8060A658
lbl_80609FA0:
/* 80609FA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FF@ha */
/* 80609FA4  38 03 04 FF */	addi r0, r3, 0x04FF /* 0x000704FF@l */
/* 80609FA8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80609FAC  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 80609FB0  38 81 00 18 */	addi r4, r1, 0x18
/* 80609FB4  38 A0 FF FF */	li r5, -1
/* 80609FB8  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 80609FBC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80609FC0  7D 89 03 A6 */	mtctr r12
/* 80609FC4  4E 80 04 21 */	bctrl 
/* 80609FC8  38 00 00 13 */	li r0, 0x13
/* 80609FCC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80609FD0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80609FD4  98 03 5E 3E */	stb r0, 0x5e3e(r3)
/* 80609FD8  38 00 00 05 */	li r0, 5
/* 80609FDC  98 03 5E 2E */	stb r0, 0x5e2e(r3)
/* 80609FE0  38 00 00 00 */	li r0, 0
/* 80609FE4  98 03 5E 58 */	stb r0, 0x5e58(r3)
/* 80609FE8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80609FEC  38 81 00 48 */	addi r4, r1, 0x48
/* 80609FF0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80609FF4  4B C6 67 B9 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80609FF8  7F A3 EB 78 */	mr r3, r29
/* 80609FFC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8060A000  4B A1 07 11 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060A004  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 8060A008  80 1D 0A 9C */	lwz r0, 0xa9c(r29)
/* 8060A00C  2C 00 00 00 */	cmpwi r0, 0
/* 8060A010  40 82 00 18 */	bne lbl_8060A028
/* 8060A014  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060A018  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060A01C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060A020  38 80 00 1F */	li r4, 0x1f
/* 8060A024  4B A6 5D 71 */	bl StopQuake__12dVibration_cFi
lbl_8060A028:
/* 8060A028  88 7D 05 8D */	lbz r3, 0x58d(r29)
/* 8060A02C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8060A030  41 82 00 54 */	beq lbl_8060A084
/* 8060A034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060A038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060A03C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060A040  38 80 00 1F */	li r4, 0x1f
/* 8060A044  4B A6 5D 51 */	bl StopQuake__12dVibration_cFi
/* 8060A048  88 1D 05 8D */	lbz r0, 0x58d(r29)
/* 8060A04C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8060A050  98 1D 05 8D */	stb r0, 0x58d(r29)
/* 8060A054  7F A3 EB 78 */	mr r3, r29
/* 8060A058  38 80 00 20 */	li r4, 0x20
/* 8060A05C  38 A0 00 00 */	li r5, 0
/* 8060A060  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060A064  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060A068  4B FF D8 BD */	bl setBck__9daB_MGN_cFiUcff
/* 8060A06C  38 60 00 01 */	li r3, 1
/* 8060A070  98 7D 0A FC */	stb r3, 0xafc(r29)
/* 8060A074  38 00 00 05 */	li r0, 5
/* 8060A078  98 1D 0A FA */	stb r0, 0xafa(r29)
/* 8060A07C  98 7D 0A FD */	stb r3, 0xafd(r29)
/* 8060A080  48 00 05 D8 */	b lbl_8060A658
lbl_8060A084:
/* 8060A084  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8060A088  41 82 00 58 */	beq lbl_8060A0E0
/* 8060A08C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060A090  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060A094  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060A098  38 80 00 1F */	li r4, 0x1f
/* 8060A09C  4B A6 5C F9 */	bl StopQuake__12dVibration_cFi
/* 8060A0A0  88 1D 05 8D */	lbz r0, 0x58d(r29)
/* 8060A0A4  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8060A0A8  98 1D 05 8D */	stb r0, 0x58d(r29)
/* 8060A0AC  7F A3 EB 78 */	mr r3, r29
/* 8060A0B0  38 80 00 1E */	li r4, 0x1e
/* 8060A0B4  38 A0 00 00 */	li r5, 0
/* 8060A0B8  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060A0BC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060A0C0  4B FF D8 65 */	bl setBck__9daB_MGN_cFiUcff
/* 8060A0C4  38 00 00 00 */	li r0, 0
/* 8060A0C8  98 1D 0A FC */	stb r0, 0xafc(r29)
/* 8060A0CC  38 00 00 05 */	li r0, 5
/* 8060A0D0  98 1D 0A FA */	stb r0, 0xafa(r29)
/* 8060A0D4  38 00 00 01 */	li r0, 1
/* 8060A0D8  98 1D 0A FD */	stb r0, 0xafd(r29)
/* 8060A0DC  48 00 05 7C */	b lbl_8060A658
lbl_8060A0E0:
/* 8060A0E0  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 8060A0E4  41 82 05 74 */	beq lbl_8060A658
/* 8060A0E8  38 60 00 0B */	li r3, 0xb
/* 8060A0EC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8060A0F0  7C 04 07 74 */	extsb r4, r0
/* 8060A0F4  4B A2 3A 0D */	bl dComIfGs_offOneZoneSwitch__Fii
/* 8060A0F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060A0FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060A100  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060A104  38 80 00 1F */	li r4, 0x1f
/* 8060A108  4B A6 5C 8D */	bl StopQuake__12dVibration_cFi
/* 8060A10C  88 1D 05 8D */	lbz r0, 0x58d(r29)
/* 8060A110  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8060A114  98 1D 05 8D */	stb r0, 0x58d(r29)
/* 8060A118  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070501@ha */
/* 8060A11C  38 03 05 01 */	addi r0, r3, 0x0501 /* 0x00070501@l */
/* 8060A120  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060A124  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 8060A128  38 81 00 14 */	addi r4, r1, 0x14
/* 8060A12C  38 A0 FF FF */	li r5, -1
/* 8060A130  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 8060A134  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060A138  7D 89 03 A6 */	mtctr r12
/* 8060A13C  4E 80 04 21 */	bctrl 
/* 8060A140  7F A3 EB 78 */	mr r3, r29
/* 8060A144  38 80 00 08 */	li r4, 8
/* 8060A148  38 A0 00 00 */	li r5, 0
/* 8060A14C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060A150  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060A154  4B FF D7 D1 */	bl setBck__9daB_MGN_cFiUcff
/* 8060A158  38 00 00 0A */	li r0, 0xa
/* 8060A15C  98 1D 0A FA */	stb r0, 0xafa(r29)
/* 8060A160  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8060A164  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8060A168  48 00 04 F0 */	b lbl_8060A658
lbl_8060A16C:
/* 8060A16C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704FF@ha */
/* 8060A170  38 03 04 FF */	addi r0, r3, 0x04FF /* 0x000704FF@l */
/* 8060A174  90 01 00 10 */	stw r0, 0x10(r1)
/* 8060A178  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 8060A17C  38 81 00 10 */	addi r4, r1, 0x10
/* 8060A180  38 A0 FF FF */	li r5, -1
/* 8060A184  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 8060A188  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8060A18C  7D 89 03 A6 */	mtctr r12
/* 8060A190  4E 80 04 21 */	bctrl 
/* 8060A194  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8060A198  38 81 00 48 */	addi r4, r1, 0x48
/* 8060A19C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8060A1A0  4B C6 66 0D */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 8060A1A4  7F A3 EB 78 */	mr r3, r29
/* 8060A1A8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8060A1AC  4B A1 05 65 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8060A1B0  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 8060A1B4  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8060A1B8  38 80 00 01 */	li r4, 1
/* 8060A1BC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060A1C0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060A1C4  40 82 00 18 */	bne lbl_8060A1DC
/* 8060A1C8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060A1CC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060A1D0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060A1D4  41 82 00 08 */	beq lbl_8060A1DC
/* 8060A1D8  38 80 00 00 */	li r4, 0
lbl_8060A1DC:
/* 8060A1DC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060A1E0  41 82 04 78 */	beq lbl_8060A658
/* 8060A1E4  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 8060A1E8  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 8060A1EC  88 1D 0A FC */	lbz r0, 0xafc(r29)
/* 8060A1F0  28 00 00 00 */	cmplwi r0, 0
/* 8060A1F4  40 82 00 40 */	bne lbl_8060A234
/* 8060A1F8  7F A3 EB 78 */	mr r3, r29
/* 8060A1FC  38 80 00 1D */	li r4, 0x1d
/* 8060A200  38 A0 00 00 */	li r5, 0
/* 8060A204  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060A208  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060A20C  4B FF D7 19 */	bl setBck__9daB_MGN_cFiUcff
/* 8060A210  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060A214  38 03 D8 00 */	addi r0, r3, -10240
/* 8060A218  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8060A21C  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060A220  38 03 F0 00 */	addi r0, r3, -4096
/* 8060A224  B0 1D 0A 90 */	sth r0, 0xa90(r29)
/* 8060A228  38 00 02 00 */	li r0, 0x200
/* 8060A22C  B0 1D 0A 92 */	sth r0, 0xa92(r29)
/* 8060A230  48 00 00 3C */	b lbl_8060A26C
lbl_8060A234:
/* 8060A234  7F A3 EB 78 */	mr r3, r29
/* 8060A238  38 80 00 1F */	li r4, 0x1f
/* 8060A23C  38 A0 00 00 */	li r5, 0
/* 8060A240  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060A244  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060A248  4B FF D6 DD */	bl setBck__9daB_MGN_cFiUcff
/* 8060A24C  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060A250  38 03 28 00 */	addi r0, r3, 0x2800
/* 8060A254  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8060A258  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060A25C  38 03 10 00 */	addi r0, r3, 0x1000
/* 8060A260  B0 1D 0A 90 */	sth r0, 0xa90(r29)
/* 8060A264  38 00 FE 00 */	li r0, -512
/* 8060A268  B0 1D 0A 92 */	sth r0, 0xa92(r29)
lbl_8060A26C:
/* 8060A26C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070500@ha */
/* 8060A270  38 03 05 00 */	addi r0, r3, 0x0500 /* 0x00070500@l */
/* 8060A274  90 01 00 0C */	stw r0, 0xc(r1)
/* 8060A278  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 8060A27C  38 81 00 0C */	addi r4, r1, 0xc
/* 8060A280  38 A0 FF FF */	li r5, -1
/* 8060A284  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 8060A288  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8060A28C  7D 89 03 A6 */	mtctr r12
/* 8060A290  4E 80 04 21 */	bctrl 
/* 8060A294  38 00 00 08 */	li r0, 8
/* 8060A298  98 1D 0A FA */	stb r0, 0xafa(r29)
/* 8060A29C  48 00 03 BC */	b lbl_8060A658
lbl_8060A2A0:
/* 8060A2A0  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8060A2A4  38 63 00 0C */	addi r3, r3, 0xc
/* 8060A2A8  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 8060A2AC  4B D1 E1 81 */	bl checkPass__12J3DFrameCtrlFf
/* 8060A2B0  2C 03 00 00 */	cmpwi r3, 0
/* 8060A2B4  41 82 00 38 */	beq lbl_8060A2EC
/* 8060A2B8  88 1D 0A FC */	lbz r0, 0xafc(r29)
/* 8060A2BC  28 00 00 00 */	cmplwi r0, 0
/* 8060A2C0  40 82 00 10 */	bne lbl_8060A2D0
/* 8060A2C4  38 00 02 00 */	li r0, 0x200
/* 8060A2C8  B0 1D 0A 92 */	sth r0, 0xa92(r29)
/* 8060A2CC  48 00 00 0C */	b lbl_8060A2D8
lbl_8060A2D0:
/* 8060A2D0  38 00 FE 00 */	li r0, -512
/* 8060A2D4  B0 1D 0A 92 */	sth r0, 0xa92(r29)
lbl_8060A2D8:
/* 8060A2D8  4B B7 73 69 */	bl dCam_getBody__Fv
/* 8060A2DC  7F A4 EB 78 */	mr r4, r29
/* 8060A2E0  4B B7 72 55 */	bl ForceLockOn__9dCamera_cFP10fopAc_ac_c
/* 8060A2E4  7F A3 EB 78 */	mr r3, r29
/* 8060A2E8  4B FF D8 C9 */	bl onBodySlideAt__9daB_MGN_cFv
lbl_8060A2EC:
/* 8060A2EC  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8060A2F0  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 8060A2F4  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 8060A2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060A2FC  4C 40 13 82 */	cror 2, 0, 2
/* 8060A300  40 82 00 10 */	bne lbl_8060A310
/* 8060A304  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8060A308  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8060A30C  48 00 00 2C */	b lbl_8060A338
lbl_8060A310:
/* 8060A310  7F A3 EB 78 */	mr r3, r29
/* 8060A314  4B FF C1 11 */	bl setBodySlideEffect__9daB_MGN_cFv
/* 8060A318  38 7D 0A 92 */	addi r3, r29, 0xa92
/* 8060A31C  38 80 00 00 */	li r4, 0
/* 8060A320  38 A0 00 20 */	li r5, 0x20
/* 8060A324  4B C6 68 6D */	bl cLib_chaseAngleS__FPsss
/* 8060A328  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060A32C  A8 1D 0A 92 */	lha r0, 0xa92(r29)
/* 8060A330  7C 03 02 14 */	add r0, r3, r0
/* 8060A334  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_8060A338:
/* 8060A338  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060A33C  A8 1D 0A 92 */	lha r0, 0xa92(r29)
/* 8060A340  7C 03 02 14 */	add r0, r3, r0
/* 8060A344  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8060A348  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8060A34C  38 63 00 0C */	addi r3, r3, 0xc
/* 8060A350  C0 3E 01 30 */	lfs f1, 0x130(r30)
/* 8060A354  4B D1 E0 D9 */	bl checkPass__12J3DFrameCtrlFf
/* 8060A358  2C 03 00 00 */	cmpwi r3, 0
/* 8060A35C  40 82 00 1C */	bne lbl_8060A378
/* 8060A360  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8060A364  38 63 00 0C */	addi r3, r3, 0xc
/* 8060A368  C0 3E 01 34 */	lfs f1, 0x134(r30)
/* 8060A36C  4B D1 E0 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 8060A370  2C 03 00 00 */	cmpwi r3, 0
/* 8060A374  41 82 00 60 */	beq lbl_8060A3D4
lbl_8060A378:
/* 8060A378  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060A37C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8060A380  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8060A384  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8060A388  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8060A38C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060A390  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060A394  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060A398  38 80 00 08 */	li r4, 8
/* 8060A39C  38 A0 00 1F */	li r5, 0x1f
/* 8060A3A0  38 C1 00 30 */	addi r6, r1, 0x30
/* 8060A3A4  4B A6 56 81 */	bl StartShock__12dVibration_cFii4cXyz
/* 8060A3A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F6@ha */
/* 8060A3AC  38 03 04 F6 */	addi r0, r3, 0x04F6 /* 0x000704F6@l */
/* 8060A3B0  90 01 00 08 */	stw r0, 8(r1)
/* 8060A3B4  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 8060A3B8  38 81 00 08 */	addi r4, r1, 8
/* 8060A3BC  38 A0 00 00 */	li r5, 0
/* 8060A3C0  38 C0 FF FF */	li r6, -1
/* 8060A3C4  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 8060A3C8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8060A3CC  7D 89 03 A6 */	mtctr r12
/* 8060A3D0  4E 80 04 21 */	bctrl 
lbl_8060A3D4:
/* 8060A3D4  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8060A3D8  A8 9D 0A 90 */	lha r4, 0xa90(r29)
/* 8060A3DC  38 A0 00 08 */	li r5, 8
/* 8060A3E0  38 C0 01 00 */	li r6, 0x100
/* 8060A3E4  4B C6 62 25 */	bl cLib_addCalcAngleS2__FPssss
/* 8060A3E8  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8060A3EC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060A3F0  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 8060A3F4  4B C6 63 4D */	bl cLib_chaseF__FPfff
/* 8060A3F8  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8060A3FC  38 80 00 01 */	li r4, 1
/* 8060A400  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060A404  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060A408  40 82 00 18 */	bne lbl_8060A420
/* 8060A40C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060A410  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060A414  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060A418  41 82 00 08 */	beq lbl_8060A420
/* 8060A41C  38 80 00 00 */	li r4, 0
lbl_8060A420:
/* 8060A420  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060A424  41 82 02 34 */	beq lbl_8060A658
/* 8060A428  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060A42C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8060A430  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8060A434  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8060A438  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8060A43C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060A440  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060A444  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060A448  38 80 00 03 */	li r4, 3
/* 8060A44C  38 A0 00 1F */	li r5, 0x1f
/* 8060A450  38 C1 00 24 */	addi r6, r1, 0x24
/* 8060A454  4B A6 56 BD */	bl StartQuake__12dVibration_cFii4cXyz
/* 8060A458  88 1D 0A FC */	lbz r0, 0xafc(r29)
/* 8060A45C  28 00 00 00 */	cmplwi r0, 0
/* 8060A460  40 82 00 20 */	bne lbl_8060A480
/* 8060A464  7F A3 EB 78 */	mr r3, r29
/* 8060A468  38 80 00 14 */	li r4, 0x14
/* 8060A46C  38 A0 00 02 */	li r5, 2
/* 8060A470  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060A474  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060A478  4B FF D4 AD */	bl setBck__9daB_MGN_cFiUcff
/* 8060A47C  48 00 00 1C */	b lbl_8060A498
lbl_8060A480:
/* 8060A480  7F A3 EB 78 */	mr r3, r29
/* 8060A484  38 80 00 0D */	li r4, 0xd
/* 8060A488  38 A0 00 02 */	li r5, 2
/* 8060A48C  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 8060A490  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8060A494  4B FF D4 91 */	bl setBck__9daB_MGN_cFiUcff
lbl_8060A498:
/* 8060A498  38 60 00 0B */	li r3, 0xb
/* 8060A49C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8060A4A0  7C 04 07 74 */	extsb r4, r0
/* 8060A4A4  4B A2 36 5D */	bl dComIfGs_offOneZoneSwitch__Fii
/* 8060A4A8  38 00 00 09 */	li r0, 9
/* 8060A4AC  98 1D 0A FA */	stb r0, 0xafa(r29)
/* 8060A4B0  48 00 01 A8 */	b lbl_8060A658
lbl_8060A4B4:
/* 8060A4B4  7F A3 EB 78 */	mr r3, r29
/* 8060A4B8  4B FF BF 6D */	bl setBodySlideEffect__9daB_MGN_cFv
/* 8060A4BC  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8060A4C0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060A4C4  C0 5E 01 0C */	lfs f2, 0x10c(r30)
/* 8060A4C8  4B C6 62 79 */	bl cLib_chaseF__FPfff
/* 8060A4CC  38 7D 0A 92 */	addi r3, r29, 0xa92
/* 8060A4D0  38 80 00 00 */	li r4, 0
/* 8060A4D4  38 A0 00 20 */	li r5, 0x20
/* 8060A4D8  4B C6 66 B9 */	bl cLib_chaseAngleS__FPsss
/* 8060A4DC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060A4E0  A8 1D 0A 92 */	lha r0, 0xa92(r29)
/* 8060A4E4  7C 03 02 14 */	add r0, r3, r0
/* 8060A4E8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8060A4EC  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8060A4F0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8060A4F4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060A4F8  40 82 01 60 */	bne lbl_8060A658
/* 8060A4FC  A8 1D 0A 92 */	lha r0, 0xa92(r29)
/* 8060A500  2C 00 00 00 */	cmpwi r0, 0
/* 8060A504  40 82 01 54 */	bne lbl_8060A658
/* 8060A508  4B B7 71 39 */	bl dCam_getBody__Fv
/* 8060A50C  4B B7 6F F5 */	bl GetForceLockOnActor__9dCamera_cFv
/* 8060A510  7C 03 E8 40 */	cmplw r3, r29
/* 8060A514  40 82 00 10 */	bne lbl_8060A524
/* 8060A518  4B B7 71 29 */	bl dCam_getBody__Fv
/* 8060A51C  7F A4 EB 78 */	mr r4, r29
/* 8060A520  4B B7 70 7D */	bl ForceLockOff__9dCamera_cFP10fopAc_ac_c
lbl_8060A524:
/* 8060A524  7F A3 EB 78 */	mr r3, r29
/* 8060A528  4B FF D6 D5 */	bl offBodySlideAt__9daB_MGN_cFv
/* 8060A52C  7F A3 EB 78 */	mr r3, r29
/* 8060A530  38 80 00 04 */	li r4, 4
/* 8060A534  38 A0 00 05 */	li r5, 5
/* 8060A538  4B FF D4 F5 */	bl setActionMode__9daB_MGN_cFii
/* 8060A53C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8060A540  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8060A544  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8060A548  38 80 00 1F */	li r4, 0x1f
/* 8060A54C  4B A6 58 49 */	bl StopQuake__12dVibration_cFi
/* 8060A550  80 1D 21 0C */	lwz r0, 0x210c(r29)
/* 8060A554  60 00 00 01 */	ori r0, r0, 1
/* 8060A558  90 1D 21 0C */	stw r0, 0x210c(r29)
/* 8060A55C  80 1D 22 44 */	lwz r0, 0x2244(r29)
/* 8060A560  60 00 00 01 */	ori r0, r0, 1
/* 8060A564  90 1D 22 44 */	stw r0, 0x2244(r29)
/* 8060A568  38 00 00 96 */	li r0, 0x96
/* 8060A56C  90 1D 0A A0 */	stw r0, 0xaa0(r29)
/* 8060A570  38 00 00 00 */	li r0, 0
/* 8060A574  98 1D 0B 08 */	stb r0, 0xb08(r29)
/* 8060A578  38 00 00 04 */	li r0, 4
/* 8060A57C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8060A580  48 00 00 D8 */	b lbl_8060A658
lbl_8060A584:
/* 8060A584  4B C5 D2 E9 */	bl cM_rnd__Fv
/* 8060A588  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 8060A58C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060A590  40 80 00 14 */	bge lbl_8060A5A4
/* 8060A594  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060A598  38 03 20 00 */	addi r0, r3, 0x2000
/* 8060A59C  7C 04 07 34 */	extsh r4, r0
/* 8060A5A0  48 00 00 10 */	b lbl_8060A5B0
lbl_8060A5A4:
/* 8060A5A4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8060A5A8  38 03 E0 00 */	addi r0, r3, -8192
/* 8060A5AC  7C 04 07 34 */	extsh r4, r0
lbl_8060A5B0:
/* 8060A5B0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8060A5B4  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8060A5B8  C0 5E 00 4C */	lfs f2, 0x4c(r30)
/* 8060A5BC  38 A0 00 01 */	li r5, 1
/* 8060A5C0  38 C0 00 00 */	li r6, 0
/* 8060A5C4  38 E0 00 00 */	li r7, 0
/* 8060A5C8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8060A5CC  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 8060A5D0  7D 89 03 A6 */	mtctr r12
/* 8060A5D4  4E 80 04 21 */	bctrl 
/* 8060A5D8  38 00 00 0B */	li r0, 0xb
/* 8060A5DC  98 1D 0A FA */	stb r0, 0xafa(r29)
/* 8060A5E0  4B B7 70 61 */	bl dCam_getBody__Fv
/* 8060A5E4  7F A4 EB 78 */	mr r4, r29
/* 8060A5E8  4B B7 6F 4D */	bl ForceLockOn__9dCamera_cFP10fopAc_ac_c
/* 8060A5EC  38 00 00 04 */	li r0, 4
/* 8060A5F0  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_8060A5F4:
/* 8060A5F4  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 8060A5F8  38 80 00 01 */	li r4, 1
/* 8060A5FC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8060A600  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8060A604  40 82 00 18 */	bne lbl_8060A61C
/* 8060A608  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8060A60C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8060A610  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8060A614  41 82 00 08 */	beq lbl_8060A61C
/* 8060A618  38 80 00 00 */	li r4, 0
lbl_8060A61C:
/* 8060A61C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8060A620  41 82 00 38 */	beq lbl_8060A658
/* 8060A624  38 00 00 00 */	li r0, 0
/* 8060A628  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8060A62C  4B B7 70 15 */	bl dCam_getBody__Fv
/* 8060A630  4B B7 6E D1 */	bl GetForceLockOnActor__9dCamera_cFv
/* 8060A634  7C 03 E8 40 */	cmplw r3, r29
/* 8060A638  40 82 00 10 */	bne lbl_8060A648
/* 8060A63C  4B B7 70 05 */	bl dCam_getBody__Fv
/* 8060A640  7F A4 EB 78 */	mr r4, r29
/* 8060A644  4B B7 6F 59 */	bl ForceLockOff__9dCamera_cFP10fopAc_ac_c
lbl_8060A648:
/* 8060A648  7F A3 EB 78 */	mr r3, r29
/* 8060A64C  38 80 00 02 */	li r4, 2
/* 8060A650  38 A0 00 05 */	li r5, 5
/* 8060A654  4B FF D3 D9 */	bl setActionMode__9daB_MGN_cFii
lbl_8060A658:
/* 8060A658  39 61 00 70 */	addi r11, r1, 0x70
/* 8060A65C  4B D5 7B C9 */	bl _restgpr_28
/* 8060A660  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8060A664  7C 08 03 A6 */	mtlr r0
/* 8060A668  38 21 00 70 */	addi r1, r1, 0x70
/* 8060A66C  4E 80 00 20 */	blr 
