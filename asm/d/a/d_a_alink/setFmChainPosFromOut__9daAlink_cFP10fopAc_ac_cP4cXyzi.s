lbl_800E7AEC:
/* 800E7AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E7AF0  7C 08 02 A6 */	mflr r0
/* 800E7AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E7AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E7AFC  C0 05 00 00 */	lfs f0, 0(r5)
/* 800E7B00  1C 06 00 0C */	mulli r0, r6, 0xc
/* 800E7B04  7C E3 02 14 */	add r7, r3, r0
/* 800E7B08  D0 07 35 4C */	stfs f0, 0x354c(r7)
/* 800E7B0C  C0 05 00 04 */	lfs f0, 4(r5)
/* 800E7B10  D0 07 35 50 */	stfs f0, 0x3550(r7)
/* 800E7B14  C0 05 00 08 */	lfs f0, 8(r5)
/* 800E7B18  D0 07 35 54 */	stfs f0, 0x3554(r7)
/* 800E7B1C  38 E0 00 00 */	li r7, 0
/* 800E7B20  89 03 2F A3 */	lbz r8, 0x2fa3(r3)
/* 800E7B24  38 08 FF FF */	addi r0, r8, -1
/* 800E7B28  7C 00 30 00 */	cmpw r0, r6
/* 800E7B2C  40 82 00 70 */	bne lbl_800E7B9C
/* 800E7B30  7C E5 3B 78 */	mr r5, r7
/* 800E7B34  A0 03 1F BC */	lhz r0, 0x1fbc(r3)
/* 800E7B38  28 00 00 62 */	cmplwi r0, 0x62
/* 800E7B3C  41 82 00 10 */	beq lbl_800E7B4C
/* 800E7B40  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800E7B44  28 00 02 A0 */	cmplwi r0, 0x2a0
/* 800E7B48  40 82 00 08 */	bne lbl_800E7B50
lbl_800E7B4C:
/* 800E7B4C  38 A0 00 01 */	li r5, 1
lbl_800E7B50:
/* 800E7B50  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 800E7B54  40 82 00 44 */	bne lbl_800E7B98
/* 800E7B58  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800E7B5C  28 00 00 AE */	cmplwi r0, 0xae
/* 800E7B60  40 82 00 18 */	bne lbl_800E7B78
/* 800E7B64  C0 23 1F E0 */	lfs f1, 0x1fe0(r3)
/* 800E7B68  C0 02 93 8C */	lfs f0, lit_8783(r2)
/* 800E7B6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E7B70  4C 41 13 82 */	cror 2, 1, 2
/* 800E7B74  41 82 00 24 */	beq lbl_800E7B98
lbl_800E7B78:
/* 800E7B78  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800E7B7C  28 00 01 2E */	cmplwi r0, 0x12e
/* 800E7B80  40 82 00 1C */	bne lbl_800E7B9C
/* 800E7B84  C0 23 1F E0 */	lfs f1, 0x1fe0(r3)
/* 800E7B88  C0 02 93 74 */	lfs f0, lit_8502(r2)
/* 800E7B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E7B90  4C 41 13 82 */	cror 2, 1, 2
/* 800E7B94  40 82 00 08 */	bne lbl_800E7B9C
lbl_800E7B98:
/* 800E7B98  38 E0 00 01 */	li r7, 1
lbl_800E7B9C:
/* 800E7B9C  54 FF 06 3E */	clrlwi r31, r7, 0x18
/* 800E7BA0  28 08 00 00 */	cmplwi r8, 0
/* 800E7BA4  41 82 00 0C */	beq lbl_800E7BB0
/* 800E7BA8  2C 1F 00 00 */	cmpwi r31, 0
/* 800E7BAC  41 82 00 0C */	beq lbl_800E7BB8
lbl_800E7BB0:
/* 800E7BB0  38 63 28 44 */	addi r3, r3, 0x2844
/* 800E7BB4  48 07 71 05 */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
lbl_800E7BB8:
/* 800E7BB8  7F E3 FB 78 */	mr r3, r31
/* 800E7BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E7BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E7BC4  7C 08 03 A6 */	mtlr r0
/* 800E7BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E7BCC  4E 80 00 20 */	blr 
