lbl_8004B6F8:
/* 8004B6F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8004B6FC  7C 08 02 A6 */	mflr r0
/* 8004B700  90 01 00 14 */	stw r0, 0x14(r1)
/* 8004B704  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8004B708  93 C1 00 08 */	stw r30, 8(r1)
/* 8004B70C  7C 7E 1B 78 */	mr r30, r3
/* 8004B710  7C 9F 23 78 */	mr r31, r4
/* 8004B714  88 64 00 06 */	lbz r3, 6(r4)
/* 8004B718  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8004B71C  40 82 00 6C */	bne lbl_8004B788
/* 8004B720  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8004B724  40 82 00 18 */	bne lbl_8004B73C
/* 8004B728  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8004B72C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8004B730  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8004B734  28 00 00 00 */	cmplwi r0, 0
/* 8004B738  40 82 00 3C */	bne lbl_8004B774
lbl_8004B73C:
/* 8004B73C  80 7F 00 08 */	lwz r3, 8(r31)
/* 8004B740  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8004B744  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8004B748  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8004B74C  7F C3 F3 78 */	mr r3, r30
/* 8004B750  7F E4 FB 78 */	mr r4, r31
/* 8004B754  48 00 03 21 */	bl cutTable__Q213dPa_control_c7level_cFPQ313dPa_control_c7level_c9emitter_c
/* 8004B758  38 1E 00 08 */	addi r0, r30, 8
/* 8004B75C  7C 00 F8 50 */	subf r0, r0, r31
/* 8004B760  38 60 00 18 */	li r3, 0x18
/* 8004B764  7C 00 1B D6 */	divw r0, r0, r3
/* 8004B768  7C 00 1B 96 */	divwu r0, r0, r3
/* 8004B76C  98 1E 00 04 */	stb r0, 4(r30)
/* 8004B770  48 00 00 20 */	b lbl_8004B790
lbl_8004B774:
/* 8004B774  80 7F 00 08 */	lwz r3, 8(r31)
/* 8004B778  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8004B77C  60 00 00 02 */	ori r0, r0, 2
/* 8004B780  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8004B784  48 00 00 0C */	b lbl_8004B790
lbl_8004B788:
/* 8004B788  54 60 06 3C */	rlwinm r0, r3, 0, 0x18, 0x1e
/* 8004B78C  98 1F 00 06 */	stb r0, 6(r31)
lbl_8004B790:
/* 8004B790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8004B794  83 C1 00 08 */	lwz r30, 8(r1)
/* 8004B798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8004B79C  7C 08 03 A6 */	mtlr r0
/* 8004B7A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8004B7A4  4E 80 00 20 */	blr 
