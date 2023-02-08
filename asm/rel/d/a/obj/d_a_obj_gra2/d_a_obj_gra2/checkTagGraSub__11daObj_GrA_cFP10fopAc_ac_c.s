lbl_80C03720:
/* 80C03720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C03724  7C 08 02 A6 */	mflr r0
/* 80C03728  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C0372C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C03730  7C 9F 23 78 */	mr r31, r4
/* 80C03734  4B FF D6 D1 */	bl getTagNo__11daObj_GrA_cFv
/* 80C03738  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 80C0373C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C03740  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C03744  7C 03 00 50 */	subf r0, r3, r0
/* 80C03748  7C 00 00 34 */	cntlzw r0, r0
/* 80C0374C  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80C03750  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C03754  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C03758  7C 08 03 A6 */	mtlr r0
/* 80C0375C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C03760  4E 80 00 20 */	blr 
