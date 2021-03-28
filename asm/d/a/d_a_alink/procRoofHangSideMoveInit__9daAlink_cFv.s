lbl_8010121C:
/* 8010121C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80101220  7C 08 02 A6 */	mflr r0
/* 80101224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80101228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010122C  93 C1 00 08 */	stw r30, 8(r1)
/* 80101230  7C 7E 1B 78 */	mr r30, r3
/* 80101234  38 80 00 89 */	li r4, 0x89
/* 80101238  4B FC 0D 35 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8010123C  88 1E 2F 98 */	lbz r0, 0x2f98(r30)
/* 80101240  28 00 00 02 */	cmplwi r0, 2
/* 80101244  40 82 00 18 */	bne lbl_8010125C
/* 80101248  3B E0 00 AB */	li r31, 0xab
/* 8010124C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80101250  38 03 40 00 */	addi r0, r3, 0x4000
/* 80101254  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80101258  48 00 00 14 */	b lbl_8010126C
lbl_8010125C:
/* 8010125C  3B E0 00 AC */	li r31, 0xac
/* 80101260  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80101264  38 03 C0 00 */	addi r0, r3, -16384
/* 80101268  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_8010126C:
/* 8010126C  7F C3 F3 78 */	mr r3, r30
/* 80101270  4B FF F3 81 */	bl getRoofHangSMoveAnmSpeed__9daAlink_cCFv
/* 80101274  7F C3 F3 78 */	mr r3, r30
/* 80101278  7F E4 FB 78 */	mr r4, r31
/* 8010127C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_roofHang_c0@ha
/* 80101280  38 A5 EB FC */	addi r5, r5, m__22daAlinkHIO_roofHang_c0@l
/* 80101284  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 80101288  4B FA BD 59 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 8010128C  7F C3 F3 78 */	mr r3, r30
/* 80101290  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80101294  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 80101298  38 80 00 00 */	li r4, 0
/* 8010129C  4B FB A4 D5 */	bl setSpecialGravity__9daAlink_cFffi
/* 801012A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801012A4  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 801012A8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 801012AC  C0 02 94 64 */	lfs f0, lit_14954(r2)
/* 801012B0  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 801012B4  C0 02 93 90 */	lfs f0, lit_8784(r2)
/* 801012B8  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 801012BC  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 801012C0  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 801012C4  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 801012C8  C0 03 00 04 */	lfs f0, 4(r3)
/* 801012CC  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 801012D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 801012D4  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 801012D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801012DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801012E0  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 801012E4  64 00 00 10 */	oris r0, r0, 0x10
/* 801012E8  90 03 5F 1C */	stw r0, 0x5f1c(r3)
/* 801012EC  38 60 00 01 */	li r3, 1
/* 801012F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801012F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801012F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801012FC  7C 08 03 A6 */	mtlr r0
/* 80101300  38 21 00 10 */	addi r1, r1, 0x10
/* 80101304  4E 80 00 20 */	blr 
