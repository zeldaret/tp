lbl_8080E49C:
/* 8080E49C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8080E4A0  7C 08 02 A6 */	mflr r0
/* 8080E4A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8080E4A8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8080E4AC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8080E4B0  7C 7E 1B 78 */	mr r30, r3
/* 8080E4B4  3C 60 80 81 */	lis r3, lit_3925@ha /* 0x80815994@ha */
/* 8080E4B8  3B E3 59 94 */	addi r31, r3, lit_3925@l /* 0x80815994@l */
/* 8080E4BC  C0 5E 06 78 */	lfs f2, 0x678(r30)
/* 8080E4C0  C0 1E 06 70 */	lfs f0, 0x670(r30)
/* 8080E4C4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8080E4C8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8080E4CC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8080E4D0  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8080E4D4  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8080E4D8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8080E4DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8080E4E0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8080E4E4  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8080E4E8  38 61 00 0C */	addi r3, r1, 0xc
/* 8080E4EC  38 81 00 18 */	addi r4, r1, 0x18
/* 8080E4F0  4B B3 8E AD */	bl PSVECSquareDistance
/* 8080E4F4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8080E4F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E4FC  40 81 00 58 */	ble lbl_8080E554
/* 8080E500  FC 00 08 34 */	frsqrte f0, f1
/* 8080E504  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8080E508  FC 44 00 32 */	fmul f2, f4, f0
/* 8080E50C  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8080E510  FC 00 00 32 */	fmul f0, f0, f0
/* 8080E514  FC 01 00 32 */	fmul f0, f1, f0
/* 8080E518  FC 03 00 28 */	fsub f0, f3, f0
/* 8080E51C  FC 02 00 32 */	fmul f0, f2, f0
/* 8080E520  FC 44 00 32 */	fmul f2, f4, f0
/* 8080E524  FC 00 00 32 */	fmul f0, f0, f0
/* 8080E528  FC 01 00 32 */	fmul f0, f1, f0
/* 8080E52C  FC 03 00 28 */	fsub f0, f3, f0
/* 8080E530  FC 02 00 32 */	fmul f0, f2, f0
/* 8080E534  FC 44 00 32 */	fmul f2, f4, f0
/* 8080E538  FC 00 00 32 */	fmul f0, f0, f0
/* 8080E53C  FC 01 00 32 */	fmul f0, f1, f0
/* 8080E540  FC 03 00 28 */	fsub f0, f3, f0
/* 8080E544  FC 02 00 32 */	fmul f0, f2, f0
/* 8080E548  FC 21 00 32 */	fmul f1, f1, f0
/* 8080E54C  FC 20 08 18 */	frsp f1, f1
/* 8080E550  48 00 00 88 */	b lbl_8080E5D8
lbl_8080E554:
/* 8080E554  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8080E558  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E55C  40 80 00 10 */	bge lbl_8080E56C
/* 8080E560  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080E564  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8080E568  48 00 00 70 */	b lbl_8080E5D8
lbl_8080E56C:
/* 8080E56C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8080E570  80 81 00 08 */	lwz r4, 8(r1)
/* 8080E574  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8080E578  3C 00 7F 80 */	lis r0, 0x7f80
/* 8080E57C  7C 03 00 00 */	cmpw r3, r0
/* 8080E580  41 82 00 14 */	beq lbl_8080E594
/* 8080E584  40 80 00 40 */	bge lbl_8080E5C4
/* 8080E588  2C 03 00 00 */	cmpwi r3, 0
/* 8080E58C  41 82 00 20 */	beq lbl_8080E5AC
/* 8080E590  48 00 00 34 */	b lbl_8080E5C4
lbl_8080E594:
/* 8080E594  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080E598  41 82 00 0C */	beq lbl_8080E5A4
/* 8080E59C  38 00 00 01 */	li r0, 1
/* 8080E5A0  48 00 00 28 */	b lbl_8080E5C8
lbl_8080E5A4:
/* 8080E5A4  38 00 00 02 */	li r0, 2
/* 8080E5A8  48 00 00 20 */	b lbl_8080E5C8
lbl_8080E5AC:
/* 8080E5AC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8080E5B0  41 82 00 0C */	beq lbl_8080E5BC
/* 8080E5B4  38 00 00 05 */	li r0, 5
/* 8080E5B8  48 00 00 10 */	b lbl_8080E5C8
lbl_8080E5BC:
/* 8080E5BC  38 00 00 03 */	li r0, 3
/* 8080E5C0  48 00 00 08 */	b lbl_8080E5C8
lbl_8080E5C4:
/* 8080E5C4  38 00 00 04 */	li r0, 4
lbl_8080E5C8:
/* 8080E5C8  2C 00 00 01 */	cmpwi r0, 1
/* 8080E5CC  40 82 00 0C */	bne lbl_8080E5D8
/* 8080E5D0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8080E5D4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8080E5D8:
/* 8080E5D8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8080E5DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E5E0  40 81 00 0C */	ble lbl_8080E5EC
/* 8080E5E4  38 60 00 00 */	li r3, 0
/* 8080E5E8  48 00 00 30 */	b lbl_8080E618
lbl_8080E5EC:
/* 8080E5EC  C0 3E 06 74 */	lfs f1, 0x674(r30)
/* 8080E5F0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8080E5F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8080E5F8  FC 00 02 10 */	fabs f0, f0
/* 8080E5FC  FC 20 00 18 */	frsp f1, f0
/* 8080E600  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 8080E604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8080E608  7C 00 00 26 */	mfcr r0
/* 8080E60C  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 8080E610  7C 00 00 34 */	cntlzw r0, r0
/* 8080E614  54 03 D9 7E */	srwi r3, r0, 5
lbl_8080E618:
/* 8080E618  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8080E61C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8080E620  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8080E624  7C 08 03 A6 */	mtlr r0
/* 8080E628  38 21 00 30 */	addi r1, r1, 0x30
/* 8080E62C  4E 80 00 20 */	blr 
