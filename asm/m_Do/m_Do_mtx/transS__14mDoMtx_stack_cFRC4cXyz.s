lbl_8000CD64:
/* 8000CD64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000CD68  7C 08 02 A6 */	mflr r0
/* 8000CD6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000CD70  7C 64 1B 78 */	mr r4, r3
/* 8000CD74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8000CD78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8000CD7C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8000CD80  C0 44 00 04 */	lfs f2, 4(r4)
/* 8000CD84  C0 64 00 08 */	lfs f3, 8(r4)
/* 8000CD88  48 33 9B 61 */	bl PSMTXTrans
/* 8000CD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000CD90  7C 08 03 A6 */	mtlr r0
/* 8000CD94  38 21 00 10 */	addi r1, r1, 0x10
/* 8000CD98  4E 80 00 20 */	blr 
