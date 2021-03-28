lbl_8036D924:
/* 8036D924  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8036D928  7C 08 02 A6 */	mflr r0
/* 8036D92C  38 80 00 02 */	li r4, 2
/* 8036D930  90 01 00 24 */	stw r0, 0x24(r1)
/* 8036D934  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036D938  7C 7F 1B 78 */	mr r31, r3
/* 8036D93C  38 61 00 08 */	addi r3, r1, 8
/* 8036D940  4B FF F2 FD */	bl TRKConstructEvent
/* 8036D944  3C 60 80 45 */	lis r3, gTRKFramingState@ha
/* 8036D948  38 00 FF FF */	li r0, -1
/* 8036D94C  38 83 F2 70 */	addi r4, r3, gTRKFramingState@l
/* 8036D950  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8036D954  38 61 00 08 */	addi r3, r1, 8
/* 8036D958  90 04 00 00 */	stw r0, 0(r4)
/* 8036D95C  4B FF F2 F9 */	bl TRKPostEvent
/* 8036D960  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8036D964  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8036D968  7C 08 03 A6 */	mtlr r0
/* 8036D96C  38 21 00 20 */	addi r1, r1, 0x20
/* 8036D970  4E 80 00 20 */	blr 
