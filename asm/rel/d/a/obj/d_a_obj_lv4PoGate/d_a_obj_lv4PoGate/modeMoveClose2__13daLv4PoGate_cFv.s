lbl_80C6037C:
/* 80C6037C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C60380  7C 08 02 A6 */	mflr r0
/* 80C60384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C60388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6038C  7C 7F 1B 78 */	mr r31, r3
/* 80C60390  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80C60394  3C 80 80 C6 */	lis r4, l_HIO@ha /* 0x80C609C4@ha */
/* 80C60398  38 A4 09 C4 */	addi r5, r4, l_HIO@l /* 0x80C609C4@l */
/* 80C6039C  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 80C603A0  3C 80 80 C6 */	lis r4, lit_3786@ha /* 0x80C6082C@ha */
/* 80C603A4  C0 44 08 2C */	lfs f2, lit_3786@l(r4)  /* 0x80C6082C@l */
/* 80C603A8  C0 65 00 0C */	lfs f3, 0xc(r5)
/* 80C603AC  FC 80 10 90 */	fmr f4, f2
/* 80C603B0  4B 60 F5 CD */	bl cLib_addCalc__FPfffff
/* 80C603B4  3C 60 80 C6 */	lis r3, lit_3655@ha /* 0x80C6081C@ha */
/* 80C603B8  C0 03 08 1C */	lfs f0, lit_3655@l(r3)  /* 0x80C6081C@l */
/* 80C603BC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C603C0  40 82 00 0C */	bne lbl_80C603CC
/* 80C603C4  7F E3 FB 78 */	mr r3, r31
/* 80C603C8  48 00 00 19 */	bl init_modeMoveClose2Wait__13daLv4PoGate_cFv
lbl_80C603CC:
/* 80C603CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C603D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C603D4  7C 08 03 A6 */	mtlr r0
/* 80C603D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C603DC  4E 80 00 20 */	blr 
