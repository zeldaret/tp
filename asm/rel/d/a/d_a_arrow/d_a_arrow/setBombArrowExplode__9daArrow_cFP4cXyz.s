lbl_8049AC84:
/* 8049AC84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049AC88  7C 08 02 A6 */	mflr r0
/* 8049AC8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049AC90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8049AC94  7C 7F 1B 78 */	mr r31, r3
/* 8049AC98  7C 85 23 78 */	mr r5, r4
/* 8049AC9C  38 00 00 00 */	li r0, 0
/* 8049ACA0  90 01 00 08 */	stw r0, 8(r1)
/* 8049ACA4  38 60 02 21 */	li r3, 0x221
/* 8049ACA8  38 80 00 00 */	li r4, 0
/* 8049ACAC  38 C0 FF FF */	li r6, -1
/* 8049ACB0  38 E0 00 00 */	li r7, 0
/* 8049ACB4  39 00 00 00 */	li r8, 0
/* 8049ACB8  39 20 FF FF */	li r9, -1
/* 8049ACBC  39 40 00 00 */	li r10, 0
/* 8049ACC0  4B B7 F1 44 */	b fopAcM_fastCreate__FsUlPC4cXyziPC5csXyzPC4cXyzScPFPv_iPv
/* 8049ACC4  38 00 00 01 */	li r0, 1
/* 8049ACC8  98 1F 09 3F */	stb r0, 0x93f(r31)
/* 8049ACCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8049ACD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049ACD4  7C 08 03 A6 */	mtlr r0
/* 8049ACD8  38 21 00 20 */	addi r1, r1, 0x20
/* 8049ACDC  4E 80 00 20 */	blr 
