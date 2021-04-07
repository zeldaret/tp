lbl_8034B550:
/* 8034B550  7C 08 02 A6 */	mflr r0
/* 8034B554  3C 80 80 35 */	lis r4, cbForCancelSync@ha /* 0x8034B5FC@ha */
/* 8034B558  90 01 00 04 */	stw r0, 4(r1)
/* 8034B55C  38 84 B5 FC */	addi r4, r4, cbForCancelSync@l /* 0x8034B5FC@l */
/* 8034B560  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8034B564  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8034B568  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8034B56C  3B C3 00 00 */	addi r30, r3, 0
/* 8034B570  4B FF FD 65 */	bl DVDCancelAsync
/* 8034B574  2C 03 00 00 */	cmpwi r3, 0
/* 8034B578  40 82 00 0C */	bne lbl_8034B584
/* 8034B57C  38 60 FF FF */	li r3, -1
/* 8034B580  48 00 00 64 */	b lbl_8034B5E4
lbl_8034B584:
/* 8034B584  4B FF 21 71 */	bl OSDisableInterrupts
/* 8034B588  7C 7F 1B 78 */	mr r31, r3
lbl_8034B58C:
/* 8034B58C  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8034B590  38 03 00 01 */	addi r0, r3, 1
/* 8034B594  28 00 00 01 */	cmplwi r0, 1
/* 8034B598  40 81 00 40 */	ble lbl_8034B5D8
/* 8034B59C  2C 03 00 0A */	cmpwi r3, 0xa
/* 8034B5A0  41 82 00 38 */	beq lbl_8034B5D8
/* 8034B5A4  2C 03 00 03 */	cmpwi r3, 3
/* 8034B5A8  40 82 00 24 */	bne lbl_8034B5CC
/* 8034B5AC  80 7E 00 08 */	lwz r3, 8(r30)
/* 8034B5B0  38 03 FF FC */	addi r0, r3, -4
/* 8034B5B4  28 00 00 01 */	cmplwi r0, 1
/* 8034B5B8  40 81 00 20 */	ble lbl_8034B5D8
/* 8034B5BC  28 03 00 0D */	cmplwi r3, 0xd
/* 8034B5C0  41 82 00 18 */	beq lbl_8034B5D8
/* 8034B5C4  28 03 00 0F */	cmplwi r3, 0xf
/* 8034B5C8  41 82 00 10 */	beq lbl_8034B5D8
lbl_8034B5CC:
/* 8034B5CC  38 6D 91 F0 */	la r3, __DVDThreadQueue(r13) /* 80451770-_SDA_BASE_ */
/* 8034B5D0  4B FF 65 DD */	bl OSSleepThread
/* 8034B5D4  4B FF FF B8 */	b lbl_8034B58C
lbl_8034B5D8:
/* 8034B5D8  7F E3 FB 78 */	mr r3, r31
/* 8034B5DC  4B FF 21 41 */	bl OSRestoreInterrupts
/* 8034B5E0  38 60 00 00 */	li r3, 0
lbl_8034B5E4:
/* 8034B5E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8034B5E8  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8034B5EC  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8034B5F0  38 21 00 18 */	addi r1, r1, 0x18
/* 8034B5F4  7C 08 03 A6 */	mtlr r0
/* 8034B5F8  4E 80 00 20 */	blr 
