lbl_80A8A234:
/* 80A8A234  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A8A238  7C 08 02 A6 */	mflr r0
/* 80A8A23C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A8A240  39 61 00 30 */	addi r11, r1, 0x30
/* 80A8A244  4B 8D 7F 94 */	b _savegpr_28
/* 80A8A248  7C 7C 1B 78 */	mr r28, r3
/* 80A8A24C  3C 80 80 A9 */	lis r4, lit_3990@ha
/* 80A8A250  3B E4 24 1C */	addi r31, r4, lit_3990@l
/* 80A8A254  88 03 07 00 */	lbz r0, 0x700(r3)
/* 80A8A258  7C 00 07 75 */	extsb. r0, r0
/* 80A8A25C  40 82 00 18 */	bne lbl_80A8A274
/* 80A8A260  38 00 00 02 */	li r0, 2
/* 80A8A264  B0 1C 06 42 */	sth r0, 0x642(r28)
/* 80A8A268  38 00 00 00 */	li r0, 0
/* 80A8A26C  B0 1C 06 46 */	sth r0, 0x646(r28)
/* 80A8A270  48 00 06 6C */	b lbl_80A8A8DC
lbl_80A8A274:
/* 80A8A274  3B A0 0A 00 */	li r29, 0xa00
/* 80A8A278  3B C0 00 00 */	li r30, 0
/* 80A8A27C  A8 1C 06 46 */	lha r0, 0x646(r28)
/* 80A8A280  2C 00 00 02 */	cmpwi r0, 2
/* 80A8A284  41 82 02 A0 */	beq lbl_80A8A524
/* 80A8A288  40 80 00 14 */	bge lbl_80A8A29C
/* 80A8A28C  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A290  41 82 00 24 */	beq lbl_80A8A2B4
/* 80A8A294  40 80 00 90 */	bge lbl_80A8A324
/* 80A8A298  48 00 05 44 */	b lbl_80A8A7DC
lbl_80A8A29C:
/* 80A8A29C  2C 00 00 06 */	cmpwi r0, 6
/* 80A8A2A0  41 82 03 D0 */	beq lbl_80A8A670
/* 80A8A2A4  40 80 05 38 */	bge lbl_80A8A7DC
/* 80A8A2A8  2C 00 00 05 */	cmpwi r0, 5
/* 80A8A2AC  40 80 03 9C */	bge lbl_80A8A648
/* 80A8A2B0  48 00 05 2C */	b lbl_80A8A7DC
lbl_80A8A2B4:
/* 80A8A2B4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8A2B8  D0 1C 06 38 */	stfs f0, 0x638(r28)
/* 80A8A2BC  38 80 00 19 */	li r4, 0x19
/* 80A8A2C0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80A8A2C4  38 A0 00 02 */	li r5, 2
/* 80A8A2C8  C0 5C 06 38 */	lfs f2, 0x638(r28)
/* 80A8A2CC  4B FF EA 49 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8A2D0  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80A8A2D4  4B 7D D6 B8 */	b cM_rndFX__Ff
/* 80A8A2D8  FC 00 08 1E */	fctiwz f0, f1
/* 80A8A2DC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8A2E0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A8A2E4  A8 7C 05 DC */	lha r3, 0x5dc(r28)
/* 80A8A2E8  3C 03 00 01 */	addis r0, r3, 1
/* 80A8A2EC  7C 60 22 14 */	add r3, r0, r4
/* 80A8A2F0  38 03 80 00 */	addi r0, r3, -32768
/* 80A8A2F4  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 80A8A2F8  7F 83 E3 78 */	mr r3, r28
/* 80A8A2FC  A8 9C 05 D0 */	lha r4, 0x5d0(r28)
/* 80A8A300  4B FF FA 29 */	bl way_check__FP12npc_ne_classs
/* 80A8A304  A8 7C 06 46 */	lha r3, 0x646(r28)
/* 80A8A308  38 03 00 01 */	addi r0, r3, 1
/* 80A8A30C  B0 1C 06 46 */	sth r0, 0x646(r28)
/* 80A8A310  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80A8A314  4B 7D D6 78 */	b cM_rndFX__Ff
/* 80A8A318  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8A31C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A320  D0 1C 05 E0 */	stfs f0, 0x5e0(r28)
lbl_80A8A324:
/* 80A8A324  3B A0 02 00 */	li r29, 0x200
/* 80A8A328  A8 1C 06 52 */	lha r0, 0x652(r28)
/* 80A8A32C  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A330  40 82 00 44 */	bne lbl_80A8A374
/* 80A8A334  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80A8A338  4B 7D D6 1C */	b cM_rndF__Ff
/* 80A8A33C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A8A340  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A344  FC 00 00 1E */	fctiwz f0, f0
/* 80A8A348  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8A34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8A350  B0 1C 06 52 */	sth r0, 0x652(r28)
/* 80A8A354  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A8A358  4B 7D D5 FC */	b cM_rndF__Ff
/* 80A8A35C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A8A360  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A364  FC 00 00 1E */	fctiwz f0, f0
/* 80A8A368  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8A36C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A8A370  B0 1C 06 78 */	sth r0, 0x678(r28)
lbl_80A8A374:
/* 80A8A374  38 7C 06 38 */	addi r3, r28, 0x638
/* 80A8A378  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8A37C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8A380  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80A8A384  4B 7E 56 B8 */	b cLib_addCalc2__FPffff
/* 80A8A388  3C 60 80 A9 */	lis r3, l_HIO@ha
/* 80A8A38C  38 63 2A D4 */	addi r3, r3, l_HIO@l
/* 80A8A390  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80A8A394  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80A8A398  C0 1C 06 38 */	lfs f0, 0x638(r28)
/* 80A8A39C  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8A3A0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8A3A4  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80A8A3A8  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8A3AC  4B 7E 56 90 */	b cLib_addCalc2__FPffff
/* 80A8A3B0  C0 3C 05 D8 */	lfs f1, 0x5d8(r28)
/* 80A8A3B4  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80A8A3B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8A3BC  40 81 00 50 */	ble lbl_80A8A40C
/* 80A8A3C0  38 00 00 02 */	li r0, 2
/* 80A8A3C4  B0 1C 06 46 */	sth r0, 0x646(r28)
/* 80A8A3C8  A8 9C 05 D0 */	lha r4, 0x5d0(r28)
/* 80A8A3CC  A8 BC 05 DC */	lha r5, 0x5dc(r28)
/* 80A8A3D0  3C 65 00 01 */	addis r3, r5, 1
/* 80A8A3D4  38 03 80 00 */	addi r0, r3, -32768
/* 80A8A3D8  7C 00 07 34 */	extsh r0, r0
/* 80A8A3DC  7C 04 00 00 */	cmpw r4, r0
/* 80A8A3E0  40 81 00 10 */	ble lbl_80A8A3F0
/* 80A8A3E4  38 03 B0 00 */	addi r0, r3, -20480
/* 80A8A3E8  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 80A8A3EC  48 00 00 0C */	b lbl_80A8A3F8
lbl_80A8A3F0:
/* 80A8A3F0  38 05 50 00 */	addi r0, r5, 0x5000
/* 80A8A3F4  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
lbl_80A8A3F8:
/* 80A8A3F8  38 00 00 14 */	li r0, 0x14
/* 80A8A3FC  B0 1C 06 4C */	sth r0, 0x64c(r28)
/* 80A8A400  38 00 00 00 */	li r0, 0
/* 80A8A404  B0 1C 06 4E */	sth r0, 0x64e(r28)
/* 80A8A408  48 00 03 D4 */	b lbl_80A8A7DC
lbl_80A8A40C:
/* 80A8A40C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8A410  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8A414  40 80 00 70 */	bge lbl_80A8A484
/* 80A8A418  38 00 00 05 */	li r0, 5
/* 80A8A41C  B0 1C 06 46 */	sth r0, 0x646(r28)
/* 80A8A420  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80A8A424  4B 7D D5 68 */	b cM_rndFX__Ff
/* 80A8A428  FC 00 08 1E */	fctiwz f0, f1
/* 80A8A42C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8A430  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80A8A434  A8 7C 05 DC */	lha r3, 0x5dc(r28)
/* 80A8A438  3C 03 00 01 */	addis r0, r3, 1
/* 80A8A43C  7C 60 22 14 */	add r3, r0, r4
/* 80A8A440  38 03 80 00 */	addi r0, r3, -32768
/* 80A8A444  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 80A8A448  7F 83 E3 78 */	mr r3, r28
/* 80A8A44C  A8 9C 05 D0 */	lha r4, 0x5d0(r28)
/* 80A8A450  4B FF F8 D9 */	bl way_check__FP12npc_ne_classs
/* 80A8A454  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050003@ha */
/* 80A8A458  38 03 00 03 */	addi r0, r3, 0x0003 /* 0x00050003@l */
/* 80A8A45C  90 01 00 08 */	stw r0, 8(r1)
/* 80A8A460  38 7C 06 0C */	addi r3, r28, 0x60c
/* 80A8A464  38 81 00 08 */	addi r4, r1, 8
/* 80A8A468  38 A0 00 00 */	li r5, 0
/* 80A8A46C  38 C0 FF FF */	li r6, -1
/* 80A8A470  81 9C 06 1C */	lwz r12, 0x61c(r28)
/* 80A8A474  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80A8A478  7D 89 03 A6 */	mtctr r12
/* 80A8A47C  4E 80 04 21 */	bctrl 
/* 80A8A480  48 00 03 5C */	b lbl_80A8A7DC
lbl_80A8A484:
/* 80A8A484  A8 1C 06 4E */	lha r0, 0x64e(r28)
/* 80A8A488  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A48C  40 82 00 90 */	bne lbl_80A8A51C
/* 80A8A490  A8 1C 06 40 */	lha r0, 0x640(r28)
/* 80A8A494  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8A498  41 82 00 14 */	beq lbl_80A8A4AC
/* 80A8A49C  7F 83 E3 78 */	mr r3, r28
/* 80A8A4A0  38 80 00 00 */	li r4, 0
/* 80A8A4A4  4B FF EE 31 */	bl way_bg_check__FP12npc_ne_classs
/* 80A8A4A8  7C 7E 1B 78 */	mr r30, r3
lbl_80A8A4AC:
/* 80A8A4AC  2C 1E 00 00 */	cmpwi r30, 0
/* 80A8A4B0  40 82 00 1C */	bne lbl_80A8A4CC
/* 80A8A4B4  80 1C 07 70 */	lwz r0, 0x770(r28)
/* 80A8A4B8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A8A4BC  40 82 00 10 */	bne lbl_80A8A4CC
/* 80A8A4C0  A8 1C 06 40 */	lha r0, 0x640(r28)
/* 80A8A4C4  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 80A8A4C8  40 82 00 38 */	bne lbl_80A8A500
lbl_80A8A4CC:
/* 80A8A4CC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80A8A4D0  4B 7D D4 BC */	b cM_rndFX__Ff
/* 80A8A4D4  FC 00 08 1E */	fctiwz f0, f1
/* 80A8A4D8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8A4DC  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80A8A4E0  A8 7C 05 DC */	lha r3, 0x5dc(r28)
/* 80A8A4E4  3C 03 00 01 */	addis r0, r3, 1
/* 80A8A4E8  7C 60 22 14 */	add r3, r0, r4
/* 80A8A4EC  38 03 80 00 */	addi r0, r3, -32768
/* 80A8A4F0  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 80A8A4F4  7F 83 E3 78 */	mr r3, r28
/* 80A8A4F8  A8 9C 05 D0 */	lha r4, 0x5d0(r28)
/* 80A8A4FC  4B FF F8 2D */	bl way_check__FP12npc_ne_classs
lbl_80A8A500:
/* 80A8A500  A8 1C 06 54 */	lha r0, 0x654(r28)
/* 80A8A504  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A508  41 82 00 0C */	beq lbl_80A8A514
/* 80A8A50C  3B A0 06 00 */	li r29, 0x600
/* 80A8A510  48 00 02 CC */	b lbl_80A8A7DC
lbl_80A8A514:
/* 80A8A514  3B A0 02 00 */	li r29, 0x200
/* 80A8A518  48 00 02 C4 */	b lbl_80A8A7DC
lbl_80A8A51C:
/* 80A8A51C  3B A0 04 00 */	li r29, 0x400
/* 80A8A520  48 00 02 BC */	b lbl_80A8A7DC
lbl_80A8A524:
/* 80A8A524  38 7C 06 38 */	addi r3, r28, 0x638
/* 80A8A528  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80A8A52C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8A530  C0 7F 00 88 */	lfs f3, 0x88(r31)
/* 80A8A534  4B 7E 55 08 */	b cLib_addCalc2__FPffff
/* 80A8A538  3C 60 80 A9 */	lis r3, l_HIO@ha
/* 80A8A53C  38 63 2A D4 */	addi r3, r3, l_HIO@l
/* 80A8A540  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80A8A544  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80A8A548  C0 1C 06 38 */	lfs f0, 0x638(r28)
/* 80A8A54C  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8A550  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8A554  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80A8A558  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8A55C  4B 7E 54 E0 */	b cLib_addCalc2__FPffff
/* 80A8A560  A8 1C 06 4E */	lha r0, 0x64e(r28)
/* 80A8A564  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A568  40 82 00 68 */	bne lbl_80A8A5D0
/* 80A8A56C  7F 83 E3 78 */	mr r3, r28
/* 80A8A570  38 80 00 00 */	li r4, 0
/* 80A8A574  4B FF ED 61 */	bl way_bg_check__FP12npc_ne_classs
/* 80A8A578  2C 03 00 02 */	cmpwi r3, 2
/* 80A8A57C  41 80 00 4C */	blt lbl_80A8A5C8
/* 80A8A580  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A8A584  4B 7D D3 D0 */	b cM_rndF__Ff
/* 80A8A588  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80A8A58C  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A590  FC 00 00 1E */	fctiwz f0, f0
/* 80A8A594  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8A598  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A8A59C  B0 1C 06 4E */	sth r0, 0x64e(r28)
/* 80A8A5A0  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A8A5A4  4B 7D D3 E8 */	b cM_rndFX__Ff
/* 80A8A5A8  FC 00 08 1E */	fctiwz f0, f1
/* 80A8A5AC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8A5B0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80A8A5B4  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80A8A5B8  3C 03 00 01 */	addis r0, r3, 1
/* 80A8A5BC  7C 60 22 14 */	add r3, r0, r4
/* 80A8A5C0  38 03 80 00 */	addi r0, r3, -32768
/* 80A8A5C4  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
lbl_80A8A5C8:
/* 80A8A5C8  3B A0 02 00 */	li r29, 0x200
/* 80A8A5CC  48 00 00 08 */	b lbl_80A8A5D4
lbl_80A8A5D0:
/* 80A8A5D0  3B A0 04 00 */	li r29, 0x400
lbl_80A8A5D4:
/* 80A8A5D4  38 00 00 01 */	li r0, 1
/* 80A8A5D8  98 1C 06 68 */	stb r0, 0x668(r28)
/* 80A8A5DC  A8 1C 06 4C */	lha r0, 0x64c(r28)
/* 80A8A5E0  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A5E4  40 82 01 F8 */	bne lbl_80A8A7DC
/* 80A8A5E8  38 00 00 00 */	li r0, 0
/* 80A8A5EC  B0 1C 06 42 */	sth r0, 0x642(r28)
/* 80A8A5F0  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80A8A5F4  4B 7D D3 60 */	b cM_rndF__Ff
/* 80A8A5F8  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8A5FC  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A600  D0 1C 06 38 */	stfs f0, 0x638(r28)
/* 80A8A604  7F 83 E3 78 */	mr r3, r28
/* 80A8A608  38 80 00 18 */	li r4, 0x18
/* 80A8A60C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8A610  38 A0 00 02 */	li r5, 2
/* 80A8A614  C0 5C 06 38 */	lfs f2, 0x638(r28)
/* 80A8A618  4B FF E6 FD */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8A61C  38 00 00 02 */	li r0, 2
/* 80A8A620  B0 1C 06 46 */	sth r0, 0x646(r28)
/* 80A8A624  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80A8A628  4B 7D D3 2C */	b cM_rndF__Ff
/* 80A8A62C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8A630  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A634  FC 00 00 1E */	fctiwz f0, f0
/* 80A8A638  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8A63C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A8A640  B0 1C 06 4C */	sth r0, 0x64c(r28)
/* 80A8A644  48 00 01 98 */	b lbl_80A8A7DC
lbl_80A8A648:
/* 80A8A648  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A8A64C  D0 1C 06 38 */	stfs f0, 0x638(r28)
/* 80A8A650  38 80 00 11 */	li r4, 0x11
/* 80A8A654  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80A8A658  38 A0 00 02 */	li r5, 2
/* 80A8A65C  C0 5C 06 38 */	lfs f2, 0x638(r28)
/* 80A8A660  4B FF E6 B5 */	bl anm_init__FP12npc_ne_classifUcf
/* 80A8A664  A8 7C 06 46 */	lha r3, 0x646(r28)
/* 80A8A668  38 03 00 01 */	addi r0, r3, 1
/* 80A8A66C  B0 1C 06 46 */	sth r0, 0x646(r28)
lbl_80A8A670:
/* 80A8A670  A8 1C 06 52 */	lha r0, 0x652(r28)
/* 80A8A674  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A678  40 82 00 44 */	bne lbl_80A8A6BC
/* 80A8A67C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 80A8A680  4B 7D D2 D4 */	b cM_rndF__Ff
/* 80A8A684  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A8A688  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A68C  FC 00 00 1E */	fctiwz f0, f0
/* 80A8A690  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8A694  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A8A698  B0 1C 06 52 */	sth r0, 0x652(r28)
/* 80A8A69C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80A8A6A0  4B 7D D2 B4 */	b cM_rndF__Ff
/* 80A8A6A4  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80A8A6A8  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A6AC  FC 00 00 1E */	fctiwz f0, f0
/* 80A8A6B0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8A6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8A6B8  B0 1C 06 78 */	sth r0, 0x678(r28)
lbl_80A8A6BC:
/* 80A8A6BC  38 7C 06 38 */	addi r3, r28, 0x638
/* 80A8A6C0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A8A6C4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8A6C8  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8A6CC  4B 7E 53 70 */	b cLib_addCalc2__FPffff
/* 80A8A6D0  3C 60 80 A9 */	lis r3, l_HIO@ha
/* 80A8A6D4  38 63 2A D4 */	addi r3, r3, l_HIO@l
/* 80A8A6D8  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 80A8A6DC  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80A8A6E0  C0 1C 06 38 */	lfs f0, 0x638(r28)
/* 80A8A6E4  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80A8A6E8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80A8A6EC  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80A8A6F0  EC 60 00 F2 */	fmuls f3, f0, f3
/* 80A8A6F4  4B 7E 53 48 */	b cLib_addCalc2__FPffff
/* 80A8A6F8  A8 1C 06 40 */	lha r0, 0x640(r28)
/* 80A8A6FC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A8A700  41 82 00 14 */	beq lbl_80A8A714
/* 80A8A704  7F 83 E3 78 */	mr r3, r28
/* 80A8A708  38 80 00 00 */	li r4, 0
/* 80A8A70C  4B FF EB C9 */	bl way_bg_check__FP12npc_ne_classs
/* 80A8A710  7C 7E 1B 78 */	mr r30, r3
lbl_80A8A714:
/* 80A8A714  2C 1E 00 00 */	cmpwi r30, 0
/* 80A8A718  40 82 00 1C */	bne lbl_80A8A734
/* 80A8A71C  80 1C 07 70 */	lwz r0, 0x770(r28)
/* 80A8A720  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A8A724  40 82 00 10 */	bne lbl_80A8A734
/* 80A8A728  A8 1C 06 40 */	lha r0, 0x640(r28)
/* 80A8A72C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80A8A730  40 82 00 38 */	bne lbl_80A8A768
lbl_80A8A734:
/* 80A8A734  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80A8A738  4B 7D D2 54 */	b cM_rndFX__Ff
/* 80A8A73C  FC 00 08 1E */	fctiwz f0, f1
/* 80A8A740  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8A744  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80A8A748  A8 7C 05 DC */	lha r3, 0x5dc(r28)
/* 80A8A74C  3C 03 00 01 */	addis r0, r3, 1
/* 80A8A750  7C 60 22 14 */	add r3, r0, r4
/* 80A8A754  38 03 80 00 */	addi r0, r3, -32768
/* 80A8A758  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 80A8A75C  7F 83 E3 78 */	mr r3, r28
/* 80A8A760  A8 9C 05 D0 */	lha r4, 0x5d0(r28)
/* 80A8A764  4B FF F5 C5 */	bl way_check__FP12npc_ne_classs
lbl_80A8A768:
/* 80A8A768  A8 1C 06 4C */	lha r0, 0x64c(r28)
/* 80A8A76C  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A770  40 82 00 44 */	bne lbl_80A8A7B4
/* 80A8A774  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80A8A778  4B 7D D2 14 */	b cM_rndFX__Ff
/* 80A8A77C  FC 00 08 1E */	fctiwz f0, f1
/* 80A8A780  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8A784  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80A8A788  A8 1C 05 D0 */	lha r0, 0x5d0(r28)
/* 80A8A78C  7C 00 1A 14 */	add r0, r0, r3
/* 80A8A790  B0 1C 05 D0 */	sth r0, 0x5d0(r28)
/* 80A8A794  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80A8A798  4B 7D D1 BC */	b cM_rndF__Ff
/* 80A8A79C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80A8A7A0  EC 00 08 2A */	fadds f0, f0, f1
/* 80A8A7A4  FC 00 00 1E */	fctiwz f0, f0
/* 80A8A7A8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80A8A7AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8A7B0  B0 1C 06 4C */	sth r0, 0x64c(r28)
lbl_80A8A7B4:
/* 80A8A7B4  C0 3C 05 D8 */	lfs f1, 0x5d8(r28)
/* 80A8A7B8  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80A8A7BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8A7C0  40 81 00 1C */	ble lbl_80A8A7DC
/* 80A8A7C4  A8 1C 06 50 */	lha r0, 0x650(r28)
/* 80A8A7C8  2C 00 00 00 */	cmpwi r0, 0
/* 80A8A7CC  40 82 00 10 */	bne lbl_80A8A7DC
/* 80A8A7D0  38 00 00 00 */	li r0, 0
/* 80A8A7D4  B0 1C 06 42 */	sth r0, 0x642(r28)
/* 80A8A7D8  B0 1C 06 46 */	sth r0, 0x646(r28)
lbl_80A8A7DC:
/* 80A8A7DC  AB DC 04 DE */	lha r30, 0x4de(r28)
/* 80A8A7E0  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80A8A7E4  A8 9C 05 D0 */	lha r4, 0x5d0(r28)
/* 80A8A7E8  38 A0 00 04 */	li r5, 4
/* 80A8A7EC  7F A6 EB 78 */	mr r6, r29
/* 80A8A7F0  4B 7E 5E 18 */	b cLib_addCalcAngleS2__FPssss
/* 80A8A7F4  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80A8A7F8  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80A8A7FC  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A8A800  7C 1E 00 50 */	subf r0, r30, r0
/* 80A8A804  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80A8A808  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A8A80C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A8A810  3C 00 43 30 */	lis r0, 0x4330
/* 80A8A814  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A8A818  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80A8A81C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A8A820  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8A824  EC 23 00 32 */	fmuls f1, f3, f0
/* 80A8A828  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80A8A82C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8A830  40 81 00 0C */	ble lbl_80A8A83C
/* 80A8A834  FC 20 00 90 */	fmr f1, f0
/* 80A8A838  48 00 00 14 */	b lbl_80A8A84C
lbl_80A8A83C:
/* 80A8A83C  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80A8A840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8A844  40 80 00 08 */	bge lbl_80A8A84C
/* 80A8A848  FC 20 00 90 */	fmr f1, f0
lbl_80A8A84C:
/* 80A8A84C  FC 00 08 1E */	fctiwz f0, f1
/* 80A8A850  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8A854  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A8A858  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
/* 80A8A85C  7F A0 07 34 */	extsh r0, r29
/* 80A8A860  2C 00 04 00 */	cmpwi r0, 0x400
/* 80A8A864  41 80 00 6C */	blt lbl_80A8A8D0
/* 80A8A868  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80A8A86C  C0 5C 05 2C */	lfs f2, 0x52c(r28)
/* 80A8A870  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A8A874  7C 1E 00 50 */	subf r0, r30, r0
/* 80A8A878  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 80A8A87C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A8A880  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A8A884  3C 00 43 30 */	lis r0, 0x4330
/* 80A8A888  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A8A88C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80A8A890  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A8A894  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A8A898  EC 23 00 32 */	fmuls f1, f3, f0
/* 80A8A89C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80A8A8A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8A8A4  40 81 00 0C */	ble lbl_80A8A8B0
/* 80A8A8A8  FC 20 00 90 */	fmr f1, f0
/* 80A8A8AC  48 00 00 14 */	b lbl_80A8A8C0
lbl_80A8A8B0:
/* 80A8A8B0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80A8A8B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A8A8B8  40 80 00 08 */	bge lbl_80A8A8C0
/* 80A8A8BC  FC 20 00 90 */	fmr f1, f0
lbl_80A8A8C0:
/* 80A8A8C0  FC 00 08 1E */	fctiwz f0, f1
/* 80A8A8C4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80A8A8C8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A8A8CC  B0 1C 06 96 */	sth r0, 0x696(r28)
lbl_80A8A8D0:
/* 80A8A8D0  C0 1C 06 38 */	lfs f0, 0x638(r28)
/* 80A8A8D4  80 7C 05 E8 */	lwz r3, 0x5e8(r28)
/* 80A8A8D8  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80A8A8DC:
/* 80A8A8DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A8A8E0  4B 8D 79 44 */	b _restgpr_28
/* 80A8A8E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A8A8E8  7C 08 03 A6 */	mtlr r0
/* 80A8A8EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A8A8F0  4E 80 00 20 */	blr 
