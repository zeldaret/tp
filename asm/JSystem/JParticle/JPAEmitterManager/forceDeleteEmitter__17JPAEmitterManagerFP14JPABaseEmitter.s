lbl_8027E2D8:
/* 8027E2D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027E2DC  7C 08 02 A6 */	mflr r0
/* 8027E2E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027E2E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027E2E8  93 C1 00 08 */	stw r30, 8(r1)
/* 8027E2EC  7C 7E 1B 78 */	mr r30, r3
/* 8027E2F0  7C 9F 23 78 */	mr r31, r4
/* 8027E2F4  7F E3 FB 78 */	mr r3, r31
/* 8027E2F8  48 00 09 69 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 8027E2FC  80 1F 00 F4 */	lwz r0, 0xf4(r31)
/* 8027E300  60 00 03 00 */	ori r0, r0, 0x300
/* 8027E304  90 1F 00 F4 */	stw r0, 0xf4(r31)
/* 8027E308  80 7E 00 00 */	lwz r3, 0(r30)
/* 8027E30C  88 1F 01 12 */	lbz r0, 0x112(r31)
/* 8027E310  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8027E314  7C 63 02 14 */	add r3, r3, r0
/* 8027E318  38 9F 00 58 */	addi r4, r31, 0x58
/* 8027E31C  48 05 DE 41 */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 8027E320  38 7E 00 04 */	addi r3, r30, 4
/* 8027E324  38 9F 00 58 */	addi r4, r31, 0x58
/* 8027E328  48 05 DC C9 */	bl prepend__10JSUPtrListFP10JSUPtrLink
/* 8027E32C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027E330  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027E334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027E338  7C 08 03 A6 */	mtlr r0
/* 8027E33C  38 21 00 10 */	addi r1, r1, 0x10
/* 8027E340  4E 80 00 20 */	blr 
