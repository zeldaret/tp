lbl_8004DC28:
/* 8004DC28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8004DC2C  7C 08 02 A6 */	mflr r0
/* 8004DC30  90 01 00 24 */	stw r0, 0x24(r1)
/* 8004DC34  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8004DC38  7C BF 2B 78 */	mr r31, r5
/* 8004DC3C  C0 05 00 00 */	lfs f0, 0(r5)
/* 8004DC40  C0 25 00 04 */	lfs f1, 4(r5)
/* 8004DC44  C0 45 00 08 */	lfs f2, 8(r5)
/* 8004DC48  D0 01 00 08 */	stfs f0, 8(r1)
/* 8004DC4C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8004DC50  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8004DC54  38 61 00 08 */	addi r3, r1, 8
/* 8004DC58  4B FD 01 2D */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 8004DC5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8004DC60  41 82 00 2C */	beq lbl_8004DC8C
/* 8004DC64  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8004DC68  C0 0D 87 58 */	lfs f0, mWaterY__11fopAcM_wt_c(r13)
/* 8004DC6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004DC70  40 81 00 1C */	ble lbl_8004DC8C
/* 8004DC74  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 8004DC78  60 00 00 08 */	ori r0, r0, 8
/* 8004DC7C  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 8004DC80  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 8004DC84  60 00 00 02 */	ori r0, r0, 2
/* 8004DC88  90 1F 00 7C */	stw r0, 0x7c(r31)
lbl_8004DC8C:
/* 8004DC8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8004DC90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8004DC94  7C 08 03 A6 */	mtlr r0
/* 8004DC98  38 21 00 20 */	addi r1, r1, 0x20
/* 8004DC9C  4E 80 00 20 */	blr 
