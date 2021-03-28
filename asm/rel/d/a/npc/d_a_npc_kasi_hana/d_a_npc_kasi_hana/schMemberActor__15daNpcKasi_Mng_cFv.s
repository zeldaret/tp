lbl_80A1BBE0:
/* 80A1BBE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1BBE4  7C 08 02 A6 */	mflr r0
/* 80A1BBE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1BBEC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1BBF0  7C 7F 1B 78 */	mr r31, r3
/* 80A1BBF4  80 63 00 08 */	lwz r3, 8(r3)
/* 80A1BBF8  3C 03 00 01 */	addis r0, r3, 1
/* 80A1BBFC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A1BC00  40 82 00 34 */	bne lbl_80A1BC34
/* 80A1BC04  38 00 00 00 */	li r0, 0
/* 80A1BC08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1BC0C  38 60 02 A2 */	li r3, 0x2a2
/* 80A1BC10  38 81 00 0C */	addi r4, r1, 0xc
/* 80A1BC14  4B 5F DE 18 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80A1BC18  2C 03 00 00 */	cmpwi r3, 0
/* 80A1BC1C  41 82 00 18 */	beq lbl_80A1BC34
/* 80A1BC20  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A1BC24  28 04 00 00 */	cmplwi r4, 0
/* 80A1BC28  41 82 00 0C */	beq lbl_80A1BC34
/* 80A1BC2C  38 7F 00 08 */	addi r3, r31, 8
/* 80A1BC30  4B 73 4A 8C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80A1BC34:
/* 80A1BC34  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80A1BC38  3C 03 00 01 */	addis r0, r3, 1
/* 80A1BC3C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A1BC40  40 82 00 34 */	bne lbl_80A1BC74
/* 80A1BC44  38 00 00 00 */	li r0, 0
/* 80A1BC48  90 01 00 08 */	stw r0, 8(r1)
/* 80A1BC4C  38 60 02 A3 */	li r3, 0x2a3
/* 80A1BC50  38 81 00 08 */	addi r4, r1, 8
/* 80A1BC54  4B 5F DD D8 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80A1BC58  2C 03 00 00 */	cmpwi r3, 0
/* 80A1BC5C  41 82 00 18 */	beq lbl_80A1BC74
/* 80A1BC60  80 81 00 08 */	lwz r4, 8(r1)
/* 80A1BC64  28 04 00 00 */	cmplwi r4, 0
/* 80A1BC68  41 82 00 0C */	beq lbl_80A1BC74
/* 80A1BC6C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80A1BC70  4B 73 4A 4C */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80A1BC74:
/* 80A1BC74  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A1BC78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1BC7C  7C 08 03 A6 */	mtlr r0
/* 80A1BC80  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1BC84  4E 80 00 20 */	blr 
