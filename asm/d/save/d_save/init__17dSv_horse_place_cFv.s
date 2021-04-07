lbl_80032C0C:
/* 80032C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032C10  7C 08 02 A6 */	mflr r0
/* 80032C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80032C1C  7C 7F 1B 78 */	mr r31, r3
/* 80032C20  38 7F 00 0E */	addi r3, r31, 0xe
/* 80032C24  3C 80 80 38 */	lis r4, d_save_d_save__stringBase0@ha /* 0x80379234@ha */
/* 80032C28  38 84 92 34 */	addi r4, r4, d_save_d_save__stringBase0@l /* 0x80379234@l */
/* 80032C2C  48 33 5F 01 */	bl strcpy
/* 80032C30  C0 02 83 5C */	lfs f0, lit_3813(r2)
/* 80032C34  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80032C38  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80032C3C  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80032C40  38 00 00 00 */	li r0, 0
/* 80032C44  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 80032C48  98 1F 00 16 */	stb r0, 0x16(r31)
/* 80032C4C  98 1F 00 17 */	stb r0, 0x17(r31)
/* 80032C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80032C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032C58  7C 08 03 A6 */	mtlr r0
/* 80032C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80032C60  4E 80 00 20 */	blr 
