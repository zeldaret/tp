lbl_80130654:
/* 80130654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80130658  7C 08 02 A6 */	mflr r0
/* 8013065C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80130660  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80130664  93 C1 00 08 */	stw r30, 8(r1)
/* 80130668  7C 7E 1B 78 */	mr r30, r3
/* 8013066C  7C 9F 23 78 */	mr r31, r4
/* 80130670  38 00 FF FF */	li r0, -1
/* 80130674  90 03 28 F0 */	stw r0, 0x28f0(r3)
/* 80130678  80 03 31 98 */	lwz r0, 0x3198(r3)
/* 8013067C  2C 00 00 EE */	cmpwi r0, 0xee
/* 80130680  40 82 00 10 */	bne lbl_80130690
/* 80130684  38 00 05 32 */	li r0, 0x532
/* 80130688  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 8013068C  48 00 00 0C */	b lbl_80130698
lbl_80130690:
/* 80130690  38 00 05 35 */	li r0, 0x535
/* 80130694  90 1E 32 CC */	stw r0, 0x32cc(r30)
lbl_80130698:
/* 80130698  38 00 00 00 */	li r0, 0
/* 8013069C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 801306A0  7F C3 F3 78 */	mr r3, r30
/* 801306A4  38 80 00 5F */	li r4, 0x5f
/* 801306A8  4B FF 81 65 */	bl checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM
/* 801306AC  2C 03 00 00 */	cmpwi r3, 0
/* 801306B0  40 82 00 38 */	bne lbl_801306E8
/* 801306B4  2C 1F 00 00 */	cmpwi r31, 0
/* 801306B8  41 82 00 24 */	beq lbl_801306DC
/* 801306BC  7F C3 F3 78 */	mr r3, r30
/* 801306C0  38 80 00 0E */	li r4, 0xe
/* 801306C4  3C A0 80 39 */	lis r5, m__19daAlinkHIO_wlLie_c0@ha
/* 801306C8  38 A5 F1 38 */	addi r5, r5, m__19daAlinkHIO_wlLie_c0@l
/* 801306CC  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 801306D0  C0 45 00 48 */	lfs f2, 0x48(r5)
/* 801306D4  4B FF 90 05 */	bl setSingleAnimeWolfBaseSpeed__9daAlink_cFQ29daAlink_c12daAlink_WANMff
/* 801306D8  48 00 00 10 */	b lbl_801306E8
lbl_801306DC:
/* 801306DC  7F C3 F3 78 */	mr r3, r30
/* 801306E0  38 80 00 80 */	li r4, 0x80
/* 801306E4  4B FF 8F 95 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
lbl_801306E8:
/* 801306E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801306EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801306F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801306F4  7C 08 03 A6 */	mtlr r0
/* 801306F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801306FC  4E 80 00 20 */	blr 
