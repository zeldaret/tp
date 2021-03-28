lbl_806912FC:
/* 806912FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80691300  7C 08 02 A6 */	mflr r0
/* 80691304  90 01 00 24 */	stw r0, 0x24(r1)
/* 80691308  39 61 00 20 */	addi r11, r1, 0x20
/* 8069130C  4B CD 0E CC */	b _savegpr_28
/* 80691310  2C 04 00 00 */	cmpwi r4, 0
/* 80691314  40 82 01 28 */	bne lbl_8069143C
/* 80691318  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 8069131C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80691320  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80691324  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80691328  83 9E 00 14 */	lwz r28, 0x14(r30)
/* 8069132C  28 1C 00 00 */	cmplwi r28, 0
/* 80691330  41 82 01 0C */	beq lbl_8069143C
/* 80691334  2C 1F 00 00 */	cmpwi r31, 0
/* 80691338  40 82 00 94 */	bne lbl_806913CC
/* 8069133C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80691340  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80691344  1F BF 00 30 */	mulli r29, r31, 0x30
/* 80691348  7C 60 EA 14 */	add r3, r0, r29
/* 8069134C  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80691350  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80691354  80 84 00 00 */	lwz r4, 0(r4)
/* 80691358  4B CB 51 58 */	b PSMTXCopy
/* 8069135C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80691360  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80691364  80 63 00 00 */	lwz r3, 0(r3)
/* 80691368  38 80 00 00 */	li r4, 0
/* 8069136C  4B 97 B0 C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80691370  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80691374  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80691378  80 63 00 00 */	lwz r3, 0(r3)
/* 8069137C  38 80 00 00 */	li r4, 0
/* 80691380  4B 97 B0 1C */	b mDoMtx_XrotM__FPA4_fs
/* 80691384  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80691388  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8069138C  80 63 00 00 */	lwz r3, 0(r3)
/* 80691390  38 80 00 00 */	li r4, 0
/* 80691394  4B 97 B1 38 */	b mDoMtx_ZrotM__FPA4_fs
/* 80691398  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8069139C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806913A0  80 63 00 00 */	lwz r3, 0(r3)
/* 806913A4  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806913A8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806913AC  7C 80 EA 14 */	add r4, r0, r29
/* 806913B0  4B CB 51 00 */	b PSMTXCopy
/* 806913B4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806913B8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806913BC  80 63 00 00 */	lwz r3, 0(r3)
/* 806913C0  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 806913C4  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 806913C8  4B CB 50 E8 */	b PSMTXCopy
lbl_806913CC:
/* 806913CC  2C 1F 00 11 */	cmpwi r31, 0x11
/* 806913D0  40 82 00 6C */	bne lbl_8069143C
/* 806913D4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 806913D8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806913DC  1F BF 00 30 */	mulli r29, r31, 0x30
/* 806913E0  7C 60 EA 14 */	add r3, r0, r29
/* 806913E4  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 806913E8  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 806913EC  80 84 00 00 */	lwz r4, 0(r4)
/* 806913F0  4B CB 50 C0 */	b PSMTXCopy
/* 806913F4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806913F8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806913FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80691400  A8 9C 06 BE */	lha r4, 0x6be(r28)
/* 80691404  4B 97 B0 C8 */	b mDoMtx_ZrotM__FPA4_fs
/* 80691408  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8069140C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80691410  80 63 00 00 */	lwz r3, 0(r3)
/* 80691414  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80691418  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8069141C  7C 80 EA 14 */	add r4, r0, r29
/* 80691420  4B CB 50 90 */	b PSMTXCopy
/* 80691424  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80691428  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8069142C  80 63 00 00 */	lwz r3, 0(r3)
/* 80691430  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80691434  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80691438  4B CB 50 78 */	b PSMTXCopy
lbl_8069143C:
/* 8069143C  38 60 00 01 */	li r3, 1
/* 80691440  39 61 00 20 */	addi r11, r1, 0x20
/* 80691444  4B CD 0D E0 */	b _restgpr_28
/* 80691448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8069144C  7C 08 03 A6 */	mtlr r0
/* 80691450  38 21 00 20 */	addi r1, r1, 0x20
/* 80691454  4E 80 00 20 */	blr 
