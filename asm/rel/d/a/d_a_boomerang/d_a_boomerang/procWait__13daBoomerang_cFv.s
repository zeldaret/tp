lbl_804A0874:
/* 804A0874  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804A0878  7C 08 02 A6 */	mflr r0
/* 804A087C  90 01 00 74 */	stw r0, 0x74(r1)
/* 804A0880  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804A0884  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804A0888  39 61 00 60 */	addi r11, r1, 0x60
/* 804A088C  4B EC 19 49 */	bl _savegpr_27
/* 804A0890  7C 7B 1B 78 */	mr r27, r3
/* 804A0894  3C 80 80 4A */	lis r4, lit_4078@ha /* 0x804A2850@ha */
/* 804A0898  3B E4 28 50 */	addi r31, r4, lit_4078@l /* 0x804A2850@l */
/* 804A089C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A08A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A08A4  83 C4 5D B4 */	lwz r30, 0x5db4(r4)
/* 804A08A8  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 804A08AC  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 804A08B0  4B FF F1 F5 */	bl setKeepMatrix__13daBoomerang_cFv
/* 804A08B4  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 804A08B8  28 00 00 01 */	cmplwi r0, 1
/* 804A08BC  40 82 02 04 */	bne lbl_804A0AC0
/* 804A08C0  7F C3 F3 78 */	mr r3, r30
/* 804A08C4  4B C3 F7 4D */	bl getBoomSpeed__9daAlink_cFv
/* 804A08C8  D0 3B 05 2C */	stfs f1, 0x52c(r27)
/* 804A08CC  C0 1B 05 2C */	lfs f0, 0x52c(r27)
/* 804A08D0  D0 1B 09 88 */	stfs f0, 0x988(r27)
/* 804A08D4  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 804A08D8  80 7B 05 70 */	lwz r3, 0x570(r27)
/* 804A08DC  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A08E0  D0 1B 09 8C */	stfs f0, 0x98c(r27)
/* 804A08E4  38 7B 0A 0C */	addi r3, r27, 0xa0c
/* 804A08E8  4B BE 3A 31 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 804A08EC  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 804A08F0  4B BE 3A 29 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 804A08F4  38 80 00 00 */	li r4, 0
/* 804A08F8  98 9B 09 57 */	stb r4, 0x957(r27)
/* 804A08FC  80 7B 09 64 */	lwz r3, 0x964(r27)
/* 804A0900  38 00 FF 7C */	li r0, -132
/* 804A0904  7C 60 00 38 */	and r0, r3, r0
/* 804A0908  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A090C  98 9B 09 51 */	stb r4, 0x951(r27)
/* 804A0910  7F 63 DB 78 */	mr r3, r27
/* 804A0914  4B FF F4 59 */	bl setAimPos__13daBoomerang_cFv
/* 804A0918  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A091C  28 00 00 00 */	cmplwi r0, 0
/* 804A0920  40 82 00 7C */	bne lbl_804A099C
/* 804A0924  7F 63 DB 78 */	mr r3, r27
/* 804A0928  4B FF F0 7D */	bl resetLockActor__13daBoomerang_cFv
/* 804A092C  7F C3 F3 78 */	mr r3, r30
/* 804A0930  4B C3 F7 91 */	bl getBoomFlyMax__9daAlink_cCFv
/* 804A0934  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804A0938  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804A093C  38 83 00 04 */	addi r4, r3, 4
/* 804A0940  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 804A0944  54 05 04 38 */	rlwinm r5, r0, 0, 0x10, 0x1c
/* 804A0948  7C A4 2C 2E */	lfsx f5, r4, r5
/* 804A094C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 804A0950  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804A0954  7C 04 04 2E */	lfsx f0, r4, r0
/* 804A0958  C0 5B 04 D8 */	lfs f2, 0x4d8(r27)
/* 804A095C  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A0960  EC 00 01 72 */	fmuls f0, f0, f5
/* 804A0964  EC 82 00 2A */	fadds f4, f2, f0
/* 804A0968  7C 03 2C 2E */	lfsx f0, r3, r5
/* 804A096C  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 804A0970  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A0974  EC 62 00 2A */	fadds f3, f2, f0
/* 804A0978  7C 03 04 2E */	lfsx f0, r3, r0
/* 804A097C  C0 5B 04 D0 */	lfs f2, 0x4d0(r27)
/* 804A0980  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A0984  EC 00 01 72 */	fmuls f0, f0, f5
/* 804A0988  EC 02 00 2A */	fadds f0, f2, f0
/* 804A098C  D0 1B 09 90 */	stfs f0, 0x990(r27)
/* 804A0990  D0 7B 09 94 */	stfs f3, 0x994(r27)
/* 804A0994  D0 9B 09 98 */	stfs f4, 0x998(r27)
/* 804A0998  48 00 00 44 */	b lbl_804A09DC
lbl_804A099C:
/* 804A099C  38 61 00 1C */	addi r3, r1, 0x1c
/* 804A09A0  38 9B 09 90 */	addi r4, r27, 0x990
/* 804A09A4  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804A09A8  4B DC 61 8D */	bl __mi__4cXyzCFRC3Vec
/* 804A09AC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804A09B0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804A09B4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804A09B8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804A09BC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804A09C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804A09C4  38 61 00 34 */	addi r3, r1, 0x34
/* 804A09C8  4B DC 67 89 */	bl atan2sY_XZ__4cXyzCFv
/* 804A09CC  B0 7B 04 DC */	sth r3, 0x4dc(r27)
/* 804A09D0  38 61 00 34 */	addi r3, r1, 0x34
/* 804A09D4  4B DC 67 55 */	bl atan2sX_Z__4cXyzCFv
/* 804A09D8  B0 7B 04 DE */	sth r3, 0x4de(r27)
lbl_804A09DC:
/* 804A09DC  38 00 00 00 */	li r0, 0
/* 804A09E0  B0 1B 09 5A */	sth r0, 0x95a(r27)
/* 804A09E4  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A09E8  28 00 00 00 */	cmplwi r0, 0
/* 804A09EC  40 82 00 14 */	bne lbl_804A0A00
/* 804A09F0  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A09F4  60 00 00 10 */	ori r0, r0, 0x10
/* 804A09F8  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A09FC  48 00 00 10 */	b lbl_804A0A0C
lbl_804A0A00:
/* 804A0A00  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0A04  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804A0A08  90 1B 09 64 */	stw r0, 0x964(r27)
lbl_804A0A0C:
/* 804A0A0C  A8 7B 04 DE */	lha r3, 0x4de(r27)
/* 804A0A10  38 03 18 30 */	addi r0, r3, 0x1830
/* 804A0A14  B0 1B 04 DE */	sth r0, 0x4de(r27)
/* 804A0A18  A8 1B 04 DC */	lha r0, 0x4dc(r27)
/* 804A0A1C  B0 1B 04 E4 */	sth r0, 0x4e4(r27)
/* 804A0A20  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 804A0A24  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 804A0A28  38 00 10 00 */	li r0, 0x1000
/* 804A0A2C  B0 1B 04 E8 */	sth r0, 0x4e8(r27)
/* 804A0A30  B0 1B 09 58 */	sth r0, 0x958(r27)
/* 804A0A34  3C 60 80 4A */	lis r3, lit_5412@ha /* 0x804A2AFC@ha */
/* 804A0A38  38 83 2A FC */	addi r4, r3, lit_5412@l /* 0x804A2AFC@l */
/* 804A0A3C  80 64 00 00 */	lwz r3, 0(r4)
/* 804A0A40  80 04 00 04 */	lwz r0, 4(r4)
/* 804A0A44  90 7B 0D C0 */	stw r3, 0xdc0(r27)
/* 804A0A48  90 1B 0D C4 */	stw r0, 0xdc4(r27)
/* 804A0A4C  80 04 00 08 */	lwz r0, 8(r4)
/* 804A0A50  90 1B 0D C8 */	stw r0, 0xdc8(r27)
/* 804A0A54  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0A58  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 804A0A5C  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A0A60  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 804A0A64  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 804A0A68  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804A0A6C  EC 21 00 2A */	fadds f1, f1, f0
/* 804A0A70  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804A0A74  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804A0A78  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 804A0A7C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 804A0A80  7F 63 DB 78 */	mr r3, r27
/* 804A0A84  38 81 00 28 */	addi r4, r1, 0x28
/* 804A0A88  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 804A0A8C  4B FF F3 E1 */	bl checkBgHit__13daBoomerang_cFP4cXyzP4cXyz
/* 804A0A90  38 00 00 0A */	li r0, 0xa
/* 804A0A94  B0 1B 09 60 */	sth r0, 0x960(r27)
/* 804A0A98  38 00 00 1E */	li r0, 0x1e
/* 804A0A9C  98 1B 09 54 */	stb r0, 0x954(r27)
/* 804A0AA0  38 00 00 00 */	li r0, 0
/* 804A0AA4  98 1B 09 55 */	stb r0, 0x955(r27)
/* 804A0AA8  7F C3 F3 78 */	mr r3, r30
/* 804A0AAC  4B C3 F6 E5 */	bl getBoomBgThroughTime__9daAlink_cCFv
/* 804A0AB0  B0 7B 09 62 */	sth r3, 0x962(r27)
/* 804A0AB4  7F 63 DB 78 */	mr r3, r27
/* 804A0AB8  48 00 04 55 */	bl procMove__13daBoomerang_cFv
/* 804A0ABC  48 00 03 EC */	b lbl_804A0EA8
lbl_804A0AC0:
/* 804A0AC0  4B CE 0B 81 */	bl dCam_getBody__Fv
/* 804A0AC4  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 804A0AC8  2C 00 00 08 */	cmpwi r0, 8
/* 804A0ACC  41 82 01 18 */	beq lbl_804A0BE4
/* 804A0AD0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A0AD4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A0AD8  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804A0ADC  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 804A0AE0  41 82 00 E8 */	beq lbl_804A0BC8
/* 804A0AE4  80 9E 27 EC */	lwz r4, 0x27ec(r30)
/* 804A0AE8  28 04 00 00 */	cmplwi r4, 0
/* 804A0AEC  41 82 00 DC */	beq lbl_804A0BC8
/* 804A0AF0  88 BB 09 50 */	lbz r5, 0x950(r27)
/* 804A0AF4  28 05 00 05 */	cmplwi r5, 5
/* 804A0AF8  40 80 00 D0 */	bge lbl_804A0BC8
/* 804A0AFC  28 04 00 00 */	cmplwi r4, 0
/* 804A0B00  41 82 00 0C */	beq lbl_804A0B0C
/* 804A0B04  80 C4 00 04 */	lwz r6, 4(r4)
/* 804A0B08  48 00 00 08 */	b lbl_804A0B10
lbl_804A0B0C:
/* 804A0B0C  38 C0 FF FF */	li r6, -1
lbl_804A0B10:
/* 804A0B10  38 E0 00 00 */	li r7, 0
/* 804A0B14  38 60 00 00 */	li r3, 0
/* 804A0B18  7C A9 03 A6 */	mtctr r5
/* 804A0B1C  2C 05 00 00 */	cmpwi r5, 0
/* 804A0B20  40 81 00 20 */	ble lbl_804A0B40
lbl_804A0B24:
/* 804A0B24  38 03 06 AC */	addi r0, r3, 0x6ac
/* 804A0B28  7C 1B 00 2E */	lwzx r0, r27, r0
/* 804A0B2C  7C 00 30 40 */	cmplw r0, r6
/* 804A0B30  41 82 00 10 */	beq lbl_804A0B40
/* 804A0B34  38 E7 00 01 */	addi r7, r7, 1
/* 804A0B38  38 63 00 04 */	addi r3, r3, 4
/* 804A0B3C  42 00 FF E8 */	bdnz lbl_804A0B24
lbl_804A0B40:
/* 804A0B40  7C 07 28 00 */	cmpw r7, r5
/* 804A0B44  40 82 00 94 */	bne lbl_804A0BD8
/* 804A0B48  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 804A0B4C  7C 7B 02 14 */	add r3, r27, r0
/* 804A0B50  90 83 06 C0 */	stw r4, 0x6c0(r3)
/* 804A0B54  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A0B58  54 00 10 3A */	slwi r0, r0, 2
/* 804A0B5C  7C 7B 02 14 */	add r3, r27, r0
/* 804A0B60  90 C3 06 AC */	stw r6, 0x6ac(r3)
/* 804A0B64  38 7B 05 98 */	addi r3, r27, 0x598
/* 804A0B68  88 9B 09 50 */	lbz r4, 0x950(r27)
/* 804A0B6C  4B FF E2 3D */	bl initFrame__19daBoomerang_sight_cFi
/* 804A0B70  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A0B74  54 00 10 3A */	slwi r0, r0, 2
/* 804A0B78  38 7F 00 40 */	addi r3, r31, 0x40
/* 804A0B7C  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A0B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A0B84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804A0B88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804A0B8C  80 63 00 00 */	lwz r3, 0(r3)
/* 804A0B90  38 81 00 14 */	addi r4, r1, 0x14
/* 804A0B94  38 A0 00 00 */	li r5, 0
/* 804A0B98  38 C0 00 00 */	li r6, 0
/* 804A0B9C  38 E0 00 00 */	li r7, 0
/* 804A0BA0  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804A0BA4  FC 40 08 90 */	fmr f2, f1
/* 804A0BA8  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 804A0BAC  FC 80 18 90 */	fmr f4, f3
/* 804A0BB0  39 00 00 00 */	li r8, 0
/* 804A0BB4  4B E0 AD D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804A0BB8  88 7B 09 50 */	lbz r3, 0x950(r27)
/* 804A0BBC  38 03 00 01 */	addi r0, r3, 1
/* 804A0BC0  98 1B 09 50 */	stb r0, 0x950(r27)
/* 804A0BC4  48 00 00 14 */	b lbl_804A0BD8
lbl_804A0BC8:
/* 804A0BC8  28 00 00 00 */	cmplwi r0, 0
/* 804A0BCC  40 82 00 0C */	bne lbl_804A0BD8
/* 804A0BD0  7F 63 DB 78 */	mr r3, r27
/* 804A0BD4  4B FF ED D1 */	bl resetLockActor__13daBoomerang_cFv
lbl_804A0BD8:
/* 804A0BD8  38 00 FF FF */	li r0, -1
/* 804A0BDC  90 1B 06 A8 */	stw r0, 0x6a8(r27)
/* 804A0BE0  48 00 02 C8 */	b lbl_804A0EA8
lbl_804A0BE4:
/* 804A0BE4  7F C3 F3 78 */	mr r3, r30
/* 804A0BE8  4B C3 F3 F9 */	bl checkBoomerangLockAccept__9daAlink_cFv
/* 804A0BEC  2C 03 00 00 */	cmpwi r3, 0
/* 804A0BF0  41 82 02 B0 */	beq lbl_804A0EA0
/* 804A0BF4  3B A0 00 00 */	li r29, 0
/* 804A0BF8  80 7B 06 A8 */	lwz r3, 0x6a8(r27)
/* 804A0BFC  3C 03 00 01 */	addis r0, r3, 1
/* 804A0C00  28 00 FF FF */	cmplwi r0, 0xffff
/* 804A0C04  41 82 00 20 */	beq lbl_804A0C24
/* 804A0C08  90 61 00 10 */	stw r3, 0x10(r1)
/* 804A0C0C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 804A0C10  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 804A0C14  38 81 00 10 */	addi r4, r1, 0x10
/* 804A0C18  4B B7 8B E1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804A0C1C  7C 7C 1B 78 */	mr r28, r3
/* 804A0C20  48 00 00 08 */	b lbl_804A0C28
lbl_804A0C24:
/* 804A0C24  3B 80 00 00 */	li r28, 0
lbl_804A0C28:
/* 804A0C28  28 1C 00 00 */	cmplwi r28, 0
/* 804A0C2C  41 82 00 9C */	beq lbl_804A0CC8
/* 804A0C30  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0C34  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 804A0C38  41 82 00 90 */	beq lbl_804A0CC8
/* 804A0C3C  80 9B 06 A8 */	lwz r4, 0x6a8(r27)
/* 804A0C40  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A0C44  54 00 10 3A */	slwi r0, r0, 2
/* 804A0C48  7C 7B 02 14 */	add r3, r27, r0
/* 804A0C4C  90 83 06 AC */	stw r4, 0x6ac(r3)
/* 804A0C50  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A0C54  54 00 10 3A */	slwi r0, r0, 2
/* 804A0C58  7C 7B 02 14 */	add r3, r27, r0
/* 804A0C5C  93 83 06 C0 */	stw r28, 0x6c0(r3)
/* 804A0C60  38 7B 05 98 */	addi r3, r27, 0x598
/* 804A0C64  88 9B 09 50 */	lbz r4, 0x950(r27)
/* 804A0C68  4B FF E1 41 */	bl initFrame__19daBoomerang_sight_cFi
/* 804A0C6C  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A0C70  54 00 10 3A */	slwi r0, r0, 2
/* 804A0C74  38 7F 00 40 */	addi r3, r31, 0x40
/* 804A0C78  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A0C7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A0C80  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804A0C84  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804A0C88  80 63 00 00 */	lwz r3, 0(r3)
/* 804A0C8C  38 81 00 0C */	addi r4, r1, 0xc
/* 804A0C90  38 A0 00 00 */	li r5, 0
/* 804A0C94  38 C0 00 00 */	li r6, 0
/* 804A0C98  38 E0 00 00 */	li r7, 0
/* 804A0C9C  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804A0CA0  FC 40 08 90 */	fmr f2, f1
/* 804A0CA4  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 804A0CA8  FC 80 18 90 */	fmr f4, f3
/* 804A0CAC  39 00 00 00 */	li r8, 0
/* 804A0CB0  4B E0 AC D5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804A0CB4  88 7B 09 50 */	lbz r3, 0x950(r27)
/* 804A0CB8  38 03 00 01 */	addi r0, r3, 1
/* 804A0CBC  98 1B 09 50 */	stb r0, 0x950(r27)
/* 804A0CC0  3B A0 00 01 */	li r29, 1
/* 804A0CC4  48 00 00 B0 */	b lbl_804A0D74
lbl_804A0CC8:
/* 804A0CC8  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0CCC  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 804A0CD0  41 82 00 A4 */	beq lbl_804A0D74
/* 804A0CD4  88 9B 09 50 */	lbz r4, 0x950(r27)
/* 804A0CD8  28 04 00 05 */	cmplwi r4, 5
/* 804A0CDC  40 80 00 98 */	bge lbl_804A0D74
/* 804A0CE0  38 7B 05 98 */	addi r3, r27, 0x598
/* 804A0CE4  4B FF E0 C5 */	bl initFrame__19daBoomerang_sight_cFi
/* 804A0CE8  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A0CEC  1C 60 00 0C */	mulli r3, r0, 0xc
/* 804A0CF0  38 63 06 DC */	addi r3, r3, 0x6dc
/* 804A0CF4  7C 7B 1A 14 */	add r3, r27, r3
/* 804A0CF8  C0 1B 09 9C */	lfs f0, 0x99c(r27)
/* 804A0CFC  D0 03 00 00 */	stfs f0, 0(r3)
/* 804A0D00  C0 1B 09 A0 */	lfs f0, 0x9a0(r27)
/* 804A0D04  D0 03 00 04 */	stfs f0, 4(r3)
/* 804A0D08  C0 1B 09 A4 */	lfs f0, 0x9a4(r27)
/* 804A0D0C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804A0D10  38 80 00 01 */	li r4, 1
/* 804A0D14  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A0D18  7C 7B 02 14 */	add r3, r27, r0
/* 804A0D1C  98 83 07 18 */	stb r4, 0x718(r3)
/* 804A0D20  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A0D24  54 00 10 3A */	slwi r0, r0, 2
/* 804A0D28  38 7F 00 40 */	addi r3, r31, 0x40
/* 804A0D2C  7C 03 00 2E */	lwzx r0, r3, r0
/* 804A0D30  90 01 00 08 */	stw r0, 8(r1)
/* 804A0D34  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804A0D38  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804A0D3C  80 63 00 00 */	lwz r3, 0(r3)
/* 804A0D40  38 81 00 08 */	addi r4, r1, 8
/* 804A0D44  38 A0 00 00 */	li r5, 0
/* 804A0D48  38 C0 00 00 */	li r6, 0
/* 804A0D4C  38 E0 00 00 */	li r7, 0
/* 804A0D50  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804A0D54  FC 40 08 90 */	fmr f2, f1
/* 804A0D58  C0 7F 00 C4 */	lfs f3, 0xc4(r31)
/* 804A0D5C  FC 80 18 90 */	fmr f4, f3
/* 804A0D60  39 00 00 00 */	li r8, 0
/* 804A0D64  4B E0 AC 21 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804A0D68  88 7B 09 50 */	lbz r3, 0x950(r27)
/* 804A0D6C  38 03 00 01 */	addi r0, r3, 1
/* 804A0D70  98 1B 09 50 */	stb r0, 0x950(r27)
lbl_804A0D74:
/* 804A0D74  88 1B 09 50 */	lbz r0, 0x950(r27)
/* 804A0D78  28 00 00 05 */	cmplwi r0, 5
/* 804A0D7C  40 80 00 28 */	bge lbl_804A0DA4
/* 804A0D80  28 1C 00 00 */	cmplwi r28, 0
/* 804A0D84  41 82 00 20 */	beq lbl_804A0DA4
/* 804A0D88  2C 1D 00 00 */	cmpwi r29, 0
/* 804A0D8C  40 82 00 18 */	bne lbl_804A0DA4
/* 804A0D90  38 00 00 01 */	li r0, 1
/* 804A0D94  98 1B 05 F9 */	stb r0, 0x5f9(r27)
/* 804A0D98  80 1B 06 A8 */	lwz r0, 0x6a8(r27)
/* 804A0D9C  90 1B 06 D4 */	stw r0, 0x6d4(r27)
/* 804A0DA0  93 9B 06 D8 */	stw r28, 0x6d8(r27)
lbl_804A0DA4:
/* 804A0DA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A0DA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A0DAC  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804A0DB0  7C 00 07 74 */	extsb r0, r0
/* 804A0DB4  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804A0DB8  7C 63 02 14 */	add r3, r3, r0
/* 804A0DBC  80 83 5D 74 */	lwz r4, 0x5d74(r3)
/* 804A0DC0  38 7B 0B 30 */	addi r3, r27, 0xb30
/* 804A0DC4  38 84 00 D8 */	addi r4, r4, 0xd8
/* 804A0DC8  38 BE 20 6C */	addi r5, r30, 0x206c
/* 804A0DCC  80 1B 06 D8 */	lwz r0, 0x6d8(r27)
/* 804A0DD0  28 00 00 00 */	cmplwi r0, 0
/* 804A0DD4  41 82 00 0C */	beq lbl_804A0DE0
/* 804A0DD8  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 804A0DDC  48 00 00 08 */	b lbl_804A0DE4
lbl_804A0DE0:
/* 804A0DE0  C0 3F 00 88 */	lfs f1, 0x88(r31)
lbl_804A0DE4:
/* 804A0DE4  4B DC E2 1D */	bl Set__8cM3dGCpsFRC4cXyzRC4cXyzf
/* 804A0DE8  38 7B 0A 0C */	addi r3, r27, 0xa0c
/* 804A0DEC  4B BE 3A 39 */	bl CalcAtVec__8dCcD_CpsFv
/* 804A0DF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A0DF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A0DF8  38 63 23 3C */	addi r3, r3, 0x233c
/* 804A0DFC  38 9B 0A 0C */	addi r4, r27, 0xa0c
/* 804A0E00  4B DC 3D A9 */	bl Set__4cCcSFP8cCcD_Obj
/* 804A0E04  7F C3 F3 78 */	mr r3, r30
/* 804A0E08  4B C3 F3 15 */	bl getBoomLockMax__9daAlink_cFv
/* 804A0E0C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 804A0E10  EF E0 08 2A */	fadds f31, f0, f1
/* 804A0E14  7F C3 F3 78 */	mr r3, r30
/* 804A0E18  4B C3 F3 05 */	bl getBoomLockMax__9daAlink_cFv
/* 804A0E1C  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 804A0E20  EC 00 08 2A */	fadds f0, f0, f1
/* 804A0E24  EC 00 07 F2 */	fmuls f0, f0, f31
/* 804A0E28  D0 1B 09 84 */	stfs f0, 0x984(r27)
/* 804A0E2C  38 00 FF FF */	li r0, -1
/* 804A0E30  90 1B 06 A8 */	stw r0, 0x6a8(r27)
/* 804A0E34  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0E38  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 804A0E3C  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A0E40  7F C3 F3 78 */	mr r3, r30
/* 804A0E44  4B C1 18 B9 */	bl itemActionTrigger__9daAlink_cFv
/* 804A0E48  2C 03 00 00 */	cmpwi r3, 0
/* 804A0E4C  41 82 00 44 */	beq lbl_804A0E90
/* 804A0E50  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0E54  60 00 01 00 */	ori r0, r0, 0x100
/* 804A0E58  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A0E5C  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 804A0E60  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804A0E64  41 82 00 10 */	beq lbl_804A0E74
/* 804A0E68  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0E6C  60 00 04 00 */	ori r0, r0, 0x400
/* 804A0E70  90 1B 09 64 */	stw r0, 0x964(r27)
lbl_804A0E74:
/* 804A0E74  C0 1E 37 E0 */	lfs f0, 0x37e0(r30)
/* 804A0E78  D0 1B 09 9C */	stfs f0, 0x99c(r27)
/* 804A0E7C  C0 1E 37 E4 */	lfs f0, 0x37e4(r30)
/* 804A0E80  D0 1B 09 A0 */	stfs f0, 0x9a0(r27)
/* 804A0E84  C0 1E 37 E8 */	lfs f0, 0x37e8(r30)
/* 804A0E88  D0 1B 09 A4 */	stfs f0, 0x9a4(r27)
/* 804A0E8C  48 00 00 1C */	b lbl_804A0EA8
lbl_804A0E90:
/* 804A0E90  80 1B 09 64 */	lwz r0, 0x964(r27)
/* 804A0E94  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 804A0E98  90 1B 09 64 */	stw r0, 0x964(r27)
/* 804A0E9C  48 00 00 0C */	b lbl_804A0EA8
lbl_804A0EA0:
/* 804A0EA0  38 00 FF FF */	li r0, -1
/* 804A0EA4  90 1B 06 A8 */	stw r0, 0x6a8(r27)
lbl_804A0EA8:
/* 804A0EA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804A0EAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804A0EB0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 804A0EB4  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 804A0EB8  41 82 00 30 */	beq lbl_804A0EE8
/* 804A0EBC  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002001A@ha */
/* 804A0EC0  38 03 00 1A */	addi r0, r3, 0x001A /* 0x0002001A@l */
/* 804A0EC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804A0EC8  38 7B 07 20 */	addi r3, r27, 0x720
/* 804A0ECC  38 81 00 18 */	addi r4, r1, 0x18
/* 804A0ED0  38 A0 00 00 */	li r5, 0
/* 804A0ED4  38 C0 FF FF */	li r6, -1
/* 804A0ED8  81 9B 07 30 */	lwz r12, 0x730(r27)
/* 804A0EDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804A0EE0  7D 89 03 A6 */	mtctr r12
/* 804A0EE4  4E 80 04 21 */	bctrl 
lbl_804A0EE8:
/* 804A0EE8  38 60 00 01 */	li r3, 1
/* 804A0EEC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804A0EF0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804A0EF4  39 61 00 60 */	addi r11, r1, 0x60
/* 804A0EF8  4B EC 13 29 */	bl _restgpr_27
/* 804A0EFC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804A0F00  7C 08 03 A6 */	mtlr r0
/* 804A0F04  38 21 00 70 */	addi r1, r1, 0x70
/* 804A0F08  4E 80 00 20 */	blr 
