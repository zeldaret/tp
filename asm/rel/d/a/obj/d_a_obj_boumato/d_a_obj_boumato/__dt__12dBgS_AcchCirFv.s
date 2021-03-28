lbl_80BBB634:
/* 80BBB634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBB638  7C 08 02 A6 */	mflr r0
/* 80BBB63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBB640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBB644  93 C1 00 08 */	stw r30, 8(r1)
/* 80BBB648  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BBB64C  7C 9F 23 78 */	mr r31, r4
/* 80BBB650  41 82 00 38 */	beq lbl_80BBB688
/* 80BBB654  3C 60 80 BC */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80BBB658  38 03 C6 24 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80BBB65C  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80BBB660  38 7E 00 14 */	addi r3, r30, 0x14
/* 80BBB664  38 80 FF FF */	li r4, -1
/* 80BBB668  4B 6B 38 B0 */	b __dt__8cM3dGCirFv
/* 80BBB66C  7F C3 F3 78 */	mr r3, r30
/* 80BBB670  38 80 00 00 */	li r4, 0
/* 80BBB674  4B 6A CA 3C */	b __dt__13cBgS_PolyInfoFv
/* 80BBB678  7F E0 07 35 */	extsh. r0, r31
/* 80BBB67C  40 81 00 0C */	ble lbl_80BBB688
/* 80BBB680  7F C3 F3 78 */	mr r3, r30
/* 80BBB684  4B 71 36 B8 */	b __dl__FPv
lbl_80BBB688:
/* 80BBB688  7F C3 F3 78 */	mr r3, r30
/* 80BBB68C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBB690  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BBB694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBB698  7C 08 03 A6 */	mtlr r0
/* 80BBB69C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBB6A0  4E 80 00 20 */	blr 
