lbl_806AE5C8:
/* 806AE5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AE5CC  7C 08 02 A6 */	mflr r0
/* 806AE5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AE5D4  7C 65 1B 78 */	mr r5, r3
/* 806AE5D8  38 00 00 01 */	li r0, 1
/* 806AE5DC  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha /* 0x80450C98@ha */
/* 806AE5E0  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)  /* 0x80450C98@l */
/* 806AE5E4  38 60 00 02 */	li r3, 2
/* 806AE5E8  3C 80 80 6B */	lis r4, lit_4071@ha /* 0x806B5D34@ha */
/* 806AE5EC  C0 24 5D 34 */	lfs f1, lit_4071@l(r4)  /* 0x806B5D34@l */
/* 806AE5F0  38 80 00 00 */	li r4, 0
/* 806AE5F4  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 806AE5F8  7C 05 07 74 */	extsb r5, r0
/* 806AE5FC  38 C0 00 00 */	li r6, 0
/* 806AE600  38 E0 FF FF */	li r7, -1
/* 806AE604  4B 97 8B 6D */	bl dStage_changeScene__FifUlScsi
/* 806AE608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AE60C  7C 08 03 A6 */	mtlr r0
/* 806AE610  38 21 00 10 */	addi r1, r1, 0x10
/* 806AE614  4E 80 00 20 */	blr 
