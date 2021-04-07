lbl_8001D5A4:
/* 8001D5A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D5A8  7C 08 02 A6 */	mflr r0
/* 8001D5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D5B0  7C 64 1B 78 */	mr r4, r3
/* 8001D5B4  A8 63 00 0E */	lha r3, 0xe(r3)
/* 8001D5B8  88 04 04 99 */	lbz r0, 0x499(r4)
/* 8001D5BC  7C 04 07 74 */	extsb r4, r0
/* 8001D5C0  48 00 79 1D */	bl dStage_getName2__FsSc
/* 8001D5C4  28 03 00 00 */	cmplwi r3, 0
/* 8001D5C8  41 82 00 08 */	beq lbl_8001D5D0
/* 8001D5CC  48 00 00 10 */	b lbl_8001D5DC
lbl_8001D5D0:
/* 8001D5D0  3C 60 80 38 */	lis r3, f_op_f_op_actor_mng__stringBase0@ha /* 0x803788C8@ha */
/* 8001D5D4  38 63 88 C8 */	addi r3, r3, f_op_f_op_actor_mng__stringBase0@l /* 0x803788C8@l */
/* 8001D5D8  38 63 01 7A */	addi r3, r3, 0x17a
lbl_8001D5DC:
/* 8001D5DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D5E0  7C 08 03 A6 */	mtlr r0
/* 8001D5E4  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D5E8  4E 80 00 20 */	blr 
