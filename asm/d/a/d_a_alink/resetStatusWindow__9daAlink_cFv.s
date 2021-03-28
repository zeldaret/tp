lbl_80140AC8:
/* 80140AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140ACC  7C 08 02 A6 */	mflr r0
/* 80140AD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80140AD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140AD8  7C 7F 1B 78 */	mr r31, r3
/* 80140ADC  80 03 05 78 */	lwz r0, 0x578(r3)
/* 80140AE0  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 80140AE4  90 03 05 78 */	stw r0, 0x578(r3)
/* 80140AE8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80140AEC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80140AF0  41 82 00 10 */	beq lbl_80140B00
/* 80140AF4  38 80 00 01 */	li r4, 1
/* 80140AF8  4B FF FA 59 */	bl changeModelDataDirectWolf__9daAlink_cFi
/* 80140AFC  48 00 00 0C */	b lbl_80140B08
lbl_80140B00:
/* 80140B00  38 80 00 01 */	li r4, 1
/* 80140B04  4B FF F8 35 */	bl changeModelDataDirect__9daAlink_cFi
lbl_80140B08:
/* 80140B08  7F E3 FB 78 */	mr r3, r31
/* 80140B0C  4B F6 81 D9 */	bl setMatrix__9daAlink_cFv
/* 80140B10  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80140B14  81 83 00 00 */	lwz r12, 0(r3)
/* 80140B18  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80140B1C  7D 89 03 A6 */	mtctr r12
/* 80140B20  4E 80 04 21 */	bctrl 
/* 80140B24  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80140B28  64 00 00 40 */	oris r0, r0, 0x40
/* 80140B2C  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80140B30  7F E3 FB 78 */	mr r3, r31
/* 80140B34  38 80 00 00 */	li r4, 0
/* 80140B38  4B F6 3D D9 */	bl setSelectEquipItem__9daAlink_cFi
/* 80140B3C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80140B40  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80140B44  41 82 00 10 */	beq lbl_80140B54
/* 80140B48  7F E3 FB 78 */	mr r3, r31
/* 80140B4C  4B F6 94 01 */	bl setWolfItemMatrix__9daAlink_cFv
/* 80140B50  48 00 00 10 */	b lbl_80140B60
lbl_80140B54:
/* 80140B54  7F E3 FB 78 */	mr r3, r31
/* 80140B58  38 80 00 00 */	li r4, 0
/* 80140B5C  4B F6 88 F5 */	bl setItemMatrix__9daAlink_cFi
lbl_80140B60:
/* 80140B60  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80140B64  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 80140B68  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80140B6C  38 00 00 00 */	li r0, 0
/* 80140B70  90 1F 07 BC */	stw r0, 0x7bc(r31)
/* 80140B74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80140B7C  7C 08 03 A6 */	mtlr r0
/* 80140B80  38 21 00 10 */	addi r1, r1, 0x10
/* 80140B84  4E 80 00 20 */	blr 
