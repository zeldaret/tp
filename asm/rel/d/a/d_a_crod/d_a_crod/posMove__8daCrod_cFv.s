lbl_804A3500:
/* 804A3500  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A3504  7C 08 02 A6 */	mflr r0
/* 804A3508  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A350C  7C 66 1B 78 */	mr r6, r3
/* 804A3510  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804A3514  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804A3518  38 83 00 04 */	addi r4, r3, 4
/* 804A351C  A8 06 04 DC */	lha r0, 0x4dc(r6)
/* 804A3520  54 05 04 38 */	rlwinm r5, r0, 0, 0x10, 0x1c
/* 804A3524  7C 84 2C 2E */	lfsx f4, r4, r5
/* 804A3528  A8 06 04 DE */	lha r0, 0x4de(r6)
/* 804A352C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804A3530  7C 04 04 2E */	lfsx f0, r4, r0
/* 804A3534  C0 66 05 2C */	lfs f3, 0x52c(r6)
/* 804A3538  EC 03 00 32 */	fmuls f0, f3, f0
/* 804A353C  EC 40 01 32 */	fmuls f2, f0, f4
/* 804A3540  7C 03 2C 2E */	lfsx f0, r3, r5
/* 804A3544  EC 23 00 32 */	fmuls f1, f3, f0
/* 804A3548  7C 03 04 2E */	lfsx f0, r3, r0
/* 804A354C  EC 03 00 32 */	fmuls f0, f3, f0
/* 804A3550  EC 00 01 32 */	fmuls f0, f0, f4
/* 804A3554  D0 06 04 F8 */	stfs f0, 0x4f8(r6)
/* 804A3558  D0 26 04 FC */	stfs f1, 0x4fc(r6)
/* 804A355C  D0 46 05 00 */	stfs f2, 0x500(r6)
/* 804A3560  38 66 04 D0 */	addi r3, r6, 0x4d0
/* 804A3564  38 86 04 F8 */	addi r4, r6, 0x4f8
/* 804A3568  7C 65 1B 78 */	mr r5, r3
/* 804A356C  4B EA 3B 24 */	b PSVECAdd
/* 804A3570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A3574  7C 08 03 A6 */	mtlr r0
/* 804A3578  38 21 00 10 */	addi r1, r1, 0x10
/* 804A357C  4E 80 00 20 */	blr 
