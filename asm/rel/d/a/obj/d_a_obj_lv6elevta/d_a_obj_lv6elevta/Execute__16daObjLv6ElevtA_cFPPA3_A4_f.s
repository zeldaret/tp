lbl_80C8321C:
/* 80C8321C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C83220  7C 08 02 A6 */	mflr r0
/* 80C83224  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C83228  39 61 00 20 */	addi r11, r1, 0x20
/* 80C8322C  4B 6D EF B0 */	b _savegpr_29
/* 80C83230  7C 7D 1B 78 */	mr r29, r3
/* 80C83234  7C 9E 23 78 */	mr r30, r4
/* 80C83238  3C 60 80 C8 */	lis r3, searchObjLv6SwTurn__FPvPv@ha
/* 80C8323C  38 63 2F A4 */	addi r3, r3, searchObjLv6SwTurn__FPvPv@l
/* 80C83240  7F A4 EB 78 */	mr r4, r29
/* 80C83244  4B 39 65 B4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80C83248  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8324C  41 82 00 20 */	beq lbl_80C8326C
/* 80C83250  80 7D 00 B0 */	lwz r3, 0xb0(r29)
/* 80C83254  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80C83258  2C 00 00 FF */	cmpwi r0, 0xff
/* 80C8325C  41 82 00 10 */	beq lbl_80C8326C
/* 80C83260  54 60 C6 3E */	rlwinm r0, r3, 0x18, 0x18, 0x1f
/* 80C83264  2C 00 00 FF */	cmpwi r0, 0xff
/* 80C83268  40 82 00 34 */	bne lbl_80C8329C
lbl_80C8326C:
/* 80C8326C  38 00 00 00 */	li r0, 0
/* 80C83270  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 80C83274  7F A3 EB 78 */	mr r3, r29
/* 80C83278  4B FF FB 51 */	bl setMtx__16daObjLv6ElevtA_cFv
/* 80C8327C  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 80C83280  80 9D 06 18 */	lwz r4, 0x618(r29)
/* 80C83284  38 84 00 24 */	addi r4, r4, 0x24
/* 80C83288  4B 6C 32 28 */	b PSMTXCopy
/* 80C8328C  38 1D 05 B8 */	addi r0, r29, 0x5b8
/* 80C83290  90 1E 00 00 */	stw r0, 0(r30)
/* 80C83294  38 60 00 01 */	li r3, 1
/* 80C83298  48 00 02 88 */	b lbl_80C83520
lbl_80C8329C:
/* 80C8329C  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80C832A0  4B 3C 55 CC */	b eventUpdate__17dEvLib_callback_cFv
/* 80C832A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C832A8  40 82 00 FC */	bne lbl_80C833A4
/* 80C832AC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C832B0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C832B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C832B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C832BC  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C832C0  7C 05 07 74 */	extsb r5, r0
/* 80C832C4  4B 3B 20 9C */	b isSwitch__10dSv_info_cCFii
/* 80C832C8  2C 03 00 00 */	cmpwi r3, 0
/* 80C832CC  41 82 00 40 */	beq lbl_80C8330C
/* 80C832D0  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80C832D4  2C 00 00 00 */	cmpwi r0, 0
/* 80C832D8  40 82 00 CC */	bne lbl_80C833A4
/* 80C832DC  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C832E0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C832E4  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C832E8  41 82 00 18 */	beq lbl_80C83300
/* 80C832EC  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80C832F0  38 A0 00 FF */	li r5, 0xff
/* 80C832F4  38 C0 00 01 */	li r6, 1
/* 80C832F8  4B 3C 56 48 */	b orderEvent__17dEvLib_callback_cFiii
/* 80C832FC  48 00 00 A8 */	b lbl_80C833A4
lbl_80C83300:
/* 80C83300  38 00 00 02 */	li r0, 2
/* 80C83304  90 1D 06 20 */	stw r0, 0x620(r29)
/* 80C83308  48 00 00 9C */	b lbl_80C833A4
lbl_80C8330C:
/* 80C8330C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C83310  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C83314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C83318  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C8331C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C83320  7C 05 07 74 */	extsb r5, r0
/* 80C83324  4B 3B 20 3C */	b isSwitch__10dSv_info_cCFii
/* 80C83328  2C 03 00 00 */	cmpwi r3, 0
/* 80C8332C  41 82 00 40 */	beq lbl_80C8336C
/* 80C83330  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80C83334  2C 00 00 00 */	cmpwi r0, 0
/* 80C83338  40 82 00 6C */	bne lbl_80C833A4
/* 80C8333C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C83340  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C83344  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C83348  41 82 00 18 */	beq lbl_80C83360
/* 80C8334C  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80C83350  38 A0 00 FF */	li r5, 0xff
/* 80C83354  38 C0 00 01 */	li r6, 1
/* 80C83358  4B 3C 55 E8 */	b orderEvent__17dEvLib_callback_cFiii
/* 80C8335C  48 00 00 48 */	b lbl_80C833A4
lbl_80C83360:
/* 80C83360  38 00 00 03 */	li r0, 3
/* 80C83364  90 1D 06 20 */	stw r0, 0x620(r29)
/* 80C83368  48 00 00 3C */	b lbl_80C833A4
lbl_80C8336C:
/* 80C8336C  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80C83370  2C 00 00 00 */	cmpwi r0, 0
/* 80C83374  41 82 00 30 */	beq lbl_80C833A4
/* 80C83378  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C8337C  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80C83380  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C83384  41 82 00 18 */	beq lbl_80C8339C
/* 80C83388  38 7D 05 A8 */	addi r3, r29, 0x5a8
/* 80C8338C  38 A0 00 FF */	li r5, 0xff
/* 80C83390  38 C0 00 01 */	li r6, 1
/* 80C83394  4B 3C 55 AC */	b orderEvent__17dEvLib_callback_cFiii
/* 80C83398  48 00 00 0C */	b lbl_80C833A4
lbl_80C8339C:
/* 80C8339C  38 00 00 01 */	li r0, 1
/* 80C833A0  90 1D 06 20 */	stw r0, 0x620(r29)
lbl_80C833A4:
/* 80C833A4  80 1D 06 20 */	lwz r0, 0x620(r29)
/* 80C833A8  2C 00 00 02 */	cmpwi r0, 2
/* 80C833AC  40 82 00 3C */	bne lbl_80C833E8
/* 80C833B0  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80C833B4  38 03 00 6D */	addi r0, r3, 0x6d
/* 80C833B8  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 80C833BC  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80C833C0  2C 00 3F FF */	cmpwi r0, 0x3fff
/* 80C833C4  40 81 00 14 */	ble lbl_80C833D8
/* 80C833C8  38 00 3F FF */	li r0, 0x3fff
/* 80C833CC  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 80C833D0  38 00 00 00 */	li r0, 0
/* 80C833D4  90 1D 06 20 */	stw r0, 0x620(r29)
lbl_80C833D8:
/* 80C833D8  7F A3 EB 78 */	mr r3, r29
/* 80C833DC  7F E4 FB 78 */	mr r4, r31
/* 80C833E0  4B FF FC DD */	bl moveAngle__16daObjLv6ElevtA_cFPv
/* 80C833E4  48 00 01 18 */	b lbl_80C834FC
lbl_80C833E8:
/* 80C833E8  2C 00 00 03 */	cmpwi r0, 3
/* 80C833EC  40 82 00 3C */	bne lbl_80C83428
/* 80C833F0  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80C833F4  38 03 FF 93 */	addi r0, r3, -109
/* 80C833F8  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 80C833FC  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80C83400  2C 00 C0 01 */	cmpwi r0, -16383
/* 80C83404  40 80 00 14 */	bge lbl_80C83418
/* 80C83408  38 00 C0 01 */	li r0, -16383
/* 80C8340C  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 80C83410  38 00 00 00 */	li r0, 0
/* 80C83414  90 1D 06 20 */	stw r0, 0x620(r29)
lbl_80C83418:
/* 80C83418  7F A3 EB 78 */	mr r3, r29
/* 80C8341C  7F E4 FB 78 */	mr r4, r31
/* 80C83420  4B FF FC 9D */	bl moveAngle__16daObjLv6ElevtA_cFPv
/* 80C83424  48 00 00 D8 */	b lbl_80C834FC
lbl_80C83428:
/* 80C83428  2C 00 00 01 */	cmpwi r0, 1
/* 80C8342C  40 82 00 74 */	bne lbl_80C834A0
/* 80C83430  80 7D 06 1C */	lwz r3, 0x61c(r29)
/* 80C83434  2C 03 00 00 */	cmpwi r3, 0
/* 80C83438  40 81 00 34 */	ble lbl_80C8346C
/* 80C8343C  38 03 FF 93 */	addi r0, r3, -109
/* 80C83440  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 80C83444  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80C83448  2C 00 00 00 */	cmpwi r0, 0
/* 80C8344C  40 80 00 10 */	bge lbl_80C8345C
/* 80C83450  38 00 00 00 */	li r0, 0
/* 80C83454  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 80C83458  90 1D 06 20 */	stw r0, 0x620(r29)
lbl_80C8345C:
/* 80C8345C  7F A3 EB 78 */	mr r3, r29
/* 80C83460  7F E4 FB 78 */	mr r4, r31
/* 80C83464  4B FF FC 59 */	bl moveAngle__16daObjLv6ElevtA_cFPv
/* 80C83468  48 00 00 94 */	b lbl_80C834FC
lbl_80C8346C:
/* 80C8346C  40 80 00 90 */	bge lbl_80C834FC
/* 80C83470  38 03 00 6D */	addi r0, r3, 0x6d
/* 80C83474  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 80C83478  80 1D 06 1C */	lwz r0, 0x61c(r29)
/* 80C8347C  2C 00 00 00 */	cmpwi r0, 0
/* 80C83480  40 81 00 10 */	ble lbl_80C83490
/* 80C83484  38 00 00 00 */	li r0, 0
/* 80C83488  90 1D 06 1C */	stw r0, 0x61c(r29)
/* 80C8348C  90 1D 06 20 */	stw r0, 0x620(r29)
lbl_80C83490:
/* 80C83490  7F A3 EB 78 */	mr r3, r29
/* 80C83494  7F E4 FB 78 */	mr r4, r31
/* 80C83498  4B FF FC 25 */	bl moveAngle__16daObjLv6ElevtA_cFPv
/* 80C8349C  48 00 00 60 */	b lbl_80C834FC
lbl_80C834A0:
/* 80C834A0  88 1D 06 24 */	lbz r0, 0x624(r29)
/* 80C834A4  28 00 00 00 */	cmplwi r0, 0
/* 80C834A8  41 82 00 54 */	beq lbl_80C834FC
/* 80C834AC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801E6@ha */
/* 80C834B0  38 03 01 E6 */	addi r0, r3, 0x01E6 /* 0x000801E6@l */
/* 80C834B4  90 01 00 08 */	stw r0, 8(r1)
/* 80C834B8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C834BC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C834C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C834C4  38 81 00 08 */	addi r4, r1, 8
/* 80C834C8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80C834CC  38 C0 00 00 */	li r6, 0
/* 80C834D0  38 E0 00 00 */	li r7, 0
/* 80C834D4  3D 00 80 C8 */	lis r8, lit_3755@ha
/* 80C834D8  C0 28 38 34 */	lfs f1, lit_3755@l(r8)
/* 80C834DC  FC 40 08 90 */	fmr f2, f1
/* 80C834E0  3D 00 80 C8 */	lis r8, lit_3756@ha
/* 80C834E4  C0 68 38 38 */	lfs f3, lit_3756@l(r8)
/* 80C834E8  FC 80 18 90 */	fmr f4, f3
/* 80C834EC  39 00 00 00 */	li r8, 0
/* 80C834F0  4B 62 84 94 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C834F4  38 00 00 00 */	li r0, 0
/* 80C834F8  98 1D 06 24 */	stb r0, 0x624(r29)
lbl_80C834FC:
/* 80C834FC  7F A3 EB 78 */	mr r3, r29
/* 80C83500  4B FF F8 C9 */	bl setMtx__16daObjLv6ElevtA_cFv
/* 80C83504  38 7D 05 E8 */	addi r3, r29, 0x5e8
/* 80C83508  80 9D 06 18 */	lwz r4, 0x618(r29)
/* 80C8350C  38 84 00 24 */	addi r4, r4, 0x24
/* 80C83510  4B 6C 2F A0 */	b PSMTXCopy
/* 80C83514  38 1D 05 B8 */	addi r0, r29, 0x5b8
/* 80C83518  90 1E 00 00 */	stw r0, 0(r30)
/* 80C8351C  38 60 00 01 */	li r3, 1
lbl_80C83520:
/* 80C83520  39 61 00 20 */	addi r11, r1, 0x20
/* 80C83524  4B 6D ED 04 */	b _restgpr_29
/* 80C83528  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C8352C  7C 08 03 A6 */	mtlr r0
/* 80C83530  38 21 00 20 */	addi r1, r1, 0x20
/* 80C83534  4E 80 00 20 */	blr 
