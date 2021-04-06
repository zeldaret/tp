lbl_80579388:
/* 80579388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057938C  7C 08 02 A6 */	mflr r0
/* 80579390  90 01 00 14 */	stw r0, 0x14(r1)
/* 80579394  3C 80 80 58 */	lis r4, l_arcName@ha /* 0x80579544@ha */
/* 80579398  38 84 95 44 */	addi r4, r4, l_arcName@l /* 0x80579544@l */
/* 8057939C  80 84 00 00 */	lwz r4, 0(r4)
/* 805793A0  38 63 05 A0 */	addi r3, r3, 0x5a0
/* 805793A4  4B AB 3C 65 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805793A8  38 60 00 01 */	li r3, 1
/* 805793AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805793B0  7C 08 03 A6 */	mtlr r0
/* 805793B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805793B8  4E 80 00 20 */	blr 
