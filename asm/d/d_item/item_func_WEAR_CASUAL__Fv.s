lbl_80098540:
/* 80098540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80098544  7C 08 02 A6 */	mflr r0
/* 80098548  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009854C  38 60 00 2E */	li r3, 0x2e
/* 80098550  4B F9 69 61 */	bl dComIfGs_setSelectEquipClothes__FUc
/* 80098554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80098558  7C 08 03 A6 */	mtlr r0
/* 8009855C  38 21 00 10 */	addi r1, r1, 0x10
/* 80098560  4E 80 00 20 */	blr 
