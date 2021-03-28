lbl_8002069C:
/* 8002069C  88 0D 87 90 */	lbz r0, data_80450D10(r13)
/* 800206A0  7C 00 07 75 */	extsb. r0, r0
/* 800206A4  40 82 00 10 */	bne lbl_800206B4
/* 800206A8  38 00 00 01 */	li r0, 1
/* 800206AC  90 0D 87 8C */	stw r0, process_id(r13)
/* 800206B0  98 0D 87 90 */	stb r0, data_80450D10(r13)
lbl_800206B4:
/* 800206B4  80 6D 87 8C */	lwz r3, process_id(r13)
/* 800206B8  38 03 00 01 */	addi r0, r3, 1
/* 800206BC  90 0D 87 8C */	stw r0, process_id(r13)
/* 800206C0  4E 80 00 20 */	blr 
