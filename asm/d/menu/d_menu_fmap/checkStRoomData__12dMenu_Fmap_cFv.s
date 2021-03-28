lbl_801CB570:
/* 801CB570  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CB574  7C 08 02 A6 */	mflr r0
/* 801CB578  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CB57C  39 61 00 20 */	addi r11, r1, 0x20
/* 801CB580  48 19 6C 55 */	bl _savegpr_27
/* 801CB584  7C 7F 1B 78 */	mr r31, r3
/* 801CB588  80 63 00 8C */	lwz r3, 0x8c(r3)
/* 801CB58C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 801CB590  7C 63 02 14 */	add r3, r3, r0
/* 801CB594  3B C3 00 04 */	addi r30, r3, 4
/* 801CB598  8B A3 00 00 */	lbz r29, 0(r3)
/* 801CB59C  3B 80 00 00 */	li r28, 0
/* 801CB5A0  48 00 00 90 */	b lbl_801CB630
lbl_801CB5A4:
/* 801CB5A4  88 9E 00 0A */	lbz r4, 0xa(r30)
/* 801CB5A8  3B 64 00 0B */	addi r27, r4, 0xb
/* 801CB5AC  54 83 0F FE */	srwi r3, r4, 0x1f
/* 801CB5B0  54 80 07 FE */	clrlwi r0, r4, 0x1f
/* 801CB5B4  7C 00 1A 78 */	xor r0, r0, r3
/* 801CB5B8  7C 03 00 51 */	subf. r0, r3, r0
/* 801CB5BC  40 82 00 08 */	bne lbl_801CB5C4
/* 801CB5C0  3B 7B 00 01 */	addi r27, r27, 1
lbl_801CB5C4:
/* 801CB5C4  80 1F 02 04 */	lwz r0, 0x204(r31)
/* 801CB5C8  54 03 18 38 */	slwi r3, r0, 3
/* 801CB5CC  38 63 02 60 */	addi r3, r3, 0x260
/* 801CB5D0  7C 7F 1A 14 */	add r3, r31, r3
/* 801CB5D4  7F C4 F3 78 */	mr r4, r30
/* 801CB5D8  48 19 D3 BD */	bl strcmp
/* 801CB5DC  2C 03 00 00 */	cmpwi r3, 0
/* 801CB5E0  40 82 00 48 */	bne lbl_801CB628
/* 801CB5E4  38 A0 00 00 */	li r5, 0
/* 801CB5E8  88 9E 00 0A */	lbz r4, 0xa(r30)
/* 801CB5EC  7C 89 03 A6 */	mtctr r4
/* 801CB5F0  2C 04 00 00 */	cmpwi r4, 0
/* 801CB5F4  40 81 00 34 */	ble lbl_801CB628
lbl_801CB5F8:
/* 801CB5F8  80 7F 02 08 */	lwz r3, 0x208(r31)
/* 801CB5FC  38 05 00 0B */	addi r0, r5, 0xb
/* 801CB600  7C 1E 00 AE */	lbzx r0, r30, r0
/* 801CB604  7C 03 00 00 */	cmpw r3, r0
/* 801CB608  40 82 00 18 */	bne lbl_801CB620
/* 801CB60C  98 9F 03 0E */	stb r4, 0x30e(r31)
/* 801CB610  38 1E 00 0B */	addi r0, r30, 0xb
/* 801CB614  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 801CB618  A0 7E 00 08 */	lhz r3, 8(r30)
/* 801CB61C  48 00 00 30 */	b lbl_801CB64C
lbl_801CB620:
/* 801CB620  38 A5 00 01 */	addi r5, r5, 1
/* 801CB624  42 00 FF D4 */	bdnz lbl_801CB5F8
lbl_801CB628:
/* 801CB628  7F DE DA 14 */	add r30, r30, r27
/* 801CB62C  3B 9C 00 01 */	addi r28, r28, 1
lbl_801CB630:
/* 801CB630  7C 1C E8 00 */	cmpw r28, r29
/* 801CB634  41 80 FF 70 */	blt lbl_801CB5A4
/* 801CB638  38 00 00 00 */	li r0, 0
/* 801CB63C  98 1F 03 0E */	stb r0, 0x30e(r31)
/* 801CB640  90 1F 00 C0 */	stw r0, 0xc0(r31)
/* 801CB644  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 801CB648  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
lbl_801CB64C:
/* 801CB64C  39 61 00 20 */	addi r11, r1, 0x20
/* 801CB650  48 19 6B D1 */	bl _restgpr_27
/* 801CB654  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CB658  7C 08 03 A6 */	mtlr r0
/* 801CB65C  38 21 00 20 */	addi r1, r1, 0x20
/* 801CB660  4E 80 00 20 */	blr 
