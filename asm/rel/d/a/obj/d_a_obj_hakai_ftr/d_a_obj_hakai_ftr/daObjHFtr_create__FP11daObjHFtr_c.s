lbl_80C17FB4:
/* 80C17FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C17FB8  7C 08 02 A6 */	mflr r0
/* 80C17FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C17FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C17FC4  7C 7F 1B 78 */	mr r31, r3
/* 80C17FC8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C17FCC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C17FD0  40 82 00 1C */	bne lbl_80C17FEC
/* 80C17FD4  28 1F 00 00 */	cmplwi r31, 0
/* 80C17FD8  41 82 00 08 */	beq lbl_80C17FE0
/* 80C17FDC  4B FF F4 DD */	bl __ct__11daObjHFtr_cFv
lbl_80C17FE0:
/* 80C17FE0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C17FE4  60 00 00 08 */	ori r0, r0, 8
/* 80C17FE8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C17FEC:
/* 80C17FEC  7F E3 FB 78 */	mr r3, r31
/* 80C17FF0  4B FF F9 C1 */	bl create__11daObjHFtr_cFv
/* 80C17FF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C17FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C17FFC  7C 08 03 A6 */	mtlr r0
/* 80C18000  38 21 00 10 */	addi r1, r1, 0x10
/* 80C18004  4E 80 00 20 */	blr 
