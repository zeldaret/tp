lbl_800DB140:
/* 800DB140  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DB144  7C 08 02 A6 */	mflr r0
/* 800DB148  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DB14C  39 61 00 20 */	addi r11, r1, 0x20
/* 800DB150  48 28 70 85 */	bl _savegpr_27
/* 800DB154  7C 7B 1B 78 */	mr r27, r3
/* 800DB158  7C 9F 23 78 */	mr r31, r4
/* 800DB15C  7C BC 2B 78 */	mr r28, r5
/* 800DB160  7C DD 33 78 */	mr r29, r6
/* 800DB164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DB168  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DB16C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800DB170  7F 64 DB 78 */	mr r4, r27
/* 800DB174  38 A0 00 00 */	li r5, 0
/* 800DB178  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFEF@ha */
/* 800DB17C  38 C6 FF EF */	addi r6, r6, 0xFFEF /* 0x0000FFEF@l */
/* 800DB180  4B F6 7F ED */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800DB184  2C 03 00 00 */	cmpwi r3, 0
/* 800DB188  40 82 00 0C */	bne lbl_800DB194
/* 800DB18C  38 60 00 00 */	li r3, 0
/* 800DB190  48 00 02 70 */	b lbl_800DB400
lbl_800DB194:
/* 800DB194  38 00 00 05 */	li r0, 5
/* 800DB198  B0 1B 06 04 */	sth r0, 0x604(r27)
/* 800DB19C  80 9B 31 A0 */	lwz r4, 0x31a0(r27)
/* 800DB1A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800DB1A4  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800DB1A8  7C 9E 00 38 */	and r30, r4, r0
/* 800DB1AC  80 7B 28 40 */	lwz r3, 0x2840(r27)
/* 800DB1B0  28 03 00 00 */	cmplwi r3, 0
/* 800DB1B4  41 82 00 0C */	beq lbl_800DB1C0
/* 800DB1B8  38 63 07 40 */	addi r3, r3, 0x740
/* 800DB1BC  48 08 3B 41 */	bl clearData__16daPy_actorKeep_cFv
lbl_800DB1C0:
/* 800DB1C0  28 1F 00 00 */	cmplwi r31, 0
/* 800DB1C4  41 82 00 10 */	beq lbl_800DB1D4
/* 800DB1C8  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 800DB1CC  60 00 08 00 */	ori r0, r0, 0x800
/* 800DB1D0  90 1F 04 9C */	stw r0, 0x49c(r31)
lbl_800DB1D4:
/* 800DB1D4  7F 63 DB 78 */	mr r3, r27
/* 800DB1D8  38 80 01 42 */	li r4, 0x142
/* 800DB1DC  4B FE 6D 91 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DB1E0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DB1E4  D0 1B 33 98 */	stfs f0, 0x3398(r27)
/* 800DB1E8  38 00 00 00 */	li r0, 0
/* 800DB1EC  B0 1B 30 0C */	sth r0, 0x300c(r27)
/* 800DB1F0  80 1B 19 9C */	lwz r0, 0x199c(r27)
/* 800DB1F4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800DB1F8  41 82 00 0C */	beq lbl_800DB204
/* 800DB1FC  28 1E 00 00 */	cmplwi r30, 0
/* 800DB200  41 82 00 10 */	beq lbl_800DB210
lbl_800DB204:
/* 800DB204  80 1B 05 70 */	lwz r0, 0x570(r27)
/* 800DB208  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800DB20C  41 82 00 28 */	beq lbl_800DB234
lbl_800DB210:
/* 800DB210  A0 1B 2F DC */	lhz r0, 0x2fdc(r27)
/* 800DB214  28 00 00 42 */	cmplwi r0, 0x42
/* 800DB218  40 82 00 10 */	bne lbl_800DB228
/* 800DB21C  7F 63 DB 78 */	mr r3, r27
/* 800DB220  38 80 00 01 */	li r4, 1
/* 800DB224  48 03 73 45 */	bl setIronBallWaitUpperAnime__9daAlink_cFi
lbl_800DB228:
/* 800DB228  3B E0 01 7C */	li r31, 0x17c
/* 800DB22C  3B C0 00 87 */	li r30, 0x87
/* 800DB230  48 00 00 AC */	b lbl_800DB2DC
lbl_800DB234:
/* 800DB234  3B E0 01 7D */	li r31, 0x17d
/* 800DB238  3B C0 00 88 */	li r30, 0x88
/* 800DB23C  7F 63 DB 78 */	mr r3, r27
/* 800DB240  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DB244  C0 5B 05 34 */	lfs f2, 0x534(r27)
/* 800DB248  38 80 00 00 */	li r4, 0
/* 800DB24C  4B FE 05 25 */	bl setSpecialGravity__9daAlink_cFffi
/* 800DB250  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DB254  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 800DB258  80 1B 31 A0 */	lwz r0, 0x31a0(r27)
/* 800DB25C  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800DB260  40 82 00 10 */	bne lbl_800DB270
/* 800DB264  7F 63 DB 78 */	mr r3, r27
/* 800DB268  4B FD 96 69 */	bl setJumpMode__9daAlink_cFv
/* 800DB26C  48 00 00 70 */	b lbl_800DB2DC
lbl_800DB270:
/* 800DB270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DB274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DB278  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800DB27C  64 00 00 10 */	oris r0, r0, 0x10
/* 800DB280  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800DB284  38 00 00 0F */	li r0, 0xf
/* 800DB288  98 1B 2F 99 */	stb r0, 0x2f99(r27)
/* 800DB28C  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 800DB290  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 800DB294  D0 1B 35 88 */	stfs f0, 0x3588(r27)
/* 800DB298  C0 03 00 04 */	lfs f0, 4(r3)
/* 800DB29C  D0 1B 35 8C */	stfs f0, 0x358c(r27)
/* 800DB2A0  C0 03 00 08 */	lfs f0, 8(r3)
/* 800DB2A4  D0 1B 35 90 */	stfs f0, 0x3590(r27)
/* 800DB2A8  C0 02 93 CC */	lfs f0, lit_10532(r2)
/* 800DB2AC  D0 1B 33 B0 */	stfs f0, 0x33b0(r27)
/* 800DB2B0  7F 63 DB 78 */	mr r3, r27
/* 800DB2B4  48 02 67 05 */	bl getZoraSwim__9daAlink_cCFv
/* 800DB2B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DB2BC  41 82 00 20 */	beq lbl_800DB2DC
/* 800DB2C0  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 800DB2C4  C0 02 93 00 */	lfs f0, lit_6895(r2)
/* 800DB2C8  EC 01 00 2A */	fadds f0, f1, f0
/* 800DB2CC  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 800DB2D0  A8 7B 30 80 */	lha r3, 0x3080(r27)
/* 800DB2D4  38 03 40 00 */	addi r0, r3, 0x4000
/* 800DB2D8  B0 1B 30 80 */	sth r0, 0x3080(r27)
lbl_800DB2DC:
/* 800DB2DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DB2E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DB2E4  80 1B 31 7C */	lwz r0, 0x317c(r27)
/* 800DB2E8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 800DB2EC  7C 63 02 14 */	add r3, r3, r0
/* 800DB2F0  80 63 5D 7C */	lwz r3, 0x5d7c(r3)
/* 800DB2F4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800DB2F8  40 82 00 1C */	bne lbl_800DB314
/* 800DB2FC  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 800DB300  40 82 00 14 */	bne lbl_800DB314
/* 800DB304  48 0A 63 3D */	bl dCam_getBody__Fv
/* 800DB308  48 08 61 C9 */	bl Stop__9dCamera_cFv
/* 800DB30C  38 00 00 01 */	li r0, 1
/* 800DB310  B0 1B 30 0C */	sth r0, 0x300c(r27)
lbl_800DB314:
/* 800DB314  80 1B 05 74 */	lwz r0, 0x574(r27)
/* 800DB318  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800DB31C  41 82 00 3C */	beq lbl_800DB358
/* 800DB320  7F 63 DB 78 */	mr r3, r27
/* 800DB324  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100C0@ha */
/* 800DB328  38 84 00 C0 */	addi r4, r4, 0x00C0 /* 0x000100C0@l */
/* 800DB32C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 800DB330  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DB334  7D 89 03 A6 */	mtctr r12
/* 800DB338  4E 80 04 21 */	bctrl 
/* 800DB33C  7F 63 DB 78 */	mr r3, r27
/* 800DB340  7F C4 F3 78 */	mr r4, r30
/* 800DB344  48 04 E3 35 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 800DB348  7F 63 DB 78 */	mr r3, r27
/* 800DB34C  38 80 00 91 */	li r4, 0x91
/* 800DB350  4B FD 45 51 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800DB354  48 00 00 2C */	b lbl_800DB380
lbl_800DB358:
/* 800DB358  7F 63 DB 78 */	mr r3, r27
/* 800DB35C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010054@ha */
/* 800DB360  38 84 00 54 */	addi r4, r4, 0x0054 /* 0x00010054@l */
/* 800DB364  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 800DB368  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DB36C  7D 89 03 A6 */	mtctr r12
/* 800DB370  4E 80 04 21 */	bctrl 
/* 800DB374  7F 63 DB 78 */	mr r3, r27
/* 800DB378  7F E4 FB 78 */	mr r4, r31
/* 800DB37C  4B FD 1C 05 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800DB380:
/* 800DB380  38 00 00 2D */	li r0, 0x2d
/* 800DB384  B0 1B 30 08 */	sth r0, 0x3008(r27)
/* 800DB388  38 00 00 03 */	li r0, 3
/* 800DB38C  B0 1B 30 0E */	sth r0, 0x300e(r27)
/* 800DB390  7F 63 DB 78 */	mr r3, r27
/* 800DB394  7F A4 EB 78 */	mr r4, r29
/* 800DB398  4B FF C8 51 */	bl checkHugeAttack__9daAlink_cCFi
/* 800DB39C  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 800DB3A0  7F 63 DB 78 */	mr r3, r27
/* 800DB3A4  7F A4 EB 78 */	mr r4, r29
/* 800DB3A8  4B FF C8 6D */	bl checkLargeAttack__9daAlink_cCFi
/* 800DB3AC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800DB3B0  7C 00 F3 78 */	or r0, r0, r30
/* 800DB3B4  90 1B 31 98 */	stw r0, 0x3198(r27)
/* 800DB3B8  28 1C 00 00 */	cmplwi r28, 0
/* 800DB3BC  41 82 00 1C */	beq lbl_800DB3D8
/* 800DB3C0  7F 63 DB 78 */	mr r3, r27
/* 800DB3C4  7F 84 E3 78 */	mr r4, r28
/* 800DB3C8  4B FF C1 2D */	bl getDamageVec__9daAlink_cFP12dCcD_GObjInf
/* 800DB3CC  48 18 BD 5D */	bl atan2sX_Z__4cXyzCFv
/* 800DB3D0  B0 7B 30 10 */	sth r3, 0x3010(r27)
/* 800DB3D4  48 00 00 14 */	b lbl_800DB3E8
lbl_800DB3D8:
/* 800DB3D8  A8 7B 04 E6 */	lha r3, 0x4e6(r27)
/* 800DB3DC  3C 63 00 01 */	addis r3, r3, 1
/* 800DB3E0  38 03 80 00 */	addi r0, r3, -32768
/* 800DB3E4  B0 1B 30 10 */	sth r0, 0x3010(r27)
lbl_800DB3E8:
/* 800DB3E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800DB3EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800DB3F0  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 800DB3F4  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 800DB3F8  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 800DB3FC  38 60 00 01 */	li r3, 1
lbl_800DB400:
/* 800DB400  39 61 00 20 */	addi r11, r1, 0x20
/* 800DB404  48 28 6E 1D */	bl _restgpr_27
/* 800DB408  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DB40C  7C 08 03 A6 */	mtlr r0
/* 800DB410  38 21 00 20 */	addi r1, r1, 0x20
/* 800DB414  4E 80 00 20 */	blr 
