lbl_80595AEC:
/* 80595AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595AF0  7C 08 02 A6 */	mflr r0
/* 80595AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595AFC  7C 7F 1B 78 */	mr r31, r3
/* 80595B00  4B FF FB 39 */	bl checkPlayerMove__14daObjOnCloth_cFv
/* 80595B04  7F E3 FB 78 */	mr r3, r31
/* 80595B08  4B FF F6 D5 */	bl setNormalClothPos__14daObjOnCloth_cFv
/* 80595B0C  7F E3 FB 78 */	mr r3, r31
/* 80595B10  4B FF F9 A1 */	bl calcJointAngle__14daObjOnCloth_cFv
/* 80595B14  38 60 00 01 */	li r3, 1
/* 80595B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595B20  7C 08 03 A6 */	mtlr r0
/* 80595B24  38 21 00 10 */	addi r1, r1, 0x10
/* 80595B28  4E 80 00 20 */	blr 
