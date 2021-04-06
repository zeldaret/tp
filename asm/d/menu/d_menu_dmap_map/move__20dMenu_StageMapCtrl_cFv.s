lbl_801C2234:
/* 801C2234  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C2238  7C 08 02 A6 */	mflr r0
/* 801C223C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C2240  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801C2244  93 C1 00 08 */	stw r30, 8(r1)
/* 801C2248  7C 7E 1B 78 */	mr r30, r3
/* 801C224C  8B E3 00 F5 */	lbz r31, 0xf5(r3)
/* 801C2250  1C BF 00 0C */	mulli r5, r31, 0xc
/* 801C2254  3C 80 80 3C */	lis r4, move_process@ha /* 0x803BCD44@ha */
/* 801C2258  38 04 CD 44 */	addi r0, r4, move_process@l /* 0x803BCD44@l */
/* 801C225C  7D 80 2A 14 */	add r12, r0, r5
/* 801C2260  48 19 FE 25 */	bl __ptmf_scall
/* 801C2264  60 00 00 00 */	nop 
/* 801C2268  88 1E 00 F5 */	lbz r0, 0xf5(r30)
/* 801C226C  7C 00 F8 40 */	cmplw r0, r31
/* 801C2270  41 82 00 20 */	beq lbl_801C2290
/* 801C2274  7F C3 F3 78 */	mr r3, r30
/* 801C2278  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801C227C  3C 80 80 3C */	lis r4, init_process@ha /* 0x803BCCE4@ha */
/* 801C2280  38 04 CC E4 */	addi r0, r4, init_process@l /* 0x803BCCE4@l */
/* 801C2284  7D 80 2A 14 */	add r12, r0, r5
/* 801C2288  48 19 FD FD */	bl __ptmf_scall
/* 801C228C  60 00 00 00 */	nop 
lbl_801C2290:
/* 801C2290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801C2294  83 C1 00 08 */	lwz r30, 8(r1)
/* 801C2298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C229C  7C 08 03 A6 */	mtlr r0
/* 801C22A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801C22A4  4E 80 00 20 */	blr 
