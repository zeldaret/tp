lbl_80566FA4:
/* 80566FA4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80566FA8  7C 08 02 A6 */	mflr r0
/* 80566FAC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80566FB0  39 61 00 30 */	addi r11, r1, 0x30
/* 80566FB4  4B DF B2 24 */	b _savegpr_28
/* 80566FB8  7C 7F 1B 78 */	mr r31, r3
/* 80566FBC  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha
/* 80566FC0  3B C3 16 C8 */	addi r30, r3, m__18daNpc_Taro_Param_c@l
/* 80566FC4  38 7F 11 80 */	addi r3, r31, 0x1180
/* 80566FC8  38 1F 11 A8 */	addi r0, r31, 0x11a8
/* 80566FCC  7F A3 00 50 */	subf r29, r3, r0
/* 80566FD0  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80566FD4  28 03 00 00 */	cmplwi r3, 0
/* 80566FD8  41 82 00 08 */	beq lbl_80566FE0
/* 80566FDC  4B BD E7 88 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80566FE0:
/* 80566FE0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80566FE4  38 80 00 00 */	li r4, 0
/* 80566FE8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80566FEC  7C A3 00 50 */	subf r5, r3, r0
/* 80566FF0  4B A9 C4 68 */	b memset
/* 80566FF4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80566FF8  4B BD E8 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80566FFC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80567000  4B BD E8 98 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80567004  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80567008  4B BD E6 CC */	b initialize__18daNpcT_ActorMngr_cFv
/* 8056700C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80567010  4B BD E6 C4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80567014  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80567018  4B BD FC 80 */	b initialize__15daNpcT_JntAnm_cFv
/* 8056701C  38 A0 00 00 */	li r5, 0
/* 80567020  38 60 00 00 */	li r3, 0
/* 80567024  7C A4 2B 78 */	mr r4, r5
/* 80567028  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056702C  38 00 00 02 */	li r0, 2
/* 80567030  7C 09 03 A6 */	mtctr r0
lbl_80567034:
/* 80567034  7C DF 22 14 */	add r6, r31, r4
/* 80567038  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 8056703C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80567040  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80567044  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80567048  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8056704C  38 63 00 04 */	addi r3, r3, 4
/* 80567050  38 84 00 06 */	addi r4, r4, 6
/* 80567054  42 00 FF E0 */	bdnz lbl_80567034
/* 80567058  38 00 00 00 */	li r0, 0
/* 8056705C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80567060  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80567064  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80567068  38 00 FF FF */	li r0, -1
/* 8056706C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80567070  38 00 00 01 */	li r0, 1
/* 80567074  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80567078  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 8056707C  4B D0 08 D8 */	b cM_rndF__Ff
/* 80567080  FC 00 08 1E */	fctiwz f0, f1
/* 80567084  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80567088  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8056708C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80567090  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80567094  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80567098  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8056709C  3B 80 00 00 */	li r28, 0
/* 805670A0  3B C0 00 00 */	li r30, 0
lbl_805670A4:
/* 805670A4  38 7E 10 C8 */	addi r3, r30, 0x10c8
/* 805670A8  7C 7F 1A 14 */	add r3, r31, r3
/* 805670AC  4B BD E6 28 */	b initialize__18daNpcT_ActorMngr_cFv
/* 805670B0  3B 9C 00 01 */	addi r28, r28, 1
/* 805670B4  2C 1C 00 17 */	cmpwi r28, 0x17
/* 805670B8  3B DE 00 08 */	addi r30, r30, 8
/* 805670BC  41 80 FF E8 */	blt lbl_805670A4
/* 805670C0  38 7F 11 80 */	addi r3, r31, 0x1180
/* 805670C4  38 80 00 00 */	li r4, 0
/* 805670C8  7F A5 EB 78 */	mr r5, r29
/* 805670CC  4B A9 C3 8C */	b memset
/* 805670D0  38 80 00 00 */	li r4, 0
/* 805670D4  B0 81 00 10 */	sth r4, 0x10(r1)
/* 805670D8  B0 81 00 12 */	sth r4, 0x12(r1)
/* 805670DC  B0 81 00 14 */	sth r4, 0x14(r1)
/* 805670E0  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 805670E4  B0 01 00 12 */	sth r0, 0x12(r1)
/* 805670E8  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 805670EC  28 00 00 0F */	cmplwi r0, 0xf
/* 805670F0  41 81 00 A0 */	bgt lbl_80567190
/* 805670F4  3C 60 80 57 */	lis r3, lit_5081@ha
/* 805670F8  38 63 2C 70 */	addi r3, r3, lit_5081@l
/* 805670FC  54 00 10 3A */	slwi r0, r0, 2
/* 80567100  7C 03 00 2E */	lwzx r0, r3, r0
/* 80567104  7C 09 03 A6 */	mtctr r0
/* 80567108  4E 80 04 20 */	bctr 
lbl_8056710C:
/* 8056710C  98 9F 00 FF */	stb r4, 0xff(r31)
/* 80567110  48 00 00 80 */	b lbl_80567190
lbl_80567114:
/* 80567114  38 60 00 1F */	li r3, 0x1f
/* 80567118  4B BE 59 94 */	b daNpcT_chkEvtBit__FUl
/* 8056711C  7C 60 00 34 */	cntlzw r0, r3
/* 80567120  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80567124  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80567128  38 00 00 01 */	li r0, 1
/* 8056712C  98 1F 11 A5 */	stb r0, 0x11a5(r31)
/* 80567130  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80567134  48 00 00 5C */	b lbl_80567190
lbl_80567138:
/* 80567138  38 00 00 01 */	li r0, 1
/* 8056713C  98 1F 11 A5 */	stb r0, 0x11a5(r31)
/* 80567140  48 00 00 50 */	b lbl_80567190
lbl_80567144:
/* 80567144  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80567148  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056714C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80567150  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FBFF@ha */
/* 80567154  38 84 FB FF */	addi r4, r4, 0xFBFF /* 0x0000FBFF@l */
/* 80567158  38 A0 00 00 */	li r5, 0
/* 8056715C  4B AC D8 84 */	b setEventReg__11dSv_event_cFUsUc
/* 80567160  48 00 00 30 */	b lbl_80567190
lbl_80567164:
/* 80567164  38 00 00 01 */	li r0, 1
/* 80567168  98 1F 11 A5 */	stb r0, 0x11a5(r31)
/* 8056716C  48 00 00 24 */	b lbl_80567190
lbl_80567170:
/* 80567170  38 00 00 01 */	li r0, 1
/* 80567174  98 1F 11 A4 */	stb r0, 0x11a4(r31)
/* 80567178  48 00 00 18 */	b lbl_80567190
lbl_8056717C:
/* 8056717C  38 00 00 01 */	li r0, 1
/* 80567180  98 1F 11 A2 */	stb r0, 0x11a2(r31)
/* 80567184  48 00 00 0C */	b lbl_80567190
lbl_80567188:
/* 80567188  38 00 00 01 */	li r0, 1
/* 8056718C  98 1F 11 A4 */	stb r0, 0x11a4(r31)
lbl_80567190:
/* 80567190  38 60 00 3C */	li r3, 0x3c
/* 80567194  4B BE 59 98 */	b daNpcT_offTmpBit__FUl
/* 80567198  38 60 00 3F */	li r3, 0x3f
/* 8056719C  4B BE 59 90 */	b daNpcT_offTmpBit__FUl
/* 805671A0  38 60 00 40 */	li r3, 0x40
/* 805671A4  4B BE 59 88 */	b daNpcT_offTmpBit__FUl
/* 805671A8  38 60 00 41 */	li r3, 0x41
/* 805671AC  4B BE 59 80 */	b daNpcT_offTmpBit__FUl
/* 805671B0  38 60 00 42 */	li r3, 0x42
/* 805671B4  4B BE 59 78 */	b daNpcT_offTmpBit__FUl
/* 805671B8  38 60 00 64 */	li r3, 0x64
/* 805671BC  4B BE 59 70 */	b daNpcT_offTmpBit__FUl
/* 805671C0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 805671C4  90 01 00 08 */	stw r0, 8(r1)
/* 805671C8  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 805671CC  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805671D0  7F E3 FB 78 */	mr r3, r31
/* 805671D4  38 81 00 08 */	addi r4, r1, 8
/* 805671D8  4B BE 37 C4 */	b setAngle__8daNpcT_cF5csXyz
/* 805671DC  39 61 00 30 */	addi r11, r1, 0x30
/* 805671E0  4B DF B0 44 */	b _restgpr_28
/* 805671E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805671E8  7C 08 03 A6 */	mtlr r0
/* 805671EC  38 21 00 30 */	addi r1, r1, 0x30
/* 805671F0  4E 80 00 20 */	blr 
