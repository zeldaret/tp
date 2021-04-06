lbl_80576A58:
/* 80576A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576A5C  7C 08 02 A6 */	mflr r0
/* 80576A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576A64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80576A68  7C 7F 1B 78 */	mr r31, r3
/* 80576A6C  38 7F 12 E8 */	addi r3, r31, 0x12e8
/* 80576A70  38 80 00 FF */	li r4, 0xff
/* 80576A74  38 A0 00 FF */	li r5, 0xff
/* 80576A78  7F E6 FB 78 */	mr r6, r31
/* 80576A7C  4B B0 CD E5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80576A80  38 7F 13 24 */	addi r3, r31, 0x1324
/* 80576A84  3C 80 80 58 */	lis r4, ccCylSrc@ha /* 0x80578A88@ha */
/* 80576A88  38 84 8A 88 */	addi r4, r4, ccCylSrc@l /* 0x80578A88@l */
/* 80576A8C  4B B0 DE 29 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80576A90  38 1F 12 E8 */	addi r0, r31, 0x12e8
/* 80576A94  90 1F 13 68 */	stw r0, 0x1368(r31)
/* 80576A98  38 7F 14 48 */	addi r3, r31, 0x1448
/* 80576A9C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80576AA0  4B CF 87 3D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80576AA4  80 1F 13 C0 */	lwz r0, 0x13c0(r31)
/* 80576AA8  60 00 00 01 */	ori r0, r0, 1
/* 80576AAC  90 1F 13 C0 */	stw r0, 0x13c0(r31)
/* 80576AB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80576AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576AB8  7C 08 03 A6 */	mtlr r0
/* 80576ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80576AC0  4E 80 00 20 */	blr 
