lbl_80C690D8:
/* 80C690D8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C690DC  7C 08 02 A6 */	mflr r0
/* 80C690E0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C690E4  39 61 00 60 */	addi r11, r1, 0x60
/* 80C690E8  4B 6F 90 F5 */	bl _savegpr_29
/* 80C690EC  7C 7F 1B 78 */	mr r31, r3
/* 80C690F0  7C 9D 23 78 */	mr r29, r4
/* 80C690F4  3C 60 80 C7 */	lis r3, l_dzbidx@ha /* 0x80C698E8@ha */
/* 80C690F8  3B C3 98 E8 */	addi r30, r3, l_dzbidx@l /* 0x80C698E8@l */
/* 80C690FC  3C 60 80 C7 */	lis r3, searchObjSwTurn__FPvPv@ha /* 0x80C69064@ha */
/* 80C69100  38 63 90 64 */	addi r3, r3, searchObjSwTurn__FPvPv@l /* 0x80C69064@l */
/* 80C69104  7F E4 FB 78 */	mr r4, r31
/* 80C69108  4B 3B 06 F1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 80C6910C  28 03 00 00 */	cmplwi r3, 0
/* 80C69110  41 82 00 98 */	beq lbl_80C691A8
/* 80C69114  88 03 05 AD */	lbz r0, 0x5ad(r3)
/* 80C69118  28 00 00 00 */	cmplwi r0, 0
/* 80C6911C  40 82 00 18 */	bne lbl_80C69134
/* 80C69120  A8 83 05 BA */	lha r4, 0x5ba(r3)
/* 80C69124  A8 03 05 C4 */	lha r0, 0x5c4(r3)
/* 80C69128  54 00 70 22 */	slwi r0, r0, 0xe
/* 80C6912C  7C 04 02 14 */	add r0, r4, r0
/* 80C69130  48 00 00 1C */	b lbl_80C6914C
lbl_80C69134:
/* 80C69134  A8 83 05 BA */	lha r4, 0x5ba(r3)
/* 80C69138  A8 03 05 C4 */	lha r0, 0x5c4(r3)
/* 80C6913C  54 03 70 22 */	slwi r3, r0, 0xe
/* 80C69140  38 00 00 03 */	li r0, 3
/* 80C69144  7C 03 03 D6 */	divw r0, r3, r0
/* 80C69148  7C 04 02 14 */	add r0, r4, r0
lbl_80C6914C:
/* 80C6914C  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 80C69150  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80C69154  A8 1F 06 10 */	lha r0, 0x610(r31)
/* 80C69158  7C 03 00 00 */	cmpw r3, r0
/* 80C6915C  41 82 00 18 */	beq lbl_80C69174
/* 80C69160  38 00 00 01 */	li r0, 1
/* 80C69164  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 80C69168  38 00 00 00 */	li r0, 0
/* 80C6916C  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80C69170  48 00 00 2C */	b lbl_80C6919C
lbl_80C69174:
/* 80C69174  88 1F 06 18 */	lbz r0, 0x618(r31)
/* 80C69178  28 00 00 00 */	cmplwi r0, 0
/* 80C6917C  40 82 00 18 */	bne lbl_80C69194
/* 80C69180  38 00 00 01 */	li r0, 1
/* 80C69184  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80C69188  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80C6918C  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 80C69190  98 1F 06 19 */	stb r0, 0x619(r31)
lbl_80C69194:
/* 80C69194  38 00 00 00 */	li r0, 0
/* 80C69198  B0 1F 06 0C */	sth r0, 0x60c(r31)
lbl_80C6919C:
/* 80C6919C  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80C691A0  B0 1F 06 10 */	sth r0, 0x610(r31)
/* 80C691A4  48 00 02 7C */	b lbl_80C69420
lbl_80C691A8:
/* 80C691A8  88 1F 06 29 */	lbz r0, 0x629(r31)
/* 80C691AC  28 00 00 00 */	cmplwi r0, 0
/* 80C691B0  40 82 02 70 */	bne lbl_80C69420
/* 80C691B4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C691B8  54 04 EE 3E */	rlwinm r4, r0, 0x1d, 0x18, 0x1f
/* 80C691BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C691C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C691C4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C691C8  7C 05 07 74 */	extsb r5, r0
/* 80C691CC  4B 3C C1 95 */	bl isSwitch__10dSv_info_cCFii
/* 80C691D0  2C 03 00 00 */	cmpwi r3, 0
/* 80C691D4  40 82 00 30 */	bne lbl_80C69204
/* 80C691D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C691DC  54 04 6E 3E */	rlwinm r4, r0, 0xd, 0x18, 0x1f
/* 80C691E0  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C691E4  41 82 01 4C */	beq lbl_80C69330
/* 80C691E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C691EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C691F0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C691F4  7C 05 07 74 */	extsb r5, r0
/* 80C691F8  4B 3C C1 69 */	bl isSwitch__10dSv_info_cCFii
/* 80C691FC  2C 03 00 00 */	cmpwi r3, 0
/* 80C69200  41 82 01 30 */	beq lbl_80C69330
lbl_80C69204:
/* 80C69204  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80C69208  2C 03 C0 01 */	cmpwi r3, -16383
/* 80C6920C  40 81 00 3C */	ble lbl_80C69248
/* 80C69210  A8 1F 06 0C */	lha r0, 0x60c(r31)
/* 80C69214  7C 03 02 14 */	add r0, r3, r0
/* 80C69218  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 80C6921C  A8 7F 06 0C */	lha r3, 0x60c(r31)
/* 80C69220  2C 03 FF C0 */	cmpwi r3, -64
/* 80C69224  41 81 00 10 */	bgt lbl_80C69234
/* 80C69228  38 00 FF C0 */	li r0, -64
/* 80C6922C  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 80C69230  48 00 00 0C */	b lbl_80C6923C
lbl_80C69234:
/* 80C69234  38 03 FF FF */	addi r0, r3, -1
/* 80C69238  B0 1F 06 0C */	sth r0, 0x60c(r31)
lbl_80C6923C:
/* 80C6923C  38 00 00 00 */	li r0, 0
/* 80C69240  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80C69244  48 00 01 DC */	b lbl_80C69420
lbl_80C69248:
/* 80C69248  88 1F 06 18 */	lbz r0, 0x618(r31)
/* 80C6924C  28 00 00 00 */	cmplwi r0, 0
/* 80C69250  40 82 00 CC */	bne lbl_80C6931C
/* 80C69254  38 00 00 01 */	li r0, 1
/* 80C69258  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80C6925C  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80C69260  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C69264  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80C69268  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C6926C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C69270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C69274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C69278  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C6927C  38 80 00 08 */	li r4, 8
/* 80C69280  38 A0 00 1F */	li r5, 0x1f
/* 80C69284  38 C1 00 30 */	addi r6, r1, 0x30
/* 80C69288  4B 40 67 9D */	bl StartShock__12dVibration_cFii4cXyz
/* 80C6928C  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80C69290  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 80C69294  38 60 00 01 */	li r3, 1
/* 80C69298  98 7F 06 19 */	stb r3, 0x619(r31)
/* 80C6929C  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C692A0  2C 00 00 00 */	cmpwi r0, 0
/* 80C692A4  40 82 00 2C */	bne lbl_80C692D0
/* 80C692A8  98 7F 06 29 */	stb r3, 0x629(r31)
/* 80C692AC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C692B0  54 04 AE 3E */	rlwinm r4, r0, 0x15, 0x18, 0x1f
/* 80C692B4  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C692B8  41 82 00 18 */	beq lbl_80C692D0
/* 80C692BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C692C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C692C4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C692C8  7C 05 07 74 */	extsb r5, r0
/* 80C692CC  4B 3C BF 35 */	bl onSwitch__10dSv_info_cFii
lbl_80C692D0:
/* 80C692D0  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C692D4  2C 00 00 00 */	cmpwi r0, 0
/* 80C692D8  40 82 00 44 */	bne lbl_80C6931C
/* 80C692DC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A2@ha */
/* 80C692E0  38 03 01 A2 */	addi r0, r3, 0x01A2 /* 0x000801A2@l */
/* 80C692E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C692E8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C692EC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C692F0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C692F4  38 81 00 14 */	addi r4, r1, 0x14
/* 80C692F8  38 A0 00 00 */	li r5, 0
/* 80C692FC  38 C0 00 00 */	li r6, 0
/* 80C69300  38 E0 00 00 */	li r7, 0
/* 80C69304  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80C69308  FC 40 08 90 */	fmr f2, f1
/* 80C6930C  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80C69310  FC 80 18 90 */	fmr f4, f3
/* 80C69314  39 00 00 00 */	li r8, 0
/* 80C69318  4B 64 26 6D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C6931C:
/* 80C6931C  38 00 C0 01 */	li r0, -16383
/* 80C69320  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 80C69324  38 00 00 00 */	li r0, 0
/* 80C69328  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 80C6932C  48 00 00 F4 */	b lbl_80C69420
lbl_80C69330:
/* 80C69330  A8 7F 06 0E */	lha r3, 0x60e(r31)
/* 80C69334  2C 03 00 00 */	cmpwi r3, 0
/* 80C69338  40 80 00 3C */	bge lbl_80C69374
/* 80C6933C  A8 1F 06 0C */	lha r0, 0x60c(r31)
/* 80C69340  7C 03 02 14 */	add r0, r3, r0
/* 80C69344  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 80C69348  A8 7F 06 0C */	lha r3, 0x60c(r31)
/* 80C6934C  2C 03 00 40 */	cmpwi r3, 0x40
/* 80C69350  41 80 00 10 */	blt lbl_80C69360
/* 80C69354  38 00 00 40 */	li r0, 0x40
/* 80C69358  B0 1F 06 0C */	sth r0, 0x60c(r31)
/* 80C6935C  48 00 00 0C */	b lbl_80C69368
lbl_80C69360:
/* 80C69360  38 03 00 01 */	addi r0, r3, 1
/* 80C69364  B0 1F 06 0C */	sth r0, 0x60c(r31)
lbl_80C69368:
/* 80C69368  38 00 00 00 */	li r0, 0
/* 80C6936C  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80C69370  48 00 00 B0 */	b lbl_80C69420
lbl_80C69374:
/* 80C69374  88 1F 06 18 */	lbz r0, 0x618(r31)
/* 80C69378  28 00 00 00 */	cmplwi r0, 0
/* 80C6937C  40 82 00 98 */	bne lbl_80C69414
/* 80C69380  38 00 00 01 */	li r0, 1
/* 80C69384  98 1F 06 18 */	stb r0, 0x618(r31)
/* 80C69388  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80C6938C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C69390  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80C69394  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C69398  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80C6939C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C693A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C693A4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C693A8  38 80 00 08 */	li r4, 8
/* 80C693AC  38 A0 00 1F */	li r5, 0x1f
/* 80C693B0  38 C1 00 24 */	addi r6, r1, 0x24
/* 80C693B4  4B 40 66 71 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C693B8  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80C693BC  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 80C693C0  38 00 00 01 */	li r0, 1
/* 80C693C4  98 1F 06 19 */	stb r0, 0x619(r31)
/* 80C693C8  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C693CC  2C 00 00 00 */	cmpwi r0, 0
/* 80C693D0  40 82 00 44 */	bne lbl_80C69414
/* 80C693D4  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A2@ha */
/* 80C693D8  38 03 01 A2 */	addi r0, r3, 0x01A2 /* 0x000801A2@l */
/* 80C693DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C693E0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C693E4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C693E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C693EC  38 81 00 10 */	addi r4, r1, 0x10
/* 80C693F0  38 A0 00 00 */	li r5, 0
/* 80C693F4  38 C0 00 00 */	li r6, 0
/* 80C693F8  38 E0 00 00 */	li r7, 0
/* 80C693FC  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80C69400  FC 40 08 90 */	fmr f2, f1
/* 80C69404  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80C69408  FC 80 18 90 */	fmr f4, f3
/* 80C6940C  39 00 00 00 */	li r8, 0
/* 80C69410  4B 64 25 75 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C69414:
/* 80C69414  38 00 00 00 */	li r0, 0
/* 80C69418  B0 1F 06 0E */	sth r0, 0x60e(r31)
/* 80C6941C  B0 1F 06 0C */	sth r0, 0x60c(r31)
lbl_80C69420:
/* 80C69420  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C69424  54 04 EE 3E */	rlwinm r4, r0, 0x1d, 0x18, 0x1f
/* 80C69428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6942C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C69430  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C69434  7C 05 07 74 */	extsb r5, r0
/* 80C69438  4B 3C BF 29 */	bl isSwitch__10dSv_info_cCFii
/* 80C6943C  2C 03 00 00 */	cmpwi r3, 0
/* 80C69440  41 82 00 58 */	beq lbl_80C69498
/* 80C69444  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C69448  54 04 6E 3E */	rlwinm r4, r0, 0xd, 0x18, 0x1f
/* 80C6944C  2C 04 00 FF */	cmpwi r4, 0xff
/* 80C69450  41 82 00 48 */	beq lbl_80C69498
/* 80C69454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C69458  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6945C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C69460  7C 05 07 74 */	extsb r5, r0
/* 80C69464  4B 3C BE FD */	bl isSwitch__10dSv_info_cCFii
/* 80C69468  2C 03 00 00 */	cmpwi r3, 0
/* 80C6946C  40 82 00 2C */	bne lbl_80C69498
/* 80C69470  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80C69474  2C 00 E5 B1 */	cmpwi r0, -6735
/* 80C69478  40 80 00 20 */	bge lbl_80C69498
/* 80C6947C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C69480  54 04 6E 3E */	rlwinm r4, r0, 0xd, 0x18, 0x1f
/* 80C69484  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C69488  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C6948C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C69490  7C 05 07 74 */	extsb r5, r0
/* 80C69494  4B 3C BD 6D */	bl onSwitch__10dSv_info_cFii
lbl_80C69498:
/* 80C69498  88 1F 06 19 */	lbz r0, 0x619(r31)
/* 80C6949C  28 00 00 00 */	cmplwi r0, 0
/* 80C694A0  41 82 00 6C */	beq lbl_80C6950C
/* 80C694A4  C0 3F 06 20 */	lfs f1, 0x620(r31)
/* 80C694A8  C0 1F 06 1C */	lfs f0, 0x61c(r31)
/* 80C694AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80C694B0  D0 1F 06 20 */	stfs f0, 0x620(r31)
/* 80C694B4  C0 1F 06 1C */	lfs f0, 0x61c(r31)
/* 80C694B8  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 80C694BC  EC 00 18 2A */	fadds f0, f0, f3
/* 80C694C0  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 80C694C4  C0 1F 06 20 */	lfs f0, 0x620(r31)
/* 80C694C8  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80C694CC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80C694D0  4C 41 13 82 */	cror 2, 1, 2
/* 80C694D4  40 82 00 38 */	bne lbl_80C6950C
/* 80C694D8  D0 5F 06 20 */	stfs f2, 0x620(r31)
/* 80C694DC  C0 3F 06 1C */	lfs f1, 0x61c(r31)
/* 80C694E0  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80C694E4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C694E8  D0 1F 06 1C */	stfs f0, 0x61c(r31)
/* 80C694EC  C0 1F 06 1C */	lfs f0, 0x61c(r31)
/* 80C694F0  FC 00 02 10 */	fabs f0, f0
/* 80C694F4  FC 00 00 18 */	frsp f0, f0
/* 80C694F8  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80C694FC  40 80 00 10 */	bge lbl_80C6950C
/* 80C69500  D0 5F 06 1C */	stfs f2, 0x61c(r31)
/* 80C69504  38 00 00 00 */	li r0, 0
/* 80C69508  98 1F 06 19 */	stb r0, 0x619(r31)
lbl_80C6950C:
/* 80C6950C  A8 1F 06 0C */	lha r0, 0x60c(r31)
/* 80C69510  2C 00 00 00 */	cmpwi r0, 0
/* 80C69514  41 82 01 3C */	beq lbl_80C69650
/* 80C69518  A8 1F 06 0E */	lha r0, 0x60e(r31)
/* 80C6951C  54 00 0C 38 */	rlwinm r0, r0, 1, 0x10, 0x1c
/* 80C69520  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C69524  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C69528  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C6952C  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80C69530  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C69534  FC 00 00 1E */	fctiwz f0, f0
/* 80C69538  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80C6953C  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80C69540  2C 03 00 00 */	cmpwi r3, 0
/* 80C69544  40 80 00 08 */	bge lbl_80C6954C
/* 80C69548  1C 63 FF FF */	mulli r3, r3, -1
lbl_80C6954C:
/* 80C6954C  38 63 00 01 */	addi r3, r3, 1
/* 80C69550  2C 03 00 01 */	cmpwi r3, 1
/* 80C69554  40 80 00 08 */	bge lbl_80C6955C
/* 80C69558  38 60 00 01 */	li r3, 1
lbl_80C6955C:
/* 80C6955C  2C 03 00 05 */	cmpwi r3, 5
/* 80C69560  40 81 00 08 */	ble lbl_80C69568
/* 80C69564  38 60 00 05 */	li r3, 5
lbl_80C69568:
/* 80C69568  80 1F 06 24 */	lwz r0, 0x624(r31)
/* 80C6956C  7C 00 18 00 */	cmpw r0, r3
/* 80C69570  41 82 00 40 */	beq lbl_80C695B0
/* 80C69574  90 7F 06 24 */	stw r3, 0x624(r31)
/* 80C69578  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80C6957C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C69580  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 80C69584  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C69588  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C6958C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C69590  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C69594  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C69598  80 9F 06 24 */	lwz r4, 0x624(r31)
/* 80C6959C  38 A0 00 02 */	li r5, 2
/* 80C695A0  38 C1 00 18 */	addi r6, r1, 0x18
/* 80C695A4  4B 40 65 6D */	bl StartQuake__12dVibration_cFii4cXyz
/* 80C695A8  38 00 00 01 */	li r0, 1
/* 80C695AC  98 1F 06 28 */	stb r0, 0x628(r31)
lbl_80C695B0:
/* 80C695B0  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 80C695B4  2C 00 00 00 */	cmpwi r0, 0
/* 80C695B8  40 82 00 C8 */	bne lbl_80C69680
/* 80C695BC  A8 7F 06 0C */	lha r3, 0x60c(r31)
/* 80C695C0  7C 60 07 35 */	extsh. r0, r3
/* 80C695C4  40 80 00 48 */	bge lbl_80C6960C
/* 80C695C8  7C C3 00 D0 */	neg r6, r3
/* 80C695CC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A0@ha */
/* 80C695D0  38 03 01 A0 */	addi r0, r3, 0x01A0 /* 0x000801A0@l */
/* 80C695D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C695D8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C695DC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C695E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C695E4  38 81 00 0C */	addi r4, r1, 0xc
/* 80C695E8  38 A0 00 00 */	li r5, 0
/* 80C695EC  38 E0 00 00 */	li r7, 0
/* 80C695F0  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80C695F4  FC 40 08 90 */	fmr f2, f1
/* 80C695F8  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80C695FC  FC 80 18 90 */	fmr f4, f3
/* 80C69600  39 00 00 00 */	li r8, 0
/* 80C69604  4B 64 2F 09 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C69608  48 00 00 78 */	b lbl_80C69680
lbl_80C6960C:
/* 80C6960C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801A1@ha */
/* 80C69610  38 03 01 A1 */	addi r0, r3, 0x01A1 /* 0x000801A1@l */
/* 80C69614  90 01 00 08 */	stw r0, 8(r1)
/* 80C69618  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80C6961C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80C69620  80 63 00 00 */	lwz r3, 0(r3)
/* 80C69624  38 81 00 08 */	addi r4, r1, 8
/* 80C69628  38 A0 00 00 */	li r5, 0
/* 80C6962C  A8 DF 06 0C */	lha r6, 0x60c(r31)
/* 80C69630  38 E0 00 00 */	li r7, 0
/* 80C69634  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80C69638  FC 40 08 90 */	fmr f2, f1
/* 80C6963C  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 80C69640  FC 80 18 90 */	fmr f4, f3
/* 80C69644  39 00 00 00 */	li r8, 0
/* 80C69648  4B 64 2E C5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C6964C  48 00 00 34 */	b lbl_80C69680
lbl_80C69650:
/* 80C69650  88 1F 06 28 */	lbz r0, 0x628(r31)
/* 80C69654  28 00 00 00 */	cmplwi r0, 0
/* 80C69658  41 82 00 20 */	beq lbl_80C69678
/* 80C6965C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C69660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C69664  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C69668  38 80 00 02 */	li r4, 2
/* 80C6966C  4B 40 67 29 */	bl StopQuake__12dVibration_cFi
/* 80C69670  38 00 00 00 */	li r0, 0
/* 80C69674  98 1F 06 28 */	stb r0, 0x628(r31)
lbl_80C69678:
/* 80C69678  38 00 00 00 */	li r0, 0
/* 80C6967C  90 1F 06 24 */	stw r0, 0x624(r31)
lbl_80C69680:
/* 80C69680  7F E3 FB 78 */	mr r3, r31
/* 80C69684  4B FF F7 55 */	bl setMtx__16daObjLv4PRwall_cFv
/* 80C69688  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 80C6968C  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C69690  38 84 00 24 */	addi r4, r4, 0x24
/* 80C69694  4B 6D CE 1D */	bl PSMTXCopy
/* 80C69698  38 1F 05 A8 */	addi r0, r31, 0x5a8
/* 80C6969C  90 1D 00 00 */	stw r0, 0(r29)
/* 80C696A0  38 60 00 01 */	li r3, 1
/* 80C696A4  39 61 00 60 */	addi r11, r1, 0x60
/* 80C696A8  4B 6F 8B 81 */	bl _restgpr_29
/* 80C696AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C696B0  7C 08 03 A6 */	mtlr r0
/* 80C696B4  38 21 00 60 */	addi r1, r1, 0x60
/* 80C696B8  4E 80 00 20 */	blr 
