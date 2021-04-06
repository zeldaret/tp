lbl_80019834:
/* 80019834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80019838  7C 08 02 A6 */	mflr r0
/* 8001983C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80019840  7C 64 1B 78 */	mr r4, r3
/* 80019844  3C 60 80 3A */	lis r3, g_fopAcTg_Queue@ha /* 0x803A35E0@ha */
/* 80019848  38 63 35 E0 */	addi r3, r3, g_fopAcTg_Queue@l /* 0x803A35E0@l */
/* 8001984C  48 24 D1 99 */	bl cTg_Addition__FP15node_list_classP16create_tag_class
/* 80019850  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019854  7C 08 03 A6 */	mtlr r0
/* 80019858  38 21 00 10 */	addi r1, r1, 0x10
/* 8001985C  4E 80 00 20 */	blr 
