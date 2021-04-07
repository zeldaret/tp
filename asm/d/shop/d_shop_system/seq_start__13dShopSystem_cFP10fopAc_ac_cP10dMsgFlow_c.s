lbl_801990B8:
/* 801990B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801990BC  7C 08 02 A6 */	mflr r0
/* 801990C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 801990C4  39 61 00 40 */	addi r11, r1, 0x40
/* 801990C8  48 1C 91 11 */	bl _savegpr_28
/* 801990CC  7C 7D 1B 78 */	mr r29, r3
/* 801990D0  7C 9E 23 78 */	mr r30, r4
/* 801990D4  7C BF 2B 78 */	mr r31, r5
/* 801990D8  88 03 0F 79 */	lbz r0, 0xf79(r3)
/* 801990DC  28 00 00 00 */	cmplwi r0, 0
/* 801990E0  41 82 00 24 */	beq lbl_80199104
/* 801990E4  38 00 00 00 */	li r0, 0
/* 801990E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801990EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801990F0  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 801990F4  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 801990F8  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 801990FC  98 03 5E 50 */	stb r0, 0x5e50(r3)
/* 80199100  98 1D 0F 79 */	stb r0, 0xf79(r29)
lbl_80199104:
/* 80199104  38 61 00 0C */	addi r3, r1, 0xc
/* 80199108  38 9D 0E 48 */	addi r4, r29, 0xe48
/* 8019910C  38 A0 00 00 */	li r5, 0
/* 80199110  4B FF D8 91 */	bl getCurrentPos__15dShopItemCtrl_cFi
/* 80199114  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80199118  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8019911C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80199120  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80199124  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80199128  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8019912C  38 61 00 24 */	addi r3, r1, 0x24
/* 80199130  38 81 00 18 */	addi r4, r1, 0x18
/* 80199134  4B E7 C1 DD */	bl mDoLib_project__FP3VecP3Vec
/* 80199138  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8019913C  3C 60 80 43 */	lis r3, g_cursorHIO@ha /* 0x80430110@ha */
/* 80199140  38 63 01 10 */	addi r3, r3, g_cursorHIO@l /* 0x80430110@l */
/* 80199144  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80199148  EC 21 00 2A */	fadds f1, f1, f0
/* 8019914C  80 7D 0E 44 */	lwz r3, 0xe44(r29)
/* 80199150  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80199154  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80199158  D0 23 00 5C */	stfs f1, 0x5c(r3)
/* 8019915C  88 1D 0F 75 */	lbz r0, 0xf75(r29)
/* 80199160  28 00 00 01 */	cmplwi r0, 1
/* 80199164  40 82 00 30 */	bne lbl_80199194
/* 80199168  7F A3 EB 78 */	mr r3, r29
/* 8019916C  7F E4 FB 78 */	mr r4, r31
/* 80199170  80 BD 0F 5C */	lwz r5, 0xf5c(r29)
/* 80199174  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80199178  81 8C 00 C8 */	lwz r12, 0xc8(r12)
/* 8019917C  7D 89 03 A6 */	mtctr r12
/* 80199180  4E 80 04 21 */	bctrl 
/* 80199184  2C 03 00 00 */	cmpwi r3, 0
/* 80199188  40 82 00 0C */	bne lbl_80199194
/* 8019918C  38 60 00 00 */	li r3, 0
/* 80199190  48 00 01 C4 */	b lbl_80199354
lbl_80199194:
/* 80199194  48 09 F1 61 */	bl isMsgSendControl__12dMsgObject_cFv
/* 80199198  2C 03 00 00 */	cmpwi r3, 0
/* 8019919C  41 82 01 14 */	beq lbl_801992B0
/* 801991A0  38 80 00 00 */	li r4, 0
/* 801991A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801991A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801991AC  98 83 5E 3C */	stb r4, 0x5e3c(r3)
/* 801991B0  98 83 5E 57 */	stb r4, 0x5e57(r3)
/* 801991B4  38 00 00 2A */	li r0, 0x2a
/* 801991B8  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 801991BC  98 83 5E 50 */	stb r4, 0x5e50(r3)
/* 801991C0  7F A3 EB 78 */	mr r3, r29
/* 801991C4  38 80 00 00 */	li r4, 0
/* 801991C8  7F E5 FB 78 */	mr r5, r31
/* 801991CC  4B FF E4 A5 */	bl checkController__13dShopSystem_cFUcP10dMsgFlow_c
/* 801991D0  7C 7C 1B 79 */	or. r28, r3, r3
/* 801991D4  41 82 01 7C */	beq lbl_80199350
/* 801991D8  48 09 F1 49 */	bl onMsgSend__12dMsgObject_cFv
/* 801991DC  7F A3 EB 78 */	mr r3, r29
/* 801991E0  7F 84 E3 78 */	mr r4, r28
/* 801991E4  38 A0 00 00 */	li r5, 0
/* 801991E8  4B FF F2 5D */	bl moveCursor__13dShopSystem_cFiUc
/* 801991EC  7C 66 1B 78 */	mr r6, r3
/* 801991F0  88 1D 0F 75 */	lbz r0, 0xf75(r29)
/* 801991F4  28 00 00 01 */	cmplwi r0, 1
/* 801991F8  40 82 00 74 */	bne lbl_8019926C
/* 801991FC  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80199200  28 00 00 00 */	cmplwi r0, 0
/* 80199204  41 82 00 2C */	beq lbl_80199230
/* 80199208  90 DD 0F 5C */	stw r6, 0xf5c(r29)
/* 8019920C  C0 02 A1 44 */	lfs f0, lit_5084(r2)
/* 80199210  D0 1D 0F 38 */	stfs f0, 0xf38(r29)
/* 80199214  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80199218  D0 1D 0F 40 */	stfs f0, 0xf40(r29)
/* 8019921C  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
/* 80199220  7F A3 EB 78 */	mr r3, r29
/* 80199224  38 80 00 04 */	li r4, 4
/* 80199228  48 00 11 1D */	bl setSeq__13dShopSystem_cFUc
/* 8019922C  48 00 01 24 */	b lbl_80199350
lbl_80199230:
/* 80199230  7F E3 FB 78 */	mr r3, r31
/* 80199234  7F C4 F3 78 */	mr r4, r30
/* 80199238  38 A0 00 00 */	li r5, 0
/* 8019923C  48 0B 10 9D */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80199240  2C 03 00 00 */	cmpwi r3, 0
/* 80199244  41 82 01 0C */	beq lbl_80199350
/* 80199248  C0 02 A1 44 */	lfs f0, lit_5084(r2)
/* 8019924C  D0 1D 0F 38 */	stfs f0, 0xf38(r29)
/* 80199250  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80199254  D0 1D 0F 40 */	stfs f0, 0xf40(r29)
/* 80199258  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
/* 8019925C  7F A3 EB 78 */	mr r3, r29
/* 80199260  38 80 00 0A */	li r4, 0xa
/* 80199264  48 00 10 E1 */	bl setSeq__13dShopSystem_cFUc
/* 80199268  48 00 00 E8 */	b lbl_80199350
lbl_8019926C:
/* 8019926C  7F E3 FB 78 */	mr r3, r31
/* 80199270  7F C4 F3 78 */	mr r4, r30
/* 80199274  38 A0 00 00 */	li r5, 0
/* 80199278  48 0B 10 61 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8019927C  2C 03 00 00 */	cmpwi r3, 0
/* 80199280  41 82 00 D0 */	beq lbl_80199350
/* 80199284  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80199288  28 00 00 00 */	cmplwi r0, 0
/* 8019928C  40 82 00 14 */	bne lbl_801992A0
/* 80199290  7F A3 EB 78 */	mr r3, r29
/* 80199294  38 80 00 0A */	li r4, 0xa
/* 80199298  48 00 10 AD */	bl setSeq__13dShopSystem_cFUc
/* 8019929C  48 00 00 B4 */	b lbl_80199350
lbl_801992A0:
/* 801992A0  7F A3 EB 78 */	mr r3, r29
/* 801992A4  38 80 00 04 */	li r4, 4
/* 801992A8  48 00 10 9D */	bl setSeq__13dShopSystem_cFUc
/* 801992AC  48 00 00 A4 */	b lbl_80199350
lbl_801992B0:
/* 801992B0  7F E3 FB 78 */	mr r3, r31
/* 801992B4  7F C4 F3 78 */	mr r4, r30
/* 801992B8  38 A0 00 00 */	li r5, 0
/* 801992BC  38 C0 00 00 */	li r6, 0
/* 801992C0  48 0B 10 19 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 801992C4  2C 03 00 00 */	cmpwi r3, 0
/* 801992C8  41 82 00 88 */	beq lbl_80199350
/* 801992CC  38 7D 09 74 */	addi r3, r29, 0x974
/* 801992D0  38 81 00 08 */	addi r4, r1, 8
/* 801992D4  48 0B 12 55 */	bl getEventId__10dMsgFlow_cFPi
/* 801992D8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801992DC  28 00 00 01 */	cmplwi r0, 1
/* 801992E0  40 82 00 68 */	bne lbl_80199348
/* 801992E4  80 7D 0D 90 */	lwz r3, 0xd90(r29)
/* 801992E8  3C 03 00 01 */	addis r0, r3, 1
/* 801992EC  28 00 FF FF */	cmplwi r0, 0xffff
/* 801992F0  40 82 00 28 */	bne lbl_80199318
/* 801992F4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 801992F8  80 81 00 08 */	lwz r4, 8(r1)
/* 801992FC  38 A0 00 00 */	li r5, 0
/* 80199300  38 C0 FF FF */	li r6, -1
/* 80199304  38 E0 FF FF */	li r7, -1
/* 80199308  39 00 00 00 */	li r8, 0
/* 8019930C  39 20 00 00 */	li r9, 0
/* 80199310  4B E8 28 D9 */	bl fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80199314  90 7D 0D 90 */	stw r3, 0xd90(r29)
lbl_80199318:
/* 80199318  80 7D 0D 90 */	lwz r3, 0xd90(r29)
/* 8019931C  4B E8 80 81 */	bl fpcEx_IsExist__FUi
/* 80199320  2C 03 00 00 */	cmpwi r3, 0
/* 80199324  41 82 00 1C */	beq lbl_80199340
/* 80199328  38 00 00 01 */	li r0, 1
/* 8019932C  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 80199330  7F A3 EB 78 */	mr r3, r29
/* 80199334  4B FB 0E F1 */	bl evtChange__8daNpcT_cFv
/* 80199338  38 60 00 01 */	li r3, 1
/* 8019933C  48 00 00 18 */	b lbl_80199354
lbl_80199340:
/* 80199340  38 60 00 00 */	li r3, 0
/* 80199344  48 00 00 10 */	b lbl_80199354
lbl_80199348:
/* 80199348  38 60 00 01 */	li r3, 1
/* 8019934C  48 00 00 08 */	b lbl_80199354
lbl_80199350:
/* 80199350  38 60 00 00 */	li r3, 0
lbl_80199354:
/* 80199354  39 61 00 40 */	addi r11, r1, 0x40
/* 80199358  48 1C 8E CD */	bl _restgpr_28
/* 8019935C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80199360  7C 08 03 A6 */	mtlr r0
/* 80199364  38 21 00 40 */	addi r1, r1, 0x40
/* 80199368  4E 80 00 20 */	blr 
