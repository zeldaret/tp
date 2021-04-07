lbl_80B63EE0:
/* 80B63EE0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B63EE4  7C 08 02 A6 */	mflr r0
/* 80B63EE8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B63EEC  39 61 00 70 */	addi r11, r1, 0x70
/* 80B63EF0  4B 7F E2 DD */	bl _savegpr_25
/* 80B63EF4  7C 7A 1B 78 */	mr r26, r3
/* 80B63EF8  7C 9B 23 78 */	mr r27, r4
/* 80B63EFC  3B A0 00 00 */	li r29, 0
/* 80B63F00  3B 80 FF FF */	li r28, -1
/* 80B63F04  3B 20 00 00 */	li r25, 0
/* 80B63F08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B63F0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B63F10  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80B63F14  3B FE 40 C0 */	addi r31, r30, 0x40c0
/* 80B63F18  7F E3 FB 78 */	mr r3, r31
/* 80B63F1C  3C A0 80 B6 */	lis r5, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B63F20  38 A5 7E 68 */	addi r5, r5, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B63F24  38 A5 00 B4 */	addi r5, r5, 0xb4
/* 80B63F28  38 C0 00 03 */	li r6, 3
/* 80B63F2C  4B 4E 41 C1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B63F30  28 03 00 00 */	cmplwi r3, 0
/* 80B63F34  41 82 00 08 */	beq lbl_80B63F3C
/* 80B63F38  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B63F3C:
/* 80B63F3C  7F E3 FB 78 */	mr r3, r31
/* 80B63F40  7F 64 DB 78 */	mr r4, r27
/* 80B63F44  3C A0 80 B6 */	lis r5, d_a_npc_ykw__stringBase0@ha /* 0x80B67E68@ha */
/* 80B63F48  38 A5 7E 68 */	addi r5, r5, d_a_npc_ykw__stringBase0@l /* 0x80B67E68@l */
/* 80B63F4C  38 A5 00 B8 */	addi r5, r5, 0xb8
/* 80B63F50  38 C0 00 03 */	li r6, 3
/* 80B63F54  4B 4E 41 99 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B63F58  28 03 00 00 */	cmplwi r3, 0
/* 80B63F5C  41 82 00 08 */	beq lbl_80B63F64
/* 80B63F60  83 23 00 00 */	lwz r25, 0(r3)
lbl_80B63F64:
/* 80B63F64  7F E3 FB 78 */	mr r3, r31
/* 80B63F68  7F 64 DB 78 */	mr r4, r27
/* 80B63F6C  4B 4E 3D E1 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B63F70  2C 03 00 00 */	cmpwi r3, 0
/* 80B63F74  41 82 03 3C */	beq lbl_80B642B0
/* 80B63F78  2C 1C 00 03 */	cmpwi r28, 3
/* 80B63F7C  41 82 03 34 */	beq lbl_80B642B0
/* 80B63F80  40 80 00 14 */	bge lbl_80B63F94
/* 80B63F84  2C 1C 00 01 */	cmpwi r28, 1
/* 80B63F88  41 82 00 1C */	beq lbl_80B63FA4
/* 80B63F8C  40 80 00 FC */	bge lbl_80B64088
/* 80B63F90  48 00 03 20 */	b lbl_80B642B0
lbl_80B63F94:
/* 80B63F94  2C 1C 00 05 */	cmpwi r28, 5
/* 80B63F98  41 82 02 DC */	beq lbl_80B64274
/* 80B63F9C  40 80 03 14 */	bge lbl_80B642B0
/* 80B63FA0  48 00 00 F0 */	b lbl_80B64090
lbl_80B63FA4:
/* 80B63FA4  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80B63FA8  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B63FAC  41 82 00 28 */	beq lbl_80B63FD4
/* 80B63FB0  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80B63FB4  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80B63FB8  4B 5E 18 E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B63FBC  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80B63FC0  38 00 00 0D */	li r0, 0xd
/* 80B63FC4  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80B63FC8  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B63FCC  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B63FD0  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80B63FD4:
/* 80B63FD4  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80B63FD8  2C 00 00 00 */	cmpwi r0, 0
/* 80B63FDC  41 82 00 28 */	beq lbl_80B64004
/* 80B63FE0  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80B63FE4  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80B63FE8  4B 5E 18 B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B63FEC  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80B63FF0  38 00 00 00 */	li r0, 0
/* 80B63FF4  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80B63FF8  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B63FFC  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B64000  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80B64004:
/* 80B64004  7F 43 D3 78 */	mr r3, r26
/* 80B64008  38 80 00 05 */	li r4, 5
/* 80B6400C  4B FF BA 69 */	bl getOtherYkwP__11daNpc_ykW_cFi
/* 80B64010  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B64014  D0 1A 04 A8 */	stfs f0, 0x4a8(r26)
/* 80B64018  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B6401C  D0 1A 04 AC */	stfs f0, 0x4ac(r26)
/* 80B64020  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B64024  D0 1A 04 B0 */	stfs f0, 0x4b0(r26)
/* 80B64028  38 00 00 00 */	li r0, 0
/* 80B6402C  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80B64030  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80B64034  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80B64038  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80B6403C  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80B64040  B0 1A 04 B6 */	sth r0, 0x4b6(r26)
/* 80B64044  C0 1A 04 A8 */	lfs f0, 0x4a8(r26)
/* 80B64048  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B6404C  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80B64050  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B64054  C0 1A 04 B0 */	lfs f0, 0x4b0(r26)
/* 80B64058  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B6405C  7F 43 D3 78 */	mr r3, r26
/* 80B64060  38 81 00 30 */	addi r4, r1, 0x30
/* 80B64064  4B 5E 68 A5 */	bl setPos__8daNpcT_cF4cXyz
/* 80B64068  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B6406C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B64070  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80B64074  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80B64078  7F 43 D3 78 */	mr r3, r26
/* 80B6407C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B64080  4B 5E 69 1D */	bl setAngle__8daNpcT_cF5csXyz
/* 80B64084  48 00 02 2C */	b lbl_80B642B0
lbl_80B64088:
/* 80B64088  93 3A 0D C4 */	stw r25, 0xdc4(r26)
/* 80B6408C  48 00 02 24 */	b lbl_80B642B0
lbl_80B64090:
/* 80B64090  80 1A 0B 58 */	lwz r0, 0xb58(r26)
/* 80B64094  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B64098  41 82 00 28 */	beq lbl_80B640C0
/* 80B6409C  83 3A 0B 5C */	lwz r25, 0xb5c(r26)
/* 80B640A0  38 7A 0B 50 */	addi r3, r26, 0xb50
/* 80B640A4  4B 5E 17 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B640A8  93 3A 0B 5C */	stw r25, 0xb5c(r26)
/* 80B640AC  38 00 00 0D */	li r0, 0xd
/* 80B640B0  90 1A 0B 58 */	stw r0, 0xb58(r26)
/* 80B640B4  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B640B8  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B640BC  D0 1A 0B 68 */	stfs f0, 0xb68(r26)
lbl_80B640C0:
/* 80B640C0  80 1A 0B 7C */	lwz r0, 0xb7c(r26)
/* 80B640C4  2C 00 00 00 */	cmpwi r0, 0
/* 80B640C8  41 82 00 28 */	beq lbl_80B640F0
/* 80B640CC  83 3A 0B 80 */	lwz r25, 0xb80(r26)
/* 80B640D0  38 7A 0B 74 */	addi r3, r26, 0xb74
/* 80B640D4  4B 5E 17 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B640D8  93 3A 0B 80 */	stw r25, 0xb80(r26)
/* 80B640DC  38 00 00 00 */	li r0, 0
/* 80B640E0  90 1A 0B 7C */	stw r0, 0xb7c(r26)
/* 80B640E4  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B640E8  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B640EC  D0 1A 0B 8C */	stfs f0, 0xb8c(r26)
lbl_80B640F0:
/* 80B640F0  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B640F4  2C 00 00 00 */	cmpwi r0, 0
/* 80B640F8  41 82 00 28 */	beq lbl_80B64120
/* 80B640FC  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B64100  4B 5E 15 FD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B64104  38 00 00 00 */	li r0, 0
/* 80B64108  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B6410C  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B64110  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B64114  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B64118  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B6411C  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B64120:
/* 80B64120  38 00 00 00 */	li r0, 0
/* 80B64124  B0 1A 0C D4 */	sth r0, 0xcd4(r26)
/* 80B64128  B0 1A 0C D6 */	sth r0, 0xcd6(r26)
/* 80B6412C  38 00 00 01 */	li r0, 1
/* 80B64130  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B64134  38 60 00 55 */	li r3, 0x55
/* 80B64138  4B 5E 89 F5 */	bl daNpcT_offTmpBit__FUl
/* 80B6413C  38 00 00 00 */	li r0, 0
/* 80B64140  98 1A 10 6A */	stb r0, 0x106a(r26)
/* 80B64144  90 1A 10 44 */	stw r0, 0x1044(r26)
/* 80B64148  90 1A 10 4C */	stw r0, 0x104c(r26)
/* 80B6414C  B0 1A 0F C8 */	sth r0, 0xfc8(r26)
/* 80B64150  7F 43 D3 78 */	mr r3, r26
/* 80B64154  38 80 00 05 */	li r4, 5
/* 80B64158  4B FF B9 1D */	bl getOtherYkwP__11daNpc_ykW_cFi
/* 80B6415C  7C 79 1B 78 */	mr r25, r3
/* 80B64160  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B64164  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B64168  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B6416C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B64170  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B64174  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B64178  7F 43 D3 78 */	mr r3, r26
/* 80B6417C  38 81 00 24 */	addi r4, r1, 0x24
/* 80B64180  4B 5E 67 89 */	bl setPos__8daNpcT_cF4cXyz
/* 80B64184  38 00 00 00 */	li r0, 0
/* 80B64188  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 80B6418C  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80B64190  B0 01 00 20 */	sth r0, 0x20(r1)
/* 80B64194  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 80B64198  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 80B6419C  B0 1A 04 B6 */	sth r0, 0x4b6(r26)
/* 80B641A0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B641A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B641A8  A0 01 00 20 */	lhz r0, 0x20(r1)
/* 80B641AC  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80B641B0  7F 43 D3 78 */	mr r3, r26
/* 80B641B4  38 81 00 0C */	addi r4, r1, 0xc
/* 80B641B8  4B 5E 67 E5 */	bl setAngle__8daNpcT_cF5csXyz
/* 80B641BC  80 7A 10 14 */	lwz r3, 0x1014(r26)
/* 80B641C0  3C 03 00 01 */	addis r0, r3, 1
/* 80B641C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B641C8  41 82 00 28 */	beq lbl_80B641F0
/* 80B641CC  7F C3 F3 78 */	mr r3, r30
/* 80B641D0  4B 4C 8A 0D */	bl getTimerPtr__14dComIfG_play_cFv
/* 80B641D4  7C 7E 1B 78 */	mr r30, r3
/* 80B641D8  80 7A 10 14 */	lwz r3, 0x1014(r26)
/* 80B641DC  4B 4B D1 7D */	bl fpcEx_SearchByID__FUi
/* 80B641E0  7C 03 F0 40 */	cmplw r3, r30
/* 80B641E4  40 82 00 0C */	bne lbl_80B641F0
/* 80B641E8  38 60 00 05 */	li r3, 5
/* 80B641EC  4B 4C B5 B1 */	bl dComIfG_TimerDeleteRequest__Fi
lbl_80B641F0:
/* 80B641F0  38 60 00 0C */	li r3, 0xc
/* 80B641F4  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 80B641F8  7C 04 07 74 */	extsb r4, r0
/* 80B641FC  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80B64200  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80B64204  4B 5E 82 FD */	bl daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80B64208  2C 03 00 00 */	cmpwi r3, 0
/* 80B6420C  41 82 00 38 */	beq lbl_80B64244
/* 80B64210  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B64214  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B64218  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B6421C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B64220  A8 A1 00 1E */	lha r5, 0x1e(r1)
/* 80B64224  38 C0 00 00 */	li r6, 0
/* 80B64228  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B6422C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B64230  7D 89 03 A6 */	mtctr r12
/* 80B64234  4E 80 04 21 */	bctrl 
/* 80B64238  7F E3 FB 78 */	mr r3, r31
/* 80B6423C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B64240  4B 4E 41 85 */	bl setGoal__16dEvent_manager_cFP4cXyz
lbl_80B64244:
/* 80B64244  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B64248  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B6424C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B64250  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B64254  4B 74 B6 31 */	bl subBgmStop__8Z2SeqMgrFv
/* 80B64258  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B6425C  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B64260  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80B64264  D0 1A 04 F8 */	stfs f0, 0x4f8(r26)
/* 80B64268  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80B6426C  D0 1A 05 00 */	stfs f0, 0x500(r26)
/* 80B64270  48 00 00 40 */	b lbl_80B642B0
lbl_80B64274:
/* 80B64274  38 60 00 56 */	li r3, 0x56
/* 80B64278  4B 5E 88 75 */	bl daNpcT_onTmpBit__FUl
/* 80B6427C  88 1A 10 6B */	lbz r0, 0x106b(r26)
/* 80B64280  28 00 00 00 */	cmplwi r0, 0
/* 80B64284  41 82 00 0C */	beq lbl_80B64290
/* 80B64288  38 60 00 56 */	li r3, 0x56
/* 80B6428C  4B 5E 88 A1 */	bl daNpcT_offTmpBit__FUl
lbl_80B64290:
/* 80B64290  38 60 00 0B */	li r3, 0xb
/* 80B64294  4B 5E 88 99 */	bl daNpcT_offTmpBit__FUl
/* 80B64298  38 00 01 FF */	li r0, 0x1ff
/* 80B6429C  90 1A 0A 7C */	stw r0, 0xa7c(r26)
/* 80B642A0  7F 43 D3 78 */	mr r3, r26
/* 80B642A4  80 9A 0A 7C */	lwz r4, 0xa7c(r26)
/* 80B642A8  38 A0 00 00 */	li r5, 0
/* 80B642AC  4B 5E 79 45 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B642B0:
/* 80B642B0  2C 1C 00 03 */	cmpwi r28, 3
/* 80B642B4  41 82 00 A8 */	beq lbl_80B6435C
/* 80B642B8  40 80 00 1C */	bge lbl_80B642D4
/* 80B642BC  2C 1C 00 01 */	cmpwi r28, 1
/* 80B642C0  41 82 00 2C */	beq lbl_80B642EC
/* 80B642C4  40 80 00 6C */	bge lbl_80B64330
/* 80B642C8  2C 1C 00 00 */	cmpwi r28, 0
/* 80B642CC  40 80 00 18 */	bge lbl_80B642E4
/* 80B642D0  48 00 02 20 */	b lbl_80B644F0
lbl_80B642D4:
/* 80B642D4  2C 1C 00 05 */	cmpwi r28, 5
/* 80B642D8  41 82 00 F8 */	beq lbl_80B643D0
/* 80B642DC  40 80 02 14 */	bge lbl_80B644F0
/* 80B642E0  48 00 00 98 */	b lbl_80B64378
lbl_80B642E4:
/* 80B642E4  3B A0 00 01 */	li r29, 1
/* 80B642E8  48 00 02 08 */	b lbl_80B644F0
lbl_80B642EC:
/* 80B642EC  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B642F0  2C 00 00 01 */	cmpwi r0, 1
/* 80B642F4  41 82 00 2C */	beq lbl_80B64320
/* 80B642F8  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B642FC  4B 5E 14 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B64300  38 00 00 00 */	li r0, 0
/* 80B64304  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B64308  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B6430C  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B64310  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B64314  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B64318  38 00 00 01 */	li r0, 1
/* 80B6431C  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B64320:
/* 80B64320  38 00 00 00 */	li r0, 0
/* 80B64324  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B64328  3B A0 00 01 */	li r29, 1
/* 80B6432C  48 00 01 C4 */	b lbl_80B644F0
lbl_80B64330:
/* 80B64330  7F 43 D3 78 */	mr r3, r26
/* 80B64334  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 80B64338  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B6433C  7D 89 03 A6 */	mtctr r12
/* 80B64340  4E 80 04 21 */	bctrl 
/* 80B64344  38 7A 0D C4 */	addi r3, r26, 0xdc4
/* 80B64348  48 00 35 89 */	bl func_80B678D0
/* 80B6434C  2C 03 00 00 */	cmpwi r3, 0
/* 80B64350  40 82 01 A0 */	bne lbl_80B644F0
/* 80B64354  3B A0 00 01 */	li r29, 1
/* 80B64358  48 00 01 98 */	b lbl_80B644F0
lbl_80B6435C:
/* 80B6435C  7F 43 D3 78 */	mr r3, r26
/* 80B64360  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 80B64364  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B64368  7D 89 03 A6 */	mtctr r12
/* 80B6436C  4E 80 04 21 */	bctrl 
/* 80B64370  3B A0 00 01 */	li r29, 1
/* 80B64374  48 00 01 7C */	b lbl_80B644F0
lbl_80B64378:
/* 80B64378  7F E3 FB 78 */	mr r3, r31
/* 80B6437C  7F 64 DB 78 */	mr r4, r27
/* 80B64380  4B 4E 39 CD */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B64384  2C 03 00 00 */	cmpwi r3, 0
/* 80B64388  40 82 00 40 */	bne lbl_80B643C8
/* 80B6438C  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B64390  2C 00 00 01 */	cmpwi r0, 1
/* 80B64394  41 82 00 2C */	beq lbl_80B643C0
/* 80B64398  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B6439C  4B 5E 13 61 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B643A0  38 00 00 00 */	li r0, 0
/* 80B643A4  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B643A8  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B643AC  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B643B0  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B643B4  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B643B8  38 00 00 01 */	li r0, 1
/* 80B643BC  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B643C0:
/* 80B643C0  38 00 00 00 */	li r0, 0
/* 80B643C4  98 1A 0C FF */	stb r0, 0xcff(r26)
lbl_80B643C8:
/* 80B643C8  3B A0 00 01 */	li r29, 1
/* 80B643CC  48 00 01 24 */	b lbl_80B644F0
lbl_80B643D0:
/* 80B643D0  80 1A 0C E0 */	lwz r0, 0xce0(r26)
/* 80B643D4  2C 00 00 01 */	cmpwi r0, 1
/* 80B643D8  41 82 00 2C */	beq lbl_80B64404
/* 80B643DC  38 7A 0B A8 */	addi r3, r26, 0xba8
/* 80B643E0  4B 5E 13 1D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B643E4  38 00 00 00 */	li r0, 0
/* 80B643E8  90 1A 0B C8 */	stw r0, 0xbc8(r26)
/* 80B643EC  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B643F0  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B643F4  D0 1A 0C F4 */	stfs f0, 0xcf4(r26)
/* 80B643F8  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B643FC  38 00 00 01 */	li r0, 1
/* 80B64400  90 1A 0C E0 */	stw r0, 0xce0(r26)
lbl_80B64404:
/* 80B64404  38 00 00 00 */	li r0, 0
/* 80B64408  98 1A 0C FF */	stb r0, 0xcff(r26)
/* 80B6440C  7F 43 D3 78 */	mr r3, r26
/* 80B64410  38 80 00 00 */	li r4, 0
/* 80B64414  38 A0 00 00 */	li r5, 0
/* 80B64418  38 C0 00 00 */	li r6, 0
/* 80B6441C  38 E0 00 00 */	li r7, 0
/* 80B64420  4B 5E 78 59 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B64424  2C 03 00 00 */	cmpwi r3, 0
/* 80B64428  41 82 00 C8 */	beq lbl_80B644F0
/* 80B6442C  38 7A 09 74 */	addi r3, r26, 0x974
/* 80B64430  38 81 00 08 */	addi r4, r1, 8
/* 80B64434  4B 6E 60 F5 */	bl getEventId__10dMsgFlow_cFPi
/* 80B64438  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80B6443C  38 00 00 00 */	li r0, 0
/* 80B64440  98 1A 10 6C */	stb r0, 0x106c(r26)
/* 80B64444  2C 03 00 0D */	cmpwi r3, 0xd
/* 80B64448  41 82 00 70 */	beq lbl_80B644B8
/* 80B6444C  40 80 00 80 */	bge lbl_80B644CC
/* 80B64450  2C 03 00 01 */	cmpwi r3, 1
/* 80B64454  41 82 00 08 */	beq lbl_80B6445C
/* 80B64458  48 00 00 74 */	b lbl_80B644CC
lbl_80B6445C:
/* 80B6445C  80 7A 0D 90 */	lwz r3, 0xd90(r26)
/* 80B64460  3C 03 00 01 */	addis r0, r3, 1
/* 80B64464  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B64468  40 82 00 28 */	bne lbl_80B64490
/* 80B6446C  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80B64470  80 81 00 08 */	lwz r4, 8(r1)
/* 80B64474  38 A0 00 00 */	li r5, 0
/* 80B64478  38 C0 FF FF */	li r6, -1
/* 80B6447C  38 E0 FF FF */	li r7, -1
/* 80B64480  39 00 00 00 */	li r8, 0
/* 80B64484  39 20 00 00 */	li r9, 0
/* 80B64488  4B 4B 77 61 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80B6448C  90 7A 0D 90 */	stw r3, 0xd90(r26)
lbl_80B64490:
/* 80B64490  80 7A 0D 90 */	lwz r3, 0xd90(r26)
/* 80B64494  4B 4B CF 09 */	bl fpcEx_IsExist__FUi
/* 80B64498  2C 03 00 00 */	cmpwi r3, 0
/* 80B6449C  41 82 00 54 */	beq lbl_80B644F0
/* 80B644A0  38 00 00 01 */	li r0, 1
/* 80B644A4  98 1A 10 6C */	stb r0, 0x106c(r26)
/* 80B644A8  B0 1A 0E 30 */	sth r0, 0xe30(r26)
/* 80B644AC  7F 43 D3 78 */	mr r3, r26
/* 80B644B0  4B 5E 5D 75 */	bl evtChange__8daNpcT_cFv
/* 80B644B4  48 00 00 3C */	b lbl_80B644F0
lbl_80B644B8:
/* 80B644B8  38 00 00 08 */	li r0, 8
/* 80B644BC  B0 1A 0E 30 */	sth r0, 0xe30(r26)
/* 80B644C0  7F 43 D3 78 */	mr r3, r26
/* 80B644C4  4B 5E 5D 61 */	bl evtChange__8daNpcT_cFv
/* 80B644C8  48 00 00 28 */	b lbl_80B644F0
lbl_80B644CC:
/* 80B644CC  88 1A 09 9A */	lbz r0, 0x99a(r26)
/* 80B644D0  28 00 00 01 */	cmplwi r0, 1
/* 80B644D4  40 82 00 1C */	bne lbl_80B644F0
/* 80B644D8  38 7A 0B 98 */	addi r3, r26, 0xb98
/* 80B644DC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B644E0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B644E4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B644E8  4B 5E 11 F9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B644EC  3B A0 00 01 */	li r29, 1
lbl_80B644F0:
/* 80B644F0  7F A3 EB 78 */	mr r3, r29
/* 80B644F4  39 61 00 70 */	addi r11, r1, 0x70
/* 80B644F8  4B 7F DD 21 */	bl _restgpr_25
/* 80B644FC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B64500  7C 08 03 A6 */	mtlr r0
/* 80B64504  38 21 00 70 */	addi r1, r1, 0x70
/* 80B64508  4E 80 00 20 */	blr 
