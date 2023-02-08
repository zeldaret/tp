lbl_800F6140:
/* 800F6140  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F6144  7C 08 02 A6 */	mflr r0
/* 800F6148  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F614C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6150  7C 7F 1B 78 */	mr r31, r3
/* 800F6154  38 80 00 93 */	li r4, 0x93
/* 800F6158  4B FC BE 15 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F615C  7F E3 FB 78 */	mr r3, r31
/* 800F6160  38 80 00 E4 */	li r4, 0xe4
/* 800F6164  4B FB 6E 1D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F6168  7F E3 FB 78 */	mr r3, r31
/* 800F616C  4B FF E4 31 */	bl setSyncCanoePos__9daAlink_cFv
/* 800F6170  38 60 00 01 */	li r3, 1
/* 800F6174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F6178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F617C  7C 08 03 A6 */	mtlr r0
/* 800F6180  38 21 00 10 */	addi r1, r1, 0x10
/* 800F6184  4E 80 00 20 */	blr 
