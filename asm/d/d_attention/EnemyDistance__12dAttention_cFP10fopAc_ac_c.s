lbl_80071CC0:
/* 80071CC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80071CC4  7C 08 02 A6 */	mflr r0
/* 80071CC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80071CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80071CD0  7C 9F 23 78 */	mr r31, r4
/* 80071CD4  80 63 00 00 */	lwz r3, 0(r3)
/* 80071CD8  7C 1F 18 40 */	cmplw r31, r3
/* 80071CDC  41 82 00 0C */	beq lbl_80071CE8
/* 80071CE0  28 03 00 00 */	cmplwi r3, 0
/* 80071CE4  40 82 00 0C */	bne lbl_80071CF0
lbl_80071CE8:
/* 80071CE8  C0 22 8C 90 */	lfs f1, lit_4562(r2)
/* 80071CEC  48 00 00 6C */	b lbl_80071D58
lbl_80071CF0:
/* 80071CF0  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80071CF4  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80071CF8  40 82 00 0C */	bne lbl_80071D04
/* 80071CFC  C0 22 8C 90 */	lfs f1, lit_4562(r2)
/* 80071D00  48 00 00 58 */	b lbl_80071D58
lbl_80071D04:
/* 80071D04  80 9F 05 5C */	lwz r4, 0x55c(r31)
/* 80071D08  54 80 07 7B */	rlwinm. r0, r4, 0, 0x1d, 0x1d
/* 80071D0C  40 82 00 14 */	bne lbl_80071D20
/* 80071D10  54 80 01 4B */	rlwinm. r0, r4, 0, 5, 5
/* 80071D14  40 82 00 0C */	bne lbl_80071D20
/* 80071D18  C0 22 8C 90 */	lfs f1, lit_4562(r2)
/* 80071D1C  48 00 00 3C */	b lbl_80071D58
lbl_80071D20:
/* 80071D20  7F E4 FB 78 */	mr r4, r31
/* 80071D24  4B FA 8A BD */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80071D28  88 1F 05 46 */	lbz r0, 0x546(r31)
/* 80071D2C  1C 00 00 1C */	mulli r0, r0, 0x1c
/* 80071D30  3C 60 80 3B */	lis r3, dist_table__12dAttention_c@ha
/* 80071D34  38 63 9C 70 */	addi r3, r3, dist_table__12dAttention_c@l
/* 80071D38  7C 43 04 2E */	lfsx f2, r3, r0
/* 80071D3C  7C 63 02 14 */	add r3, r3, r0
/* 80071D40  C0 03 00 08 */	lfs f0, 8(r3)
/* 80071D44  EC 02 00 2A */	fadds f0, f2, f0
/* 80071D48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80071D4C  40 80 00 08 */	bge lbl_80071D54
/* 80071D50  48 00 00 08 */	b lbl_80071D58
lbl_80071D54:
/* 80071D54  C0 22 8C 90 */	lfs f1, lit_4562(r2)
lbl_80071D58:
/* 80071D58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80071D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80071D60  7C 08 03 A6 */	mtlr r0
/* 80071D64  38 21 00 10 */	addi r1, r1, 0x10
/* 80071D68  4E 80 00 20 */	blr 
