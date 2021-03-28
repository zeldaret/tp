lbl_805196BC:
/* 805196BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805196C0  7C 08 02 A6 */	mflr r0
/* 805196C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805196C8  38 60 00 08 */	li r3, 8
/* 805196CC  4B B1 60 D0 */	b dComIfG_TimerDeleteRequest__Fi
/* 805196D0  38 60 00 01 */	li r3, 1
/* 805196D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805196D8  7C 08 03 A6 */	mtlr r0
/* 805196DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805196E0  4E 80 00 20 */	blr 
