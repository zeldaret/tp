lbl_804939A4:
/* 804939A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804939A8  7C 08 02 A6 */	mflr r0
/* 804939AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804939B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804939B4  7C 7F 1B 78 */	mr r31, r3
/* 804939B8  4B FF FE 81 */	bl OpenInit_com__8daTbox_cFv
/* 804939BC  38 00 00 01 */	li r0, 1
/* 804939C0  98 1F 07 59 */	stb r0, 0x759(r31)
/* 804939C4  38 00 00 00 */	li r0, 0
/* 804939C8  B0 1F 07 56 */	sth r0, 0x756(r31)
/* 804939CC  A0 1F 07 54 */	lhz r0, 0x754(r31)
/* 804939D0  60 00 00 10 */	ori r0, r0, 0x10
/* 804939D4  B0 1F 07 54 */	sth r0, 0x754(r31)
/* 804939D8  7F E3 FB 78 */	mr r3, r31
/* 804939DC  4B FF D9 11 */	bl setLightPos__8daTbox_cFv
/* 804939E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804939E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804939E8  7C 08 03 A6 */	mtlr r0
/* 804939EC  38 21 00 10 */	addi r1, r1, 0x10
/* 804939F0  4E 80 00 20 */	blr 
