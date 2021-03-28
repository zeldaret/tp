lbl_8033F64C:
/* 8033F64C  80 0D 91 08 */	lwz r0, SaveStart(r13)
/* 8033F650  90 03 00 00 */	stw r0, 0(r3)
/* 8033F654  80 0D 91 0C */	lwz r0, SaveEnd(r13)
/* 8033F658  90 04 00 00 */	stw r0, 0(r4)
/* 8033F65C  4E 80 00 20 */	blr 
