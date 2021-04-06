lbl_801FE5CC:
/* 801FE5CC  3C 80 80 3C */	lis r4, __vt__22dMeter_drawLetterHIO_c@ha /* 0x803BF178@ha */
/* 801FE5D0  38 04 F1 78 */	addi r0, r4, __vt__22dMeter_drawLetterHIO_c@l /* 0x803BF178@l */
/* 801FE5D4  90 03 00 00 */	stw r0, 0(r3)
/* 801FE5D8  38 00 FF FF */	li r0, -1
/* 801FE5DC  90 03 00 3C */	stw r0, 0x3c(r3)
/* 801FE5E0  90 03 00 40 */	stw r0, 0x40(r3)
/* 801FE5E4  90 03 00 44 */	stw r0, 0x44(r3)
/* 801FE5E8  90 03 00 48 */	stw r0, 0x48(r3)
/* 801FE5EC  90 03 00 4C */	stw r0, 0x4c(r3)
/* 801FE5F0  90 03 00 50 */	stw r0, 0x50(r3)
/* 801FE5F4  90 03 00 54 */	stw r0, 0x54(r3)
/* 801FE5F8  90 03 00 58 */	stw r0, 0x58(r3)
/* 801FE5FC  38 80 00 00 */	li r4, 0
/* 801FE600  38 A0 00 0A */	li r5, 0xa
/* 801FE604  38 00 00 02 */	li r0, 2
/* 801FE608  7C 09 03 A6 */	mtctr r0
lbl_801FE60C:
/* 801FE60C  7C C3 22 14 */	add r6, r3, r4
/* 801FE610  B0 A6 00 30 */	sth r5, 0x30(r6)
/* 801FE614  B0 A6 00 34 */	sth r5, 0x34(r6)
/* 801FE618  38 84 00 02 */	addi r4, r4, 2
/* 801FE61C  42 00 FF F0 */	bdnz lbl_801FE60C
/* 801FE620  38 E0 00 00 */	li r7, 0
/* 801FE624  B0 E3 00 38 */	sth r7, 0x38(r3)
/* 801FE628  98 E3 00 5F */	stb r7, 0x5f(r3)
/* 801FE62C  38 C0 00 FF */	li r6, 0xff
/* 801FE630  98 C3 00 5C */	stb r6, 0x5c(r3)
/* 801FE634  C0 02 AB 20 */	lfs f0, lit_3828(r2)
/* 801FE638  D0 03 00 08 */	stfs f0, 8(r3)
/* 801FE63C  C0 02 AB 24 */	lfs f0, lit_3829(r2)
/* 801FE640  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801FE644  C0 22 AA F8 */	lfs f1, lit_3793(r2)
/* 801FE648  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 801FE64C  C0 02 AB 34 */	lfs f0, lit_3867(r2)
/* 801FE650  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 801FE654  C0 02 AA E0 */	lfs f0, lit_3787(r2)
/* 801FE658  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 801FE65C  D0 23 00 1C */	stfs f1, 0x1c(r3)
/* 801FE660  D0 23 00 20 */	stfs f1, 0x20(r3)
/* 801FE664  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801FE668  38 00 00 96 */	li r0, 0x96
/* 801FE66C  98 03 00 5D */	stb r0, 0x5d(r3)
/* 801FE670  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 801FE674  D0 23 00 2C */	stfs f1, 0x2c(r3)
/* 801FE678  38 00 00 82 */	li r0, 0x82
/* 801FE67C  98 03 00 5E */	stb r0, 0x5e(r3)
/* 801FE680  98 E3 00 3C */	stb r7, 0x3c(r3)
/* 801FE684  98 E3 00 3D */	stb r7, 0x3d(r3)
/* 801FE688  98 E3 00 3E */	stb r7, 0x3e(r3)
/* 801FE68C  98 E3 00 3F */	stb r7, 0x3f(r3)
/* 801FE690  98 C3 00 40 */	stb r6, 0x40(r3)
/* 801FE694  98 C3 00 41 */	stb r6, 0x41(r3)
/* 801FE698  98 C3 00 42 */	stb r6, 0x42(r3)
/* 801FE69C  98 C3 00 43 */	stb r6, 0x43(r3)
/* 801FE6A0  38 00 00 69 */	li r0, 0x69
/* 801FE6A4  98 03 00 44 */	stb r0, 0x44(r3)
/* 801FE6A8  38 00 00 5F */	li r0, 0x5f
/* 801FE6AC  98 03 00 45 */	stb r0, 0x45(r3)
/* 801FE6B0  38 A0 00 37 */	li r5, 0x37
/* 801FE6B4  98 A3 00 46 */	stb r5, 0x46(r3)
/* 801FE6B8  98 C3 00 47 */	stb r6, 0x47(r3)
/* 801FE6BC  38 80 00 C8 */	li r4, 0xc8
/* 801FE6C0  98 83 00 48 */	stb r4, 0x48(r3)
/* 801FE6C4  38 00 00 B4 */	li r0, 0xb4
/* 801FE6C8  98 03 00 49 */	stb r0, 0x49(r3)
/* 801FE6CC  38 00 00 87 */	li r0, 0x87
/* 801FE6D0  98 03 00 4A */	stb r0, 0x4a(r3)
/* 801FE6D4  98 C3 00 4B */	stb r6, 0x4b(r3)
/* 801FE6D8  38 00 00 1F */	li r0, 0x1f
/* 801FE6DC  98 03 00 4C */	stb r0, 0x4c(r3)
/* 801FE6E0  38 00 00 18 */	li r0, 0x18
/* 801FE6E4  98 03 00 4D */	stb r0, 0x4d(r3)
/* 801FE6E8  38 00 00 0C */	li r0, 0xc
/* 801FE6EC  98 03 00 4E */	stb r0, 0x4e(r3)
/* 801FE6F0  98 E3 00 4F */	stb r7, 0x4f(r3)
/* 801FE6F4  98 C3 00 50 */	stb r6, 0x50(r3)
/* 801FE6F8  98 C3 00 51 */	stb r6, 0x51(r3)
/* 801FE6FC  98 83 00 52 */	stb r4, 0x52(r3)
/* 801FE700  98 C3 00 53 */	stb r6, 0x53(r3)
/* 801FE704  98 E3 00 54 */	stb r7, 0x54(r3)
/* 801FE708  98 E3 00 55 */	stb r7, 0x55(r3)
/* 801FE70C  98 E3 00 56 */	stb r7, 0x56(r3)
/* 801FE710  98 E3 00 57 */	stb r7, 0x57(r3)
/* 801FE714  38 00 00 41 */	li r0, 0x41
/* 801FE718  98 03 00 58 */	stb r0, 0x58(r3)
/* 801FE71C  98 A3 00 59 */	stb r5, 0x59(r3)
/* 801FE720  38 00 00 1E */	li r0, 0x1e
/* 801FE724  98 03 00 5A */	stb r0, 0x5a(r3)
/* 801FE728  98 C3 00 5B */	stb r6, 0x5b(r3)
/* 801FE72C  4E 80 00 20 */	blr 
