lbl_80292A3C:
/* 80292A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80292A40  7C 08 02 A6 */	mflr r0
/* 80292A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80292A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80292A4C  93 C1 00 08 */	stw r30, 8(r1)
/* 80292A50  7C 7E 1B 78 */	mr r30, r3
/* 80292A54  7C 9F 23 78 */	mr r31, r4
/* 80292A58  88 C3 02 16 */	lbz r6, 0x216(r3)
/* 80292A5C  54 C5 CF FE */	rlwinm r5, r6, 0x19, 0x1f, 0x1f
/* 80292A60  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 80292A64  7C 05 00 40 */	cmplw r5, r0
/* 80292A68  41 82 00 24 */	beq lbl_80292A8C
/* 80292A6C  53 E6 3E 30 */	rlwimi r6, r31, 7, 0x18, 0x18
/* 80292A70  98 DE 02 16 */	stb r6, 0x216(r30)
/* 80292A74  4B FF FF 2D */	bl setChannelPauseFlag__8JASTrackFb
/* 80292A78  7F C3 F3 78 */	mr r3, r30
/* 80292A7C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80292A80  7C 00 00 34 */	cntlzw r0, r0
/* 80292A84  54 04 D9 7E */	srwi r4, r0, 5
/* 80292A88  48 00 10 35 */	bl interrupt__10JASSeqCtrlFQ210JASSeqCtrl8IntrType
lbl_80292A8C:
/* 80292A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80292A90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80292A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80292A98  7C 08 03 A6 */	mtlr r0
/* 80292A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80292AA0  4E 80 00 20 */	blr 
