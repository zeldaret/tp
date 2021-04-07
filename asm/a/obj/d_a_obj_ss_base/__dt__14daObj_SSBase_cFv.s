lbl_8015E450:
/* 8015E450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015E454  7C 08 02 A6 */	mflr r0
/* 8015E458  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015E45C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015E460  93 C1 00 08 */	stw r30, 8(r1)
/* 8015E464  7C 7E 1B 79 */	or. r30, r3, r3
/* 8015E468  7C 9F 23 78 */	mr r31, r4
/* 8015E46C  41 82 00 28 */	beq lbl_8015E494
/* 8015E470  3C 80 80 3C */	lis r4, __vt__14daObj_SSBase_c@ha /* 0x803BA088@ha */
/* 8015E474  38 04 A0 88 */	addi r0, r4, __vt__14daObj_SSBase_c@l /* 0x803BA088@l */
/* 8015E478  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8015E47C  38 80 00 00 */	li r4, 0
/* 8015E480  4B EB A8 0D */	bl __dt__10fopAc_ac_cFv
/* 8015E484  7F E0 07 35 */	extsh. r0, r31
/* 8015E488  40 81 00 0C */	ble lbl_8015E494
/* 8015E48C  7F C3 F3 78 */	mr r3, r30
/* 8015E490  48 17 08 AD */	bl __dl__FPv
lbl_8015E494:
/* 8015E494  7F C3 F3 78 */	mr r3, r30
/* 8015E498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015E49C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8015E4A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015E4A4  7C 08 03 A6 */	mtlr r0
/* 8015E4A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8015E4AC  4E 80 00 20 */	blr 
