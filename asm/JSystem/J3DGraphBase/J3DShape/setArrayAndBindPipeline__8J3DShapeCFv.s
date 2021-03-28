lbl_80315398:
/* 80315398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031539C  7C 08 02 A6 */	mflr r0
/* 803153A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803153A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803153A8  7C 7F 1B 78 */	mr r31, r3
/* 803153AC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803153B0  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 803153B4  90 0D 90 28 */	stw r0, sCurrentPipeline__11J3DShapeMtx(r13)
/* 803153B8  4B FF FB 35 */	bl loadVtxArray__8J3DShapeCFv
/* 803153BC  80 9F 00 58 */	lwz r4, 0x58(r31)
/* 803153C0  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 803153C4  80 03 00 00 */	lwz r0, 0(r3)
/* 803153C8  54 00 10 3A */	slwi r0, r0, 2
/* 803153CC  7C 84 00 2E */	lwzx r4, r4, r0
/* 803153D0  3C 60 80 43 */	lis r3, j3dSys@ha
/* 803153D4  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 803153D8  90 83 01 04 */	stw r4, 0x104(r3)
/* 803153DC  38 60 00 15 */	li r3, 0x15
/* 803153E0  38 A0 00 30 */	li r5, 0x30
/* 803153E4  48 04 67 45 */	bl GXSetArray
/* 803153E8  80 9F 00 5C */	lwz r4, 0x5c(r31)
/* 803153EC  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 803153F0  80 03 00 00 */	lwz r0, 0(r3)
/* 803153F4  54 00 10 3A */	slwi r0, r0, 2
/* 803153F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 803153FC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80315400  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80315404  90 83 01 08 */	stw r4, 0x108(r3)
/* 80315408  38 60 00 16 */	li r3, 0x16
/* 8031540C  38 A0 00 24 */	li r5, 0x24
/* 80315410  48 04 67 19 */	bl GXSetArray
/* 80315414  80 1F 00 54 */	lwz r0, 0x54(r31)
/* 80315418  90 0D 90 2C */	stw r0, sCurrentScaleFlag__11J3DShapeMtx(r13)
/* 8031541C  88 1F 00 34 */	lbz r0, 0x34(r31)
/* 80315420  98 0D 90 30 */	stb r0, struct_804515B0+0x0(r13)
/* 80315424  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 80315428  98 0D 90 54 */	stb r0, data_804515D4(r13)
/* 8031542C  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80315430  54 00 04 26 */	rlwinm r0, r0, 0, 0x10, 0x13
/* 80315434  90 0D 90 34 */	stw r0, sTexMtxLoadType__11J3DShapeMtx(r13)
/* 80315438  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031543C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80315440  7C 08 03 A6 */	mtlr r0
/* 80315444  38 21 00 10 */	addi r1, r1, 0x10
/* 80315448  4E 80 00 20 */	blr 
