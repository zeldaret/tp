lbl_8002CBE4:
/* 8002CBE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002CBE8  7C 08 02 A6 */	mflr r0
/* 8002CBEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002CBF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002CBF4  7C 7F 1B 78 */	mr r31, r3
/* 8002CBF8  38 00 00 FF */	li r0, 0xff
/* 8002CBFC  3C 7F 00 02 */	addis r3, r31, 2
/* 8002CC00  98 03 DD F8 */	stb r0, -0x2208(r3)
/* 8002CC04  38 7F 0F 38 */	addi r3, r31, 0xf38
/* 8002CC08  4B FF E5 D5 */	bl ct__14dComIfG_play_cFv
/* 8002CC0C  38 80 00 00 */	li r4, 0
/* 8002CC10  3C 7F 00 02 */	addis r3, r31, 2
/* 8002CC14  98 83 DD F9 */	stb r4, -0x2207(r3)
/* 8002CC18  38 00 FF FF */	li r0, -1
/* 8002CC1C  98 03 DD FA */	stb r0, -0x2206(r3)
/* 8002CC20  98 83 DD FB */	stb r4, -0x2205(r3)
/* 8002CC24  90 83 DE 00 */	stw r4, -0x2200(r3)
/* 8002CC28  90 83 DE 04 */	stw r4, -0x21fc(r3)
/* 8002CC2C  98 83 DE 08 */	stb r4, -0x21f8(r3)
/* 8002CC30  98 83 DD FC */	stb r4, -0x2204(r3)
/* 8002CC34  38 00 00 FF */	li r0, 0xff
/* 8002CC38  98 03 DE 09 */	stb r0, -0x21f7(r3)
/* 8002CC3C  98 03 DE 0A */	stb r0, -0x21f6(r3)
/* 8002CC40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002CC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002CC48  7C 08 03 A6 */	mtlr r0
/* 8002CC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002CC50  4E 80 00 20 */	blr 
