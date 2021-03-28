lbl_8001A138:
/* 8001A138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001A13C  7C 08 02 A6 */	mflr r0
/* 8001A140  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001A144  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001A148  7C 7F 1B 78 */	mr r31, r3
/* 8001A14C  3C 80 80 38 */	lis r4, f_op_f_op_actor_mng__stringBase0@ha
/* 8001A150  38 84 88 C8 */	addi r4, r4, f_op_f_op_actor_mng__stringBase0@l
/* 8001A154  38 84 00 42 */	addi r4, r4, 0x42
/* 8001A158  4B FF FB 21 */	bl fopAcM_Log__FPC10fopAc_ac_cPCc
/* 8001A15C  80 7F 00 F0 */	lwz r3, 0xf0(r31)
/* 8001A160  28 03 00 00 */	cmplwi r3, 0
/* 8001A164  41 82 00 10 */	beq lbl_8001A174
/* 8001A168  4B FF 50 25 */	bl mDoExt_destroySolidHeap__FP12JKRSolidHeap
/* 8001A16C  38 00 00 00 */	li r0, 0
/* 8001A170  90 1F 00 F0 */	stw r0, 0xf0(r31)
lbl_8001A174:
/* 8001A174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001A178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A17C  7C 08 03 A6 */	mtlr r0
/* 8001A180  38 21 00 10 */	addi r1, r1, 0x10
/* 8001A184  4E 80 00 20 */	blr 
