lbl_80BDCE84:
/* 80BDCE84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCE88  7C 08 02 A6 */	mflr r0
/* 80BDCE8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCE90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDCE94  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDCE98  7C 7E 1B 78 */	mr r30, r3
/* 80BDCE9C  7C 9F 23 78 */	mr r31, r4
/* 80BDCEA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDCEA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDCEA8  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80BDCEAC  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80BDCEB0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80BDCEB4  41 82 00 10 */	beq lbl_80BDCEC4
/* 80BDCEB8  38 00 00 80 */	li r0, 0x80
/* 80BDCEBC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80BDCEC0  48 00 00 0C */	b lbl_80BDCECC
lbl_80BDCEC4:
/* 80BDCEC4  38 00 00 00 */	li r0, 0
/* 80BDCEC8  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80BDCECC:
/* 80BDCECC  7F C3 F3 78 */	mr r3, r30
/* 80BDCED0  48 00 00 31 */	bl action__14daObjDigSnow_cFv
/* 80BDCED4  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80BDCED8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BDCEDC  7F C3 F3 78 */	mr r3, r30
/* 80BDCEE0  4B FF FD B5 */	bl setBaseMtx__14daObjDigSnow_cFv
/* 80BDCEE4  38 60 00 01 */	li r3, 1
/* 80BDCEE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDCEEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDCEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCEF4  7C 08 03 A6 */	mtlr r0
/* 80BDCEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCEFC  4E 80 00 20 */	blr 
