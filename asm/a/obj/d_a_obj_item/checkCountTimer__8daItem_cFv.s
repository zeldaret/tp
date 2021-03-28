lbl_8015D370:
/* 8015D370  38 C0 00 01 */	li r6, 1
/* 8015D374  88 A3 09 4A */	lbz r5, 0x94a(r3)
/* 8015D378  28 05 00 01 */	cmplwi r5, 1
/* 8015D37C  40 82 00 08 */	bne lbl_8015D384
/* 8015D380  38 C0 00 00 */	li r6, 0
lbl_8015D384:
/* 8015D384  88 03 09 48 */	lbz r0, 0x948(r3)
/* 8015D388  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8015D38C  41 82 00 08 */	beq lbl_8015D394
/* 8015D390  38 C0 00 00 */	li r6, 0
lbl_8015D394:
/* 8015D394  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8015D398  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8015D39C  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 8015D3A0  28 00 00 00 */	cmplwi r0, 0
/* 8015D3A4  41 82 00 08 */	beq lbl_8015D3AC
/* 8015D3A8  38 C0 00 00 */	li r6, 0
lbl_8015D3AC:
/* 8015D3AC  28 05 00 05 */	cmplwi r5, 5
/* 8015D3B0  41 82 00 10 */	beq lbl_8015D3C0
/* 8015D3B4  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 8015D3B8  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 8015D3BC  41 82 00 08 */	beq lbl_8015D3C4
lbl_8015D3C0:
/* 8015D3C0  38 C0 00 00 */	li r6, 0
lbl_8015D3C4:
/* 8015D3C4  7C C3 33 78 */	mr r3, r6
/* 8015D3C8  4E 80 00 20 */	blr 
