lbl_8020D874:
/* 8020D874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020D878  7C 08 02 A6 */	mflr r0
/* 8020D87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020D880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020D884  7C 7F 1B 78 */	mr r31, r3
/* 8020D888  4B FF FD C9 */	bl isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv
/* 8020D88C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8020D890  41 82 00 18 */	beq lbl_8020D8A8
/* 8020D894  4B E2 07 B5 */	bl dComIfGp_mapShow__Fv
/* 8020D898  38 00 00 01 */	li r0, 1
/* 8020D89C  98 1F 00 2D */	stb r0, 0x2d(r31)
/* 8020D8A0  38 00 00 07 */	li r0, 7
/* 8020D8A4  98 1F 00 2E */	stb r0, 0x2e(r31)
lbl_8020D8A8:
/* 8020D8A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020D8AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020D8B0  7C 08 03 A6 */	mtlr r0
/* 8020D8B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8020D8B8  4E 80 00 20 */	blr 
