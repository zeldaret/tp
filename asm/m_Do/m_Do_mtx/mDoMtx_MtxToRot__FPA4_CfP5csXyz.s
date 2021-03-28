lbl_8000CC00:
/* 8000CC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000CC04  7C 08 02 A6 */	mflr r0
/* 8000CC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000CC0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8000CC10  93 C1 00 08 */	stw r30, 8(r1)
/* 8000CC14  7C 7E 1B 78 */	mr r30, r3
/* 8000CC18  7C 9F 23 78 */	mr r31, r4
/* 8000CC1C  C0 23 00 08 */	lfs f1, 8(r3)
/* 8000CC20  EC 21 00 72 */	fmuls f1, f1, f1
/* 8000CC24  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8000CC28  EC 00 00 32 */	fmuls f0, f0, f0
/* 8000CC2C  EC 21 00 2A */	fadds f1, f1, f0
/* 8000CC30  C0 02 81 0C */	lfs f0, lit_3677(r2)
/* 8000CC34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8000CC38  40 81 00 10 */	ble lbl_8000CC48
/* 8000CC3C  FC 00 08 34 */	frsqrte f0, f1
/* 8000CC40  EC 40 00 72 */	fmuls f2, f0, f1
/* 8000CC44  48 00 00 08 */	b lbl_8000CC4C
lbl_8000CC48:
/* 8000CC48  FC 40 08 90 */	fmr f2, f1
lbl_8000CC4C:
/* 8000CC4C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8000CC50  FC 20 00 50 */	fneg f1, f0
/* 8000CC54  48 25 AA 21 */	bl cM_atan2s__Fff
/* 8000CC58  B0 7F 00 00 */	sth r3, 0(r31)
/* 8000CC5C  A8 1F 00 00 */	lha r0, 0(r31)
/* 8000CC60  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8000CC64  41 82 00 0C */	beq lbl_8000CC70
/* 8000CC68  2C 00 C0 00 */	cmpwi r0, -16384
/* 8000CC6C  40 82 00 24 */	bne lbl_8000CC90
lbl_8000CC70:
/* 8000CC70  38 00 00 00 */	li r0, 0
/* 8000CC74  B0 1F 00 04 */	sth r0, 4(r31)
/* 8000CC78  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 8000CC7C  FC 20 00 50 */	fneg f1, f0
/* 8000CC80  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8000CC84  48 25 A9 F1 */	bl cM_atan2s__Fff
/* 8000CC88  B0 7F 00 02 */	sth r3, 2(r31)
/* 8000CC8C  48 00 00 24 */	b lbl_8000CCB0
lbl_8000CC90:
/* 8000CC90  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8000CC94  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8000CC98  48 25 A9 DD */	bl cM_atan2s__Fff
/* 8000CC9C  B0 7F 00 02 */	sth r3, 2(r31)
/* 8000CCA0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8000CCA4  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 8000CCA8  48 25 A9 CD */	bl cM_atan2s__Fff
/* 8000CCAC  B0 7F 00 04 */	sth r3, 4(r31)
lbl_8000CCB0:
/* 8000CCB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8000CCB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8000CCB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000CCBC  7C 08 03 A6 */	mtlr r0
/* 8000CCC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8000CCC4  4E 80 00 20 */	blr 
