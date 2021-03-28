lbl_80484008:
/* 80484008  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8048400C  7C 08 02 A6 */	mflr r0
/* 80484010  90 01 00 34 */	stw r0, 0x34(r1)
/* 80484014  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80484018  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8048401C  7C 7F 1B 78 */	mr r31, r3
/* 80484020  3C 80 80 48 */	lis r4, M_bmd__Q211daObjSwpush5Act_c@ha
/* 80484024  3B C4 4D 10 */	addi r30, r4, M_bmd__Q211daObjSwpush5Act_c@l
/* 80484028  C0 23 05 D0 */	lfs f1, 0x5d0(r3)
/* 8048402C  C0 1E 01 18 */	lfs f0, 0x118(r30)
/* 80484030  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80484034  4C 40 13 82 */	cror 2, 0, 2
/* 80484038  40 82 01 84 */	bne lbl_804841BC
/* 8048403C  88 1F 05 CB */	lbz r0, 0x5cb(r31)
/* 80484040  28 00 00 00 */	cmplwi r0, 0
/* 80484044  41 82 00 C8 */	beq lbl_8048410C
/* 80484048  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 8048404C  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80484050  38 9E 00 1C */	addi r4, r30, 0x1c
/* 80484054  7C 84 00 2E */	lwzx r4, r4, r0
/* 80484058  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 8048405C  41 82 00 2C */	beq lbl_80484088
/* 80484060  38 80 00 08 */	li r4, 8
/* 80484064  38 A0 00 08 */	li r5, 8
/* 80484068  48 00 0C 7D */	bl func_80484CE4
/* 8048406C  7C 64 1B 78 */	mr r4, r3
/* 80484070  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80484074  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80484078  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 8048407C  7C 05 07 74 */	extsb r5, r0
/* 80484080  4B BB 13 AC */	b revSwitch__10dSv_info_cFii
/* 80484084  48 00 00 58 */	b lbl_804840DC
lbl_80484088:
/* 80484088  54 80 06 F7 */	rlwinm. r0, r4, 0, 0x1b, 0x1b
/* 8048408C  41 82 00 2C */	beq lbl_804840B8
/* 80484090  38 80 00 08 */	li r4, 8
/* 80484094  38 A0 00 08 */	li r5, 8
/* 80484098  48 00 0C 4D */	bl func_80484CE4
/* 8048409C  7C 64 1B 78 */	mr r4, r3
/* 804840A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804840A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804840A8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804840AC  7C 05 07 74 */	extsb r5, r0
/* 804840B0  4B BB 12 00 */	b offSwitch__10dSv_info_cFii
/* 804840B4  48 00 00 28 */	b lbl_804840DC
lbl_804840B8:
/* 804840B8  38 80 00 08 */	li r4, 8
/* 804840BC  38 A0 00 08 */	li r5, 8
/* 804840C0  48 00 0C 25 */	bl func_80484CE4
/* 804840C4  7C 64 1B 78 */	mr r4, r3
/* 804840C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804840CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804840D0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 804840D4  7C 05 07 74 */	extsb r5, r0
/* 804840D8  4B BB 11 28 */	b onSwitch__10dSv_info_cFii
lbl_804840DC:
/* 804840DC  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 804840E0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804840E4  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 804840E8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804840EC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804840F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804840F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804840F8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 804840FC  38 80 00 04 */	li r4, 4
/* 80484100  38 A0 00 1F */	li r5, 0x1f
/* 80484104  38 C1 00 10 */	addi r6, r1, 0x10
/* 80484108  4B BE B9 1C */	b StartShock__12dVibration_cFii4cXyz
lbl_8048410C:
/* 8048410C  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80484110  2C 00 00 04 */	cmpwi r0, 4
/* 80484114  41 82 00 54 */	beq lbl_80484168
/* 80484118  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048411C  7C 03 07 74 */	extsb r3, r0
/* 80484120  4B BA 8F 4C */	b dComIfGp_getReverb__Fi
/* 80484124  7C 67 1B 78 */	mr r7, r3
/* 80484128  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080040@ha */
/* 8048412C  38 03 00 40 */	addi r0, r3, 0x0040 /* 0x00080040@l */
/* 80484130  90 01 00 0C */	stw r0, 0xc(r1)
/* 80484134  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80484138  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8048413C  80 63 00 00 */	lwz r3, 0(r3)
/* 80484140  38 81 00 0C */	addi r4, r1, 0xc
/* 80484144  38 BF 05 38 */	addi r5, r31, 0x538
/* 80484148  38 C0 00 00 */	li r6, 0
/* 8048414C  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 80484150  FC 40 08 90 */	fmr f2, f1
/* 80484154  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 80484158  FC 80 18 90 */	fmr f4, f3
/* 8048415C  39 00 00 00 */	li r8, 0
/* 80484160  4B E2 78 24 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80484164  48 00 00 50 */	b lbl_804841B4
lbl_80484168:
/* 80484168  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048416C  7C 03 07 74 */	extsb r3, r0
/* 80484170  4B BA 8E FC */	b dComIfGp_getReverb__Fi
/* 80484174  7C 67 1B 78 */	mr r7, r3
/* 80484178  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C4@ha */
/* 8048417C  38 03 01 C4 */	addi r0, r3, 0x01C4 /* 0x000801C4@l */
/* 80484180  90 01 00 08 */	stw r0, 8(r1)
/* 80484184  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80484188  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8048418C  80 63 00 00 */	lwz r3, 0(r3)
/* 80484190  38 81 00 08 */	addi r4, r1, 8
/* 80484194  38 BF 05 38 */	addi r5, r31, 0x538
/* 80484198  38 C0 00 00 */	li r6, 0
/* 8048419C  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 804841A0  FC 40 08 90 */	fmr f2, f1
/* 804841A4  C0 7E 01 2C */	lfs f3, 0x12c(r30)
/* 804841A8  FC 80 18 90 */	fmr f4, f3
/* 804841AC  39 00 00 00 */	li r8, 0
/* 804841B0  4B E2 77 D4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_804841B4:
/* 804841B4  7F E3 FB 78 */	mr r3, r31
/* 804841B8  48 00 00 1D */	bl mode_lower_init__Q211daObjSwpush5Act_cFv
lbl_804841BC:
/* 804841BC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804841C0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804841C4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804841C8  7C 08 03 A6 */	mtlr r0
/* 804841CC  38 21 00 30 */	addi r1, r1, 0x30
/* 804841D0  4E 80 00 20 */	blr 
