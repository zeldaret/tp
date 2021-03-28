lbl_801EF6A0:
/* 801EF6A0  3C 80 80 3C */	lis r4, __vt__12dMenu_save_c@ha
/* 801EF6A4  38 04 BD 78 */	addi r0, r4, __vt__12dMenu_save_c@l
/* 801EF6A8  90 03 00 00 */	stw r0, 0(r3)
/* 801EF6AC  3C 80 80 3A */	lis r4, __vt__12dDlst_base_c@ha
/* 801EF6B0  38 C4 6F 88 */	addi r6, r4, __vt__12dDlst_base_c@l
/* 801EF6B4  90 C3 00 10 */	stw r6, 0x10(r3)
/* 801EF6B8  3C 80 80 3C */	lis r4, __vt__23dDlst_MenuSaveExplain_c@ha
/* 801EF6BC  38 04 E7 74 */	addi r0, r4, __vt__23dDlst_MenuSaveExplain_c@l
/* 801EF6C0  90 03 00 10 */	stw r0, 0x10(r3)
/* 801EF6C4  38 A0 00 00 */	li r5, 0
/* 801EF6C8  90 A3 00 14 */	stw r5, 0x14(r3)
/* 801EF6CC  90 C3 00 18 */	stw r6, 0x18(r3)
/* 801EF6D0  3C 80 80 3C */	lis r4, __vt__16dDlst_MenuSave_c@ha
/* 801EF6D4  38 04 E7 64 */	addi r0, r4, __vt__16dDlst_MenuSave_c@l
/* 801EF6D8  90 03 00 18 */	stw r0, 0x18(r3)
/* 801EF6DC  90 A3 00 1C */	stw r5, 0x1c(r3)
/* 801EF6E0  90 A3 00 28 */	stw r5, 0x28(r3)
/* 801EF6E4  90 A3 21 8C */	stw r5, 0x218c(r3)
/* 801EF6E8  90 A3 00 30 */	stw r5, 0x30(r3)
/* 801EF6EC  90 A3 00 2C */	stw r5, 0x2c(r3)
/* 801EF6F0  7C A4 2B 78 */	mr r4, r5
/* 801EF6F4  38 00 00 03 */	li r0, 3
/* 801EF6F8  7C 09 03 A6 */	mtctr r0
lbl_801EF6FC:
/* 801EF6FC  7C C3 22 14 */	add r6, r3, r4
/* 801EF700  90 A6 00 D4 */	stw r5, 0xd4(r6)
/* 801EF704  90 A6 00 E0 */	stw r5, 0xe0(r6)
/* 801EF708  90 A6 00 EC */	stw r5, 0xec(r6)
/* 801EF70C  90 A6 00 F8 */	stw r5, 0xf8(r6)
/* 801EF710  90 A6 00 68 */	stw r5, 0x68(r6)
/* 801EF714  90 A6 00 34 */	stw r5, 0x34(r6)
/* 801EF718  38 84 00 04 */	addi r4, r4, 4
/* 801EF71C  42 00 FF E0 */	bdnz lbl_801EF6FC
/* 801EF720  38 A0 00 00 */	li r5, 0
/* 801EF724  90 A3 00 58 */	stw r5, 0x58(r3)
/* 801EF728  38 80 00 00 */	li r4, 0
/* 801EF72C  38 00 00 02 */	li r0, 2
/* 801EF730  7C 09 03 A6 */	mtctr r0
lbl_801EF734:
/* 801EF734  7C C3 22 14 */	add r6, r3, r4
/* 801EF738  90 A6 00 84 */	stw r5, 0x84(r6)
/* 801EF73C  90 A6 01 18 */	stw r5, 0x118(r6)
/* 801EF740  90 A6 01 20 */	stw r5, 0x120(r6)
/* 801EF744  90 A6 01 28 */	stw r5, 0x128(r6)
/* 801EF748  90 A6 01 68 */	stw r5, 0x168(r6)
/* 801EF74C  90 A6 00 C0 */	stw r5, 0xc0(r6)
/* 801EF750  90 A6 01 38 */	stw r5, 0x138(r6)
/* 801EF754  38 84 00 04 */	addi r4, r4, 4
/* 801EF758  42 00 FF DC */	bdnz lbl_801EF734
/* 801EF75C  38 00 00 00 */	li r0, 0
/* 801EF760  90 03 00 40 */	stw r0, 0x40(r3)
/* 801EF764  90 03 00 44 */	stw r0, 0x44(r3)
/* 801EF768  90 03 00 48 */	stw r0, 0x48(r3)
/* 801EF76C  90 03 01 40 */	stw r0, 0x140(r3)
/* 801EF770  90 03 01 48 */	stw r0, 0x148(r3)
/* 801EF774  90 03 01 50 */	stw r0, 0x150(r3)
/* 801EF778  90 03 01 58 */	stw r0, 0x158(r3)
/* 801EF77C  90 03 01 60 */	stw r0, 0x160(r3)
/* 801EF780  90 03 00 4C */	stw r0, 0x4c(r3)
/* 801EF784  90 03 01 94 */	stw r0, 0x194(r3)
/* 801EF788  90 03 01 98 */	stw r0, 0x198(r3)
/* 801EF78C  90 03 01 A0 */	stw r0, 0x1a0(r3)
/* 801EF790  90 03 01 A4 */	stw r0, 0x1a4(r3)
/* 801EF794  90 03 00 04 */	stw r0, 4(r3)
/* 801EF798  98 03 01 B0 */	stb r0, 0x1b0(r3)
/* 801EF79C  90 03 00 08 */	stw r0, 8(r3)
/* 801EF7A0  98 03 21 A2 */	stb r0, 0x21a2(r3)
/* 801EF7A4  98 03 21 A1 */	stb r0, 0x21a1(r3)
/* 801EF7A8  4E 80 00 20 */	blr 
