lbl_8027C054:
/* 8027C054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027C058  7C 08 02 A6 */	mflr r0
/* 8027C05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027C060  7C A4 2B 78 */	mr r4, r5
/* 8027C064  7C C5 33 78 */	mr r5, r6
/* 8027C068  4B FF FD 85 */	bl calcAffect__12JPAFieldBaseFP13JPAFieldBlockP15JPABaseParticle
/* 8027C06C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027C070  7C 08 03 A6 */	mtlr r0
/* 8027C074  38 21 00 10 */	addi r1, r1, 0x10
/* 8027C078  4E 80 00 20 */	blr 
