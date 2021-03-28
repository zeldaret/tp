lbl_80A9FD80:
/* 80A9FD80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9FD84  7C 08 02 A6 */	mflr r0
/* 80A9FD88  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9FD8C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A9FD90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A9FD94  7C 7E 1B 78 */	mr r30, r3
/* 80A9FD98  7C 9F 23 78 */	mr r31, r4
/* 80A9FD9C  3C 60 80 AA */	lis r3, lit_5892@ha
/* 80A9FDA0  38 83 17 FC */	addi r4, r3, lit_5892@l
/* 80A9FDA4  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9FDA8  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9FDAC  90 61 00 08 */	stw r3, 8(r1)
/* 80A9FDB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9FDB4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9FDB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9FDBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9FDC0  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9FDC4  4B 6A 59 44 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FDC8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A9FDCC  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A9FDD0  4B 6A 59 38 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FDD4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9FDD8  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A9FDDC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9FDE0  41 82 00 38 */	beq lbl_80A9FE18
/* 80A9FDE4  40 80 00 10 */	bge lbl_80A9FDF4
/* 80A9FDE8  2C 00 00 05 */	cmpwi r0, 5
/* 80A9FDEC  41 82 00 2C */	beq lbl_80A9FE18
/* 80A9FDF0  48 00 00 28 */	b lbl_80A9FE18
lbl_80A9FDF4:
/* 80A9FDF4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A9FDF8  41 82 00 08 */	beq lbl_80A9FE00
/* 80A9FDFC  48 00 00 1C */	b lbl_80A9FE18
lbl_80A9FE00:
/* 80A9FE00  38 00 FF FF */	li r0, -1
/* 80A9FE04  B0 1E 0F DA */	sth r0, 0xfda(r30)
/* 80A9FE08  7F C3 F3 78 */	mr r3, r30
/* 80A9FE0C  38 80 00 4D */	li r4, 0x4d
/* 80A9FE10  38 A1 00 08 */	addi r5, r1, 8
/* 80A9FE14  4B 6A BD DC */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A9FE18:
/* 80A9FE18  38 60 00 01 */	li r3, 1
/* 80A9FE1C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A9FE20  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A9FE24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9FE28  7C 08 03 A6 */	mtlr r0
/* 80A9FE2C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9FE30  4E 80 00 20 */	blr 
