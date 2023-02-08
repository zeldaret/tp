lbl_8028F354:
/* 8028F354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028F358  7C 08 02 A6 */	mflr r0
/* 8028F35C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028F360  7C 68 1B 78 */	mr r8, r3
/* 8028F364  7C 89 23 78 */	mr r9, r4
/* 8028F368  54 67 07 BE */	clrlwi r7, r3, 0x1e
/* 8028F36C  54 86 07 BE */	clrlwi r6, r4, 0x1e
/* 8028F370  7C 07 30 40 */	cmplw r7, r6
/* 8028F374  40 82 00 14 */	bne lbl_8028F388
/* 8028F378  54 A0 07 3F */	clrlwi. r0, r5, 0x1c
/* 8028F37C  40 82 00 0C */	bne lbl_8028F388
/* 8028F380  4B FF FF 99 */	bl bcopyfast__7JASCalcFPCvPvUl
/* 8028F384  48 00 00 C0 */	b lbl_8028F444
lbl_8028F388:
/* 8028F388  7C 07 30 40 */	cmplw r7, r6
/* 8028F38C  40 82 00 98 */	bne lbl_8028F424
/* 8028F390  28 05 00 10 */	cmplwi r5, 0x10
/* 8028F394  41 80 00 90 */	blt lbl_8028F424
/* 8028F398  28 07 00 00 */	cmplwi r7, 0
/* 8028F39C  41 82 00 30 */	beq lbl_8028F3CC
/* 8028F3A0  20 07 00 04 */	subfic r0, r7, 4
/* 8028F3A4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8028F3A8  48 00 00 1C */	b lbl_8028F3C4
lbl_8028F3AC:
/* 8028F3AC  88 08 00 00 */	lbz r0, 0(r8)
/* 8028F3B0  98 09 00 00 */	stb r0, 0(r9)
/* 8028F3B4  39 29 00 01 */	addi r9, r9, 1
/* 8028F3B8  38 A5 FF FF */	addi r5, r5, -1
/* 8028F3BC  38 63 FF FF */	addi r3, r3, -1
/* 8028F3C0  39 08 00 01 */	addi r8, r8, 1
lbl_8028F3C4:
/* 8028F3C4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028F3C8  40 82 FF E4 */	bne lbl_8028F3AC
lbl_8028F3CC:
/* 8028F3CC  7D 24 4B 78 */	mr r4, r9
/* 8028F3D0  7D 03 43 78 */	mr r3, r8
/* 8028F3D4  54 A0 F0 BE */	srwi r0, r5, 2
/* 8028F3D8  7C 09 03 A6 */	mtctr r0
/* 8028F3DC  28 05 00 04 */	cmplwi r5, 4
/* 8028F3E0  41 80 00 1C */	blt lbl_8028F3FC
lbl_8028F3E4:
/* 8028F3E4  80 03 00 00 */	lwz r0, 0(r3)
/* 8028F3E8  90 04 00 00 */	stw r0, 0(r4)
/* 8028F3EC  38 84 00 04 */	addi r4, r4, 4
/* 8028F3F0  38 A5 FF FC */	addi r5, r5, -4
/* 8028F3F4  38 63 00 04 */	addi r3, r3, 4
/* 8028F3F8  42 00 FF EC */	bdnz lbl_8028F3E4
lbl_8028F3FC:
/* 8028F3FC  28 05 00 00 */	cmplwi r5, 0
/* 8028F400  41 82 00 44 */	beq lbl_8028F444
/* 8028F404  7C A9 03 A6 */	mtctr r5
/* 8028F408  41 82 00 3C */	beq lbl_8028F444
lbl_8028F40C:
/* 8028F40C  88 03 00 00 */	lbz r0, 0(r3)
/* 8028F410  98 04 00 00 */	stb r0, 0(r4)
/* 8028F414  38 84 00 01 */	addi r4, r4, 1
/* 8028F418  38 63 00 01 */	addi r3, r3, 1
/* 8028F41C  42 00 FF F0 */	bdnz lbl_8028F40C
/* 8028F420  48 00 00 24 */	b lbl_8028F444
lbl_8028F424:
/* 8028F424  7C A9 03 A6 */	mtctr r5
/* 8028F428  28 05 00 00 */	cmplwi r5, 0
/* 8028F42C  41 82 00 18 */	beq lbl_8028F444
lbl_8028F430:
/* 8028F430  88 08 00 00 */	lbz r0, 0(r8)
/* 8028F434  98 09 00 00 */	stb r0, 0(r9)
/* 8028F438  39 29 00 01 */	addi r9, r9, 1
/* 8028F43C  39 08 00 01 */	addi r8, r8, 1
/* 8028F440  42 00 FF F0 */	bdnz lbl_8028F430
lbl_8028F444:
/* 8028F444  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028F448  7C 08 03 A6 */	mtlr r0
/* 8028F44C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028F450  4E 80 00 20 */	blr 
