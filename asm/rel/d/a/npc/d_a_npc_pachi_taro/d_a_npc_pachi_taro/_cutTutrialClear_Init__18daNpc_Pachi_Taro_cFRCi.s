lbl_80A9EDD4:
/* 80A9EDD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9EDD8  7C 08 02 A6 */	mflr r0
/* 80A9EDDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9EDE0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A9EDE4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A9EDE8  7C 7E 1B 78 */	mr r30, r3
/* 80A9EDEC  7C 9F 23 78 */	mr r31, r4
/* 80A9EDF0  3C 60 80 AA */	lis r3, lit_5574@ha
/* 80A9EDF4  38 83 17 34 */	addi r4, r3, lit_5574@l
/* 80A9EDF8  80 64 00 00 */	lwz r3, 0(r4)
/* 80A9EDFC  80 04 00 04 */	lwz r0, 4(r4)
/* 80A9EE00  90 61 00 08 */	stw r3, 8(r1)
/* 80A9EE04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A9EE08  80 04 00 08 */	lwz r0, 8(r4)
/* 80A9EE0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A9EE10  93 C1 00 08 */	stw r30, 8(r1)
/* 80A9EE14  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80A9EE18  4B 6A 68 F0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9EE1C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80A9EE20  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80A9EE24  4B 6A 68 E4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A9EE28  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A9EE2C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A9EE30  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9EE34  41 82 00 6C */	beq lbl_80A9EEA0
/* 80A9EE38  40 80 00 10 */	bge lbl_80A9EE48
/* 80A9EE3C  2C 00 00 05 */	cmpwi r0, 5
/* 80A9EE40  41 82 00 14 */	beq lbl_80A9EE54
/* 80A9EE44  48 00 00 5C */	b lbl_80A9EEA0
lbl_80A9EE48:
/* 80A9EE48  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A9EE4C  41 82 00 44 */	beq lbl_80A9EE90
/* 80A9EE50  48 00 00 50 */	b lbl_80A9EEA0
lbl_80A9EE54:
/* 80A9EE54  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A9EE58  2C 00 00 00 */	cmpwi r0, 0
/* 80A9EE5C  41 82 00 28 */	beq lbl_80A9EE84
/* 80A9EE60  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A9EE64  4B 6A 68 98 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A9EE68  38 00 00 00 */	li r0, 0
/* 80A9EE6C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A9EE70  3C 60 80 AA */	lis r3, lit_4373@ha
/* 80A9EE74  C0 03 16 A4 */	lfs f0, lit_4373@l(r3)
/* 80A9EE78  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A9EE7C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A9EE80  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A9EE84:
/* 80A9EE84  38 00 00 00 */	li r0, 0
/* 80A9EE88  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A9EE8C  48 00 00 14 */	b lbl_80A9EEA0
lbl_80A9EE90:
/* 80A9EE90  7F C3 F3 78 */	mr r3, r30
/* 80A9EE94  38 80 00 4C */	li r4, 0x4c
/* 80A9EE98  38 A1 00 08 */	addi r5, r1, 8
/* 80A9EE9C  4B 6A CD 54 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80A9EEA0:
/* 80A9EEA0  38 60 00 01 */	li r3, 1
/* 80A9EEA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A9EEA8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A9EEAC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9EEB0  7C 08 03 A6 */	mtlr r0
/* 80A9EEB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9EEB8  4E 80 00 20 */	blr 
