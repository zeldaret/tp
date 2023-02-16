lbl_802C6540:
/* 802C6540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C6544  7C 08 02 A6 */	mflr r0
/* 802C6548  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C654C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C6550  93 C1 00 08 */	stw r30, 8(r1)
/* 802C6554  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C6558  7C 9F 23 78 */	mr r31, r4
/* 802C655C  41 82 01 38 */	beq lbl_802C6694
/* 802C6560  38 7E 02 DC */	addi r3, r30, 0x2dc
/* 802C6564  38 80 FF FF */	li r4, -1
/* 802C6568  4B FF F3 45 */	bl __dt__11Z2EnvSeBaseFv
/* 802C656C  38 7E 02 C0 */	addi r3, r30, 0x2c0
/* 802C6570  38 80 FF FF */	li r4, -1
/* 802C6574  4B FE 85 C1 */	bl __dt__12Z2MultiSeMgrFv
/* 802C6578  38 7E 02 A8 */	addi r3, r30, 0x2a8
/* 802C657C  38 80 FF FF */	li r4, -1
/* 802C6580  4B FF F3 2D */	bl __dt__11Z2EnvSeBaseFv
/* 802C6584  38 7E 02 8C */	addi r3, r30, 0x28c
/* 802C6588  38 80 FF FF */	li r4, -1
/* 802C658C  4B FE 85 A9 */	bl __dt__12Z2MultiSeMgrFv
/* 802C6590  38 7E 02 74 */	addi r3, r30, 0x274
/* 802C6594  38 80 FF FF */	li r4, -1
/* 802C6598  4B FF F3 15 */	bl __dt__11Z2EnvSeBaseFv
/* 802C659C  38 7E 02 58 */	addi r3, r30, 0x258
/* 802C65A0  38 80 FF FF */	li r4, -1
/* 802C65A4  4B FE 85 91 */	bl __dt__12Z2MultiSeMgrFv
/* 802C65A8  38 7E 02 40 */	addi r3, r30, 0x240
/* 802C65AC  38 80 FF FF */	li r4, -1
/* 802C65B0  4B FF F2 FD */	bl __dt__11Z2EnvSeBaseFv
/* 802C65B4  38 7E 02 24 */	addi r3, r30, 0x224
/* 802C65B8  38 80 FF FF */	li r4, -1
/* 802C65BC  4B FE 85 79 */	bl __dt__12Z2MultiSeMgrFv
/* 802C65C0  38 7E 02 0C */	addi r3, r30, 0x20c
/* 802C65C4  38 80 FF FF */	li r4, -1
/* 802C65C8  4B FF F2 E5 */	bl __dt__11Z2EnvSeBaseFv
/* 802C65CC  38 7E 01 F0 */	addi r3, r30, 0x1f0
/* 802C65D0  38 80 FF FF */	li r4, -1
/* 802C65D4  4B FE 85 61 */	bl __dt__12Z2MultiSeMgrFv
/* 802C65D8  38 7E 01 D8 */	addi r3, r30, 0x1d8
/* 802C65DC  38 80 FF FF */	li r4, -1
/* 802C65E0  4B FF F2 CD */	bl __dt__11Z2EnvSeBaseFv
/* 802C65E4  38 7E 01 BC */	addi r3, r30, 0x1bc
/* 802C65E8  38 80 FF FF */	li r4, -1
/* 802C65EC  4B FE 85 49 */	bl __dt__12Z2MultiSeMgrFv
/* 802C65F0  38 7E 01 80 */	addi r3, r30, 0x180
/* 802C65F4  38 80 FF FF */	li r4, -1
/* 802C65F8  4B FF F2 B5 */	bl __dt__11Z2EnvSeBaseFv
/* 802C65FC  38 7E 01 64 */	addi r3, r30, 0x164
/* 802C6600  38 80 FF FF */	li r4, -1
/* 802C6604  4B FE 85 31 */	bl __dt__12Z2MultiSeMgrFv
/* 802C6608  38 7E 01 44 */	addi r3, r30, 0x144
/* 802C660C  38 80 FF FF */	li r4, -1
/* 802C6610  4B FF F7 0D */	bl __dt__10Z2EnvSeDirFv
/* 802C6614  38 7E 01 18 */	addi r3, r30, 0x118
/* 802C6618  38 80 FF FF */	li r4, -1
/* 802C661C  4B FF F2 91 */	bl __dt__11Z2EnvSeBaseFv
/* 802C6620  38 7E 01 10 */	addi r3, r30, 0x110
/* 802C6624  38 80 FF FF */	li r4, -1
/* 802C6628  4B FF F2 85 */	bl __dt__11Z2EnvSeBaseFv
/* 802C662C  38 7E 00 88 */	addi r3, r30, 0x88
/* 802C6630  38 80 FF FF */	li r4, -1
/* 802C6634  4B FF F2 79 */	bl __dt__11Z2EnvSeBaseFv
/* 802C6638  38 7E 00 80 */	addi r3, r30, 0x80
/* 802C663C  38 80 FF FF */	li r4, -1
/* 802C6640  4B FF F2 6D */	bl __dt__11Z2EnvSeBaseFv
/* 802C6644  38 7E 00 64 */	addi r3, r30, 0x64
/* 802C6648  38 80 FF FF */	li r4, -1
/* 802C664C  4B FE 84 E9 */	bl __dt__12Z2MultiSeMgrFv
/* 802C6650  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802C6654  38 80 FF FF */	li r4, -1
/* 802C6658  4B FF F8 D1 */	bl __dt__14Z2EnvSeAutoPanFv
/* 802C665C  7F C3 F3 78 */	mr r3, r30
/* 802C6660  38 80 FF FF */	li r4, -1
/* 802C6664  4B FF F8 C5 */	bl __dt__14Z2EnvSeAutoPanFv
/* 802C6668  28 1E 00 00 */	cmplwi r30, 0
/* 802C666C  41 82 00 18 */	beq lbl_802C6684
/* 802C6670  80 0D 85 BC */	lwz r0, __OSReport_disable-0x5C(r13)
/* 802C6674  7C 00 F0 40 */	cmplw r0, r30
/* 802C6678  40 82 00 0C */	bne lbl_802C6684
/* 802C667C  38 00 00 00 */	li r0, 0
/* 802C6680  90 0D 85 BC */	stw r0, __OSReport_disable-0x5C(r13)
lbl_802C6684:
/* 802C6684  7F E0 07 35 */	extsh. r0, r31
/* 802C6688  40 81 00 0C */	ble lbl_802C6694
/* 802C668C  7F C3 F3 78 */	mr r3, r30
/* 802C6690  48 00 86 AD */	bl __dl__FPv
lbl_802C6694:
/* 802C6694  7F C3 F3 78 */	mr r3, r30
/* 802C6698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C669C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C66A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C66A4  7C 08 03 A6 */	mtlr r0
/* 802C66A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802C66AC  4E 80 00 20 */	blr 
