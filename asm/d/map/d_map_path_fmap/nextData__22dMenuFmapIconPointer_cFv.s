lbl_8003E490:
/* 8003E490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003E494  7C 08 02 A6 */	mflr r0
/* 8003E498  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003E49C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8003E4A0  93 C1 00 08 */	stw r30, 8(r1)
/* 8003E4A4  7C 7E 1B 78 */	mr r30, r3
/* 8003E4A8  3B E0 00 00 */	li r31, 0
/* 8003E4AC  4B FF FF 2D */	bl getNextData__22dMenuFmapIconPointer_cFv
/* 8003E4B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003E4B4  41 82 00 40 */	beq lbl_8003E4F4
/* 8003E4B8  7F C3 F3 78 */	mr r3, r30
/* 8003E4BC  4B FF FE C1 */	bl getNextRoomData__22dMenuFmapIconPointer_cFv
/* 8003E4C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003E4C4  41 82 00 28 */	beq lbl_8003E4EC
/* 8003E4C8  7F C3 F3 78 */	mr r3, r30
/* 8003E4CC  4B FF FE D9 */	bl getNextStageData__22dMenuFmapIconPointer_cFv
/* 8003E4D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8003E4D4  41 82 00 0C */	beq lbl_8003E4E0
/* 8003E4D8  3B E0 00 01 */	li r31, 1
/* 8003E4DC  48 00 00 18 */	b lbl_8003E4F4
lbl_8003E4E0:
/* 8003E4E0  7F C3 F3 78 */	mr r3, r30
/* 8003E4E4  4B FF FE 6D */	bl getFirstRoomData__22dMenuFmapIconPointer_cFv
/* 8003E4E8  48 00 00 0C */	b lbl_8003E4F4
lbl_8003E4EC:
/* 8003E4EC  7F C3 F3 78 */	mr r3, r30
/* 8003E4F0  4B FF FC D1 */	bl getFirstData__22dMenuFmapIconPointer_cFv
lbl_8003E4F4:
/* 8003E4F4  7F E3 FB 78 */	mr r3, r31
/* 8003E4F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003E4FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8003E500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003E504  7C 08 03 A6 */	mtlr r0
/* 8003E508  38 21 00 10 */	addi r1, r1, 0x10
/* 8003E50C  4E 80 00 20 */	blr 
