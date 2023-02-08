lbl_8098EFE4:
/* 8098EFE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8098EFE8  7C 08 02 A6 */	mflr r0
/* 8098EFEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8098EFF0  39 61 00 30 */	addi r11, r1, 0x30
/* 8098EFF4  4B 9D 31 E9 */	bl _savegpr_29
/* 8098EFF8  7C 7E 1B 78 */	mr r30, r3
/* 8098EFFC  3B E0 00 00 */	li r31, 0
/* 8098F000  A8 03 0E 04 */	lha r0, 0xe04(r3)
/* 8098F004  2C 00 00 00 */	cmpwi r0, 0
/* 8098F008  41 82 00 20 */	beq lbl_8098F028
/* 8098F00C  40 80 00 10 */	bge lbl_8098F01C
/* 8098F010  2C 00 FF FF */	cmpwi r0, -1
/* 8098F014  40 80 00 7C */	bge lbl_8098F090
/* 8098F018  48 00 01 D4 */	b lbl_8098F1EC
lbl_8098F01C:
/* 8098F01C  2C 00 00 02 */	cmpwi r0, 2
/* 8098F020  40 80 01 CC */	bge lbl_8098F1EC
/* 8098F024  48 00 00 A8 */	b lbl_8098F0CC
lbl_8098F028:
/* 8098F028  A8 9E 0E 00 */	lha r4, 0xe00(r30)
/* 8098F02C  38 A0 00 00 */	li r5, 0
/* 8098F030  4B 7C 4C ED */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 8098F034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098F038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098F03C  80 03 09 44 */	lwz r0, 0x944(r3)
/* 8098F040  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 8098F044  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 8098F048  90 03 00 88 */	stw r0, 0x88(r3)
/* 8098F04C  38 00 00 00 */	li r0, 0
/* 8098F050  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 8098F054  90 1E 09 50 */	stw r0, 0x950(r30)
/* 8098F058  98 1E 0E 06 */	stb r0, 0xe06(r30)
/* 8098F05C  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 8098F060  28 00 00 00 */	cmplwi r0, 0
/* 8098F064  41 82 00 14 */	beq lbl_8098F078
/* 8098F068  7F C3 F3 78 */	mr r3, r30
/* 8098F06C  38 80 00 00 */	li r4, 0
/* 8098F070  4B FF F5 FD */	bl setLookMode__11daNpcChin_cFi
/* 8098F074  48 00 00 10 */	b lbl_8098F084
lbl_8098F078:
/* 8098F078  7F C3 F3 78 */	mr r3, r30
/* 8098F07C  38 80 00 03 */	li r4, 3
/* 8098F080  4B FF F5 ED */	bl setLookMode__11daNpcChin_cFi
lbl_8098F084:
/* 8098F084  38 00 00 01 */	li r0, 1
/* 8098F088  B0 1E 0E 04 */	sth r0, 0xe04(r30)
/* 8098F08C  48 00 01 60 */	b lbl_8098F1EC
lbl_8098F090:
/* 8098F090  38 80 00 0E */	li r4, 0xe
/* 8098F094  3C A0 80 99 */	lis r5, lit_4627@ha /* 0x809919A4@ha */
/* 8098F098  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)  /* 0x809919A4@l */
/* 8098F09C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098F0A0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8098F0A4  7D 89 03 A6 */	mtctr r12
/* 8098F0A8  4E 80 04 21 */	bctrl 
/* 8098F0AC  88 1E 09 EC */	lbz r0, 0x9ec(r30)
/* 8098F0B0  28 00 00 00 */	cmplwi r0, 0
/* 8098F0B4  40 82 01 38 */	bne lbl_8098F1EC
/* 8098F0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098F0BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098F0C0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8098F0C4  4B 6B 33 A5 */	bl reset__14dEvt_control_cFv
/* 8098F0C8  48 00 01 24 */	b lbl_8098F1EC
lbl_8098F0CC:
/* 8098F0CC  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 8098F0D0  28 00 00 00 */	cmplwi r0, 0
/* 8098F0D4  40 82 00 24 */	bne lbl_8098F0F8
/* 8098F0D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098F0DC  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098F0E0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8098F0E4  4B 68 B6 2D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8098F0E8  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 8098F0EC  7C 60 07 34 */	extsh r0, r3
/* 8098F0F0  7C 04 00 00 */	cmpw r4, r0
/* 8098F0F4  40 82 00 A4 */	bne lbl_8098F198
lbl_8098F0F8:
/* 8098F0F8  7F C3 F3 78 */	mr r3, r30
/* 8098F0FC  38 80 00 00 */	li r4, 0
/* 8098F100  38 A0 00 01 */	li r5, 1
/* 8098F104  38 C0 00 00 */	li r6, 0
/* 8098F108  4B 7C 4C 7D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 8098F10C  2C 03 00 00 */	cmpwi r3, 0
/* 8098F110  41 82 00 7C */	beq lbl_8098F18C
/* 8098F114  38 7E 0E 70 */	addi r3, r30, 0xe70
/* 8098F118  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8098F11C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8098F120  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8098F124  4B 7C 15 99 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 8098F128  38 00 00 00 */	li r0, 0
/* 8098F12C  90 01 00 08 */	stw r0, 8(r1)
/* 8098F130  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 8098F134  38 81 00 08 */	addi r4, r1, 8
/* 8098F138  4B 8B B3 F1 */	bl getEventId__10dMsgFlow_cFPi
/* 8098F13C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8098F140  28 00 00 12 */	cmplwi r0, 0x12
/* 8098F144  40 82 00 14 */	bne lbl_8098F158
/* 8098F148  80 01 00 08 */	lwz r0, 8(r1)
/* 8098F14C  98 1E 0E 07 */	stb r0, 0xe07(r30)
/* 8098F150  38 00 00 01 */	li r0, 1
/* 8098F154  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
lbl_8098F158:
/* 8098F158  3C 60 80 99 */	lis r3, lit_5231@ha /* 0x80992258@ha */
/* 8098F15C  38 83 22 58 */	addi r4, r3, lit_5231@l /* 0x80992258@l */
/* 8098F160  80 64 00 00 */	lwz r3, 0(r4)
/* 8098F164  80 04 00 04 */	lwz r0, 4(r4)
/* 8098F168  90 61 00 0C */	stw r3, 0xc(r1)
/* 8098F16C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8098F170  80 04 00 08 */	lwz r0, 8(r4)
/* 8098F174  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098F178  7F C3 F3 78 */	mr r3, r30
/* 8098F17C  38 81 00 0C */	addi r4, r1, 0xc
/* 8098F180  4B FF F4 45 */	bl setAction__11daNpcChin_cFM11daNpcChin_cFPCvPvPv_b
/* 8098F184  3B E0 00 01 */	li r31, 1
/* 8098F188  48 00 00 64 */	b lbl_8098F1EC
lbl_8098F18C:
/* 8098F18C  7F C3 F3 78 */	mr r3, r30
/* 8098F190  48 00 00 79 */	bl _talk_motion__11daNpcChin_cFv
/* 8098F194  48 00 00 58 */	b lbl_8098F1EC
lbl_8098F198:
/* 8098F198  7F C3 F3 78 */	mr r3, r30
/* 8098F19C  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 8098F1A0  4B 68 B5 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8098F1A4  7C 64 1B 78 */	mr r4, r3
/* 8098F1A8  7F C3 F3 78 */	mr r3, r30
/* 8098F1AC  38 A0 00 01 */	li r5, 1
/* 8098F1B0  38 C0 00 0F */	li r6, 0xf
/* 8098F1B4  4B FF F6 BD */	bl step__11daNpcChin_cFsii
/* 8098F1B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8098F1BC  41 82 00 30 */	beq lbl_8098F1EC
/* 8098F1C0  7F C3 F3 78 */	mr r3, r30
/* 8098F1C4  38 80 00 00 */	li r4, 0
/* 8098F1C8  3C A0 80 99 */	lis r5, lit_4627@ha /* 0x809919A4@ha */
/* 8098F1CC  C0 25 19 A4 */	lfs f1, lit_4627@l(r5)  /* 0x809919A4@l */
/* 8098F1D0  38 A0 00 00 */	li r5, 0
/* 8098F1D4  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 8098F1D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8098F1DC  7D 89 03 A6 */	mtctr r12
/* 8098F1E0  4E 80 04 21 */	bctrl 
/* 8098F1E4  38 00 00 00 */	li r0, 0
/* 8098F1E8  90 1E 09 6C */	stw r0, 0x96c(r30)
lbl_8098F1EC:
/* 8098F1EC  7F E3 FB 78 */	mr r3, r31
/* 8098F1F0  39 61 00 30 */	addi r11, r1, 0x30
/* 8098F1F4  4B 9D 30 35 */	bl _restgpr_29
/* 8098F1F8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8098F1FC  7C 08 03 A6 */	mtlr r0
/* 8098F200  38 21 00 30 */	addi r1, r1, 0x30
/* 8098F204  4E 80 00 20 */	blr 
