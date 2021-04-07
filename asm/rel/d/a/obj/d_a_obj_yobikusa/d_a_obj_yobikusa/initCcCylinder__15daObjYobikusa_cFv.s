lbl_8059D320:
/* 8059D320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059D324  7C 08 02 A6 */	mflr r0
/* 8059D328  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059D32C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059D330  7C 7F 1B 78 */	mr r31, r3
/* 8059D334  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 8059D338  38 80 00 FF */	li r4, 0xff
/* 8059D33C  38 A0 00 FF */	li r5, 0xff
/* 8059D340  7F E6 FB 78 */	mr r6, r31
/* 8059D344  4B AE 65 1D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8059D348  38 7F 05 F0 */	addi r3, r31, 0x5f0
/* 8059D34C  3C 80 80 5A */	lis r4, ccCylSrc@ha /* 0x8059DEE0@ha */
/* 8059D350  38 84 DE E0 */	addi r4, r4, ccCylSrc@l /* 0x8059DEE0@l */
/* 8059D354  4B AE 75 61 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8059D358  38 1F 05 B4 */	addi r0, r31, 0x5b4
/* 8059D35C  90 1F 06 34 */	stw r0, 0x634(r31)
/* 8059D360  38 7F 07 14 */	addi r3, r31, 0x714
/* 8059D364  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8059D368  4B CD 1E 75 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8059D36C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059D370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059D374  7C 08 03 A6 */	mtlr r0
/* 8059D378  38 21 00 10 */	addi r1, r1, 0x10
/* 8059D37C  4E 80 00 20 */	blr 
