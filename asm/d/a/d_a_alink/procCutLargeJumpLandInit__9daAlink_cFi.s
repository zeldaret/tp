lbl_800D66C0:
/* 800D66C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800D66C4  7C 08 02 A6 */	mflr r0
/* 800D66C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800D66CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800D66D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800D66D4  7C 7E 1B 78 */	mr r30, r3
/* 800D66D8  7C 9F 23 78 */	mr r31, r4
/* 800D66DC  38 80 00 31 */	li r4, 0x31
/* 800D66E0  4B FE B8 8D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D66E4  7F C3 F3 78 */	mr r3, r30
/* 800D66E8  48 00 08 F9 */	bl checkCutLandDamage__9daAlink_cFv
/* 800D66EC  7F C3 F3 78 */	mr r3, r30
/* 800D66F0  38 80 01 8E */	li r4, 0x18e
/* 800D66F4  3C A0 80 39 */	lis r5, m__26daAlinkHIO_cutLargeJump_c0@ha /* 0x8038DE18@ha */
/* 800D66F8  38 A5 DE 18 */	addi r5, r5, m__26daAlinkHIO_cutLargeJump_c0@l /* 0x8038DE18@l */
/* 800D66FC  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800D6700  4B FD 69 F5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D6704  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D6708  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D670C  38 00 00 0C */	li r0, 0xc
/* 800D6710  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800D6714  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha /* 0x80425544@ha */
/* 800D6718  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)  /* 0x80425544@l */
/* 800D671C  D0 1E 35 88 */	stfs f0, 0x3588(r30)
/* 800D6720  C0 03 00 04 */	lfs f0, 4(r3)
/* 800D6724  D0 1E 35 8C */	stfs f0, 0x358c(r30)
/* 800D6728  C0 03 00 08 */	lfs f0, 8(r3)
/* 800D672C  D0 1E 35 90 */	stfs f0, 0x3590(r30)
/* 800D6730  38 00 00 04 */	li r0, 4
/* 800D6734  98 1E 2F 9D */	stb r0, 0x2f9d(r30)
/* 800D6738  7F C3 F3 78 */	mr r3, r30
/* 800D673C  38 80 00 04 */	li r4, 4
/* 800D6740  48 04 AA 81 */	bl setFootEffectProcType__9daAlink_cFi
/* 800D6744  80 1E 05 84 */	lwz r0, 0x584(r30)
/* 800D6748  60 00 00 30 */	ori r0, r0, 0x30
/* 800D674C  90 1E 05 84 */	stw r0, 0x584(r30)
/* 800D6750  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800D6754  60 00 00 02 */	ori r0, r0, 2
/* 800D6758  90 1E 05 80 */	stw r0, 0x580(r30)
/* 800D675C  7F C3 F3 78 */	mr r3, r30
/* 800D6760  38 80 00 13 */	li r4, 0x13
/* 800D6764  4B FF AD C9 */	bl setCutType__9daAlink_cFUc
/* 800D6768  3C 60 80 39 */	lis r3, m__26daAlinkHIO_cutLargeJump_c0@ha /* 0x8038DE18@ha */
/* 800D676C  38 63 DE 18 */	addi r3, r3, m__26daAlinkHIO_cutLargeJump_c0@l /* 0x8038DE18@l */
/* 800D6770  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 800D6774  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 800D6778  C0 02 93 04 */	lfs f0, lit_6896(r2)
/* 800D677C  D0 1E 34 7C */	stfs f0, 0x347c(r30)
/* 800D6780  38 00 00 00 */	li r0, 0
/* 800D6784  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800D6788  93 FE 31 98 */	stw r31, 0x3198(r30)
/* 800D678C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D6790  D0 21 00 08 */	stfs f1, 8(r1)
/* 800D6794  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800D6798  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800D679C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800D67A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D67A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D67A8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800D67AC  38 80 00 03 */	li r4, 3
/* 800D67B0  38 A0 00 1F */	li r5, 0x1f
/* 800D67B4  38 C1 00 08 */	addi r6, r1, 8
/* 800D67B8  4B F9 92 6D */	bl StartShock__12dVibration_cFii4cXyz
/* 800D67BC  7F C3 F3 78 */	mr r3, r30
/* 800D67C0  48 04 CC 75 */	bl setCutLargeJumpLandEffect__9daAlink_cFv
/* 800D67C4  7F C3 F3 78 */	mr r3, r30
/* 800D67C8  3C 80 00 02 */	lis r4, 0x0002 /* 0x000200B3@ha */
/* 800D67CC  38 84 00 B3 */	addi r4, r4, 0x00B3 /* 0x000200B3@l */
/* 800D67D0  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800D67D4  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800D67D8  7D 89 03 A6 */	mtctr r12
/* 800D67DC  4E 80 04 21 */	bctrl 
/* 800D67E0  38 60 00 01 */	li r3, 1
/* 800D67E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800D67E8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800D67EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800D67F0  7C 08 03 A6 */	mtlr r0
/* 800D67F4  38 21 00 20 */	addi r1, r1, 0x20
/* 800D67F8  4E 80 00 20 */	blr 
