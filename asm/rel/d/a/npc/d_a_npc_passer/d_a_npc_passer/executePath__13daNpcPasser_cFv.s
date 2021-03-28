lbl_80AA33F0:
/* 80AA33F0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AA33F4  7C 08 02 A6 */	mflr r0
/* 80AA33F8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AA33FC  39 61 00 60 */	addi r11, r1, 0x60
/* 80AA3400  4B 8B ED DC */	b _savegpr_29
/* 80AA3404  7C 7E 1B 78 */	mr r30, r3
/* 80AA3408  3C 80 80 AA */	lis r4, lit_4109@ha
/* 80AA340C  3B E4 69 8C */	addi r31, r4, lit_4109@l
/* 80AA3410  88 03 0B 24 */	lbz r0, 0xb24(r3)
/* 80AA3414  2C 00 00 01 */	cmpwi r0, 1
/* 80AA3418  41 82 00 A4 */	beq lbl_80AA34BC
/* 80AA341C  40 80 00 10 */	bge lbl_80AA342C
/* 80AA3420  2C 00 00 00 */	cmpwi r0, 0
/* 80AA3424  40 80 00 14 */	bge lbl_80AA3438
/* 80AA3428  48 00 01 B8 */	b lbl_80AA35E0
lbl_80AA342C:
/* 80AA342C  2C 00 00 03 */	cmpwi r0, 3
/* 80AA3430  40 80 01 B0 */	bge lbl_80AA35E0
/* 80AA3434  48 00 01 18 */	b lbl_80AA354C
lbl_80AA3438:
/* 80AA3438  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AA343C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AA3440  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AA3444  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AA3448  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AA344C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AA3450  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA3454  38 81 00 1C */	addi r4, r1, 0x1c
/* 80AA3458  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80AA345C  4B 6B 67 B8 */	b checkPoint__11PathTrace_cF4cXyzf
/* 80AA3460  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA3464  41 82 01 7C */	beq lbl_80AA35E0
/* 80AA3468  80 7E 0A D4 */	lwz r3, 0xad4(r30)
/* 80AA346C  80 63 00 08 */	lwz r3, 8(r3)
/* 80AA3470  80 1E 0A EC */	lwz r0, 0xaec(r30)
/* 80AA3474  54 00 20 36 */	slwi r0, r0, 4
/* 80AA3478  7C 63 02 14 */	add r3, r3, r0
/* 80AA347C  88 03 00 03 */	lbz r0, 3(r3)
/* 80AA3480  7C 00 07 74 */	extsb r0, r0
/* 80AA3484  90 1E 0B 04 */	stw r0, 0xb04(r30)
/* 80AA3488  80 1E 0B 04 */	lwz r0, 0xb04(r30)
/* 80AA348C  2C 00 00 00 */	cmpwi r0, 0
/* 80AA3490  41 80 00 20 */	blt lbl_80AA34B0
/* 80AA3494  2C 00 00 1C */	cmpwi r0, 0x1c
/* 80AA3498  40 80 00 18 */	bge lbl_80AA34B0
/* 80AA349C  38 00 00 00 */	li r0, 0
/* 80AA34A0  90 1E 0B 1C */	stw r0, 0xb1c(r30)
/* 80AA34A4  38 00 00 01 */	li r0, 1
/* 80AA34A8  98 1E 0B 24 */	stb r0, 0xb24(r30)
/* 80AA34AC  48 00 01 34 */	b lbl_80AA35E0
lbl_80AA34B0:
/* 80AA34B0  38 00 00 02 */	li r0, 2
/* 80AA34B4  98 1E 0B 24 */	stb r0, 0xb24(r30)
/* 80AA34B8  48 00 01 28 */	b lbl_80AA35E0
lbl_80AA34BC:
/* 80AA34BC  38 80 00 00 */	li r4, 0
/* 80AA34C0  80 1E 0B 04 */	lwz r0, 0xb04(r30)
/* 80AA34C4  54 00 10 3A */	slwi r0, r0, 2
/* 80AA34C8  3C A0 80 AA */	lis r5, m_funcTbl__13daNpcPasser_c@ha
/* 80AA34CC  38 A5 6B 14 */	addi r5, r5, m_funcTbl__13daNpcPasser_c@l
/* 80AA34D0  7C A5 00 2E */	lwzx r5, r5, r0
/* 80AA34D4  88 1E 0B 23 */	lbz r0, 0xb23(r30)
/* 80AA34D8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80AA34DC  7D 85 02 14 */	add r12, r5, r0
/* 80AA34E0  4B 8B EB A4 */	b __ptmf_scall
/* 80AA34E4  60 00 00 00 */	nop 
/* 80AA34E8  2C 03 00 00 */	cmpwi r3, 0
/* 80AA34EC  41 82 00 F4 */	beq lbl_80AA35E0
/* 80AA34F0  80 1E 0B 04 */	lwz r0, 0xb04(r30)
/* 80AA34F4  54 00 10 3A */	slwi r0, r0, 2
/* 80AA34F8  3C 60 80 AA */	lis r3, m_funcTbl__13daNpcPasser_c@ha
/* 80AA34FC  38 63 6B 14 */	addi r3, r3, m_funcTbl__13daNpcPasser_c@l
/* 80AA3500  7C 83 00 2E */	lwzx r4, r3, r0
/* 80AA3504  88 7E 0B 23 */	lbz r3, 0xb23(r30)
/* 80AA3508  38 03 00 01 */	addi r0, r3, 1
/* 80AA350C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80AA3510  7C 64 02 14 */	add r3, r4, r0
/* 80AA3514  4B 8B EB 04 */	b __ptmf_test
/* 80AA3518  2C 03 00 00 */	cmpwi r3, 0
/* 80AA351C  40 82 00 18 */	bne lbl_80AA3534
/* 80AA3520  38 00 00 00 */	li r0, 0
/* 80AA3524  98 1E 0B 23 */	stb r0, 0xb23(r30)
/* 80AA3528  38 00 00 02 */	li r0, 2
/* 80AA352C  98 1E 0B 24 */	stb r0, 0xb24(r30)
/* 80AA3530  48 00 00 B0 */	b lbl_80AA35E0
lbl_80AA3534:
/* 80AA3534  88 7E 0B 23 */	lbz r3, 0xb23(r30)
/* 80AA3538  38 03 00 01 */	addi r0, r3, 1
/* 80AA353C  98 1E 0B 23 */	stb r0, 0xb23(r30)
/* 80AA3540  38 00 00 01 */	li r0, 1
/* 80AA3544  98 1E 0B 22 */	stb r0, 0xb22(r30)
/* 80AA3548  48 00 00 98 */	b lbl_80AA35E0
lbl_80AA354C:
/* 80AA354C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80AA3550  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AA3554  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AA3558  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AA355C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80AA3560  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AA3564  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA3568  38 81 00 10 */	addi r4, r1, 0x10
/* 80AA356C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80AA3570  4B 6B 68 50 */	b checkPathEnd__11PathTrace_cF4cXyzf
/* 80AA3574  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA3578  41 82 00 10 */	beq lbl_80AA3588
/* 80AA357C  7F C3 F3 78 */	mr r3, r30
/* 80AA3580  4B 57 66 FC */	b fopAcM_delete__FP10fopAc_ac_c
/* 80AA3584  48 00 00 5C */	b lbl_80AA35E0
lbl_80AA3588:
/* 80AA3588  80 1E 0B 1C */	lwz r0, 0xb1c(r30)
/* 80AA358C  28 00 00 00 */	cmplwi r0, 0
/* 80AA3590  40 82 00 3C */	bne lbl_80AA35CC
/* 80AA3594  7F C3 F3 78 */	mr r3, r30
/* 80AA3598  38 80 00 02 */	li r4, 2
/* 80AA359C  80 BE 0B 00 */	lwz r5, 0xb00(r30)
/* 80AA35A0  4B 6B 4B 50 */	b getAnmP__10daNpcCd2_cFii
/* 80AA35A4  7C 64 1B 78 */	mr r4, r3
/* 80AA35A8  7F C3 F3 78 */	mr r3, r30
/* 80AA35AC  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA35B0  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA35B4  38 A0 00 02 */	li r5, 2
/* 80AA35B8  38 C0 00 00 */	li r6, 0
/* 80AA35BC  38 E0 FF FF */	li r7, -1
/* 80AA35C0  4B 6B 59 40 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA35C4  38 00 00 02 */	li r0, 2
/* 80AA35C8  90 1E 0B 1C */	stw r0, 0xb1c(r30)
lbl_80AA35CC:
/* 80AA35CC  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA35D0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AA35D4  4B 6B 69 C4 */	b setNextPoint__11PathTrace_cFR4cXyz
/* 80AA35D8  38 00 00 00 */	li r0, 0
/* 80AA35DC  98 1E 0B 24 */	stb r0, 0xb24(r30)
lbl_80AA35E0:
/* 80AA35E0  80 1E 0B 1C */	lwz r0, 0xb1c(r30)
/* 80AA35E4  28 00 00 02 */	cmplwi r0, 2
/* 80AA35E8  41 82 00 0C */	beq lbl_80AA35F4
/* 80AA35EC  28 00 00 01 */	cmplwi r0, 1
/* 80AA35F0  40 82 01 E0 */	bne lbl_80AA37D0
lbl_80AA35F4:
/* 80AA35F4  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA35F8  7F C4 F3 78 */	mr r4, r30
/* 80AA35FC  4B 6B 6D 74 */	b checkObstacle__11PathTrace_cFP10fopAc_ac_c
/* 80AA3600  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA3604  38 81 00 28 */	addi r4, r1, 0x28
/* 80AA3608  4B 6B 68 4C */	b getTargetPoint__11PathTrace_cFP3Vec
/* 80AA360C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80AA3610  38 81 00 28 */	addi r4, r1, 0x28
/* 80AA3614  4B 7C D5 F0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80AA3618  7C 64 1B 78 */	mr r4, r3
/* 80AA361C  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80AA3620  38 A0 00 0D */	li r5, 0xd
/* 80AA3624  38 C0 06 00 */	li r6, 0x600
/* 80AA3628  4B 7C CF E0 */	b cLib_addCalcAngleS2__FPssss
/* 80AA362C  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80AA3630  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80AA3634  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AA3638  41 82 00 60 */	beq lbl_80AA3698
/* 80AA363C  3B A0 00 00 */	li r29, 0
/* 80AA3640  3C 60 80 AA */	lis r3, __vt__8cM3dGPla@ha
/* 80AA3644  38 03 73 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80AA3648  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AA364C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AA3650  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AA3654  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80AA3658  38 9E 07 28 */	addi r4, r30, 0x728
/* 80AA365C  38 A1 00 34 */	addi r5, r1, 0x34
/* 80AA3660  4B 5D 10 E4 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80AA3664  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA3668  41 82 00 14 */	beq lbl_80AA367C
/* 80AA366C  38 61 00 34 */	addi r3, r1, 0x34
/* 80AA3670  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80AA3674  4B 57 A5 64 */	b fopAcM_getPolygonAngle__FPC8cM3dGPlas
/* 80AA3678  7C 7D 1B 78 */	mr r29, r3
lbl_80AA367C:
/* 80AA367C  7F A0 07 35 */	extsh. r0, r29
/* 80AA3680  41 82 00 0C */	beq lbl_80AA368C
/* 80AA3684  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80AA3688  D0 1E 0B 18 */	stfs f0, 0xb18(r30)
lbl_80AA368C:
/* 80AA368C  3C 60 80 AA */	lis r3, __vt__8cM3dGPla@ha
/* 80AA3690  38 03 73 C0 */	addi r0, r3, __vt__8cM3dGPla@l
/* 80AA3694  90 01 00 44 */	stw r0, 0x44(r1)
lbl_80AA3698:
/* 80AA3698  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 80AA369C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80AA36A0  41 82 01 28 */	beq lbl_80AA37C8
/* 80AA36A4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80AA36A8  38 9E 04 BC */	addi r4, r30, 0x4bc
/* 80AA36AC  4B 8A 3C F0 */	b PSVECSquareDistance
/* 80AA36B0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80AA36B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA36B8  40 81 00 58 */	ble lbl_80AA3710
/* 80AA36BC  FC 00 08 34 */	frsqrte f0, f1
/* 80AA36C0  C8 9F 00 18 */	lfd f4, 0x18(r31)
/* 80AA36C4  FC 44 00 32 */	fmul f2, f4, f0
/* 80AA36C8  C8 7F 00 20 */	lfd f3, 0x20(r31)
/* 80AA36CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80AA36D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80AA36D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80AA36D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80AA36DC  FC 44 00 32 */	fmul f2, f4, f0
/* 80AA36E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80AA36E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80AA36E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80AA36EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80AA36F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80AA36F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80AA36F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80AA36FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80AA3700  FC 02 00 32 */	fmul f0, f2, f0
/* 80AA3704  FC 21 00 32 */	fmul f1, f1, f0
/* 80AA3708  FC 20 08 18 */	frsp f1, f1
/* 80AA370C  48 00 00 88 */	b lbl_80AA3794
lbl_80AA3710:
/* 80AA3710  C8 1F 00 28 */	lfd f0, 0x28(r31)
/* 80AA3714  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA3718  40 80 00 10 */	bge lbl_80AA3728
/* 80AA371C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AA3720  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80AA3724  48 00 00 70 */	b lbl_80AA3794
lbl_80AA3728:
/* 80AA3728  D0 21 00 08 */	stfs f1, 8(r1)
/* 80AA372C  80 81 00 08 */	lwz r4, 8(r1)
/* 80AA3730  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80AA3734  3C 00 7F 80 */	lis r0, 0x7f80
/* 80AA3738  7C 03 00 00 */	cmpw r3, r0
/* 80AA373C  41 82 00 14 */	beq lbl_80AA3750
/* 80AA3740  40 80 00 40 */	bge lbl_80AA3780
/* 80AA3744  2C 03 00 00 */	cmpwi r3, 0
/* 80AA3748  41 82 00 20 */	beq lbl_80AA3768
/* 80AA374C  48 00 00 34 */	b lbl_80AA3780
lbl_80AA3750:
/* 80AA3750  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AA3754  41 82 00 0C */	beq lbl_80AA3760
/* 80AA3758  38 00 00 01 */	li r0, 1
/* 80AA375C  48 00 00 28 */	b lbl_80AA3784
lbl_80AA3760:
/* 80AA3760  38 00 00 02 */	li r0, 2
/* 80AA3764  48 00 00 20 */	b lbl_80AA3784
lbl_80AA3768:
/* 80AA3768  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80AA376C  41 82 00 0C */	beq lbl_80AA3778
/* 80AA3770  38 00 00 05 */	li r0, 5
/* 80AA3774  48 00 00 10 */	b lbl_80AA3784
lbl_80AA3778:
/* 80AA3778  38 00 00 03 */	li r0, 3
/* 80AA377C  48 00 00 08 */	b lbl_80AA3784
lbl_80AA3780:
/* 80AA3780  38 00 00 04 */	li r0, 4
lbl_80AA3784:
/* 80AA3784  2C 00 00 01 */	cmpwi r0, 1
/* 80AA3788  40 82 00 0C */	bne lbl_80AA3794
/* 80AA378C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80AA3790  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80AA3794:
/* 80AA3794  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80AA3798  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80AA379C  40 80 00 2C */	bge lbl_80AA37C8
/* 80AA37A0  88 7E 0B 25 */	lbz r3, 0xb25(r30)
/* 80AA37A4  38 03 00 01 */	addi r0, r3, 1
/* 80AA37A8  98 1E 0B 25 */	stb r0, 0xb25(r30)
/* 80AA37AC  88 1E 0B 25 */	lbz r0, 0xb25(r30)
/* 80AA37B0  28 00 00 1E */	cmplwi r0, 0x1e
/* 80AA37B4  40 81 00 1C */	ble lbl_80AA37D0
/* 80AA37B8  7F C3 F3 78 */	mr r3, r30
/* 80AA37BC  38 80 00 04 */	li r4, 4
/* 80AA37C0  4B FF FA 2D */	bl setAction__13daNpcPasser_cFQ213daNpcPasser_c6Mode_e
/* 80AA37C4  48 00 00 0C */	b lbl_80AA37D0
lbl_80AA37C8:
/* 80AA37C8  38 00 00 00 */	li r0, 0
/* 80AA37CC  98 1E 0B 25 */	stb r0, 0xb25(r30)
lbl_80AA37D0:
/* 80AA37D0  7F C3 F3 78 */	mr r3, r30
/* 80AA37D4  48 00 0B D1 */	bl setAngle__13daNpcPasser_cFv
/* 80AA37D8  7F C3 F3 78 */	mr r3, r30
/* 80AA37DC  48 00 0C C9 */	bl pathMoveF__13daNpcPasser_cFv
/* 80AA37E0  38 7E 06 38 */	addi r3, r30, 0x638
/* 80AA37E4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AA37E8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AA37EC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80AA37F0  4B 5D 32 BC */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80AA37F4  7F C3 F3 78 */	mr r3, r30
/* 80AA37F8  4B 6B 60 20 */	b checkFearSituation__10daNpcCd2_cFv
/* 80AA37FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA3800  41 82 00 64 */	beq lbl_80AA3864
/* 80AA3804  80 1E 0B 00 */	lwz r0, 0xb00(r30)
/* 80AA3808  2C 00 00 02 */	cmpwi r0, 2
/* 80AA380C  40 82 00 28 */	bne lbl_80AA3834
/* 80AA3810  80 1E 0A 98 */	lwz r0, 0xa98(r30)
/* 80AA3814  2C 00 00 00 */	cmpwi r0, 0
/* 80AA3818  41 82 00 0C */	beq lbl_80AA3824
/* 80AA381C  2C 00 00 01 */	cmpwi r0, 1
/* 80AA3820  40 82 00 14 */	bne lbl_80AA3834
lbl_80AA3824:
/* 80AA3824  7F C3 F3 78 */	mr r3, r30
/* 80AA3828  38 80 00 03 */	li r4, 3
/* 80AA382C  4B FF F9 C1 */	bl setAction__13daNpcPasser_cFQ213daNpcPasser_c6Mode_e
/* 80AA3830  48 00 00 10 */	b lbl_80AA3840
lbl_80AA3834:
/* 80AA3834  7F C3 F3 78 */	mr r3, r30
/* 80AA3838  38 80 00 01 */	li r4, 1
/* 80AA383C  4B FF F9 B1 */	bl setAction__13daNpcPasser_cFQ213daNpcPasser_c6Mode_e
lbl_80AA3840:
/* 80AA3840  80 1E 04 A4 */	lwz r0, 0x4a4(r30)
/* 80AA3844  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AA3848  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80AA384C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80AA3850  38 81 00 0C */	addi r4, r1, 0xc
/* 80AA3854  4B 57 5F A4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80AA3858  28 03 00 00 */	cmplwi r3, 0
/* 80AA385C  41 82 00 08 */	beq lbl_80AA3864
/* 80AA3860  4B 57 64 1C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80AA3864:
/* 80AA3864  39 61 00 60 */	addi r11, r1, 0x60
/* 80AA3868  4B 8B E9 C0 */	b _restgpr_29
/* 80AA386C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AA3870  7C 08 03 A6 */	mtlr r0
/* 80AA3874  38 21 00 60 */	addi r1, r1, 0x60
/* 80AA3878  4E 80 00 20 */	blr 
