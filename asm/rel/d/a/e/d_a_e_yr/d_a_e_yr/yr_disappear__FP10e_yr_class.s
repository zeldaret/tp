lbl_808225C0:
/* 808225C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 808225C4  7C 08 02 A6 */	mflr r0
/* 808225C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 808225CC  39 61 00 60 */	addi r11, r1, 0x60
/* 808225D0  4B B3 FC 0C */	b _savegpr_29
/* 808225D4  7C 7E 1B 78 */	mr r30, r3
/* 808225D8  3C 60 80 83 */	lis r3, lit_3902@ha
/* 808225DC  3B E3 88 50 */	addi r31, r3, lit_3902@l
/* 808225E0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 808225E4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 808225E8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 808225EC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 808225F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808225F4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 808225F8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 808225FC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80822600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80822604  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80822608  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 8082260C  38 80 00 00 */	li r4, 0
/* 80822610  90 81 00 08 */	stw r4, 8(r1)
/* 80822614  38 00 FF FF */	li r0, -1
/* 80822618  90 01 00 0C */	stw r0, 0xc(r1)
/* 8082261C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80822620  90 81 00 14 */	stw r4, 0x14(r1)
/* 80822624  90 81 00 18 */	stw r4, 0x18(r1)
/* 80822628  38 80 00 00 */	li r4, 0
/* 8082262C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000826C@ha */
/* 80822630  38 A5 82 6C */	addi r5, r5, 0x826C /* 0x0000826C@l */
/* 80822634  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80822638  38 E0 00 00 */	li r7, 0
/* 8082263C  39 00 00 00 */	li r8, 0
/* 80822640  39 21 00 24 */	addi r9, r1, 0x24
/* 80822644  39 40 00 FF */	li r10, 0xff
/* 80822648  4B 82 A4 48 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8082264C  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80822650  2C 00 00 06 */	cmpwi r0, 6
/* 80822654  40 82 00 3C */	bne lbl_80822690
/* 80822658  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8082265C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80822660  80 63 00 00 */	lwz r3, 0(r3)
/* 80822664  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80822668  4B 7E 9D 74 */	b mDoMtx_YrotS__FPA4_fs
/* 8082266C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80822670  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80822674  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80822678  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8082267C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 80822680  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80822684  38 61 00 3C */	addi r3, r1, 0x3c
/* 80822688  38 81 00 30 */	addi r4, r1, 0x30
/* 8082268C  4B A4 E8 60 */	b MtxPosition__FP4cXyzP4cXyz
lbl_80822690:
/* 80822690  38 61 00 30 */	addi r3, r1, 0x30
/* 80822694  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80822698  7C 65 1B 78 */	mr r5, r3
/* 8082269C  4B B2 49 F4 */	b PSVECAdd
/* 808226A0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 808226A4  38 80 00 00 */	li r4, 0
/* 808226A8  90 81 00 08 */	stw r4, 8(r1)
/* 808226AC  38 00 FF FF */	li r0, -1
/* 808226B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 808226B4  90 81 00 10 */	stw r4, 0x10(r1)
/* 808226B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 808226BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 808226C0  38 80 00 00 */	li r4, 0
/* 808226C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000826D@ha */
/* 808226C8  38 A5 82 6D */	addi r5, r5, 0x826D /* 0x0000826D@l */
/* 808226CC  38 C1 00 30 */	addi r6, r1, 0x30
/* 808226D0  38 E0 00 00 */	li r7, 0
/* 808226D4  39 00 00 00 */	li r8, 0
/* 808226D8  39 21 00 24 */	addi r9, r1, 0x24
/* 808226DC  39 40 00 FF */	li r10, 0xff
/* 808226E0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808226E4  4B 82 A3 AC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808226E8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 808226EC  7C 03 07 74 */	extsb r3, r0
/* 808226F0  4B 80 A9 7C */	b dComIfGp_getReverb__Fi
/* 808226F4  7C 67 1B 78 */	mr r7, r3
/* 808226F8  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060028@ha */
/* 808226FC  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00060028@l */
/* 80822700  90 01 00 20 */	stw r0, 0x20(r1)
/* 80822704  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80822708  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8082270C  80 63 00 00 */	lwz r3, 0(r3)
/* 80822710  38 81 00 20 */	addi r4, r1, 0x20
/* 80822714  38 BE 05 38 */	addi r5, r30, 0x538
/* 80822718  38 C0 00 00 */	li r6, 0
/* 8082271C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80822720  FC 40 08 90 */	fmr f2, f1
/* 80822724  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80822728  FC 80 18 90 */	fmr f4, f3
/* 8082272C  39 00 00 00 */	li r8, 0
/* 80822730  4B A8 92 54 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80822734  38 60 00 02 */	li r3, 2
/* 80822738  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8082273C  38 A0 FF FF */	li r5, -1
/* 80822740  38 C0 FF FF */	li r6, -1
/* 80822744  38 E0 00 00 */	li r7, 0
/* 80822748  39 00 00 00 */	li r8, 0
/* 8082274C  39 20 00 00 */	li r9, 0
/* 80822750  39 40 00 00 */	li r10, 0
/* 80822754  4B 7F 96 C0 */	b fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf
/* 80822758  88 9E 06 68 */	lbz r4, 0x668(r30)
/* 8082275C  28 04 00 FF */	cmplwi r4, 0xff
/* 80822760  41 82 00 18 */	beq lbl_80822778
/* 80822764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80822768  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8082276C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80822770  7C 05 07 74 */	extsb r5, r0
/* 80822774  4B 81 2A 8C */	b onSwitch__10dSv_info_cFii
lbl_80822778:
/* 80822778  39 61 00 60 */	addi r11, r1, 0x60
/* 8082277C  4B B3 FA AC */	b _restgpr_29
/* 80822780  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80822784  7C 08 03 A6 */	mtlr r0
/* 80822788  38 21 00 60 */	addi r1, r1, 0x60
/* 8082278C  4E 80 00 20 */	blr 
