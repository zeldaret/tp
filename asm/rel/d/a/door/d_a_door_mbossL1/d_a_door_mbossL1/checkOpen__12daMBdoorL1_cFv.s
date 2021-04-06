lbl_80676308:
/* 80676308  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8067630C  7C 08 02 A6 */	mflr r0
/* 80676310  90 01 00 34 */	stw r0, 0x34(r1)
/* 80676314  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80676318  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8067631C  7C 7F 1B 78 */	mr r31, r3
/* 80676320  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80676324  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676328  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 8067632C  4B FF CC 59 */	bl getDoorType__12daMBdoorL1_cFv
/* 80676330  2C 03 00 02 */	cmpwi r3, 2
/* 80676334  40 82 00 24 */	bne lbl_80676358
/* 80676338  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067633C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676340  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80676344  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80676348  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8067634C  41 82 00 0C */	beq lbl_80676358
/* 80676350  38 60 00 00 */	li r3, 0
/* 80676354  48 00 01 64 */	b lbl_806764B8
lbl_80676358:
/* 80676358  7F E3 FB 78 */	mr r3, r31
/* 8067635C  48 00 01 75 */	bl checkFrontKey__12daMBdoorL1_cFv
/* 80676360  2C 03 00 00 */	cmpwi r3, 0
/* 80676364  40 82 00 14 */	bne lbl_80676378
/* 80676368  7F E3 FB 78 */	mr r3, r31
/* 8067636C  48 00 01 FD */	bl checkBackKey__12daMBdoorL1_cFv
/* 80676370  2C 03 00 00 */	cmpwi r3, 0
/* 80676374  41 82 00 20 */	beq lbl_80676394
lbl_80676378:
/* 80676378  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067637C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80676380  88 03 09 74 */	lbz r0, 0x974(r3)
/* 80676384  28 00 00 00 */	cmplwi r0, 0
/* 80676388  40 82 00 0C */	bne lbl_80676394
/* 8067638C  38 60 00 00 */	li r3, 0
/* 80676390  48 00 01 28 */	b lbl_806764B8
lbl_80676394:
/* 80676394  7F E3 FB 78 */	mr r3, r31
/* 80676398  48 00 01 D9 */	bl checkFrontStop__12daMBdoorL1_cFv
/* 8067639C  2C 03 00 00 */	cmpwi r3, 0
/* 806763A0  40 82 00 14 */	bne lbl_806763B4
/* 806763A4  7F E3 FB 78 */	mr r3, r31
/* 806763A8  48 00 02 69 */	bl checkBackStop__12daMBdoorL1_cFv
/* 806763AC  2C 03 00 00 */	cmpwi r3, 0
/* 806763B0  41 82 00 0C */	beq lbl_806763BC
lbl_806763B4:
/* 806763B4  38 60 00 00 */	li r3, 0
/* 806763B8  48 00 01 00 */	b lbl_806764B8
lbl_806763BC:
/* 806763BC  7F E3 FB 78 */	mr r3, r31
/* 806763C0  48 00 02 F1 */	bl checkFrontSw__12daMBdoorL1_cFv
/* 806763C4  2C 03 00 00 */	cmpwi r3, 0
/* 806763C8  40 82 00 14 */	bne lbl_806763DC
/* 806763CC  7F E3 FB 78 */	mr r3, r31
/* 806763D0  48 00 03 75 */	bl checkBackSw__12daMBdoorL1_cFv
/* 806763D4  2C 03 00 00 */	cmpwi r3, 0
/* 806763D8  41 82 00 0C */	beq lbl_806763E4
lbl_806763DC:
/* 806763DC  38 60 00 00 */	li r3, 0
/* 806763E0  48 00 00 D8 */	b lbl_806764B8
lbl_806763E4:
/* 806763E4  7F E3 FB 78 */	mr r3, r31
/* 806763E8  4B FF FC CD */	bl checkArea__12daMBdoorL1_cFv
/* 806763EC  2C 03 00 00 */	cmpwi r3, 0
/* 806763F0  40 82 00 0C */	bne lbl_806763FC
/* 806763F4  38 60 00 00 */	li r3, 0
/* 806763F8  48 00 00 C0 */	b lbl_806764B8
lbl_806763FC:
/* 806763FC  7F E3 FB 78 */	mr r3, r31
/* 80676400  4B FF CB 85 */	bl getDoorType__12daMBdoorL1_cFv
/* 80676404  2C 03 00 02 */	cmpwi r3, 2
/* 80676408  40 82 00 AC */	bne lbl_806764B4
/* 8067640C  38 61 00 08 */	addi r3, r1, 8
/* 80676410  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80676414  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80676418  4B BF 07 1D */	bl __mi__4cXyzCFRC3Vec
/* 8067641C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80676420  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80676424  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80676428  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8067642C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80676430  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80676434  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80676438  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8067643C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80676440  7C 00 00 D0 */	neg r0, r0
/* 80676444  7C 04 07 34 */	extsh r4, r0
/* 80676448  4B 99 5F 95 */	bl mDoMtx_YrotS__FPA4_fs
/* 8067644C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80676450  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80676454  38 81 00 14 */	addi r4, r1, 0x14
/* 80676458  7C 85 23 78 */	mr r5, r4
/* 8067645C  4B CD 09 11 */	bl PSMTXMultVec
/* 80676460  88 1F 05 DF */	lbz r0, 0x5df(r31)
/* 80676464  28 00 00 00 */	cmplwi r0, 0
/* 80676468  40 82 00 1C */	bne lbl_80676484
/* 8067646C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80676470  3C 60 80 67 */	lis r3, lit_3740@ha /* 0x80677598@ha */
/* 80676474  C0 03 75 98 */	lfs f0, lit_3740@l(r3)  /* 0x80677598@l */
/* 80676478  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067647C  4C 41 13 82 */	cror 2, 1, 2
/* 80676480  41 82 00 20 */	beq lbl_806764A0
lbl_80676484:
/* 80676484  28 00 00 01 */	cmplwi r0, 1
/* 80676488  40 82 00 24 */	bne lbl_806764AC
/* 8067648C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80676490  3C 60 80 67 */	lis r3, lit_3740@ha /* 0x80677598@ha */
/* 80676494  C0 03 75 98 */	lfs f0, lit_3740@l(r3)  /* 0x80677598@l */
/* 80676498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8067649C  40 80 00 10 */	bge lbl_806764AC
lbl_806764A0:
/* 806764A0  38 00 00 00 */	li r0, 0
/* 806764A4  98 1F 05 DE */	stb r0, 0x5de(r31)
/* 806764A8  48 00 00 0C */	b lbl_806764B4
lbl_806764AC:
/* 806764AC  38 00 00 01 */	li r0, 1
/* 806764B0  98 1F 05 DE */	stb r0, 0x5de(r31)
lbl_806764B4:
/* 806764B4  38 60 00 01 */	li r3, 1
lbl_806764B8:
/* 806764B8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806764BC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806764C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806764C4  7C 08 03 A6 */	mtlr r0
/* 806764C8  38 21 00 30 */	addi r1, r1, 0x30
/* 806764CC  4E 80 00 20 */	blr 
