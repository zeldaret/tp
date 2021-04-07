lbl_80804870:
/* 80804870  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80804874  7C 08 02 A6 */	mflr r0
/* 80804878  90 01 00 44 */	stw r0, 0x44(r1)
/* 8080487C  39 61 00 40 */	addi r11, r1, 0x40
/* 80804880  4B B5 D9 5D */	bl _savegpr_29
/* 80804884  7C 7E 1B 78 */	mr r30, r3
/* 80804888  3C 60 80 80 */	lis r3, lit_3941@ha /* 0x80807C9C@ha */
/* 8080488C  3B E3 7C 9C */	addi r31, r3, lit_3941@l /* 0x80807C9C@l */
/* 80804890  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80804894  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80804898  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8080489C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 808048A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808048A4  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808048A8  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 808048AC  38 80 00 00 */	li r4, 0
/* 808048B0  90 81 00 08 */	stw r4, 8(r1)
/* 808048B4  38 00 FF FF */	li r0, -1
/* 808048B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 808048BC  90 81 00 10 */	stw r4, 0x10(r1)
/* 808048C0  90 81 00 14 */	stw r4, 0x14(r1)
/* 808048C4  90 81 00 18 */	stw r4, 0x18(r1)
/* 808048C8  38 80 00 00 */	li r4, 0
/* 808048CC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000826C@ha */
/* 808048D0  38 A5 82 6C */	addi r5, r5, 0x826C /* 0x0000826C@l */
/* 808048D4  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 808048D8  38 E0 00 00 */	li r7, 0
/* 808048DC  39 00 00 00 */	li r8, 0
/* 808048E0  39 21 00 24 */	addi r9, r1, 0x24
/* 808048E4  39 40 00 FF */	li r10, 0xff
/* 808048E8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 808048EC  4B 84 81 A5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 808048F0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 808048F4  38 80 00 00 */	li r4, 0
/* 808048F8  90 81 00 08 */	stw r4, 8(r1)
/* 808048FC  38 00 FF FF */	li r0, -1
/* 80804900  90 01 00 0C */	stw r0, 0xc(r1)
/* 80804904  90 81 00 10 */	stw r4, 0x10(r1)
/* 80804908  90 81 00 14 */	stw r4, 0x14(r1)
/* 8080490C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80804910  38 80 00 00 */	li r4, 0
/* 80804914  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000826D@ha */
/* 80804918  38 A5 82 6D */	addi r5, r5, 0x826D /* 0x0000826D@l */
/* 8080491C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80804920  38 E0 00 00 */	li r7, 0
/* 80804924  39 00 00 00 */	li r8, 0
/* 80804928  39 21 00 24 */	addi r9, r1, 0x24
/* 8080492C  39 40 00 FF */	li r10, 0xff
/* 80804930  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80804934  4B 84 81 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80804938  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8080493C  7C 03 07 74 */	extsb r3, r0
/* 80804940  4B 82 87 2D */	bl dComIfGp_getReverb__Fi
/* 80804944  7C 67 1B 78 */	mr r7, r3
/* 80804948  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060028@ha */
/* 8080494C  38 03 00 28 */	addi r0, r3, 0x0028 /* 0x00060028@l */
/* 80804950  90 01 00 20 */	stw r0, 0x20(r1)
/* 80804954  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80804958  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8080495C  80 63 00 00 */	lwz r3, 0(r3)
/* 80804960  38 81 00 20 */	addi r4, r1, 0x20
/* 80804964  38 BE 05 38 */	addi r5, r30, 0x538
/* 80804968  38 C0 00 00 */	li r6, 0
/* 8080496C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80804970  FC 40 08 90 */	fmr f2, f1
/* 80804974  C0 7F 00 3C */	lfs f3, 0x3c(r31)
/* 80804978  FC 80 18 90 */	fmr f4, f3
/* 8080497C  39 00 00 00 */	li r8, 0
/* 80804980  4B AA 70 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80804984  38 60 00 01 */	li r3, 1
/* 80804988  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8080498C  38 A0 FF FF */	li r5, -1
/* 80804990  38 C0 FF FF */	li r6, -1
/* 80804994  38 E0 00 00 */	li r7, 0
/* 80804998  39 00 00 00 */	li r8, 0
/* 8080499C  39 20 00 00 */	li r9, 0
/* 808049A0  39 40 00 00 */	li r10, 0
/* 808049A4  4B 81 74 71 */	bl fopAcM_createItemFromEnemyID__FUcPC4cXyziiPC5csXyzPC4cXyzPfPf
/* 808049A8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 808049AC  54 04 46 3E */	srwi r4, r0, 0x18
/* 808049B0  2C 04 00 FF */	cmpwi r4, 0xff
/* 808049B4  41 82 00 18 */	beq lbl_808049CC
/* 808049B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808049BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808049C0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 808049C4  7C 05 07 74 */	extsb r5, r0
/* 808049C8  4B 83 08 39 */	bl onSwitch__10dSv_info_cFii
lbl_808049CC:
/* 808049CC  39 61 00 40 */	addi r11, r1, 0x40
/* 808049D0  4B B5 D8 59 */	bl _restgpr_29
/* 808049D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 808049D8  7C 08 03 A6 */	mtlr r0
/* 808049DC  38 21 00 40 */	addi r1, r1, 0x40
/* 808049E0  4E 80 00 20 */	blr 
