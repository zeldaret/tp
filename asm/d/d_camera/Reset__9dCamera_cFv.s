lbl_80180C68:
/* 80180C68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80180C6C  7C 08 02 A6 */	mflr r0
/* 80180C70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80180C74  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80180C78  7C 7F 1B 78 */	mr r31, r3
/* 80180C7C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80180C80  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 80180C84  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80180C88  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 80180C8C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80180C90  D0 03 00 6C */	stfs f0, 0x6c(r3)
/* 80180C94  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 80180C98  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 80180C9C  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 80180CA0  D0 03 00 74 */	stfs f0, 0x74(r3)
/* 80180CA4  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 80180CA8  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 80180CAC  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 80180CB0  D0 03 00 80 */	stfs f0, 0x80(r3)
/* 80180CB4  A8 03 00 54 */	lha r0, 0x54(r3)
/* 80180CB8  B0 03 00 7C */	sth r0, 0x7c(r3)
/* 80180CBC  38 61 00 0C */	addi r3, r1, 0xc
/* 80180CC0  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80180CC4  38 BF 00 30 */	addi r5, r31, 0x30
/* 80180CC8  48 0E 5E 6D */	bl __mi__4cXyzCFRC3Vec
/* 80180CCC  38 7F 00 28 */	addi r3, r31, 0x28
/* 80180CD0  38 81 00 0C */	addi r4, r1, 0xc
/* 80180CD4  48 0F 0D 9D */	bl Val__7cSGlobeFRC4cXyz
/* 80180CD8  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80180CDC  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 80180CE0  A8 1F 00 2C */	lha r0, 0x2c(r31)
/* 80180CE4  B0 1F 00 60 */	sth r0, 0x60(r31)
/* 80180CE8  A8 1F 00 2E */	lha r0, 0x2e(r31)
/* 80180CEC  B0 1F 00 62 */	sth r0, 0x62(r31)
/* 80180CF0  38 7F 00 2E */	addi r3, r31, 0x2e
/* 80180CF4  48 0F 03 F5 */	bl Inv__7cSAngleCFv
/* 80180CF8  7C 64 1B 78 */	mr r4, r3
/* 80180CFC  38 61 00 08 */	addi r3, r1, 8
/* 80180D00  48 0F 02 99 */	bl __ct__7cSAngleFs
/* 80180D04  A8 01 00 08 */	lha r0, 8(r1)
/* 80180D08  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 80180D0C  38 60 00 01 */	li r3, 1
/* 80180D10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80180D14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80180D18  7C 08 03 A6 */	mtlr r0
/* 80180D1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80180D20  4E 80 00 20 */	blr 
