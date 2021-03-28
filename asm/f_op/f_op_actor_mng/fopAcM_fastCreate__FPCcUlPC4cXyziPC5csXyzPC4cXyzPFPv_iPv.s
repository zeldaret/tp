lbl_80019E6C:
/* 80019E6C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80019E70  7C 08 02 A6 */	mflr r0
/* 80019E74  90 01 00 34 */	stw r0, 0x34(r1)
/* 80019E78  39 61 00 30 */	addi r11, r1, 0x30
/* 80019E7C  48 34 83 51 */	bl _savegpr_25
/* 80019E80  7C 99 23 78 */	mr r25, r4
/* 80019E84  7C BA 2B 78 */	mr r26, r5
/* 80019E88  7C DB 33 78 */	mr r27, r6
/* 80019E8C  7C FC 3B 78 */	mr r28, r7
/* 80019E90  7D 1D 43 78 */	mr r29, r8
/* 80019E94  7D 3E 4B 78 */	mr r30, r9
/* 80019E98  7D 5F 53 78 */	mr r31, r10
/* 80019E9C  48 00 AF 25 */	bl dStage_searchName__FPCc
/* 80019EA0  7C 69 1B 79 */	or. r9, r3, r3
/* 80019EA4  40 82 00 0C */	bne lbl_80019EB0
/* 80019EA8  38 60 00 00 */	li r3, 0
/* 80019EAC  48 00 00 2C */	b lbl_80019ED8
lbl_80019EB0:
/* 80019EB0  93 E1 00 08 */	stw r31, 8(r1)
/* 80019EB4  A8 69 00 08 */	lha r3, 8(r9)
/* 80019EB8  7F 24 CB 78 */	mr r4, r25
/* 80019EBC  7F 45 D3 78 */	mr r5, r26
/* 80019EC0  7F 66 DB 78 */	mr r6, r27
/* 80019EC4  7F 87 E3 78 */	mr r7, r28
/* 80019EC8  7F A8 EB 78 */	mr r8, r29
/* 80019ECC  89 29 00 0A */	lbz r9, 0xa(r9)
/* 80019ED0  7F CA F3 78 */	mr r10, r30
/* 80019ED4  4B FF FF 31 */	bl fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
lbl_80019ED8:
/* 80019ED8  39 61 00 30 */	addi r11, r1, 0x30
/* 80019EDC  48 34 83 3D */	bl _restgpr_25
/* 80019EE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80019EE4  7C 08 03 A6 */	mtlr r0
/* 80019EE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80019EEC  4E 80 00 20 */	blr 
