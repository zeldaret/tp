lbl_80B9A0EC:
/* 80B9A0EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B9A0F0  7C 08 02 A6 */	mflr r0
/* 80B9A0F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B9A0F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9A0FC  4B 7C 80 DD */	bl _savegpr_28
/* 80B9A100  7C 7D 1B 78 */	mr r29, r3
/* 80B9A104  3B E0 00 00 */	li r31, 0
/* 80B9A108  3B C0 00 00 */	li r30, 0
/* 80B9A10C  A0 03 14 4A */	lhz r0, 0x144a(r3)
/* 80B9A110  2C 00 00 02 */	cmpwi r0, 2
/* 80B9A114  41 82 00 40 */	beq lbl_80B9A154
/* 80B9A118  40 80 01 68 */	bge lbl_80B9A280
/* 80B9A11C  2C 00 00 00 */	cmpwi r0, 0
/* 80B9A120  41 82 00 0C */	beq lbl_80B9A12C
/* 80B9A124  48 00 01 5C */	b lbl_80B9A280
/* 80B9A128  48 00 01 58 */	b lbl_80B9A280
lbl_80B9A12C:
/* 80B9A12C  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80B9A130  28 00 00 00 */	cmplwi r0, 0
/* 80B9A134  40 82 01 4C */	bne lbl_80B9A280
/* 80B9A138  80 9D 14 44 */	lwz r4, 0x1444(r29)
/* 80B9A13C  38 A0 00 00 */	li r5, 0
/* 80B9A140  4B 5B 9B DD */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B9A144  38 00 00 00 */	li r0, 0
/* 80B9A148  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B9A14C  38 00 00 02 */	li r0, 2
/* 80B9A150  B0 1D 14 4A */	sth r0, 0x144a(r29)
lbl_80B9A154:
/* 80B9A154  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 80B9A158  28 00 00 00 */	cmplwi r0, 0
/* 80B9A15C  41 82 00 0C */	beq lbl_80B9A168
/* 80B9A160  3B C0 00 01 */	li r30, 1
/* 80B9A164  48 00 00 C0 */	b lbl_80B9A224
lbl_80B9A168:
/* 80B9A168  7F A3 EB 78 */	mr r3, r29
/* 80B9A16C  38 80 00 03 */	li r4, 3
/* 80B9A170  4B FF CD 0D */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B9A174  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B9A178  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9A17C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9A180  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B9A184  4B 5B 65 39 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B9A188  7F A3 EB 78 */	mr r3, r29
/* 80B9A18C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B9A190  4B 48 05 81 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B9A194  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 80B9A198  7C 60 07 34 */	extsh r0, r3
/* 80B9A19C  7C 04 00 00 */	cmpw r4, r0
/* 80B9A1A0  40 82 00 0C */	bne lbl_80B9A1AC
/* 80B9A1A4  3B C0 00 01 */	li r30, 1
/* 80B9A1A8  48 00 00 7C */	b lbl_80B9A224
lbl_80B9A1AC:
/* 80B9A1AC  7F A3 EB 78 */	mr r3, r29
/* 80B9A1B0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80B9A1B4  4B 48 05 5D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B9A1B8  7C 64 1B 78 */	mr r4, r3
/* 80B9A1BC  7F A3 EB 78 */	mr r3, r29
/* 80B9A1C0  38 A0 FF FF */	li r5, -1
/* 80B9A1C4  38 C0 FF FF */	li r6, -1
/* 80B9A1C8  38 E0 00 0F */	li r7, 0xf
/* 80B9A1CC  4B 5B 9E D9 */	bl step__8daNpcF_cFsiii
/* 80B9A1D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B9A1D4  41 82 00 50 */	beq lbl_80B9A224
/* 80B9A1D8  7F A3 EB 78 */	mr r3, r29
/* 80B9A1DC  38 80 00 01 */	li r4, 1
/* 80B9A1E0  3C A0 80 BA */	lis r5, lit_4991@ha /* 0x80B9B0A4@ha */
/* 80B9A1E4  C0 25 B0 A4 */	lfs f1, lit_4991@l(r5)  /* 0x80B9B0A4@l */
/* 80B9A1E8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B9A1EC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B9A1F0  7D 89 03 A6 */	mtctr r12
/* 80B9A1F4  4E 80 04 21 */	bctrl 
/* 80B9A1F8  7F A3 EB 78 */	mr r3, r29
/* 80B9A1FC  38 80 00 00 */	li r4, 0
/* 80B9A200  3C A0 80 BA */	lis r5, lit_4991@ha /* 0x80B9B0A4@ha */
/* 80B9A204  C0 25 B0 A4 */	lfs f1, lit_4991@l(r5)  /* 0x80B9B0A4@l */
/* 80B9A208  38 A0 00 00 */	li r5, 0
/* 80B9A20C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B9A210  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B9A214  7D 89 03 A6 */	mtctr r12
/* 80B9A218  4E 80 04 21 */	bctrl 
/* 80B9A21C  38 00 00 00 */	li r0, 0
/* 80B9A220  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80B9A224:
/* 80B9A224  2C 1E 00 00 */	cmpwi r30, 0
/* 80B9A228  41 82 00 24 */	beq lbl_80B9A24C
/* 80B9A22C  7F A3 EB 78 */	mr r3, r29
/* 80B9A230  38 80 00 00 */	li r4, 0
/* 80B9A234  38 A0 00 01 */	li r5, 1
/* 80B9A238  38 C0 00 00 */	li r6, 0
/* 80B9A23C  4B 5B 9B 49 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B9A240  2C 03 00 00 */	cmpwi r3, 0
/* 80B9A244  41 82 00 08 */	beq lbl_80B9A24C
/* 80B9A248  3B E0 00 01 */	li r31, 1
lbl_80B9A24C:
/* 80B9A24C  2C 1F 00 00 */	cmpwi r31, 0
/* 80B9A250  41 82 00 30 */	beq lbl_80B9A280
/* 80B9A254  38 00 00 03 */	li r0, 3
/* 80B9A258  B0 1D 14 4A */	sth r0, 0x144a(r29)
/* 80B9A25C  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 80B9A260  28 00 00 00 */	cmplwi r0, 0
/* 80B9A264  40 82 00 14 */	bne lbl_80B9A278
/* 80B9A268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9A26C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9A270  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B9A274  4B 4A 81 F5 */	bl reset__14dEvt_control_cFv
lbl_80B9A278:
/* 80B9A278  38 00 00 00 */	li r0, 0
/* 80B9A27C  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_80B9A280:
/* 80B9A280  7F E3 FB 78 */	mr r3, r31
/* 80B9A284  39 61 00 20 */	addi r11, r1, 0x20
/* 80B9A288  4B 7C 7F 9D */	bl _restgpr_28
/* 80B9A28C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B9A290  7C 08 03 A6 */	mtlr r0
/* 80B9A294  38 21 00 20 */	addi r1, r1, 0x20
/* 80B9A298  4E 80 00 20 */	blr 
