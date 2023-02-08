lbl_80A6BEE4:
/* 80A6BEE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6BEE8  7C 08 02 A6 */	mflr r0
/* 80A6BEEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6BEF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6BEF4  7C 7F 1B 78 */	mr r31, r3
/* 80A6BEF8  88 03 0F 8C */	lbz r0, 0xf8c(r3)
/* 80A6BEFC  2C 00 00 05 */	cmpwi r0, 5
/* 80A6BF00  41 82 00 40 */	beq lbl_80A6BF40
/* 80A6BF04  40 80 00 8C */	bge lbl_80A6BF90
/* 80A6BF08  2C 00 00 01 */	cmpwi r0, 1
/* 80A6BF0C  41 82 00 08 */	beq lbl_80A6BF14
/* 80A6BF10  48 00 00 80 */	b lbl_80A6BF90
lbl_80A6BF14:
/* 80A6BF14  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A6BF18  4B 6D 97 F1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A6BF1C  28 03 00 00 */	cmplwi r3, 0
/* 80A6BF20  40 82 00 70 */	bne lbl_80A6BF90
/* 80A6BF24  7F E3 FB 78 */	mr r3, r31
/* 80A6BF28  38 80 02 50 */	li r4, 0x250
/* 80A6BF2C  4B 6D FF 01 */	bl getNearestActorP__8daNpcT_cFs
/* 80A6BF30  7C 64 1B 78 */	mr r4, r3
/* 80A6BF34  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80A6BF38  4B 6D 97 A9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A6BF3C  48 00 00 54 */	b lbl_80A6BF90
lbl_80A6BF40:
/* 80A6BF40  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80A6BF44  4B 6D 97 C5 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A6BF48  28 03 00 00 */	cmplwi r3, 0
/* 80A6BF4C  40 82 00 1C */	bne lbl_80A6BF68
/* 80A6BF50  7F E3 FB 78 */	mr r3, r31
/* 80A6BF54  38 80 02 45 */	li r4, 0x245
/* 80A6BF58  4B 6D FE D5 */	bl getNearestActorP__8daNpcT_cFs
/* 80A6BF5C  7C 64 1B 78 */	mr r4, r3
/* 80A6BF60  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80A6BF64  4B 6D 97 7D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A6BF68:
/* 80A6BF68  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80A6BF6C  4B 6D 97 9D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A6BF70  28 03 00 00 */	cmplwi r3, 0
/* 80A6BF74  40 82 00 1C */	bne lbl_80A6BF90
/* 80A6BF78  7F E3 FB 78 */	mr r3, r31
/* 80A6BF7C  38 80 02 5E */	li r4, 0x25e
/* 80A6BF80  4B 6D FE AD */	bl getNearestActorP__8daNpcT_cFs
/* 80A6BF84  7C 64 1B 78 */	mr r4, r3
/* 80A6BF88  38 7F 0F 98 */	addi r3, r31, 0xf98
/* 80A6BF8C  4B 6D 97 55 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A6BF90:
/* 80A6BF90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6BF94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6BF98  7C 08 03 A6 */	mtlr r0
/* 80A6BF9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6BFA0  4E 80 00 20 */	blr 
