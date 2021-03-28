lbl_80019D98:
/* 80019D98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80019D9C  7C 08 02 A6 */	mflr r0
/* 80019DA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80019DA4  39 61 00 20 */	addi r11, r1, 0x20
/* 80019DA8  48 34 84 35 */	bl _savegpr_29
/* 80019DAC  7C 9D 23 78 */	mr r29, r4
/* 80019DB0  7C BE 2B 78 */	mr r30, r5
/* 80019DB4  7C DF 33 78 */	mr r31, r6
/* 80019DB8  7C EC 3B 78 */	mr r12, r7
/* 80019DBC  7D 0B 43 78 */	mr r11, r8
/* 80019DC0  7D 2A 4B 78 */	mr r10, r9
/* 80019DC4  38 00 00 00 */	li r0, 0
/* 80019DC8  90 01 00 08 */	stw r0, 8(r1)
/* 80019DCC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 80019DD0  38 84 FF FF */	addi r4, r4, 0xFFFF /* 0x0000FFFF@l */
/* 80019DD4  7F A5 EB 78 */	mr r5, r29
/* 80019DD8  7F C6 F3 78 */	mr r6, r30
/* 80019DDC  7F E7 FB 78 */	mr r7, r31
/* 80019DE0  7D 88 63 78 */	mr r8, r12
/* 80019DE4  7D 69 5B 78 */	mr r9, r11
/* 80019DE8  4B FF FF 31 */	bl fopAcM_create__FsUsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80019DEC  39 61 00 20 */	addi r11, r1, 0x20
/* 80019DF0  48 34 84 39 */	bl _restgpr_29
/* 80019DF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80019DF8  7C 08 03 A6 */	mtlr r0
/* 80019DFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80019E00  4E 80 00 20 */	blr 
