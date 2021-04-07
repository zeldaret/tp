lbl_80AA1330:
/* 80AA1330  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA1334  7C 08 02 A6 */	mflr r0
/* 80AA1338  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA133C  3C 60 80 AA */	lis r3, cNullVec__6Z2Calc@ha /* 0x80AA192C@ha */
/* 80AA1340  38 83 19 2C */	addi r4, r3, cNullVec__6Z2Calc@l /* 0x80AA192C@l */
/* 80AA1344  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AA1348  38 A3 21 80 */	addi r5, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AA134C  80 65 00 00 */	lwz r3, 0(r5)
/* 80AA1350  80 05 00 04 */	lwz r0, 4(r5)
/* 80AA1354  90 64 0D E0 */	stw r3, 0xde0(r4)
/* 80AA1358  90 04 0D E4 */	stw r0, 0xde4(r4)
/* 80AA135C  80 05 00 08 */	lwz r0, 8(r5)
/* 80AA1360  90 04 0D E8 */	stw r0, 0xde8(r4)
/* 80AA1364  38 64 0D E0 */	addi r3, r4, 0xde0
/* 80AA1368  80 A4 0D 68 */	lwz r5, 0xd68(r4)
/* 80AA136C  80 04 0D 6C */	lwz r0, 0xd6c(r4)
/* 80AA1370  90 A3 00 0C */	stw r5, 0xc(r3)
/* 80AA1374  90 03 00 10 */	stw r0, 0x10(r3)
/* 80AA1378  80 04 0D 70 */	lwz r0, 0xd70(r4)
/* 80AA137C  90 03 00 14 */	stw r0, 0x14(r3)
/* 80AA1380  80 A4 0D 74 */	lwz r5, 0xd74(r4)
/* 80AA1384  80 04 0D 78 */	lwz r0, 0xd78(r4)
/* 80AA1388  90 A3 00 18 */	stw r5, 0x18(r3)
/* 80AA138C  90 03 00 1C */	stw r0, 0x1c(r3)
/* 80AA1390  80 04 0D 7C */	lwz r0, 0xd7c(r4)
/* 80AA1394  90 03 00 20 */	stw r0, 0x20(r3)
/* 80AA1398  80 A4 0D 80 */	lwz r5, 0xd80(r4)
/* 80AA139C  80 04 0D 84 */	lwz r0, 0xd84(r4)
/* 80AA13A0  90 A3 00 24 */	stw r5, 0x24(r3)
/* 80AA13A4  90 03 00 28 */	stw r0, 0x28(r3)
/* 80AA13A8  80 04 0D 88 */	lwz r0, 0xd88(r4)
/* 80AA13AC  90 03 00 2C */	stw r0, 0x2c(r3)
/* 80AA13B0  80 A4 0D 8C */	lwz r5, 0xd8c(r4)
/* 80AA13B4  80 04 0D 90 */	lwz r0, 0xd90(r4)
/* 80AA13B8  90 A3 00 30 */	stw r5, 0x30(r3)
/* 80AA13BC  90 03 00 34 */	stw r0, 0x34(r3)
/* 80AA13C0  80 04 0D 94 */	lwz r0, 0xd94(r4)
/* 80AA13C4  90 03 00 38 */	stw r0, 0x38(r3)
/* 80AA13C8  80 A4 0D 98 */	lwz r5, 0xd98(r4)
/* 80AA13CC  80 04 0D 9C */	lwz r0, 0xd9c(r4)
/* 80AA13D0  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 80AA13D4  90 03 00 40 */	stw r0, 0x40(r3)
/* 80AA13D8  80 04 0D A0 */	lwz r0, 0xda0(r4)
/* 80AA13DC  90 03 00 44 */	stw r0, 0x44(r3)
/* 80AA13E0  80 A4 0D A4 */	lwz r5, 0xda4(r4)
/* 80AA13E4  80 04 0D A8 */	lwz r0, 0xda8(r4)
/* 80AA13E8  90 A3 00 48 */	stw r5, 0x48(r3)
/* 80AA13EC  90 03 00 4C */	stw r0, 0x4c(r3)
/* 80AA13F0  80 04 0D AC */	lwz r0, 0xdac(r4)
/* 80AA13F4  90 03 00 50 */	stw r0, 0x50(r3)
/* 80AA13F8  80 A4 0D B0 */	lwz r5, 0xdb0(r4)
/* 80AA13FC  80 04 0D B4 */	lwz r0, 0xdb4(r4)
/* 80AA1400  90 A3 00 54 */	stw r5, 0x54(r3)
/* 80AA1404  90 03 00 58 */	stw r0, 0x58(r3)
/* 80AA1408  80 04 0D B8 */	lwz r0, 0xdb8(r4)
/* 80AA140C  90 03 00 5C */	stw r0, 0x5c(r3)
/* 80AA1410  80 A4 0D BC */	lwz r5, 0xdbc(r4)
/* 80AA1414  80 04 0D C0 */	lwz r0, 0xdc0(r4)
/* 80AA1418  90 A3 00 60 */	stw r5, 0x60(r3)
/* 80AA141C  90 03 00 64 */	stw r0, 0x64(r3)
/* 80AA1420  80 04 0D C4 */	lwz r0, 0xdc4(r4)
/* 80AA1424  90 03 00 68 */	stw r0, 0x68(r3)
/* 80AA1428  80 A4 0D C8 */	lwz r5, 0xdc8(r4)
/* 80AA142C  80 04 0D CC */	lwz r0, 0xdcc(r4)
/* 80AA1430  90 A3 00 6C */	stw r5, 0x6c(r3)
/* 80AA1434  90 03 00 70 */	stw r0, 0x70(r3)
/* 80AA1438  80 04 0D D0 */	lwz r0, 0xdd0(r4)
/* 80AA143C  90 03 00 74 */	stw r0, 0x74(r3)
/* 80AA1440  80 A4 0D D4 */	lwz r5, 0xdd4(r4)
/* 80AA1444  80 04 0D D8 */	lwz r0, 0xdd8(r4)
/* 80AA1448  90 A3 00 78 */	stw r5, 0x78(r3)
/* 80AA144C  90 03 00 7C */	stw r0, 0x7c(r3)
/* 80AA1450  80 04 0D DC */	lwz r0, 0xddc(r4)
/* 80AA1454  90 03 00 80 */	stw r0, 0x80(r3)
/* 80AA1458  3C 60 80 AA */	lis r3, __vt__24daNpc_Pachi_Taro_Param_c@ha /* 0x80AA2B74@ha */
/* 80AA145C  38 03 2B 74 */	addi r0, r3, __vt__24daNpc_Pachi_Taro_Param_c@l /* 0x80AA2B74@l */
/* 80AA1460  3C 60 80 AA */	lis r3, l_HIO@ha /* 0x80AA2B94@ha */
/* 80AA1464  94 03 2B 94 */	stwu r0, l_HIO@l(r3)  /* 0x80AA2B94@l */
/* 80AA1468  3C 80 80 AA */	lis r4, __dt__24daNpc_Pachi_Taro_Param_cFv@ha /* 0x80AA1598@ha */
/* 80AA146C  38 84 15 98 */	addi r4, r4, __dt__24daNpc_Pachi_Taro_Param_cFv@l /* 0x80AA1598@l */
/* 80AA1470  3C A0 80 AA */	lis r5, lit_3989@ha /* 0x80AA2B88@ha */
/* 80AA1474  38 A5 2B 88 */	addi r5, r5, lit_3989@l /* 0x80AA2B88@l */
/* 80AA1478  4B FF AD A1 */	bl __register_global_object
/* 80AA147C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA1480  7C 08 03 A6 */	mtlr r0
/* 80AA1484  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA1488  4E 80 00 20 */	blr 
