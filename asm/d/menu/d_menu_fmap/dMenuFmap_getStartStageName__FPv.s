lbl_801C662C:
/* 801C662C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801C6630  7C 08 02 A6 */	mflr r0
/* 801C6634  90 01 00 24 */	stw r0, 0x24(r1)
/* 801C6638  39 61 00 20 */	addi r11, r1, 0x20
/* 801C663C  48 19 BB 95 */	bl _savegpr_26
/* 801C6640  7C 7A 1B 78 */	mr r26, r3
/* 801C6644  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801C6648  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 801C664C  38 7E 4E 20 */	addi r3, r30, 0x4e20
/* 801C6650  81 9E 4E 20 */	lwz r12, 0x4e20(r30)
/* 801C6654  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 801C6658  7D 89 03 A6 */	mtctr r12
/* 801C665C  4E 80 04 21 */	bctrl 
/* 801C6660  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 801C6664  54 00 07 7E */	clrlwi r0, r0, 0x1d
/* 801C6668  2C 00 00 05 */	cmpwi r0, 5
/* 801C666C  40 82 00 5C */	bne lbl_801C66C8
/* 801C6670  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 801C6674  7F 9A 02 14 */	add r28, r26, r0
/* 801C6678  3B 7C 00 04 */	addi r27, r28, 4
/* 801C667C  3B 40 00 00 */	li r26, 0
/* 801C6680  3B E0 00 00 */	li r31, 0
/* 801C6684  3B BE 4E 00 */	addi r29, r30, 0x4e00
/* 801C6688  48 00 00 34 */	b lbl_801C66BC
lbl_801C668C:
/* 801C668C  7F A3 EB 78 */	mr r3, r29
/* 801C6690  7C 9B FA 14 */	add r4, r27, r31
/* 801C6694  48 1A 23 01 */	bl strcmp
/* 801C6698  2C 03 00 00 */	cmpwi r3, 0
/* 801C669C  40 82 00 18 */	bne lbl_801C66B4
/* 801C66A0  38 6D 8B 24 */	la r3, virtual_stage(r13) /* 804510A4-_SDA_BASE_ */
/* 801C66A4  38 9B 00 08 */	addi r4, r27, 8
/* 801C66A8  48 1A 24 85 */	bl strcpy
/* 801C66AC  38 6D 8B 24 */	la r3, virtual_stage(r13) /* 804510A4-_SDA_BASE_ */
/* 801C66B0  48 00 00 1C */	b lbl_801C66CC
lbl_801C66B4:
/* 801C66B4  3B 5A 00 01 */	addi r26, r26, 1
/* 801C66B8  3B FF 00 10 */	addi r31, r31, 0x10
lbl_801C66BC:
/* 801C66BC  88 1C 00 00 */	lbz r0, 0(r28)
/* 801C66C0  7C 1A 00 00 */	cmpw r26, r0
/* 801C66C4  41 80 FF C8 */	blt lbl_801C668C
lbl_801C66C8:
/* 801C66C8  38 7E 4E 00 */	addi r3, r30, 0x4e00
lbl_801C66CC:
/* 801C66CC  39 61 00 20 */	addi r11, r1, 0x20
/* 801C66D0  48 19 BB 4D */	bl _restgpr_26
/* 801C66D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801C66D8  7C 08 03 A6 */	mtlr r0
/* 801C66DC  38 21 00 20 */	addi r1, r1, 0x20
/* 801C66E0  4E 80 00 20 */	blr 
