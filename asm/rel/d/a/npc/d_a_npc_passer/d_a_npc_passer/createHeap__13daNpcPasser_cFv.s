lbl_80AA2C9C:
/* 80AA2C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA2CA0  7C 08 02 A6 */	mflr r0
/* 80AA2CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA2CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA2CAC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA2CB0  7C 7E 1B 78 */	mr r30, r3
/* 80AA2CB4  80 83 0A 98 */	lwz r4, 0xa98(r3)
/* 80AA2CB8  4B 6B 50 49 */	bl NpcCreate__10daNpcCd2_cFi
/* 80AA2CBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA2CC0  41 82 00 44 */	beq lbl_80AA2D04
/* 80AA2CC4  80 9E 0B 00 */	lwz r4, 0xb00(r30)
/* 80AA2CC8  2C 04 00 00 */	cmpwi r4, 0
/* 80AA2CCC  41 82 00 2C */	beq lbl_80AA2CF8
/* 80AA2CD0  7F C3 F3 78 */	mr r3, r30
/* 80AA2CD4  4B 6B 52 55 */	bl ObjCreate__10daNpcCd2_cFi
/* 80AA2CD8  90 7E 0A C8 */	stw r3, 0xac8(r30)
/* 80AA2CDC  30 03 FF FF */	addic r0, r3, -1
/* 80AA2CE0  7C 00 19 10 */	subfe r0, r0, r3
/* 80AA2CE4  54 1F 06 3F */	clrlwi. r31, r0, 0x18
/* 80AA2CE8  40 82 00 1C */	bne lbl_80AA2D04
/* 80AA2CEC  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80AA2CF0  4B 56 E6 21 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 80AA2CF4  48 00 00 10 */	b lbl_80AA2D04
lbl_80AA2CF8:
/* 80AA2CF8  38 00 00 00 */	li r0, 0
/* 80AA2CFC  90 1E 0A C8 */	stw r0, 0xac8(r30)
/* 80AA2D00  3B E0 00 01 */	li r31, 1
lbl_80AA2D04:
/* 80AA2D04  7F E3 FB 78 */	mr r3, r31
/* 80AA2D08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA2D0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA2D10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA2D14  7C 08 03 A6 */	mtlr r0
/* 80AA2D18  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA2D1C  4E 80 00 20 */	blr 
