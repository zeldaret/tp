lbl_80340A40:
/* 80340A40  7C 08 02 A6 */	mflr r0
/* 80340A44  90 01 00 04 */	stw r0, 4(r1)
/* 80340A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80340A4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80340A50  3C A0 80 00 */	lis r5, 0x8000 /* 0x80000C00@ha */
/* 80340A54  3C 80 80 34 */	lis r4, SystemCallVector@ha
/* 80340A58  3C 60 80 34 */	lis r3, __OSSystemCallVectorEnd@ha
/* 80340A5C  3B E5 0C 00 */	addi r31, r5, 0x0C00 /* 0x80000C00@l */
/* 80340A60  38 03 0A 3C */	addi r0, r3, __OSSystemCallVectorEnd@l
/* 80340A64  38 84 0A 20 */	addi r4, r4, SystemCallVector@l
/* 80340A68  7F E3 FB 78 */	mr r3, r31
/* 80340A6C  7C A4 00 50 */	subf r5, r4, r0
/* 80340A70  4B CC 2A D1 */	bl memcpy
/* 80340A74  7F E3 FB 78 */	mr r3, r31
/* 80340A78  38 80 01 00 */	li r4, 0x100
/* 80340A7C  4B FF AB 91 */	bl DCFlushRangeNoSync
/* 80340A80  7C 00 04 AC */	sync
/* 80340A84  7F E3 FB 78 */	mr r3, r31
/* 80340A88  38 80 01 00 */	li r4, 0x100
/* 80340A8C  4B FF AC 05 */	bl ICInvalidateRange
/* 80340A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80340A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80340A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80340A9C  7C 08 03 A6 */	mtlr r0
/* 80340AA0  4E 80 00 20 */	blr 
