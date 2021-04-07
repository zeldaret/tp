lbl_806FE2A8:
/* 806FE2A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FE2AC  7C 08 02 A6 */	mflr r0
/* 806FE2B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FE2B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FE2B8  7C 7F 1B 78 */	mr r31, r3
/* 806FE2BC  88 03 06 79 */	lbz r0, 0x679(r3)
/* 806FE2C0  28 00 00 02 */	cmplwi r0, 2
/* 806FE2C4  40 82 00 48 */	bne lbl_806FE30C
/* 806FE2C8  38 60 00 42 */	li r3, 0x42
/* 806FE2CC  38 80 00 01 */	li r4, 1
/* 806FE2D0  4B 99 9C 11 */	bl checkItemGet__FUci
/* 806FE2D4  2C 03 00 00 */	cmpwi r3, 0
/* 806FE2D8  40 82 00 0C */	bne lbl_806FE2E4
/* 806FE2DC  38 60 00 01 */	li r3, 1
/* 806FE2E0  48 00 00 C4 */	b lbl_806FE3A4
lbl_806FE2E4:
/* 806FE2E4  88 1F 05 46 */	lbz r0, 0x546(r31)
/* 806FE2E8  28 00 00 00 */	cmplwi r0, 0
/* 806FE2EC  40 82 00 20 */	bne lbl_806FE30C
/* 806FE2F0  38 00 00 45 */	li r0, 0x45
/* 806FE2F4  98 1F 05 46 */	stb r0, 0x546(r31)
/* 806FE2F8  38 00 00 02 */	li r0, 2
/* 806FE2FC  98 1F 04 96 */	stb r0, 0x496(r31)
/* 806FE300  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 806FE304  60 00 00 04 */	ori r0, r0, 4
/* 806FE308  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_806FE30C:
/* 806FE30C  A8 7F 06 70 */	lha r3, 0x670(r31)
/* 806FE310  2C 03 00 00 */	cmpwi r3, 0
/* 806FE314  41 82 00 0C */	beq lbl_806FE320
/* 806FE318  38 03 FF FF */	addi r0, r3, -1
/* 806FE31C  B0 1F 06 70 */	sth r0, 0x670(r31)
lbl_806FE320:
/* 806FE320  A8 7F 06 72 */	lha r3, 0x672(r31)
/* 806FE324  2C 03 00 00 */	cmpwi r3, 0
/* 806FE328  41 82 00 0C */	beq lbl_806FE334
/* 806FE32C  38 03 FF FF */	addi r0, r3, -1
/* 806FE330  B0 1F 06 72 */	sth r0, 0x672(r31)
lbl_806FE334:
/* 806FE334  88 7F 06 78 */	lbz r3, 0x678(r31)
/* 806FE338  28 03 00 00 */	cmplwi r3, 0
/* 806FE33C  41 82 00 0C */	beq lbl_806FE348
/* 806FE340  38 03 FF FF */	addi r0, r3, -1
/* 806FE344  98 1F 06 78 */	stb r0, 0x678(r31)
lbl_806FE348:
/* 806FE348  7F E3 FB 78 */	mr r3, r31
/* 806FE34C  4B FF F5 E5 */	bl action__8daE_KK_cFv
/* 806FE350  88 1F 06 79 */	lbz r0, 0x679(r31)
/* 806FE354  28 00 00 01 */	cmplwi r0, 1
/* 806FE358  41 82 00 10 */	beq lbl_806FE368
/* 806FE35C  7F E3 FB 78 */	mr r3, r31
/* 806FE360  4B FF F9 AD */	bl mtx_set__8daE_KK_cFv
/* 806FE364  48 00 00 0C */	b lbl_806FE370
lbl_806FE368:
/* 806FE368  7F E3 FB 78 */	mr r3, r31
/* 806FE36C  4B FF FB A1 */	bl weapon_mtx_set__8daE_KK_cFv
lbl_806FE370:
/* 806FE370  7F E3 FB 78 */	mr r3, r31
/* 806FE374  4B FF FD 45 */	bl cc_set__8daE_KK_cFv
/* 806FE378  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806FE37C  7C 03 07 74 */	extsb r3, r0
/* 806FE380  4B 92 EC ED */	bl dComIfGp_getReverb__Fi
/* 806FE384  7C 65 1B 78 */	mr r5, r3
/* 806FE388  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 806FE38C  38 80 00 00 */	li r4, 0
/* 806FE390  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 806FE394  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 806FE398  7D 89 03 A6 */	mtctr r12
/* 806FE39C  4E 80 04 21 */	bctrl 
/* 806FE3A0  38 60 00 01 */	li r3, 1
lbl_806FE3A4:
/* 806FE3A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FE3A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FE3AC  7C 08 03 A6 */	mtlr r0
/* 806FE3B0  38 21 00 10 */	addi r1, r1, 0x10
/* 806FE3B4  4E 80 00 20 */	blr 
