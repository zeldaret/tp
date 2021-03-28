lbl_8062D624:
/* 8062D624  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D628  7C 08 02 A6 */	mflr r0
/* 8062D62C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D630  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062D634  7C 7F 1B 78 */	mr r31, r3
/* 8062D638  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8062D63C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8062D640  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8062D644  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8062D648  4B A5 61 18 */	b __ct__10dCcD_GSttsFv
/* 8062D64C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8062D650  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8062D654  90 7F 00 18 */	stw r3, 0x18(r31)
/* 8062D658  38 03 00 20 */	addi r0, r3, 0x20
/* 8062D65C  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8062D660  7F E3 FB 78 */	mr r3, r31
/* 8062D664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8062D668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D66C  7C 08 03 A6 */	mtlr r0
/* 8062D670  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D674  4E 80 00 20 */	blr 
