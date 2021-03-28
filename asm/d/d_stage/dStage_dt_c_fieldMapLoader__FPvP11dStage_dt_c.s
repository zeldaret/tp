lbl_80026C8C:
/* 80026C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80026C90  7C 08 02 A6 */	mflr r0
/* 80026C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80026C98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80026C9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80026CA0  7C 7E 1B 78 */	mr r30, r3
/* 80026CA4  7C 9F 23 78 */	mr r31, r4
/* 80026CA8  4B FF F6 B5 */	bl dStage_dt_c_offsetToPtr__FPv
/* 80026CAC  7F C3 F3 78 */	mr r3, r30
/* 80026CB0  7F E4 FB 78 */	mr r4, r31
/* 80026CB4  3C A0 80 3A */	lis r5, l_funcTable_5178@ha
/* 80026CB8  38 A5 68 FC */	addi r5, r5, l_funcTable_5178@l
/* 80026CBC  38 C0 00 03 */	li r6, 3
/* 80026CC0  4B FF F3 F5 */	bl dStage_dt_c_decode__FPvP11dStage_dt_cP9FuncTablei
/* 80026CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80026CC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80026CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80026CD0  7C 08 03 A6 */	mtlr r0
/* 80026CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80026CD8  4E 80 00 20 */	blr 
