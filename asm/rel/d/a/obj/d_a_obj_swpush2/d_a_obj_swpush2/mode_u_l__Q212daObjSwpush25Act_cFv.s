lbl_80CFEF98:
/* 80CFEF98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CFEF9C  7C 08 02 A6 */	mflr r0
/* 80CFEFA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CFEFA4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CFEFA8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CFEFAC  7C 7E 1B 78 */	mr r30, r3
/* 80CFEFB0  3C 60 80 D0 */	lis r3, M_arcname__Q212daObjSwpush25Act_c@ha
/* 80CFEFB4  3B E3 FB F4 */	addi r31, r3, M_arcname__Q212daObjSwpush25Act_c@l
/* 80CFEFB8  88 7E 05 F0 */	lbz r3, 0x5f0(r30)
/* 80CFEFBC  28 03 00 00 */	cmplwi r3, 0
/* 80CFEFC0  41 82 00 3C */	beq lbl_80CFEFFC
/* 80CFEFC4  38 03 FF FF */	addi r0, r3, -1
/* 80CFEFC8  98 1E 05 F0 */	stb r0, 0x5f0(r30)
/* 80CFEFCC  88 1E 05 F0 */	lbz r0, 0x5f0(r30)
/* 80CFEFD0  28 00 00 00 */	cmplwi r0, 0
/* 80CFEFD4  40 82 00 28 */	bne lbl_80CFEFFC
/* 80CFEFD8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80CFEFDC  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CFEFE0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CFEFE4  80 7E 05 AC */	lwz r3, 0x5ac(r30)
/* 80CFEFE8  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CFEFEC  80 7E 05 B0 */	lwz r3, 0x5b0(r30)
/* 80CFEFF0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80CFEFF4  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80CFEFF8  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
lbl_80CFEFFC:
/* 80CFEFFC  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 80CFF000  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 80CFF004  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CFF008  4C 40 13 82 */	cror 2, 0, 2
/* 80CFF00C  40 82 01 44 */	bne lbl_80CFF150
/* 80CFF010  88 1E 05 DF */	lbz r0, 0x5df(r30)
/* 80CFF014  28 00 00 00 */	cmplwi r0, 0
/* 80CFF018  41 82 00 E4 */	beq lbl_80CFF0FC
/* 80CFF01C  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 80CFF020  1C 80 00 38 */	mulli r4, r0, 0x38
/* 80CFF024  38 7F 00 0C */	addi r3, r31, 0xc
/* 80CFF028  38 04 00 04 */	addi r0, r4, 4
/* 80CFF02C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80CFF030  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80CFF034  41 82 00 30 */	beq lbl_80CFF064
/* 80CFF038  7F C3 F3 78 */	mr r3, r30
/* 80CFF03C  38 80 00 08 */	li r4, 8
/* 80CFF040  38 A0 00 08 */	li r5, 8
/* 80CFF044  48 00 0B 8D */	bl func_80CFFBD0
/* 80CFF048  7C 64 1B 78 */	mr r4, r3
/* 80CFF04C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFF050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFF054  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CFF058  7C 05 07 74 */	extsb r5, r0
/* 80CFF05C  4B 33 63 D0 */	b revSwitch__10dSv_info_cFii
/* 80CFF060  48 00 00 60 */	b lbl_80CFF0C0
lbl_80CFF064:
/* 80CFF064  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80CFF068  41 82 00 30 */	beq lbl_80CFF098
/* 80CFF06C  7F C3 F3 78 */	mr r3, r30
/* 80CFF070  38 80 00 08 */	li r4, 8
/* 80CFF074  38 A0 00 08 */	li r5, 8
/* 80CFF078  48 00 0B 59 */	bl func_80CFFBD0
/* 80CFF07C  7C 64 1B 78 */	mr r4, r3
/* 80CFF080  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFF084  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFF088  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CFF08C  7C 05 07 74 */	extsb r5, r0
/* 80CFF090  4B 33 62 20 */	b offSwitch__10dSv_info_cFii
/* 80CFF094  48 00 00 2C */	b lbl_80CFF0C0
lbl_80CFF098:
/* 80CFF098  7F C3 F3 78 */	mr r3, r30
/* 80CFF09C  38 80 00 08 */	li r4, 8
/* 80CFF0A0  38 A0 00 08 */	li r5, 8
/* 80CFF0A4  48 00 0B 2D */	bl func_80CFFBD0
/* 80CFF0A8  7C 64 1B 78 */	mr r4, r3
/* 80CFF0AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFF0B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFF0B4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CFF0B8  7C 05 07 74 */	extsb r5, r0
/* 80CFF0BC  4B 33 61 44 */	b onSwitch__10dSv_info_cFii
lbl_80CFF0C0:
/* 80CFF0C0  88 1E 05 D3 */	lbz r0, 0x5d3(r30)
/* 80CFF0C4  28 00 00 00 */	cmplwi r0, 0
/* 80CFF0C8  41 82 00 34 */	beq lbl_80CFF0FC
/* 80CFF0CC  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 80CFF0D0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80CFF0D4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80CFF0D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CFF0DC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CFF0E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CFF0E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CFF0E8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CFF0EC  38 80 00 04 */	li r4, 4
/* 80CFF0F0  38 A0 00 1F */	li r5, 0x1f
/* 80CFF0F4  38 C1 00 0C */	addi r6, r1, 0xc
/* 80CFF0F8  4B 37 09 2C */	b StartShock__12dVibration_cFii4cXyz
lbl_80CFF0FC:
/* 80CFF0FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CFF100  7C 03 07 74 */	extsb r3, r0
/* 80CFF104  4B 32 DF 68 */	b dComIfGp_getReverb__Fi
/* 80CFF108  7C 67 1B 78 */	mr r7, r3
/* 80CFF10C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080040@ha */
/* 80CFF110  38 03 00 40 */	addi r0, r3, 0x0040 /* 0x00080040@l */
/* 80CFF114  90 01 00 08 */	stw r0, 8(r1)
/* 80CFF118  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CFF11C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CFF120  80 63 00 00 */	lwz r3, 0(r3)
/* 80CFF124  38 81 00 08 */	addi r4, r1, 8
/* 80CFF128  38 BE 05 38 */	addi r5, r30, 0x538
/* 80CFF12C  38 C0 00 00 */	li r6, 0
/* 80CFF130  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 80CFF134  FC 40 08 90 */	fmr f2, f1
/* 80CFF138  C0 7F 01 00 */	lfs f3, 0x100(r31)
/* 80CFF13C  FC 80 18 90 */	fmr f4, f3
/* 80CFF140  39 00 00 00 */	li r8, 0
/* 80CFF144  4B 5A C8 40 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CFF148  7F C3 F3 78 */	mr r3, r30
/* 80CFF14C  48 00 00 1D */	bl mode_lower_init__Q212daObjSwpush25Act_cFv
lbl_80CFF150:
/* 80CFF150  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CFF154  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CFF158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CFF15C  7C 08 03 A6 */	mtlr r0
/* 80CFF160  38 21 00 20 */	addi r1, r1, 0x20
/* 80CFF164  4E 80 00 20 */	blr 
