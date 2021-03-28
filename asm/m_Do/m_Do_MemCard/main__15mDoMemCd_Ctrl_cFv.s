lbl_800167D0:
/* 800167D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800167D4  7C 08 02 A6 */	mflr r0
/* 800167D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800167DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800167E0  7C 7F 1B 78 */	mr r31, r3
lbl_800167E4:
/* 800167E4  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 800167E8  48 32 88 59 */	bl OSLockMutex
/* 800167EC  48 00 00 10 */	b lbl_800167FC
lbl_800167F0:
/* 800167F0  38 7F 1F E4 */	addi r3, r31, 0x1fe4
/* 800167F4  38 9F 1F CC */	addi r4, r31, 0x1fcc
/* 800167F8  48 32 8B 39 */	bl OSWaitCond
lbl_800167FC:
/* 800167FC  80 1F 1F C0 */	lwz r0, 0x1fc0(r31)
/* 80016800  2C 00 00 00 */	cmpwi r0, 0
/* 80016804  41 82 FF EC */	beq lbl_800167F0
/* 80016808  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 8001680C  48 32 89 11 */	bl OSUnlockMutex
/* 80016810  80 1F 1F C0 */	lwz r0, 0x1fc0(r31)
/* 80016814  2C 00 00 03 */	cmpwi r0, 3
/* 80016818  41 82 00 40 */	beq lbl_80016858
/* 8001681C  40 80 00 14 */	bge lbl_80016830
/* 80016820  2C 00 00 01 */	cmpwi r0, 1
/* 80016824  41 82 00 1C */	beq lbl_80016840
/* 80016828  40 80 00 24 */	bge lbl_8001684C
/* 8001682C  48 00 00 4C */	b lbl_80016878
lbl_80016830:
/* 80016830  2C 00 00 05 */	cmpwi r0, 5
/* 80016834  41 82 00 3C */	beq lbl_80016870
/* 80016838  40 80 00 40 */	bge lbl_80016878
/* 8001683C  48 00 00 28 */	b lbl_80016864
lbl_80016840:
/* 80016840  7F E3 FB 78 */	mr r3, r31
/* 80016844  48 00 01 C9 */	bl restore__15mDoMemCd_Ctrl_cFv
/* 80016848  48 00 00 30 */	b lbl_80016878
lbl_8001684C:
/* 8001684C  7F E3 FB 78 */	mr r3, r31
/* 80016850  48 00 03 85 */	bl store__15mDoMemCd_Ctrl_cFv
/* 80016854  48 00 00 24 */	b lbl_80016878
lbl_80016858:
/* 80016858  7F E3 FB 78 */	mr r3, r31
/* 8001685C  48 00 06 4D */	bl format__15mDoMemCd_Ctrl_cFv
/* 80016860  48 00 00 18 */	b lbl_80016878
lbl_80016864:
/* 80016864  7F E3 FB 78 */	mr r3, r31
/* 80016868  48 00 07 51 */	bl attach__15mDoMemCd_Ctrl_cFv
/* 8001686C  48 00 00 0C */	b lbl_80016878
lbl_80016870:
/* 80016870  7F E3 FB 78 */	mr r3, r31
/* 80016874  48 00 08 9D */	bl detach__15mDoMemCd_Ctrl_cFv
lbl_80016878:
/* 80016878  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 8001687C  48 32 87 C5 */	bl OSLockMutex
/* 80016880  38 00 00 00 */	li r0, 0
/* 80016884  90 1F 1F C0 */	stw r0, 0x1fc0(r31)
/* 80016888  38 7F 1F CC */	addi r3, r31, 0x1fcc
/* 8001688C  48 32 88 91 */	bl OSUnlockMutex
/* 80016890  4B FF FF 54 */	b lbl_800167E4
