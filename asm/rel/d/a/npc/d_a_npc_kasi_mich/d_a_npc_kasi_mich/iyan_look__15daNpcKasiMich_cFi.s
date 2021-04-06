lbl_80A2908C:
/* 80A2908C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A29090  7C 08 02 A6 */	mflr r0
/* 80A29094  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A29098  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A2909C  7C 7F 1B 78 */	mr r31, r3
/* 80A290A0  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A290A4  2C 00 00 00 */	cmpwi r0, 0
/* 80A290A8  41 82 00 18 */	beq lbl_80A290C0
/* 80A290AC  40 80 00 08 */	bge lbl_80A290B4
/* 80A290B0  48 00 00 9C */	b lbl_80A2914C
lbl_80A290B4:
/* 80A290B4  2C 00 00 02 */	cmpwi r0, 2
/* 80A290B8  40 80 00 94 */	bge lbl_80A2914C
/* 80A290BC  48 00 00 50 */	b lbl_80A2910C
lbl_80A290C0:
/* 80A290C0  38 80 00 01 */	li r4, 1
/* 80A290C4  3C A0 80 A3 */	lis r5, lit_4249@ha /* 0x80A2A0D8@ha */
/* 80A290C8  C0 25 A0 D8 */	lfs f1, lit_4249@l(r5)  /* 0x80A2A0D8@l */
/* 80A290CC  38 A0 00 00 */	li r5, 0
/* 80A290D0  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A290D4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A290D8  7D 89 03 A6 */	mtctr r12
/* 80A290DC  4E 80 04 21 */	bctrl 
/* 80A290E0  3C 60 80 A3 */	lis r3, lit_4449@ha /* 0x80A2A0F0@ha */
/* 80A290E4  C0 03 A0 F0 */	lfs f0, lit_4449@l(r3)  /* 0x80A2A0F0@l */
/* 80A290E8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A290EC  38 00 00 56 */	li r0, 0x56
/* 80A290F0  B0 1F 14 40 */	sth r0, 0x1440(r31)
/* 80A290F4  7F E3 FB 78 */	mr r3, r31
/* 80A290F8  38 80 00 00 */	li r4, 0
/* 80A290FC  4B FF EA 31 */	bl setLookMode__15daNpcKasiMich_cFi
/* 80A29100  38 00 00 01 */	li r0, 1
/* 80A29104  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A29108  48 00 00 44 */	b lbl_80A2914C
lbl_80A2910C:
/* 80A2910C  A8 9F 14 40 */	lha r4, 0x1440(r31)
/* 80A29110  38 04 FF FF */	addi r0, r4, -1
/* 80A29114  B0 1F 14 40 */	sth r0, 0x1440(r31)
/* 80A29118  A8 1F 14 40 */	lha r0, 0x1440(r31)
/* 80A2911C  2C 00 00 00 */	cmpwi r0, 0
/* 80A29120  40 82 00 2C */	bne lbl_80A2914C
/* 80A29124  3C 80 80 A3 */	lis r4, lit_5261@ha /* 0x80A2A648@ha */
/* 80A29128  38 A4 A6 48 */	addi r5, r4, lit_5261@l /* 0x80A2A648@l */
/* 80A2912C  80 85 00 00 */	lwz r4, 0(r5)
/* 80A29130  80 05 00 04 */	lwz r0, 4(r5)
/* 80A29134  90 81 00 08 */	stw r4, 8(r1)
/* 80A29138  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2913C  80 05 00 08 */	lwz r0, 8(r5)
/* 80A29140  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A29144  38 81 00 08 */	addi r4, r1, 8
/* 80A29148  4B FF E9 3D */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
lbl_80A2914C:
/* 80A2914C  38 60 00 01 */	li r3, 1
/* 80A29150  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A29154  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A29158  7C 08 03 A6 */	mtlr r0
/* 80A2915C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A29160  4E 80 00 20 */	blr 
