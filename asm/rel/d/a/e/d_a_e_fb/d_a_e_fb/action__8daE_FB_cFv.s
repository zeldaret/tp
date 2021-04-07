lbl_806B7DDC:
/* 806B7DDC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806B7DE0  7C 08 02 A6 */	mflr r0
/* 806B7DE4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806B7DE8  39 61 00 40 */	addi r11, r1, 0x40
/* 806B7DEC  4B CA A3 F1 */	bl _savegpr_29
/* 806B7DF0  7C 7E 1B 78 */	mr r30, r3
/* 806B7DF4  3C 60 80 6C */	lis r3, lit_3662@ha /* 0x806B8F8C@ha */
/* 806B7DF8  3B E3 8F 8C */	addi r31, r3, lit_3662@l /* 0x806B8F8C@l */
/* 806B7DFC  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806B91FC@ha */
/* 806B7E00  38 63 91 FC */	addi r3, r3, l_HIO@l /* 0x806B91FC@l */
/* 806B7E04  C0 03 00 08 */	lfs f0, 8(r3)
/* 806B7E08  D0 1E 06 84 */	stfs f0, 0x684(r30)
/* 806B7E0C  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 806B7E10  28 00 00 01 */	cmplwi r0, 1
/* 806B7E14  40 82 00 0C */	bne lbl_806B7E20
/* 806B7E18  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 806B7E1C  D0 1E 06 84 */	stfs f0, 0x684(r30)
lbl_806B7E20:
/* 806B7E20  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 806B7E24  28 00 00 02 */	cmplwi r0, 2
/* 806B7E28  40 82 00 3C */	bne lbl_806B7E64
/* 806B7E2C  3C 60 80 6C */	lis r3, data_806B9224@ha /* 0x806B9224@ha */
/* 806B7E30  8C 03 92 24 */	lbzu r0, data_806B9224@l(r3)  /* 0x806B9224@l */
/* 806B7E34  28 00 00 02 */	cmplwi r0, 2
/* 806B7E38  40 82 00 2C */	bne lbl_806B7E64
/* 806B7E3C  38 00 00 03 */	li r0, 3
/* 806B7E40  98 03 00 00 */	stb r0, 0(r3)
/* 806B7E44  88 9E 06 92 */	lbz r4, 0x692(r30)
/* 806B7E48  28 04 00 FF */	cmplwi r4, 0xff
/* 806B7E4C  41 82 00 18 */	beq lbl_806B7E64
/* 806B7E50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B7E54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B7E58  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 806B7E5C  7C 05 07 74 */	extsb r5, r0
/* 806B7E60  4B 97 D3 A1 */	bl onSwitch__10dSv_info_cFii
lbl_806B7E64:
/* 806B7E64  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 806B7E68  28 00 00 00 */	cmplwi r0, 0
/* 806B7E6C  41 82 00 0C */	beq lbl_806B7E78
/* 806B7E70  28 00 00 02 */	cmplwi r0, 2
/* 806B7E74  40 82 00 F4 */	bne lbl_806B7F68
lbl_806B7E78:
/* 806B7E78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B7E7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B7E80  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 806B7E84  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806B7E88  80 63 00 04 */	lwz r3, 4(r3)
/* 806B7E8C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B7E90  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B7E94  38 63 00 60 */	addi r3, r3, 0x60
/* 806B7E98  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B7E9C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B7EA0  4B C8 E6 11 */	bl PSMTXCopy
/* 806B7EA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B7EA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B7EAC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806B7EB0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806B7EB4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806B7EB8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806B7EBC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806B7EC0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806B7EC4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806B7EC8  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B7ECC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806B7ED0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806B7ED4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806B7ED8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B7EDC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 806B7EE0  EC 01 00 2A */	fadds f0, f1, f0
/* 806B7EE4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B7EE8  38 61 00 14 */	addi r3, r1, 0x14
/* 806B7EEC  38 81 00 08 */	addi r4, r1, 8
/* 806B7EF0  7C 65 1B 78 */	mr r5, r3
/* 806B7EF4  4B C8 F1 C1 */	bl PSVECSubtract
/* 806B7EF8  38 61 00 14 */	addi r3, r1, 0x14
/* 806B7EFC  4B BA F2 55 */	bl atan2sY_XZ__4cXyzCFv
/* 806B7F00  7C 60 07 34 */	extsh r0, r3
/* 806B7F04  C8 3F 00 50 */	lfd f1, 0x50(r31)
/* 806B7F08  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806B7F0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B7F10  3C 00 43 30 */	lis r0, 0x4330
/* 806B7F14  90 01 00 20 */	stw r0, 0x20(r1)
/* 806B7F18  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 806B7F1C  EC 20 08 28 */	fsubs f1, f0, f1
/* 806B7F20  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 806B7F24  EC 00 00 72 */	fmuls f0, f0, f1
/* 806B7F28  FC 00 00 1E */	fctiwz f0, f0
/* 806B7F2C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 806B7F30  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 806B7F34  7C 80 07 35 */	extsh. r0, r4
/* 806B7F38  40 80 00 0C */	bge lbl_806B7F44
/* 806B7F3C  38 80 00 00 */	li r4, 0
/* 806B7F40  48 00 00 14 */	b lbl_806B7F54
lbl_806B7F44:
/* 806B7F44  7C 80 07 34 */	extsh r0, r4
/* 806B7F48  2C 00 0D 48 */	cmpwi r0, 0xd48
/* 806B7F4C  40 81 00 08 */	ble lbl_806B7F54
/* 806B7F50  38 80 0D 48 */	li r4, 0xd48
lbl_806B7F54:
/* 806B7F54  38 7E 06 98 */	addi r3, r30, 0x698
/* 806B7F58  7C 84 07 34 */	extsh r4, r4
/* 806B7F5C  38 A0 00 02 */	li r5, 2
/* 806B7F60  38 C0 02 00 */	li r6, 0x200
/* 806B7F64  4B BB 86 A5 */	bl cLib_addCalcAngleS2__FPssss
lbl_806B7F68:
/* 806B7F68  7F C3 F3 78 */	mr r3, r30
/* 806B7F6C  4B FF ED B5 */	bl mBgLineCheck__8daE_FB_cFv
/* 806B7F70  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B7F74  41 82 00 10 */	beq lbl_806B7F84
/* 806B7F78  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 806B7F7C  28 00 00 01 */	cmplwi r0, 1
/* 806B7F80  40 82 00 14 */	bne lbl_806B7F94
lbl_806B7F84:
/* 806B7F84  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 806B7F88  60 00 00 04 */	ori r0, r0, 4
/* 806B7F8C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806B7F90  48 00 00 1C */	b lbl_806B7FAC
lbl_806B7F94:
/* 806B7F94  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806B7F98  54 00 00 3E */	slwi r0, r0, 0
/* 806B7F9C  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806B7FA0  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 806B7FA4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806B7FA8  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_806B7FAC:
/* 806B7FAC  3B A0 00 00 */	li r29, 0
/* 806B7FB0  7F C3 F3 78 */	mr r3, r30
/* 806B7FB4  4B FF E8 E5 */	bl damage_check__8daE_FB_cFv
/* 806B7FB8  80 1E 06 68 */	lwz r0, 0x668(r30)
/* 806B7FBC  2C 00 00 02 */	cmpwi r0, 2
/* 806B7FC0  41 82 00 40 */	beq lbl_806B8000
/* 806B7FC4  40 80 00 14 */	bge lbl_806B7FD8
/* 806B7FC8  2C 00 00 00 */	cmpwi r0, 0
/* 806B7FCC  41 82 00 18 */	beq lbl_806B7FE4
/* 806B7FD0  40 80 00 20 */	bge lbl_806B7FF0
/* 806B7FD4  48 00 00 40 */	b lbl_806B8014
lbl_806B7FD8:
/* 806B7FD8  2C 00 00 04 */	cmpwi r0, 4
/* 806B7FDC  40 80 00 38 */	bge lbl_806B8014
/* 806B7FE0  48 00 00 2C */	b lbl_806B800C
lbl_806B7FE4:
/* 806B7FE4  7F C3 F3 78 */	mr r3, r30
/* 806B7FE8  4B FF EF 59 */	bl executeWait__8daE_FB_cFv
/* 806B7FEC  48 00 00 28 */	b lbl_806B8014
lbl_806B7FF0:
/* 806B7FF0  7F C3 F3 78 */	mr r3, r30
/* 806B7FF4  4B FF F1 09 */	bl executeAttack__8daE_FB_cFv
/* 806B7FF8  3B A0 00 01 */	li r29, 1
/* 806B7FFC  48 00 00 18 */	b lbl_806B8014
lbl_806B8000:
/* 806B8000  7F C3 F3 78 */	mr r3, r30
/* 806B8004  4B FF F8 9D */	bl executeDamage__8daE_FB_cFv
/* 806B8008  48 00 00 0C */	b lbl_806B8014
lbl_806B800C:
/* 806B800C  7F C3 F3 78 */	mr r3, r30
/* 806B8010  4B FF FB 79 */	bl executeBullet__8daE_FB_cFv
lbl_806B8014:
/* 806B8014  88 1E 06 A0 */	lbz r0, 0x6a0(r30)
/* 806B8018  28 00 00 0A */	cmplwi r0, 0xa
/* 806B801C  41 82 00 0C */	beq lbl_806B8028
/* 806B8020  28 00 00 0B */	cmplwi r0, 0xb
/* 806B8024  40 82 00 14 */	bne lbl_806B8038
lbl_806B8028:
/* 806B8028  7F C3 F3 78 */	mr r3, r30
/* 806B802C  38 9E 08 BC */	addi r4, r30, 0x8bc
/* 806B8030  4B 96 26 9D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806B8034  48 00 00 58 */	b lbl_806B808C
lbl_806B8038:
/* 806B8038  38 7E 05 C4 */	addi r3, r30, 0x5c4
/* 806B803C  30 1D FF FF */	addic r0, r29, -1
/* 806B8040  7C 00 E9 10 */	subfe r0, r0, r29
/* 806B8044  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 806B8048  4B C0 9B 35 */	bl setLinkSearch__15Z2CreatureEnemyFb
/* 806B804C  88 1E 06 8E */	lbz r0, 0x68e(r30)
/* 806B8050  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 806B8054  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806B8058  3C 00 43 30 */	lis r0, 0x4330
/* 806B805C  90 01 00 28 */	stw r0, 0x28(r1)
/* 806B8060  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 806B8064  EC 00 08 28 */	fsubs f0, f0, f1
/* 806B8068  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 806B806C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 806B8070  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806B8074  7C 03 07 74 */	extsb r3, r0
/* 806B8078  4B 97 4F F5 */	bl dComIfGp_getReverb__Fi
/* 806B807C  7C 65 1B 78 */	mr r5, r3
/* 806B8080  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806B8084  38 80 00 00 */	li r4, 0
/* 806B8088  4B 95 90 29 */	bl play__16mDoExt_McaMorfSOFUlSc
lbl_806B808C:
/* 806B808C  39 61 00 40 */	addi r11, r1, 0x40
/* 806B8090  4B CA A1 99 */	bl _restgpr_29
/* 806B8094  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806B8098  7C 08 03 A6 */	mtlr r0
/* 806B809C  38 21 00 40 */	addi r1, r1, 0x40
/* 806B80A0  4E 80 00 20 */	blr 
