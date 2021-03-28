lbl_80006984:
/* 80006984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80006988  7C 08 02 A6 */	mflr r0
/* 8000698C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80006990  39 61 00 20 */	addi r11, r1, 0x20
/* 80006994  48 35 B8 49 */	bl _savegpr_29
/* 80006998  7C 7D 1B 78 */	mr r29, r3
/* 8000699C  7C 9E 23 78 */	mr r30, r4
/* 800069A0  48 00 E3 C5 */	bl mDoExt_GetCurrentRunningThread__Fv
/* 800069A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 800069A8  40 82 00 14 */	bne lbl_800069BC
/* 800069AC  7F A3 EB 78 */	mr r3, r29
/* 800069B0  7F C4 F3 78 */	mr r4, r30
/* 800069B4  4B FF FF 29 */	bl mDoPrintf_vprintf_Interrupt__FPCcP16__va_list_struct
/* 800069B8  48 00 00 40 */	b lbl_800069F8
lbl_800069BC:
/* 800069BC  48 33 56 3D */	bl OSGetStackPointer
/* 800069C0  80 9F 03 08 */	lwz r4, 0x308(r31)
/* 800069C4  38 04 0A 00 */	addi r0, r4, 0xa00
/* 800069C8  7C 03 00 40 */	cmplw r3, r0
/* 800069CC  41 80 00 10 */	blt lbl_800069DC
/* 800069D0  80 1F 03 04 */	lwz r0, 0x304(r31)
/* 800069D4  7C 03 00 40 */	cmplw r3, r0
/* 800069D8  40 81 00 14 */	ble lbl_800069EC
lbl_800069DC:
/* 800069DC  7F A3 EB 78 */	mr r3, r29
/* 800069E0  7F C4 F3 78 */	mr r4, r30
/* 800069E4  4B FF FE F9 */	bl mDoPrintf_vprintf_Interrupt__FPCcP16__va_list_struct
/* 800069E8  48 00 00 10 */	b lbl_800069F8
lbl_800069EC:
/* 800069EC  7F A3 EB 78 */	mr r3, r29
/* 800069F0  7F C4 F3 78 */	mr r4, r30
/* 800069F4  4B FF FF 71 */	bl mDoPrintf_vprintf_Thread__FPCcP16__va_list_struct
lbl_800069F8:
/* 800069F8  39 61 00 20 */	addi r11, r1, 0x20
/* 800069FC  48 35 B8 2D */	bl _restgpr_29
/* 80006A00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80006A04  7C 08 03 A6 */	mtlr r0
/* 80006A08  38 21 00 20 */	addi r1, r1, 0x20
/* 80006A0C  4E 80 00 20 */	blr 
