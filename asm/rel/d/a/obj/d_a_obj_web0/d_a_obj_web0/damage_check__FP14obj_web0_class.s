lbl_80D345C0:
/* 80D345C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D345C4  7C 08 02 A6 */	mflr r0
/* 80D345C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D345CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D345D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D345D4  7C 7E 1B 78 */	mr r30, r3
/* 80D345D8  3C 60 80 D3 */	lis r3, lit_3724@ha
/* 80D345DC  3B E3 51 7C */	addi r31, r3, lit_3724@l
/* 80D345E0  38 7E 05 E0 */	addi r3, r30, 0x5e0
/* 80D345E4  4B 34 F2 4C */	b Move__10dCcD_GSttsFv
/* 80D345E8  A8 1E 05 88 */	lha r0, 0x588(r30)
/* 80D345EC  2C 00 00 00 */	cmpwi r0, 0
/* 80D345F0  40 82 01 8C */	bne lbl_80D3477C
/* 80D345F4  38 7E 06 00 */	addi r3, r30, 0x600
/* 80D345F8  4B 34 FE 68 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80D345FC  28 03 00 00 */	cmplwi r3, 0
/* 80D34600  41 82 00 DC */	beq lbl_80D346DC
/* 80D34604  38 00 00 06 */	li r0, 6
/* 80D34608  B0 1E 05 88 */	sth r0, 0x588(r30)
/* 80D3460C  38 7E 06 00 */	addi r3, r30, 0x600
/* 80D34610  4B 34 FE E8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80D34614  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80D34618  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80D3461C  41 82 00 10 */	beq lbl_80D3462C
/* 80D34620  38 00 00 29 */	li r0, 0x29
/* 80D34624  98 1E 07 38 */	stb r0, 0x738(r30)
/* 80D34628  48 00 01 54 */	b lbl_80D3477C
lbl_80D3462C:
/* 80D3462C  38 7E 06 00 */	addi r3, r30, 0x600
/* 80D34630  4B 34 FE C8 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80D34634  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80D34638  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 80D3463C  41 82 00 18 */	beq lbl_80D34654
/* 80D34640  38 7E 06 00 */	addi r3, r30, 0x600
/* 80D34644  4B 34 FF 04 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80D34648  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80D3464C  28 00 00 01 */	cmplwi r0, 1
/* 80D34650  40 82 01 2C */	bne lbl_80D3477C
lbl_80D34654:
/* 80D34654  38 7E 06 00 */	addi r3, r30, 0x600
/* 80D34658  4B 34 FE A0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80D3465C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80D34660  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80D34664  40 82 00 18 */	bne lbl_80D3467C
/* 80D34668  38 7E 06 00 */	addi r3, r30, 0x600
/* 80D3466C  4B 34 FE DC */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80D34670  88 03 00 75 */	lbz r0, 0x75(r3)
/* 80D34674  28 00 00 01 */	cmplwi r0, 1
/* 80D34678  40 82 00 10 */	bne lbl_80D34688
lbl_80D3467C:
/* 80D3467C  38 00 00 01 */	li r0, 1
/* 80D34680  98 1E 07 38 */	stb r0, 0x738(r30)
/* 80D34684  48 00 00 F8 */	b lbl_80D3477C
lbl_80D34688:
/* 80D34688  38 00 00 14 */	li r0, 0x14
/* 80D3468C  B0 1E 05 82 */	sth r0, 0x582(r30)
/* 80D34690  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D34694  7C 03 07 74 */	extsb r3, r0
/* 80D34698  4B 2F 89 D4 */	b dComIfGp_getReverb__Fi
/* 80D3469C  7C 67 1B 78 */	mr r7, r3
/* 80D346A0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080113@ha */
/* 80D346A4  38 03 01 13 */	addi r0, r3, 0x0113 /* 0x00080113@l */
/* 80D346A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D346AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D346B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D346B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D346B8  38 81 00 0C */	addi r4, r1, 0xc
/* 80D346BC  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D346C0  38 C0 00 00 */	li r6, 0
/* 80D346C4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D346C8  FC 40 08 90 */	fmr f2, f1
/* 80D346CC  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80D346D0  FC 80 18 90 */	fmr f4, f3
/* 80D346D4  39 00 00 00 */	li r8, 0
/* 80D346D8  4B 57 72 AC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D346DC:
/* 80D346DC  38 7E 06 00 */	addi r3, r30, 0x600
/* 80D346E0  4B 34 FF 78 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80D346E4  28 03 00 00 */	cmplwi r3, 0
/* 80D346E8  41 82 00 0C */	beq lbl_80D346F4
/* 80D346EC  38 00 00 0A */	li r0, 0xa
/* 80D346F0  B0 1E 05 82 */	sth r0, 0x582(r30)
lbl_80D346F4:
/* 80D346F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D346F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D346FC  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D34700  80 04 05 80 */	lwz r0, 0x580(r4)
/* 80D34704  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80D34708  41 82 00 74 */	beq lbl_80D3477C
/* 80D3470C  7F C3 F3 78 */	mr r3, r30
/* 80D34710  4B 2E 62 54 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D34714  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80D34718  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80D3471C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D34720  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D34724  40 80 00 58 */	bge lbl_80D3477C
/* 80D34728  38 00 00 14 */	li r0, 0x14
/* 80D3472C  B0 1E 05 82 */	sth r0, 0x582(r30)
/* 80D34730  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D34734  7C 03 07 74 */	extsb r3, r0
/* 80D34738  4B 2F 89 34 */	b dComIfGp_getReverb__Fi
/* 80D3473C  7C 67 1B 78 */	mr r7, r3
/* 80D34740  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080113@ha */
/* 80D34744  38 03 01 13 */	addi r0, r3, 0x0113 /* 0x00080113@l */
/* 80D34748  90 01 00 08 */	stw r0, 8(r1)
/* 80D3474C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D34750  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D34754  80 63 00 00 */	lwz r3, 0(r3)
/* 80D34758  38 81 00 08 */	addi r4, r1, 8
/* 80D3475C  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D34760  38 C0 00 00 */	li r6, 0
/* 80D34764  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D34768  FC 40 08 90 */	fmr f2, f1
/* 80D3476C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80D34770  FC 80 18 90 */	fmr f4, f3
/* 80D34774  39 00 00 00 */	li r8, 0
/* 80D34778  4B 57 72 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D3477C:
/* 80D3477C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D34780  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D34784  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D34788  7C 08 03 A6 */	mtlr r0
/* 80D3478C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D34790  4E 80 00 20 */	blr 
