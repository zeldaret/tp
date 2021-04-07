lbl_802176EC:
/* 802176EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802176F0  7C 08 02 A6 */	mflr r0
/* 802176F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802176F8  39 61 00 20 */	addi r11, r1, 0x20
/* 802176FC  48 14 AA DD */	bl _savegpr_28
/* 80217700  7C 7F 1B 78 */	mr r31, r3
/* 80217704  7C 9C 23 78 */	mr r28, r4
/* 80217708  38 A0 00 01 */	li r5, 1
/* 8021770C  38 DF 07 64 */	addi r6, r31, 0x764
/* 80217710  48 00 2B E5 */	bl getActionString__13dMeter2Draw_cFUcUcPUc
/* 80217714  7C 7D 1B 78 */	mr r29, r3
/* 80217718  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8021771C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80217720  88 63 5E 4E */	lbz r3, 0x5e4e(r3)
/* 80217724  54 60 FF FF */	rlwinm. r0, r3, 0x1f, 0x1f, 0x1f
/* 80217728  40 82 00 0C */	bne lbl_80217734
/* 8021772C  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 80217730  41 82 00 0C */	beq lbl_8021773C
lbl_80217734:
/* 80217734  38 00 00 07 */	li r0, 7
/* 80217738  98 1F 07 64 */	stb r0, 0x764(r31)
lbl_8021773C:
/* 8021773C  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 80217740  28 03 00 27 */	cmplwi r3, 0x27
/* 80217744  40 82 00 18 */	bne lbl_8021775C
/* 80217748  80 7F 03 5C */	lwz r3, 0x35c(r31)
/* 8021774C  48 03 DE BD */	bl hide__13CPaneMgrAlphaFv
/* 80217750  80 7F 03 08 */	lwz r3, 0x308(r31)
/* 80217754  48 03 DE B5 */	bl hide__13CPaneMgrAlphaFv
/* 80217758  48 00 00 44 */	b lbl_8021779C
lbl_8021775C:
/* 8021775C  88 1D 00 00 */	lbz r0, 0(r29)
/* 80217760  7C 00 07 75 */	extsb. r0, r0
/* 80217764  41 82 00 28 */	beq lbl_8021778C
/* 80217768  28 03 00 2F */	cmplwi r3, 0x2f
/* 8021776C  41 82 00 20 */	beq lbl_8021778C
/* 80217770  28 03 00 08 */	cmplwi r3, 8
/* 80217774  41 82 00 18 */	beq lbl_8021778C
/* 80217778  80 7F 03 5C */	lwz r3, 0x35c(r31)
/* 8021777C  48 03 DE 4D */	bl show__13CPaneMgrAlphaFv
/* 80217780  80 7F 03 08 */	lwz r3, 0x308(r31)
/* 80217784  48 03 DE 85 */	bl hide__13CPaneMgrAlphaFv
/* 80217788  48 00 00 14 */	b lbl_8021779C
lbl_8021778C:
/* 8021778C  80 7F 03 5C */	lwz r3, 0x35c(r31)
/* 80217790  48 03 DE 79 */	bl hide__13CPaneMgrAlphaFv
/* 80217794  80 7F 03 08 */	lwz r3, 0x308(r31)
/* 80217798  48 03 DE 31 */	bl show__13CPaneMgrAlphaFv
lbl_8021779C:
/* 8021779C  3B 80 00 00 */	li r28, 0
/* 802177A0  3B C0 00 00 */	li r30, 0
lbl_802177A4:
/* 802177A4  38 1E 00 F0 */	addi r0, r30, 0xf0
/* 802177A8  7C 7F 00 2E */	lwzx r3, r31, r0
/* 802177AC  80 63 00 04 */	lwz r3, 4(r3)
/* 802177B0  48 0E 8E A9 */	bl getStringPtr__10J2DTextBoxCFv
/* 802177B4  7F A4 EB 78 */	mr r4, r29
/* 802177B8  48 15 13 75 */	bl strcpy
/* 802177BC  3B 9C 00 01 */	addi r28, r28, 1
/* 802177C0  2C 1C 00 05 */	cmpwi r28, 5
/* 802177C4  3B DE 00 0C */	addi r30, r30, 0xc
/* 802177C8  41 80 FF DC */	blt lbl_802177A4
/* 802177CC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802177D0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802177D4  C0 03 01 74 */	lfs f0, 0x174(r3)
/* 802177D8  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 802177DC  80 63 00 04 */	lwz r3, 4(r3)
/* 802177E0  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802177E4  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802177E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802177EC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802177F0  7D 89 03 A6 */	mtctr r12
/* 802177F4  4E 80 04 21 */	bctrl 
/* 802177F8  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 802177FC  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80217800  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80217804  C0 24 01 7C */	lfs f1, 0x17c(r4)
/* 80217808  C0 44 01 80 */	lfs f2, 0x180(r4)
/* 8021780C  48 03 CD A5 */	bl paneTrans__8CPaneMgrFff
/* 80217810  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80217814  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 80217818  C0 03 01 E0 */	lfs f0, 0x1e0(r3)
/* 8021781C  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 80217820  80 63 00 04 */	lwz r3, 4(r3)
/* 80217824  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 80217828  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 8021782C  81 83 00 00 */	lwz r12, 0(r3)
/* 80217830  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80217834  7D 89 03 A6 */	mtctr r12
/* 80217838  4E 80 04 21 */	bctrl 
/* 8021783C  80 7F 03 34 */	lwz r3, 0x334(r31)
/* 80217840  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80217844  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80217848  C0 24 01 D8 */	lfs f1, 0x1d8(r4)
/* 8021784C  C0 1F 06 B4 */	lfs f0, 0x6b4(r31)
/* 80217850  EC 21 00 2A */	fadds f1, f1, f0
/* 80217854  C0 44 01 DC */	lfs f2, 0x1dc(r4)
/* 80217858  C0 1F 06 C0 */	lfs f0, 0x6c0(r31)
/* 8021785C  EC 42 00 2A */	fadds f2, f2, f0
/* 80217860  48 03 CD 51 */	bl paneTrans__8CPaneMgrFff
/* 80217864  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80217868  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021786C  C0 03 02 A0 */	lfs f0, 0x2a0(r3)
/* 80217870  80 7F 03 24 */	lwz r3, 0x324(r31)
/* 80217874  80 63 00 04 */	lwz r3, 4(r3)
/* 80217878  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 8021787C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 80217880  81 83 00 00 */	lwz r12, 0(r3)
/* 80217884  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80217888  7D 89 03 A6 */	mtctr r12
/* 8021788C  4E 80 04 21 */	bctrl 
/* 80217890  80 7F 03 24 */	lwz r3, 0x324(r31)
/* 80217894  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80217898  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8021789C  C0 24 02 A4 */	lfs f1, 0x2a4(r4)
/* 802178A0  C0 44 02 A8 */	lfs f2, 0x2a8(r4)
/* 802178A4  48 03 CD 0D */	bl paneTrans__8CPaneMgrFff
/* 802178A8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802178AC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 802178B0  C0 03 03 2C */	lfs f0, 0x32c(r3)
/* 802178B4  80 7F 03 5C */	lwz r3, 0x35c(r31)
/* 802178B8  80 63 00 04 */	lwz r3, 4(r3)
/* 802178BC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 802178C0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 802178C4  81 83 00 00 */	lwz r12, 0(r3)
/* 802178C8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 802178CC  7D 89 03 A6 */	mtctr r12
/* 802178D0  4E 80 04 21 */	bctrl 
/* 802178D4  80 7F 03 5C */	lwz r3, 0x35c(r31)
/* 802178D8  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802178DC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 802178E0  C0 24 03 30 */	lfs f1, 0x330(r4)
/* 802178E4  C0 44 03 34 */	lfs f2, 0x334(r4)
/* 802178E8  48 03 CC C9 */	bl paneTrans__8CPaneMgrFff
/* 802178EC  39 61 00 20 */	addi r11, r1, 0x20
/* 802178F0  48 14 A9 35 */	bl _restgpr_28
/* 802178F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802178F8  7C 08 03 A6 */	mtlr r0
/* 802178FC  38 21 00 20 */	addi r1, r1, 0x20
/* 80217900  4E 80 00 20 */	blr 
