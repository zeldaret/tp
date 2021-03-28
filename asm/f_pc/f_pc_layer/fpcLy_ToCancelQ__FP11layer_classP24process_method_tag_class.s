lbl_800215A8:
/* 800215A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800215AC  7C 08 02 A6 */	mflr r0
/* 800215B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800215B4  38 63 00 1C */	addi r3, r3, 0x1c
/* 800215B8  48 00 22 01 */	bl fpcMtdTg_ToMethodQ__FP15node_list_classP24process_method_tag_class
/* 800215BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800215C0  7C 08 03 A6 */	mtlr r0
/* 800215C4  38 21 00 10 */	addi r1, r1, 0x10
/* 800215C8  4E 80 00 20 */	blr 
