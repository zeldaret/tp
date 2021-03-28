lbl_80BC627C:
/* 80BC627C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BC6280  7C 08 02 A6 */	mflr r0
/* 80BC6284  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BC6288  39 61 00 60 */	addi r11, r1, 0x60
/* 80BC628C  4B 79 BF 4C */	b _savegpr_28
/* 80BC6290  7C 7F 1B 78 */	mr r31, r3
/* 80BC6294  3C 80 80 BC */	lis r4, l_cull_box@ha
/* 80BC6298  3B C4 6A 38 */	addi r30, r4, l_cull_box@l
/* 80BC629C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BC62A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BC62A4  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 80BC62A8  3B 80 00 00 */	li r28, 0
/* 80BC62AC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80BC62B0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BC62B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BC62B8  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80BC62BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80BC62C0  38 81 00 44 */	addi r4, r1, 0x44
/* 80BC62C4  48 00 03 09 */	bl getChainBasePos__11daObjCBlk_cFP4cXyz
/* 80BC62C8  38 61 00 20 */	addi r3, r1, 0x20
/* 80BC62CC  38 81 00 44 */	addi r4, r1, 0x44
/* 80BC62D0  80 BF 0C 18 */	lwz r5, 0xc18(r31)
/* 80BC62D4  38 A5 00 54 */	addi r5, r5, 0x54
/* 80BC62D8  4B 6A 08 5C */	b __mi__4cXyzCFRC3Vec
/* 80BC62DC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BC62E0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BC62E4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80BC62E8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BC62EC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80BC62F0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80BC62F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC62F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC62FC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80BC6300  4B 44 60 DC */	b mDoMtx_YrotS__FPA4_fs
/* 80BC6304  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC6308  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC630C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BC6310  7C 85 23 78 */	mr r5, r4
/* 80BC6314  4B 78 0A 58 */	b PSMTXMultVec
/* 80BC6318  38 61 00 14 */	addi r3, r1, 0x14
/* 80BC631C  38 81 00 38 */	addi r4, r1, 0x38
/* 80BC6320  4B 6A 0C 28 */	b normalizeZP__4cXyzFv
/* 80BC6324  38 61 00 08 */	addi r3, r1, 8
/* 80BC6328  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BC632C  4B 6A 0C 1C */	b normalizeZP__4cXyzFv
/* 80BC6330  38 61 00 38 */	addi r3, r1, 0x38
/* 80BC6334  38 81 00 2C */	addi r4, r1, 0x2c
/* 80BC6338  4B 78 0E 5C */	b PSVECDotProduct
/* 80BC633C  FC 00 0A 10 */	fabs f0, f1
/* 80BC6340  FC 20 00 18 */	frsp f1, f0
/* 80BC6344  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80BC6348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC634C  40 81 00 08 */	ble lbl_80BC6354
/* 80BC6350  3B 80 00 01 */	li r28, 1
lbl_80BC6354:
/* 80BC6354  88 1F 0C 1C */	lbz r0, 0xc1c(r31)
/* 80BC6358  28 00 00 00 */	cmplwi r0, 0
/* 80BC635C  41 82 00 98 */	beq lbl_80BC63F4
/* 80BC6360  88 1F 0C 1E */	lbz r0, 0xc1e(r31)
/* 80BC6364  28 00 00 00 */	cmplwi r0, 0
/* 80BC6368  41 82 00 8C */	beq lbl_80BC63F4
/* 80BC636C  7F E3 FB 78 */	mr r3, r31
/* 80BC6370  C0 3F 0C 20 */	lfs f1, 0xc20(r31)
/* 80BC6374  48 00 02 D5 */	bl setPower__11daObjCBlk_cFf
/* 80BC6378  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80BC637C  41 82 00 80 */	beq lbl_80BC63FC
/* 80BC6380  88 7F 0C A3 */	lbz r3, 0xca3(r31)
/* 80BC6384  38 03 00 01 */	addi r0, r3, 1
/* 80BC6388  98 1F 0C A3 */	stb r0, 0xca3(r31)
/* 80BC638C  7F E3 FB 78 */	mr r3, r31
/* 80BC6390  48 00 03 4D */	bl checkWall__11daObjCBlk_cFv
/* 80BC6394  2C 03 00 00 */	cmpwi r3, 0
/* 80BC6398  40 82 00 64 */	bne lbl_80BC63FC
/* 80BC639C  7F A3 EB 78 */	mr r3, r29
/* 80BC63A0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80BC63A4  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80BC63A8  7D 89 03 A6 */	mtctr r12
/* 80BC63AC  4E 80 04 21 */	bctrl 
/* 80BC63B0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 80BC63B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC63B8  40 81 00 44 */	ble lbl_80BC63FC
/* 80BC63BC  7F A3 EB 78 */	mr r3, r29
/* 80BC63C0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80BC63C4  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 80BC63C8  7D 89 03 A6 */	mtctr r12
/* 80BC63CC  4E 80 04 21 */	bctrl 
/* 80BC63D0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80BC63D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BC63D8  40 80 00 24 */	bge lbl_80BC63FC
/* 80BC63DC  88 1F 0C A3 */	lbz r0, 0xca3(r31)
/* 80BC63E0  28 00 00 08 */	cmplwi r0, 8
/* 80BC63E4  40 81 00 18 */	ble lbl_80BC63FC
/* 80BC63E8  7F E3 FB 78 */	mr r3, r31
/* 80BC63EC  48 00 00 29 */	bl initWalk__11daObjCBlk_cFv
/* 80BC63F0  48 00 00 0C */	b lbl_80BC63FC
lbl_80BC63F4:
/* 80BC63F4  38 00 00 00 */	li r0, 0
/* 80BC63F8  98 1F 0C A3 */	stb r0, 0xca3(r31)
lbl_80BC63FC:
/* 80BC63FC  39 61 00 60 */	addi r11, r1, 0x60
/* 80BC6400  4B 79 BE 24 */	b _restgpr_28
/* 80BC6404  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BC6408  7C 08 03 A6 */	mtlr r0
/* 80BC640C  38 21 00 60 */	addi r1, r1, 0x60
/* 80BC6410  4E 80 00 20 */	blr 
