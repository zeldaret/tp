lbl_801FB01C:
/* 801FB01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB020  7C 08 02 A6 */	mflr r0
/* 801FB024  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB02C  7C 7F 1B 78 */	mr r31, r3
/* 801FB030  80 63 01 10 */	lwz r3, 0x110(r3)
/* 801FB034  4B FE FB B9 */	bl _move__12dMenu_Ring_cFv
/* 801FB038  80 7F 01 10 */	lwz r3, 0x110(r31)
/* 801FB03C  4B FF 02 79 */	bl isMoveEnd__12dMenu_Ring_cFv
/* 801FB040  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB044  41 82 00 0C */	beq lbl_801FB050
/* 801FB048  38 00 00 03 */	li r0, 3
/* 801FB04C  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB050:
/* 801FB050  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB054  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB058  7C 08 03 A6 */	mtlr r0
/* 801FB05C  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB060  4E 80 00 20 */	blr 
