lbl_801B7014:
/* 801B7014  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801B7018  7C 08 02 A6 */	mflr r0
/* 801B701C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801B7020  39 61 00 20 */	addi r11, r1, 0x20
/* 801B7024  48 1A B1 B9 */	bl _savegpr_29
/* 801B7028  7C 7F 1B 78 */	mr r31, r3
/* 801B702C  3C 60 80 39 */	lis r3, lit_3778@ha
/* 801B7030  3B A3 4F 78 */	addi r29, r3, lit_3778@l
/* 801B7034  48 00 04 01 */	bl getCrystalNum__17dMenu_Collect3D_cFv
/* 801B7038  54 7E 06 3F */	clrlwi. r30, r3, 0x18
/* 801B703C  54 67 15 BA */	rlwinm r7, r3, 2, 0x16, 0x1d
/* 801B7040  38 7D 03 40 */	addi r3, r29, 0x340
/* 801B7044  7C 03 3C 2E */	lfsx f0, r3, r7
/* 801B7048  D0 1F 03 C4 */	stfs f0, 0x3c4(r31)
/* 801B704C  38 7D 03 54 */	addi r3, r29, 0x354
/* 801B7050  7C 03 3C 2E */	lfsx f0, r3, r7
/* 801B7054  D0 1F 03 C8 */	stfs f0, 0x3c8(r31)
/* 801B7058  38 7D 03 68 */	addi r3, r29, 0x368
/* 801B705C  7C 03 3C 2E */	lfsx f0, r3, r7
/* 801B7060  D0 1F 03 CC */	stfs f0, 0x3cc(r31)
/* 801B7064  C0 02 A5 28 */	lfs f0, lit_4481(r2)
/* 801B7068  D0 1F 03 B0 */	stfs f0, 0x3b0(r31)
/* 801B706C  D0 1F 03 B4 */	stfs f0, 0x3b4(r31)
/* 801B7070  D0 1F 03 B8 */	stfs f0, 0x3b8(r31)
/* 801B7074  38 00 00 00 */	li r0, 0
/* 801B7078  B0 1F 03 BC */	sth r0, 0x3bc(r31)
/* 801B707C  B0 1F 03 BE */	sth r0, 0x3be(r31)
/* 801B7080  B0 1F 03 C0 */	sth r0, 0x3c0(r31)
/* 801B7084  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801B7088  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801B708C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801B7090  41 82 01 1C */	beq lbl_801B71AC
/* 801B7094  7F E3 FB 78 */	mr r3, r31
/* 801B7098  3C 80 80 39 */	lis r4, d_menu_d_menu_collect__stringBase0@ha
/* 801B709C  38 84 53 30 */	addi r4, r4, d_menu_d_menu_collect__stringBase0@l
/* 801B70A0  38 84 01 26 */	addi r4, r4, 0x126
/* 801B70A4  3C A0 80 3C */	lis r5, bck_name_7583@ha
/* 801B70A8  38 05 C7 1C */	addi r0, r5, bck_name_7583@l
/* 801B70AC  7C A0 3A 14 */	add r5, r0, r7
/* 801B70B0  80 A5 FF FC */	lwz r5, -4(r5)
/* 801B70B4  3C C0 80 3C */	lis r6, brk_name_7584@ha
/* 801B70B8  38 06 C7 2C */	addi r0, r6, brk_name_7584@l
/* 801B70BC  7C C0 3A 14 */	add r6, r0, r7
/* 801B70C0  80 C6 FF FC */	lwz r6, -4(r6)
/* 801B70C4  4B FF F9 6D */	bl setJ3D__17dMenu_Collect3D_cFPCcPCcPCc
/* 801B70C8  2C 1E 00 02 */	cmpwi r30, 2
/* 801B70CC  41 82 00 60 */	beq lbl_801B712C
/* 801B70D0  40 80 00 10 */	bge lbl_801B70E0
/* 801B70D4  2C 1E 00 01 */	cmpwi r30, 1
/* 801B70D8  40 80 00 14 */	bge lbl_801B70EC
/* 801B70DC  48 00 00 D0 */	b lbl_801B71AC
lbl_801B70E0:
/* 801B70E0  2C 1E 00 04 */	cmpwi r30, 4
/* 801B70E4  40 80 00 C8 */	bge lbl_801B71AC
/* 801B70E8  48 00 00 84 */	b lbl_801B716C
lbl_801B70EC:
/* 801B70EC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B70F0  80 63 00 04 */	lwz r3, 4(r3)
/* 801B70F4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801B70F8  80 63 00 00 */	lwz r3, 0(r3)
/* 801B70FC  80 63 00 08 */	lwz r3, 8(r3)
/* 801B7100  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801B7104  60 00 00 01 */	ori r0, r0, 1
/* 801B7108  90 03 00 0C */	stw r0, 0xc(r3)
/* 801B710C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B7110  80 63 00 04 */	lwz r3, 4(r3)
/* 801B7114  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801B7118  80 63 00 04 */	lwz r3, 4(r3)
/* 801B711C  80 63 00 08 */	lwz r3, 8(r3)
/* 801B7120  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801B7124  60 00 00 01 */	ori r0, r0, 1
/* 801B7128  90 03 00 0C */	stw r0, 0xc(r3)
lbl_801B712C:
/* 801B712C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B7130  80 63 00 04 */	lwz r3, 4(r3)
/* 801B7134  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801B7138  80 63 00 08 */	lwz r3, 8(r3)
/* 801B713C  80 63 00 08 */	lwz r3, 8(r3)
/* 801B7140  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801B7144  60 00 00 01 */	ori r0, r0, 1
/* 801B7148  90 03 00 0C */	stw r0, 0xc(r3)
/* 801B714C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B7150  80 63 00 04 */	lwz r3, 4(r3)
/* 801B7154  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801B7158  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801B715C  80 63 00 08 */	lwz r3, 8(r3)
/* 801B7160  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801B7164  60 00 00 01 */	ori r0, r0, 1
/* 801B7168  90 03 00 0C */	stw r0, 0xc(r3)
lbl_801B716C:
/* 801B716C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B7170  80 63 00 04 */	lwz r3, 4(r3)
/* 801B7174  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801B7178  80 63 00 18 */	lwz r3, 0x18(r3)
/* 801B717C  80 63 00 08 */	lwz r3, 8(r3)
/* 801B7180  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801B7184  60 00 00 01 */	ori r0, r0, 1
/* 801B7188  90 03 00 0C */	stw r0, 0xc(r3)
/* 801B718C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B7190  80 63 00 04 */	lwz r3, 4(r3)
/* 801B7194  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801B7198  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801B719C  80 63 00 08 */	lwz r3, 8(r3)
/* 801B71A0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801B71A4  60 00 00 01 */	ori r0, r0, 1
/* 801B71A8  90 03 00 0C */	stw r0, 0xc(r3)
lbl_801B71AC:
/* 801B71AC  39 61 00 20 */	addi r11, r1, 0x20
/* 801B71B0  48 1A B0 79 */	bl _restgpr_29
/* 801B71B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801B71B8  7C 08 03 A6 */	mtlr r0
/* 801B71BC  38 21 00 20 */	addi r1, r1, 0x20
/* 801B71C0  4E 80 00 20 */	blr 
