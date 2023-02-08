lbl_80AB186C:
/* 80AB186C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB1870  7C 08 02 A6 */	mflr r0
/* 80AB1874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB1878  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB187C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB1880  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB1884  7C 9F 23 78 */	mr r31, r4
/* 80AB1888  41 82 00 38 */	beq lbl_80AB18C0
/* 80AB188C  3C 60 80 AB */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AB2BA8@ha */
/* 80AB1890  38 03 2B A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AB2BA8@l */
/* 80AB1894  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80AB1898  38 7E 00 14 */	addi r3, r30, 0x14
/* 80AB189C  38 80 FF FF */	li r4, -1
/* 80AB18A0  4B 7B D6 79 */	bl __dt__8cM3dGCirFv
/* 80AB18A4  7F C3 F3 78 */	mr r3, r30
/* 80AB18A8  38 80 00 00 */	li r4, 0
/* 80AB18AC  4B 7B 68 05 */	bl __dt__13cBgS_PolyInfoFv
/* 80AB18B0  7F E0 07 35 */	extsh. r0, r31
/* 80AB18B4  40 81 00 0C */	ble lbl_80AB18C0
/* 80AB18B8  7F C3 F3 78 */	mr r3, r30
/* 80AB18BC  4B 81 D4 81 */	bl __dl__FPv
lbl_80AB18C0:
/* 80AB18C0  7F C3 F3 78 */	mr r3, r30
/* 80AB18C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB18C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB18CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB18D0  7C 08 03 A6 */	mtlr r0
/* 80AB18D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB18D8  4E 80 00 20 */	blr 
