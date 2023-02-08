lbl_804AEBF0:
/* 804AEBF0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804AEBF4  7C 08 02 A6 */	mflr r0
/* 804AEBF8  90 01 00 74 */	stw r0, 0x74(r1)
/* 804AEBFC  39 61 00 70 */	addi r11, r1, 0x70
/* 804AEC00  4B EB 35 C9 */	bl _savegpr_24
/* 804AEC04  7C 7E 1B 78 */	mr r30, r3
/* 804AEC08  3C 80 80 4C */	lis r4, lit_3879@ha /* 0x804BB534@ha */
/* 804AEC0C  3B E4 B5 34 */	addi r31, r4, lit_3879@l /* 0x804BB534@l */
/* 804AEC10  C0 23 05 90 */	lfs f1, 0x590(r3)
/* 804AEC14  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 804AEC18  EC 21 00 28 */	fsubs f1, f1, f0
/* 804AEC1C  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 804AEC20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AEC24  41 81 01 DC */	bgt lbl_804AEE00
/* 804AEC28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AEC2C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AEC30  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804AEC34  4B B6 BA DD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804AEC38  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 804AEC3C  7C 03 20 50 */	subf r0, r3, r4
/* 804AEC40  7C 00 07 34 */	extsh r0, r0
/* 804AEC44  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AEC48  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AEC4C  80 63 00 00 */	lwz r3, 0(r3)
/* 804AEC50  7C 00 0E 70 */	srawi r0, r0, 1
/* 804AEC54  7C 00 01 94 */	addze r0, r0
/* 804AEC58  7C 00 07 34 */	extsh r0, r0
/* 804AEC5C  7C 00 20 50 */	subf r0, r0, r4
/* 804AEC60  7C 04 07 34 */	extsh r4, r0
/* 804AEC64  4B B5 D7 79 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AEC68  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AEC6C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 804AEC70  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 804AEC74  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 804AEC78  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804AEC7C  38 61 00 44 */	addi r3, r1, 0x44
/* 804AEC80  38 81 00 38 */	addi r4, r1, 0x38
/* 804AEC84  4B DC 22 69 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AEC88  38 61 00 38 */	addi r3, r1, 0x38
/* 804AEC8C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804AEC90  7C 65 1B 78 */	mr r5, r3
/* 804AEC94  4B E9 83 FD */	bl PSVECAdd
/* 804AEC98  C0 3E 11 88 */	lfs f1, 0x1188(r30)
/* 804AEC9C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804AECA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AECA4  40 81 00 AC */	ble lbl_804AED50
/* 804AECA8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804AECAC  EC 20 00 72 */	fmuls f1, f0, f1
/* 804AECB0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804AECB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AECB8  40 81 00 08 */	ble lbl_804AECC0
/* 804AECBC  FC 20 00 90 */	fmr f1, f0
lbl_804AECC0:
/* 804AECC0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804AECC4  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 804AECC8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804AECCC  3B 00 00 00 */	li r24, 0
/* 804AECD0  3B A0 00 00 */	li r29, 0
/* 804AECD4  3B 80 00 00 */	li r28, 0
/* 804AECD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AECDC  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AECE0  3C 60 80 4C */	lis r3, w_eff_id_6422@ha /* 0x804BB900@ha */
/* 804AECE4  3B 63 B9 00 */	addi r27, r3, w_eff_id_6422@l /* 0x804BB900@l */
lbl_804AECE8:
/* 804AECE8  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 804AECEC  38 00 00 FF */	li r0, 0xff
/* 804AECF0  90 01 00 08 */	stw r0, 8(r1)
/* 804AECF4  38 80 00 00 */	li r4, 0
/* 804AECF8  90 81 00 0C */	stw r4, 0xc(r1)
/* 804AECFC  38 00 FF FF */	li r0, -1
/* 804AED00  90 01 00 10 */	stw r0, 0x10(r1)
/* 804AED04  90 81 00 14 */	stw r4, 0x14(r1)
/* 804AED08  90 81 00 18 */	stw r4, 0x18(r1)
/* 804AED0C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804AED10  3B 3C 11 80 */	addi r25, r28, 0x1180
/* 804AED14  7C 9E C8 2E */	lwzx r4, r30, r25
/* 804AED18  38 A0 00 00 */	li r5, 0
/* 804AED1C  7C DB EA 2E */	lhzx r6, r27, r29
/* 804AED20  38 E1 00 38 */	addi r7, r1, 0x38
/* 804AED24  39 1E 01 0C */	addi r8, r30, 0x10c
/* 804AED28  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 804AED2C  39 41 00 2C */	addi r10, r1, 0x2c
/* 804AED30  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AED34  4B B9 E7 99 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804AED38  7C 7E C9 2E */	stwx r3, r30, r25
/* 804AED3C  3B 18 00 01 */	addi r24, r24, 1
/* 804AED40  2C 18 00 02 */	cmpwi r24, 2
/* 804AED44  3B BD 00 02 */	addi r29, r29, 2
/* 804AED48  3B 9C 00 04 */	addi r28, r28, 4
/* 804AED4C  41 80 FF 9C */	blt lbl_804AECE8
lbl_804AED50:
/* 804AED50  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AED54  D0 1E 11 88 */	stfs f0, 0x1188(r30)
/* 804AED58  C0 3E 11 8C */	lfs f1, 0x118c(r30)
/* 804AED5C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804AED60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AED64  40 81 00 94 */	ble lbl_804AEDF8
/* 804AED68  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804AED6C  EC 20 00 72 */	fmuls f1, f0, f1
/* 804AED70  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 804AED74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AED78  40 81 00 08 */	ble lbl_804AED80
/* 804AED7C  FC 20 00 90 */	fmr f1, f0
lbl_804AED80:
/* 804AED80  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804AED84  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804AED88  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804AED8C  3B 00 00 00 */	li r24, 0
/* 804AED90  3B A0 00 00 */	li r29, 0
/* 804AED94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AED98  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AED9C  3C 60 80 4C */	lis r3, w_eff_id_6432@ha /* 0x804BB904@ha */
/* 804AEDA0  3B 83 B9 04 */	addi r28, r3, w_eff_id_6432@l /* 0x804BB904@l */
lbl_804AEDA4:
/* 804AEDA4  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 804AEDA8  38 80 00 00 */	li r4, 0
/* 804AEDAC  90 81 00 08 */	stw r4, 8(r1)
/* 804AEDB0  38 00 FF FF */	li r0, -1
/* 804AEDB4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804AEDB8  90 81 00 10 */	stw r4, 0x10(r1)
/* 804AEDBC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804AEDC0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804AEDC4  38 80 00 00 */	li r4, 0
/* 804AEDC8  7C BC EA 2E */	lhzx r5, r28, r29
/* 804AEDCC  38 C1 00 38 */	addi r6, r1, 0x38
/* 804AEDD0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 804AEDD4  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 804AEDD8  39 21 00 20 */	addi r9, r1, 0x20
/* 804AEDDC  39 40 00 FF */	li r10, 0xff
/* 804AEDE0  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804AEDE4  4B B9 DC AD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804AEDE8  3B 18 00 01 */	addi r24, r24, 1
/* 804AEDEC  2C 18 00 02 */	cmpwi r24, 2
/* 804AEDF0  3B BD 00 02 */	addi r29, r29, 2
/* 804AEDF4  41 80 FF B0 */	blt lbl_804AEDA4
lbl_804AEDF8:
/* 804AEDF8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 804AEDFC  D0 1E 11 8C */	stfs f0, 0x118c(r30)
lbl_804AEE00:
/* 804AEE00  39 61 00 70 */	addi r11, r1, 0x70
/* 804AEE04  4B EB 34 11 */	bl _restgpr_24
/* 804AEE08  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804AEE0C  7C 08 03 A6 */	mtlr r0
/* 804AEE10  38 21 00 70 */	addi r1, r1, 0x70
/* 804AEE14  4E 80 00 20 */	blr 
