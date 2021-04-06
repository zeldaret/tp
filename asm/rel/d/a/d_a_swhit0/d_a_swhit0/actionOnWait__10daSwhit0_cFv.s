lbl_80486FC0:
/* 80486FC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80486FC4  7C 08 02 A6 */	mflr r0
/* 80486FC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80486FCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80486FD0  7C 7F 1B 78 */	mr r31, r3
/* 80486FD4  4B FF F0 25 */	bl getSwNo__10daSwhit0_cFv
/* 80486FD8  7C 64 1B 78 */	mr r4, r3
/* 80486FDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80486FE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80486FE4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80486FE8  7C 05 07 74 */	extsb r5, r0
/* 80486FEC  4B BA E3 75 */	bl isSwitch__10dSv_info_cCFii
/* 80486FF0  2C 03 00 00 */	cmpwi r3, 0
/* 80486FF4  41 82 00 14 */	beq lbl_80487008
/* 80486FF8  7F E3 FB 78 */	mr r3, r31
/* 80486FFC  4B FF F7 8D */	bl endCombackTimer__10daSwhit0_cFv
/* 80487000  2C 03 00 00 */	cmpwi r3, 0
/* 80487004  41 82 00 1C */	beq lbl_80487020
lbl_80487008:
/* 80487008  7F E3 FB 78 */	mr r3, r31
/* 8048700C  4B FF F8 4D */	bl offSwitch__10daSwhit0_cFv
/* 80487010  38 00 00 01 */	li r0, 1
/* 80487014  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 80487018  38 60 00 01 */	li r3, 1
/* 8048701C  48 00 00 B0 */	b lbl_804870CC
lbl_80487020:
/* 80487020  7F E3 FB 78 */	mr r3, r31
/* 80487024  4B FF F6 69 */	bl checkHit__10daSwhit0_cFv
/* 80487028  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8048702C  41 82 00 9C */	beq lbl_804870C8
/* 80487030  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80487034  7C 03 07 74 */	extsb r3, r0
/* 80487038  4B BA 60 35 */	bl dComIfGp_getReverb__Fi
/* 8048703C  7C 67 1B 78 */	mr r7, r3
/* 80487040  3C 60 00 04 */	lis r3, 0x0004 /* 0x00040024@ha */
/* 80487044  38 03 00 24 */	addi r0, r3, 0x0024 /* 0x00040024@l */
/* 80487048  90 01 00 08 */	stw r0, 8(r1)
/* 8048704C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80487050  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80487054  80 63 00 00 */	lwz r3, 0(r3)
/* 80487058  38 81 00 08 */	addi r4, r1, 8
/* 8048705C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80487060  38 C0 00 00 */	li r6, 0
/* 80487064  3D 00 80 48 */	lis r8, lit_3685@ha /* 0x80487370@ha */
/* 80487068  C0 28 73 70 */	lfs f1, lit_3685@l(r8)  /* 0x80487370@l */
/* 8048706C  FC 40 08 90 */	fmr f2, f1
/* 80487070  3D 00 80 48 */	lis r8, lit_3982@ha /* 0x80487378@ha */
/* 80487074  C0 68 73 78 */	lfs f3, lit_3982@l(r8)  /* 0x80487378@l */
/* 80487078  FC 80 18 90 */	fmr f4, f3
/* 8048707C  39 00 00 00 */	li r8, 0
/* 80487080  4B E2 49 05 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80487084  7F E3 FB 78 */	mr r3, r31
/* 80487088  4B FF EF C1 */	bl getType__10daSwhit0_cFv
/* 8048708C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80487090  41 82 00 38 */	beq lbl_804870C8
/* 80487094  A8 1F 07 56 */	lha r0, 0x756(r31)
/* 80487098  2C 00 FF FF */	cmpwi r0, -1
/* 8048709C  40 82 00 14 */	bne lbl_804870B0
/* 804870A0  38 00 00 00 */	li r0, 0
/* 804870A4  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 804870A8  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 804870AC  48 00 00 14 */	b lbl_804870C0
lbl_804870B0:
/* 804870B0  38 00 00 07 */	li r0, 7
/* 804870B4  98 1F 07 4D */	stb r0, 0x74d(r31)
/* 804870B8  38 00 00 05 */	li r0, 5
/* 804870BC  98 1F 07 4E */	stb r0, 0x74e(r31)
lbl_804870C0:
/* 804870C0  38 60 00 01 */	li r3, 1
/* 804870C4  48 00 00 08 */	b lbl_804870CC
lbl_804870C8:
/* 804870C8  38 60 00 01 */	li r3, 1
lbl_804870CC:
/* 804870CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804870D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804870D4  7C 08 03 A6 */	mtlr r0
/* 804870D8  38 21 00 20 */	addi r1, r1, 0x20
/* 804870DC  4E 80 00 20 */	blr 
