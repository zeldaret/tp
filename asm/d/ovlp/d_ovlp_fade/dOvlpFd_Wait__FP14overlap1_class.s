lbl_802522C8:
/* 802522C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802522CC  7C 08 02 A6 */	mflr r0
/* 802522D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802522D4  4B DC C2 31 */	bl fopOvlpM_IsOutReq__FP18overlap_task_class
/* 802522D8  2C 03 00 00 */	cmpwi r3, 0
/* 802522DC  41 82 00 10 */	beq lbl_802522EC
/* 802522E0  3C 60 80 25 */	lis r3, dOvlpFd_FadeOut__FP14overlap1_class@ha /* 0x802521F4@ha */
/* 802522E4  38 03 21 F4 */	addi r0, r3, dOvlpFd_FadeOut__FP14overlap1_class@l /* 0x802521F4@l */
/* 802522E8  90 0D 8B 60 */	stw r0, dOvlpFd_execute_f(r13)
lbl_802522EC:
/* 802522EC  38 60 00 01 */	li r3, 1
/* 802522F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802522F4  7C 08 03 A6 */	mtlr r0
/* 802522F8  38 21 00 10 */	addi r1, r1, 0x10
/* 802522FC  4E 80 00 20 */	blr 
