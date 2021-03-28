lbl_8011D6D0:
/* 8011D6D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011D6D4  7C 08 02 A6 */	mflr r0
/* 8011D6D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011D6DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011D6E0  7C 7F 1B 78 */	mr r31, r3
/* 8011D6E4  38 80 01 58 */	li r4, 0x158
/* 8011D6E8  4B FA 56 BD */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011D6EC  2C 03 00 00 */	cmpwi r3, 0
/* 8011D6F0  40 82 00 0C */	bne lbl_8011D6FC
/* 8011D6F4  38 60 00 01 */	li r3, 1
/* 8011D6F8  48 00 00 C8 */	b lbl_8011D7C0
lbl_8011D6FC:
/* 8011D6FC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011D700  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011D704  41 82 00 4C */	beq lbl_8011D750
/* 8011D708  7F E3 FB 78 */	mr r3, r31
/* 8011D70C  38 80 00 89 */	li r4, 0x89
/* 8011D710  48 00 BF 69 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 8011D714  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8011D718  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8011D71C  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8011D720  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011D724  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8011D728  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011D72C  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8011D730  7F E3 FB 78 */	mr r3, r31
/* 8011D734  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100BD@ha */
/* 8011D738  38 84 00 BD */	addi r4, r4, 0x00BD /* 0x000100BD@l */
/* 8011D73C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011D740  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011D744  7D 89 03 A6 */	mtctr r12
/* 8011D748  4E 80 04 21 */	bctrl 
/* 8011D74C  48 00 00 48 */	b lbl_8011D794
lbl_8011D750:
/* 8011D750  7F E3 FB 78 */	mr r3, r31
/* 8011D754  38 80 01 80 */	li r4, 0x180
/* 8011D758  4B F8 F8 29 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 8011D75C  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 8011D760  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 8011D764  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 8011D768  C0 03 00 04 */	lfs f0, 4(r3)
/* 8011D76C  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 8011D770  C0 03 00 08 */	lfs f0, 8(r3)
/* 8011D774  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 8011D778  7F E3 FB 78 */	mr r3, r31
/* 8011D77C  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100A1@ha */
/* 8011D780  38 84 00 A1 */	addi r4, r4, 0x00A1 /* 0x000100A1@l */
/* 8011D784  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8011D788  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8011D78C  7D 89 03 A6 */	mtctr r12
/* 8011D790  4E 80 04 21 */	bctrl 
lbl_8011D794:
/* 8011D794  C0 1F 35 8C */	lfs f0, 0x358c(r31)
/* 8011D798  D0 1F 33 B0 */	stfs f0, 0x33b0(r31)
/* 8011D79C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011D7A0  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 8011D7A4  7F E3 FB 78 */	mr r3, r31
/* 8011D7A8  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 8011D7AC  38 80 00 00 */	li r4, 0
/* 8011D7B0  4B F9 DF C1 */	bl setSpecialGravity__9daAlink_cFffi
/* 8011D7B4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8011D7B8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8011D7BC  38 60 00 01 */	li r3, 1
lbl_8011D7C0:
/* 8011D7C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011D7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011D7C8  7C 08 03 A6 */	mtlr r0
/* 8011D7CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8011D7D0  4E 80 00 20 */	blr 
