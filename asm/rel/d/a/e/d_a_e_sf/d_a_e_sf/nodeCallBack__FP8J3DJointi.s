lbl_80785234:
/* 80785234  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80785238  7C 08 02 A6 */	mflr r0
/* 8078523C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80785240  39 61 00 20 */	addi r11, r1, 0x20
/* 80785244  4B BD CF 94 */	b _savegpr_28
/* 80785248  2C 04 00 00 */	cmpwi r4, 0
/* 8078524C  40 82 01 F4 */	bne lbl_80785440
/* 80785250  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 80785254  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80785258  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8078525C  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80785260  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 80785264  28 1C 00 00 */	cmplwi r28, 0
/* 80785268  41 82 01 D8 */	beq lbl_80785440
/* 8078526C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80785270  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80785274  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80785278  7C 60 EA 14 */	add r3, r0, r29
/* 8078527C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80785280  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80785284  80 84 00 00 */	lwz r4, 0(r4)
/* 80785288  4B BC 12 28 */	b PSMTXCopy
/* 8078528C  2C 1F 00 04 */	cmpwi r31, 4
/* 80785290  40 82 00 54 */	bne lbl_807852E4
/* 80785294  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80785298  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078529C  80 63 00 00 */	lwz r3, 0(r3)
/* 807852A0  A8 9C 06 B0 */	lha r4, 0x6b0(r28)
/* 807852A4  A8 1C 06 B8 */	lha r0, 0x6b8(r28)
/* 807852A8  7C 04 02 14 */	add r0, r4, r0
/* 807852AC  7C 04 07 34 */	extsh r4, r0
/* 807852B0  4B 88 71 84 */	b mDoMtx_YrotM__FPA4_fs
/* 807852B4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807852B8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807852BC  80 63 00 00 */	lwz r3, 0(r3)
/* 807852C0  A8 9C 06 B2 */	lha r4, 0x6b2(r28)
/* 807852C4  4B 88 70 D8 */	b mDoMtx_XrotM__FPA4_fs
/* 807852C8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807852CC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807852D0  80 63 00 00 */	lwz r3, 0(r3)
/* 807852D4  A8 1C 06 B6 */	lha r0, 0x6b6(r28)
/* 807852D8  7C 00 00 D0 */	neg r0, r0
/* 807852DC  7C 04 07 34 */	extsh r4, r0
/* 807852E0  4B 88 71 EC */	b mDoMtx_ZrotM__FPA4_fs
lbl_807852E4:
/* 807852E4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807852E8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807852EC  80 63 00 00 */	lwz r3, 0(r3)
/* 807852F0  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 807852F4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 807852F8  7C 80 EA 14 */	add r4, r0, r29
/* 807852FC  4B BC 11 B4 */	b PSMTXCopy
/* 80785300  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80785304  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80785308  80 63 00 00 */	lwz r3, 0(r3)
/* 8078530C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80785310  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80785314  4B BC 11 9C */	b PSMTXCopy
/* 80785318  2C 1F 00 00 */	cmpwi r31, 0
/* 8078531C  40 82 00 90 */	bne lbl_807853AC
/* 80785320  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80785324  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80785328  7C 60 EA 14 */	add r3, r0, r29
/* 8078532C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80785330  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80785334  80 84 00 00 */	lwz r4, 0(r4)
/* 80785338  4B BC 11 78 */	b PSMTXCopy
/* 8078533C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80785340  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80785344  80 63 00 00 */	lwz r3, 0(r3)
/* 80785348  38 80 00 00 */	li r4, 0
/* 8078534C  4B 88 70 E8 */	b mDoMtx_YrotM__FPA4_fs
/* 80785350  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80785354  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80785358  80 63 00 00 */	lwz r3, 0(r3)
/* 8078535C  38 80 00 00 */	li r4, 0
/* 80785360  4B 88 70 3C */	b mDoMtx_XrotM__FPA4_fs
/* 80785364  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80785368  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078536C  80 63 00 00 */	lwz r3, 0(r3)
/* 80785370  38 80 00 00 */	li r4, 0
/* 80785374  4B 88 71 58 */	b mDoMtx_ZrotM__FPA4_fs
/* 80785378  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078537C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80785380  80 63 00 00 */	lwz r3, 0(r3)
/* 80785384  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80785388  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8078538C  7C 80 EA 14 */	add r4, r0, r29
/* 80785390  4B BC 11 20 */	b PSMTXCopy
/* 80785394  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80785398  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8078539C  80 63 00 00 */	lwz r3, 0(r3)
/* 807853A0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 807853A4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 807853A8  4B BC 11 08 */	b PSMTXCopy
lbl_807853AC:
/* 807853AC  2C 1F 00 00 */	cmpwi r31, 0
/* 807853B0  40 82 00 90 */	bne lbl_80785440
/* 807853B4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 807853B8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 807853BC  7C 60 EA 14 */	add r3, r0, r29
/* 807853C0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 807853C4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 807853C8  80 84 00 00 */	lwz r4, 0(r4)
/* 807853CC  4B BC 10 E4 */	b PSMTXCopy
/* 807853D0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807853D4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807853D8  80 63 00 00 */	lwz r3, 0(r3)
/* 807853DC  38 80 00 00 */	li r4, 0
/* 807853E0  4B 88 70 54 */	b mDoMtx_YrotM__FPA4_fs
/* 807853E4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807853E8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 807853EC  80 63 00 00 */	lwz r3, 0(r3)
/* 807853F0  38 80 00 00 */	li r4, 0
/* 807853F4  4B 88 6F A8 */	b mDoMtx_XrotM__FPA4_fs
/* 807853F8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 807853FC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80785400  80 63 00 00 */	lwz r3, 0(r3)
/* 80785404  38 80 00 00 */	li r4, 0
/* 80785408  4B 88 70 C4 */	b mDoMtx_ZrotM__FPA4_fs
/* 8078540C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80785410  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80785414  80 63 00 00 */	lwz r3, 0(r3)
/* 80785418  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8078541C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80785420  7C 80 EA 14 */	add r4, r0, r29
/* 80785424  4B BC 10 8C */	b PSMTXCopy
/* 80785428  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8078542C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80785430  80 63 00 00 */	lwz r3, 0(r3)
/* 80785434  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80785438  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 8078543C  4B BC 10 74 */	b PSMTXCopy
lbl_80785440:
/* 80785440  38 60 00 01 */	li r3, 1
/* 80785444  39 61 00 20 */	addi r11, r1, 0x20
/* 80785448  4B BD CD DC */	b _restgpr_28
/* 8078544C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80785450  7C 08 03 A6 */	mtlr r0
/* 80785454  38 21 00 20 */	addi r1, r1, 0x20
/* 80785458  4E 80 00 20 */	blr 
