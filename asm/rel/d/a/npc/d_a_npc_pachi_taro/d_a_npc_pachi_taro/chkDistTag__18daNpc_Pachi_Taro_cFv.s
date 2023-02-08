lbl_80A9E3E4:
/* 80A9E3E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9E3E8  7C 08 02 A6 */	mflr r0
/* 80A9E3EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9E3F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9E3F4  7C 7F 1B 78 */	mr r31, r3
/* 80A9E3F8  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80A9E3FC  4B 6A 73 0D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9E400  28 03 00 00 */	cmplwi r3, 0
/* 80A9E404  41 82 00 18 */	beq lbl_80A9E41C
/* 80A9E408  80 03 06 E4 */	lwz r0, 0x6e4(r3)
/* 80A9E40C  2C 00 00 00 */	cmpwi r0, 0
/* 80A9E410  41 82 00 0C */	beq lbl_80A9E41C
/* 80A9E414  38 60 00 0A */	li r3, 0xa
/* 80A9E418  48 00 00 2C */	b lbl_80A9E444
lbl_80A9E41C:
/* 80A9E41C  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80A9E420  4B 6A 72 E9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80A9E424  28 03 00 00 */	cmplwi r3, 0
/* 80A9E428  41 82 00 18 */	beq lbl_80A9E440
/* 80A9E42C  80 03 06 E4 */	lwz r0, 0x6e4(r3)
/* 80A9E430  2C 00 00 00 */	cmpwi r0, 0
/* 80A9E434  41 82 00 0C */	beq lbl_80A9E440
/* 80A9E438  38 60 00 0A */	li r3, 0xa
/* 80A9E43C  48 00 00 08 */	b lbl_80A9E444
lbl_80A9E440:
/* 80A9E440  38 60 00 00 */	li r3, 0
lbl_80A9E444:
/* 80A9E444  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9E448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9E44C  7C 08 03 A6 */	mtlr r0
/* 80A9E450  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9E454  4E 80 00 20 */	blr 
