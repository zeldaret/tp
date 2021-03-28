lbl_800D74A4:
/* 800D74A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D74A8  7C 08 02 A6 */	mflr r0
/* 800D74AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D74B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D74B4  7C 7F 1B 78 */	mr r31, r3
/* 800D74B8  80 03 05 90 */	lwz r0, 0x590(r3)
/* 800D74BC  60 00 00 40 */	ori r0, r0, 0x40
/* 800D74C0  90 03 05 90 */	stw r0, 0x590(r3)
/* 800D74C4  38 A0 00 00 */	li r5, 0
/* 800D74C8  38 C0 00 01 */	li r6, 1
/* 800D74CC  38 E0 00 00 */	li r7, 0
/* 800D74D0  4B FF FD ED */	bl setDamagePoint__9daAlink_cFiiii
/* 800D74D4  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 800D74D8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 800D74DC  90 1F 05 90 */	stw r0, 0x590(r31)
/* 800D74E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D74E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D74E8  7C 08 03 A6 */	mtlr r0
/* 800D74EC  38 21 00 10 */	addi r1, r1, 0x10
/* 800D74F0  4E 80 00 20 */	blr 
