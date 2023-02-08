lbl_8021B364:
/* 8021B364  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8021B368  7C 08 02 A6 */	mflr r0
/* 8021B36C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8021B370  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8021B374  7C 7F 1B 78 */	mr r31, r3
/* 8021B378  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021B37C  38 A3 EB C8 */	addi r5, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021B380  88 05 04 27 */	lbz r0, 0x427(r5)
/* 8021B384  28 00 00 00 */	cmplwi r0, 0
/* 8021B388  41 82 00 40 */	beq lbl_8021B3C8
/* 8021B38C  C0 05 01 C0 */	lfs f0, 0x1c0(r5)
/* 8021B390  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8021B394  C0 05 01 C4 */	lfs f0, 0x1c4(r5)
/* 8021B398  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8021B39C  C0 05 01 C8 */	lfs f0, 0x1c8(r5)
/* 8021B3A0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8021B3A4  C0 05 01 E8 */	lfs f0, 0x1e8(r5)
/* 8021B3A8  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8021B3AC  C0 05 01 F4 */	lfs f0, 0x1f4(r5)
/* 8021B3B0  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8021B3B4  C0 05 02 04 */	lfs f0, 0x204(r5)
/* 8021B3B8  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8021B3BC  C0 05 02 14 */	lfs f0, 0x214(r5)
/* 8021B3C0  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8021B3C4  48 00 01 D8 */	b lbl_8021B59C
lbl_8021B3C8:
/* 8021B3C8  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 8021B3CC  38 03 FF C0 */	addi r0, r3, -64
/* 8021B3D0  28 00 00 08 */	cmplwi r0, 8
/* 8021B3D4  41 81 01 34 */	bgt lbl_8021B508
/* 8021B3D8  3C 60 80 3C */	lis r3, lit_9030@ha /* 0x803BF578@ha */
/* 8021B3DC  38 63 F5 78 */	addi r3, r3, lit_9030@l /* 0x803BF578@l */
/* 8021B3E0  54 00 10 3A */	slwi r0, r0, 2
/* 8021B3E4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8021B3E8  7C 09 03 A6 */	mtctr r0
/* 8021B3EC  4E 80 04 20 */	bctr 
/* 8021B3F0  C0 02 AF 28 */	lfs f0, lit_9025(r2)
/* 8021B3F4  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8021B3F8  C0 02 AF 2C */	lfs f0, lit_9026(r2)
/* 8021B3FC  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8021B400  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021B404  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8021B408  C0 02 AE 88 */	lfs f0, lit_4184(r2)
/* 8021B40C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8021B410  C0 02 AE F8 */	lfs f0, lit_8996(r2)
/* 8021B414  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8021B418  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8021B41C  C0 02 AE FC */	lfs f0, lit_8997(r2)
/* 8021B420  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8021B424  48 00 01 78 */	b lbl_8021B59C
/* 8021B428  C0 02 AF 1C */	lfs f0, lit_9005(r2)
/* 8021B42C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8021B430  C0 02 AF 30 */	lfs f0, lit_9027(r2)
/* 8021B434  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8021B438  C0 02 AF 08 */	lfs f0, lit_9000(r2)
/* 8021B43C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8021B440  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B444  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8021B448  C0 02 AE F8 */	lfs f0, lit_8996(r2)
/* 8021B44C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8021B450  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8021B454  C0 02 AE FC */	lfs f0, lit_8997(r2)
/* 8021B458  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8021B45C  48 00 01 40 */	b lbl_8021B59C
/* 8021B460  C0 02 AF 2C */	lfs f0, lit_9026(r2)
/* 8021B464  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8021B468  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8021B46C  C0 02 AE F0 */	lfs f0, lit_8994(r2)
/* 8021B470  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8021B474  C0 02 AE 80 */	lfs f0, lit_4182(r2)
/* 8021B478  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8021B47C  C0 02 AE F8 */	lfs f0, lit_8996(r2)
/* 8021B480  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8021B484  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8021B488  C0 02 AE FC */	lfs f0, lit_8997(r2)
/* 8021B48C  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8021B490  48 00 01 0C */	b lbl_8021B59C
/* 8021B494  C0 02 AF 34 */	lfs f0, lit_9028(r2)
/* 8021B498  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8021B49C  C0 02 AE F4 */	lfs f0, lit_8995(r2)
/* 8021B4A0  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8021B4A4  C0 02 AF 0C */	lfs f0, lit_9001(r2)
/* 8021B4A8  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8021B4AC  C0 02 AF 10 */	lfs f0, lit_9002(r2)
/* 8021B4B0  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8021B4B4  C0 02 AE F8 */	lfs f0, lit_8996(r2)
/* 8021B4B8  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8021B4BC  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8021B4C0  C0 02 AE FC */	lfs f0, lit_8997(r2)
/* 8021B4C4  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8021B4C8  48 00 00 D4 */	b lbl_8021B59C
/* 8021B4CC  C0 02 AF 38 */	lfs f0, lit_9029(r2)
/* 8021B4D0  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8021B4D4  C0 05 01 C4 */	lfs f0, 0x1c4(r5)
/* 8021B4D8  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8021B4DC  C0 05 01 C8 */	lfs f0, 0x1c8(r5)
/* 8021B4E0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8021B4E4  C0 05 01 E8 */	lfs f0, 0x1e8(r5)
/* 8021B4E8  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8021B4EC  C0 05 01 F4 */	lfs f0, 0x1f4(r5)
/* 8021B4F0  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8021B4F4  C0 05 02 04 */	lfs f0, 0x204(r5)
/* 8021B4F8  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8021B4FC  C0 05 02 14 */	lfs f0, 0x214(r5)
/* 8021B500  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8021B504  48 00 00 98 */	b lbl_8021B59C
lbl_8021B508:
/* 8021B508  7C 83 23 78 */	mr r3, r4
/* 8021B50C  4B E8 01 FD */	bl isBottleItem__FUc
/* 8021B510  2C 03 00 00 */	cmpwi r3, 0
/* 8021B514  41 82 00 48 */	beq lbl_8021B55C
/* 8021B518  C0 02 AE C8 */	lfs f0, lit_6524(r2)
/* 8021B51C  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8021B520  C0 02 AF 20 */	lfs f0, lit_9006(r2)
/* 8021B524  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8021B528  C0 02 AF 24 */	lfs f0, lit_9007(r2)
/* 8021B52C  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8021B530  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021B534  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021B538  C0 03 01 E8 */	lfs f0, 0x1e8(r3)
/* 8021B53C  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8021B540  C0 03 01 F4 */	lfs f0, 0x1f4(r3)
/* 8021B544  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8021B548  C0 03 02 04 */	lfs f0, 0x204(r3)
/* 8021B54C  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8021B550  C0 03 02 14 */	lfs f0, 0x214(r3)
/* 8021B554  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 8021B558  48 00 00 44 */	b lbl_8021B59C
lbl_8021B55C:
/* 8021B55C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8021B560  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021B564  C0 03 01 C0 */	lfs f0, 0x1c0(r3)
/* 8021B568  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 8021B56C  C0 03 01 C4 */	lfs f0, 0x1c4(r3)
/* 8021B570  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 8021B574  C0 03 01 C8 */	lfs f0, 0x1c8(r3)
/* 8021B578  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 8021B57C  C0 03 01 E8 */	lfs f0, 0x1e8(r3)
/* 8021B580  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8021B584  C0 03 01 F4 */	lfs f0, 0x1f4(r3)
/* 8021B588  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8021B58C  C0 03 02 04 */	lfs f0, 0x204(r3)
/* 8021B590  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8021B594  C0 03 02 14 */	lfs f0, 0x214(r3)
/* 8021B598  D0 1F 00 38 */	stfs f0, 0x38(r31)
lbl_8021B59C:
/* 8021B59C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8021B5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8021B5A4  7C 08 03 A6 */	mtlr r0
/* 8021B5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8021B5AC  4E 80 00 20 */	blr 
