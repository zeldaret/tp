lbl_8028FB5C:
/* 8028FB5C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028FB60  7C 08 02 A6 */	mflr r0
/* 8028FB64  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028FB68  39 61 00 20 */	addi r11, r1, 0x20
/* 8028FB6C  48 0D 26 6D */	bl _savegpr_28
/* 8028FB70  7C 7D 1B 78 */	mr r29, r3
/* 8028FB74  4B FF FC DD */	bl allocCallStack__13JASTaskThreadFPFPv_vPCvUl
/* 8028FB78  7C 7C 1B 79 */	or. r28, r3, r3
/* 8028FB7C  40 82 00 0C */	bne lbl_8028FB88
/* 8028FB80  38 60 00 00 */	li r3, 0
/* 8028FB84  48 00 00 B8 */	b lbl_8028FC3C
lbl_8028FB88:
/* 8028FB88  38 7D 00 30 */	addi r3, r29, 0x30
/* 8028FB8C  7F 84 E3 78 */	mr r4, r28
/* 8028FB90  38 A0 00 00 */	li r5, 0
/* 8028FB94  48 0A EE 61 */	bl OSSendMessage
/* 8028FB98  7C 7D 1B 79 */	or. r29, r3, r3
/* 8028FB9C  40 82 00 9C */	bne lbl_8028FC38
/* 8028FBA0  48 00 0F 29 */	bl getCommandHeap__9JASKernelFv
/* 8028FBA4  7C 7F 1B 78 */	mr r31, r3
/* 8028FBA8  93 E1 00 08 */	stw r31, 8(r1)
/* 8028FBAC  48 0A F4 95 */	bl OSLockMutex
/* 8028FBB0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8028FBB4  3B C0 00 00 */	li r30, 0
/* 8028FBB8  48 00 00 70 */	b lbl_8028FC28
lbl_8028FBBC:
/* 8028FBBC  38 80 00 00 */	li r4, 0
/* 8028FBC0  38 03 00 0C */	addi r0, r3, 0xc
/* 8028FBC4  7C 00 E0 40 */	cmplw r0, r28
/* 8028FBC8  41 81 00 14 */	bgt lbl_8028FBDC
/* 8028FBCC  38 03 04 0C */	addi r0, r3, 0x40c
/* 8028FBD0  7C 1C 00 40 */	cmplw r28, r0
/* 8028FBD4  40 80 00 08 */	bge lbl_8028FBDC
/* 8028FBD8  38 80 00 01 */	li r4, 1
lbl_8028FBDC:
/* 8028FBDC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8028FBE0  41 82 00 40 */	beq lbl_8028FC20
/* 8028FBE4  80 83 00 08 */	lwz r4, 8(r3)
/* 8028FBE8  38 04 FF FF */	addi r0, r4, -1
/* 8028FBEC  90 03 00 08 */	stw r0, 8(r3)
/* 8028FBF0  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8028FBF4  7C 03 00 40 */	cmplw r3, r0
/* 8028FBF8  41 82 00 1C */	beq lbl_8028FC14
/* 8028FBFC  80 03 00 08 */	lwz r0, 8(r3)
/* 8028FC00  28 00 00 00 */	cmplwi r0, 0
/* 8028FC04  40 82 00 10 */	bne lbl_8028FC14
/* 8028FC08  83 E3 00 00 */	lwz r31, 0(r3)
/* 8028FC0C  48 03 F1 31 */	bl __dl__FPv
/* 8028FC10  93 FE 00 00 */	stw r31, 0(r30)
lbl_8028FC14:
/* 8028FC14  80 61 00 08 */	lwz r3, 8(r1)
/* 8028FC18  48 0A F5 05 */	bl OSUnlockMutex
/* 8028FC1C  48 00 00 1C */	b lbl_8028FC38
lbl_8028FC20:
/* 8028FC20  7C 7E 1B 78 */	mr r30, r3
/* 8028FC24  80 63 00 00 */	lwz r3, 0(r3)
lbl_8028FC28:
/* 8028FC28  28 03 00 00 */	cmplwi r3, 0
/* 8028FC2C  40 82 FF 90 */	bne lbl_8028FBBC
/* 8028FC30  80 61 00 08 */	lwz r3, 8(r1)
/* 8028FC34  48 0A F4 E9 */	bl OSUnlockMutex
lbl_8028FC38:
/* 8028FC38  7F A3 EB 78 */	mr r3, r29
lbl_8028FC3C:
/* 8028FC3C  39 61 00 20 */	addi r11, r1, 0x20
/* 8028FC40  48 0D 25 E5 */	bl _restgpr_28
/* 8028FC44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028FC48  7C 08 03 A6 */	mtlr r0
/* 8028FC4C  38 21 00 20 */	addi r1, r1, 0x20
/* 8028FC50  4E 80 00 20 */	blr 
