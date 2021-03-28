lbl_80A93E24:
/* 80A93E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A93E28  7C 08 02 A6 */	mflr r0
/* 80A93E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A93E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A93E34  7C 7F 1B 78 */	mr r31, r3
/* 80A93E38  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80A93E3C  2C 00 00 00 */	cmpwi r0, 0
/* 80A93E40  41 82 00 08 */	beq lbl_80A93E48
/* 80A93E44  48 00 00 54 */	b lbl_80A93E98
lbl_80A93E48:
/* 80A93E48  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A93E4C  4B 6B 18 BC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A93E50  28 03 00 00 */	cmplwi r3, 0
/* 80A93E54  40 82 00 1C */	bne lbl_80A93E70
/* 80A93E58  7F E3 FB 78 */	mr r3, r31
/* 80A93E5C  38 80 02 70 */	li r4, 0x270
/* 80A93E60  4B 6B 7F CC */	b getNearestActorP__8daNpcT_cFs
/* 80A93E64  7C 64 1B 78 */	mr r4, r3
/* 80A93E68  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A93E6C  4B 6B 18 74 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A93E70:
/* 80A93E70  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80A93E74  4B 6B 18 94 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A93E78  28 03 00 00 */	cmplwi r3, 0
/* 80A93E7C  40 82 00 1C */	bne lbl_80A93E98
/* 80A93E80  7F E3 FB 78 */	mr r3, r31
/* 80A93E84  38 80 02 71 */	li r4, 0x271
/* 80A93E88  4B 6B 7F A4 */	b getNearestActorP__8daNpcT_cFs
/* 80A93E8C  7C 64 1B 78 */	mr r4, r3
/* 80A93E90  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80A93E94  4B 6B 18 4C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A93E98:
/* 80A93E98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A93E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A93EA0  7C 08 03 A6 */	mtlr r0
/* 80A93EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A93EA8  4E 80 00 20 */	blr 
