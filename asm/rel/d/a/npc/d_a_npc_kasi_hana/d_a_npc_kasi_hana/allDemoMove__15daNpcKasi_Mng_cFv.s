lbl_80A1BAAC:
/* 80A1BAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1BAB0  7C 08 02 A6 */	mflr r0
/* 80A1BAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1BAB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1BABC  7C 7F 1B 78 */	mr r31, r3
/* 80A1BAC0  4B 73 4C 2D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1BAC4  28 03 00 00 */	cmplwi r3, 0
/* 80A1BAC8  41 82 00 10 */	beq lbl_80A1BAD8
/* 80A1BACC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A1BAD0  60 00 40 00 */	ori r0, r0, 0x4000
/* 80A1BAD4  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80A1BAD8:
/* 80A1BAD8  38 7F 00 08 */	addi r3, r31, 8
/* 80A1BADC  4B 73 4C 11 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1BAE0  28 03 00 00 */	cmplwi r3, 0
/* 80A1BAE4  41 82 00 10 */	beq lbl_80A1BAF4
/* 80A1BAE8  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A1BAEC  60 00 40 00 */	ori r0, r0, 0x4000
/* 80A1BAF0  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80A1BAF4:
/* 80A1BAF4  38 7F 00 10 */	addi r3, r31, 0x10
/* 80A1BAF8  4B 73 4B F5 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80A1BAFC  28 03 00 00 */	cmplwi r3, 0
/* 80A1BB00  41 82 00 10 */	beq lbl_80A1BB10
/* 80A1BB04  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A1BB08  60 00 40 00 */	ori r0, r0, 0x4000
/* 80A1BB0C  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80A1BB10:
/* 80A1BB10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A1BB14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1BB18  7C 08 03 A6 */	mtlr r0
/* 80A1BB1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1BB20  4E 80 00 20 */	blr 
