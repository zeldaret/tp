lbl_802A165C:
/* 802A165C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A1660  7C 08 02 A6 */	mflr r0
/* 802A1664  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A1668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A166C  93 C1 00 08 */	stw r30, 8(r1)
/* 802A1670  88 03 02 BD */	lbz r0, 0x2bd(r3)
/* 802A1674  28 00 00 01 */	cmplwi r0, 1
/* 802A1678  40 82 00 98 */	bne lbl_802A1710
/* 802A167C  54 80 10 3A */	slwi r0, r4, 2
/* 802A1680  7F C3 02 14 */	add r30, r3, r0
/* 802A1684  80 1E 02 F0 */	lwz r0, 0x2f0(r30)
/* 802A1688  28 00 00 00 */	cmplwi r0, 0
/* 802A168C  41 82 00 84 */	beq lbl_802A1710
/* 802A1690  81 83 00 00 */	lwz r12, 0(r3)
/* 802A1694  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 802A1698  7D 89 03 A6 */	mtctr r12
/* 802A169C  4E 80 04 21 */	bctrl 
/* 802A16A0  28 03 00 00 */	cmplwi r3, 0
/* 802A16A4  41 82 00 10 */	beq lbl_802A16B4
/* 802A16A8  38 80 00 00 */	li r4, 0
/* 802A16AC  38 A0 00 00 */	li r5, 0
/* 802A16B0  4B FF 03 45 */	bl assignExtBuffer__8JASTrackFUlP14JASSoundParams
lbl_802A16B4:
/* 802A16B4  83 FE 02 F0 */	lwz r31, 0x2f0(r30)
/* 802A16B8  88 0D 8D 98 */	lbz r0, data_80451318(r13)
/* 802A16BC  7C 00 07 75 */	extsb. r0, r0
/* 802A16C0  40 82 00 34 */	bne lbl_802A16F4
/* 802A16C4  3C 60 80 43 */	lis r3, data_804340B0@ha
/* 802A16C8  38 63 40 B0 */	addi r3, r3, data_804340B0@l
/* 802A16CC  4B FE F1 7D */	bl __ct__17JASGenericMemPoolFv
/* 802A16D0  3C 60 80 43 */	lis r3, data_804340B0@ha
/* 802A16D4  38 63 40 B0 */	addi r3, r3, data_804340B0@l
/* 802A16D8  3C 80 80 2A */	lis r4, func_802A1268@ha
/* 802A16DC  38 84 12 68 */	addi r4, r4, func_802A1268@l
/* 802A16E0  3C A0 80 43 */	lis r5, lit_896@ha
/* 802A16E4  38 A5 40 A4 */	addi r5, r5, lit_896@l
/* 802A16E8  48 0C 05 3D */	bl __register_global_object
/* 802A16EC  38 00 00 01 */	li r0, 1
/* 802A16F0  98 0D 8D 98 */	stb r0, data_80451318(r13)
lbl_802A16F4:
/* 802A16F4  3C 60 80 43 */	lis r3, data_804340B0@ha
/* 802A16F8  38 63 40 B0 */	addi r3, r3, data_804340B0@l
/* 802A16FC  7F E4 FB 78 */	mr r4, r31
/* 802A1700  38 A0 00 64 */	li r5, 0x64
/* 802A1704  4B FE F2 91 */	bl free__17JASGenericMemPoolFPvUl
/* 802A1708  38 00 00 00 */	li r0, 0
/* 802A170C  90 1E 02 F0 */	stw r0, 0x2f0(r30)
lbl_802A1710:
/* 802A1710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A1714  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A1718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A171C  7C 08 03 A6 */	mtlr r0
/* 802A1720  38 21 00 10 */	addi r1, r1, 0x10
/* 802A1724  4E 80 00 20 */	blr 
