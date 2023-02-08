lbl_80D612D8:
/* 80D612D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D612DC  7C 08 02 A6 */	mflr r0
/* 80D612E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D612E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D612E8  7C 7F 1B 78 */	mr r31, r3
/* 80D612EC  4B 2B 78 79 */	bl __ct__10fopAc_ac_cFv
/* 80D612F0  3C 60 80 D6 */	lis r3, __vt__13daTagSmkEmt_c@ha /* 0x80D6165C@ha */
/* 80D612F4  38 03 16 5C */	addi r0, r3, __vt__13daTagSmkEmt_c@l /* 0x80D6165C@l */
/* 80D612F8  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80D612FC  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80D61300  38 80 00 00 */	li r4, 0
/* 80D61304  38 A0 00 0C */	li r5, 0xc
/* 80D61308  4B 2A 21 51 */	bl memset
/* 80D6130C  7F E3 FB 78 */	mr r3, r31
/* 80D61310  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D61314  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D61318  7C 08 03 A6 */	mtlr r0
/* 80D6131C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D61320  4E 80 00 20 */	blr 
