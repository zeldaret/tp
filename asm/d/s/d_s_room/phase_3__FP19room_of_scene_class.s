lbl_8025BAC4:
/* 8025BAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025BAC8  7C 08 02 A6 */	mflr r0
/* 8025BACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025BAD0  4B FF F8 1D */	bl objectSetCheck__FP19room_of_scene_class
/* 8025BAD4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8025BAD8  20 00 00 00 */	subfic r0, r0, 0
/* 8025BADC  7C 60 01 10 */	subfe r3, r0, r0
/* 8025BAE0  38 00 00 02 */	li r0, 2
/* 8025BAE4  7C 03 18 38 */	and r3, r0, r3
/* 8025BAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025BAEC  7C 08 03 A6 */	mtlr r0
/* 8025BAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8025BAF4  4E 80 00 20 */	blr 
