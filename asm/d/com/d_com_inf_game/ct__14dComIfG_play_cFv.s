lbl_8002B1DC:
/* 8002B1DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002B1E0  7C 08 02 A6 */	mflr r0
/* 8002B1E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002B1E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002B1EC  7C 7F 1B 78 */	mr r31, r3
/* 8002B1F0  38 00 00 00 */	li r0, 0
/* 8002B1F4  98 03 4E 0C */	stb r0, 0x4e0c(r3)
/* 8002B1F8  90 03 4E 04 */	stw r0, 0x4e04(r3)
/* 8002B1FC  98 03 4E 0D */	stb r0, 0x4e0d(r3)
/* 8002B200  38 7F 50 24 */	addi r3, r31, 0x5024
/* 8002B204  38 80 00 00 */	li r4, 0
/* 8002B208  38 A0 00 08 */	li r5, 8
/* 8002B20C  4B FD 82 4D */	bl memset
/* 8002B210  7F E3 FB 78 */	mr r3, r31
/* 8002B214  48 00 00 19 */	bl init__14dComIfG_play_cFv
/* 8002B218  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002B21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002B220  7C 08 03 A6 */	mtlr r0
/* 8002B224  38 21 00 10 */	addi r1, r1, 0x10
/* 8002B228  4E 80 00 20 */	blr 
