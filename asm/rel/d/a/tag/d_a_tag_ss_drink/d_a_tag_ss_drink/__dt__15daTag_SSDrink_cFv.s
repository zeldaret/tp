lbl_80D63724:
/* 80D63724  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63728  7C 08 02 A6 */	mflr r0
/* 80D6372C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63730  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D63734  93 C1 00 08 */	stw r30, 8(r1)
/* 80D63738  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D6373C  7C 9F 23 78 */	mr r31, r4
/* 80D63740  41 82 00 38 */	beq lbl_80D63778
/* 80D63744  3C 60 80 D6 */	lis r3, __vt__15daTag_SSDrink_c@ha
/* 80D63748  38 03 38 58 */	addi r0, r3, __vt__15daTag_SSDrink_c@l
/* 80D6374C  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80D63750  38 7E 05 78 */	addi r3, r30, 0x578
/* 80D63754  38 80 FF FF */	li r4, -1
/* 80D63758  4B 4E 67 F0 */	b __dt__10dMsgFlow_cFv
/* 80D6375C  7F C3 F3 78 */	mr r3, r30
/* 80D63760  38 80 00 00 */	li r4, 0
/* 80D63764  4B 3F AC EC */	b __dt__14daObj_SSBase_cFv
/* 80D63768  7F E0 07 35 */	extsh. r0, r31
/* 80D6376C  40 81 00 0C */	ble lbl_80D63778
/* 80D63770  7F C3 F3 78 */	mr r3, r30
/* 80D63774  4B 56 B5 C8 */	b __dl__FPv
lbl_80D63778:
/* 80D63778  7F C3 F3 78 */	mr r3, r30
/* 80D6377C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D63780  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D63784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63788  7C 08 03 A6 */	mtlr r0
/* 80D6378C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63790  4E 80 00 20 */	blr 
