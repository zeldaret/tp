lbl_8021B5B0:
/* 8021B5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021B5B4  7C 08 02 A6 */	mflr r0
/* 8021B5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021B5BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021B5C0  7C 7F 1B 78 */	mr r31, r3
/* 8021B5C4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021B5C8  38 A3 EB C8 */	addi r5, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021B5CC  88 05 04 28 */	lbz r0, 0x428(r5)
/* 8021B5D0  28 00 00 00 */	cmplwi r0, 0
/* 8021B5D4  41 82 00 40 */	beq lbl_8021B614
/* 8021B5D8  C0 05 01 CC */	lfs f0, 0x1cc(r5)
/* 8021B5DC  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8021B5E0  C0 05 01 D0 */	lfs f0, 0x1d0(r5)
/* 8021B5E4  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8021B5E8  C0 05 01 D4 */	lfs f0, 0x1d4(r5)
/* 8021B5EC  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8021B5F0  C0 05 01 EC */	lfs f0, 0x1ec(r5)
/* 8021B5F4  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8021B5F8  C0 05 01 F8 */	lfs f0, 0x1f8(r5)
/* 8021B5FC  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8021B600  C0 05 02 08 */	lfs f0, 0x208(r5)
/* 8021B604  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8021B608  C0 05 02 18 */	lfs f0, 0x218(r5)
/* 8021B60C  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8021B610  48 00 01 EC */	b lbl_8021B7FC
lbl_8021B614:
/* 8021B614  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8021B618  38 03 FF C0 */	addi r0, r3, -64
/* 8021B61C  28 00 00 08 */	cmplwi r0, 8
/* 8021B620  41 81 01 48 */	bgt lbl_8021B768
/* 8021B624  3C 60 80 3C */	lis r3, lit_9053@ha /* 0x803BF59C@ha */
/* 8021B628  38 63 F5 9C */	addi r3, r3, lit_9053@l /* 0x803BF59C@l */
/* 8021B62C  54 00 10 3A */	slwi r0, r0, 2
/* 8021B630  7C 03 00 2E */	lwzx r0, r3, r0
/* 8021B634  7C 09 03 A6 */	mtctr r0
/* 8021B638  4E 80 04 20 */	bctr 
/* 8021B63C  C0 02 AE E8 */	lfs f0, lit_8992(r2)
/* 8021B640  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8021B644  C0 02 AF 2C */	lfs f0, lit_9026(r2)
/* 8021B648  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8021B64C  C0 02 AF 3C */	lfs f0, lit_9047(r2)
/* 8021B650  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8021B654  C0 02 AE 88 */	lfs f0, lit_4184(r2)
/* 8021B658  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8021B65C  C0 02 AF 28 */	lfs f0, lit_9025(r2)
/* 8021B660  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8021B664  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021B668  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8021B66C  C0 02 AF 44 */	lfs f0, lit_9049(r2)
/* 8021B670  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8021B674  48 00 01 88 */	b lbl_8021B7FC
/* 8021B678  C0 02 AF 1C */	lfs f0, lit_9005(r2)
/* 8021B67C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8021B680  C0 02 AF 2C */	lfs f0, lit_9026(r2)
/* 8021B684  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8021B688  C0 02 AF 3C */	lfs f0, lit_9047(r2)
/* 8021B68C  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8021B690  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B694  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8021B698  C0 02 AF 28 */	lfs f0, lit_9025(r2)
/* 8021B69C  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8021B6A0  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021B6A4  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8021B6A8  C0 02 AF 44 */	lfs f0, lit_9049(r2)
/* 8021B6AC  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8021B6B0  48 00 01 4C */	b lbl_8021B7FC
/* 8021B6B4  C0 02 AF 30 */	lfs f0, lit_9027(r2)
/* 8021B6B8  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8021B6BC  C0 02 AF 00 */	lfs f0, lit_8998(r2)
/* 8021B6C0  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8021B6C4  C0 02 AF 3C */	lfs f0, lit_9047(r2)
/* 8021B6C8  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8021B6CC  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B6D0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8021B6D4  C0 02 AF 28 */	lfs f0, lit_9025(r2)
/* 8021B6D8  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8021B6DC  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021B6E0  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8021B6E4  C0 02 AF 48 */	lfs f0, lit_9050(r2)
/* 8021B6E8  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8021B6EC  48 00 01 10 */	b lbl_8021B7FC
/* 8021B6F0  C0 02 AE F4 */	lfs f0, lit_8995(r2)
/* 8021B6F4  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8021B6F8  C0 02 AF 2C */	lfs f0, lit_9026(r2)
/* 8021B6FC  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8021B700  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021B704  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8021B708  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B70C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8021B710  C0 02 AF 4C */	lfs f0, lit_9051(r2)
/* 8021B714  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8021B718  C0 02 AF 40 */	lfs f0, lit_9048(r2)
/* 8021B71C  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8021B720  C0 02 AF 48 */	lfs f0, lit_9050(r2)
/* 8021B724  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8021B728  48 00 00 D4 */	b lbl_8021B7FC
/* 8021B72C  C0 02 AF 30 */	lfs f0, lit_9027(r2)
/* 8021B730  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8021B734  C0 02 AF 34 */	lfs f0, lit_9028(r2)
/* 8021B738  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8021B73C  C0 05 01 D4 */	lfs f0, 0x1d4(r5)
/* 8021B740  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8021B744  C0 05 01 EC */	lfs f0, 0x1ec(r5)
/* 8021B748  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8021B74C  C0 05 01 F8 */	lfs f0, 0x1f8(r5)
/* 8021B750  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8021B754  C0 05 02 08 */	lfs f0, 0x208(r5)
/* 8021B758  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8021B75C  C0 05 02 18 */	lfs f0, 0x218(r5)
/* 8021B760  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8021B764  48 00 00 98 */	b lbl_8021B7FC
lbl_8021B768:
/* 8021B768  7C 83 23 78 */	mr r3, r4
/* 8021B76C  4B E7 FF 9D */	bl isBottleItem__FUc
/* 8021B770  2C 03 00 00 */	cmpwi r3, 0
/* 8021B774  41 82 00 48 */	beq lbl_8021B7BC
/* 8021B778  C0 02 AF 50 */	lfs f0, lit_9052(r2)
/* 8021B77C  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8021B780  C0 02 AE 88 */	lfs f0, lit_4184(r2)
/* 8021B784  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8021B788  C0 02 AF 24 */	lfs f0, lit_9007(r2)
/* 8021B78C  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8021B790  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021B794  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021B798  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 8021B79C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8021B7A0  C0 03 01 F8 */	lfs f0, 0x1f8(r3)
/* 8021B7A4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8021B7A8  C0 03 02 08 */	lfs f0, 0x208(r3)
/* 8021B7AC  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8021B7B0  C0 03 02 18 */	lfs f0, 0x218(r3)
/* 8021B7B4  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 8021B7B8  48 00 00 44 */	b lbl_8021B7FC
lbl_8021B7BC:
/* 8021B7BC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021B7C0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021B7C4  C0 03 01 CC */	lfs f0, 0x1cc(r3)
/* 8021B7C8  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 8021B7CC  C0 03 01 D0 */	lfs f0, 0x1d0(r3)
/* 8021B7D0  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8021B7D4  C0 03 01 D4 */	lfs f0, 0x1d4(r3)
/* 8021B7D8  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8021B7DC  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 8021B7E0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8021B7E4  C0 03 01 F8 */	lfs f0, 0x1f8(r3)
/* 8021B7E8  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 8021B7EC  C0 03 02 08 */	lfs f0, 0x208(r3)
/* 8021B7F0  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 8021B7F4  C0 03 02 18 */	lfs f0, 0x218(r3)
/* 8021B7F8  D0 1F 00 54 */	stfs f0, 0x54(r31)
lbl_8021B7FC:
/* 8021B7FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021B800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021B804  7C 08 03 A6 */	mtlr r0
/* 8021B808  38 21 00 10 */	addi r1, r1, 0x10
/* 8021B80C  4E 80 00 20 */	blr 
