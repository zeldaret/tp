lbl_80D5A684:
/* 80D5A684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5A688  7C 08 02 A6 */	mflr r0
/* 80D5A68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5A690  4B FF F7 51 */	bl execute__15daTagKagoFall_cFv
/* 80D5A694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5A698  7C 08 03 A6 */	mtlr r0
/* 80D5A69C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5A6A0  4E 80 00 20 */	blr 
