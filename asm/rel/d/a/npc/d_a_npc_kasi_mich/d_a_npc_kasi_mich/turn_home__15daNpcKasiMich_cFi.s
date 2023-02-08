lbl_80A28A8C:
/* 80A28A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A28A90  7C 08 02 A6 */	mflr r0
/* 80A28A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A28A98  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A28A9C  7C 7F 1B 78 */	mr r31, r3
/* 80A28AA0  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A28AA4  2C 00 00 00 */	cmpwi r0, 0
/* 80A28AA8  41 82 00 18 */	beq lbl_80A28AC0
/* 80A28AAC  40 80 00 08 */	bge lbl_80A28AB4
/* 80A28AB0  48 00 00 A8 */	b lbl_80A28B58
lbl_80A28AB4:
/* 80A28AB4  2C 00 00 02 */	cmpwi r0, 2
/* 80A28AB8  40 80 00 A0 */	bge lbl_80A28B58
/* 80A28ABC  48 00 00 48 */	b lbl_80A28B04
lbl_80A28AC0:
/* 80A28AC0  38 80 00 00 */	li r4, 0
/* 80A28AC4  4B FF F0 69 */	bl setLookMode__15daNpcKasiMich_cFi
/* 80A28AC8  7F E3 FB 78 */	mr r3, r31
/* 80A28ACC  38 80 00 04 */	li r4, 4
/* 80A28AD0  3C A0 80 A3 */	lis r5, lit_4249@ha /* 0x80A2A0D8@ha */
/* 80A28AD4  C0 25 A0 D8 */	lfs f1, lit_4249@l(r5)  /* 0x80A2A0D8@l */
/* 80A28AD8  38 A0 00 00 */	li r5, 0
/* 80A28ADC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A28AE0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A28AE4  7D 89 03 A6 */	mtctr r12
/* 80A28AE8  4E 80 04 21 */	bctrl 
/* 80A28AEC  3C 60 80 A3 */	lis r3, lit_4449@ha /* 0x80A2A0F0@ha */
/* 80A28AF0  C0 03 A0 F0 */	lfs f0, lit_4449@l(r3)  /* 0x80A2A0F0@l */
/* 80A28AF4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A28AF8  38 00 00 01 */	li r0, 1
/* 80A28AFC  B0 1F 14 04 */	sth r0, 0x1404(r31)
/* 80A28B00  48 00 00 58 */	b lbl_80A28B58
lbl_80A28B04:
/* 80A28B04  38 7F 08 F2 */	addi r3, r31, 0x8f2
/* 80A28B08  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80A28B0C  38 A0 10 00 */	li r5, 0x1000
/* 80A28B10  4B 84 80 81 */	bl cLib_chaseAngleS__FPsss
/* 80A28B14  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80A28B18  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 80A28B1C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80A28B20  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80A28B24  2C 03 00 00 */	cmpwi r3, 0
/* 80A28B28  41 82 00 30 */	beq lbl_80A28B58
/* 80A28B2C  3C 60 80 A3 */	lis r3, lit_5134@ha /* 0x80A2A618@ha */
/* 80A28B30  38 83 A6 18 */	addi r4, r3, lit_5134@l /* 0x80A2A618@l */
/* 80A28B34  80 64 00 00 */	lwz r3, 0(r4)
/* 80A28B38  80 04 00 04 */	lwz r0, 4(r4)
/* 80A28B3C  90 61 00 08 */	stw r3, 8(r1)
/* 80A28B40  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A28B44  80 04 00 08 */	lwz r0, 8(r4)
/* 80A28B48  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A28B4C  7F E3 FB 78 */	mr r3, r31
/* 80A28B50  38 81 00 08 */	addi r4, r1, 8
/* 80A28B54  4B FF EF 31 */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
lbl_80A28B58:
/* 80A28B58  38 60 00 01 */	li r3, 1
/* 80A28B5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A28B60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A28B64  7C 08 03 A6 */	mtlr r0
/* 80A28B68  38 21 00 20 */	addi r1, r1, 0x20
/* 80A28B6C  4E 80 00 20 */	blr 
