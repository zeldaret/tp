lbl_80D22C6C:
/* 80D22C6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D22C70  7C 08 02 A6 */	mflr r0
/* 80D22C74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D22C78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D22C7C  7C 7F 1B 78 */	mr r31, r3
/* 80D22C80  38 00 00 00 */	li r0, 0
/* 80D22C84  98 03 29 25 */	stb r0, 0x2925(r3)
/* 80D22C88  98 03 29 24 */	stb r0, 0x2924(r3)
/* 80D22C8C  3C 60 80 D2 */	lis r3, search_big_volc__FPvPv@ha
/* 80D22C90  38 63 1B 50 */	addi r3, r3, search_big_volc__FPvPv@l
/* 80D22C94  7F E4 FB 78 */	mr r4, r31
/* 80D22C98  4B 2F 6B 60 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D22C9C  28 03 00 00 */	cmplwi r3, 0
/* 80D22CA0  41 82 00 18 */	beq lbl_80D22CB8
/* 80D22CA4  41 82 00 0C */	beq lbl_80D22CB0
/* 80D22CA8  80 03 00 04 */	lwz r0, 4(r3)
/* 80D22CAC  48 00 00 08 */	b lbl_80D22CB4
lbl_80D22CB0:
/* 80D22CB0  38 00 FF FF */	li r0, -1
lbl_80D22CB4:
/* 80D22CB4  90 1F 29 20 */	stw r0, 0x2920(r31)
lbl_80D22CB8:
/* 80D22CB8  38 00 00 05 */	li r0, 5
/* 80D22CBC  98 1F 06 01 */	stb r0, 0x601(r31)
/* 80D22CC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D22CC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D22CC8  7C 08 03 A6 */	mtlr r0
/* 80D22CCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D22CD0  4E 80 00 20 */	blr 
