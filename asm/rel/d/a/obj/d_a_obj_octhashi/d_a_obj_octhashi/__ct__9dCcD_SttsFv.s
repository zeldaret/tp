lbl_80CA619C:
/* 80CA619C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA61A0  7C 08 02 A6 */	mflr r0
/* 80CA61A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA61A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA61AC  7C 7F 1B 78 */	mr r31, r3
/* 80CA61B0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CA61B4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CA61B8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CA61BC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 80CA61C0  4B 3D D5 A0 */	b __ct__10dCcD_GSttsFv
/* 80CA61C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CA61C8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CA61CC  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80CA61D0  38 03 00 20 */	addi r0, r3, 0x20
/* 80CA61D4  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80CA61D8  7F E3 FB 78 */	mr r3, r31
/* 80CA61DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA61E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA61E4  7C 08 03 A6 */	mtlr r0
/* 80CA61E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA61EC  4E 80 00 20 */	blr 
