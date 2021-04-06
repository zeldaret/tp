lbl_802A266C:
/* 802A266C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A2670  7C 08 02 A6 */	mflr r0
/* 802A2674  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A2678  7C 66 1B 78 */	mr r6, r3
/* 802A267C  80 63 00 14 */	lwz r3, 0x14(r3)
/* 802A2680  38 03 00 01 */	addi r0, r3, 1
/* 802A2684  90 06 00 14 */	stw r0, 0x14(r6)
/* 802A2688  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802A268C  40 82 00 1C */	bne lbl_802A26A8
/* 802A2690  3C 60 80 3A */	lis r3, JAISound__stringBase0@ha /* 0x8039B910@ha */
/* 802A2694  38 63 B9 10 */	addi r3, r3, JAISound__stringBase0@l /* 0x8039B910@l */
/* 802A2698  80 86 00 14 */	lwz r4, 0x14(r6)
/* 802A269C  80 A6 00 18 */	lwz r5, 0x18(r6)
/* 802A26A0  4C C6 31 82 */	crclr 6
/* 802A26A4  4B FE E8 C1 */	bl JASReport__FPCce
lbl_802A26A8:
/* 802A26A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A26AC  7C 08 03 A6 */	mtlr r0
/* 802A26B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802A26B4  4E 80 00 20 */	blr 
