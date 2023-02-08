lbl_8028FC54:
/* 8028FC54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028FC58  7C 08 02 A6 */	mflr r0
/* 8028FC5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028FC60  39 61 00 20 */	addi r11, r1, 0x20
/* 8028FC64  48 0D 25 75 */	bl _savegpr_28
/* 8028FC68  7C 7D 1B 78 */	mr r29, r3
/* 8028FC6C  4B FF FD 81 */	bl allocCallStack__13JASTaskThreadFPFPv_vPv
/* 8028FC70  7C 7C 1B 79 */	or. r28, r3, r3
/* 8028FC74  40 82 00 0C */	bne lbl_8028FC80
/* 8028FC78  38 60 00 00 */	li r3, 0
/* 8028FC7C  48 00 00 B8 */	b lbl_8028FD34
lbl_8028FC80:
/* 8028FC80  38 7D 00 30 */	addi r3, r29, 0x30
/* 8028FC84  7F 84 E3 78 */	mr r4, r28
/* 8028FC88  38 A0 00 00 */	li r5, 0
/* 8028FC8C  48 0A ED 69 */	bl OSSendMessage
/* 8028FC90  7C 7D 1B 79 */	or. r29, r3, r3
/* 8028FC94  40 82 00 9C */	bne lbl_8028FD30
/* 8028FC98  48 00 0E 31 */	bl getCommandHeap__9JASKernelFv
/* 8028FC9C  7C 7F 1B 78 */	mr r31, r3
/* 8028FCA0  93 E1 00 08 */	stw r31, 8(r1)
/* 8028FCA4  48 0A F3 9D */	bl OSLockMutex
/* 8028FCA8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8028FCAC  3B C0 00 00 */	li r30, 0
/* 8028FCB0  48 00 00 70 */	b lbl_8028FD20
lbl_8028FCB4:
/* 8028FCB4  38 80 00 00 */	li r4, 0
/* 8028FCB8  38 03 00 0C */	addi r0, r3, 0xc
/* 8028FCBC  7C 00 E0 40 */	cmplw r0, r28
/* 8028FCC0  41 81 00 14 */	bgt lbl_8028FCD4
/* 8028FCC4  38 03 04 0C */	addi r0, r3, 0x40c
/* 8028FCC8  7C 1C 00 40 */	cmplw r28, r0
/* 8028FCCC  40 80 00 08 */	bge lbl_8028FCD4
/* 8028FCD0  38 80 00 01 */	li r4, 1
lbl_8028FCD4:
/* 8028FCD4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8028FCD8  41 82 00 40 */	beq lbl_8028FD18
/* 8028FCDC  80 83 00 08 */	lwz r4, 8(r3)
/* 8028FCE0  38 04 FF FF */	addi r0, r4, -1
/* 8028FCE4  90 03 00 08 */	stw r0, 8(r3)
/* 8028FCE8  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8028FCEC  7C 03 00 40 */	cmplw r3, r0
/* 8028FCF0  41 82 00 1C */	beq lbl_8028FD0C
/* 8028FCF4  80 03 00 08 */	lwz r0, 8(r3)
/* 8028FCF8  28 00 00 00 */	cmplwi r0, 0
/* 8028FCFC  40 82 00 10 */	bne lbl_8028FD0C
/* 8028FD00  83 E3 00 00 */	lwz r31, 0(r3)
/* 8028FD04  48 03 F0 39 */	bl __dl__FPv
/* 8028FD08  93 FE 00 00 */	stw r31, 0(r30)
lbl_8028FD0C:
/* 8028FD0C  80 61 00 08 */	lwz r3, 8(r1)
/* 8028FD10  48 0A F4 0D */	bl OSUnlockMutex
/* 8028FD14  48 00 00 1C */	b lbl_8028FD30
lbl_8028FD18:
/* 8028FD18  7C 7E 1B 78 */	mr r30, r3
/* 8028FD1C  80 63 00 00 */	lwz r3, 0(r3)
lbl_8028FD20:
/* 8028FD20  28 03 00 00 */	cmplwi r3, 0
/* 8028FD24  40 82 FF 90 */	bne lbl_8028FCB4
/* 8028FD28  80 61 00 08 */	lwz r3, 8(r1)
/* 8028FD2C  48 0A F3 F1 */	bl OSUnlockMutex
lbl_8028FD30:
/* 8028FD30  7F A3 EB 78 */	mr r3, r29
lbl_8028FD34:
/* 8028FD34  39 61 00 20 */	addi r11, r1, 0x20
/* 8028FD38  48 0D 24 ED */	bl _restgpr_28
/* 8028FD3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028FD40  7C 08 03 A6 */	mtlr r0
/* 8028FD44  38 21 00 20 */	addi r1, r1, 0x20
/* 8028FD48  4E 80 00 20 */	blr 
