lbl_80A4932C:
/* 80A4932C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A49330  7C 08 02 A6 */	mflr r0
/* 80A49334  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A49338  39 61 00 20 */	addi r11, r1, 0x20
/* 80A4933C  4B 91 8E 9D */	bl _savegpr_28
/* 80A49340  2C 04 00 00 */	cmpwi r4, 0
/* 80A49344  40 82 03 00 */	bne lbl_80A49644
/* 80A49348  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80A4934C  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80A49350  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80A49354  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80A49358  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80A4935C  28 1C 00 00 */	cmplwi r28, 0
/* 80A49360  41 82 02 E4 */	beq lbl_80A49644
/* 80A49364  88 7C 05 FC */	lbz r3, 0x5fc(r28)
/* 80A49368  2C 03 00 01 */	cmpwi r3, 1
/* 80A4936C  40 82 00 B8 */	bne lbl_80A49424
/* 80A49370  2C 1F 00 03 */	cmpwi r31, 3
/* 80A49374  40 82 00 B0 */	bne lbl_80A49424
/* 80A49378  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A4937C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A49380  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80A49384  7C 60 EA 14 */	add r3, r0, r29
/* 80A49388  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80A4938C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80A49390  80 84 00 00 */	lwz r4, 0(r4)
/* 80A49394  4B 8F D1 1D */	bl PSMTXCopy
/* 80A49398  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4939C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A493A0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A493A4  A8 1C 05 FE */	lha r0, 0x5fe(r28)
/* 80A493A8  7C 00 00 D0 */	neg r0, r0
/* 80A493AC  7C 04 07 34 */	extsh r4, r0
/* 80A493B0  4B 5C 30 85 */	bl mDoMtx_YrotM__FPA4_fs
/* 80A493B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A493B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A493BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A493C0  A8 1C 05 FE */	lha r0, 0x5fe(r28)
/* 80A493C4  7C 00 0E 70 */	srawi r0, r0, 1
/* 80A493C8  7C 00 01 94 */	addze r0, r0
/* 80A493CC  7C 00 00 D0 */	neg r0, r0
/* 80A493D0  7C 04 07 34 */	extsh r4, r0
/* 80A493D4  4B 5C 2F C9 */	bl mDoMtx_XrotM__FPA4_fs
/* 80A493D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A493DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A493E0  80 63 00 00 */	lwz r3, 0(r3)
/* 80A493E4  A8 9C 06 00 */	lha r4, 0x600(r28)
/* 80A493E8  4B 5C 30 E5 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A493EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A493F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A493F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A493F8  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A493FC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A49400  7C 80 EA 14 */	add r4, r0, r29
/* 80A49404  4B 8F D0 AD */	bl PSMTXCopy
/* 80A49408  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4940C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A49410  80 63 00 00 */	lwz r3, 0(r3)
/* 80A49414  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80A49418  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80A4941C  4B 8F D0 95 */	bl PSMTXCopy
/* 80A49420  48 00 00 E4 */	b lbl_80A49504
lbl_80A49424:
/* 80A49424  7C 60 07 74 */	extsb r0, r3
/* 80A49428  2C 00 00 02 */	cmpwi r0, 2
/* 80A4942C  41 80 00 D8 */	blt lbl_80A49504
/* 80A49430  2C 1F 00 03 */	cmpwi r31, 3
/* 80A49434  41 82 00 0C */	beq lbl_80A49440
/* 80A49438  2C 1F 00 04 */	cmpwi r31, 4
/* 80A4943C  40 82 00 C8 */	bne lbl_80A49504
lbl_80A49440:
/* 80A49440  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A49444  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A49448  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80A4944C  7C 60 EA 14 */	add r3, r0, r29
/* 80A49450  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80A49454  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80A49458  80 84 00 00 */	lwz r4, 0(r4)
/* 80A4945C  4B 8F D0 55 */	bl PSMTXCopy
/* 80A49460  2C 1F 00 03 */	cmpwi r31, 3
/* 80A49464  40 82 00 50 */	bne lbl_80A494B4
/* 80A49468  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A4946C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A49470  80 63 00 00 */	lwz r3, 0(r3)
/* 80A49474  A8 1C 05 FE */	lha r0, 0x5fe(r28)
/* 80A49478  7C 00 0E 70 */	srawi r0, r0, 1
/* 80A4947C  7C 00 01 94 */	addze r0, r0
/* 80A49480  7C 00 00 D0 */	neg r0, r0
/* 80A49484  7C 04 07 34 */	extsh r4, r0
/* 80A49488  4B 5C 2F AD */	bl mDoMtx_YrotM__FPA4_fs
/* 80A4948C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A49490  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A49494  80 63 00 00 */	lwz r3, 0(r3)
/* 80A49498  A8 1C 05 FE */	lha r0, 0x5fe(r28)
/* 80A4949C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80A494A0  7C 00 01 94 */	addze r0, r0
/* 80A494A4  7C 00 00 D0 */	neg r0, r0
/* 80A494A8  7C 04 07 34 */	extsh r4, r0
/* 80A494AC  4B 5C 2E F1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80A494B0  48 00 00 20 */	b lbl_80A494D0
lbl_80A494B4:
/* 80A494B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A494B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A494BC  80 63 00 00 */	lwz r3, 0(r3)
/* 80A494C0  A8 1C 05 FE */	lha r0, 0x5fe(r28)
/* 80A494C4  7C 00 00 D0 */	neg r0, r0
/* 80A494C8  7C 04 07 34 */	extsh r4, r0
/* 80A494CC  4B 5C 2F 69 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80A494D0:
/* 80A494D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A494D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A494D8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A494DC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A494E0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A494E4  7C 80 EA 14 */	add r4, r0, r29
/* 80A494E8  4B 8F CF C9 */	bl PSMTXCopy
/* 80A494EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A494F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A494F4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A494F8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80A494FC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80A49500  4B 8F CF B1 */	bl PSMTXCopy
lbl_80A49504:
/* 80A49504  88 1C 05 FC */	lbz r0, 0x5fc(r28)
/* 80A49508  7C 00 07 74 */	extsb r0, r0
/* 80A4950C  2C 00 00 02 */	cmpwi r0, 2
/* 80A49510  41 80 00 C4 */	blt lbl_80A495D4
/* 80A49514  2C 1F 00 01 */	cmpwi r31, 1
/* 80A49518  41 82 00 0C */	beq lbl_80A49524
/* 80A4951C  2C 1F 00 02 */	cmpwi r31, 2
/* 80A49520  40 82 00 B4 */	bne lbl_80A495D4
lbl_80A49524:
/* 80A49524  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A49528  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A4952C  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80A49530  7C 60 EA 14 */	add r3, r0, r29
/* 80A49534  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80A49538  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80A4953C  80 84 00 00 */	lwz r4, 0(r4)
/* 80A49540  4B 8F CF 71 */	bl PSMTXCopy
/* 80A49544  2C 1F 00 02 */	cmpwi r31, 2
/* 80A49548  40 82 00 28 */	bne lbl_80A49570
/* 80A4954C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A49550  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A49554  80 63 00 00 */	lwz r3, 0(r3)
/* 80A49558  A8 1C 06 02 */	lha r0, 0x602(r28)
/* 80A4955C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80A49560  7C 00 01 94 */	addze r0, r0
/* 80A49564  7C 04 07 34 */	extsh r4, r0
/* 80A49568  4B 5C 2E CD */	bl mDoMtx_YrotM__FPA4_fs
/* 80A4956C  48 00 00 18 */	b lbl_80A49584
lbl_80A49570:
/* 80A49570  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A49574  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A49578  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4957C  A8 9C 06 02 */	lha r4, 0x602(r28)
/* 80A49580  4B 5C 2E B5 */	bl mDoMtx_YrotM__FPA4_fs
lbl_80A49584:
/* 80A49584  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A49588  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A4958C  80 63 00 00 */	lwz r3, 0(r3)
/* 80A49590  A8 1C 05 FE */	lha r0, 0x5fe(r28)
/* 80A49594  7C 00 00 D0 */	neg r0, r0
/* 80A49598  7C 04 07 34 */	extsh r4, r0
/* 80A4959C  4B 5C 2E 01 */	bl mDoMtx_XrotM__FPA4_fs
/* 80A495A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A495A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A495A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A495AC  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A495B0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A495B4  7C 80 EA 14 */	add r4, r0, r29
/* 80A495B8  4B 8F CE F9 */	bl PSMTXCopy
/* 80A495BC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A495C0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A495C4  80 63 00 00 */	lwz r3, 0(r3)
/* 80A495C8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80A495CC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80A495D0  4B 8F CE E1 */	bl PSMTXCopy
lbl_80A495D4:
/* 80A495D4  2C 1F 00 0F */	cmpwi r31, 0xf
/* 80A495D8  40 82 00 6C */	bne lbl_80A49644
/* 80A495DC  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A495E0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A495E4  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80A495E8  7C 60 EA 14 */	add r3, r0, r29
/* 80A495EC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80A495F0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80A495F4  80 84 00 00 */	lwz r4, 0(r4)
/* 80A495F8  4B 8F CE B9 */	bl PSMTXCopy
/* 80A495FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A49600  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A49604  80 63 00 00 */	lwz r3, 0(r3)
/* 80A49608  A8 9C 06 06 */	lha r4, 0x606(r28)
/* 80A4960C  4B 5C 2E C1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80A49610  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A49614  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A49618  80 63 00 00 */	lwz r3, 0(r3)
/* 80A4961C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A49620  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A49624  7C 80 EA 14 */	add r4, r0, r29
/* 80A49628  4B 8F CE 89 */	bl PSMTXCopy
/* 80A4962C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80A49630  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80A49634  80 63 00 00 */	lwz r3, 0(r3)
/* 80A49638  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80A4963C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80A49640  4B 8F CE 71 */	bl PSMTXCopy
lbl_80A49644:
/* 80A49644  38 60 00 01 */	li r3, 1
/* 80A49648  39 61 00 20 */	addi r11, r1, 0x20
/* 80A4964C  4B 91 8B D9 */	bl _restgpr_28
/* 80A49650  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A49654  7C 08 03 A6 */	mtlr r0
/* 80A49658  38 21 00 20 */	addi r1, r1, 0x20
/* 80A4965C  4E 80 00 20 */	blr 
