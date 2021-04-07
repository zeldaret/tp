lbl_809BA4B8:
/* 809BA4B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BA4BC  7C 08 02 A6 */	mflr r0
/* 809BA4C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BA4C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BA4C8  93 C1 00 08 */	stw r30, 8(r1)
/* 809BA4CC  7C 7E 1B 78 */	mr r30, r3
/* 809BA4D0  80 83 0A 98 */	lwz r4, 0xa98(r3)
/* 809BA4D4  4B 79 D8 2D */	bl NpcCreate__10daNpcCd2_cFi
/* 809BA4D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BA4DC  41 82 00 44 */	beq lbl_809BA520
/* 809BA4E0  80 9E 0A CC */	lwz r4, 0xacc(r30)
/* 809BA4E4  2C 04 00 00 */	cmpwi r4, 0
/* 809BA4E8  41 82 00 2C */	beq lbl_809BA514
/* 809BA4EC  7F C3 F3 78 */	mr r3, r30
/* 809BA4F0  4B 79 DA 39 */	bl ObjCreate__10daNpcCd2_cFi
/* 809BA4F4  90 7E 0A C8 */	stw r3, 0xac8(r30)
/* 809BA4F8  30 03 FF FF */	addic r0, r3, -1
/* 809BA4FC  7C 00 19 10 */	subfe r0, r0, r3
/* 809BA500  54 1F 06 3F */	clrlwi. r31, r0, 0x18
/* 809BA504  40 82 00 1C */	bne lbl_809BA520
/* 809BA508  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 809BA50C  4B 65 6E 05 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 809BA510  48 00 00 10 */	b lbl_809BA520
lbl_809BA514:
/* 809BA514  38 00 00 00 */	li r0, 0
/* 809BA518  90 1E 0A C8 */	stw r0, 0xac8(r30)
/* 809BA51C  3B E0 00 01 */	li r31, 1
lbl_809BA520:
/* 809BA520  7F E3 FB 78 */	mr r3, r31
/* 809BA524  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BA528  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BA52C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BA530  7C 08 03 A6 */	mtlr r0
/* 809BA534  38 21 00 10 */	addi r1, r1, 0x10
/* 809BA538  4E 80 00 20 */	blr 
