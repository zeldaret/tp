lbl_8009A308:
/* 8009A308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009A30C  7C 08 02 A6 */	mflr r0
/* 8009A310  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009A314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009A318  3B E0 00 00 */	li r31, 0
/* 8009A31C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009A320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009A324  38 63 00 9C */	addi r3, r3, 0x9c
/* 8009A328  38 80 00 04 */	li r4, 4
/* 8009A32C  38 A0 00 00 */	li r5, 0
/* 8009A330  4B F9 8D 01 */	bl getItem__17dSv_player_item_cCFib
/* 8009A334  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8009A338  28 00 00 43 */	cmplwi r0, 0x43
/* 8009A33C  40 82 00 1C */	bne lbl_8009A358
/* 8009A340  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009A344  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009A348  88 03 00 F8 */	lbz r0, 0xf8(r3)
/* 8009A34C  28 00 00 1E */	cmplwi r0, 0x1e
/* 8009A350  41 80 00 08 */	blt lbl_8009A358
/* 8009A354  3B E0 00 01 */	li r31, 1
lbl_8009A358:
/* 8009A358  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 8009A35C  30 03 FF FF */	addic r0, r3, -1
/* 8009A360  7C 60 19 10 */	subfe r3, r0, r3
/* 8009A364  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009A368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009A36C  7C 08 03 A6 */	mtlr r0
/* 8009A370  38 21 00 10 */	addi r1, r1, 0x10
/* 8009A374  4E 80 00 20 */	blr 
