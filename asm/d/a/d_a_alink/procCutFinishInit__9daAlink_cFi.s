lbl_800D34D8:
/* 800D34D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800D34DC  7C 08 02 A6 */	mflr r0
/* 800D34E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800D34E4  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800D34E8  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800D34EC  39 61 00 30 */	addi r11, r1, 0x30
/* 800D34F0  48 28 EC DD */	bl _savegpr_25
/* 800D34F4  7C 7C 1B 78 */	mr r28, r3
/* 800D34F8  7C 9D 23 78 */	mr r29, r4
/* 800D34FC  3C 80 80 39 */	lis r4, lit_3757@ha
/* 800D3500  3B 64 D6 58 */	addi r27, r4, lit_3757@l
/* 800D3504  57 A0 20 36 */	slwi r0, r29, 4
/* 800D3508  3B FB 42 00 */	addi r31, r27, 0x4200
/* 800D350C  7F FF 02 14 */	add r31, r31, r0
/* 800D3510  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D3514  20 00 00 0E */	subfic r0, r0, 0xe
/* 800D3518  7C 00 00 34 */	cntlzw r0, r0
/* 800D351C  54 19 DE 3E */	rlwinm r25, r0, 0x1b, 0x18, 0x1f
/* 800D3520  38 80 00 22 */	li r4, 0x22
/* 800D3524  4B FE EA 49 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D3528  7F 83 E3 78 */	mr r3, r28
/* 800D352C  88 9F 00 08 */	lbz r4, 8(r31)
/* 800D3530  4B FF DF FD */	bl setCutType__9daAlink_cFUc
/* 800D3534  80 1F 00 04 */	lwz r0, 4(r31)
/* 800D3538  90 1C 31 98 */	stw r0, 0x3198(r28)
/* 800D353C  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 800D3540  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 800D3544  88 1F 00 0B */	lbz r0, 0xb(r31)
/* 800D3548  B0 1C 30 0E */	sth r0, 0x300e(r28)
/* 800D354C  3B C0 00 00 */	li r30, 0
/* 800D3550  2C 1D 00 00 */	cmpwi r29, 0
/* 800D3554  40 82 00 0C */	bne lbl_800D3560
/* 800D3558  3B 5B 03 8C */	addi r26, r27, 0x38c
/* 800D355C  48 00 00 50 */	b lbl_800D35AC
lbl_800D3560:
/* 800D3560  2C 1D 00 01 */	cmpwi r29, 1
/* 800D3564  40 82 00 0C */	bne lbl_800D3570
/* 800D3568  3B 5B 03 B8 */	addi r26, r27, 0x3b8
/* 800D356C  48 00 00 40 */	b lbl_800D35AC
lbl_800D3570:
/* 800D3570  2C 1D 00 02 */	cmpwi r29, 2
/* 800D3574  40 82 00 0C */	bne lbl_800D3580
/* 800D3578  3B 5B 03 E4 */	addi r26, r27, 0x3e4
/* 800D357C  48 00 00 30 */	b lbl_800D35AC
lbl_800D3580:
/* 800D3580  2C 1D 00 03 */	cmpwi r29, 3
/* 800D3584  40 82 00 10 */	bne lbl_800D3594
/* 800D3588  3B 5B 04 10 */	addi r26, r27, 0x410
/* 800D358C  3B C0 00 01 */	li r30, 1
/* 800D3590  48 00 00 1C */	b lbl_800D35AC
lbl_800D3594:
/* 800D3594  2C 1D 00 04 */	cmpwi r29, 4
/* 800D3598  40 82 00 10 */	bne lbl_800D35A8
/* 800D359C  3B 5B 04 3C */	addi r26, r27, 0x43c
/* 800D35A0  3B C0 00 01 */	li r30, 1
/* 800D35A4  48 00 00 08 */	b lbl_800D35AC
lbl_800D35A8:
/* 800D35A8  3B 5B 04 68 */	addi r26, r27, 0x468
lbl_800D35AC:
/* 800D35AC  2C 19 00 00 */	cmpwi r25, 0
/* 800D35B0  41 82 00 0C */	beq lbl_800D35BC
/* 800D35B4  C3 FA 00 1C */	lfs f31, 0x1c(r26)
/* 800D35B8  48 00 00 1C */	b lbl_800D35D4
lbl_800D35BC:
/* 800D35BC  88 1C 05 69 */	lbz r0, 0x569(r28)
/* 800D35C0  28 00 00 03 */	cmplwi r0, 3
/* 800D35C4  40 82 00 0C */	bne lbl_800D35D0
/* 800D35C8  C3 FA 00 28 */	lfs f31, 0x28(r26)
/* 800D35CC  48 00 00 08 */	b lbl_800D35D4
lbl_800D35D0:
/* 800D35D0  C3 FA 00 08 */	lfs f31, 8(r26)
lbl_800D35D4:
/* 800D35D4  7F 83 E3 78 */	mr r3, r28
/* 800D35D8  4B FE C7 D9 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 800D35DC  2C 03 00 00 */	cmpwi r3, 0
/* 800D35E0  40 82 00 18 */	bne lbl_800D35F8
/* 800D35E4  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800D35E8  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800D35EC  41 82 00 0C */	beq lbl_800D35F8
/* 800D35F0  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 800D35F4  48 00 00 08 */	b lbl_800D35FC
lbl_800D35F8:
/* 800D35F8  C0 7A 00 0C */	lfs f3, 0xc(r26)
lbl_800D35FC:
/* 800D35FC  7F 83 E3 78 */	mr r3, r28
/* 800D3600  80 9F 00 00 */	lwz r4, 0(r31)
/* 800D3604  C0 3A 00 04 */	lfs f1, 4(r26)
/* 800D3608  FC 40 F8 90 */	fmr f2, f31
/* 800D360C  A8 BA 00 00 */	lha r5, 0(r26)
/* 800D3610  4B FD 99 FD */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800D3614  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 800D3618  D0 1C 34 78 */	stfs f0, 0x3478(r28)
/* 800D361C  C0 1A 00 20 */	lfs f0, 0x20(r26)
/* 800D3620  D0 1C 34 7C */	stfs f0, 0x347c(r28)
/* 800D3624  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 800D3628  D0 1C 34 80 */	stfs f0, 0x3480(r28)
/* 800D362C  7F 83 E3 78 */	mr r3, r28
/* 800D3630  38 80 00 01 */	li r4, 1
/* 800D3634  38 A0 00 01 */	li r5, 1
/* 800D3638  4B FE 7E 81 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800D363C  2C 03 00 00 */	cmpwi r3, 0
/* 800D3640  41 82 00 14 */	beq lbl_800D3654
/* 800D3644  C0 3C 34 80 */	lfs f1, 0x3480(r28)
/* 800D3648  C0 1C 34 34 */	lfs f0, 0x3434(r28)
/* 800D364C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800D3650  D0 1C 34 80 */	stfs f0, 0x3480(r28)
lbl_800D3654:
/* 800D3654  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800D3658  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 800D365C  39 1B 08 34 */	addi r8, r27, 0x834
/* 800D3660  A8 08 00 52 */	lha r0, 0x52(r8)
/* 800D3664  B0 1C 30 7E */	sth r0, 0x307e(r28)
/* 800D3668  88 1C 05 69 */	lbz r0, 0x569(r28)
/* 800D366C  28 00 00 03 */	cmplwi r0, 3
/* 800D3670  40 82 00 44 */	bne lbl_800D36B4
/* 800D3674  C0 1A 00 24 */	lfs f0, 0x24(r26)
/* 800D3678  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 800D367C  A8 1A 00 16 */	lha r0, 0x16(r26)
/* 800D3680  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800D3684  7F 83 E3 78 */	mr r3, r28
/* 800D3688  38 80 00 00 */	li r4, 0
/* 800D368C  38 A0 00 01 */	li r5, 1
/* 800D3690  88 DF 00 09 */	lbz r6, 9(r31)
/* 800D3694  38 E0 00 02 */	li r7, 2
/* 800D3698  C0 28 00 74 */	lfs f1, 0x74(r8)
/* 800D369C  C0 48 00 78 */	lfs f2, 0x78(r8)
/* 800D36A0  4B FF DF E9 */	bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
/* 800D36A4  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020002@ha */
/* 800D36A8  38 03 00 02 */	addi r0, r3, 0x0002 /* 0x00020002@l */
/* 800D36AC  90 1C 32 D0 */	stw r0, 0x32d0(r28)
/* 800D36B0  48 00 00 60 */	b lbl_800D3710
lbl_800D36B4:
/* 800D36B4  C0 1A 00 10 */	lfs f0, 0x10(r26)
/* 800D36B8  D0 1C 34 84 */	stfs f0, 0x3484(r28)
/* 800D36BC  A8 1A 00 14 */	lha r0, 0x14(r26)
/* 800D36C0  B0 1C 30 08 */	sth r0, 0x3008(r28)
/* 800D36C4  7F 83 E3 78 */	mr r3, r28
/* 800D36C8  38 80 00 01 */	li r4, 1
/* 800D36CC  38 A0 00 03 */	li r5, 3
/* 800D36D0  88 DF 00 09 */	lbz r6, 9(r31)
/* 800D36D4  30 1E FF FF */	addic r0, r30, -1
/* 800D36D8  7C E0 F1 10 */	subfe r7, r0, r30
/* 800D36DC  38 E7 00 03 */	addi r7, r7, 3
/* 800D36E0  C0 28 00 74 */	lfs f1, 0x74(r8)
/* 800D36E4  C0 48 00 78 */	lfs f2, 0x78(r8)
/* 800D36E8  4B FF DF A1 */	bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
/* 800D36EC  2C 1D 00 02 */	cmpwi r29, 2
/* 800D36F0  40 82 00 14 */	bne lbl_800D3704
/* 800D36F4  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020004@ha */
/* 800D36F8  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00020004@l */
/* 800D36FC  90 1C 32 D0 */	stw r0, 0x32d0(r28)
/* 800D3700  48 00 00 10 */	b lbl_800D3710
lbl_800D3704:
/* 800D3704  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020003@ha */
/* 800D3708  38 03 00 03 */	addi r0, r3, 0x0003 /* 0x00020003@l */
/* 800D370C  90 1C 32 D0 */	stw r0, 0x32d0(r28)
lbl_800D3710:
/* 800D3710  2C 1E 00 00 */	cmpwi r30, 0
/* 800D3714  41 82 00 18 */	beq lbl_800D372C
/* 800D3718  7F 83 E3 78 */	mr r3, r28
/* 800D371C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001009A@ha */
/* 800D3720  38 84 00 9A */	addi r4, r4, 0x009A /* 0x0001009A@l */
/* 800D3724  4B FF EB 61 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D3728  48 00 00 0C */	b lbl_800D3734
lbl_800D372C:
/* 800D372C  7F 83 E3 78 */	mr r3, r28
/* 800D3730  4B FF EB D5 */	bl setSwordComboVoice__9daAlink_cFv
lbl_800D3734:
/* 800D3734  38 00 00 0C */	li r0, 0xc
/* 800D3738  98 1C 2F 99 */	stb r0, 0x2f99(r28)
/* 800D373C  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha
/* 800D3740  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)
/* 800D3744  D0 1C 35 88 */	stfs f0, 0x3588(r28)
/* 800D3748  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D374C  D0 1C 35 8C */	stfs f0, 0x358c(r28)
/* 800D3750  C0 03 00 08 */	lfs f0, 8(r3)
/* 800D3754  D0 1C 35 90 */	stfs f0, 0x3590(r28)
/* 800D3758  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 800D375C  28 00 00 1A */	cmplwi r0, 0x1a
/* 800D3760  41 82 00 0C */	beq lbl_800D376C
/* 800D3764  28 00 00 20 */	cmplwi r0, 0x20
/* 800D3768  40 82 00 0C */	bne lbl_800D3774
lbl_800D376C:
/* 800D376C  38 00 00 0D */	li r0, 0xd
/* 800D3770  98 1C 2F 99 */	stb r0, 0x2f99(r28)
lbl_800D3774:
/* 800D3774  38 00 00 00 */	li r0, 0
/* 800D3778  B0 1C 30 12 */	sth r0, 0x3012(r28)
/* 800D377C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D3780  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D3784  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800D3788  60 00 80 00 */	ori r0, r0, 0x8000
/* 800D378C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800D3790  7F 83 E3 78 */	mr r3, r28
/* 800D3794  48 05 09 B1 */	bl setCutWaterDropEffect__9daAlink_cFv
/* 800D3798  7F 83 E3 78 */	mr r3, r28
/* 800D379C  4B FF F4 61 */	bl initCutAtnActorSearch__9daAlink_cFv
/* 800D37A0  80 7C 27 E0 */	lwz r3, 0x27e0(r28)
/* 800D37A4  38 80 00 00 */	li r4, 0
/* 800D37A8  4B F9 FD 95 */	bl LockonTarget__12dAttention_cFl
/* 800D37AC  28 03 00 00 */	cmplwi r3, 0
/* 800D37B0  41 82 00 28 */	beq lbl_800D37D8
/* 800D37B4  2C 1E 00 00 */	cmpwi r30, 0
/* 800D37B8  41 82 00 20 */	beq lbl_800D37D8
/* 800D37BC  80 7C 27 E0 */	lwz r3, 0x27e0(r28)
/* 800D37C0  38 80 00 00 */	li r4, 0
/* 800D37C4  4B F9 FD 79 */	bl LockonTarget__12dAttention_cFl
/* 800D37C8  7C 64 1B 78 */	mr r4, r3
/* 800D37CC  38 7C 28 0C */	addi r3, r28, 0x280c
/* 800D37D0  48 08 B4 E9 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800D37D4  48 00 00 0C */	b lbl_800D37E0
lbl_800D37D8:
/* 800D37D8  38 7C 28 0C */	addi r3, r28, 0x280c
/* 800D37DC  48 08 B5 21 */	bl clearData__16daPy_actorKeep_cFv
lbl_800D37E0:
/* 800D37E0  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 800D37E4  28 00 00 1A */	cmplwi r0, 0x1a
/* 800D37E8  41 82 00 0C */	beq lbl_800D37F4
/* 800D37EC  28 00 00 1F */	cmplwi r0, 0x1f
/* 800D37F0  40 82 00 10 */	bne lbl_800D3800
lbl_800D37F4:
/* 800D37F4  38 00 00 01 */	li r0, 1
/* 800D37F8  98 1C 2F D0 */	stb r0, 0x2fd0(r28)
/* 800D37FC  48 00 00 0C */	b lbl_800D3808
lbl_800D3800:
/* 800D3800  38 00 00 00 */	li r0, 0
/* 800D3804  98 1C 2F D0 */	stb r0, 0x2fd0(r28)
lbl_800D3808:
/* 800D3808  38 60 00 01 */	li r3, 1
/* 800D380C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800D3810  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800D3814  39 61 00 30 */	addi r11, r1, 0x30
/* 800D3818  48 28 EA 01 */	bl _restgpr_25
/* 800D381C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800D3820  7C 08 03 A6 */	mtlr r0
/* 800D3824  38 21 00 40 */	addi r1, r1, 0x40
/* 800D3828  4E 80 00 20 */	blr 
