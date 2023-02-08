lbl_8082220C:
/* 8082220C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80822210  7C 08 02 A6 */	mflr r0
/* 80822214  90 01 00 24 */	stw r0, 0x24(r1)
/* 80822218  39 61 00 20 */	addi r11, r1, 0x20
/* 8082221C  4B B3 FF BD */	bl _savegpr_28
/* 80822220  2C 04 00 00 */	cmpwi r4, 0
/* 80822224  40 82 03 80 */	bne lbl_808225A4
/* 80822228  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8082222C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80822230  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80822234  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80822238  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8082223C  28 1C 00 00 */	cmplwi r28, 0
/* 80822240  41 82 03 64 */	beq lbl_808225A4
/* 80822244  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80822248  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8082224C  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80822250  7C 60 EA 14 */	add r3, r0, r29
/* 80822254  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80822258  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8082225C  80 84 00 00 */	lwz r4, 0(r4)
/* 80822260  4B B2 42 51 */	bl PSMTXCopy
/* 80822264  2C 1F 00 03 */	cmpwi r31, 3
/* 80822268  41 82 00 0C */	beq lbl_80822274
/* 8082226C  2C 1F 00 04 */	cmpwi r31, 4
/* 80822270  40 82 00 5C */	bne lbl_808222CC
lbl_80822274:
/* 80822274  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822278  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082227C  80 63 00 00 */	lwz r3, 0(r3)
/* 80822280  A8 1C 0E 84 */	lha r0, 0xe84(r28)
/* 80822284  7C 00 0E 70 */	srawi r0, r0, 1
/* 80822288  7C 00 01 94 */	addze r0, r0
/* 8082228C  7C 04 07 34 */	extsh r4, r0
/* 80822290  4B 7E A1 A5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80822294  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822298  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082229C  80 63 00 00 */	lwz r3, 0(r3)
/* 808222A0  A8 9C 0E 84 */	lha r4, 0xe84(r28)
/* 808222A4  4B 7E A0 F9 */	bl mDoMtx_XrotM__FPA4_fs
/* 808222A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808222AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808222B0  80 63 00 00 */	lwz r3, 0(r3)
/* 808222B4  A8 9C 0E 88 */	lha r4, 0xe88(r28)
/* 808222B8  38 00 00 03 */	li r0, 3
/* 808222BC  7C 04 03 D6 */	divw r0, r4, r0
/* 808222C0  7C 04 07 34 */	extsh r4, r0
/* 808222C4  4B 7E A2 09 */	bl mDoMtx_ZrotM__FPA4_fs
/* 808222C8  48 00 00 58 */	b lbl_80822320
lbl_808222CC:
/* 808222CC  2C 1F 00 08 */	cmpwi r31, 8
/* 808222D0  40 82 00 2C */	bne lbl_808222FC
/* 808222D4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808222D8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808222DC  80 63 00 00 */	lwz r3, 0(r3)
/* 808222E0  A8 9C 0E 88 */	lha r4, 0xe88(r28)
/* 808222E4  38 00 00 03 */	li r0, 3
/* 808222E8  7C 04 03 D6 */	divw r0, r4, r0
/* 808222EC  7C 00 00 D0 */	neg r0, r0
/* 808222F0  7C 04 07 34 */	extsh r4, r0
/* 808222F4  4B 7E A1 D9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 808222F8  48 00 00 28 */	b lbl_80822320
lbl_808222FC:
/* 808222FC  2C 1F 00 07 */	cmpwi r31, 7
/* 80822300  40 82 00 20 */	bne lbl_80822320
/* 80822304  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822308  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082230C  80 63 00 00 */	lwz r3, 0(r3)
/* 80822310  A8 1C 0E 88 */	lha r0, 0xe88(r28)
/* 80822314  7C 00 00 D0 */	neg r0, r0
/* 80822318  7C 04 07 34 */	extsh r4, r0
/* 8082231C  4B 7E A1 B1 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80822320:
/* 80822320  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80822324  41 80 00 4C */	blt lbl_80822370
/* 80822328  2C 1F 00 0D */	cmpwi r31, 0xd
/* 8082232C  41 81 00 44 */	bgt lbl_80822370
/* 80822330  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822334  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80822338  80 63 00 00 */	lwz r3, 0(r3)
/* 8082233C  A8 1C 0E A8 */	lha r0, 0xea8(r28)
/* 80822340  7C 00 0E 70 */	srawi r0, r0, 1
/* 80822344  7C 00 01 94 */	addze r0, r0
/* 80822348  7C 04 07 34 */	extsh r4, r0
/* 8082234C  4B 7E A1 81 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80822350  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822354  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80822358  80 63 00 00 */	lwz r3, 0(r3)
/* 8082235C  57 E0 08 3C */	slwi r0, r31, 1
/* 80822360  7C 9C 02 14 */	add r4, r28, r0
/* 80822364  A8 84 0E 84 */	lha r4, 0xe84(r4)
/* 80822368  4B 7E A0 35 */	bl mDoMtx_XrotM__FPA4_fs
/* 8082236C  48 00 00 50 */	b lbl_808223BC
lbl_80822370:
/* 80822370  2C 1F 00 0F */	cmpwi r31, 0xf
/* 80822374  41 80 00 48 */	blt lbl_808223BC
/* 80822378  2C 1F 00 12 */	cmpwi r31, 0x12
/* 8082237C  41 81 00 40 */	bgt lbl_808223BC
/* 80822380  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822384  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80822388  80 63 00 00 */	lwz r3, 0(r3)
/* 8082238C  A8 1C 0E AA */	lha r0, 0xeaa(r28)
/* 80822390  7C 00 0E 70 */	srawi r0, r0, 1
/* 80822394  7C 00 01 94 */	addze r0, r0
/* 80822398  7C 04 07 34 */	extsh r4, r0
/* 8082239C  4B 7E A1 31 */	bl mDoMtx_ZrotM__FPA4_fs
/* 808223A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808223A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808223A8  80 63 00 00 */	lwz r3, 0(r3)
/* 808223AC  57 E0 08 3C */	slwi r0, r31, 1
/* 808223B0  7C 9C 02 14 */	add r4, r28, r0
/* 808223B4  A8 84 0E 84 */	lha r4, 0xe84(r4)
/* 808223B8  4B 7E 9F E5 */	bl mDoMtx_XrotM__FPA4_fs
lbl_808223BC:
/* 808223BC  2C 1F 00 03 */	cmpwi r31, 3
/* 808223C0  40 82 00 1C */	bne lbl_808223DC
/* 808223C4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808223C8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808223CC  80 63 00 00 */	lwz r3, 0(r3)
/* 808223D0  A8 9C 0E B4 */	lha r4, 0xeb4(r28)
/* 808223D4  4B 7E A0 F9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 808223D8  48 00 00 B4 */	b lbl_8082248C
lbl_808223DC:
/* 808223DC  2C 1F 00 13 */	cmpwi r31, 0x13
/* 808223E0  40 82 00 24 */	bne lbl_80822404
/* 808223E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808223E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808223EC  80 63 00 00 */	lwz r3, 0(r3)
/* 808223F0  A8 1C 0E B4 */	lha r0, 0xeb4(r28)
/* 808223F4  7C 00 00 D0 */	neg r0, r0
/* 808223F8  7C 04 07 34 */	extsh r4, r0
/* 808223FC  4B 7E A0 D1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80822400  48 00 00 8C */	b lbl_8082248C
lbl_80822404:
/* 80822404  2C 1F 00 14 */	cmpwi r31, 0x14
/* 80822408  40 82 00 24 */	bne lbl_8082242C
/* 8082240C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822410  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80822414  80 63 00 00 */	lwz r3, 0(r3)
/* 80822418  A8 1C 0E B6 */	lha r0, 0xeb6(r28)
/* 8082241C  7C 00 00 D0 */	neg r0, r0
/* 80822420  7C 04 07 34 */	extsh r4, r0
/* 80822424  4B 7E A0 A9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80822428  48 00 00 64 */	b lbl_8082248C
lbl_8082242C:
/* 8082242C  2C 1F 00 19 */	cmpwi r31, 0x19
/* 80822430  40 82 00 24 */	bne lbl_80822454
/* 80822434  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822438  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082243C  80 63 00 00 */	lwz r3, 0(r3)
/* 80822440  A8 1C 0E B8 */	lha r0, 0xeb8(r28)
/* 80822444  7C 00 00 D0 */	neg r0, r0
/* 80822448  7C 04 07 34 */	extsh r4, r0
/* 8082244C  4B 7E A0 81 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80822450  48 00 00 3C */	b lbl_8082248C
lbl_80822454:
/* 80822454  2C 1F 00 1E */	cmpwi r31, 0x1e
/* 80822458  41 82 00 0C */	beq lbl_80822464
/* 8082245C  2C 1F 00 1F */	cmpwi r31, 0x1f
/* 80822460  40 82 00 2C */	bne lbl_8082248C
lbl_80822464:
/* 80822464  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822468  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082246C  80 63 00 00 */	lwz r3, 0(r3)
/* 80822470  A8 9C 0E BE */	lha r4, 0xebe(r28)
/* 80822474  4B 7E 9F C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80822478  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8082247C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80822480  80 63 00 00 */	lwz r3, 0(r3)
/* 80822484  A8 9C 0E BE */	lha r4, 0xebe(r28)
/* 80822488  4B 7E A0 45 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_8082248C:
/* 8082248C  2C 1F 00 00 */	cmpwi r31, 0
/* 80822490  40 82 00 44 */	bne lbl_808224D4
/* 80822494  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822498  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082249C  80 63 00 00 */	lwz r3, 0(r3)
/* 808224A0  38 80 00 00 */	li r4, 0
/* 808224A4  4B 7E 9F 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 808224A8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808224AC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808224B0  80 63 00 00 */	lwz r3, 0(r3)
/* 808224B4  38 80 00 00 */	li r4, 0
/* 808224B8  4B 7E 9E E5 */	bl mDoMtx_XrotM__FPA4_fs
/* 808224BC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808224C0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808224C4  80 63 00 00 */	lwz r3, 0(r3)
/* 808224C8  38 80 00 00 */	li r4, 0
/* 808224CC  4B 7E A0 01 */	bl mDoMtx_ZrotM__FPA4_fs
/* 808224D0  48 00 00 44 */	b lbl_80822514
lbl_808224D4:
/* 808224D4  40 82 00 40 */	bne lbl_80822514
/* 808224D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808224DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808224E0  80 63 00 00 */	lwz r3, 0(r3)
/* 808224E4  38 80 00 00 */	li r4, 0
/* 808224E8  4B 7E 9F 4D */	bl mDoMtx_YrotM__FPA4_fs
/* 808224EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 808224F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 808224F4  80 63 00 00 */	lwz r3, 0(r3)
/* 808224F8  38 80 00 00 */	li r4, 0
/* 808224FC  4B 7E 9E A1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80822500  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822504  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80822508  80 63 00 00 */	lwz r3, 0(r3)
/* 8082250C  38 80 00 00 */	li r4, 0
/* 80822510  4B 7E 9F BD */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80822514:
/* 80822514  A8 9C 0E C4 */	lha r4, 0xec4(r28)
/* 80822518  7C 80 07 35 */	extsh. r0, r4
/* 8082251C  41 82 00 54 */	beq lbl_80822570
/* 80822520  57 E0 07 FF */	clrlwi. r0, r31, 0x1f
/* 80822524  41 82 00 18 */	beq lbl_8082253C
/* 80822528  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8082252C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80822530  80 63 00 00 */	lwz r3, 0(r3)
/* 80822534  4B 7E 9F 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 80822538  48 00 00 38 */	b lbl_80822570
lbl_8082253C:
/* 8082253C  57 E0 07 BD */	rlwinm. r0, r31, 0, 0x1e, 0x1e
/* 80822540  41 82 00 18 */	beq lbl_80822558
/* 80822544  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822548  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8082254C  80 63 00 00 */	lwz r3, 0(r3)
/* 80822550  4B 7E 9E 4D */	bl mDoMtx_XrotM__FPA4_fs
/* 80822554  48 00 00 1C */	b lbl_80822570
lbl_80822558:
/* 80822558  57 E0 07 7B */	rlwinm. r0, r31, 0, 0x1d, 0x1d
/* 8082255C  41 82 00 14 */	beq lbl_80822570
/* 80822560  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822564  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80822568  80 63 00 00 */	lwz r3, 0(r3)
/* 8082256C  4B 7E 9F 61 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_80822570:
/* 80822570  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822574  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80822578  80 63 00 00 */	lwz r3, 0(r3)
/* 8082257C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80822580  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80822584  7C 80 EA 14 */	add r4, r0, r29
/* 80822588  4B B2 3F 29 */	bl PSMTXCopy
/* 8082258C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80822590  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80822594  80 63 00 00 */	lwz r3, 0(r3)
/* 80822598  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8082259C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 808225A0  4B B2 3F 11 */	bl PSMTXCopy
lbl_808225A4:
/* 808225A4  38 60 00 01 */	li r3, 1
/* 808225A8  39 61 00 20 */	addi r11, r1, 0x20
/* 808225AC  4B B3 FC 79 */	bl _restgpr_28
/* 808225B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 808225B4  7C 08 03 A6 */	mtlr r0
/* 808225B8  38 21 00 20 */	addi r1, r1, 0x20
/* 808225BC  4E 80 00 20 */	blr 
