lbl_80A9EAA0:
/* 80A9EAA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9EAA4  7C 08 02 A6 */	mflr r0
/* 80A9EAA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9EAAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A9EAB0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A9EAB4  7C 7E 1B 78 */	mr r30, r3
/* 80A9EAB8  7C 9F 23 78 */	mr r31, r4
/* 80A9EABC  3C 60 80 AA */	lis r3, lit_5498@ha
/* 80A9EAC0  38 83 17 1C */	addi r4, r3, lit_5498@l
/* 80A9EAC4  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9EAC8  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9EACC  90 61 00 08 */	stw r3, 8(r1)
/* 80A9EAD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9EAD4  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9EAD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9EADC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9EAE0  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9EAE4  4B 6A 6C 24 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9EAE8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A9EAEC  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A9EAF0  4B 6A 6C 18 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9EAF4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9EAF8  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A9EAFC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9EB00  41 82 00 08 */	beq lbl_80A9EB08
/* 80A9EB04  48 00 00 1C */	b lbl_80A9EB20
lbl_80A9EB08:
/* 80A9EB08  38 00 00 04 */	li r0, 4
/* 80A9EB0C  B0 1E 0F DA */	sth r0, 0xfda(r30)
/* 80A9EB10  7F C3 F3 78 */	mr r3, r30
/* 80A9EB14  38 80 00 47 */	li r4, 0x47
/* 80A9EB18  38 A1 00 08 */	addi r5, r1, 8
/* 80A9EB1C  4B 6A D0 D4 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A9EB20:
/* 80A9EB20  38 60 00 01 */	li r3, 1
/* 80A9EB24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A9EB28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A9EB2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9EB30  7C 08 03 A6 */	mtlr r0
/* 80A9EB34  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9EB38  4E 80 00 20 */	blr 
