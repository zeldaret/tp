lbl_801042F8:
/* 801042F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801042FC  7C 08 02 A6 */	mflr r0
/* 80104300  90 01 00 24 */	stw r0, 0x24(r1)
/* 80104304  39 61 00 20 */	addi r11, r1, 0x20
/* 80104308  48 25 DE D5 */	bl _savegpr_29
/* 8010430C  7C 7F 1B 78 */	mr r31, r3
/* 80104310  7C 9D 23 78 */	mr r29, r4
/* 80104314  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 80104318  54 1E 03 5A */	rlwinm r30, r0, 0, 0xd, 0xd
/* 8010431C  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80104320  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 80104324  41 82 00 28 */	beq lbl_8010434C
/* 80104328  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8010432C  54 00 02 4E */	rlwinm r0, r0, 0, 9, 7
/* 80104330  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80104334  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80104338  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 8010433C  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80104340  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80104344  EC 01 00 2A */	fadds f0, f1, f0
/* 80104348  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_8010434C:
/* 8010434C  7F E3 FB 78 */	mr r3, r31
/* 80104350  38 80 00 7A */	li r4, 0x7a
/* 80104354  4B FB DC 19 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80104358  2C 1D 00 00 */	cmpwi r29, 0
/* 8010435C  41 82 00 30 */	beq lbl_8010438C
/* 80104360  7F E3 FB 78 */	mr r3, r31
/* 80104364  3C 80 00 03 */	lis r4, 0x0003 /* 0x0003001C@ha */
/* 80104368  38 84 00 1C */	addi r4, r4, 0x001C /* 0x0003001C@l */
/* 8010436C  4B FB AE 29 */	bl seStartMapInfo__9daAlink_cFUl
/* 80104370  38 00 00 00 */	li r0, 0
/* 80104374  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 80104378  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 8010437C  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80104380  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 80104384  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 80104388  48 00 00 24 */	b lbl_801043AC
lbl_8010438C:
/* 8010438C  28 1E 00 00 */	cmplwi r30, 0
/* 80104390  40 82 00 1C */	bne lbl_801043AC
/* 80104394  38 00 00 00 */	li r0, 0
/* 80104398  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8010439C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 801043A0  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 801043A4  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801043A8  D0 1F 34 80 */	stfs f0, 0x3480(r31)
lbl_801043AC:
/* 801043AC  7F E3 FB 78 */	mr r3, r31
/* 801043B0  4B FF D5 85 */	bl swimDeleteItem__9daAlink_cFv
/* 801043B4  7F E3 FB 78 */	mr r3, r31
/* 801043B8  38 80 00 14 */	li r4, 0x14
/* 801043BC  4B FA 81 9D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 801043C0  2C 03 00 00 */	cmpwi r3, 0
/* 801043C4  40 82 00 24 */	bne lbl_801043E8
/* 801043C8  7F E3 FB 78 */	mr r3, r31
/* 801043CC  38 80 00 14 */	li r4, 0x14
/* 801043D0  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 801043D4  38 A5 ED 2C */	addi r5, r5, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 801043D8  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 801043DC  C0 45 00 94 */	lfs f2, 0x94(r5)
/* 801043E0  4B FA 8C 01 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 801043E4  48 00 00 30 */	b lbl_80104414
lbl_801043E8:
/* 801043E8  C0 3F 1F DC */	lfs f1, 0x1fdc(r31)
/* 801043EC  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 801043F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801043F4  40 80 00 20 */	bge lbl_80104414
/* 801043F8  7F E3 FB 78 */	mr r3, r31
/* 801043FC  38 80 00 14 */	li r4, 0x14
/* 80104400  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 80104404  38 A5 ED 2C */	addi r5, r5, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80104408  C0 25 00 90 */	lfs f1, 0x90(r5)
/* 8010440C  C0 42 92 BC */	lfs f2, lit_6041(r2)
/* 80104410  4B FA 8B D1 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
lbl_80104414:
/* 80104414  38 00 00 00 */	li r0, 0
/* 80104418  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
/* 8010441C  38 00 00 14 */	li r0, 0x14
/* 80104420  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 80104424  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 80104428  90 1F 32 CC */	stw r0, 0x32cc(r31)
/* 8010442C  A8 9F 30 80 */	lha r4, 0x3080(r31)
/* 80104430  7C 80 07 35 */	extsh. r0, r4
/* 80104434  41 82 00 1C */	beq lbl_80104450
/* 80104438  7F E3 FB 78 */	mr r3, r31
/* 8010443C  38 A0 00 00 */	li r5, 0
/* 80104440  38 C0 00 00 */	li r6, 0
/* 80104444  4B FA 97 35 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 80104448  38 00 00 00 */	li r0, 0
/* 8010444C  B0 1F 30 80 */	sth r0, 0x3080(r31)
lbl_80104450:
/* 80104450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80104454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80104458  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8010445C  64 00 00 10 */	oris r0, r0, 0x10
/* 80104460  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80104464  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80104468  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8010446C  41 82 00 14 */	beq lbl_80104480
/* 80104470  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 80104474  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80104478  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010447C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_80104480:
/* 80104480  38 00 00 00 */	li r0, 0
/* 80104484  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80104488  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8010448C  7F E3 FB 78 */	mr r3, r31
/* 80104490  4B FF D5 89 */	bl getSwimFrontMaxSpeed__9daAlink_cCFv
/* 80104494  D0 3F 05 94 */	stfs f1, 0x594(r31)
/* 80104498  38 60 00 01 */	li r3, 1
/* 8010449C  39 61 00 20 */	addi r11, r1, 0x20
/* 801044A0  48 25 DD 89 */	bl _restgpr_29
/* 801044A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801044A8  7C 08 03 A6 */	mtlr r0
/* 801044AC  38 21 00 20 */	addi r1, r1, 0x20
/* 801044B0  4E 80 00 20 */	blr 
