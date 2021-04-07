lbl_8009A378:
/* 8009A378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A37C  7C 08 02 A6 */	mflr r0
/* 8009A380  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A384  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009A388  3B E0 00 00 */	li r31, 0
/* 8009A38C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009A390  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009A394  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A398  38 80 00 04 */	li r4, 4
/* 8009A39C  38 A0 00 00 */	li r5, 0
/* 8009A3A0  4B F9 8C 91 */	bl getItem__17dSv_player_item_cCFib
/* 8009A3A4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009A3A8  28 00 00 43 */	cmplwi r0, 0x43
/* 8009A3AC  40 82 00 1C */	bne lbl_8009A3C8
/* 8009A3B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009A3B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009A3B8  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 8009A3BC  28 00 00 3C */	cmplwi r0, 0x3c
/* 8009A3C0  41 80 00 08 */	blt lbl_8009A3C8
/* 8009A3C4  3B E0 00 01 */	li r31, 1
lbl_8009A3C8:
/* 8009A3C8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8009A3CC  30 03 FF FF */	addic r0, r3, -1
/* 8009A3D0  7C 60 19 10 */	subfe r3, r0, r3
/* 8009A3D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009A3D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A3DC  7C 08 03 A6 */	mtlr r0
/* 8009A3E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A3E4  4E 80 00 20 */	blr 
