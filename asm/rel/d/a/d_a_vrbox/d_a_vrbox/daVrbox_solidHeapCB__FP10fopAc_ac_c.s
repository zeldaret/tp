lbl_80498868:
/* 80498868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049886C  7C 08 02 A6 */	mflr r0
/* 80498870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80498874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80498878  93 C1 00 08 */	stw r30, 8(r1)
/* 8049887C  7C 7E 1B 78 */	mr r30, r3
/* 80498880  3C 60 80 4A */	lis r3, d_a_vrbox__stringBase0@ha /* 0x80498998@ha */
/* 80498884  38 63 89 98 */	addi r3, r3, d_a_vrbox__stringBase0@l /* 0x80498998@l */
/* 80498888  4B B9 6B AD */	bl dComIfG_getStageRes__FPCc
/* 8049888C  7C 7F 1B 78 */	mr r31, r3
/* 80498890  3C 80 00 08 */	lis r4, 8
/* 80498894  3C A0 11 02 */	lis r5, 0x1102 /* 0x11020202@ha */
/* 80498898  38 A5 02 02 */	addi r5, r5, 0x0202 /* 0x11020202@l */
/* 8049889C  4B B7 C3 B9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804988A0  90 7E 05 6C */	stw r3, 0x56c(r30)
/* 804988A4  38 60 00 00 */	li r3, 0
/* 804988A8  28 1F 00 00 */	cmplwi r31, 0
/* 804988AC  41 82 00 14 */	beq lbl_804988C0
/* 804988B0  80 1E 05 6C */	lwz r0, 0x56c(r30)
/* 804988B4  28 00 00 00 */	cmplwi r0, 0
/* 804988B8  41 82 00 08 */	beq lbl_804988C0
/* 804988BC  38 60 00 01 */	li r3, 1
lbl_804988C0:
/* 804988C0  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 804988C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804988C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804988CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804988D0  7C 08 03 A6 */	mtlr r0
/* 804988D4  38 21 00 10 */	addi r1, r1, 0x10
/* 804988D8  4E 80 00 20 */	blr 
