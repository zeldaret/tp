lbl_80CC5354:
/* 80CC5354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC5358  7C 08 02 A6 */	mflr r0
/* 80CC535C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC5360  7C 65 1B 78 */	mr r5, r3
/* 80CC5364  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CC5368  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CC536C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CC5370  80 85 00 00 */	lwz r4, 0(r5)
/* 80CC5374  88 A5 00 3A */	lbz r5, 0x3a(r5)
/* 80CC5378  7C A5 07 74 */	extsb r5, r5
/* 80CC537C  4B 36 77 EC */	b entrySimpleModel__14dComIfG_play_cFP8J3DModeli
/* 80CC5380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC5384  7C 08 03 A6 */	mtlr r0
/* 80CC5388  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC538C  4E 80 00 20 */	blr 
