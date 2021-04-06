lbl_80020F48:
/* 80020F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80020F4C  7C 08 02 A6 */	mflr r0
/* 80020F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80020F54  7C 64 1B 78 */	mr r4, r3
/* 80020F58  38 00 00 01 */	li r0, 1
/* 80020F5C  B0 03 00 18 */	sth r0, 0x18(r3)
/* 80020F60  3C 60 80 3A */	lis r3, g_fpcDtTg_Queue@ha /* 0x803A39A0@ha */
/* 80020F64  38 63 39 A0 */	addi r3, r3, g_fpcDtTg_Queue@l /* 0x803A39A0@l */
/* 80020F68  48 24 5A 7D */	bl cTg_Addition__FP15node_list_classP16create_tag_class
/* 80020F6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80020F70  7C 08 03 A6 */	mtlr r0
/* 80020F74  38 21 00 10 */	addi r1, r1, 0x10
/* 80020F78  4E 80 00 20 */	blr 
