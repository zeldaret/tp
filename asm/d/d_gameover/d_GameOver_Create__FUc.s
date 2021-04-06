lbl_8019BFC4:
/* 8019BFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8019BFC8  7C 08 02 A6 */	mflr r0
/* 8019BFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8019BFD0  3C 80 80 43 */	lis r4, g_meter2_info@ha /* 0x80430188@ha */
/* 8019BFD4  38 84 01 88 */	addi r4, r4, g_meter2_info@l /* 0x80430188@l */
/* 8019BFD8  98 64 00 C2 */	stb r3, 0xc2(r4)
/* 8019BFDC  38 60 03 17 */	li r3, 0x317
/* 8019BFE0  38 80 00 00 */	li r4, 0
/* 8019BFE4  38 A0 00 00 */	li r5, 0
/* 8019BFE8  38 C0 00 00 */	li r6, 0
/* 8019BFEC  38 E0 00 00 */	li r7, 0
/* 8019BFF0  39 00 00 00 */	li r8, 0
/* 8019BFF4  4B E8 3C 59 */	bl fopMsgM_create__FsP10fopAc_ac_cP4cXyzPUlPUlPFPv_i
/* 8019BFF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8019BFFC  7C 08 03 A6 */	mtlr r0
/* 8019C000  38 21 00 10 */	addi r1, r1, 0x10
/* 8019C004  4E 80 00 20 */	blr 
