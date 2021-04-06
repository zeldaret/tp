lbl_80B00204:
/* 80B00204  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B00208  7C 08 02 A6 */	mflr r0
/* 80B0020C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B00210  39 61 00 30 */	addi r11, r1, 0x30
/* 80B00214  4B 86 1F C5 */	bl _savegpr_28
/* 80B00218  7C 7C 1B 78 */	mr r28, r3
/* 80B0021C  7C 9D 23 78 */	mr r29, r4
/* 80B00220  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B00224  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B00228  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B0022C  7F C3 F3 78 */	mr r3, r30
/* 80B00230  4B 54 7D 2D */	bl getMyNowCutName__16dEvent_manager_cFi
/* 80B00234  7C 7F 1B 78 */	mr r31, r3
/* 80B00238  7F C3 F3 78 */	mr r3, r30
/* 80B0023C  7F A4 EB 78 */	mr r4, r29
/* 80B00240  4B 54 7B 0D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B00244  2C 03 00 00 */	cmpwi r3, 0
/* 80B00248  41 82 00 C0 */	beq lbl_80B00308
/* 80B0024C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B00250  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 80B00254  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 80B00258  7C 04 00 00 */	cmpw r4, r0
/* 80B0025C  41 82 00 8C */	beq lbl_80B002E8
/* 80B00260  40 80 00 A8 */	bge lbl_80B00308
/* 80B00264  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B00268  7C 04 00 00 */	cmpw r4, r0
/* 80B0026C  41 82 00 10 */	beq lbl_80B0027C
/* 80B00270  40 80 00 34 */	bge lbl_80B002A4
/* 80B00274  48 00 00 94 */	b lbl_80B00308
/* 80B00278  48 00 00 90 */	b lbl_80B00308
lbl_80B0027C:
/* 80B0027C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B00280  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B00284  80 63 00 00 */	lwz r3, 0(r3)
/* 80B00288  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B0028C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000013@ha */
/* 80B00290  38 84 00 13 */	addi r4, r4, 0x0013 /* 0x01000013@l */
/* 80B00294  38 A0 00 00 */	li r5, 0
/* 80B00298  38 C0 00 00 */	li r6, 0
/* 80B0029C  4B 7A ED 75 */	bl bgmStart__8Z2SeqMgrFUlUll
/* 80B002A0  48 00 00 68 */	b lbl_80B00308
lbl_80B002A4:
/* 80B002A4  80 1C 04 A4 */	lwz r0, 0x4a4(r28)
/* 80B002A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B002AC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80B002B0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80B002B4  38 81 00 0C */	addi r4, r1, 0xc
/* 80B002B8  4B 51 95 41 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80B002BC  3C 80 80 B0 */	lis r4, lit_4248@ha /* 0x80B00DF0@ha */
/* 80B002C0  C0 24 0D F0 */	lfs f1, lit_4248@l(r4)  /* 0x80B00DF0@l */
/* 80B002C4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80B002C8  3C 80 80 B0 */	lis r4, lit_5423@ha /* 0x80B00F9C@ha */
/* 80B002CC  C0 04 0F 9C */	lfs f0, lit_5423@l(r4)  /* 0x80B00F9C@l */
/* 80B002D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B002D4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80B002D8  38 81 00 10 */	addi r4, r1, 0x10
/* 80B002DC  38 BC 04 E4 */	addi r5, r28, 0x4e4
/* 80B002E0  4B E9 DA 49 */	bl setPosAngle__12daNpcCoach_cFR4cXyzR5csXyz
/* 80B002E4  48 00 00 24 */	b lbl_80B00308
lbl_80B002E8:
/* 80B002E8  38 00 00 59 */	li r0, 0x59
/* 80B002EC  B0 01 00 08 */	sth r0, 8(r1)
/* 80B002F0  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80B002F4  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80B002F8  38 81 00 08 */	addi r4, r1, 8
/* 80B002FC  4B 52 19 65 */	bl fpcLyIt_AllJudge__FPFPvPv_PvPv
/* 80B00300  38 00 00 00 */	li r0, 0
/* 80B00304  98 03 07 82 */	stb r0, 0x782(r3)
lbl_80B00308:
/* 80B00308  80 9F 00 00 */	lwz r4, 0(r31)
/* 80B0030C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303034@ha */
/* 80B00310  38 03 30 34 */	addi r0, r3, 0x3034 /* 0x30303034@l */
/* 80B00314  7C 04 00 00 */	cmpw r4, r0
/* 80B00318  41 82 00 20 */	beq lbl_80B00338
/* 80B0031C  40 80 00 3C */	bge lbl_80B00358
/* 80B00320  38 03 30 31 */	addi r0, r3, 0x3031
/* 80B00324  7C 04 00 00 */	cmpw r4, r0
/* 80B00328  40 80 00 08 */	bge lbl_80B00330
/* 80B0032C  48 00 00 2C */	b lbl_80B00358
lbl_80B00330:
/* 80B00330  38 60 00 01 */	li r3, 1
/* 80B00334  48 00 00 28 */	b lbl_80B0035C
lbl_80B00338:
/* 80B00338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0033C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B00340  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B00344  80 03 05 78 */	lwz r0, 0x578(r3)
/* 80B00348  64 00 00 04 */	oris r0, r0, 4
/* 80B0034C  90 03 05 78 */	stw r0, 0x578(r3)
/* 80B00350  38 60 00 01 */	li r3, 1
/* 80B00354  48 00 00 08 */	b lbl_80B0035C
lbl_80B00358:
/* 80B00358  38 60 00 00 */	li r3, 0
lbl_80B0035C:
/* 80B0035C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B00360  4B 86 1E C5 */	bl _restgpr_28
/* 80B00364  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B00368  7C 08 03 A6 */	mtlr r0
/* 80B0036C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B00370  4E 80 00 20 */	blr 
