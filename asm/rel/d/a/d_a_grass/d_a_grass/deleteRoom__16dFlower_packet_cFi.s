lbl_80522F0C:
/* 80522F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80522F10  7C 08 02 A6 */	mflr r0
/* 80522F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80522F18  7C 60 1B 78 */	mr r0, r3
/* 80522F1C  54 83 10 3A */	slwi r3, r4, 2
/* 80522F20  3C 63 00 01 */	addis r3, r3, 1
/* 80522F24  38 63 29 14 */	addi r3, r3, 0x2914
/* 80522F28  7C 60 1A 14 */	add r3, r0, r3
/* 80522F2C  4B FF EC DD */	bl deleteData__14dFlower_room_cFv
/* 80522F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80522F34  7C 08 03 A6 */	mtlr r0
/* 80522F38  38 21 00 10 */	addi r1, r1, 0x10
/* 80522F3C  4E 80 00 20 */	blr 
