lbl_80268BB4:
/* 80268BB4  C0 44 00 0C */	lfs f2, 0xc(r4)
/* 80268BB8  C0 64 00 00 */	lfs f3, 0(r4)
/* 80268BBC  C0 23 00 00 */	lfs f1, 0(r3)
/* 80268BC0  EC 03 10 2A */	fadds f0, f3, f2
/* 80268BC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268BC8  40 81 00 0C */	ble lbl_80268BD4
/* 80268BCC  38 60 00 00 */	li r3, 0
/* 80268BD0  4E 80 00 20 */	blr 
lbl_80268BD4:
/* 80268BD4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80268BD8  EC 03 10 28 */	fsubs f0, f3, f2
/* 80268BDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268BE0  40 80 00 0C */	bge lbl_80268BEC
/* 80268BE4  38 60 00 00 */	li r3, 0
/* 80268BE8  4E 80 00 20 */	blr 
lbl_80268BEC:
/* 80268BEC  C0 64 00 08 */	lfs f3, 8(r4)
/* 80268BF0  C0 23 00 08 */	lfs f1, 8(r3)
/* 80268BF4  EC 03 10 2A */	fadds f0, f3, f2
/* 80268BF8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268BFC  40 81 00 0C */	ble lbl_80268C08
/* 80268C00  38 60 00 00 */	li r3, 0
/* 80268C04  4E 80 00 20 */	blr 
lbl_80268C08:
/* 80268C08  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 80268C0C  EC 03 10 28 */	fsubs f0, f3, f2
/* 80268C10  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268C14  40 80 00 0C */	bge lbl_80268C20
/* 80268C18  38 60 00 00 */	li r3, 0
/* 80268C1C  4E 80 00 20 */	blr 
lbl_80268C20:
/* 80268C20  C0 64 00 04 */	lfs f3, 4(r4)
/* 80268C24  C0 23 00 04 */	lfs f1, 4(r3)
/* 80268C28  EC 03 10 2A */	fadds f0, f3, f2
/* 80268C2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268C30  40 81 00 0C */	ble lbl_80268C3C
/* 80268C34  38 60 00 00 */	li r3, 0
/* 80268C38  4E 80 00 20 */	blr 
lbl_80268C3C:
/* 80268C3C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80268C40  EC 03 10 28 */	fsubs f0, f3, f2
/* 80268C44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80268C48  7C 00 00 26 */	mfcr r0
/* 80268C4C  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80268C50  7C 00 00 34 */	cntlzw r0, r0
/* 80268C54  54 03 D9 7E */	srwi r3, r0, 5
/* 80268C58  4E 80 00 20 */	blr 
