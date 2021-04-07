lbl_80B95598:
/* 80B95598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9559C  7C 08 02 A6 */	mflr r0
/* 80B955A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B955A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B955A8  7C 7F 1B 78 */	mr r31, r3
/* 80B955AC  3C 80 80 BA */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B9B284@ha */
/* 80B955B0  38 C4 B2 84 */	addi r6, r4, cNullVec__6Z2Calc@l /* 0x80B9B284@l */
/* 80B955B4  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80B955B8  28 00 00 00 */	cmplwi r0, 0
/* 80B955BC  41 82 00 E0 */	beq lbl_80B9569C
/* 80B955C0  38 80 00 00 */	li r4, 0
/* 80B955C4  88 1F 14 4C */	lbz r0, 0x144c(r31)
/* 80B955C8  28 00 00 01 */	cmplwi r0, 1
/* 80B955CC  40 82 00 30 */	bne lbl_80B955FC
/* 80B955D0  80 A6 00 98 */	lwz r5, 0x98(r6)
/* 80B955D4  2C 05 00 00 */	cmpwi r5, 0
/* 80B955D8  41 80 00 4C */	blt lbl_80B95624
/* 80B955DC  38 86 00 98 */	addi r4, r6, 0x98
/* 80B955E0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B955E4  54 00 10 3A */	slwi r0, r0, 2
/* 80B955E8  38 86 01 10 */	addi r4, r6, 0x110
/* 80B955EC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B955F0  4B 5B D5 B5 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B955F4  7C 64 1B 78 */	mr r4, r3
/* 80B955F8  48 00 00 2C */	b lbl_80B95624
lbl_80B955FC:
/* 80B955FC  80 A6 00 90 */	lwz r5, 0x90(r6)
/* 80B95600  2C 05 00 00 */	cmpwi r5, 0
/* 80B95604  41 80 00 20 */	blt lbl_80B95624
/* 80B95608  38 86 00 90 */	addi r4, r6, 0x90
/* 80B9560C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B95610  54 00 10 3A */	slwi r0, r0, 2
/* 80B95614  38 86 01 10 */	addi r4, r6, 0x110
/* 80B95618  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B9561C  4B 5B D5 89 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80B95620  7C 64 1B 78 */	mr r4, r3
lbl_80B95624:
/* 80B95624  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80B95628  7C 04 00 40 */	cmplw r4, r0
/* 80B9562C  40 82 00 64 */	bne lbl_80B95690
/* 80B95630  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 80B95634  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B95638  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B9563C  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B95640  7C 04 04 2E */	lfsx f0, r4, r0
/* 80B95644  3C 60 80 BA */	lis r3, lit_4991@ha /* 0x80B9B0A4@ha */
/* 80B95648  C0 43 B0 A4 */	lfs f2, lit_4991@l(r3)  /* 0x80B9B0A4@l */
/* 80B9564C  3C 60 80 BA */	lis r3, lit_4992@ha /* 0x80B9B0A8@ha */
/* 80B95650  C0 23 B0 A8 */	lfs f1, lit_4992@l(r3)  /* 0x80B9B0A8@l */
/* 80B95654  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B95658  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B9565C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B95660  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80B95664  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 80B95668  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B9566C  7C 04 04 2E */	lfsx f0, r4, r0
/* 80B95670  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B95674  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B95678  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80B9567C  38 00 00 01 */	li r0, 1
/* 80B95680  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B95684  98 03 01 04 */	stb r0, 0x104(r3)
/* 80B95688  38 60 00 01 */	li r3, 1
/* 80B9568C  48 00 00 14 */	b lbl_80B956A0
lbl_80B95690:
/* 80B95690  38 00 00 00 */	li r0, 0
/* 80B95694  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80B95698  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80B9569C:
/* 80B9569C  38 60 00 00 */	li r3, 0
lbl_80B956A0:
/* 80B956A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B956A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B956A8  7C 08 03 A6 */	mtlr r0
/* 80B956AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B956B0  4E 80 00 20 */	blr 
