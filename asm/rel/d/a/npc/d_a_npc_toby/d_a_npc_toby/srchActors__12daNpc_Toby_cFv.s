lbl_80B1FA08:
/* 80B1FA08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1FA0C  7C 08 02 A6 */	mflr r0
/* 80B1FA10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1FA14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1FA18  7C 7F 1B 78 */	mr r31, r3
/* 80B1FA1C  88 03 0F 84 */	lbz r0, 0xf84(r3)
/* 80B1FA20  2C 00 00 02 */	cmpwi r0, 2
/* 80B1FA24  41 82 00 FC */	beq lbl_80B1FB20
/* 80B1FA28  40 80 00 14 */	bge lbl_80B1FA3C
/* 80B1FA2C  2C 00 00 00 */	cmpwi r0, 0
/* 80B1FA30  41 82 00 20 */	beq lbl_80B1FA50
/* 80B1FA34  40 80 00 98 */	bge lbl_80B1FACC
/* 80B1FA38  48 00 00 E8 */	b lbl_80B1FB20
lbl_80B1FA3C:
/* 80B1FA3C  2C 00 00 06 */	cmpwi r0, 6
/* 80B1FA40  40 80 00 E0 */	bge lbl_80B1FB20
/* 80B1FA44  2C 00 00 04 */	cmpwi r0, 4
/* 80B1FA48  40 80 00 D8 */	bge lbl_80B1FB20
/* 80B1FA4C  48 00 00 AC */	b lbl_80B1FAF8
lbl_80B1FA50:
/* 80B1FA50  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80B1FA54  4B 62 5C B4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B1FA58  28 03 00 00 */	cmplwi r3, 0
/* 80B1FA5C  40 82 00 1C */	bne lbl_80B1FA78
/* 80B1FA60  7F E3 FB 78 */	mr r3, r31
/* 80B1FA64  38 80 00 A7 */	li r4, 0xa7
/* 80B1FA68  4B 62 C3 C4 */	b getNearestActorP__8daNpcT_cFs
/* 80B1FA6C  7C 64 1B 78 */	mr r4, r3
/* 80B1FA70  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80B1FA74  4B 62 5C 6C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B1FA78:
/* 80B1FA78  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80B1FA7C  4B 62 5C 8C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B1FA80  28 03 00 00 */	cmplwi r3, 0
/* 80B1FA84  40 82 00 1C */	bne lbl_80B1FAA0
/* 80B1FA88  7F E3 FB 78 */	mr r3, r31
/* 80B1FA8C  38 80 02 F9 */	li r4, 0x2f9
/* 80B1FA90  4B 62 C3 9C */	b getNearestActorP__8daNpcT_cFs
/* 80B1FA94  7C 64 1B 78 */	mr r4, r3
/* 80B1FA98  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80B1FA9C  4B 62 5C 44 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B1FAA0:
/* 80B1FAA0  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80B1FAA4  4B 62 5C 64 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B1FAA8  28 03 00 00 */	cmplwi r3, 0
/* 80B1FAAC  40 82 00 74 */	bne lbl_80B1FB20
/* 80B1FAB0  7F E3 FB 78 */	mr r3, r31
/* 80B1FAB4  38 80 01 8C */	li r4, 0x18c
/* 80B1FAB8  4B 62 C3 74 */	b getNearestActorP__8daNpcT_cFs
/* 80B1FABC  7C 64 1B 78 */	mr r4, r3
/* 80B1FAC0  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80B1FAC4  4B 62 5C 1C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B1FAC8  48 00 00 58 */	b lbl_80B1FB20
lbl_80B1FACC:
/* 80B1FACC  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80B1FAD0  4B 62 5C 38 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B1FAD4  28 03 00 00 */	cmplwi r3, 0
/* 80B1FAD8  40 82 00 48 */	bne lbl_80B1FB20
/* 80B1FADC  7F E3 FB 78 */	mr r3, r31
/* 80B1FAE0  38 80 01 D6 */	li r4, 0x1d6
/* 80B1FAE4  4B 62 C3 48 */	b getNearestActorP__8daNpcT_cFs
/* 80B1FAE8  7C 64 1B 78 */	mr r4, r3
/* 80B1FAEC  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80B1FAF0  4B 62 5B F0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B1FAF4  48 00 00 2C */	b lbl_80B1FB20
lbl_80B1FAF8:
/* 80B1FAF8  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80B1FAFC  4B 62 5C 0C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B1FB00  28 03 00 00 */	cmplwi r3, 0
/* 80B1FB04  40 82 00 1C */	bne lbl_80B1FB20
/* 80B1FB08  7F E3 FB 78 */	mr r3, r31
/* 80B1FB0C  38 80 01 8C */	li r4, 0x18c
/* 80B1FB10  4B 62 C3 1C */	b getNearestActorP__8daNpcT_cFs
/* 80B1FB14  7C 64 1B 78 */	mr r4, r3
/* 80B1FB18  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80B1FB1C  4B 62 5B C4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80B1FB20:
/* 80B1FB20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1FB24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1FB28  7C 08 03 A6 */	mtlr r0
/* 80B1FB2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1FB30  4E 80 00 20 */	blr 
