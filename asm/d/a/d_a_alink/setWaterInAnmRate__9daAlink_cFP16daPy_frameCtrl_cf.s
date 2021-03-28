lbl_80101CF4:
/* 80101CF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80101CF8  7C 08 02 A6 */	mflr r0
/* 80101CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80101D00  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80101D04  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 80101D08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80101D0C  7C 9F 23 78 */	mr r31, r4
/* 80101D10  FF E0 08 90 */	fmr f31, f1
/* 80101D14  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80101D18  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 80101D1C  41 82 00 34 */	beq lbl_80101D50
/* 80101D20  4B FB E0 91 */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80101D24  2C 03 00 00 */	cmpwi r3, 0
/* 80101D28  41 82 00 18 */	beq lbl_80101D40
/* 80101D2C  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha
/* 80101D30  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l
/* 80101D34  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80101D38  EF FF 00 32 */	fmuls f31, f31, f0
/* 80101D3C  48 00 00 14 */	b lbl_80101D50
lbl_80101D40:
/* 80101D40  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha
/* 80101D44  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l
/* 80101D48  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80101D4C  EF FF 00 32 */	fmuls f31, f31, f0
lbl_80101D50:
/* 80101D50  D3 FF 00 0C */	stfs f31, 0xc(r31)
/* 80101D54  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 80101D58  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 80101D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80101D60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80101D64  7C 08 03 A6 */	mtlr r0
/* 80101D68  38 21 00 20 */	addi r1, r1, 0x20
/* 80101D6C  4E 80 00 20 */	blr 
