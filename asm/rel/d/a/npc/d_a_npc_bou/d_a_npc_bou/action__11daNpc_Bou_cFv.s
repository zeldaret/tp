lbl_8096E3EC:
/* 8096E3EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8096E3F0  7C 08 02 A6 */	mflr r0
/* 8096E3F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8096E3F8  39 61 00 50 */	addi r11, r1, 0x50
/* 8096E3FC  4B 9F 3D D8 */	b _savegpr_27
/* 8096E400  7C 7D 1B 78 */	mr r29, r3
/* 8096E404  3C 80 80 97 */	lis r4, m__17daNpc_Bou_Param_c@ha
/* 8096E408  3B C4 28 60 */	addi r30, r4, m__17daNpc_Bou_Param_c@l
/* 8096E40C  38 9D 0E 44 */	addi r4, r29, 0xe44
/* 8096E410  38 A0 FF FF */	li r5, -1
/* 8096E414  4B 7D C6 2C */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 8096E418  7C 7F 1B 79 */	or. r31, r3, r3
/* 8096E41C  41 82 01 24 */	beq lbl_8096E540
/* 8096E420  38 7D 0E 44 */	addi r3, r29, 0xe44
/* 8096E424  4B 71 60 D4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 8096E428  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8096E42C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8096E430  41 82 01 10 */	beq lbl_8096E540
/* 8096E434  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 8096E438  28 00 00 01 */	cmplwi r0, 1
/* 8096E43C  40 82 00 94 */	bne lbl_8096E4D0
/* 8096E440  38 7D 0F 8C */	addi r3, r29, 0xf8c
/* 8096E444  4B 7D 72 C4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096E448  7C 7C 1B 79 */	or. r28, r3, r3
/* 8096E44C  41 82 00 84 */	beq lbl_8096E4D0
/* 8096E450  48 0A 6C 5C */	b getType__13daNpc_Jagar_cFv
/* 8096E454  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8096E458  28 00 00 01 */	cmplwi r0, 1
/* 8096E45C  40 82 00 74 */	bne lbl_8096E4D0
/* 8096E460  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 8096E464  7C 00 00 34 */	cntlzw r0, r0
/* 8096E468  54 00 D9 7F */	rlwinm. r0, r0, 0x1b, 5, 0x1f
/* 8096E46C  41 82 00 64 */	beq lbl_8096E4D0
/* 8096E470  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8096E474  2C 00 00 01 */	cmpwi r0, 1
/* 8096E478  41 82 00 24 */	beq lbl_8096E49C
/* 8096E47C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8096E480  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8096E484  4B 7D 74 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096E488  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8096E48C  38 00 00 01 */	li r0, 1
/* 8096E490  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8096E494  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8096E498  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8096E49C:
/* 8096E49C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8096E4A0  2C 00 00 07 */	cmpwi r0, 7
/* 8096E4A4  41 82 00 24 */	beq lbl_8096E4C8
/* 8096E4A8  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8096E4AC  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8096E4B0  4B 7D 73 E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096E4B4  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8096E4B8  38 00 00 07 */	li r0, 7
/* 8096E4BC  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8096E4C0  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8096E4C4  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8096E4C8:
/* 8096E4C8  38 00 00 00 */	li r0, 0
/* 8096E4CC  90 1C 0F F8 */	stw r0, 0xff8(r28)
lbl_8096E4D0:
/* 8096E4D0  38 7D 0D 08 */	addi r3, r29, 0xd08
/* 8096E4D4  7F A4 EB 78 */	mr r4, r29
/* 8096E4D8  7F E5 FB 78 */	mr r5, r31
/* 8096E4DC  A8 DD 0D 7A */	lha r6, 0xd7a(r29)
/* 8096E4E0  4B 7D 98 EC */	b setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 8096E4E4  7F A3 EB 78 */	mr r3, r29
/* 8096E4E8  38 80 00 00 */	li r4, 0
/* 8096E4EC  38 A0 00 0A */	li r5, 0xa
/* 8096E4F0  38 C0 00 00 */	li r6, 0
/* 8096E4F4  4B 7D C5 DC */	b setDamage__8daNpcT_cFiii
/* 8096E4F8  38 00 00 00 */	li r0, 0
/* 8096E4FC  90 1D 0D B8 */	stw r0, 0xdb8(r29)
/* 8096E500  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8096E504  2C 00 00 00 */	cmpwi r0, 0
/* 8096E508  41 82 00 24 */	beq lbl_8096E52C
/* 8096E50C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8096E510  4B 7D 71 EC */	b remove__18daNpcT_ActorMngr_cFv
/* 8096E514  38 00 00 00 */	li r0, 0
/* 8096E518  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8096E51C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8096E520  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8096E524  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8096E528  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8096E52C:
/* 8096E52C  38 00 00 00 */	li r0, 0
/* 8096E530  B0 1D 0C D4 */	sth r0, 0xcd4(r29)
/* 8096E534  B0 1D 0C D6 */	sth r0, 0xcd6(r29)
/* 8096E538  38 00 00 01 */	li r0, 1
/* 8096E53C  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_8096E540:
/* 8096E540  88 1D 0D 20 */	lbz r0, 0xd20(r29)
/* 8096E544  2C 00 00 00 */	cmpwi r0, 0
/* 8096E548  41 82 00 60 */	beq lbl_8096E5A8
/* 8096E54C  38 60 00 00 */	li r3, 0
/* 8096E550  38 80 00 00 */	li r4, 0
/* 8096E554  7C 87 23 78 */	mr r7, r4
/* 8096E558  7C 86 23 78 */	mr r6, r4
/* 8096E55C  7C 85 23 78 */	mr r5, r4
/* 8096E560  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8096E564  38 00 00 02 */	li r0, 2
/* 8096E568  7C 09 03 A6 */	mtctr r0
lbl_8096E56C:
/* 8096E56C  7D 1D 22 14 */	add r8, r29, r4
/* 8096E570  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 8096E574  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 8096E578  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 8096E57C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8096E580  7C 1D 05 2E */	stfsx f0, r29, r0
/* 8096E584  38 63 00 04 */	addi r3, r3, 4
/* 8096E588  38 84 00 06 */	addi r4, r4, 6
/* 8096E58C  42 00 FF E0 */	bdnz lbl_8096E56C
/* 8096E590  38 00 00 00 */	li r0, 0
/* 8096E594  B0 1D 0D 1C */	sth r0, 0xd1c(r29)
/* 8096E598  B0 1D 0D 1E */	sth r0, 0xd1e(r29)
/* 8096E59C  98 1D 0D 20 */	stb r0, 0xd20(r29)
/* 8096E5A0  38 00 00 01 */	li r0, 1
/* 8096E5A4  B0 1D 0E 22 */	sth r0, 0xe22(r29)
lbl_8096E5A8:
/* 8096E5A8  38 7D 0F C4 */	addi r3, r29, 0xfc4
/* 8096E5AC  4B 9F 3A 6C */	b __ptmf_test
/* 8096E5B0  2C 03 00 00 */	cmpwi r3, 0
/* 8096E5B4  41 82 00 54 */	beq lbl_8096E608
/* 8096E5B8  38 7D 0F D0 */	addi r3, r29, 0xfd0
/* 8096E5BC  38 9D 0F C4 */	addi r4, r29, 0xfc4
/* 8096E5C0  4B 9F 3A 88 */	b __ptmf_cmpr
/* 8096E5C4  2C 03 00 00 */	cmpwi r3, 0
/* 8096E5C8  40 82 00 1C */	bne lbl_8096E5E4
/* 8096E5CC  7F A3 EB 78 */	mr r3, r29
/* 8096E5D0  38 80 00 00 */	li r4, 0
/* 8096E5D4  39 9D 0F D0 */	addi r12, r29, 0xfd0
/* 8096E5D8  4B 9F 3A AC */	b __ptmf_scall
/* 8096E5DC  60 00 00 00 */	nop 
/* 8096E5E0  48 00 00 28 */	b lbl_8096E608
lbl_8096E5E4:
/* 8096E5E4  80 7D 0F C4 */	lwz r3, 0xfc4(r29)
/* 8096E5E8  80 1D 0F C8 */	lwz r0, 0xfc8(r29)
/* 8096E5EC  90 61 00 24 */	stw r3, 0x24(r1)
/* 8096E5F0  90 01 00 28 */	stw r0, 0x28(r1)
/* 8096E5F4  80 1D 0F CC */	lwz r0, 0xfcc(r29)
/* 8096E5F8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8096E5FC  7F A3 EB 78 */	mr r3, r29
/* 8096E600  38 81 00 24 */	addi r4, r1, 0x24
/* 8096E604  48 00 07 65 */	bl setAction__11daNpc_Bou_cFM11daNpc_Bou_cFPCvPvPv_i
lbl_8096E608:
/* 8096E608  38 7D 0B A0 */	addi r3, r29, 0xba0
/* 8096E60C  4B 7D 70 FC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8096E610  7C 7C 1B 79 */	or. r28, r3, r3
/* 8096E614  41 82 01 B4 */	beq lbl_8096E7C8
/* 8096E618  7F A3 EB 78 */	mr r3, r29
/* 8096E61C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8096E620  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 8096E624  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8096E628  4B 6A C0 E8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8096E62C  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8096E630  7C 00 18 50 */	subf r0, r0, r3
/* 8096E634  7C 03 07 34 */	extsh r3, r0
/* 8096E638  4B 9F 6A 98 */	b abs
/* 8096E63C  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8096E640  54 03 46 3E */	srwi r3, r0, 0x18
/* 8096E644  28 03 00 FF */	cmplwi r3, 0xff
/* 8096E648  38 00 FF FF */	li r0, -1
/* 8096E64C  41 82 00 08 */	beq lbl_8096E654
/* 8096E650  7C 60 1B 78 */	mr r0, r3
lbl_8096E654:
/* 8096E654  2C 00 00 07 */	cmpwi r0, 7
/* 8096E658  41 82 00 08 */	beq lbl_8096E660
/* 8096E65C  48 00 01 6C */	b lbl_8096E7C8
lbl_8096E660:
/* 8096E660  38 00 00 08 */	li r0, 8
/* 8096E664  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 8096E668  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8096E66C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8096E670  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8096E674  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8096E678  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 8096E67C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8096E680  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8096E684  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8096E688  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8096E68C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8096E690  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8096E694  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8096E698  38 61 00 0C */	addi r3, r1, 0xc
/* 8096E69C  38 81 00 18 */	addi r4, r1, 0x18
/* 8096E6A0  4B 9D 8C FC */	b PSVECSquareDistance
/* 8096E6A4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8096E6A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8096E6AC  40 81 00 58 */	ble lbl_8096E704
/* 8096E6B0  FC 00 08 34 */	frsqrte f0, f1
/* 8096E6B4  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 8096E6B8  FC 44 00 32 */	fmul f2, f4, f0
/* 8096E6BC  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 8096E6C0  FC 00 00 32 */	fmul f0, f0, f0
/* 8096E6C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8096E6C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8096E6CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8096E6D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8096E6D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8096E6D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8096E6DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8096E6E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8096E6E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8096E6E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8096E6EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8096E6F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8096E6F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8096E6F8  FC 21 00 32 */	fmul f1, f1, f0
/* 8096E6FC  FC 20 08 18 */	frsp f1, f1
/* 8096E700  48 00 00 88 */	b lbl_8096E788
lbl_8096E704:
/* 8096E704  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 8096E708  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8096E70C  40 80 00 10 */	bge lbl_8096E71C
/* 8096E710  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8096E714  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8096E718  48 00 00 70 */	b lbl_8096E788
lbl_8096E71C:
/* 8096E71C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8096E720  80 81 00 08 */	lwz r4, 8(r1)
/* 8096E724  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8096E728  3C 00 7F 80 */	lis r0, 0x7f80
/* 8096E72C  7C 03 00 00 */	cmpw r3, r0
/* 8096E730  41 82 00 14 */	beq lbl_8096E744
/* 8096E734  40 80 00 40 */	bge lbl_8096E774
/* 8096E738  2C 03 00 00 */	cmpwi r3, 0
/* 8096E73C  41 82 00 20 */	beq lbl_8096E75C
/* 8096E740  48 00 00 34 */	b lbl_8096E774
lbl_8096E744:
/* 8096E744  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8096E748  41 82 00 0C */	beq lbl_8096E754
/* 8096E74C  38 00 00 01 */	li r0, 1
/* 8096E750  48 00 00 28 */	b lbl_8096E778
lbl_8096E754:
/* 8096E754  38 00 00 02 */	li r0, 2
/* 8096E758  48 00 00 20 */	b lbl_8096E778
lbl_8096E75C:
/* 8096E75C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8096E760  41 82 00 0C */	beq lbl_8096E76C
/* 8096E764  38 00 00 05 */	li r0, 5
/* 8096E768  48 00 00 10 */	b lbl_8096E778
lbl_8096E76C:
/* 8096E76C  38 00 00 03 */	li r0, 3
/* 8096E770  48 00 00 08 */	b lbl_8096E778
lbl_8096E774:
/* 8096E774  38 00 00 04 */	li r0, 4
lbl_8096E778:
/* 8096E778  2C 00 00 01 */	cmpwi r0, 1
/* 8096E77C  40 82 00 0C */	bne lbl_8096E788
/* 8096E780  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8096E784  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8096E788:
/* 8096E788  38 7E 00 00 */	addi r3, r30, 0
/* 8096E78C  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 8096E790  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8096E794  40 80 00 2C */	bge lbl_8096E7C0
/* 8096E798  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8096E79C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8096E7A0  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8096E7A4  7D 89 03 A6 */	mtctr r12
/* 8096E7A8  4E 80 04 21 */	bctrl 
/* 8096E7AC  28 03 00 00 */	cmplwi r3, 0
/* 8096E7B0  41 82 00 18 */	beq lbl_8096E7C8
/* 8096E7B4  38 00 00 09 */	li r0, 9
/* 8096E7B8  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 8096E7BC  48 00 00 0C */	b lbl_8096E7C8
lbl_8096E7C0:
/* 8096E7C0  38 00 00 0A */	li r0, 0xa
/* 8096E7C4  B0 1D 0E 30 */	sth r0, 0xe30(r29)
lbl_8096E7C8:
/* 8096E7C8  39 61 00 50 */	addi r11, r1, 0x50
/* 8096E7CC  4B 9F 3A 54 */	b _restgpr_27
/* 8096E7D0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8096E7D4  7C 08 03 A6 */	mtlr r0
/* 8096E7D8  38 21 00 50 */	addi r1, r1, 0x50
/* 8096E7DC  4E 80 00 20 */	blr 
