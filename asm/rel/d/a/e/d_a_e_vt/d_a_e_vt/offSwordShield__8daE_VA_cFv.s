lbl_807C3A50:
/* 807C3A50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807C3A54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807C3A58  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 807C3A5C  88 04 05 68 */	lbz r0, 0x568(r4)
/* 807C3A60  28 00 00 39 */	cmplwi r0, 0x39
/* 807C3A64  4C 82 00 20 */	bnelr 
/* 807C3A68  38 00 00 03 */	li r0, 3
/* 807C3A6C  B0 03 13 3E */	sth r0, 0x133e(r3)
/* 807C3A70  38 80 00 00 */	li r4, 0
/* 807C3A74  38 00 00 04 */	li r0, 4
/* 807C3A78  7C 09 03 A6 */	mtctr r0
lbl_807C3A7C:
/* 807C3A7C  7C A3 22 14 */	add r5, r3, r4
/* 807C3A80  80 05 20 90 */	lwz r0, 0x2090(r5)
/* 807C3A84  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C3A88  90 05 20 90 */	stw r0, 0x2090(r5)
/* 807C3A8C  80 05 21 00 */	lwz r0, 0x2100(r5)
/* 807C3A90  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807C3A94  90 05 21 00 */	stw r0, 0x2100(r5)
/* 807C3A98  80 05 21 00 */	lwz r0, 0x2100(r5)
/* 807C3A9C  60 00 00 04 */	ori r0, r0, 4
/* 807C3AA0  90 05 21 00 */	stw r0, 0x2100(r5)
/* 807C3AA4  38 84 01 38 */	addi r4, r4, 0x138
/* 807C3AA8  42 00 FF D4 */	bdnz lbl_807C3A7C
/* 807C3AAC  4E 80 00 20 */	blr 
