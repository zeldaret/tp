lbl_806ED5B0:
/* 806ED5B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806ED5B4  7C 08 02 A6 */	mflr r0
/* 806ED5B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806ED5BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806ED5C0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806ED5C4  7C 7E 1B 78 */	mr r30, r3
/* 806ED5C8  3C 80 80 6F */	lis r4, lit_3966@ha /* 0x806F0860@ha */
/* 806ED5CC  3B E4 08 60 */	addi r31, r4, lit_3966@l /* 0x806F0860@l */
/* 806ED5D0  80 03 06 C8 */	lwz r0, 0x6c8(r3)
/* 806ED5D4  2C 00 00 01 */	cmpwi r0, 1
/* 806ED5D8  41 82 00 74 */	beq lbl_806ED64C
/* 806ED5DC  40 80 00 D4 */	bge lbl_806ED6B0
/* 806ED5E0  2C 00 00 00 */	cmpwi r0, 0
/* 806ED5E4  40 80 00 08 */	bge lbl_806ED5EC
/* 806ED5E8  48 00 00 C8 */	b lbl_806ED6B0
lbl_806ED5EC:
/* 806ED5EC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 806ED5F0  D0 1E 05 30 */	stfs f0, 0x530(r30)
/* 806ED5F4  38 00 00 01 */	li r0, 1
/* 806ED5F8  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 806ED5FC  38 80 00 0B */	li r4, 0xb
/* 806ED600  38 A0 00 02 */	li r5, 2
/* 806ED604  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 806ED608  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806ED60C  4B FF D0 85 */	bl setBck__8daE_HZ_cFiUcff
/* 806ED610  7F C3 F3 78 */	mr r3, r30
/* 806ED614  38 80 00 01 */	li r4, 1
/* 806ED618  4B FF DA 8D */	bl setTgSetBit__8daE_HZ_cFi
/* 806ED61C  80 1E 0D 24 */	lwz r0, 0xd24(r30)
/* 806ED620  60 00 00 01 */	ori r0, r0, 1
/* 806ED624  90 1E 0D 24 */	stw r0, 0xd24(r30)
/* 806ED628  3C 00 00 01 */	lis r0, 1
/* 806ED62C  90 1E 0D 34 */	stw r0, 0xd34(r30)
/* 806ED630  38 00 00 01 */	li r0, 1
/* 806ED634  90 1E 06 C8 */	stw r0, 0x6c8(r30)
/* 806ED638  38 00 00 00 */	li r0, 0
/* 806ED63C  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 806ED640  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806ED644  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806ED648  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_806ED64C:
/* 806ED64C  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806ED650  38 63 00 0C */	addi r3, r3, 0xc
/* 806ED654  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806ED658  4B C3 AD D5 */	bl checkPass__12J3DFrameCtrlFf
/* 806ED65C  2C 03 00 00 */	cmpwi r3, 0
/* 806ED660  41 82 00 2C */	beq lbl_806ED68C
/* 806ED664  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070218@ha */
/* 806ED668  38 03 02 18 */	addi r0, r3, 0x0218 /* 0x00070218@l */
/* 806ED66C  90 01 00 08 */	stw r0, 8(r1)
/* 806ED670  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806ED674  38 81 00 08 */	addi r4, r1, 8
/* 806ED678  38 A0 FF FF */	li r5, -1
/* 806ED67C  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806ED680  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806ED684  7D 89 03 A6 */	mtctr r12
/* 806ED688  4E 80 04 21 */	bctrl 
lbl_806ED68C:
/* 806ED68C  A8 1E 06 D8 */	lha r0, 0x6d8(r30)
/* 806ED690  2C 00 00 00 */	cmpwi r0, 0
/* 806ED694  40 82 00 1C */	bne lbl_806ED6B0
/* 806ED698  7F C3 F3 78 */	mr r3, r30
/* 806ED69C  38 80 00 00 */	li r4, 0
/* 806ED6A0  4B FF DA 05 */	bl setTgSetBit__8daE_HZ_cFi
/* 806ED6A4  7F C3 F3 78 */	mr r3, r30
/* 806ED6A8  38 80 00 03 */	li r4, 3
/* 806ED6AC  4B FF D4 31 */	bl setActionMode__8daE_HZ_cFi
lbl_806ED6B0:
/* 806ED6B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806ED6B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806ED6B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806ED6BC  7C 08 03 A6 */	mtlr r0
/* 806ED6C0  38 21 00 20 */	addi r1, r1, 0x20
/* 806ED6C4  4E 80 00 20 */	blr 
