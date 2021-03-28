lbl_802C35F8:
/* 802C35F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C35FC  7C 08 02 A6 */	mflr r0
/* 802C3600  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3604  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C3608  7C 7F 1B 78 */	mr r31, r3
/* 802C360C  88 03 00 B3 */	lbz r0, 0xb3(r3)
/* 802C3610  28 00 00 00 */	cmplwi r0, 0
/* 802C3614  41 82 00 08 */	beq lbl_802C361C
/* 802C3618  48 00 01 35 */	bl deleteKantera__14Z2CreatureLinkFv
lbl_802C361C:
/* 802C361C  7F E3 FB 78 */	mr r3, r31
/* 802C3620  4B FF CE C9 */	bl deleteObject__10Z2CreatureFv
/* 802C3624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C3628  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C362C  7C 08 03 A6 */	mtlr r0
/* 802C3630  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3634  4E 80 00 20 */	blr 
