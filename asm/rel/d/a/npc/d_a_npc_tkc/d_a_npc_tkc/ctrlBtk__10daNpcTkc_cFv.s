lbl_80B0FD18:
/* 80B0FD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0FD1C  7C 08 02 A6 */	mflr r0
/* 80B0FD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0FD24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0FD28  7C 7F 1B 78 */	mr r31, r3
/* 80B0FD2C  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80B0FD30  28 00 00 00 */	cmplwi r0, 0
/* 80B0FD34  41 82 00 98 */	beq lbl_80B0FDCC
/* 80B0FD38  3C 80 80 B1 */	lis r4, l_arcName@ha
/* 80B0FD3C  38 84 0A B8 */	addi r4, r4, l_arcName@l
/* 80B0FD40  80 84 00 00 */	lwz r4, 0(r4)
/* 80B0FD44  3C A0 80 B1 */	lis r5, l_btkGetParamList@ha
/* 80B0FD48  38 A5 0A A0 */	addi r5, r5, l_btkGetParamList@l
/* 80B0FD4C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80B0FD50  4B 64 2E 54 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B0FD54  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80B0FD58  7C 03 00 40 */	cmplw r3, r0
/* 80B0FD5C  40 82 00 64 */	bne lbl_80B0FDC0
/* 80B0FD60  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 80B0FD64  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0FD68  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B0FD6C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80B0FD70  7C 04 04 2E */	lfsx f0, r4, r0
/* 80B0FD74  3C 60 80 B1 */	lis r3, lit_4891@ha
/* 80B0FD78  C0 43 09 D8 */	lfs f2, lit_4891@l(r3)
/* 80B0FD7C  3C 60 80 B1 */	lis r3, lit_4892@ha
/* 80B0FD80  C0 23 09 DC */	lfs f1, lit_4892@l(r3)
/* 80B0FD84  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B0FD88  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B0FD8C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B0FD90  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80B0FD94  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 80B0FD98  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0FD9C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80B0FDA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B0FDA4  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B0FDA8  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80B0FDAC  38 00 00 01 */	li r0, 1
/* 80B0FDB0  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B0FDB4  98 03 01 04 */	stb r0, 0x104(r3)
/* 80B0FDB8  38 60 00 01 */	li r3, 1
/* 80B0FDBC  48 00 00 14 */	b lbl_80B0FDD0
lbl_80B0FDC0:
/* 80B0FDC0  38 00 00 00 */	li r0, 0
/* 80B0FDC4  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B0FDC8  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80B0FDCC:
/* 80B0FDCC  38 60 00 00 */	li r3, 0
lbl_80B0FDD0:
/* 80B0FDD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0FDD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0FDD8  7C 08 03 A6 */	mtlr r0
/* 80B0FDDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0FDE0  4E 80 00 20 */	blr 
