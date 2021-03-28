lbl_800FA78C:
/* 800FA78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FA790  7C 08 02 A6 */	mflr r0
/* 800FA794  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FA798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FA79C  7C 7F 1B 78 */	mr r31, r3
/* 800FA7A0  4B FF FF 45 */	bl setHangGroundY__9daAlink_cFv
/* 800FA7A4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800FA7A8  C0 7F 33 D8 */	lfs f3, 0x33d8(r31)
/* 800FA7AC  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wallHang_c0@ha
/* 800FA7B0  38 63 E1 F4 */	addi r3, r3, m__22daAlinkHIO_wallHang_c0@l
/* 800FA7B4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 800FA7B8  EC 23 00 2A */	fadds f1, f3, f0
/* 800FA7BC  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800FA7C0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800FA7C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800FA7C8  40 80 00 40 */	bge lbl_800FA808
/* 800FA7CC  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800FA7D0  28 00 00 56 */	cmplwi r0, 0x56
/* 800FA7D4  40 82 00 14 */	bne lbl_800FA7E8
/* 800FA7D8  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 800FA7DC  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 800FA7E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FA7E4  41 80 00 24 */	blt lbl_800FA808
lbl_800FA7E8:
/* 800FA7E8  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800FA7EC  EC 02 00 28 */	fsubs f0, f2, f0
/* 800FA7F0  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 800FA7F4  40 80 00 14 */	bge lbl_800FA808
/* 800FA7F8  7F E3 FB 78 */	mr r3, r31
/* 800FA7FC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FA800  4B FC C7 19 */	bl procLandInit__9daAlink_cFf
/* 800FA804  48 00 00 44 */	b lbl_800FA848
lbl_800FA808:
/* 800FA808  7F E3 FB 78 */	mr r3, r31
/* 800FA80C  38 80 00 33 */	li r4, 0x33
/* 800FA810  4B FB 8A 41 */	bl setDoStatus__9daAlink_cFUc
/* 800FA814  88 1F 2F 8D */	lbz r0, 0x2f8d(r31)
/* 800FA818  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800FA81C  41 82 00 28 */	beq lbl_800FA844
/* 800FA820  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FA824  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800FA828  7F E3 FB 78 */	mr r3, r31
/* 800FA82C  38 80 00 01 */	li r4, 1
/* 800FA830  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha
/* 800FA834  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l
/* 800FA838  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 800FA83C  4B FC C2 0D */	bl procFallInit__9daAlink_cFif
/* 800FA840  48 00 00 08 */	b lbl_800FA848
lbl_800FA844:
/* 800FA844  38 60 00 00 */	li r3, 0
lbl_800FA848:
/* 800FA848  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FA84C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FA850  7C 08 03 A6 */	mtlr r0
/* 800FA854  38 21 00 10 */	addi r1, r1, 0x10
/* 800FA858  4E 80 00 20 */	blr 
