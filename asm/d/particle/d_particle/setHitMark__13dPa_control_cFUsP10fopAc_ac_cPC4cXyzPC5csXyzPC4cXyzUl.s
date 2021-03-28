lbl_8004C218:
/* 8004C218  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8004C21C  7C 08 02 A6 */	mflr r0
/* 8004C220  90 01 00 94 */	stw r0, 0x94(r1)
/* 8004C224  39 61 00 90 */	addi r11, r1, 0x90
/* 8004C228  48 31 5F A9 */	bl _savegpr_26
/* 8004C22C  7C 9B 23 78 */	mr r27, r4
/* 8004C230  7C BC 2B 79 */	or. r28, r5, r5
/* 8004C234  7D 1D 43 78 */	mr r29, r8
/* 8004C238  7D 3E 4B 78 */	mr r30, r9
/* 8004C23C  7C DF 33 78 */	mr r31, r6
/* 8004C240  7C FA 3B 78 */	mr r26, r7
/* 8004C244  41 82 00 58 */	beq lbl_8004C29C
/* 8004C248  80 7C 04 9C */	lwz r3, 0x49c(r28)
/* 8004C24C  54 60 00 43 */	rlwinm. r0, r3, 0, 1, 1
/* 8004C250  40 82 05 D0 */	bne lbl_8004C820
/* 8004C254  64 60 40 00 */	oris r0, r3, 0x4000
/* 8004C258  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 8004C25C  80 7C 05 28 */	lwz r3, 0x528(r28)
/* 8004C260  28 03 00 00 */	cmplwi r3, 0
/* 8004C264  41 82 00 38 */	beq lbl_8004C29C
/* 8004C268  7C C4 33 78 */	mr r4, r6
/* 8004C26C  7C E5 3B 78 */	mr r5, r7
/* 8004C270  38 C1 00 64 */	addi r6, r1, 0x64
/* 8004C274  38 E1 00 20 */	addi r7, r1, 0x20
/* 8004C278  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8004C27C  20 00 00 06 */	subfic r0, r0, 6
/* 8004C280  7C 00 00 34 */	cntlzw r0, r0
/* 8004C284  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8004C288  4B FE A9 BD */	bl getHitmarkPosAndAngle__9dJntCol_cCFPC4cXyzPC5csXyzP4cXyzP5csXyzi
/* 8004C28C  2C 03 00 00 */	cmpwi r3, 0
/* 8004C290  41 80 00 0C */	blt lbl_8004C29C
/* 8004C294  3B E1 00 64 */	addi r31, r1, 0x64
/* 8004C298  3B 41 00 20 */	addi r26, r1, 0x20
lbl_8004C29C:
/* 8004C29C  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 8004C2A0  28 03 00 03 */	cmplwi r3, 3
/* 8004C2A4  40 82 01 A4 */	bne lbl_8004C448
/* 8004C2A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8004C2AC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 8004C2B0  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C2B4  38 80 00 00 */	li r4, 0
/* 8004C2B8  90 81 00 08 */	stw r4, 8(r1)
/* 8004C2BC  38 00 FF FF */	li r0, -1
/* 8004C2C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C2C4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C2C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C2CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C2D0  38 80 00 00 */	li r4, 0
/* 8004C2D4  38 A0 01 14 */	li r5, 0x114
/* 8004C2D8  7F E6 FB 78 */	mr r6, r31
/* 8004C2DC  38 E0 00 00 */	li r7, 0
/* 8004C2E0  7F 48 D3 78 */	mr r8, r26
/* 8004C2E4  7F A9 EB 78 */	mr r9, r29
/* 8004C2E8  39 40 00 FF */	li r10, 0xff
/* 8004C2EC  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C2F0  48 00 07 A1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C2F4  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C2F8  38 80 00 00 */	li r4, 0
/* 8004C2FC  90 81 00 08 */	stw r4, 8(r1)
/* 8004C300  38 00 FF FF */	li r0, -1
/* 8004C304  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C308  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C30C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C310  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C314  38 80 00 00 */	li r4, 0
/* 8004C318  38 A0 01 15 */	li r5, 0x115
/* 8004C31C  7F E6 FB 78 */	mr r6, r31
/* 8004C320  38 E0 00 00 */	li r7, 0
/* 8004C324  39 00 00 00 */	li r8, 0
/* 8004C328  7F A9 EB 78 */	mr r9, r29
/* 8004C32C  39 40 00 FF */	li r10, 0xff
/* 8004C330  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C334  48 00 07 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C338  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C33C  38 80 00 00 */	li r4, 0
/* 8004C340  90 81 00 08 */	stw r4, 8(r1)
/* 8004C344  38 00 FF FF */	li r0, -1
/* 8004C348  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C34C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C350  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C354  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C358  38 80 00 00 */	li r4, 0
/* 8004C35C  38 A0 01 16 */	li r5, 0x116
/* 8004C360  7F E6 FB 78 */	mr r6, r31
/* 8004C364  38 E0 00 00 */	li r7, 0
/* 8004C368  39 00 00 00 */	li r8, 0
/* 8004C36C  7F A9 EB 78 */	mr r9, r29
/* 8004C370  39 40 00 FF */	li r10, 0xff
/* 8004C374  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C378  48 00 07 19 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C37C  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 8004C380  41 82 00 5C */	beq lbl_8004C3DC
/* 8004C384  28 1C 00 00 */	cmplwi r28, 0
/* 8004C388  41 82 00 54 */	beq lbl_8004C3DC
/* 8004C38C  88 1C 04 96 */	lbz r0, 0x496(r28)
/* 8004C390  28 00 00 02 */	cmplwi r0, 2
/* 8004C394  40 82 00 48 */	bne lbl_8004C3DC
/* 8004C398  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C39C  38 80 00 00 */	li r4, 0
/* 8004C3A0  90 81 00 08 */	stw r4, 8(r1)
/* 8004C3A4  38 00 FF FF */	li r0, -1
/* 8004C3A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C3AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C3B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C3B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C3B8  38 80 00 00 */	li r4, 0
/* 8004C3BC  38 A0 02 ED */	li r5, 0x2ed
/* 8004C3C0  7F E6 FB 78 */	mr r6, r31
/* 8004C3C4  38 E0 00 00 */	li r7, 0
/* 8004C3C8  39 00 00 00 */	li r8, 0
/* 8004C3CC  7F A9 EB 78 */	mr r9, r29
/* 8004C3D0  39 40 00 FF */	li r10, 0xff
/* 8004C3D4  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C3D8  48 00 06 B9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8004C3DC:
/* 8004C3DC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C3E0  38 80 00 00 */	li r4, 0
/* 8004C3E4  90 81 00 08 */	stw r4, 8(r1)
/* 8004C3E8  38 00 FF FF */	li r0, -1
/* 8004C3EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C3F0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C3F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C3F8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C3FC  38 80 00 00 */	li r4, 0
/* 8004C400  38 A0 02 EE */	li r5, 0x2ee
/* 8004C404  7F E6 FB 78 */	mr r6, r31
/* 8004C408  38 E0 00 00 */	li r7, 0
/* 8004C40C  39 00 00 00 */	li r8, 0
/* 8004C410  7F A9 EB 78 */	mr r9, r29
/* 8004C414  39 40 00 FF */	li r10, 0xff
/* 8004C418  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C41C  48 00 06 75 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C420  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8004C424  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8004C428  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8004C42C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8004C430  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8004C434  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8004C438  38 61 00 4C */	addi r3, r1, 0x4c
/* 8004C43C  38 80 00 01 */	li r4, 1
/* 8004C440  48 15 C0 45 */	bl dKy_SordFlush_set__F4cXyzi
/* 8004C444  48 00 03 DC */	b lbl_8004C820
lbl_8004C448:
/* 8004C448  28 03 00 02 */	cmplwi r3, 2
/* 8004C44C  41 82 00 24 */	beq lbl_8004C470
/* 8004C450  28 03 00 05 */	cmplwi r3, 5
/* 8004C454  41 82 00 1C */	beq lbl_8004C470
/* 8004C458  38 1B FF F8 */	addi r0, r27, -8
/* 8004C45C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8004C460  28 00 00 01 */	cmplwi r0, 1
/* 8004C464  40 81 00 0C */	ble lbl_8004C470
/* 8004C468  28 03 00 06 */	cmplwi r3, 6
/* 8004C46C  40 82 00 C8 */	bne lbl_8004C534
lbl_8004C470:
/* 8004C470  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8004C474  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8004C478  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8004C47C  38 80 00 00 */	li r4, 0
/* 8004C480  90 81 00 08 */	stw r4, 8(r1)
/* 8004C484  38 00 FF FF */	li r0, -1
/* 8004C488  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C48C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C490  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C494  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C498  38 80 00 00 */	li r4, 0
/* 8004C49C  38 A0 01 17 */	li r5, 0x117
/* 8004C4A0  7F E6 FB 78 */	mr r6, r31
/* 8004C4A4  38 E0 00 00 */	li r7, 0
/* 8004C4A8  7F 48 D3 78 */	mr r8, r26
/* 8004C4AC  7F A9 EB 78 */	mr r9, r29
/* 8004C4B0  39 40 00 FF */	li r10, 0xff
/* 8004C4B4  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C4B8  48 00 05 D9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C4BC  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 8004C4C0  38 80 00 00 */	li r4, 0
/* 8004C4C4  90 81 00 08 */	stw r4, 8(r1)
/* 8004C4C8  38 00 FF FF */	li r0, -1
/* 8004C4CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C4D0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C4D4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C4D8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C4DC  38 80 00 00 */	li r4, 0
/* 8004C4E0  38 A0 01 18 */	li r5, 0x118
/* 8004C4E4  7F E6 FB 78 */	mr r6, r31
/* 8004C4E8  38 E0 00 00 */	li r7, 0
/* 8004C4EC  39 00 00 00 */	li r8, 0
/* 8004C4F0  7F A9 EB 78 */	mr r9, r29
/* 8004C4F4  39 40 00 FF */	li r10, 0xff
/* 8004C4F8  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C4FC  48 00 05 95 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C500  57 60 04 3E */	clrlwi r0, r27, 0x10
/* 8004C504  28 00 00 09 */	cmplwi r0, 9
/* 8004C508  41 82 03 18 */	beq lbl_8004C820
/* 8004C50C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8004C510  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8004C514  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8004C518  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8004C51C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8004C520  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8004C524  38 61 00 40 */	addi r3, r1, 0x40
/* 8004C528  38 80 00 00 */	li r4, 0
/* 8004C52C  48 15 BF 59 */	bl dKy_SordFlush_set__F4cXyzi
/* 8004C530  48 00 02 F0 */	b lbl_8004C820
lbl_8004C534:
/* 8004C534  28 03 00 07 */	cmplwi r3, 7
/* 8004C538  40 82 01 80 */	bne lbl_8004C6B8
/* 8004C53C  28 1D 00 00 */	cmplwi r29, 0
/* 8004C540  41 82 00 30 */	beq lbl_8004C570
/* 8004C544  38 61 00 34 */	addi r3, r1, 0x34
/* 8004C548  7F A4 EB 78 */	mr r4, r29
/* 8004C54C  C0 22 85 8C */	lfs f1, lit_5066(r2)
/* 8004C550  48 21 A6 35 */	bl __ml__4cXyzCFf
/* 8004C554  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8004C558  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8004C55C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8004C560  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8004C564  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8004C568  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8004C56C  48 00 00 14 */	b lbl_8004C580
lbl_8004C570:
/* 8004C570  C0 02 85 8C */	lfs f0, lit_5066(r2)
/* 8004C574  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8004C578  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8004C57C  D0 01 00 60 */	stfs f0, 0x60(r1)
lbl_8004C580:
/* 8004C580  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8004C584  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 8004C588  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C58C  38 80 00 00 */	li r4, 0
/* 8004C590  90 81 00 08 */	stw r4, 8(r1)
/* 8004C594  38 00 FF FF */	li r0, -1
/* 8004C598  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C59C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C5A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C5A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C5A8  38 80 00 00 */	li r4, 0
/* 8004C5AC  38 A0 01 19 */	li r5, 0x119
/* 8004C5B0  7F E6 FB 78 */	mr r6, r31
/* 8004C5B4  38 E0 00 00 */	li r7, 0
/* 8004C5B8  7F 48 D3 78 */	mr r8, r26
/* 8004C5BC  39 21 00 58 */	addi r9, r1, 0x58
/* 8004C5C0  39 40 00 FF */	li r10, 0xff
/* 8004C5C4  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C5C8  48 00 04 C9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C5CC  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C5D0  38 80 00 00 */	li r4, 0
/* 8004C5D4  90 81 00 08 */	stw r4, 8(r1)
/* 8004C5D8  38 00 FF FF */	li r0, -1
/* 8004C5DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C5E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C5E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C5E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C5EC  38 80 00 00 */	li r4, 0
/* 8004C5F0  38 A0 01 1A */	li r5, 0x11a
/* 8004C5F4  7F E6 FB 78 */	mr r6, r31
/* 8004C5F8  38 E0 00 00 */	li r7, 0
/* 8004C5FC  39 00 00 00 */	li r8, 0
/* 8004C600  39 21 00 58 */	addi r9, r1, 0x58
/* 8004C604  39 40 00 FF */	li r10, 0xff
/* 8004C608  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C60C  48 00 04 85 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C610  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C614  38 80 00 00 */	li r4, 0
/* 8004C618  90 81 00 08 */	stw r4, 8(r1)
/* 8004C61C  38 00 FF FF */	li r0, -1
/* 8004C620  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C624  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C628  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C62C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C630  38 80 00 00 */	li r4, 0
/* 8004C634  38 A0 02 EF */	li r5, 0x2ef
/* 8004C638  7F E6 FB 78 */	mr r6, r31
/* 8004C63C  38 E0 00 00 */	li r7, 0
/* 8004C640  39 00 00 00 */	li r8, 0
/* 8004C644  39 21 00 58 */	addi r9, r1, 0x58
/* 8004C648  39 40 00 FF */	li r10, 0xff
/* 8004C64C  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C650  48 00 04 41 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C654  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 8004C658  41 82 01 C8 */	beq lbl_8004C820
/* 8004C65C  28 1C 00 00 */	cmplwi r28, 0
/* 8004C660  41 82 01 C0 */	beq lbl_8004C820
/* 8004C664  88 1C 04 96 */	lbz r0, 0x496(r28)
/* 8004C668  28 00 00 02 */	cmplwi r0, 2
/* 8004C66C  40 82 01 B4 */	bne lbl_8004C820
/* 8004C670  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C674  38 80 00 00 */	li r4, 0
/* 8004C678  90 81 00 08 */	stw r4, 8(r1)
/* 8004C67C  38 00 FF FF */	li r0, -1
/* 8004C680  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C684  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C688  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C68C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C690  38 80 00 00 */	li r4, 0
/* 8004C694  38 A0 02 F0 */	li r5, 0x2f0
/* 8004C698  7F E6 FB 78 */	mr r6, r31
/* 8004C69C  38 E0 00 00 */	li r7, 0
/* 8004C6A0  39 00 00 00 */	li r8, 0
/* 8004C6A4  39 21 00 58 */	addi r9, r1, 0x58
/* 8004C6A8  39 40 00 FF */	li r10, 0xff
/* 8004C6AC  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C6B0  48 00 03 E1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C6B4  48 00 01 6C */	b lbl_8004C820
lbl_8004C6B8:
/* 8004C6B8  28 03 00 01 */	cmplwi r3, 1
/* 8004C6BC  41 82 00 0C */	beq lbl_8004C6C8
/* 8004C6C0  28 03 00 04 */	cmplwi r3, 4
/* 8004C6C4  40 82 01 5C */	bne lbl_8004C820
lbl_8004C6C8:
/* 8004C6C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8004C6CC  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 8004C6D0  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C6D4  38 80 00 00 */	li r4, 0
/* 8004C6D8  90 81 00 08 */	stw r4, 8(r1)
/* 8004C6DC  38 00 FF FF */	li r0, -1
/* 8004C6E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C6E4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C6E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C6EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C6F0  38 80 00 00 */	li r4, 0
/* 8004C6F4  38 A0 01 19 */	li r5, 0x119
/* 8004C6F8  7F E6 FB 78 */	mr r6, r31
/* 8004C6FC  38 E0 00 00 */	li r7, 0
/* 8004C700  7F 48 D3 78 */	mr r8, r26
/* 8004C704  7F A9 EB 78 */	mr r9, r29
/* 8004C708  39 40 00 FF */	li r10, 0xff
/* 8004C70C  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C710  48 00 03 81 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C714  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C718  38 80 00 00 */	li r4, 0
/* 8004C71C  90 81 00 08 */	stw r4, 8(r1)
/* 8004C720  38 00 FF FF */	li r0, -1
/* 8004C724  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C728  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C72C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C730  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C734  38 80 00 00 */	li r4, 0
/* 8004C738  38 A0 01 1A */	li r5, 0x11a
/* 8004C73C  7F E6 FB 78 */	mr r6, r31
/* 8004C740  38 E0 00 00 */	li r7, 0
/* 8004C744  39 00 00 00 */	li r8, 0
/* 8004C748  7F A9 EB 78 */	mr r9, r29
/* 8004C74C  39 40 00 FF */	li r10, 0xff
/* 8004C750  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C754  48 00 03 3D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C758  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C75C  38 80 00 00 */	li r4, 0
/* 8004C760  90 81 00 08 */	stw r4, 8(r1)
/* 8004C764  38 00 FF FF */	li r0, -1
/* 8004C768  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C76C  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C770  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C774  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C778  38 80 00 00 */	li r4, 0
/* 8004C77C  38 A0 02 EF */	li r5, 0x2ef
/* 8004C780  7F E6 FB 78 */	mr r6, r31
/* 8004C784  38 E0 00 00 */	li r7, 0
/* 8004C788  39 00 00 00 */	li r8, 0
/* 8004C78C  7F A9 EB 78 */	mr r9, r29
/* 8004C790  39 40 00 FF */	li r10, 0xff
/* 8004C794  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C798  48 00 02 F9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8004C79C  57 C0 07 BD */	rlwinm. r0, r30, 0, 0x1e, 0x1e
/* 8004C7A0  41 82 00 5C */	beq lbl_8004C7FC
/* 8004C7A4  28 1C 00 00 */	cmplwi r28, 0
/* 8004C7A8  41 82 00 54 */	beq lbl_8004C7FC
/* 8004C7AC  88 1C 04 96 */	lbz r0, 0x496(r28)
/* 8004C7B0  28 00 00 02 */	cmplwi r0, 2
/* 8004C7B4  40 82 00 48 */	bne lbl_8004C7FC
/* 8004C7B8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 8004C7BC  38 80 00 00 */	li r4, 0
/* 8004C7C0  90 81 00 08 */	stw r4, 8(r1)
/* 8004C7C4  38 00 FF FF */	li r0, -1
/* 8004C7C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004C7CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 8004C7D0  90 81 00 14 */	stw r4, 0x14(r1)
/* 8004C7D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8004C7D8  38 80 00 00 */	li r4, 0
/* 8004C7DC  38 A0 02 F0 */	li r5, 0x2f0
/* 8004C7E0  7F E6 FB 78 */	mr r6, r31
/* 8004C7E4  38 E0 00 00 */	li r7, 0
/* 8004C7E8  39 00 00 00 */	li r8, 0
/* 8004C7EC  7F A9 EB 78 */	mr r9, r29
/* 8004C7F0  39 40 00 FF */	li r10, 0xff
/* 8004C7F4  C0 22 85 88 */	lfs f1, lit_4519(r2)
/* 8004C7F8  48 00 02 99 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8004C7FC:
/* 8004C7FC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8004C800  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8004C804  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8004C808  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8004C80C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8004C810  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8004C814  38 61 00 28 */	addi r3, r1, 0x28
/* 8004C818  38 80 00 01 */	li r4, 1
/* 8004C81C  48 15 BC 69 */	bl dKy_SordFlush_set__F4cXyzi
lbl_8004C820:
/* 8004C820  39 61 00 90 */	addi r11, r1, 0x90
/* 8004C824  48 31 59 F9 */	bl _restgpr_26
/* 8004C828  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8004C82C  7C 08 03 A6 */	mtlr r0
/* 8004C830  38 21 00 90 */	addi r1, r1, 0x90
/* 8004C834  4E 80 00 20 */	blr 
