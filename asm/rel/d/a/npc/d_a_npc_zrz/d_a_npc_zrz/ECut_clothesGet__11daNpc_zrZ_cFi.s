lbl_80B97EB4:
/* 80B97EB4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B97EB8  7C 08 02 A6 */	mflr r0
/* 80B97EBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B97EC0  39 61 00 50 */	addi r11, r1, 0x50
/* 80B97EC4  4B 7C A3 08 */	b _savegpr_25
/* 80B97EC8  7C 7C 1B 78 */	mr r28, r3
/* 80B97ECC  7C 99 23 78 */	mr r25, r4
/* 80B97ED0  3C 60 80 BA */	lis r3, m__17daNpc_zrZ_Param_c@ha
/* 80B97ED4  3B E3 AF EC */	addi r31, r3, m__17daNpc_zrZ_Param_c@l
/* 80B97ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B97EDC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80B97EE0  3B 5B 4F F8 */	addi r26, r27, 0x4ff8
/* 80B97EE4  3B C0 00 00 */	li r30, 0
/* 80B97EE8  3B A0 FF FF */	li r29, -1
/* 80B97EEC  7F 43 D3 78 */	mr r3, r26
/* 80B97EF0  3C A0 80 BA */	lis r5, stringBase0@ha
/* 80B97EF4  38 A5 B2 20 */	addi r5, r5, stringBase0@l
/* 80B97EF8  38 A5 00 5A */	addi r5, r5, 0x5a
/* 80B97EFC  38 C0 00 03 */	li r6, 3
/* 80B97F00  4B 4B 01 EC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B97F04  28 03 00 00 */	cmplwi r3, 0
/* 80B97F08  41 82 00 08 */	beq lbl_80B97F10
/* 80B97F0C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B97F10:
/* 80B97F10  7F 43 D3 78 */	mr r3, r26
/* 80B97F14  7F 24 CB 78 */	mr r4, r25
/* 80B97F18  4B 4A FE 34 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B97F1C  2C 03 00 00 */	cmpwi r3, 0
/* 80B97F20  41 82 02 64 */	beq lbl_80B98184
/* 80B97F24  2C 1D 00 32 */	cmpwi r29, 0x32
/* 80B97F28  41 82 01 54 */	beq lbl_80B9807C
/* 80B97F2C  40 80 00 50 */	bge lbl_80B97F7C
/* 80B97F30  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B97F34  41 82 00 F0 */	beq lbl_80B98024
/* 80B97F38  40 80 00 2C */	bge lbl_80B97F64
/* 80B97F3C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B97F40  41 82 00 AC */	beq lbl_80B97FEC
/* 80B97F44  40 80 02 40 */	bge lbl_80B98184
/* 80B97F48  2C 1D 00 01 */	cmpwi r29, 1
/* 80B97F4C  41 82 02 38 */	beq lbl_80B98184
/* 80B97F50  40 80 02 34 */	bge lbl_80B98184
/* 80B97F54  2C 1D 00 00 */	cmpwi r29, 0
/* 80B97F58  40 80 00 6C */	bge lbl_80B97FC4
/* 80B97F5C  48 00 02 28 */	b lbl_80B98184
/* 80B97F60  48 00 02 24 */	b lbl_80B98184
lbl_80B97F64:
/* 80B97F64  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80B97F68  41 82 01 08 */	beq lbl_80B98070
/* 80B97F6C  40 80 02 18 */	bge lbl_80B98184
/* 80B97F70  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80B97F74  41 82 00 C4 */	beq lbl_80B98038
/* 80B97F78  48 00 02 0C */	b lbl_80B98184
lbl_80B97F7C:
/* 80B97F7C  2C 1D 00 47 */	cmpwi r29, 0x47
/* 80B97F80  41 82 01 90 */	beq lbl_80B98110
/* 80B97F84  40 80 00 28 */	bge lbl_80B97FAC
/* 80B97F88  2C 1D 00 3D */	cmpwi r29, 0x3d
/* 80B97F8C  41 82 01 68 */	beq lbl_80B980F4
/* 80B97F90  40 80 00 10 */	bge lbl_80B97FA0
/* 80B97F94  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 80B97F98  40 80 01 04 */	bge lbl_80B9809C
/* 80B97F9C  48 00 01 E8 */	b lbl_80B98184
lbl_80B97FA0:
/* 80B97FA0  2C 1D 00 46 */	cmpwi r29, 0x46
/* 80B97FA4  40 80 01 5C */	bge lbl_80B98100
/* 80B97FA8  48 00 01 DC */	b lbl_80B98184
lbl_80B97FAC:
/* 80B97FAC  2C 1D 00 5A */	cmpwi r29, 0x5a
/* 80B97FB0  41 82 01 B0 */	beq lbl_80B98160
/* 80B97FB4  40 80 01 D0 */	bge lbl_80B98184
/* 80B97FB8  2C 1D 00 50 */	cmpwi r29, 0x50
/* 80B97FBC  41 82 01 6C */	beq lbl_80B98128
/* 80B97FC0  48 00 01 C4 */	b lbl_80B98184
lbl_80B97FC4:
/* 80B97FC4  38 60 00 0E */	li r3, 0xe
/* 80B97FC8  4B 5B D7 6C */	b daNpcF_offTmpBit__FUl
/* 80B97FCC  38 60 00 0F */	li r3, 0xf
/* 80B97FD0  4B 5B D7 64 */	b daNpcF_offTmpBit__FUl
/* 80B97FD4  7F 83 E3 78 */	mr r3, r28
/* 80B97FD8  38 80 00 00 */	li r4, 0
/* 80B97FDC  4B FF EE A1 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B97FE0  7F 83 E3 78 */	mr r3, r28
/* 80B97FE4  4B FF F1 7D */	bl lightReady__11daNpc_zrZ_cFv
/* 80B97FE8  48 00 01 9C */	b lbl_80B98184
lbl_80B97FEC:
/* 80B97FEC  7F 83 E3 78 */	mr r3, r28
/* 80B97FF0  38 80 00 09 */	li r4, 9
/* 80B97FF4  38 A0 00 00 */	li r5, 0
/* 80B97FF8  4B 5B BD 24 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B97FFC  80 9C 14 94 */	lwz r4, 0x1494(r28)
/* 80B98000  28 04 00 00 */	cmplwi r4, 0
/* 80B98004  41 82 01 80 */	beq lbl_80B98184
/* 80B98008  3B 5B 4E C8 */	addi r26, r27, 0x4ec8
/* 80B9800C  7F 43 D3 78 */	mr r3, r26
/* 80B98010  4B 4A B6 7C */	b setPtT__14dEvt_control_cFPv
/* 80B98014  7F 43 D3 78 */	mr r3, r26
/* 80B98018  80 9C 14 94 */	lwz r4, 0x1494(r28)
/* 80B9801C  4B 4A B6 40 */	b setPt2__14dEvt_control_cFPv
/* 80B98020  48 00 01 64 */	b lbl_80B98184
lbl_80B98024:
/* 80B98024  7F 83 E3 78 */	mr r3, r28
/* 80B98028  38 80 00 09 */	li r4, 9
/* 80B9802C  38 A0 00 00 */	li r5, 0
/* 80B98030  4B 5B BC EC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B98034  48 00 01 50 */	b lbl_80B98184
lbl_80B98038:
/* 80B98038  38 00 00 32 */	li r0, 0x32
/* 80B9803C  90 1C 09 60 */	stw r0, 0x960(r28)
/* 80B98040  80 7C 14 94 */	lwz r3, 0x1494(r28)
/* 80B98044  28 03 00 00 */	cmplwi r3, 0
/* 80B98048  41 82 00 14 */	beq lbl_80B9805C
/* 80B9804C  C0 1F 02 00 */	lfs f0, 0x200(r31)
/* 80B98050  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80B98054  80 7C 14 94 */	lwz r3, 0x1494(r28)
/* 80B98058  B0 03 0A E8 */	sth r0, 0xae8(r3)
lbl_80B9805C:
/* 80B9805C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80B98060  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 80B98064  38 00 00 01 */	li r0, 1
/* 80B98068  98 1C 14 90 */	stb r0, 0x1490(r28)
/* 80B9806C  48 00 01 18 */	b lbl_80B98184
lbl_80B98070:
/* 80B98070  38 00 00 00 */	li r0, 0
/* 80B98074  90 1C 09 60 */	stw r0, 0x960(r28)
/* 80B98078  48 00 01 0C */	b lbl_80B98184
lbl_80B9807C:
/* 80B9807C  80 9C 14 98 */	lwz r4, 0x1498(r28)
/* 80B98080  28 04 00 00 */	cmplwi r4, 0
/* 80B98084  41 82 00 0C */	beq lbl_80B98090
/* 80B98088  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80B9808C  4B 4A B6 00 */	b setPtT__14dEvt_control_cFPv
lbl_80B98090:
/* 80B98090  38 00 00 14 */	li r0, 0x14
/* 80B98094  90 1C 09 60 */	stw r0, 0x960(r28)
/* 80B98098  48 00 00 EC */	b lbl_80B98184
lbl_80B9809C:
/* 80B9809C  80 7C 14 98 */	lwz r3, 0x1498(r28)
/* 80B980A0  28 03 00 00 */	cmplwi r3, 0
/* 80B980A4  41 82 00 08 */	beq lbl_80B980AC
/* 80B980A8  4B 48 1B D4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B980AC:
/* 80B980AC  38 00 00 00 */	li r0, 0
/* 80B980B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B980B4  38 7C 09 F8 */	addi r3, r28, 0x9f8
/* 80B980B8  38 81 00 0C */	addi r4, r1, 0xc
/* 80B980BC  4B 6B 24 6C */	b getEventId__10dMsgFlow_cFPi
/* 80B980C0  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B980C4  28 00 00 01 */	cmplwi r0, 1
/* 80B980C8  40 82 00 BC */	bne lbl_80B98184
/* 80B980CC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B980D0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80B980D4  38 A0 00 00 */	li r5, 0
/* 80B980D8  38 C0 FF FF */	li r6, -1
/* 80B980DC  38 E0 FF FF */	li r7, -1
/* 80B980E0  39 00 00 00 */	li r8, 0
/* 80B980E4  39 20 00 00 */	li r9, 0
/* 80B980E8  4B 48 3B 00 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80B980EC  90 7C 14 30 */	stw r3, 0x1430(r28)
/* 80B980F0  48 00 00 94 */	b lbl_80B98184
lbl_80B980F4:
/* 80B980F4  38 00 00 1E */	li r0, 0x1e
/* 80B980F8  90 1C 09 60 */	stw r0, 0x960(r28)
/* 80B980FC  48 00 00 88 */	b lbl_80B98184
lbl_80B98100:
/* 80B98100  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 80B98104  7F 84 E3 78 */	mr r4, r28
/* 80B98108  4B 4A B5 84 */	b setPtT__14dEvt_control_cFPv
/* 80B9810C  48 00 00 78 */	b lbl_80B98184
lbl_80B98110:
/* 80B98110  38 00 00 1E */	li r0, 0x1e
/* 80B98114  90 1C 09 60 */	stw r0, 0x960(r28)
/* 80B98118  7F 83 E3 78 */	mr r3, r28
/* 80B9811C  38 80 00 00 */	li r4, 0
/* 80B98120  4B FF ED 5D */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B98124  48 00 00 60 */	b lbl_80B98184
lbl_80B98128:
/* 80B98128  7F 83 E3 78 */	mr r3, r28
/* 80B9812C  38 80 00 09 */	li r4, 9
/* 80B98130  38 A0 00 00 */	li r5, 0
/* 80B98134  4B 5B BB E8 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B98138  80 7C 14 94 */	lwz r3, 0x1494(r28)
/* 80B9813C  28 03 00 00 */	cmplwi r3, 0
/* 80B98140  41 82 00 44 */	beq lbl_80B98184
/* 80B98144  C0 03 04 A8 */	lfs f0, 0x4a8(r3)
/* 80B98148  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80B9814C  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 80B98150  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80B98154  C0 03 04 B0 */	lfs f0, 0x4b0(r3)
/* 80B98158  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80B9815C  48 00 00 28 */	b lbl_80B98184
lbl_80B98160:
/* 80B98160  38 00 00 78 */	li r0, 0x78
/* 80B98164  90 1C 09 60 */	stw r0, 0x960(r28)
/* 80B98168  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B9816C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B98170  80 63 00 00 */	lwz r3, 0(r3)
/* 80B98174  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B98178  38 80 00 5A */	li r4, 0x5a
/* 80B9817C  38 A0 00 00 */	li r5, 0
/* 80B98180  4B 71 72 88 */	b bgmStop__8Z2SeqMgrFUll
lbl_80B98184:
/* 80B98184  2C 1D 00 32 */	cmpwi r29, 0x32
/* 80B98188  41 82 01 C4 */	beq lbl_80B9834C
/* 80B9818C  40 80 00 4C */	bge lbl_80B981D8
/* 80B98190  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B98194  41 82 00 C0 */	beq lbl_80B98254
/* 80B98198  40 80 00 28 */	bge lbl_80B981C0
/* 80B9819C  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B981A0  41 82 00 88 */	beq lbl_80B98228
/* 80B981A4  40 80 00 10 */	bge lbl_80B981B4
/* 80B981A8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B981AC  41 82 00 74 */	beq lbl_80B98220
/* 80B981B0  48 00 02 E4 */	b lbl_80B98494
lbl_80B981B4:
/* 80B981B4  2C 1D 00 0C */	cmpwi r29, 0xc
/* 80B981B8  40 80 02 DC */	bge lbl_80B98494
/* 80B981BC  48 00 00 90 */	b lbl_80B9824C
lbl_80B981C0:
/* 80B981C0  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80B981C4  41 82 01 70 */	beq lbl_80B98334
/* 80B981C8  40 80 02 CC */	bge lbl_80B98494
/* 80B981CC  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80B981D0  41 82 01 04 */	beq lbl_80B982D4
/* 80B981D4  48 00 02 C0 */	b lbl_80B98494
lbl_80B981D8:
/* 80B981D8  2C 1D 00 47 */	cmpwi r29, 0x47
/* 80B981DC  41 82 02 00 */	beq lbl_80B983DC
/* 80B981E0  40 80 00 28 */	bge lbl_80B98208
/* 80B981E4  2C 1D 00 3D */	cmpwi r29, 0x3d
/* 80B981E8  41 82 01 84 */	beq lbl_80B9836C
/* 80B981EC  40 80 00 10 */	bge lbl_80B981FC
/* 80B981F0  2C 1D 00 3C */	cmpwi r29, 0x3c
/* 80B981F4  40 80 01 70 */	bge lbl_80B98364
/* 80B981F8  48 00 02 9C */	b lbl_80B98494
lbl_80B981FC:
/* 80B981FC  2C 1D 00 46 */	cmpwi r29, 0x46
/* 80B98200  40 80 01 D4 */	bge lbl_80B983D4
/* 80B98204  48 00 02 90 */	b lbl_80B98494
lbl_80B98208:
/* 80B98208  2C 1D 00 5A */	cmpwi r29, 0x5a
/* 80B9820C  41 82 02 0C */	beq lbl_80B98418
/* 80B98210  40 80 02 84 */	bge lbl_80B98494
/* 80B98214  2C 1D 00 50 */	cmpwi r29, 0x50
/* 80B98218  41 82 01 DC */	beq lbl_80B983F4
/* 80B9821C  48 00 02 78 */	b lbl_80B98494
lbl_80B98220:
/* 80B98220  3B C0 00 01 */	li r30, 1
/* 80B98224  48 00 02 74 */	b lbl_80B98498
lbl_80B98228:
/* 80B98228  7F 83 E3 78 */	mr r3, r28
/* 80B9822C  38 80 00 00 */	li r4, 0
/* 80B98230  38 A0 00 01 */	li r5, 1
/* 80B98234  38 C0 00 00 */	li r6, 0
/* 80B98238  4B 5B BB 4C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B9823C  2C 03 00 00 */	cmpwi r3, 0
/* 80B98240  41 82 02 58 */	beq lbl_80B98498
/* 80B98244  3B C0 00 01 */	li r30, 1
/* 80B98248  48 00 02 50 */	b lbl_80B98498
lbl_80B9824C:
/* 80B9824C  3B C0 00 01 */	li r30, 1
/* 80B98250  48 00 02 48 */	b lbl_80B98498
lbl_80B98254:
/* 80B98254  7F 83 E3 78 */	mr r3, r28
/* 80B98258  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B9825C  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80B98260  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80B98264  4B 48 24 AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B98268  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B9826C  7C 60 07 34 */	extsh r0, r3
/* 80B98270  7C 04 00 00 */	cmpw r4, r0
/* 80B98274  41 82 00 3C */	beq lbl_80B982B0
/* 80B98278  7F 83 E3 78 */	mr r3, r28
/* 80B9827C  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80B98280  4B 48 24 90 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B98284  7C 64 1B 78 */	mr r4, r3
/* 80B98288  7F 83 E3 78 */	mr r3, r28
/* 80B9828C  38 A0 FF FF */	li r5, -1
/* 80B98290  38 C0 FF FF */	li r6, -1
/* 80B98294  38 E0 00 0F */	li r7, 0xf
/* 80B98298  4B 5B BE 0C */	b step__8daNpcF_cFsiii
/* 80B9829C  2C 03 00 00 */	cmpwi r3, 0
/* 80B982A0  41 82 01 F8 */	beq lbl_80B98498
/* 80B982A4  38 00 00 00 */	li r0, 0
/* 80B982A8  90 1C 09 6C */	stw r0, 0x96c(r28)
/* 80B982AC  48 00 01 EC */	b lbl_80B98498
lbl_80B982B0:
/* 80B982B0  7F 83 E3 78 */	mr r3, r28
/* 80B982B4  38 80 00 00 */	li r4, 0
/* 80B982B8  38 A0 00 01 */	li r5, 1
/* 80B982BC  38 C0 00 00 */	li r6, 0
/* 80B982C0  4B 5B BA C4 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B982C4  2C 03 00 00 */	cmpwi r3, 0
/* 80B982C8  41 82 01 D0 */	beq lbl_80B98498
/* 80B982CC  3B C0 00 01 */	li r30, 1
/* 80B982D0  48 00 01 C8 */	b lbl_80B98498
lbl_80B982D4:
/* 80B982D4  38 7C 09 60 */	addi r3, r28, 0x960
/* 80B982D8  48 00 2B 6D */	bl func_80B9AE44
/* 80B982DC  2C 03 00 00 */	cmpwi r3, 0
/* 80B982E0  40 82 00 0C */	bne lbl_80B982EC
/* 80B982E4  3B C0 00 01 */	li r30, 1
/* 80B982E8  48 00 01 B0 */	b lbl_80B98498
lbl_80B982EC:
/* 80B982EC  C0 7F 02 04 */	lfs f3, 0x204(r31)
/* 80B982F0  C0 5F 02 08 */	lfs f2, 0x208(r31)
/* 80B982F4  80 1C 09 60 */	lwz r0, 0x960(r28)
/* 80B982F8  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80B982FC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B98300  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B98304  3C 00 43 30 */	lis r0, 0x4330
/* 80B98308  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B9830C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B98310  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B98314  EC 22 00 32 */	fmuls f1, f2, f0
/* 80B98318  C0 1F 01 8C */	lfs f0, 0x18c(r31)
/* 80B9831C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B98320  EC 03 00 2A */	fadds f0, f3, f0
/* 80B98324  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 80B98328  C0 3C 14 88 */	lfs f1, 0x1488(r28)
/* 80B9832C  4B 61 07 18 */	b dKy_set_allcol_ratio__Ff
/* 80B98330  48 00 01 68 */	b lbl_80B98498
lbl_80B98334:
/* 80B98334  38 7C 09 60 */	addi r3, r28, 0x960
/* 80B98338  48 00 2B 0D */	bl func_80B9AE44
/* 80B9833C  2C 03 00 00 */	cmpwi r3, 0
/* 80B98340  40 82 01 58 */	bne lbl_80B98498
/* 80B98344  3B C0 00 01 */	li r30, 1
/* 80B98348  48 00 01 50 */	b lbl_80B98498
lbl_80B9834C:
/* 80B9834C  38 7C 09 60 */	addi r3, r28, 0x960
/* 80B98350  48 00 2A F5 */	bl func_80B9AE44
/* 80B98354  2C 03 00 00 */	cmpwi r3, 0
/* 80B98358  40 82 01 40 */	bne lbl_80B98498
/* 80B9835C  3B C0 00 01 */	li r30, 1
/* 80B98360  48 00 01 38 */	b lbl_80B98498
lbl_80B98364:
/* 80B98364  3B C0 00 01 */	li r30, 1
/* 80B98368  48 00 01 30 */	b lbl_80B98498
lbl_80B9836C:
/* 80B9836C  C0 7F 02 04 */	lfs f3, 0x204(r31)
/* 80B98370  C0 5F 02 08 */	lfs f2, 0x208(r31)
/* 80B98374  80 1C 09 60 */	lwz r0, 0x960(r28)
/* 80B98378  20 00 00 1E */	subfic r0, r0, 0x1e
/* 80B9837C  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80B98380  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B98384  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B98388  3C 00 43 30 */	lis r0, 0x4330
/* 80B9838C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B98390  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B98394  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B98398  EC 22 00 32 */	fmuls f1, f2, f0
/* 80B9839C  C0 1F 01 E8 */	lfs f0, 0x1e8(r31)
/* 80B983A0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B983A4  EC 03 00 2A */	fadds f0, f3, f0
/* 80B983A8  D0 1C 14 88 */	stfs f0, 0x1488(r28)
/* 80B983AC  38 7C 09 60 */	addi r3, r28, 0x960
/* 80B983B0  48 00 2A 95 */	bl func_80B9AE44
/* 80B983B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B983B8  40 82 00 14 */	bne lbl_80B983CC
/* 80B983BC  38 00 00 00 */	li r0, 0
/* 80B983C0  98 1C 14 90 */	stb r0, 0x1490(r28)
/* 80B983C4  38 7C 14 68 */	addi r3, r28, 0x1468
/* 80B983C8  4B 60 F6 38 */	b dKy_efplight_cut__FP15LIGHT_INFLUENCE
lbl_80B983CC:
/* 80B983CC  3B C0 00 01 */	li r30, 1
/* 80B983D0  48 00 00 C8 */	b lbl_80B98498
lbl_80B983D4:
/* 80B983D4  3B C0 00 01 */	li r30, 1
/* 80B983D8  48 00 00 C0 */	b lbl_80B98498
lbl_80B983DC:
/* 80B983DC  38 7C 09 60 */	addi r3, r28, 0x960
/* 80B983E0  48 00 2A 65 */	bl func_80B9AE44
/* 80B983E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B983E8  40 82 00 B0 */	bne lbl_80B98498
/* 80B983EC  3B C0 00 01 */	li r30, 1
/* 80B983F0  48 00 00 A8 */	b lbl_80B98498
lbl_80B983F4:
/* 80B983F4  7F 83 E3 78 */	mr r3, r28
/* 80B983F8  38 80 00 00 */	li r4, 0
/* 80B983FC  38 A0 00 01 */	li r5, 1
/* 80B98400  38 C0 00 00 */	li r6, 0
/* 80B98404  4B 5B B9 80 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B98408  2C 03 00 00 */	cmpwi r3, 0
/* 80B9840C  41 82 00 8C */	beq lbl_80B98498
/* 80B98410  3B C0 00 01 */	li r30, 1
/* 80B98414  48 00 00 84 */	b lbl_80B98498
lbl_80B98418:
/* 80B98418  38 7C 09 60 */	addi r3, r28, 0x960
/* 80B9841C  48 00 2A 29 */	bl func_80B9AE44
/* 80B98420  2C 03 00 00 */	cmpwi r3, 0
/* 80B98424  40 82 00 14 */	bne lbl_80B98438
/* 80B98428  3B C0 00 01 */	li r30, 1
/* 80B9842C  38 00 00 00 */	li r0, 0
/* 80B98430  B0 1C 04 6A */	sth r0, 0x46a(r28)
/* 80B98434  48 00 00 64 */	b lbl_80B98498
lbl_80B98438:
/* 80B98438  80 1C 09 60 */	lwz r0, 0x960(r28)
/* 80B9843C  2C 00 00 00 */	cmpwi r0, 0
/* 80B98440  40 81 00 48 */	ble lbl_80B98488
/* 80B98444  C0 5F 01 E0 */	lfs f2, 0x1e0(r31)
/* 80B98448  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80B9844C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B98450  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B98454  3C 00 43 30 */	lis r0, 0x4330
/* 80B98458  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B9845C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80B98460  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B98464  C0 1F 02 0C */	lfs f0, 0x20c(r31)
/* 80B98468  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B9846C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B98470  FC 00 00 1E */	fctiwz f0, f0
/* 80B98474  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80B98478  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80B9847C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B98480  B0 1C 04 6A */	sth r0, 0x46a(r28)
/* 80B98484  48 00 00 14 */	b lbl_80B98498
lbl_80B98488:
/* 80B98488  38 00 00 00 */	li r0, 0
/* 80B9848C  B0 1C 04 6A */	sth r0, 0x46a(r28)
/* 80B98490  48 00 00 08 */	b lbl_80B98498
lbl_80B98494:
/* 80B98494  3B C0 00 01 */	li r30, 1
lbl_80B98498:
/* 80B98498  88 1C 14 90 */	lbz r0, 0x1490(r28)
/* 80B9849C  28 00 00 00 */	cmplwi r0, 0
/* 80B984A0  41 82 00 2C */	beq lbl_80B984CC
/* 80B984A4  38 7C 14 68 */	addi r3, r28, 0x1468
/* 80B984A8  4B 60 F4 D4 */	b dKy_efplight_set__FP15LIGHT_INFLUENCE
/* 80B984AC  7F 83 E3 78 */	mr r3, r28
/* 80B984B0  7F A4 EB 78 */	mr r4, r29
/* 80B984B4  4B FF ED 89 */	bl lightPowerCalc__11daNpc_zrZ_cFi
/* 80B984B8  7F 83 E3 78 */	mr r3, r28
/* 80B984BC  4B FF EE 31 */	bl lightColorProc__11daNpc_zrZ_cFv
/* 80B984C0  80 7C 14 8C */	lwz r3, 0x148c(r28)
/* 80B984C4  38 03 00 01 */	addi r0, r3, 1
/* 80B984C8  90 1C 14 8C */	stw r0, 0x148c(r28)
lbl_80B984CC:
/* 80B984CC  C0 3C 14 88 */	lfs f1, 0x1488(r28)
/* 80B984D0  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80B984D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B984D8  40 80 00 4C */	bge lbl_80B98524
/* 80B984DC  4B 61 05 68 */	b dKy_set_allcol_ratio__Ff
/* 80B984E0  C0 1F 02 10 */	lfs f0, 0x210(r31)
/* 80B984E4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B984E8  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 80B984EC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B984F0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80B984F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B984F8  80 1F 01 FC */	lwz r0, 0x1fc(r31)
/* 80B984FC  90 01 00 08 */	stw r0, 8(r1)
/* 80B98500  38 61 00 10 */	addi r3, r1, 0x10
/* 80B98504  38 81 00 08 */	addi r4, r1, 8
/* 80B98508  C0 5F 02 18 */	lfs f2, 0x218(r31)
/* 80B9850C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80B98510  C0 1C 14 88 */	lfs f0, 0x1488(r28)
/* 80B98514  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B98518  EC 22 00 32 */	fmuls f1, f2, f0
/* 80B9851C  38 A0 00 00 */	li r5, 0
/* 80B98520  4B 61 18 40 */	b dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_80B98524:
/* 80B98524  7F C3 F3 78 */	mr r3, r30
/* 80B98528  39 61 00 50 */	addi r11, r1, 0x50
/* 80B9852C  4B 7C 9C EC */	b _restgpr_25
/* 80B98530  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B98534  7C 08 03 A6 */	mtlr r0
/* 80B98538  38 21 00 50 */	addi r1, r1, 0x50
/* 80B9853C  4E 80 00 20 */	blr 
