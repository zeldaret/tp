lbl_805A0024:
/* 805A0024  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A0028  7C 08 02 A6 */	mflr r0
/* 805A002C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A0030  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A0034  93 C1 00 18 */	stw r30, 0x18(r1)
/* 805A0038  7C 7F 1B 78 */	mr r31, r3
/* 805A003C  3C 60 80 5A */	lis r3, lit_3769@ha /* 0x805A1158@ha */
/* 805A0040  3B C3 11 58 */	addi r30, r3, lit_3769@l /* 0x805A1158@l */
/* 805A0044  80 1F 08 F0 */	lwz r0, 0x8f0(r31)
/* 805A0048  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805A004C  90 1F 08 F0 */	stw r0, 0x8f0(r31)
/* 805A0050  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 805A0054  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805A0058  A8 7F 05 FA */	lha r3, 0x5fa(r31)
/* 805A005C  2C 03 00 01 */	cmpwi r3, 1
/* 805A0060  41 82 00 24 */	beq lbl_805A0084
/* 805A0064  40 80 00 88 */	bge lbl_805A00EC
/* 805A0068  2C 03 00 00 */	cmpwi r3, 0
/* 805A006C  40 80 00 08 */	bge lbl_805A0074
/* 805A0070  48 00 00 7C */	b lbl_805A00EC
lbl_805A0074:
/* 805A0074  38 03 00 01 */	addi r0, r3, 1
/* 805A0078  B0 1F 05 FA */	sth r0, 0x5fa(r31)
/* 805A007C  38 00 00 00 */	li r0, 0
/* 805A0080  B0 1F 06 02 */	sth r0, 0x602(r31)
lbl_805A0084:
/* 805A0084  A8 1F 06 02 */	lha r0, 0x602(r31)
/* 805A0088  2C 00 00 00 */	cmpwi r0, 0
/* 805A008C  40 82 00 60 */	bne lbl_805A00EC
/* 805A0090  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 805A0094  4B CC 78 C1 */	bl cM_rndF__Ff
/* 805A0098  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 805A009C  EC 00 08 2A */	fadds f0, f0, f1
/* 805A00A0  FC 00 00 1E */	fctiwz f0, f0
/* 805A00A4  D8 01 00 08 */	stfd f0, 8(r1)
/* 805A00A8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A00AC  B0 1F 06 02 */	sth r0, 0x602(r31)
/* 805A00B0  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 805A00B4  4B CC 78 A1 */	bl cM_rndF__Ff
/* 805A00B8  FC 00 08 1E */	fctiwz f0, f1
/* 805A00BC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805A00C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A00C4  54 00 10 3A */	slwi r0, r0, 2
/* 805A00C8  3C 60 80 5A */	lis r3, carry_wait_bck@ha /* 0x805A11F8@ha */
/* 805A00CC  38 83 11 F8 */	addi r4, r3, carry_wait_bck@l /* 0x805A11F8@l */
/* 805A00D0  7F E3 FB 78 */	mr r3, r31
/* 805A00D4  7C 84 00 2E */	lwzx r4, r4, r0
/* 805A00D8  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 805A00DC  38 A0 00 02 */	li r5, 2
/* 805A00E0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805A00E4  38 C0 FF FF */	li r6, -1
/* 805A00E8  4B FF F5 F1 */	bl anm_init__FP8sq_classifUcfi
lbl_805A00EC:
/* 805A00EC  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 805A00F0  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 805A00F4  40 82 00 54 */	bne lbl_805A0148
/* 805A00F8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 805A00FC  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 805A0100  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A0104  40 81 00 34 */	ble lbl_805A0138
/* 805A0108  38 80 00 00 */	li r4, 0
/* 805A010C  B0 9F 05 FA */	sth r4, 0x5fa(r31)
/* 805A0110  3C 60 80 5A */	lis r3, l_HIO@ha /* 0x805A1340@ha */
/* 805A0114  38 63 13 40 */	addi r3, r3, l_HIO@l /* 0x805A1340@l */
/* 805A0118  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 805A011C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805A0120  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 805A0124  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805A0128  38 00 00 03 */	li r0, 3
/* 805A012C  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
/* 805A0130  B0 9F 05 FA */	sth r4, 0x5fa(r31)
/* 805A0134  48 00 00 14 */	b lbl_805A0148
lbl_805A0138:
/* 805A0138  38 00 00 00 */	li r0, 0
/* 805A013C  B0 1F 05 F8 */	sth r0, 0x5f8(r31)
/* 805A0140  38 00 FF FF */	li r0, -1
/* 805A0144  B0 1F 05 FA */	sth r0, 0x5fa(r31)
lbl_805A0148:
/* 805A0148  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A014C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 805A0150  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A0154  7C 08 03 A6 */	mtlr r0
/* 805A0158  38 21 00 20 */	addi r1, r1, 0x20
/* 805A015C  4E 80 00 20 */	blr 
