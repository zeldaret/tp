lbl_801CF208:
/* 801CF208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CF20C  7C 08 02 A6 */	mflr r0
/* 801CF210  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CF214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CF218  3B ED 81 A8 */	la r31, black(r13) /* 80450728-_SDA_BASE_ */
/* 801CF21C  2C 05 00 04 */	cmpwi r5, 4
/* 801CF220  40 82 00 30 */	bne lbl_801CF250
/* 801CF224  80 03 00 D4 */	lwz r0, 0xd4(r3)
/* 801CF228  2C 00 00 01 */	cmpwi r0, 1
/* 801CF22C  41 82 00 1C */	beq lbl_801CF248
/* 801CF230  40 80 00 50 */	bge lbl_801CF280
/* 801CF234  2C 00 00 00 */	cmpwi r0, 0
/* 801CF238  40 80 00 08 */	bge lbl_801CF240
/* 801CF23C  48 00 00 44 */	b lbl_801CF280
lbl_801CF240:
/* 801CF240  38 62 A7 C4 */	la r3, borderColor0(r2) /* 804541C4-_SDA2_BASE_ */
/* 801CF244  48 00 00 40 */	b lbl_801CF284
lbl_801CF248:
/* 801CF248  38 62 A7 C8 */	la r3, borderColor1(r2) /* 804541C8-_SDA2_BASE_ */
/* 801CF24C  48 00 00 38 */	b lbl_801CF284
lbl_801CF250:
/* 801CF250  81 83 00 00 */	lwz r12, 0(r3)
/* 801CF254  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 801CF258  7D 89 03 A6 */	mtctr r12
/* 801CF25C  4E 80 04 21 */	bctrl 
/* 801CF260  88 03 00 00 */	lbz r0, 0(r3)
/* 801CF264  98 1F 00 00 */	stb r0, 0(r31)
/* 801CF268  88 03 00 01 */	lbz r0, 1(r3)
/* 801CF26C  98 1F 00 01 */	stb r0, 1(r31)
/* 801CF270  88 03 00 02 */	lbz r0, 2(r3)
/* 801CF274  98 1F 00 02 */	stb r0, 2(r31)
/* 801CF278  88 03 00 03 */	lbz r0, 3(r3)
/* 801CF27C  98 1F 00 03 */	stb r0, 3(r31)
lbl_801CF280:
/* 801CF280  7F E3 FB 78 */	mr r3, r31
lbl_801CF284:
/* 801CF284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CF288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CF28C  7C 08 03 A6 */	mtlr r0
/* 801CF290  38 21 00 10 */	addi r1, r1, 0x10
/* 801CF294  4E 80 00 20 */	blr 
