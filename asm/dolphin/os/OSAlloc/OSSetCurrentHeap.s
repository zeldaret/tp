lbl_8033B1A0:
/* 8033B1A0  80 0D 84 10 */	lwz r0, __OSCurrHeap(r13)
/* 8033B1A4  90 6D 84 10 */	stw r3, __OSCurrHeap(r13)
/* 8033B1A8  7C 03 03 78 */	mr r3, r0
/* 8033B1AC  4E 80 00 20 */	blr 
