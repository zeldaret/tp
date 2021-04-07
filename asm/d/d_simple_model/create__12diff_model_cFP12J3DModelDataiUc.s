lbl_800490EC:
/* 800490EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800490F0  7C 08 02 A6 */	mflr r0
/* 800490F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 800490F8  39 61 00 30 */	addi r11, r1, 0x30
/* 800490FC  48 31 90 DD */	bl _savegpr_28
/* 80049100  7C 7C 1B 78 */	mr r28, r3
/* 80049104  7C 9D 23 78 */	mr r29, r4
/* 80049108  7C BE 2B 78 */	mr r30, r5
/* 8004910C  7C DF 33 78 */	mr r31, r6
/* 80049110  80 03 00 00 */	lwz r0, 0(r3)
/* 80049114  28 00 00 00 */	cmplwi r0, 0
/* 80049118  40 82 00 AC */	bne lbl_800491C4
/* 8004911C  38 60 20 00 */	li r3, 0x2000
/* 80049120  38 80 00 20 */	li r4, 0x20
/* 80049124  4B FC 5F 21 */	bl mDoExt_createSolidHeapFromGameToCurrent__FUlUl
/* 80049128  90 7C 00 00 */	stw r3, 0(r28)
/* 8004912C  80 1C 00 00 */	lwz r0, 0(r28)
/* 80049130  28 00 00 00 */	cmplwi r0, 0
/* 80049134  41 82 00 A4 */	beq lbl_800491D8
/* 80049138  7F A3 EB 78 */	mr r3, r29
/* 8004913C  3C 80 00 08 */	lis r4, 8
/* 80049140  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80049144  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80049148  4B FC BB 0D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8004914C  90 7C 00 04 */	stw r3, 4(r28)
/* 80049150  80 7C 00 04 */	lwz r3, 4(r28)
/* 80049154  28 03 00 00 */	cmplwi r3, 0
/* 80049158  40 82 00 18 */	bne lbl_80049170
/* 8004915C  7F 83 E3 78 */	mr r3, r28
/* 80049160  38 80 00 01 */	li r4, 1
/* 80049164  48 00 00 AD */	bl remove__12diff_model_cFi
/* 80049168  4B FC 60 8D */	bl mDoExt_restoreCurrentHeap__Fv
/* 8004916C  48 00 00 6C */	b lbl_800491D8
lbl_80049170:
/* 80049170  C0 02 85 38 */	lfs f0, lit_3763(r2)
/* 80049174  D0 01 00 08 */	stfs f0, 8(r1)
/* 80049178  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8004917C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80049180  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80049184  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80049188  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8004918C  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 80049190  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 80049194  80 9C 00 04 */	lwz r4, 4(r28)
/* 80049198  38 84 00 24 */	addi r4, r4, 0x24
/* 8004919C  48 2F D3 15 */	bl PSMTXCopy
/* 800491A0  80 7C 00 08 */	lwz r3, 8(r28)
/* 800491A4  38 03 00 01 */	addi r0, r3, 1
/* 800491A8  90 1C 00 08 */	stw r0, 8(r28)
/* 800491AC  80 7C 00 00 */	lwz r3, 0(r28)
/* 800491B0  4B FC 5F A9 */	bl mDoExt_adjustSolidHeapToSystem__FP12JKRSolidHeap
/* 800491B4  9B DC 00 11 */	stb r30, 0x11(r28)
/* 800491B8  9B FC 00 10 */	stb r31, 0x10(r28)
/* 800491BC  38 60 00 01 */	li r3, 1
/* 800491C0  48 00 00 1C */	b lbl_800491DC
lbl_800491C4:
/* 800491C4  80 7C 00 08 */	lwz r3, 8(r28)
/* 800491C8  38 03 00 01 */	addi r0, r3, 1
/* 800491CC  90 1C 00 08 */	stw r0, 8(r28)
/* 800491D0  38 60 00 01 */	li r3, 1
/* 800491D4  48 00 00 08 */	b lbl_800491DC
lbl_800491D8:
/* 800491D8  38 60 00 00 */	li r3, 0
lbl_800491DC:
/* 800491DC  39 61 00 30 */	addi r11, r1, 0x30
/* 800491E0  48 31 90 45 */	bl _restgpr_28
/* 800491E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800491E8  7C 08 03 A6 */	mtlr r0
/* 800491EC  38 21 00 30 */	addi r1, r1, 0x30
/* 800491F0  4E 80 00 20 */	blr 
