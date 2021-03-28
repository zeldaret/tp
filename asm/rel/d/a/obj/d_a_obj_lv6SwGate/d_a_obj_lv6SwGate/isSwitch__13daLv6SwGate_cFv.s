lbl_80C74720:
/* 80C74720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C74724  7C 08 02 A6 */	mflr r0
/* 80C74728  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7472C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C74730  7C 7F 1B 78 */	mr r31, r3
/* 80C74734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C74738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C7473C  88 9F 14 BE */	lbz r4, 0x14be(r31)
/* 80C74740  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C74744  7C 05 07 74 */	extsb r5, r0
/* 80C74748  4B 3C 0C 18 */	b isSwitch__10dSv_info_cCFii
/* 80C7474C  88 1F 14 BD */	lbz r0, 0x14bd(r31)
/* 80C74750  7C 00 1A 78 */	xor r0, r0, r3
/* 80C74754  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80C74758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7475C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C74760  7C 08 03 A6 */	mtlr r0
/* 80C74764  38 21 00 10 */	addi r1, r1, 0x10
/* 80C74768  4E 80 00 20 */	blr 
