lbl_8024B250:
/* 8024B250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B254  7C 08 02 A6 */	mflr r0
/* 8024B258  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B25C  A0 04 00 04 */	lhz r0, 4(r4)
/* 8024B260  28 00 00 00 */	cmplwi r0, 0
/* 8024B264  40 82 00 30 */	bne lbl_8024B294
/* 8024B268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024B26C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024B270  4B DE 78 39 */	bl getRupeeMax__21dSv_player_status_a_cCFv
/* 8024B274  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8024B278  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8024B27C  A0 84 00 04 */	lhz r4, 4(r4)
/* 8024B280  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8024B284  7C 00 20 50 */	subf r0, r0, r4
/* 8024B288  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8024B28C  7C 03 03 78 */	mr r3, r0
/* 8024B290  48 00 00 20 */	b lbl_8024B2B0
lbl_8024B294:
/* 8024B294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8024B298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8024B29C  A0 63 00 04 */	lhz r3, 4(r3)
/* 8024B2A0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8024B2A4  7C 00 18 50 */	subf r0, r0, r3
/* 8024B2A8  54 00 0F FE */	srwi r0, r0, 0x1f
/* 8024B2AC  7C 03 03 78 */	mr r3, r0
lbl_8024B2B0:
/* 8024B2B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B2B4  7C 08 03 A6 */	mtlr r0
/* 8024B2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B2BC  4E 80 00 20 */	blr 
