lbl_80A65624:
/* 80A65624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A65628  7C 08 02 A6 */	mflr r0
/* 80A6562C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A65630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A65634  7C 7F 1B 78 */	mr r31, r3
/* 80A65638  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80A6563C  2C 00 00 04 */	cmpwi r0, 4
/* 80A65640  41 82 00 18 */	beq lbl_80A65658
/* 80A65644  40 80 00 08 */	bge lbl_80A6564C
/* 80A65648  48 00 00 B4 */	b lbl_80A656FC
lbl_80A6564C:
/* 80A6564C  2C 00 00 08 */	cmpwi r0, 8
/* 80A65650  41 82 00 34 */	beq lbl_80A65684
/* 80A65654  48 00 00 A8 */	b lbl_80A656FC
lbl_80A65658:
/* 80A65658  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A6565C  4B 6E 00 AC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A65660  28 03 00 00 */	cmplwi r3, 0
/* 80A65664  40 82 00 98 */	bne lbl_80A656FC
/* 80A65668  7F E3 FB 78 */	mr r3, r31
/* 80A6566C  38 80 02 5E */	li r4, 0x25e
/* 80A65670  4B 6E 67 BC */	b getNearestActorP__8daNpcT_cFs
/* 80A65674  7C 64 1B 78 */	mr r4, r3
/* 80A65678  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80A6567C  4B 6E 00 64 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A65680  48 00 00 7C */	b lbl_80A656FC
lbl_80A65684:
/* 80A65684  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A65688  4B 6E 00 80 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A6568C  28 03 00 00 */	cmplwi r3, 0
/* 80A65690  40 82 00 1C */	bne lbl_80A656AC
/* 80A65694  7F E3 FB 78 */	mr r3, r31
/* 80A65698  38 80 02 7A */	li r4, 0x27a
/* 80A6569C  4B 6E 67 90 */	b getNearestActorP__8daNpcT_cFs
/* 80A656A0  7C 64 1B 78 */	mr r4, r3
/* 80A656A4  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80A656A8  4B 6E 00 38 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A656AC:
/* 80A656AC  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80A656B0  4B 6E 00 58 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A656B4  28 03 00 00 */	cmplwi r3, 0
/* 80A656B8  40 82 00 1C */	bne lbl_80A656D4
/* 80A656BC  7F E3 FB 78 */	mr r3, r31
/* 80A656C0  38 80 02 36 */	li r4, 0x236
/* 80A656C4  4B 6E 67 68 */	b getNearestActorP__8daNpcT_cFs
/* 80A656C8  7C 64 1B 78 */	mr r4, r3
/* 80A656CC  38 7F 0F 94 */	addi r3, r31, 0xf94
/* 80A656D0  4B 6E 00 10 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A656D4:
/* 80A656D4  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80A656D8  4B 6E 00 30 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A656DC  28 03 00 00 */	cmplwi r3, 0
/* 80A656E0  40 82 00 1C */	bne lbl_80A656FC
/* 80A656E4  7F E3 FB 78 */	mr r3, r31
/* 80A656E8  38 80 02 3C */	li r4, 0x23c
/* 80A656EC  4B 6E 67 40 */	b getNearestActorP__8daNpcT_cFs
/* 80A656F0  7C 64 1B 78 */	mr r4, r3
/* 80A656F4  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80A656F8  4B 6D FF E8 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A656FC:
/* 80A656FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A65700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A65704  7C 08 03 A6 */	mtlr r0
/* 80A65708  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6570C  4E 80 00 20 */	blr 
