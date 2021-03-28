lbl_8018A2DC:
/* 8018A2DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018A2E0  7C 08 02 A6 */	mflr r0
/* 8018A2E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018A2E8  39 61 00 20 */	addi r11, r1, 0x20
/* 8018A2EC  48 1D 7E F1 */	bl _savegpr_29
/* 8018A2F0  7C 7F 1B 78 */	mr r31, r3
/* 8018A2F4  48 00 2F 69 */	bl headerTxtChangeAnm__14dFile_select_cFv
/* 8018A2F8  7C 7D 1B 78 */	mr r29, r3
/* 8018A2FC  88 1F 02 65 */	lbz r0, 0x265(r31)
/* 8018A300  54 00 10 3A */	slwi r0, r0, 2
/* 8018A304  7C 7F 02 14 */	add r3, r31, r0
/* 8018A308  80 63 02 2C */	lwz r3, 0x22c(r3)
/* 8018A30C  3C 80 80 43 */	lis r4, g_fsHIO@ha
/* 8018A310  38 84 C9 EC */	addi r4, r4, g_fsHIO@l
/* 8018A314  88 84 00 07 */	lbz r4, 7(r4)
/* 8018A318  38 A0 00 00 */	li r5, 0
/* 8018A31C  38 C0 00 FF */	li r6, 0xff
/* 8018A320  38 E0 00 00 */	li r7, 0
/* 8018A324  48 0C B5 55 */	bl alphaAnime__13CPaneMgrAlphaFsUcUcUc
/* 8018A328  7C 7E 1B 78 */	mr r30, r3
/* 8018A32C  7F E3 FB 78 */	mr r3, r31
/* 8018A330  88 9F 02 65 */	lbz r4, 0x265(r31)
/* 8018A334  48 00 33 59 */	bl selectWakuAlpahAnm__14dFile_select_cFUc
/* 8018A338  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 8018A33C  88 84 00 3D */	lbz r4, 0x3d(r4)
/* 8018A340  30 04 FF FF */	addic r0, r4, -1
/* 8018A344  7C 00 21 10 */	subfe r0, r0, r4
/* 8018A348  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8018A34C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8018A350  28 00 00 01 */	cmplwi r0, 1
/* 8018A354  40 82 00 44 */	bne lbl_8018A398
/* 8018A358  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8018A35C  28 00 00 01 */	cmplwi r0, 1
/* 8018A360  40 82 00 38 */	bne lbl_8018A398
/* 8018A364  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8018A368  28 00 00 01 */	cmplwi r0, 1
/* 8018A36C  40 82 00 2C */	bne lbl_8018A398
/* 8018A370  28 04 00 01 */	cmplwi r4, 1
/* 8018A374  40 82 00 24 */	bne lbl_8018A398
/* 8018A378  3C 60 80 43 */	lis r3, g_fsHIO@ha
/* 8018A37C  38 63 C9 EC */	addi r3, r3, g_fsHIO@l
/* 8018A380  88 03 00 0A */	lbz r0, 0xa(r3)
/* 8018A384  B0 1F 03 AC */	sth r0, 0x3ac(r31)
/* 8018A388  38 00 00 00 */	li r0, 0
/* 8018A38C  98 1F 02 67 */	stb r0, 0x267(r31)
/* 8018A390  38 00 00 28 */	li r0, 0x28
/* 8018A394  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_8018A398:
/* 8018A398  39 61 00 20 */	addi r11, r1, 0x20
/* 8018A39C  48 1D 7E 8D */	bl _restgpr_29
/* 8018A3A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018A3A4  7C 08 03 A6 */	mtlr r0
/* 8018A3A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8018A3AC  4E 80 00 20 */	blr 
