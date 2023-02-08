lbl_802B327C:
/* 802B327C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B3280  7C 08 02 A6 */	mflr r0
/* 802B3284  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B3288  80 83 00 10 */	lwz r4, 0x10(r3)
/* 802B328C  3C A4 FF 00 */	addis r5, r4, 0xff00
/* 802B3290  38 A5 FF AE */	addi r5, r5, -82
/* 802B3294  28 05 00 2E */	cmplwi r5, 0x2e
/* 802B3298  41 81 00 2C */	bgt lbl_802B32C4
/* 802B329C  3C 80 80 3D */	lis r4, lit_5218@ha /* 0x803CA3F8@ha */
/* 802B32A0  38 84 A3 F8 */	addi r4, r4, lit_5218@l /* 0x803CA3F8@l */
/* 802B32A4  54 A5 10 3A */	slwi r5, r5, 2
/* 802B32A8  7C 04 28 2E */	lwzx r0, r4, r5
/* 802B32AC  7C 09 03 A6 */	mtctr r0
/* 802B32B0  4E 80 04 20 */	bctr 
/* 802B32B4  38 00 FF FF */	li r0, -1
/* 802B32B8  90 03 00 10 */	stw r0, 0x10(r3)
/* 802B32BC  38 00 00 00 */	li r0, 0
/* 802B32C0  98 03 00 BA */	stb r0, 0xba(r3)
lbl_802B32C4:
/* 802B32C4  80 63 00 08 */	lwz r3, 8(r3)
/* 802B32C8  28 03 00 00 */	cmplwi r3, 0
/* 802B32CC  41 82 00 3C */	beq lbl_802B3308
/* 802B32D0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 802B32D4  90 81 00 08 */	stw r4, 8(r1)
/* 802B32D8  3C A4 FF 00 */	addis r5, r4, 0xff00
/* 802B32DC  38 A5 FF AE */	addi r5, r5, -82
/* 802B32E0  28 05 00 2E */	cmplwi r5, 0x2e
/* 802B32E4  41 81 00 24 */	bgt lbl_802B3308
/* 802B32E8  3C 80 80 3D */	lis r4, lit_5219@ha /* 0x803CA33C@ha */
/* 802B32EC  38 84 A3 3C */	addi r4, r4, lit_5219@l /* 0x803CA33C@l */
/* 802B32F0  54 A5 10 3A */	slwi r5, r5, 2
/* 802B32F4  7C 04 28 2E */	lwzx r0, r4, r5
/* 802B32F8  7C 09 03 A6 */	mtctr r0
/* 802B32FC  4E 80 04 20 */	bctr 
/* 802B3300  38 80 00 1E */	li r4, 0x1e
/* 802B3304  4B FE F1 D9 */	bl stop__8JAISoundFUl
lbl_802B3308:
/* 802B3308  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B330C  7C 08 03 A6 */	mtlr r0
/* 802B3310  38 21 00 10 */	addi r1, r1, 0x10
/* 802B3314  4E 80 00 20 */	blr 
