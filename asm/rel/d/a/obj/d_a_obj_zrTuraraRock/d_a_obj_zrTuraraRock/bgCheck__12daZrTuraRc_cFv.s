lbl_80D420FC:
/* 80D420FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D42100  7C 08 02 A6 */	mflr r0
/* 80D42104  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42108  80 03 07 6C */	lwz r0, 0x76c(r3)
/* 80D4210C  54 00 DF FF */	rlwinm. r0, r0, 0x1b, 0x1f, 0x1f
/* 80D42110  41 82 00 08 */	beq lbl_80D42118
/* 80D42114  48 00 00 15 */	bl init_modeDropEnd__12daZrTuraRc_cFv
lbl_80D42118:
/* 80D42118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4211C  7C 08 03 A6 */	mtlr r0
/* 80D42120  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42124  4E 80 00 20 */	blr 
