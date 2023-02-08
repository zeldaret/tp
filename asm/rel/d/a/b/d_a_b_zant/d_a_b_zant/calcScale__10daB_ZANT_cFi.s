lbl_80640C20:
/* 80640C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80640C24  7C 08 02 A6 */	mflr r0
/* 80640C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80640C2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80640C30  93 C1 00 08 */	stw r30, 8(r1)
/* 80640C34  7C 7E 1B 78 */	mr r30, r3
/* 80640C38  3C 60 80 65 */	lis r3, lit_3757@ha /* 0x8064EB1C@ha */
/* 80640C3C  3B E3 EB 1C */	addi r31, r3, lit_3757@l /* 0x8064EB1C@l */
/* 80640C40  2C 04 00 00 */	cmpwi r4, 0
/* 80640C44  40 82 00 54 */	bne lbl_80640C98
/* 80640C48  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80640C4C  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80640C50  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80640C54  C0 7F 00 A8 */	lfs f3, 0xa8(r31)
/* 80640C58  C0 9F 00 AC */	lfs f4, 0xac(r31)
/* 80640C5C  4B C2 ED 21 */	bl cLib_addCalc__FPfffff
/* 80640C60  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 80640C64  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80640C68  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80640C6C  C0 7F 00 AC */	lfs f3, 0xac(r31)
/* 80640C70  FC 80 18 90 */	fmr f4, f3
/* 80640C74  4B C2 ED 09 */	bl cLib_addCalc__FPfffff
/* 80640C78  C0 3E 06 C0 */	lfs f1, 0x6c0(r30)
/* 80640C7C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80640C80  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80640C84  40 82 00 74 */	bne lbl_80640CF8
/* 80640C88  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 80640C8C  D0 1E 06 C0 */	stfs f0, 0x6c0(r30)
/* 80640C90  38 60 00 01 */	li r3, 1
/* 80640C94  48 00 00 68 */	b lbl_80640CFC
lbl_80640C98:
/* 80640C98  38 7E 06 C4 */	addi r3, r30, 0x6c4
/* 80640C9C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80640CA0  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80640CA4  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 80640CA8  C0 9F 00 AC */	lfs f4, 0xac(r31)
/* 80640CAC  4B C2 EC D1 */	bl cLib_addCalc__FPfffff
/* 80640CB0  C0 1E 06 C4 */	lfs f0, 0x6c4(r30)
/* 80640CB4  C0 5F 00 30 */	lfs f2, 0x30(r31)
/* 80640CB8  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80640CBC  40 81 00 18 */	ble lbl_80640CD4
/* 80640CC0  38 7E 06 C0 */	addi r3, r30, 0x6c0
/* 80640CC4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80640CC8  C0 7F 00 B0 */	lfs f3, 0xb0(r31)
/* 80640CCC  C0 9F 00 AC */	lfs f4, 0xac(r31)
/* 80640CD0  4B C2 EC AD */	bl cLib_addCalc__FPfffff
lbl_80640CD4:
/* 80640CD4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80640CD8  C0 1E 06 C4 */	lfs f0, 0x6c4(r30)
/* 80640CDC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80640CE0  40 82 00 18 */	bne lbl_80640CF8
/* 80640CE4  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 80640CE8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80640CEC  40 82 00 0C */	bne lbl_80640CF8
/* 80640CF0  38 60 00 01 */	li r3, 1
/* 80640CF4  48 00 00 08 */	b lbl_80640CFC
lbl_80640CF8:
/* 80640CF8  38 60 00 00 */	li r3, 0
lbl_80640CFC:
/* 80640CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80640D00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80640D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80640D08  7C 08 03 A6 */	mtlr r0
/* 80640D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80640D10  4E 80 00 20 */	blr 
