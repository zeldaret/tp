lbl_800AA6B4:
/* 800AA6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AA6B8  7C 08 02 A6 */	mflr r0
/* 800AA6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AA6C0  7C 67 1B 78 */	mr r7, r3
/* 800AA6C4  80 63 22 04 */	lwz r3, 0x2204(r3)
/* 800AA6C8  2C 03 00 0A */	cmpwi r3, 0xa
/* 800AA6CC  40 80 00 10 */	bge lbl_800AA6DC
/* 800AA6D0  38 00 00 00 */	li r0, 0
/* 800AA6D4  90 07 22 04 */	stw r0, 0x2204(r7)
/* 800AA6D8  48 00 00 2C */	b lbl_800AA704
lbl_800AA6DC:
/* 800AA6DC  38 03 FF F6 */	addi r0, r3, -10
/* 800AA6E0  90 07 22 04 */	stw r0, 0x2204(r7)
/* 800AA6E4  38 67 21 F0 */	addi r3, r7, 0x21f0
/* 800AA6E8  38 87 04 D0 */	addi r4, r7, 0x4d0
/* 800AA6EC  38 A7 04 BC */	addi r5, r7, 0x4bc
/* 800AA6F0  A8 C7 2F E6 */	lha r6, 0x2fe6(r7)
/* 800AA6F4  A8 07 04 E6 */	lha r0, 0x4e6(r7)
/* 800AA6F8  7C 06 00 50 */	subf r0, r6, r0
/* 800AA6FC  7C 06 07 34 */	extsh r6, r0
/* 800AA700  48 07 B4 0D */	bl traceBlur__14daAlink_blur_cFPC4cXyzPC4cXyzs
lbl_800AA704:
/* 800AA704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AA708  7C 08 03 A6 */	mtlr r0
/* 800AA70C  38 21 00 10 */	addi r1, r1, 0x10
/* 800AA710  4E 80 00 20 */	blr 
