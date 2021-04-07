lbl_800D698C:
/* 800D698C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D6990  7C 08 02 A6 */	mflr r0
/* 800D6994  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D6998  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D699C  7C 7F 1B 78 */	mr r31, r3
/* 800D69A0  38 80 00 54 */	li r4, 0x54
/* 800D69A4  4B FE C4 01 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D69A8  2C 03 00 00 */	cmpwi r3, 0
/* 800D69AC  40 82 00 0C */	bne lbl_800D69B8
/* 800D69B0  38 60 00 00 */	li r3, 0
/* 800D69B4  48 00 00 70 */	b lbl_800D6A24
lbl_800D69B8:
/* 800D69B8  7F E3 FB 78 */	mr r3, r31
/* 800D69BC  38 80 00 8E */	li r4, 0x8e
/* 800D69C0  3C A0 80 39 */	lis r5, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D69C4  38 A5 DE 8C */	addi r5, r5, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D69C8  C0 25 00 6C */	lfs f1, 0x6c(r5)
/* 800D69CC  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800D69D0  4B FD 66 11 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800D69D4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D69D8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D69DC  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha /* 0x80425544@ha */
/* 800D69E0  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)  /* 0x80425544@l */
/* 800D69E4  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800D69E8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D69EC  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800D69F0  C0 03 00 08 */	lfs f0, 8(r3)
/* 800D69F4  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800D69F8  38 80 00 00 */	li r4, 0
/* 800D69FC  90 9F 31 98 */	stw r4, 0x3198(r31)
/* 800D6A00  B0 9F 30 0C */	sth r4, 0x300c(r31)
/* 800D6A04  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800D6A08  20 60 00 1E */	subfic r3, r0, 0x1e
/* 800D6A0C  30 03 FF FF */	addic r0, r3, -1
/* 800D6A10  7C 00 19 10 */	subfe r0, r0, r3
/* 800D6A14  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 800D6A18  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800D6A1C  B0 9F 30 10 */	sth r4, 0x3010(r31)
/* 800D6A20  38 60 00 01 */	li r3, 1
lbl_800D6A24:
/* 800D6A24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D6A28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D6A2C  7C 08 03 A6 */	mtlr r0
/* 800D6A30  38 21 00 10 */	addi r1, r1, 0x10
/* 800D6A34  4E 80 00 20 */	blr 
