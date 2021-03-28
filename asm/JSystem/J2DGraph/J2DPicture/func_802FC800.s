lbl_802FC800:
/* 802FC800  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802FC804  7C 08 02 A6 */	mflr r0
/* 802FC808  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FC80C  39 61 00 20 */	addi r11, r1, 0x20
/* 802FC810  48 06 59 CD */	bl _savegpr_29
/* 802FC814  7C 7D 1B 78 */	mr r29, r3
/* 802FC818  7D 1E 43 78 */	mr r30, r8
/* 802FC81C  7D 3F 4B 78 */	mr r31, r9
/* 802FC820  4B FF 96 69 */	bl func_802F5E88
/* 802FC824  3C 60 80 3D */	lis r3, __vt__10J2DPicture@ha
/* 802FC828  38 03 D1 D8 */	addi r0, r3, __vt__10J2DPicture@l
/* 802FC82C  90 1D 00 00 */	stw r0, 0(r29)
/* 802FC830  38 7D 01 0A */	addi r3, r29, 0x10a
/* 802FC834  3C 80 80 30 */	lis r4, func_802FF204@ha
/* 802FC838  38 84 F2 04 */	addi r4, r4, func_802FF204@l
/* 802FC83C  38 A0 00 00 */	li r5, 0
/* 802FC840  38 C0 00 04 */	li r6, 4
/* 802FC844  38 E0 00 04 */	li r7, 4
/* 802FC848  48 06 55 19 */	bl __construct_array
/* 802FC84C  38 00 00 00 */	li r0, 0
/* 802FC850  90 1D 01 2C */	stw r0, 0x12c(r29)
/* 802FC854  38 00 FF FF */	li r0, -1
/* 802FC858  90 1D 01 30 */	stw r0, 0x130(r29)
/* 802FC85C  90 1D 01 34 */	stw r0, 0x134(r29)
/* 802FC860  38 7D 01 38 */	addi r3, r29, 0x138
/* 802FC864  3C 80 80 19 */	lis r4, __ct__Q28JUtility6TColorFv@ha
/* 802FC868  38 84 39 60 */	addi r4, r4, __ct__Q28JUtility6TColorFv@l
/* 802FC86C  38 A0 00 00 */	li r5, 0
/* 802FC870  38 C0 00 04 */	li r6, 4
/* 802FC874  38 E0 00 04 */	li r7, 4
/* 802FC878  48 06 54 E9 */	bl __construct_array
/* 802FC87C  38 00 FF FF */	li r0, -1
/* 802FC880  90 1D 01 48 */	stw r0, 0x148(r29)
/* 802FC884  90 1D 01 4C */	stw r0, 0x14c(r29)
/* 802FC888  38 60 00 00 */	li r3, 0
/* 802FC88C  7C 64 1B 78 */	mr r4, r3
/* 802FC890  38 00 00 02 */	li r0, 2
/* 802FC894  7C 09 03 A6 */	mtctr r0
lbl_802FC898:
/* 802FC898  38 03 01 00 */	addi r0, r3, 0x100
/* 802FC89C  7C 9D 01 2E */	stwx r4, r29, r0
/* 802FC8A0  38 63 00 04 */	addi r3, r3, 4
/* 802FC8A4  42 00 FF F4 */	bdnz lbl_802FC898
/* 802FC8A8  38 00 00 00 */	li r0, 0
/* 802FC8AC  98 1D 01 09 */	stb r0, 0x109(r29)
/* 802FC8B0  98 1D 01 08 */	stb r0, 0x108(r29)
/* 802FC8B4  7F A3 EB 78 */	mr r3, r29
/* 802FC8B8  7F C4 F3 78 */	mr r4, r30
/* 802FC8BC  7F E5 FB 78 */	mr r5, r31
/* 802FC8C0  48 00 04 B1 */	bl private_initiate__10J2DPictureFPC7ResTIMGPC7ResTLUT
/* 802FC8C4  7F A3 EB 78 */	mr r3, r29
/* 802FC8C8  48 00 05 D5 */	bl initinfo__10J2DPictureFv
/* 802FC8CC  7F A3 EB 78 */	mr r3, r29
/* 802FC8D0  39 61 00 20 */	addi r11, r1, 0x20
/* 802FC8D4  48 06 59 55 */	bl _restgpr_29
/* 802FC8D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FC8DC  7C 08 03 A6 */	mtlr r0
/* 802FC8E0  38 21 00 20 */	addi r1, r1, 0x20
/* 802FC8E4  4E 80 00 20 */	blr 
