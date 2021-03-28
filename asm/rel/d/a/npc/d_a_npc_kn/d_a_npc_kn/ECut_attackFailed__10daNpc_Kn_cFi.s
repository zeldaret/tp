lbl_80A3DEC4:
/* 80A3DEC4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A3DEC8  7C 08 02 A6 */	mflr r0
/* 80A3DECC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A3DED0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A3DED4  4B 92 42 FC */	b _savegpr_26
/* 80A3DED8  7C 7C 1B 78 */	mr r28, r3
/* 80A3DEDC  7C 9A 23 78 */	mr r26, r4
/* 80A3DEE0  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A3DEE4  3B E3 08 C8 */	addi r31, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A3DEE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3DEEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3DEF0  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80A3DEF4  3B C0 00 00 */	li r30, 0
/* 80A3DEF8  3B A0 FF FF */	li r29, -1
/* 80A3DEFC  7F 63 DB 78 */	mr r3, r27
/* 80A3DF00  3C A0 80 A4 */	lis r5, stringBase0@ha
/* 80A3DF04  38 A5 0A F8 */	addi r5, r5, stringBase0@l
/* 80A3DF08  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A3DF0C  38 C0 00 03 */	li r6, 3
/* 80A3DF10  4B 60 A1 DC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A3DF14  28 03 00 00 */	cmplwi r3, 0
/* 80A3DF18  41 82 00 08 */	beq lbl_80A3DF20
/* 80A3DF1C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A3DF20:
/* 80A3DF20  7F 63 DB 78 */	mr r3, r27
/* 80A3DF24  7F 44 D3 78 */	mr r4, r26
/* 80A3DF28  4B 60 9E 24 */	b getIsAddvance__16dEvent_manager_cFi
/* 80A3DF2C  2C 03 00 00 */	cmpwi r3, 0
/* 80A3DF30  41 82 03 50 */	beq lbl_80A3E280
/* 80A3DF34  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80A3DF38  41 82 01 58 */	beq lbl_80A3E090
/* 80A3DF3C  40 80 00 40 */	bge lbl_80A3DF7C
/* 80A3DF40  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A3DF44  41 82 01 10 */	beq lbl_80A3E054
/* 80A3DF48  40 80 00 1C */	bge lbl_80A3DF64
/* 80A3DF4C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A3DF50  41 82 03 30 */	beq lbl_80A3E280
/* 80A3DF54  40 80 03 2C */	bge lbl_80A3E280
/* 80A3DF58  2C 1D 00 00 */	cmpwi r29, 0
/* 80A3DF5C  41 82 00 50 */	beq lbl_80A3DFAC
/* 80A3DF60  48 00 03 20 */	b lbl_80A3E280
lbl_80A3DF64:
/* 80A3DF64  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80A3DF68  41 82 01 14 */	beq lbl_80A3E07C
/* 80A3DF6C  40 80 03 14 */	bge lbl_80A3E280
/* 80A3DF70  2C 1D 00 19 */	cmpwi r29, 0x19
/* 80A3DF74  41 82 00 F4 */	beq lbl_80A3E068
/* 80A3DF78  48 00 03 08 */	b lbl_80A3E280
lbl_80A3DF7C:
/* 80A3DF7C  2C 1D 00 46 */	cmpwi r29, 0x46
/* 80A3DF80  41 82 02 6C */	beq lbl_80A3E1EC
/* 80A3DF84  40 80 00 1C */	bge lbl_80A3DFA0
/* 80A3DF88  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 80A3DF8C  41 82 02 4C */	beq lbl_80A3E1D8
/* 80A3DF90  40 80 02 F0 */	bge lbl_80A3E280
/* 80A3DF94  2C 1D 00 32 */	cmpwi r29, 0x32
/* 80A3DF98  41 82 01 0C */	beq lbl_80A3E0A4
/* 80A3DF9C  48 00 02 E4 */	b lbl_80A3E280
lbl_80A3DFA0:
/* 80A3DFA0  2C 1D 00 50 */	cmpwi r29, 0x50
/* 80A3DFA4  41 82 02 5C */	beq lbl_80A3E200
/* 80A3DFA8  48 00 02 D8 */	b lbl_80A3E280
lbl_80A3DFAC:
/* 80A3DFAC  38 60 00 0B */	li r3, 0xb
/* 80A3DFB0  4B 70 EB 7C */	b daNpcT_offTmpBit__FUl
/* 80A3DFB4  38 60 00 0C */	li r3, 0xc
/* 80A3DFB8  4B 70 EB 74 */	b daNpcT_offTmpBit__FUl
/* 80A3DFBC  38 60 00 0D */	li r3, 0xd
/* 80A3DFC0  4B 70 EB 6C */	b daNpcT_offTmpBit__FUl
/* 80A3DFC4  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A3DFC8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3DFCC  4B 70 78 CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3DFD0  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A3DFD4  38 00 00 1A */	li r0, 0x1a
/* 80A3DFD8  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3DFDC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3DFE0  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A3DFE4  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3DFE8  2C 00 00 01 */	cmpwi r0, 1
/* 80A3DFEC  41 82 00 24 */	beq lbl_80A3E010
/* 80A3DFF0  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A3DFF4  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3DFF8  4B 70 78 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3DFFC  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A3E000  38 00 00 01 */	li r0, 1
/* 80A3E004  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3E008  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3E00C  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A3E010:
/* 80A3E010  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A3E014  2C 00 00 01 */	cmpwi r0, 1
/* 80A3E018  41 82 00 28 */	beq lbl_80A3E040
/* 80A3E01C  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A3E020  4B 70 76 DC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A3E024  38 00 00 00 */	li r0, 0
/* 80A3E028  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A3E02C  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3E030  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A3E034  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A3E038  38 00 00 01 */	li r0, 1
/* 80A3E03C  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A3E040:
/* 80A3E040  38 00 00 00 */	li r0, 0
/* 80A3E044  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A3E048  38 00 00 0C */	li r0, 0xc
/* 80A3E04C  90 1C 0D EC */	stw r0, 0xdec(r28)
/* 80A3E050  48 00 02 30 */	b lbl_80A3E280
lbl_80A3E054:
/* 80A3E054  7F 83 E3 78 */	mr r3, r28
/* 80A3E058  38 80 02 D6 */	li r4, 0x2d6
/* 80A3E05C  38 A0 00 00 */	li r5, 0
/* 80A3E060  4B FF D3 89 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E064  48 00 02 1C */	b lbl_80A3E280
lbl_80A3E068:
/* 80A3E068  7F 83 E3 78 */	mr r3, r28
/* 80A3E06C  38 80 02 D6 */	li r4, 0x2d6
/* 80A3E070  38 A0 00 00 */	li r5, 0
/* 80A3E074  4B FF D3 75 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E078  48 00 02 08 */	b lbl_80A3E280
lbl_80A3E07C:
/* 80A3E07C  7F 83 E3 78 */	mr r3, r28
/* 80A3E080  38 80 02 D6 */	li r4, 0x2d6
/* 80A3E084  38 A0 00 00 */	li r5, 0
/* 80A3E088  4B FF D3 61 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E08C  48 00 01 F4 */	b lbl_80A3E280
lbl_80A3E090:
/* 80A3E090  7F 83 E3 78 */	mr r3, r28
/* 80A3E094  38 80 02 D6 */	li r4, 0x2d6
/* 80A3E098  38 A0 00 00 */	li r5, 0
/* 80A3E09C  4B FF D3 4D */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E0A0  48 00 01 E0 */	b lbl_80A3E280
lbl_80A3E0A4:
/* 80A3E0A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80A3E0A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80A3E0AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A3E0B0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80A3E0B4  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000070@ha */
/* 80A3E0B8  38 84 00 70 */	addi r4, r4, 0x0070 /* 0x01000070@l */
/* 80A3E0BC  38 A0 00 00 */	li r5, 0
/* 80A3E0C0  38 C0 00 00 */	li r6, 0
/* 80A3E0C4  4B 87 0F 4C */	b bgmStart__8Z2SeqMgrFUlUll
/* 80A3E0C8  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A3E0CC  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80A3E0D0  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A3E0D4  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80A3E0D8  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A3E0DC  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 80A3E0E0  C0 1C 04 A8 */	lfs f0, 0x4a8(r28)
/* 80A3E0E4  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80A3E0E8  C0 1C 04 AC */	lfs f0, 0x4ac(r28)
/* 80A3E0EC  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80A3E0F0  C0 1C 04 B0 */	lfs f0, 0x4b0(r28)
/* 80A3E0F4  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80A3E0F8  7F 83 E3 78 */	mr r3, r28
/* 80A3E0FC  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A3E100  4B FF C9 F1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A3E104  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3E108  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A3E10C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A3E110  C0 1F 01 A4 */	lfs f0, 0x1a4(r31)
/* 80A3E114  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A3E118  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80A3E11C  4B 5C EC 48 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A3E120  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3E124  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3E128  A8 9C 04 B6 */	lha r4, 0x4b6(r28)
/* 80A3E12C  4B 5C E3 08 */	b mDoMtx_YrotM__FPA4_fs
/* 80A3E130  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A3E134  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A3E138  38 81 00 14 */	addi r4, r1, 0x14
/* 80A3E13C  7C 85 23 78 */	mr r5, r4
/* 80A3E140  4B 90 8C 2C */	b PSMTXMultVec
/* 80A3E144  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A3E148  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A3E14C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80A3E150  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A3E154  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A3E158  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3E15C  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A3E160  EC 01 00 2A */	fadds f0, f1, f0
/* 80A3E164  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A3E168  38 61 00 08 */	addi r3, r1, 8
/* 80A3E16C  4B 5D FB 50 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80A3E170  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A3E174  41 82 00 10 */	beq lbl_80A3E184
/* 80A3E178  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80A3E17C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80A3E180  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80A3E184:
/* 80A3E184  7F 83 E3 78 */	mr r3, r28
/* 80A3E188  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3E18C  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80A3E190  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80A3E194  4B 5D C5 7C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3E198  7C 65 1B 78 */	mr r5, r3
/* 80A3E19C  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A3E1A0  38 81 00 14 */	addi r4, r1, 0x14
/* 80A3E1A4  3C A5 00 01 */	addis r5, r5, 1
/* 80A3E1A8  38 05 80 00 */	addi r0, r5, -32768
/* 80A3E1AC  7C 05 07 34 */	extsh r5, r0
/* 80A3E1B0  38 C0 00 00 */	li r6, 0
/* 80A3E1B4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A3E1B8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80A3E1BC  7D 89 03 A6 */	mtctr r12
/* 80A3E1C0  4E 80 04 21 */	bctrl 
/* 80A3E1C4  80 7B 5D AC */	lwz r3, 0x5dac(r27)
/* 80A3E1C8  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 80A3E1CC  60 00 00 10 */	ori r0, r0, 0x10
/* 80A3E1D0  90 03 05 7C */	stw r0, 0x57c(r3)
/* 80A3E1D4  48 00 00 AC */	b lbl_80A3E280
lbl_80A3E1D8:
/* 80A3E1D8  7F 83 E3 78 */	mr r3, r28
/* 80A3E1DC  38 80 02 D8 */	li r4, 0x2d8
/* 80A3E1E0  38 A0 00 00 */	li r5, 0
/* 80A3E1E4  4B FF D2 05 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E1E8  48 00 00 98 */	b lbl_80A3E280
lbl_80A3E1EC:
/* 80A3E1EC  7F 83 E3 78 */	mr r3, r28
/* 80A3E1F0  38 80 02 D9 */	li r4, 0x2d9
/* 80A3E1F4  38 A0 00 00 */	li r5, 0
/* 80A3E1F8  4B FF D1 F1 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3E1FC  48 00 00 84 */	b lbl_80A3E280
lbl_80A3E200:
/* 80A3E200  80 1C 0B 8C */	lwz r0, 0xb8c(r28)
/* 80A3E204  2C 00 00 01 */	cmpwi r0, 1
/* 80A3E208  41 82 00 24 */	beq lbl_80A3E22C
/* 80A3E20C  83 7C 0B 90 */	lwz r27, 0xb90(r28)
/* 80A3E210  38 7C 0B 84 */	addi r3, r28, 0xb84
/* 80A3E214  4B 70 76 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3E218  93 7C 0B 90 */	stw r27, 0xb90(r28)
/* 80A3E21C  38 00 00 01 */	li r0, 1
/* 80A3E220  90 1C 0B 8C */	stw r0, 0xb8c(r28)
/* 80A3E224  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3E228  D0 1C 0B 9C */	stfs f0, 0xb9c(r28)
lbl_80A3E22C:
/* 80A3E22C  83 7C 0B B4 */	lwz r27, 0xbb4(r28)
/* 80A3E230  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A3E234  4B 70 76 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3E238  93 7C 0B B4 */	stw r27, 0xbb4(r28)
/* 80A3E23C  38 00 00 18 */	li r0, 0x18
/* 80A3E240  90 1C 0B B0 */	stw r0, 0xbb0(r28)
/* 80A3E244  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A3E248  D0 1C 0B C0 */	stfs f0, 0xbc0(r28)
/* 80A3E24C  80 1C 0D 14 */	lwz r0, 0xd14(r28)
/* 80A3E250  2C 00 00 00 */	cmpwi r0, 0
/* 80A3E254  41 82 00 24 */	beq lbl_80A3E278
/* 80A3E258  38 7C 0B DC */	addi r3, r28, 0xbdc
/* 80A3E25C  4B 70 74 A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A3E260  38 00 00 00 */	li r0, 0
/* 80A3E264  90 1C 0B FC */	stw r0, 0xbfc(r28)
/* 80A3E268  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A3E26C  D0 1C 0D 28 */	stfs f0, 0xd28(r28)
/* 80A3E270  98 1C 0D 33 */	stb r0, 0xd33(r28)
/* 80A3E274  90 1C 0D 14 */	stw r0, 0xd14(r28)
lbl_80A3E278:
/* 80A3E278  38 00 00 00 */	li r0, 0
/* 80A3E27C  98 1C 0D 33 */	stb r0, 0xd33(r28)
lbl_80A3E280:
/* 80A3E280  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80A3E284  41 82 02 0C */	beq lbl_80A3E490
/* 80A3E288  40 80 00 40 */	bge lbl_80A3E2C8
/* 80A3E28C  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80A3E290  41 82 01 BC */	beq lbl_80A3E44C
/* 80A3E294  40 80 00 1C */	bge lbl_80A3E2B0
/* 80A3E298  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80A3E29C  41 82 01 48 */	beq lbl_80A3E3E4
/* 80A3E2A0  40 80 02 90 */	bge lbl_80A3E530
/* 80A3E2A4  2C 1D 00 00 */	cmpwi r29, 0
/* 80A3E2A8  41 82 00 50 */	beq lbl_80A3E2F8
/* 80A3E2AC  48 00 02 84 */	b lbl_80A3E530
lbl_80A3E2B0:
/* 80A3E2B0  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80A3E2B4  41 82 01 DC */	beq lbl_80A3E490
/* 80A3E2B8  40 80 02 78 */	bge lbl_80A3E530
/* 80A3E2BC  2C 1D 00 19 */	cmpwi r29, 0x19
/* 80A3E2C0  41 82 01 D0 */	beq lbl_80A3E490
/* 80A3E2C4  48 00 02 6C */	b lbl_80A3E530
lbl_80A3E2C8:
/* 80A3E2C8  2C 1D 00 46 */	cmpwi r29, 0x46
/* 80A3E2CC  41 82 02 14 */	beq lbl_80A3E4E0
/* 80A3E2D0  40 80 00 1C */	bge lbl_80A3E2EC
/* 80A3E2D4  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 80A3E2D8  41 82 02 08 */	beq lbl_80A3E4E0
/* 80A3E2DC  40 80 02 54 */	bge lbl_80A3E530
/* 80A3E2E0  2C 1D 00 32 */	cmpwi r29, 0x32
/* 80A3E2E4  41 82 01 D4 */	beq lbl_80A3E4B8
/* 80A3E2E8  48 00 02 48 */	b lbl_80A3E530
lbl_80A3E2EC:
/* 80A3E2EC  2C 1D 00 50 */	cmpwi r29, 0x50
/* 80A3E2F0  41 82 02 18 */	beq lbl_80A3E508
/* 80A3E2F4  48 00 02 3C */	b lbl_80A3E530
lbl_80A3E2F8:
/* 80A3E2F8  38 7C 0D EC */	addi r3, r28, 0xdec
/* 80A3E2FC  4B FF DA 4D */	bl func_80A3BD48
/* 80A3E300  2C 03 00 00 */	cmpwi r3, 0
/* 80A3E304  40 82 00 40 */	bne lbl_80A3E344
/* 80A3E308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3E30C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80A3E310  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A3E314  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A3E318  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80A3E31C  7D 89 03 A6 */	mtctr r12
/* 80A3E320  4E 80 04 21 */	bctrl 
/* 80A3E324  28 03 00 00 */	cmplwi r3, 0
/* 80A3E328  41 82 00 1C */	beq lbl_80A3E344
/* 80A3E32C  3B C0 00 01 */	li r30, 1
/* 80A3E330  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A3E334  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80A3E338  64 00 08 00 */	oris r0, r0, 0x800
/* 80A3E33C  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80A3E340  48 00 00 6C */	b lbl_80A3E3AC
lbl_80A3E344:
/* 80A3E344  80 1C 0D EC */	lwz r0, 0xdec(r28)
/* 80A3E348  2C 00 00 01 */	cmpwi r0, 1
/* 80A3E34C  40 82 00 60 */	bne lbl_80A3E3AC
/* 80A3E350  7F 83 E3 78 */	mr r3, r28
/* 80A3E354  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3E358  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l
/* 80A3E35C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A3E360  4B 5D C3 B0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3E364  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A3E368  3C 63 00 01 */	addis r3, r3, 1
/* 80A3E36C  38 03 80 00 */	addi r0, r3, -32768
/* 80A3E370  B0 04 06 06 */	sth r0, 0x606(r4)
/* 80A3E374  7F 83 E3 78 */	mr r3, r28
/* 80A3E378  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A3E37C  4B 5D C3 94 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3E380  7C 64 1B 78 */	mr r4, r3
/* 80A3E384  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A3E388  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80A3E38C  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80A3E390  38 A0 00 00 */	li r5, 0
/* 80A3E394  38 C0 00 01 */	li r6, 1
/* 80A3E398  38 E0 00 00 */	li r7, 0
/* 80A3E39C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A3E3A0  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80A3E3A4  7D 89 03 A6 */	mtctr r12
/* 80A3E3A8  4E 80 04 21 */	bctrl 
lbl_80A3E3AC:
/* 80A3E3AC  7F 83 E3 78 */	mr r3, r28
/* 80A3E3B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3E3B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A3E3B8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3E3BC  4B 5D C3 54 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3E3C0  7C 64 1B 78 */	mr r4, r3
/* 80A3E3C4  38 7C 0D AE */	addi r3, r28, 0xdae
/* 80A3E3C8  38 A0 00 02 */	li r5, 2
/* 80A3E3CC  38 C0 08 00 */	li r6, 0x800
/* 80A3E3D0  4B 83 22 38 */	b cLib_addCalcAngleS2__FPssss
/* 80A3E3D4  7F 83 E3 78 */	mr r3, r28
/* 80A3E3D8  A8 9C 0D AE */	lha r4, 0xdae(r28)
/* 80A3E3DC  4B FF C7 15 */	bl setAngle__10daNpc_Kn_cFs
/* 80A3E3E0  48 00 01 54 */	b lbl_80A3E534
lbl_80A3E3E4:
/* 80A3E3E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3E3E8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80A3E3EC  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A3E3F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A3E3F4  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80A3E3F8  7D 89 03 A6 */	mtctr r12
/* 80A3E3FC  4E 80 04 21 */	bctrl 
/* 80A3E400  28 03 00 00 */	cmplwi r3, 0
/* 80A3E404  40 82 00 08 */	bne lbl_80A3E40C
/* 80A3E408  3B C0 00 01 */	li r30, 1
lbl_80A3E40C:
/* 80A3E40C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A3E410  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80A3E414  64 00 08 00 */	oris r0, r0, 0x800
/* 80A3E418  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80A3E41C  7F 83 E3 78 */	mr r3, r28
/* 80A3E420  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80A3E424  4B 5D C2 EC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3E428  7C 64 1B 78 */	mr r4, r3
/* 80A3E42C  38 7C 0D AE */	addi r3, r28, 0xdae
/* 80A3E430  38 A0 00 02 */	li r5, 2
/* 80A3E434  38 C0 08 00 */	li r6, 0x800
/* 80A3E438  4B 83 21 D0 */	b cLib_addCalcAngleS2__FPssss
/* 80A3E43C  7F 83 E3 78 */	mr r3, r28
/* 80A3E440  A8 9C 0D AE */	lha r4, 0xdae(r28)
/* 80A3E444  4B FF C6 AD */	bl setAngle__10daNpc_Kn_cFs
/* 80A3E448  48 00 00 EC */	b lbl_80A3E534
lbl_80A3E44C:
/* 80A3E44C  7F 83 E3 78 */	mr r3, r28
/* 80A3E450  38 80 00 00 */	li r4, 0
/* 80A3E454  38 A0 00 00 */	li r5, 0
/* 80A3E458  38 C0 00 00 */	li r6, 0
/* 80A3E45C  38 E0 00 00 */	li r7, 0
/* 80A3E460  4B FF CF E9 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3E464  2C 03 00 00 */	cmpwi r3, 0
/* 80A3E468  41 82 00 0C */	beq lbl_80A3E474
/* 80A3E46C  3B C0 00 01 */	li r30, 1
/* 80A3E470  48 00 00 C4 */	b lbl_80A3E534
lbl_80A3E474:
/* 80A3E474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3E478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3E47C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80A3E480  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80A3E484  64 00 08 00 */	oris r0, r0, 0x800
/* 80A3E488  90 03 05 8C */	stw r0, 0x58c(r3)
/* 80A3E48C  48 00 00 A8 */	b lbl_80A3E534
lbl_80A3E490:
/* 80A3E490  7F 83 E3 78 */	mr r3, r28
/* 80A3E494  38 80 00 00 */	li r4, 0
/* 80A3E498  38 A0 00 00 */	li r5, 0
/* 80A3E49C  38 C0 00 00 */	li r6, 0
/* 80A3E4A0  38 E0 00 00 */	li r7, 0
/* 80A3E4A4  4B FF CF A5 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3E4A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A3E4AC  41 82 00 88 */	beq lbl_80A3E534
/* 80A3E4B0  3B C0 00 01 */	li r30, 1
/* 80A3E4B4  48 00 00 80 */	b lbl_80A3E534
lbl_80A3E4B8:
/* 80A3E4B8  7F 83 E3 78 */	mr r3, r28
/* 80A3E4BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A3E4C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A3E4C4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A3E4C8  4B 5D C2 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A3E4CC  7C 64 1B 78 */	mr r4, r3
/* 80A3E4D0  7F 83 E3 78 */	mr r3, r28
/* 80A3E4D4  4B FF C6 1D */	bl setAngle__10daNpc_Kn_cFs
/* 80A3E4D8  3B C0 00 01 */	li r30, 1
/* 80A3E4DC  48 00 00 58 */	b lbl_80A3E534
lbl_80A3E4E0:
/* 80A3E4E0  7F 83 E3 78 */	mr r3, r28
/* 80A3E4E4  38 80 00 00 */	li r4, 0
/* 80A3E4E8  38 A0 00 00 */	li r5, 0
/* 80A3E4EC  38 C0 00 00 */	li r6, 0
/* 80A3E4F0  38 E0 00 00 */	li r7, 0
/* 80A3E4F4  4B FF CF 55 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A3E4F8  2C 03 00 00 */	cmpwi r3, 0
/* 80A3E4FC  41 82 00 38 */	beq lbl_80A3E534
/* 80A3E500  3B C0 00 01 */	li r30, 1
/* 80A3E504  48 00 00 30 */	b lbl_80A3E534
lbl_80A3E508:
/* 80A3E508  80 1C 0B B0 */	lwz r0, 0xbb0(r28)
/* 80A3E50C  2C 00 00 18 */	cmpwi r0, 0x18
/* 80A3E510  40 82 00 24 */	bne lbl_80A3E534
/* 80A3E514  80 1C 0B B8 */	lwz r0, 0xbb8(r28)
/* 80A3E518  2C 00 00 00 */	cmpwi r0, 0
/* 80A3E51C  40 81 00 18 */	ble lbl_80A3E534
/* 80A3E520  3B C0 00 01 */	li r30, 1
/* 80A3E524  38 00 00 02 */	li r0, 2
/* 80A3E528  98 1C 15 AE */	stb r0, 0x15ae(r28)
/* 80A3E52C  48 00 00 08 */	b lbl_80A3E534
lbl_80A3E530:
/* 80A3E530  3B C0 00 01 */	li r30, 1
lbl_80A3E534:
/* 80A3E534  7F C3 F3 78 */	mr r3, r30
/* 80A3E538  39 61 00 40 */	addi r11, r1, 0x40
/* 80A3E53C  4B 92 3C E0 */	b _restgpr_26
/* 80A3E540  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A3E544  7C 08 03 A6 */	mtlr r0
/* 80A3E548  38 21 00 40 */	addi r1, r1, 0x40
/* 80A3E54C  4E 80 00 20 */	blr 
