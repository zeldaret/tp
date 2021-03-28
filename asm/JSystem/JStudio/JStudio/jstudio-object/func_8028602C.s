lbl_8028602C:
/* 8028602C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286030  7C 08 02 A6 */	mflr r0
/* 80286034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286038  28 06 00 12 */	cmplwi r6, 0x12
/* 8028603C  41 81 00 80 */	bgt lbl_802860BC
/* 80286040  3D 20 80 3C */	lis r9, lit_882@ha
/* 80286044  39 29 4B 9C */	addi r9, r9, lit_882@l
/* 80286048  54 C0 10 3A */	slwi r0, r6, 2
/* 8028604C  7C 09 00 2E */	lwzx r0, r9, r0
/* 80286050  7C 09 03 A6 */	mtctr r0
/* 80286054  4E 80 04 20 */	bctr 
/* 80286058  3C C0 80 28 */	lis r6, adaptor_setVariableValue_VOID___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@ha
/* 8028605C  38 06 65 6C */	addi r0, r6, adaptor_setVariableValue_VOID___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@l
/* 80286060  7C 0C 03 78 */	mr r12, r0
/* 80286064  48 00 00 48 */	b lbl_802860AC
/* 80286068  3C C0 80 28 */	lis r6, adaptor_setVariableValue_IMMEDIATE___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@ha
/* 8028606C  38 06 65 84 */	addi r0, r6, adaptor_setVariableValue_IMMEDIATE___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@l
/* 80286070  7C 0C 03 78 */	mr r12, r0
/* 80286074  48 00 00 38 */	b lbl_802860AC
/* 80286078  3C C0 80 28 */	lis r6, adaptor_setVariableValue_TIME___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@ha
/* 8028607C  38 06 65 B0 */	addi r0, r6, adaptor_setVariableValue_TIME___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@l
/* 80286080  7C 0C 03 78 */	mr r12, r0
/* 80286084  48 00 00 28 */	b lbl_802860AC
/* 80286088  3C C0 80 28 */	lis r6, adaptor_setVariableValue_FVR_NAME___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@ha
/* 8028608C  38 06 65 DC */	addi r0, r6, adaptor_setVariableValue_FVR_NAME___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@l
/* 80286090  7C 0C 03 78 */	mr r12, r0
/* 80286094  48 00 00 18 */	b lbl_802860AC
/* 80286098  3C C0 80 28 */	lis r6, adaptor_setVariableValue_FVR_INDEX___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@ha
/* 8028609C  38 06 66 48 */	addi r0, r6, adaptor_setVariableValue_FVR_INDEX___Q27JStudio8TAdaptorFPQ27JStudio8TAdaptorPQ27JStudio8TControlUlPCvUl@l
/* 802860A0  7C 0C 03 78 */	mr r12, r0
/* 802860A4  48 00 00 08 */	b lbl_802860AC
/* 802860A8  48 00 00 14 */	b lbl_802860BC
lbl_802860AC:
/* 802860AC  7C E6 3B 78 */	mr r6, r7
/* 802860B0  7D 07 43 78 */	mr r7, r8
/* 802860B4  7D 89 03 A6 */	mtctr r12
/* 802860B8  4E 80 04 21 */	bctrl 
lbl_802860BC:
/* 802860BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802860C0  7C 08 03 A6 */	mtlr r0
/* 802860C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802860C8  4E 80 00 20 */	blr 
