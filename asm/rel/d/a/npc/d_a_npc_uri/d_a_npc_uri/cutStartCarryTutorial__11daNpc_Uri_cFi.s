lbl_80B29198:
/* 80B29198  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B2919C  7C 08 02 A6 */	mflr r0
/* 80B291A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B291A4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B291A8  4B 83 90 2C */	b _savegpr_27
/* 80B291AC  7C 7D 1B 78 */	mr r29, r3
/* 80B291B0  7C 9B 23 78 */	mr r27, r4
/* 80B291B4  3B E0 00 00 */	li r31, 0
/* 80B291B8  3B C0 FF FF */	li r30, -1
/* 80B291BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B291C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B291C4  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80B291C8  7F 83 E3 78 */	mr r3, r28
/* 80B291CC  3C A0 80 B3 */	lis r5, struct_80B2CF74+0x0@ha
/* 80B291D0  38 A5 CF 74 */	addi r5, r5, struct_80B2CF74+0x0@l
/* 80B291D4  38 A5 00 C4 */	addi r5, r5, 0xc4
/* 80B291D8  38 C0 00 03 */	li r6, 3
/* 80B291DC  4B 51 EF 10 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B291E0  28 03 00 00 */	cmplwi r3, 0
/* 80B291E4  41 82 00 08 */	beq lbl_80B291EC
/* 80B291E8  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80B291EC:
/* 80B291EC  7F 83 E3 78 */	mr r3, r28
/* 80B291F0  7F 64 DB 78 */	mr r4, r27
/* 80B291F4  4B 51 EB 58 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B291F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B291FC  41 82 01 44 */	beq lbl_80B29340
/* 80B29200  2C 1E 00 01 */	cmpwi r30, 1
/* 80B29204  41 82 00 18 */	beq lbl_80B2921C
/* 80B29208  40 80 00 08 */	bge lbl_80B29210
/* 80B2920C  48 00 01 34 */	b lbl_80B29340
lbl_80B29210:
/* 80B29210  2C 1E 00 03 */	cmpwi r30, 3
/* 80B29214  40 80 01 2C */	bge lbl_80B29340
/* 80B29218  48 00 01 18 */	b lbl_80B29330
lbl_80B2921C:
/* 80B2921C  38 60 00 17 */	li r3, 0x17
/* 80B29220  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B29224  7C 04 07 74 */	extsb r4, r0
/* 80B29228  38 A1 00 10 */	addi r5, r1, 0x10
/* 80B2922C  38 C1 00 08 */	addi r6, r1, 8
/* 80B29230  4B 62 32 D0 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80B29234  2C 03 00 00 */	cmpwi r3, 0
/* 80B29238  41 82 00 38 */	beq lbl_80B29270
/* 80B2923C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B29240  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B29244  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B29248  38 81 00 10 */	addi r4, r1, 0x10
/* 80B2924C  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 80B29250  38 C0 00 00 */	li r6, 0
/* 80B29254  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B29258  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B2925C  7D 89 03 A6 */	mtctr r12
/* 80B29260  4E 80 04 21 */	bctrl 
/* 80B29264  7F 83 E3 78 */	mr r3, r28
/* 80B29268  38 81 00 10 */	addi r4, r1, 0x10
/* 80B2926C  4B 51 F1 58 */	b setGoal__16dEvent_manager_cFP4cXyz
lbl_80B29270:
/* 80B29270  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B29274  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B29278  41 82 00 28 */	beq lbl_80B292A0
/* 80B2927C  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B29280  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B29284  4B 61 C6 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B29288  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B2928C  38 00 00 11 */	li r0, 0x11
/* 80B29290  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B29294  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B29298  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B2929C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B292A0:
/* 80B292A0  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B292A4  2C 00 00 08 */	cmpwi r0, 8
/* 80B292A8  41 82 00 28 */	beq lbl_80B292D0
/* 80B292AC  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B292B0  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B292B4  4B 61 C5 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B292B8  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B292BC  38 00 00 08 */	li r0, 8
/* 80B292C0  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B292C4  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B292C8  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B292CC  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B292D0:
/* 80B292D0  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B292D4  2C 00 00 01 */	cmpwi r0, 1
/* 80B292D8  41 82 00 2C */	beq lbl_80B29304
/* 80B292DC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B292E0  4B 61 C4 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B292E4  38 00 00 00 */	li r0, 0
/* 80B292E8  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B292EC  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B292F0  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B292F4  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B292F8  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B292FC  38 00 00 01 */	li r0, 1
/* 80B29300  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B29304:
/* 80B29304  38 00 00 00 */	li r0, 0
/* 80B29308  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B2930C  7F A3 EB 78 */	mr r3, r29
/* 80B29310  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B29314  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B29318  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B2931C  4B 4F 13 F4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B29320  7C 64 1B 78 */	mr r4, r3
/* 80B29324  7F A3 EB 78 */	mr r3, r29
/* 80B29328  4B 62 16 F0 */	b setAngle__8daNpcT_cFs
/* 80B2932C  48 00 00 14 */	b lbl_80B29340
lbl_80B29330:
/* 80B29330  7F A3 EB 78 */	mr r3, r29
/* 80B29334  80 9D 0A 7C */	lwz r4, 0xa7c(r29)
/* 80B29338  38 A0 00 00 */	li r5, 0
/* 80B2933C  4B 62 28 B4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B29340:
/* 80B29340  2C 1E 00 01 */	cmpwi r30, 1
/* 80B29344  41 82 00 28 */	beq lbl_80B2936C
/* 80B29348  40 80 00 10 */	bge lbl_80B29358
/* 80B2934C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B29350  40 80 00 14 */	bge lbl_80B29364
/* 80B29354  48 00 00 50 */	b lbl_80B293A4
lbl_80B29358:
/* 80B29358  2C 1E 00 03 */	cmpwi r30, 3
/* 80B2935C  40 80 00 48 */	bge lbl_80B293A4
/* 80B29360  48 00 00 14 */	b lbl_80B29374
lbl_80B29364:
/* 80B29364  3B E0 00 01 */	li r31, 1
/* 80B29368  48 00 00 3C */	b lbl_80B293A4
lbl_80B2936C:
/* 80B2936C  3B E0 00 01 */	li r31, 1
/* 80B29370  48 00 00 34 */	b lbl_80B293A4
lbl_80B29374:
/* 80B29374  7F A3 EB 78 */	mr r3, r29
/* 80B29378  38 80 00 00 */	li r4, 0
/* 80B2937C  38 A0 00 00 */	li r5, 0
/* 80B29380  38 C0 00 00 */	li r6, 0
/* 80B29384  38 E0 00 00 */	li r7, 0
/* 80B29388  4B 62 28 F0 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B2938C  2C 03 00 00 */	cmpwi r3, 0
/* 80B29390  41 82 00 14 */	beq lbl_80B293A4
/* 80B29394  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 80B29398  28 00 00 01 */	cmplwi r0, 1
/* 80B2939C  40 82 00 08 */	bne lbl_80B293A4
/* 80B293A0  3B E0 00 01 */	li r31, 1
lbl_80B293A4:
/* 80B293A4  7F E3 FB 78 */	mr r3, r31
/* 80B293A8  39 61 00 40 */	addi r11, r1, 0x40
/* 80B293AC  4B 83 8E 74 */	b _restgpr_27
/* 80B293B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B293B4  7C 08 03 A6 */	mtlr r0
/* 80B293B8  38 21 00 40 */	addi r1, r1, 0x40
/* 80B293BC  4E 80 00 20 */	blr 
