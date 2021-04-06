lbl_80A9FA58:
/* 80A9FA58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9FA5C  7C 08 02 A6 */	mflr r0
/* 80A9FA60  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9FA64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A9FA68  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A9FA6C  7C 7E 1B 78 */	mr r30, r3
/* 80A9FA70  7C 9F 23 78 */	mr r31, r4
/* 80A9FA74  3C 60 80 AA */	lis r3, lit_5826@ha /* 0x80AA17E4@ha */
/* 80A9FA78  38 83 17 E4 */	addi r4, r3, lit_5826@l /* 0x80AA17E4@l */
/* 80A9FA7C  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9FA80  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9FA84  90 61 00 08 */	stw r3, 8(r1)
/* 80A9FA88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9FA8C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9FA90  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9FA94  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9FA98  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9FA9C  4B 6A 5C 6D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FAA0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A9FAA4  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A9FAA8  4B 6A 5C 61 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9FAAC  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9FAB0  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A9FAB4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A9FAB8  41 82 00 14 */	beq lbl_80A9FACC
/* 80A9FABC  40 80 00 30 */	bge lbl_80A9FAEC
/* 80A9FAC0  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A9FAC4  40 80 00 28 */	bge lbl_80A9FAEC
/* 80A9FAC8  48 00 00 24 */	b lbl_80A9FAEC
lbl_80A9FACC:
/* 80A9FACC  38 00 00 04 */	li r0, 4
/* 80A9FAD0  B0 1E 0F DA */	sth r0, 0xfda(r30)
/* 80A9FAD4  38 60 00 0B */	li r3, 0xb
/* 80A9FAD8  4B 6B 5C 5D */	bl daNpcF_offTmpBit__FUl
/* 80A9FADC  7F C3 F3 78 */	mr r3, r30
/* 80A9FAE0  38 80 00 4D */	li r4, 0x4d
/* 80A9FAE4  38 A1 00 08 */	addi r5, r1, 8
/* 80A9FAE8  4B 6A C1 09 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A9FAEC:
/* 80A9FAEC  38 60 00 01 */	li r3, 1
/* 80A9FAF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A9FAF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A9FAF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9FAFC  7C 08 03 A6 */	mtlr r0
/* 80A9FB00  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9FB04  4E 80 00 20 */	blr 
