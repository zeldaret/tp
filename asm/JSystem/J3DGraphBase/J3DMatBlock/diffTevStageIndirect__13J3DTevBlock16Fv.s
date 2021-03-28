lbl_8031DD28:
/* 8031DD28  88 03 00 58 */	lbz r0, 0x58(r3)
/* 8031DD2C  39 20 00 00 */	li r9, 0
/* 8031DD30  38 80 00 00 */	li r4, 0
/* 8031DD34  7C 09 03 A6 */	mtctr r0
/* 8031DD38  28 00 00 00 */	cmplwi r0, 0
/* 8031DD3C  4C 81 00 20 */	blelr 
lbl_8031DD40:
/* 8031DD40  38 04 01 30 */	addi r0, r4, 0x130
/* 8031DD44  7C A3 00 2E */	lwzx r5, r3, r0
/* 8031DD48  38 09 00 10 */	addi r0, r9, 0x10
/* 8031DD4C  54 00 C0 0E */	slwi r0, r0, 0x18
/* 8031DD50  7C A8 03 78 */	or r8, r5, r0
/* 8031DD54  38 E0 00 61 */	li r7, 0x61
/* 8031DD58  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DD5C  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DD60  38 05 00 01 */	addi r0, r5, 1
/* 8031DD64  90 06 00 08 */	stw r0, 8(r6)
/* 8031DD68  98 E5 00 00 */	stb r7, 0(r5)
/* 8031DD6C  55 07 46 3E */	srwi r7, r8, 0x18
/* 8031DD70  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DD74  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DD78  38 05 00 01 */	addi r0, r5, 1
/* 8031DD7C  90 06 00 08 */	stw r0, 8(r6)
/* 8031DD80  98 E5 00 00 */	stb r7, 0(r5)
/* 8031DD84  55 07 86 3E */	rlwinm r7, r8, 0x10, 0x18, 0x1f
/* 8031DD88  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DD8C  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DD90  38 05 00 01 */	addi r0, r5, 1
/* 8031DD94  90 06 00 08 */	stw r0, 8(r6)
/* 8031DD98  98 E5 00 00 */	stb r7, 0(r5)
/* 8031DD9C  55 07 C6 3E */	rlwinm r7, r8, 0x18, 0x18, 0x1f
/* 8031DDA0  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DDA4  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DDA8  38 05 00 01 */	addi r0, r5, 1
/* 8031DDAC  90 06 00 08 */	stw r0, 8(r6)
/* 8031DDB0  98 E5 00 00 */	stb r7, 0(r5)
/* 8031DDB4  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DDB8  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DDBC  38 05 00 01 */	addi r0, r5, 1
/* 8031DDC0  90 06 00 08 */	stw r0, 8(r6)
/* 8031DDC4  99 05 00 00 */	stb r8, 0(r5)
/* 8031DDC8  39 29 00 01 */	addi r9, r9, 1
/* 8031DDCC  38 84 00 04 */	addi r4, r4, 4
/* 8031DDD0  42 00 FF 70 */	bdnz lbl_8031DD40
/* 8031DDD4  4E 80 00 20 */	blr 
