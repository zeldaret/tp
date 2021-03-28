lbl_804EF8B8:
/* 804EF8B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF8BC  7C 08 02 A6 */	mflr r0
/* 804EF8C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF8C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EF8C8  93 C1 00 08 */	stw r30, 8(r1)
/* 804EF8CC  2C 04 00 00 */	cmpwi r4, 0
/* 804EF8D0  40 82 00 B0 */	bne lbl_804EF980
/* 804EF8D4  A3 E3 00 14 */	lhz r31, 0x14(r3)
/* 804EF8D8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 804EF8DC  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 804EF8E0  80 63 00 38 */	lwz r3, 0x38(r3)
/* 804EF8E4  83 C3 00 14 */	lwz r30, 0x14(r3)
/* 804EF8E8  28 1E 00 00 */	cmplwi r30, 0
/* 804EF8EC  41 82 00 94 */	beq lbl_804EF980
/* 804EF8F0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804EF8F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804EF8F8  1C 1F 00 30 */	mulli r0, r31, 0x30
/* 804EF8FC  7C 63 02 14 */	add r3, r3, r0
/* 804EF900  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 804EF904  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 804EF908  80 84 00 00 */	lwz r4, 0(r4)
/* 804EF90C  4B E5 6B A4 */	b PSMTXCopy
/* 804EF910  2C 1F 00 02 */	cmpwi r31, 2
/* 804EF914  40 82 00 38 */	bne lbl_804EF94C
/* 804EF918  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804EF91C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804EF920  80 63 00 00 */	lwz r3, 0(r3)
/* 804EF924  A8 1E 07 C2 */	lha r0, 0x7c2(r30)
/* 804EF928  7C 00 00 D0 */	neg r0, r0
/* 804EF92C  7C 04 07 34 */	extsh r4, r0
/* 804EF930  4B B1 CB 04 */	b mDoMtx_YrotM__FPA4_fs
/* 804EF934  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804EF938  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804EF93C  80 63 00 00 */	lwz r3, 0(r3)
/* 804EF940  A8 9E 07 C4 */	lha r4, 0x7c4(r30)
/* 804EF944  4B B1 CB 88 */	b mDoMtx_ZrotM__FPA4_fs
/* 804EF948  48 00 00 20 */	b lbl_804EF968
lbl_804EF94C:
/* 804EF94C  2C 1F 00 01 */	cmpwi r31, 1
/* 804EF950  40 82 00 18 */	bne lbl_804EF968
/* 804EF954  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804EF958  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804EF95C  80 63 00 00 */	lwz r3, 0(r3)
/* 804EF960  A8 9E 07 C2 */	lha r4, 0x7c2(r30)
/* 804EF964  4B B1 CA 38 */	b mDoMtx_XrotM__FPA4_fs
lbl_804EF968:
/* 804EF968  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804EF96C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 804EF970  80 63 00 00 */	lwz r3, 0(r3)
/* 804EF974  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 804EF978  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 804EF97C  4B E5 6B 34 */	b PSMTXCopy
lbl_804EF980:
/* 804EF980  38 60 00 01 */	li r3, 1
/* 804EF984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EF988  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EF98C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF990  7C 08 03 A6 */	mtlr r0
/* 804EF994  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF998  4E 80 00 20 */	blr 
