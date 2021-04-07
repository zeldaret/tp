lbl_80D08860:
/* 80D08860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D08864  7C 08 02 A6 */	mflr r0
/* 80D08868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0886C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D08870  7C 7F 1B 78 */	mr r31, r3
/* 80D08874  38 7F 07 88 */	addi r3, r31, 0x788
/* 80D08878  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D0887C  4B 56 6D CD */	bl SetC__8cM3dGSphFRC4cXyz
/* 80D08880  38 7F 07 88 */	addi r3, r31, 0x788
/* 80D08884  3C 80 80 D1 */	lis r4, lit_3788@ha /* 0x80D0B938@ha */
/* 80D08888  C0 24 B9 38 */	lfs f1, lit_3788@l(r4)  /* 0x80D0B938@l */
/* 80D0888C  4B 56 6E 7D */	bl SetR__8cM3dGSphFf
/* 80D08890  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D08894  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D08898  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D0889C  38 9F 06 64 */	addi r4, r31, 0x664
/* 80D088A0  4B 55 C3 09 */	bl Set__4cCcSFP8cCcD_Obj
/* 80D088A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D088A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D088AC  7C 08 03 A6 */	mtlr r0
/* 80D088B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D088B4  4E 80 00 20 */	blr 
