lbl_80A363C0:
/* 80A363C0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A363C4  7C 08 02 A6 */	mflr r0
/* 80A363C8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A363CC  39 61 00 80 */	addi r11, r1, 0x80
/* 80A363D0  4B 92 BD FC */	b _savegpr_25
/* 80A363D4  7C 7B 1B 78 */	mr r27, r3
/* 80A363D8  7C 99 23 78 */	mr r25, r4
/* 80A363DC  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A363E0  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A363E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A363E8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A363EC  3B 5F 4F F8 */	addi r26, r31, 0x4ff8
/* 80A363F0  3B A0 00 00 */	li r29, 0
/* 80A363F4  3B 80 FF FF */	li r28, -1
/* 80A363F8  7F 43 D3 78 */	mr r3, r26
/* 80A363FC  3C A0 80 A4 */	lis r5, stringBase0@ha
/* 80A36400  38 A5 0A F8 */	addi r5, r5, stringBase0@l
/* 80A36404  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A36408  38 C0 00 03 */	li r6, 3
/* 80A3640C  4B 61 1C E0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A36410  28 03 00 00 */	cmplwi r3, 0
/* 80A36414  41 82 00 08 */	beq lbl_80A3641C
/* 80A36418  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A3641C:
/* 80A3641C  7F 43 D3 78 */	mr r3, r26
/* 80A36420  7F 24 CB 78 */	mr r4, r25
/* 80A36424  4B 61 19 28 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A36428  2C 03 00 00 */	cmpwi r3, 0
/* 80A3642C  41 82 03 64 */	beq lbl_80A36790
/* 80A36430  28 1C 00 50 */	cmplwi r28, 0x50
/* 80A36434  41 81 03 5C */	bgt lbl_80A36790
/* 80A36438  3C 60 80 A4 */	lis r3, lit_11974@ha
/* 80A3643C  38 63 28 E4 */	addi r3, r3, lit_11974@l
/* 80A36440  57 80 10 3A */	slwi r0, r28, 2
/* 80A36444  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A36448  7C 09 03 A6 */	mtctr r0
/* 80A3644C  4E 80 04 20 */	bctr 
lbl_80A36450:
/* 80A36450  80 1B 0B 8C */	lwz r0, 0xb8c(r27)
/* 80A36454  2C 00 00 01 */	cmpwi r0, 1
/* 80A36458  41 82 00 24 */	beq lbl_80A3647C
/* 80A3645C  83 FB 0B 90 */	lwz r31, 0xb90(r27)
/* 80A36460  38 7B 0B 84 */	addi r3, r27, 0xb84
/* 80A36464  4B 70 F4 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36468  93 FB 0B 90 */	stw r31, 0xb90(r27)
/* 80A3646C  38 00 00 01 */	li r0, 1
/* 80A36470  90 1B 0B 8C */	stw r0, 0xb8c(r27)
/* 80A36474  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A36478  D0 1B 0B 9C */	stfs f0, 0xb9c(r27)
lbl_80A3647C:
/* 80A3647C  80 1B 0B B0 */	lwz r0, 0xbb0(r27)
/* 80A36480  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A36484  40 82 00 30 */	bne lbl_80A364B4
/* 80A36488  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A3648C  41 82 03 04 */	beq lbl_80A36790
/* 80A36490  83 FB 0B B4 */	lwz r31, 0xbb4(r27)
/* 80A36494  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A36498  4B 70 F4 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3649C  93 FB 0B B4 */	stw r31, 0xbb4(r27)
/* 80A364A0  38 00 00 16 */	li r0, 0x16
/* 80A364A4  90 1B 0B B0 */	stw r0, 0xbb0(r27)
/* 80A364A8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A364AC  D0 1B 0B C0 */	stfs f0, 0xbc0(r27)
/* 80A364B0  48 00 02 E0 */	b lbl_80A36790
lbl_80A364B4:
/* 80A364B4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A364B8  41 82 02 D8 */	beq lbl_80A36790
/* 80A364BC  83 FB 0B B4 */	lwz r31, 0xbb4(r27)
/* 80A364C0  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A364C4  4B 70 F3 D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A364C8  93 FB 0B B4 */	stw r31, 0xbb4(r27)
/* 80A364CC  38 00 00 10 */	li r0, 0x10
/* 80A364D0  90 1B 0B B0 */	stw r0, 0xbb0(r27)
/* 80A364D4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A364D8  D0 1B 0B C0 */	stfs f0, 0xbc0(r27)
/* 80A364DC  48 00 02 B4 */	b lbl_80A36790
lbl_80A364E0:
/* 80A364E0  80 1B 0D 14 */	lwz r0, 0xd14(r27)
/* 80A364E4  2C 00 00 01 */	cmpwi r0, 1
/* 80A364E8  41 82 00 28 */	beq lbl_80A36510
/* 80A364EC  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 80A364F0  4B 70 F2 0C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A364F4  38 00 00 00 */	li r0, 0
/* 80A364F8  90 1B 0B FC */	stw r0, 0xbfc(r27)
/* 80A364FC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A36500  D0 1B 0D 28 */	stfs f0, 0xd28(r27)
/* 80A36504  98 1B 0D 33 */	stb r0, 0xd33(r27)
/* 80A36508  38 00 00 01 */	li r0, 1
/* 80A3650C  90 1B 0D 14 */	stw r0, 0xd14(r27)
lbl_80A36510:
/* 80A36510  38 00 00 00 */	li r0, 0
/* 80A36514  98 1B 0D 33 */	stb r0, 0xd33(r27)
/* 80A36518  48 00 02 78 */	b lbl_80A36790
lbl_80A3651C:
/* 80A3651C  38 00 00 02 */	li r0, 2
/* 80A36520  B0 1B 0D FE */	sth r0, 0xdfe(r27)
/* 80A36524  7F 63 DB 78 */	mr r3, r27
/* 80A36528  38 80 03 00 */	li r4, 0x300
/* 80A3652C  38 A0 00 00 */	li r5, 0
/* 80A36530  48 00 4E B9 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A36534  48 00 02 5C */	b lbl_80A36790
lbl_80A36538:
/* 80A36538  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A3653C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A36540  80 63 00 00 */	lwz r3, 0(r3)
/* 80A36544  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A36548  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000070@ha */
/* 80A3654C  38 84 00 70 */	addi r4, r4, 0x0070 /* 0x01000070@l */
/* 80A36550  38 A0 00 00 */	li r5, 0
/* 80A36554  38 C0 00 00 */	li r6, 0
/* 80A36558  4B 87 8A B8 */	b bgmStart__8Z2SeqMgrFUlUll
/* 80A3655C  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 80A36560  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A36564  C0 1B 04 AC */	lfs f0, 0x4ac(r27)
/* 80A36568  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A3656C  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 80A36570  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A36574  7F 63 DB 78 */	mr r3, r27
/* 80A36578  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A3657C  48 00 44 DD */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A36580  7F 63 DB 78 */	mr r3, r27
/* 80A36584  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80A36588  48 00 45 69 */	bl setAngle__10daNpc_Kn_cFs
/* 80A3658C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A36590  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80A36594  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80A36598  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 80A3659C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A365A0  38 7B 04 A8 */	addi r3, r27, 0x4a8
/* 80A365A4  4B 5D 67 C0 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A365A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A365AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A365B0  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80A365B4  4B 5D 5E 80 */	b mDoMtx_YrotM__FPA4_fs
/* 80A365B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A365BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A365C0  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A365C4  7C 85 23 78 */	mr r5, r4
/* 80A365C8  4B 91 07 A4 */	b PSMTXMultVec
/* 80A365CC  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80A365D0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80A365D4  C0 21 00 50 */	lfs f1, 0x50(r1)
/* 80A365D8  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80A365DC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80A365E0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80A365E4  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A365E8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A365EC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80A365F0  38 61 00 40 */	addi r3, r1, 0x40
/* 80A365F4  4B 5E 76 C8 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A365F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A365FC  41 82 00 10 */	beq lbl_80A3660C
/* 80A36600  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A36604  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A36608  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80A3660C:
/* 80A3660C  7F 63 DB 78 */	mr r3, r27
/* 80A36610  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A36614  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 80A36618  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A3661C  4B 5E 40 F4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A36620  7C 65 1B 78 */	mr r5, r3
/* 80A36624  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A36628  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A3662C  3C A5 00 01 */	addis r5, r5, 1
/* 80A36630  38 05 80 00 */	addi r0, r5, -32768
/* 80A36634  7C 05 07 34 */	extsh r5, r0
/* 80A36638  38 C0 00 00 */	li r6, 0
/* 80A3663C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A36640  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A36644  7D 89 03 A6 */	mtctr r12
/* 80A36648  4E 80 04 21 */	bctrl 
/* 80A3664C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A36650  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 80A36654  60 00 01 00 */	ori r0, r0, 0x100
/* 80A36658  90 03 05 7C */	stw r0, 0x57c(r3)
/* 80A3665C  48 00 01 34 */	b lbl_80A36790
lbl_80A36660:
/* 80A36660  7F 63 DB 78 */	mr r3, r27
/* 80A36664  38 80 03 01 */	li r4, 0x301
/* 80A36668  38 A0 00 00 */	li r5, 0
/* 80A3666C  48 00 4D 7D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A36670  48 00 01 20 */	b lbl_80A36790
lbl_80A36674:
/* 80A36674  38 60 00 0B */	li r3, 0xb
/* 80A36678  4B 71 64 B4 */	b daNpcT_offTmpBit__FUl
/* 80A3667C  7F 63 DB 78 */	mr r3, r27
/* 80A36680  38 80 03 02 */	li r4, 0x302
/* 80A36684  38 A0 00 00 */	li r5, 0
/* 80A36688  48 00 4D 61 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3668C  48 00 01 04 */	b lbl_80A36790
lbl_80A36690:
/* 80A36690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A36694  A4 03 61 C0 */	lhzu r0, g_dComIfG_gameInfo@l(r3)
/* 80A36698  C0 43 5D C0 */	lfs f2, 0x5dc0(r3)
/* 80A3669C  C8 3E 01 D0 */	lfd f1, 0x1d0(r30)
/* 80A366A0  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80A366A4  3C 00 43 30 */	lis r0, 0x4330
/* 80A366A8  90 01 00 58 */	stw r0, 0x58(r1)
/* 80A366AC  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80A366B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A366B4  EC 02 00 2A */	fadds f0, f2, f0
/* 80A366B8  D0 03 5D C0 */	stfs f0, 0x5dc0(r3)
/* 80A366BC  38 00 00 00 */	li r0, 0
/* 80A366C0  98 03 5E B6 */	stb r0, 0x5eb6(r3)
/* 80A366C4  38 00 00 01 */	li r0, 1
/* 80A366C8  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80A366CC  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80A366D0  98 03 00 E6 */	stb r0, 0xe6(r3)
/* 80A366D4  A0 1F 4F A4 */	lhz r0, 0x4fa4(r31)
/* 80A366D8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80A366DC  B0 1F 4F A4 */	sth r0, 0x4fa4(r31)
/* 80A366E0  48 00 00 B0 */	b lbl_80A36790
lbl_80A366E4:
/* 80A366E4  38 00 00 1E */	li r0, 0x1e
/* 80A366E8  90 1B 0D EC */	stw r0, 0xdec(r27)
/* 80A366EC  48 00 00 A4 */	b lbl_80A36790
lbl_80A366F0:
/* 80A366F0  7F 63 DB 78 */	mr r3, r27
/* 80A366F4  38 80 03 02 */	li r4, 0x302
/* 80A366F8  38 A0 00 00 */	li r5, 0
/* 80A366FC  48 00 4C ED */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A36700  48 00 00 90 */	b lbl_80A36790
lbl_80A36704:
/* 80A36704  80 1B 0B 8C */	lwz r0, 0xb8c(r27)
/* 80A36708  2C 00 00 01 */	cmpwi r0, 1
/* 80A3670C  41 82 00 24 */	beq lbl_80A36730
/* 80A36710  83 FB 0B 90 */	lwz r31, 0xb90(r27)
/* 80A36714  38 7B 0B 84 */	addi r3, r27, 0xb84
/* 80A36718  4B 70 F1 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3671C  93 FB 0B 90 */	stw r31, 0xb90(r27)
/* 80A36720  38 00 00 01 */	li r0, 1
/* 80A36724  90 1B 0B 8C */	stw r0, 0xb8c(r27)
/* 80A36728  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3672C  D0 1B 0B 9C */	stfs f0, 0xb9c(r27)
lbl_80A36730:
/* 80A36730  83 FB 0B B4 */	lwz r31, 0xbb4(r27)
/* 80A36734  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A36738  4B 70 F1 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3673C  93 FB 0B B4 */	stw r31, 0xbb4(r27)
/* 80A36740  38 00 00 18 */	li r0, 0x18
/* 80A36744  90 1B 0B B0 */	stw r0, 0xbb0(r27)
/* 80A36748  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3674C  D0 1B 0B C0 */	stfs f0, 0xbc0(r27)
/* 80A36750  80 1B 0D 14 */	lwz r0, 0xd14(r27)
/* 80A36754  2C 00 00 00 */	cmpwi r0, 0
/* 80A36758  41 82 00 24 */	beq lbl_80A3677C
/* 80A3675C  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 80A36760  4B 70 EF 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A36764  38 00 00 00 */	li r0, 0
/* 80A36768  90 1B 0B FC */	stw r0, 0xbfc(r27)
/* 80A3676C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A36770  D0 1B 0D 28 */	stfs f0, 0xd28(r27)
/* 80A36774  98 1B 0D 33 */	stb r0, 0xd33(r27)
/* 80A36778  90 1B 0D 14 */	stw r0, 0xd14(r27)
lbl_80A3677C:
/* 80A3677C  38 00 00 00 */	li r0, 0
/* 80A36780  98 1B 0D 33 */	stb r0, 0xd33(r27)
/* 80A36784  48 00 00 0C */	b lbl_80A36790
lbl_80A36788:
/* 80A36788  38 00 00 78 */	li r0, 0x78
/* 80A3678C  90 1B 0D EC */	stw r0, 0xdec(r27)
lbl_80A36790:
/* 80A36790  28 1C 00 50 */	cmplwi r28, 0x50
/* 80A36794  41 81 04 6C */	bgt lbl_80A36C00
/* 80A36798  3C 60 80 A4 */	lis r3, lit_11977@ha
/* 80A3679C  38 63 27 A0 */	addi r3, r3, lit_11977@l
/* 80A367A0  57 80 10 3A */	slwi r0, r28, 2
/* 80A367A4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A367A8  7C 09 03 A6 */	mtctr r0
/* 80A367AC  4E 80 04 20 */	bctr 
lbl_80A367B0:
/* 80A367B0  C0 3B 04 FC */	lfs f1, 0x4fc(r27)
/* 80A367B4  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A367B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A367BC  4C 40 13 82 */	cror 2, 0, 2
/* 80A367C0  40 82 04 44 */	bne lbl_80A36C04
/* 80A367C4  80 1B 06 FC */	lwz r0, 0x6fc(r27)
/* 80A367C8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80A367CC  41 82 04 38 */	beq lbl_80A36C04
/* 80A367D0  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80A367D4  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80A367D8  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80A367DC  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80A367E0  80 1B 0B B0 */	lwz r0, 0xbb0(r27)
/* 80A367E4  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A367E8  40 82 00 30 */	bne lbl_80A36818
/* 80A367EC  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A367F0  41 82 00 50 */	beq lbl_80A36840
/* 80A367F4  83 9B 0B B4 */	lwz r28, 0xbb4(r27)
/* 80A367F8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A367FC  4B 70 F0 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36800  93 9B 0B B4 */	stw r28, 0xbb4(r27)
/* 80A36804  38 00 00 13 */	li r0, 0x13
/* 80A36808  90 1B 0B B0 */	stw r0, 0xbb0(r27)
/* 80A3680C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A36810  D0 1B 0B C0 */	stfs f0, 0xbc0(r27)
/* 80A36814  48 00 00 2C */	b lbl_80A36840
lbl_80A36818:
/* 80A36818  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A3681C  41 82 00 24 */	beq lbl_80A36840
/* 80A36820  83 9B 0B B4 */	lwz r28, 0xbb4(r27)
/* 80A36824  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A36828  4B 70 F0 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3682C  93 9B 0B B4 */	stw r28, 0xbb4(r27)
/* 80A36830  38 00 00 0F */	li r0, 0xf
/* 80A36834  90 1B 0B B0 */	stw r0, 0xbb0(r27)
/* 80A36838  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3683C  D0 1B 0B C0 */	stfs f0, 0xbc0(r27)
lbl_80A36840:
/* 80A36840  80 1B 0B 8C */	lwz r0, 0xb8c(r27)
/* 80A36844  2C 00 00 01 */	cmpwi r0, 1
/* 80A36848  41 82 00 24 */	beq lbl_80A3686C
/* 80A3684C  83 9B 0B 90 */	lwz r28, 0xb90(r27)
/* 80A36850  38 7B 0B 84 */	addi r3, r27, 0xb84
/* 80A36854  4B 70 F0 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36858  93 9B 0B 90 */	stw r28, 0xb90(r27)
/* 80A3685C  38 00 00 01 */	li r0, 1
/* 80A36860  90 1B 0B 8C */	stw r0, 0xb8c(r27)
/* 80A36864  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A36868  D0 1B 0B 9C */	stfs f0, 0xb9c(r27)
lbl_80A3686C:
/* 80A3686C  7F 63 DB 78 */	mr r3, r27
/* 80A36870  48 00 0C E9 */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A36874  3B A0 00 01 */	li r29, 1
/* 80A36878  48 00 03 8C */	b lbl_80A36C04
lbl_80A3687C:
/* 80A3687C  80 1B 0B B0 */	lwz r0, 0xbb0(r27)
/* 80A36880  2C 00 00 13 */	cmpwi r0, 0x13
/* 80A36884  41 82 00 0C */	beq lbl_80A36890
/* 80A36888  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A3688C  40 82 03 78 */	bne lbl_80A36C04
lbl_80A36890:
/* 80A36890  80 1B 0B B8 */	lwz r0, 0xbb8(r27)
/* 80A36894  2C 00 00 00 */	cmpwi r0, 0
/* 80A36898  40 81 00 0C */	ble lbl_80A368A4
/* 80A3689C  3B A0 00 01 */	li r29, 1
/* 80A368A0  48 00 03 64 */	b lbl_80A36C04
lbl_80A368A4:
/* 80A368A4  80 7B 05 BC */	lwz r3, 0x5bc(r27)
/* 80A368A8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80A368AC  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 80A368B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A368B4  4C 41 13 82 */	cror 2, 1, 2
/* 80A368B8  40 82 03 4C */	bne lbl_80A36C04
/* 80A368BC  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 80A368C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A368C4  40 80 03 40 */	bge lbl_80A36C04
/* 80A368C8  7F 63 DB 78 */	mr r3, r27
/* 80A368CC  48 00 0C 8D */	bl setLandingPrtcl__10daNpc_Kn_cFv
/* 80A368D0  48 00 03 34 */	b lbl_80A36C04
lbl_80A368D4:
/* 80A368D4  80 1B 0B B0 */	lwz r0, 0xbb0(r27)
/* 80A368D8  2C 00 00 16 */	cmpwi r0, 0x16
/* 80A368DC  41 82 00 0C */	beq lbl_80A368E8
/* 80A368E0  2C 00 00 10 */	cmpwi r0, 0x10
/* 80A368E4  40 82 03 20 */	bne lbl_80A36C04
lbl_80A368E8:
/* 80A368E8  80 1B 0B B8 */	lwz r0, 0xbb8(r27)
/* 80A368EC  2C 00 00 00 */	cmpwi r0, 0
/* 80A368F0  40 81 03 14 */	ble lbl_80A36C04
/* 80A368F4  3B A0 00 01 */	li r29, 1
/* 80A368F8  48 00 03 0C */	b lbl_80A36C04
lbl_80A368FC:
/* 80A368FC  7F 63 DB 78 */	mr r3, r27
/* 80A36900  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A36904  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80A36908  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A3690C  4B 5E 3E 04 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A36910  A8 9B 0D AE */	lha r4, 0xdae(r27)
/* 80A36914  7C 60 07 34 */	extsh r0, r3
/* 80A36918  7C 04 00 00 */	cmpw r4, r0
/* 80A3691C  41 82 00 94 */	beq lbl_80A369B0
/* 80A36920  7F 63 DB 78 */	mr r3, r27
/* 80A36924  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80A36928  4B 5E 3D E8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3692C  7C 64 1B 78 */	mr r4, r3
/* 80A36930  7F 63 DB 78 */	mr r3, r27
/* 80A36934  38 A0 00 01 */	li r5, 1
/* 80A36938  38 C0 00 20 */	li r6, 0x20
/* 80A3693C  38 E0 00 14 */	li r7, 0x14
/* 80A36940  39 00 00 00 */	li r8, 0
/* 80A36944  48 00 48 DD */	bl step__10daNpc_Kn_cFsiiii
/* 80A36948  2C 03 00 00 */	cmpwi r3, 0
/* 80A3694C  41 82 02 B8 */	beq lbl_80A36C04
/* 80A36950  3B A0 00 01 */	li r29, 1
/* 80A36954  80 1B 0B 8C */	lwz r0, 0xb8c(r27)
/* 80A36958  2C 00 00 01 */	cmpwi r0, 1
/* 80A3695C  41 82 00 24 */	beq lbl_80A36980
/* 80A36960  83 9B 0B 90 */	lwz r28, 0xb90(r27)
/* 80A36964  38 7B 0B 84 */	addi r3, r27, 0xb84
/* 80A36968  4B 70 EF 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3696C  93 9B 0B 90 */	stw r28, 0xb90(r27)
/* 80A36970  38 00 00 01 */	li r0, 1
/* 80A36974  90 1B 0B 8C */	stw r0, 0xb8c(r27)
/* 80A36978  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A3697C  D0 1B 0B 9C */	stfs f0, 0xb9c(r27)
lbl_80A36980:
/* 80A36980  80 1B 0B B0 */	lwz r0, 0xbb0(r27)
/* 80A36984  2C 00 00 00 */	cmpwi r0, 0
/* 80A36988  41 82 02 7C */	beq lbl_80A36C04
/* 80A3698C  83 9B 0B B4 */	lwz r28, 0xbb4(r27)
/* 80A36990  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A36994  4B 70 EF 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A36998  93 9B 0B B4 */	stw r28, 0xbb4(r27)
/* 80A3699C  38 00 00 00 */	li r0, 0
/* 80A369A0  90 1B 0B B0 */	stw r0, 0xbb0(r27)
/* 80A369A4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A369A8  D0 1B 0B C0 */	stfs f0, 0xbc0(r27)
/* 80A369AC  48 00 02 58 */	b lbl_80A36C04
lbl_80A369B0:
/* 80A369B0  3B A0 00 01 */	li r29, 1
/* 80A369B4  48 00 02 50 */	b lbl_80A36C04
lbl_80A369B8:
/* 80A369B8  7F 63 DB 78 */	mr r3, r27
/* 80A369BC  38 80 00 00 */	li r4, 0
/* 80A369C0  38 A0 00 00 */	li r5, 0
/* 80A369C4  38 C0 00 00 */	li r6, 0
/* 80A369C8  38 E0 00 00 */	li r7, 0
/* 80A369CC  48 00 4A 7D */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A369D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A369D4  41 82 02 30 */	beq lbl_80A36C04
/* 80A369D8  3B A0 00 01 */	li r29, 1
/* 80A369DC  48 00 02 28 */	b lbl_80A36C04
lbl_80A369E0:
/* 80A369E0  C0 1B 04 A8 */	lfs f0, 0x4a8(r27)
/* 80A369E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A369E8  C0 1B 04 AC */	lfs f0, 0x4ac(r27)
/* 80A369EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A369F0  C0 1B 04 B0 */	lfs f0, 0x4b0(r27)
/* 80A369F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A369F8  7F 63 DB 78 */	mr r3, r27
/* 80A369FC  38 81 00 10 */	addi r4, r1, 0x10
/* 80A36A00  48 00 40 59 */	bl setPos__10daNpc_Kn_cF4cXyz
/* 80A36A04  7F 63 DB 78 */	mr r3, r27
/* 80A36A08  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80A36A0C  48 00 40 E5 */	bl setAngle__10daNpc_Kn_cFs
/* 80A36A10  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A36A14  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80A36A18  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80A36A1C  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 80A36A20  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80A36A24  38 7B 04 A8 */	addi r3, r27, 0x4a8
/* 80A36A28  4B 5D 63 3C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A36A2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A36A30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A36A34  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80A36A38  4B 5D 59 FC */	b mDoMtx_YrotM__FPA4_fs
/* 80A36A3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A36A40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A36A44  38 81 00 34 */	addi r4, r1, 0x34
/* 80A36A48  7C 85 23 78 */	mr r5, r4
/* 80A36A4C  4B 91 03 20 */	b PSMTXMultVec
/* 80A36A50  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80A36A54  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A36A58  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80A36A5C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A36A60  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80A36A64  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A36A68  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80A36A6C  EC 01 00 2A */	fadds f0, f1, f0
/* 80A36A70  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A36A74  38 61 00 28 */	addi r3, r1, 0x28
/* 80A36A78  4B 5E 72 44 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A36A7C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A36A80  41 82 00 10 */	beq lbl_80A36A90
/* 80A36A84  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A36A88  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A36A8C  D0 01 00 38 */	stfs f0, 0x38(r1)
lbl_80A36A90:
/* 80A36A90  7F 63 DB 78 */	mr r3, r27
/* 80A36A94  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A36A98  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80A36A9C  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A36AA0  4B 5E 3C 70 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A36AA4  7C 65 1B 78 */	mr r5, r3
/* 80A36AA8  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A36AAC  38 81 00 34 */	addi r4, r1, 0x34
/* 80A36AB0  3C A5 00 01 */	addis r5, r5, 1
/* 80A36AB4  38 05 80 00 */	addi r0, r5, -32768
/* 80A36AB8  7C 05 07 34 */	extsh r5, r0
/* 80A36ABC  38 C0 00 00 */	li r6, 0
/* 80A36AC0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A36AC4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A36AC8  7D 89 03 A6 */	mtctr r12
/* 80A36ACC  4E 80 04 21 */	bctrl 
/* 80A36AD0  3B A0 00 01 */	li r29, 1
/* 80A36AD4  48 00 01 30 */	b lbl_80A36C04
lbl_80A36AD8:
/* 80A36AD8  7F 63 DB 78 */	mr r3, r27
/* 80A36ADC  38 80 00 00 */	li r4, 0
/* 80A36AE0  38 A0 00 00 */	li r5, 0
/* 80A36AE4  38 C0 00 00 */	li r6, 0
/* 80A36AE8  38 E0 00 00 */	li r7, 0
/* 80A36AEC  48 00 49 5D */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A36AF0  2C 03 00 00 */	cmpwi r3, 0
/* 80A36AF4  41 82 01 10 */	beq lbl_80A36C04
/* 80A36AF8  3B A0 00 01 */	li r29, 1
/* 80A36AFC  48 00 01 08 */	b lbl_80A36C04
lbl_80A36B00:
/* 80A36B00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A36B04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A36B08  A3 63 00 02 */	lhz r27, 2(r3)
/* 80A36B0C  4B 7E 77 A8 */	b dMeter2Info_getNowLifeGauge__Fv
/* 80A36B10  7C 63 07 34 */	extsh r3, r3
/* 80A36B14  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 80A36B18  7C 03 00 00 */	cmpw r3, r0
/* 80A36B1C  40 82 00 E8 */	bne lbl_80A36C04
/* 80A36B20  3B A0 00 01 */	li r29, 1
/* 80A36B24  48 00 00 E0 */	b lbl_80A36C04
lbl_80A36B28:
/* 80A36B28  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80A36B2C  48 00 52 1D */	bl func_80A3BD48
/* 80A36B30  2C 03 00 00 */	cmpwi r3, 0
/* 80A36B34  40 82 00 D0 */	bne lbl_80A36C04
/* 80A36B38  3B A0 00 01 */	li r29, 1
/* 80A36B3C  48 00 00 C8 */	b lbl_80A36C04
lbl_80A36B40:
/* 80A36B40  7F 63 DB 78 */	mr r3, r27
/* 80A36B44  38 80 00 00 */	li r4, 0
/* 80A36B48  38 A0 00 00 */	li r5, 0
/* 80A36B4C  38 C0 00 00 */	li r6, 0
/* 80A36B50  38 E0 00 00 */	li r7, 0
/* 80A36B54  48 00 48 F5 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A36B58  2C 03 00 00 */	cmpwi r3, 0
/* 80A36B5C  41 82 00 A8 */	beq lbl_80A36C04
/* 80A36B60  3B A0 00 01 */	li r29, 1
/* 80A36B64  48 00 00 A0 */	b lbl_80A36C04
lbl_80A36B68:
/* 80A36B68  80 1B 0B B0 */	lwz r0, 0xbb0(r27)
/* 80A36B6C  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A36B70  40 82 00 94 */	bne lbl_80A36C04
/* 80A36B74  80 1B 0B B8 */	lwz r0, 0xbb8(r27)
/* 80A36B78  2C 00 00 00 */	cmpwi r0, 0
/* 80A36B7C  40 81 00 88 */	ble lbl_80A36C04
/* 80A36B80  3B A0 00 01 */	li r29, 1
/* 80A36B84  3B 40 00 00 */	li r26, 0
/* 80A36B88  3B 80 00 00 */	li r28, 0
lbl_80A36B8C:
/* 80A36B8C  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80A36B90  7C 07 07 74 */	extsb r7, r0
/* 80A36B94  93 81 00 08 */	stw r28, 8(r1)
/* 80A36B98  38 60 02 5A */	li r3, 0x25a
/* 80A36B9C  28 1B 00 00 */	cmplwi r27, 0
/* 80A36BA0  41 82 00 0C */	beq lbl_80A36BAC
/* 80A36BA4  80 9B 00 04 */	lwz r4, 4(r27)
/* 80A36BA8  48 00 00 08 */	b lbl_80A36BB0
lbl_80A36BAC:
/* 80A36BAC  38 80 FF FF */	li r4, -1
lbl_80A36BB0:
/* 80A36BB0  38 1A 00 01 */	addi r0, r26, 1
/* 80A36BB4  54 05 40 2E */	slwi r5, r0, 8
/* 80A36BB8  38 A5 00 07 */	addi r5, r5, 7
/* 80A36BBC  38 DB 04 D0 */	addi r6, r27, 0x4d0
/* 80A36BC0  39 1B 04 DC */	addi r8, r27, 0x4dc
/* 80A36BC4  39 20 00 00 */	li r9, 0
/* 80A36BC8  39 40 FF FF */	li r10, -1
/* 80A36BCC  4B 5E 33 24 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80A36BD0  3B 5A 00 01 */	addi r26, r26, 1
/* 80A36BD4  2C 1A 00 02 */	cmpwi r26, 2
/* 80A36BD8  41 80 FF B4 */	blt lbl_80A36B8C
/* 80A36BDC  48 00 00 28 */	b lbl_80A36C04
lbl_80A36BE0:
/* 80A36BE0  38 7B 0D EC */	addi r3, r27, 0xdec
/* 80A36BE4  48 00 51 65 */	bl func_80A3BD48
/* 80A36BE8  2C 03 00 00 */	cmpwi r3, 0
/* 80A36BEC  40 82 00 18 */	bne lbl_80A36C04
/* 80A36BF0  3B A0 00 01 */	li r29, 1
/* 80A36BF4  38 00 00 13 */	li r0, 0x13
/* 80A36BF8  98 1B 15 AE */	stb r0, 0x15ae(r27)
/* 80A36BFC  48 00 00 08 */	b lbl_80A36C04
lbl_80A36C00:
/* 80A36C00  3B A0 00 01 */	li r29, 1
lbl_80A36C04:
/* 80A36C04  7F A3 EB 78 */	mr r3, r29
/* 80A36C08  39 61 00 80 */	addi r11, r1, 0x80
/* 80A36C0C  4B 92 B6 0C */	b _restgpr_25
/* 80A36C10  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A36C14  7C 08 03 A6 */	mtlr r0
/* 80A36C18  38 21 00 80 */	addi r1, r1, 0x80
/* 80A36C1C  4E 80 00 20 */	blr 
