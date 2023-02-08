lbl_802C3AFC:
/* 802C3AFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C3B00  7C 08 02 A6 */	mflr r0
/* 802C3B04  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C3B08  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C3B0C  50 80 3E 30 */	rlwimi r0, r4, 7, 0x18, 0x18
/* 802C3B10  98 03 00 CB */	stb r0, 0xcb(r3)
/* 802C3B14  88 03 00 CB */	lbz r0, 0xcb(r3)
/* 802C3B18  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 802C3B1C  41 82 00 58 */	beq lbl_802C3B74
/* 802C3B20  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020050@ha */
/* 802C3B24  38 03 00 50 */	addi r0, r3, 0x0050 /* 0x00020050@l */
/* 802C3B28  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C3B2C  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802C3B30  38 81 00 0C */	addi r4, r1, 0xc
/* 802C3B34  38 A0 00 00 */	li r5, 0
/* 802C3B38  38 C0 00 00 */	li r6, 0
/* 802C3B3C  38 E0 00 00 */	li r7, 0
/* 802C3B40  C0 22 C2 98 */	lfs f1, lit_3721(r2)
/* 802C3B44  FC 40 08 90 */	fmr f2, f1
/* 802C3B48  C0 62 C2 9C */	lfs f3, lit_3722(r2)
/* 802C3B4C  FC 80 18 90 */	fmr f4, f3
/* 802C3B50  39 00 00 00 */	li r8, 0
/* 802C3B54  4B FE 7E 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802C3B58  80 6D 85 C0 */	lwz r3, data_80450B40(r13)
/* 802C3B5C  38 80 00 01 */	li r4, 1
/* 802C3B60  4B FF 72 BD */	bl setFxForceOff__11Z2FxLineMgrFb
/* 802C3B64  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802C3B68  38 80 00 20 */	li r4, 0x20
/* 802C3B6C  4B FF C4 81 */	bl setGhostEnemyState__13Z2SoundObjMgrFUc
/* 802C3B70  48 00 00 54 */	b lbl_802C3BC4
lbl_802C3B74:
/* 802C3B74  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020095@ha */
/* 802C3B78  38 03 00 95 */	addi r0, r3, 0x0095 /* 0x00020095@l */
/* 802C3B7C  90 01 00 08 */	stw r0, 8(r1)
/* 802C3B80  80 6D 86 08 */	lwz r3, data_80450B88(r13)
/* 802C3B84  38 81 00 08 */	addi r4, r1, 8
/* 802C3B88  38 A0 00 00 */	li r5, 0
/* 802C3B8C  38 C0 00 00 */	li r6, 0
/* 802C3B90  38 E0 00 00 */	li r7, 0
/* 802C3B94  C0 22 C2 98 */	lfs f1, lit_3721(r2)
/* 802C3B98  FC 40 08 90 */	fmr f2, f1
/* 802C3B9C  C0 62 C2 9C */	lfs f3, lit_3722(r2)
/* 802C3BA0  FC 80 18 90 */	fmr f4, f3
/* 802C3BA4  39 00 00 00 */	li r8, 0
/* 802C3BA8  4B FE 7D DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802C3BAC  80 6D 85 C0 */	lwz r3, data_80450B40(r13)
/* 802C3BB0  38 80 00 00 */	li r4, 0
/* 802C3BB4  4B FF 72 69 */	bl setFxForceOff__11Z2FxLineMgrFb
/* 802C3BB8  80 6D 85 C8 */	lwz r3, data_80450B48(r13)
/* 802C3BBC  38 80 00 10 */	li r4, 0x10
/* 802C3BC0  4B FF C4 2D */	bl setGhostEnemyState__13Z2SoundObjMgrFUc
lbl_802C3BC4:
/* 802C3BC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C3BC8  7C 08 03 A6 */	mtlr r0
/* 802C3BCC  38 21 00 10 */	addi r1, r1, 0x10
/* 802C3BD0  4E 80 00 20 */	blr 
