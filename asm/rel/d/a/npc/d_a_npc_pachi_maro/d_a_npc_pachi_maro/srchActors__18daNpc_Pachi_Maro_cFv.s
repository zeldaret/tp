lbl_80A98A10:
/* 80A98A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A98A14  7C 08 02 A6 */	mflr r0
/* 80A98A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A98A1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A98A20  7C 7F 1B 78 */	mr r31, r3
/* 80A98A24  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80A98A28  2C 00 00 00 */	cmpwi r0, 0
/* 80A98A2C  41 82 00 08 */	beq lbl_80A98A34
/* 80A98A30  48 00 00 54 */	b lbl_80A98A84
lbl_80A98A34:
/* 80A98A34  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A98A38  4B 6A CC D0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A98A3C  28 03 00 00 */	cmplwi r3, 0
/* 80A98A40  40 82 00 1C */	bne lbl_80A98A5C
/* 80A98A44  7F E3 FB 78 */	mr r3, r31
/* 80A98A48  38 80 02 70 */	li r4, 0x270
/* 80A98A4C  4B 6B 33 E0 */	b getNearestActorP__8daNpcT_cFs
/* 80A98A50  7C 64 1B 78 */	mr r4, r3
/* 80A98A54  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A98A58  4B 6A CC 88 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A98A5C:
/* 80A98A5C  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80A98A60  4B 6A CC A8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A98A64  28 03 00 00 */	cmplwi r3, 0
/* 80A98A68  40 82 00 1C */	bne lbl_80A98A84
/* 80A98A6C  7F E3 FB 78 */	mr r3, r31
/* 80A98A70  38 80 02 6F */	li r4, 0x26f
/* 80A98A74  4B 6B 33 B8 */	b getNearestActorP__8daNpcT_cFs
/* 80A98A78  7C 64 1B 78 */	mr r4, r3
/* 80A98A7C  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80A98A80  4B 6A CC 60 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A98A84:
/* 80A98A84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A98A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A98A8C  7C 08 03 A6 */	mtlr r0
/* 80A98A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80A98A94  4E 80 00 20 */	blr 
