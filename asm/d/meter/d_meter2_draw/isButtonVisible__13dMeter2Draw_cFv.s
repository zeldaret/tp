lbl_8021B0C8:
/* 8021B0C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021B0CC  7C 08 02 A6 */	mflr r0
/* 8021B0D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021B0D4  80 63 02 F8 */	lwz r3, 0x2f8(r3)
/* 8021B0D8  48 03 A7 51 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 8021B0DC  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B0E0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8021B0E4  7C 00 00 26 */	mfcr r0
/* 8021B0E8  54 00 1F FE */	rlwinm r0, r0, 3, 0x1f, 0x1f
/* 8021B0EC  68 00 00 01 */	xori r0, r0, 1
/* 8021B0F0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8021B0F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021B0F8  7C 08 03 A6 */	mtlr r0
/* 8021B0FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8021B100  4E 80 00 20 */	blr 
