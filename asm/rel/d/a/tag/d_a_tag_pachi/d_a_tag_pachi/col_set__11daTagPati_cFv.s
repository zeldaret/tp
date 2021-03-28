lbl_80D5D7C8:
/* 80D5D7C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D7CC  7C 08 02 A6 */	mflr r0
/* 80D5D7D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D7D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5D7D8  7C 7F 1B 78 */	mr r31, r3
/* 80D5D7DC  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80D5D7E0  3C 80 80 D6 */	lis r4, lit_3802@ha
/* 80D5D7E4  C0 24 D9 58 */	lfs f1, lit_3802@l(r4)
/* 80D5D7E8  4B 51 1A 18 */	b SetR__8cM3dGCylFf
/* 80D5D7EC  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80D5D7F0  3C 80 80 D6 */	lis r4, lit_3803@ha
/* 80D5D7F4  C0 24 D9 5C */	lfs f1, lit_3803@l(r4)
/* 80D5D7F8  4B 51 1A 00 */	b SetH__8cM3dGCylFf
/* 80D5D7FC  38 7F 06 8C */	addi r3, r31, 0x68c
/* 80D5D800  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80D5D804  4B 51 19 D8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80D5D808  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5D80C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5D810  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D5D814  38 9F 05 68 */	addi r4, r31, 0x568
/* 80D5D818  4B 50 73 90 */	b Set__4cCcSFP8cCcD_Obj
/* 80D5D81C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5D820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D824  7C 08 03 A6 */	mtlr r0
/* 80D5D828  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D82C  4E 80 00 20 */	blr 
