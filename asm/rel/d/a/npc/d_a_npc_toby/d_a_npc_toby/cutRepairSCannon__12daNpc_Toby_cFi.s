lbl_80B20FC0:
/* 80B20FC0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B20FC4  7C 08 02 A6 */	mflr r0
/* 80B20FC8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B20FCC  39 61 00 70 */	addi r11, r1, 0x70
/* 80B20FD0  4B 84 11 F0 */	b _savegpr_22
/* 80B20FD4  7C 77 1B 78 */	mr r23, r3
/* 80B20FD8  7C 98 23 78 */	mr r24, r4
/* 80B20FDC  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha
/* 80B20FE0  3B C3 49 E4 */	addi r30, r3, m__18daNpc_Toby_Param_c@l
/* 80B20FE4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80B20FE8  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 80B20FEC  38 77 0F 98 */	addi r3, r23, 0xf98
/* 80B20FF0  4B 62 47 18 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B20FF4  7C 7C 1B 78 */	mr r28, r3
/* 80B20FF8  3B 60 00 00 */	li r27, 0
/* 80B20FFC  3B 40 FF FF */	li r26, -1
/* 80B21000  3B 20 00 00 */	li r25, 0
/* 80B21004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B21008  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B2100C  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80B21010  7F A3 EB 78 */	mr r3, r29
/* 80B21014  7F 04 C3 78 */	mr r4, r24
/* 80B21018  3C A0 80 B2 */	lis r5, struct_80B24B8C+0x0@ha
/* 80B2101C  38 A5 4B 8C */	addi r5, r5, struct_80B24B8C+0x0@l
/* 80B21020  38 A5 00 A6 */	addi r5, r5, 0xa6
/* 80B21024  38 C0 00 03 */	li r6, 3
/* 80B21028  4B 52 70 C4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B2102C  28 03 00 00 */	cmplwi r3, 0
/* 80B21030  41 82 00 08 */	beq lbl_80B21038
/* 80B21034  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B21038:
/* 80B21038  7F A3 EB 78 */	mr r3, r29
/* 80B2103C  7F 04 C3 78 */	mr r4, r24
/* 80B21040  3C A0 80 B2 */	lis r5, struct_80B24B8C+0x0@ha
/* 80B21044  38 A5 4B 8C */	addi r5, r5, struct_80B24B8C+0x0@l
/* 80B21048  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B2104C  38 C0 00 03 */	li r6, 3
/* 80B21050  4B 52 70 9C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B21054  28 03 00 00 */	cmplwi r3, 0
/* 80B21058  41 82 00 08 */	beq lbl_80B21060
/* 80B2105C  83 23 00 00 */	lwz r25, 0(r3)
lbl_80B21060:
/* 80B21060  7F A3 EB 78 */	mr r3, r29
/* 80B21064  7F 04 C3 78 */	mr r4, r24
/* 80B21068  4B 52 6C E4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B2106C  2C 03 00 00 */	cmpwi r3, 0
/* 80B21070  41 82 01 B0 */	beq lbl_80B21220
/* 80B21074  2C 1A 00 02 */	cmpwi r26, 2
/* 80B21078  41 82 01 98 */	beq lbl_80B21210
/* 80B2107C  40 80 00 14 */	bge lbl_80B21090
/* 80B21080  2C 1A 00 00 */	cmpwi r26, 0
/* 80B21084  41 82 01 9C */	beq lbl_80B21220
/* 80B21088  40 80 00 18 */	bge lbl_80B210A0
/* 80B2108C  48 00 01 94 */	b lbl_80B21220
lbl_80B21090:
/* 80B21090  2C 1A 00 0B */	cmpwi r26, 0xb
/* 80B21094  41 82 01 84 */	beq lbl_80B21218
/* 80B21098  40 80 01 88 */	bge lbl_80B21220
/* 80B2109C  48 00 01 84 */	b lbl_80B21220
lbl_80B210A0:
/* 80B210A0  80 17 0B 58 */	lwz r0, 0xb58(r23)
/* 80B210A4  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B210A8  41 82 00 24 */	beq lbl_80B210CC
/* 80B210AC  82 D7 0B 5C */	lwz r22, 0xb5c(r23)
/* 80B210B0  38 77 0B 50 */	addi r3, r23, 0xb50
/* 80B210B4  4B 62 47 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B210B8  92 D7 0B 5C */	stw r22, 0xb5c(r23)
/* 80B210BC  38 00 00 10 */	li r0, 0x10
/* 80B210C0  90 17 0B 58 */	stw r0, 0xb58(r23)
/* 80B210C4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B210C8  D0 17 0B 68 */	stfs f0, 0xb68(r23)
lbl_80B210CC:
/* 80B210CC  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B210D0  2C 00 00 00 */	cmpwi r0, 0
/* 80B210D4  41 82 00 24 */	beq lbl_80B210F8
/* 80B210D8  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B210DC  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B210E0  4B 62 47 B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B210E4  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B210E8  38 00 00 00 */	li r0, 0
/* 80B210EC  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B210F0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B210F4  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
lbl_80B210F8:
/* 80B210F8  80 17 0C E0 */	lwz r0, 0xce0(r23)
/* 80B210FC  2C 00 00 00 */	cmpwi r0, 0
/* 80B21100  41 82 00 24 */	beq lbl_80B21124
/* 80B21104  38 77 0B A8 */	addi r3, r23, 0xba8
/* 80B21108  4B 62 45 F4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2110C  38 00 00 00 */	li r0, 0
/* 80B21110  90 17 0B C8 */	stw r0, 0xbc8(r23)
/* 80B21114  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21118  D0 17 0C F4 */	stfs f0, 0xcf4(r23)
/* 80B2111C  98 17 0C FF */	stb r0, 0xcff(r23)
/* 80B21120  90 17 0C E0 */	stw r0, 0xce0(r23)
lbl_80B21124:
/* 80B21124  38 00 00 00 */	li r0, 0
/* 80B21128  B0 17 0C D4 */	sth r0, 0xcd4(r23)
/* 80B2112C  B0 17 0C D6 */	sth r0, 0xcd6(r23)
/* 80B21130  38 00 00 01 */	li r0, 1
/* 80B21134  98 17 0C FF */	stb r0, 0xcff(r23)
/* 80B21138  C0 17 04 A8 */	lfs f0, 0x4a8(r23)
/* 80B2113C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B21140  C0 17 04 AC */	lfs f0, 0x4ac(r23)
/* 80B21144  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B21148  C0 17 04 B0 */	lfs f0, 0x4b0(r23)
/* 80B2114C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B21150  7E E3 BB 78 */	mr r3, r23
/* 80B21154  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B21158  4B 62 97 B0 */	b setPos__8daNpcT_cF4cXyz
/* 80B2115C  7E E3 BB 78 */	mr r3, r23
/* 80B21160  A8 97 04 B6 */	lha r4, 0x4b6(r23)
/* 80B21164  4B 62 98 B4 */	b setAngle__8daNpcT_cFs
/* 80B21168  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B2116C  D0 17 05 2C */	stfs f0, 0x52c(r23)
/* 80B21170  D0 17 04 F8 */	stfs f0, 0x4f8(r23)
/* 80B21174  D0 17 04 FC */	stfs f0, 0x4fc(r23)
/* 80B21178  D0 17 05 00 */	stfs f0, 0x500(r23)
/* 80B2117C  93 37 0D C4 */	stw r25, 0xdc4(r23)
/* 80B21180  38 60 00 01 */	li r3, 1
/* 80B21184  88 17 04 E2 */	lbz r0, 0x4e2(r23)
/* 80B21188  7C 04 07 74 */	extsb r4, r0
/* 80B2118C  38 A1 00 28 */	addi r5, r1, 0x28
/* 80B21190  38 C1 00 08 */	addi r6, r1, 8
/* 80B21194  4B 62 B3 6C */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80B21198  2C 03 00 00 */	cmpwi r3, 0
/* 80B2119C  41 82 00 2C */	beq lbl_80B211C8
/* 80B211A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B211A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B211A8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B211AC  38 81 00 28 */	addi r4, r1, 0x28
/* 80B211B0  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 80B211B4  38 C0 00 00 */	li r6, 0
/* 80B211B8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B211BC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B211C0  7D 89 03 A6 */	mtctr r12
/* 80B211C4  4E 80 04 21 */	bctrl 
lbl_80B211C8:
/* 80B211C8  7F 83 E3 78 */	mr r3, r28
/* 80B211CC  48 1A 7C 10 */	b setCannonRepair__11daSCannon_cFv
/* 80B211D0  80 17 0D C4 */	lwz r0, 0xdc4(r23)
/* 80B211D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B211D8  41 82 00 48 */	beq lbl_80B21220
/* 80B211DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B211E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B211E4  80 63 00 00 */	lwz r3, 0(r3)
/* 80B211E8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B211EC  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000003@ha */
/* 80B211F0  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x02000003@l */
/* 80B211F4  4B 78 E9 A0 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 80B211F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B211FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B21200  80 63 00 00 */	lwz r3, 0(r3)
/* 80B21204  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B21208  4B 78 EC 10 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 80B2120C  48 00 00 14 */	b lbl_80B21220
lbl_80B21210:
/* 80B21210  93 37 0D C4 */	stw r25, 0xdc4(r23)
/* 80B21214  48 00 00 0C */	b lbl_80B21220
lbl_80B21218:
/* 80B21218  38 00 00 01 */	li r0, 1
/* 80B2121C  98 17 10 02 */	stb r0, 0x1002(r23)
lbl_80B21220:
/* 80B21220  2C 1A 00 02 */	cmpwi r26, 2
/* 80B21224  41 82 00 B0 */	beq lbl_80B212D4
/* 80B21228  40 80 00 14 */	bge lbl_80B2123C
/* 80B2122C  2C 1A 00 00 */	cmpwi r26, 0
/* 80B21230  41 82 00 24 */	beq lbl_80B21254
/* 80B21234  40 80 00 3C */	bge lbl_80B21270
/* 80B21238  48 00 03 00 */	b lbl_80B21538
lbl_80B2123C:
/* 80B2123C  2C 1A 00 0B */	cmpwi r26, 0xb
/* 80B21240  41 82 00 C8 */	beq lbl_80B21308
/* 80B21244  40 80 02 F4 */	bge lbl_80B21538
/* 80B21248  2C 1A 00 0A */	cmpwi r26, 0xa
/* 80B2124C  40 80 00 B4 */	bge lbl_80B21300
/* 80B21250  48 00 02 E8 */	b lbl_80B21538
lbl_80B21254:
/* 80B21254  7E E3 BB 78 */	mr r3, r23
/* 80B21258  81 97 0E 3C */	lwz r12, 0xe3c(r23)
/* 80B2125C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B21260  7D 89 03 A6 */	mtctr r12
/* 80B21264  4E 80 04 21 */	bctrl 
/* 80B21268  3B 60 00 01 */	li r27, 1
/* 80B2126C  48 00 02 CC */	b lbl_80B21538
lbl_80B21270:
/* 80B21270  80 17 0D C4 */	lwz r0, 0xdc4(r23)
/* 80B21274  2C 00 00 00 */	cmpwi r0, 0
/* 80B21278  41 82 02 C0 */	beq lbl_80B21538
/* 80B2127C  38 77 0D C4 */	addi r3, r23, 0xdc4
/* 80B21280  48 00 34 A9 */	bl func_80B24728
/* 80B21284  2C 03 00 00 */	cmpwi r3, 0
/* 80B21288  40 82 02 B0 */	bne lbl_80B21538
/* 80B2128C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B21290  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B21294  80 63 00 00 */	lwz r3, 0(r3)
/* 80B21298  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B2129C  38 80 00 1E */	li r4, 0x1e
/* 80B212A0  4B 78 EC 3C */	b bgmStreamStop__8Z2SeqMgrFUl
/* 80B212A4  88 17 04 E2 */	lbz r0, 0x4e2(r23)
/* 80B212A8  7C 16 07 74 */	extsb r22, r0
/* 80B212AC  38 60 00 00 */	li r3, 0
/* 80B212B0  4B 50 B6 CC */	b getLayerNo__14dComIfG_play_cFi
/* 80B212B4  7C 67 1B 78 */	mr r7, r3
/* 80B212B8  38 60 00 08 */	li r3, 8
/* 80B212BC  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 80B212C0  38 80 00 00 */	li r4, 0
/* 80B212C4  7E C5 B3 78 */	mr r5, r22
/* 80B212C8  38 C0 00 00 */	li r6, 0
/* 80B212CC  4B 50 5E A4 */	b dStage_changeScene__FifUlScsi
/* 80B212D0  48 00 02 68 */	b lbl_80B21538
lbl_80B212D4:
/* 80B212D4  7E E3 BB 78 */	mr r3, r23
/* 80B212D8  81 97 0E 3C */	lwz r12, 0xe3c(r23)
/* 80B212DC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B212E0  7D 89 03 A6 */	mtctr r12
/* 80B212E4  4E 80 04 21 */	bctrl 
/* 80B212E8  38 77 0D C4 */	addi r3, r23, 0xdc4
/* 80B212EC  48 00 34 3D */	bl func_80B24728
/* 80B212F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B212F4  40 82 02 44 */	bne lbl_80B21538
/* 80B212F8  3B 60 00 01 */	li r27, 1
/* 80B212FC  48 00 02 3C */	b lbl_80B21538
lbl_80B21300:
/* 80B21300  3B 60 00 01 */	li r27, 1
/* 80B21304  48 00 02 34 */	b lbl_80B21538
lbl_80B21308:
/* 80B21308  80 17 0F C0 */	lwz r0, 0xfc0(r23)
/* 80B2130C  28 00 00 00 */	cmplwi r0, 0
/* 80B21310  41 82 01 F4 */	beq lbl_80B21504
/* 80B21314  38 77 0D C4 */	addi r3, r23, 0xdc4
/* 80B21318  48 00 34 11 */	bl func_80B24728
/* 80B2131C  2C 03 00 00 */	cmpwi r3, 0
/* 80B21320  40 82 01 F8 */	bne lbl_80B21518
/* 80B21324  7F A3 EB 78 */	mr r3, r29
/* 80B21328  7F 04 C3 78 */	mr r4, r24
/* 80B2132C  4B 52 6A 20 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B21330  2C 03 00 00 */	cmpwi r3, 0
/* 80B21334  40 82 00 14 */	bne lbl_80B21348
/* 80B21338  38 77 0F C0 */	addi r3, r23, 0xfc0
/* 80B2133C  80 97 0F C0 */	lwz r4, 0xfc0(r23)
/* 80B21340  A0 84 00 00 */	lhz r4, 0(r4)
/* 80B21344  4B 62 4A 8C */	b setNextIdx__13daNpcT_Path_cFi
lbl_80B21348:
/* 80B21348  80 77 0F C0 */	lwz r3, 0xfc0(r23)
/* 80B2134C  80 63 00 08 */	lwz r3, 8(r3)
/* 80B21350  A0 17 0F DC */	lhz r0, 0xfdc(r23)
/* 80B21354  54 00 20 36 */	slwi r0, r0, 4
/* 80B21358  7C 03 00 AE */	lbzx r0, r3, r0
/* 80B2135C  2C 00 00 01 */	cmpwi r0, 1
/* 80B21360  41 82 00 58 */	beq lbl_80B213B8
/* 80B21364  40 80 00 10 */	bge lbl_80B21374
/* 80B21368  2C 00 00 00 */	cmpwi r0, 0
/* 80B2136C  40 80 00 14 */	bge lbl_80B21380
/* 80B21370  48 00 00 B8 */	b lbl_80B21428
lbl_80B21374:
/* 80B21374  2C 00 00 03 */	cmpwi r0, 3
/* 80B21378  40 80 00 B0 */	bge lbl_80B21428
/* 80B2137C  48 00 00 74 */	b lbl_80B213F0
lbl_80B21380:
/* 80B21380  38 00 00 00 */	li r0, 0
/* 80B21384  98 17 0E 25 */	stb r0, 0xe25(r23)
/* 80B21388  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B2138C  2C 00 00 15 */	cmpwi r0, 0x15
/* 80B21390  41 82 00 A0 */	beq lbl_80B21430
/* 80B21394  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B21398  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B2139C  4B 62 44 FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B213A0  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B213A4  38 00 00 15 */	li r0, 0x15
/* 80B213A8  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B213AC  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B213B0  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
/* 80B213B4  48 00 00 7C */	b lbl_80B21430
lbl_80B213B8:
/* 80B213B8  38 00 00 00 */	li r0, 0
/* 80B213BC  98 17 0E 25 */	stb r0, 0xe25(r23)
/* 80B213C0  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B213C4  2C 00 00 16 */	cmpwi r0, 0x16
/* 80B213C8  41 82 00 68 */	beq lbl_80B21430
/* 80B213CC  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B213D0  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B213D4  4B 62 44 C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B213D8  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B213DC  38 00 00 16 */	li r0, 0x16
/* 80B213E0  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B213E4  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B213E8  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
/* 80B213EC  48 00 00 44 */	b lbl_80B21430
lbl_80B213F0:
/* 80B213F0  38 00 00 00 */	li r0, 0
/* 80B213F4  98 17 0E 25 */	stb r0, 0xe25(r23)
/* 80B213F8  80 17 0B 7C */	lwz r0, 0xb7c(r23)
/* 80B213FC  2C 00 00 17 */	cmpwi r0, 0x17
/* 80B21400  41 82 00 30 */	beq lbl_80B21430
/* 80B21404  82 D7 0B 80 */	lwz r22, 0xb80(r23)
/* 80B21408  38 77 0B 74 */	addi r3, r23, 0xb74
/* 80B2140C  4B 62 44 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B21410  92 D7 0B 80 */	stw r22, 0xb80(r23)
/* 80B21414  38 00 00 17 */	li r0, 0x17
/* 80B21418  90 17 0B 7C */	stw r0, 0xb7c(r23)
/* 80B2141C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21420  D0 17 0B 8C */	stfs f0, 0xb8c(r23)
/* 80B21424  48 00 00 0C */	b lbl_80B21430
lbl_80B21428:
/* 80B21428  38 00 00 01 */	li r0, 1
/* 80B2142C  98 17 0E 25 */	stb r0, 0xe25(r23)
lbl_80B21430:
/* 80B21430  A0 17 0F DC */	lhz r0, 0xfdc(r23)
/* 80B21434  80 77 0F C0 */	lwz r3, 0xfc0(r23)
/* 80B21438  80 63 00 08 */	lwz r3, 8(r3)
/* 80B2143C  54 00 20 36 */	slwi r0, r0, 4
/* 80B21440  7C 83 02 14 */	add r4, r3, r0
/* 80B21444  80 64 00 04 */	lwz r3, 4(r4)
/* 80B21448  80 04 00 08 */	lwz r0, 8(r4)
/* 80B2144C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B21450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B21454  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B21458  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B2145C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B21460  D0 17 04 D0 */	stfs f0, 0x4d0(r23)
/* 80B21464  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B21468  D0 17 04 D4 */	stfs f0, 0x4d4(r23)
/* 80B2146C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B21470  D0 17 04 D8 */	stfs f0, 0x4d8(r23)
/* 80B21474  C0 17 04 D0 */	lfs f0, 0x4d0(r23)
/* 80B21478  D0 17 04 BC */	stfs f0, 0x4bc(r23)
/* 80B2147C  C0 17 04 D4 */	lfs f0, 0x4d4(r23)
/* 80B21480  D0 17 04 C0 */	stfs f0, 0x4c0(r23)
/* 80B21484  C0 17 04 D8 */	lfs f0, 0x4d8(r23)
/* 80B21488  D0 17 04 C4 */	stfs f0, 0x4c4(r23)
/* 80B2148C  C0 7E 01 4C */	lfs f3, 0x14c(r30)
/* 80B21490  C0 5E 01 50 */	lfs f2, 0x150(r30)
/* 80B21494  80 77 0F C0 */	lwz r3, 0xfc0(r23)
/* 80B21498  80 63 00 08 */	lwz r3, 8(r3)
/* 80B2149C  A0 17 0F DC */	lhz r0, 0xfdc(r23)
/* 80B214A0  54 00 20 36 */	slwi r0, r0, 4
/* 80B214A4  7C 63 02 14 */	add r3, r3, r0
/* 80B214A8  88 03 00 03 */	lbz r0, 3(r3)
/* 80B214AC  C8 3E 01 10 */	lfd f1, 0x110(r30)
/* 80B214B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B214B4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B214B8  3C 00 43 30 */	lis r0, 0x4330
/* 80B214BC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B214C0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80B214C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B214C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B214CC  EC 03 00 32 */	fmuls f0, f3, f0
/* 80B214D0  FC 00 00 1E */	fctiwz f0, f0
/* 80B214D4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80B214D8  80 81 00 44 */	lwz r4, 0x44(r1)
/* 80B214DC  7E E3 BB 78 */	mr r3, r23
/* 80B214E0  4B 62 95 38 */	b setAngle__8daNpcT_cFs
/* 80B214E4  80 77 0F C0 */	lwz r3, 0xfc0(r23)
/* 80B214E8  80 63 00 08 */	lwz r3, 8(r3)
/* 80B214EC  A0 17 0F DC */	lhz r0, 0xfdc(r23)
/* 80B214F0  54 00 20 36 */	slwi r0, r0, 4
/* 80B214F4  7C 63 02 14 */	add r3, r3, r0
/* 80B214F8  88 03 00 01 */	lbz r0, 1(r3)
/* 80B214FC  90 17 0D C4 */	stw r0, 0xdc4(r23)
/* 80B21500  48 00 00 18 */	b lbl_80B21518
lbl_80B21504:
/* 80B21504  88 17 0E 25 */	lbz r0, 0xe25(r23)
/* 80B21508  28 00 00 00 */	cmplwi r0, 0
/* 80B2150C  40 82 00 0C */	bne lbl_80B21518
/* 80B21510  38 00 00 01 */	li r0, 1
/* 80B21514  98 17 0E 25 */	stb r0, 0xe25(r23)
lbl_80B21518:
/* 80B21518  80 17 06 B8 */	lwz r0, 0x6b8(r23)
/* 80B2151C  60 00 00 02 */	ori r0, r0, 2
/* 80B21520  90 17 06 B8 */	stw r0, 0x6b8(r23)
/* 80B21524  80 17 06 B8 */	lwz r0, 0x6b8(r23)
/* 80B21528  60 00 00 04 */	ori r0, r0, 4
/* 80B2152C  90 17 06 B8 */	stw r0, 0x6b8(r23)
/* 80B21530  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B21534  D0 17 05 30 */	stfs f0, 0x530(r23)
lbl_80B21538:
/* 80B21538  2C 1A 00 01 */	cmpwi r26, 1
/* 80B2153C  40 82 00 5C */	bne lbl_80B21598
/* 80B21540  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B21544  3A E3 61 C0 */	addi r23, r3, g_dComIfG_gameInfo@l
/* 80B21548  C0 37 00 34 */	lfs f1, 0x34(r23)
/* 80B2154C  D0 3F 12 44 */	stfs f1, 0x1244(r31)
/* 80B21550  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80B21554  EC 21 00 2A */	fadds f1, f1, f0
/* 80B21558  D0 3F 12 44 */	stfs f1, 0x1244(r31)
/* 80B2155C  4B 84 0B 50 */	b __cvt_fp2unsigned
/* 80B21560  C8 3E 01 60 */	lfd f1, 0x160(r30)
/* 80B21564  90 61 00 44 */	stw r3, 0x44(r1)
/* 80B21568  3C 00 43 30 */	lis r0, 0x4330
/* 80B2156C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B21570  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 80B21574  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B21578  C0 1E 01 58 */	lfs f0, 0x158(r30)
/* 80B2157C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B21580  4C 40 13 82 */	cror 2, 0, 2
/* 80B21584  40 82 00 0C */	bne lbl_80B21590
/* 80B21588  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B2158C  D0 1F 12 44 */	stfs f0, 0x1244(r31)
lbl_80B21590:
/* 80B21590  C0 1F 12 44 */	lfs f0, 0x1244(r31)
/* 80B21594  D0 17 00 34 */	stfs f0, 0x34(r23)
lbl_80B21598:
/* 80B21598  7F 63 DB 78 */	mr r3, r27
/* 80B2159C  39 61 00 70 */	addi r11, r1, 0x70
/* 80B215A0  4B 84 0C 6C */	b _restgpr_22
/* 80B215A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B215A8  7C 08 03 A6 */	mtlr r0
/* 80B215AC  38 21 00 70 */	addi r1, r1, 0x70
/* 80B215B0  4E 80 00 20 */	blr 
