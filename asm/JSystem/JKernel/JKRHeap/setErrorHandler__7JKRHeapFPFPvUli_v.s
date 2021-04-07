lbl_802CEB88:
/* 802CEB88  80 0D 8D FC */	lwz r0, mErrorHandler__7JKRHeap(r13)
/* 802CEB8C  28 03 00 00 */	cmplwi r3, 0
/* 802CEB90  40 82 00 0C */	bne lbl_802CEB9C
/* 802CEB94  3C 60 80 2D */	lis r3, JKRDefaultMemoryErrorRoutine__FPvUli@ha /* 0x802CEB40@ha */
/* 802CEB98  38 63 EB 40 */	addi r3, r3, JKRDefaultMemoryErrorRoutine__FPvUli@l /* 0x802CEB40@l */
lbl_802CEB9C:
/* 802CEB9C  90 6D 8D FC */	stw r3, mErrorHandler__7JKRHeap(r13)
/* 802CEBA0  7C 03 03 78 */	mr r3, r0
/* 802CEBA4  4E 80 00 20 */	blr 
