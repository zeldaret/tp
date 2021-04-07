lbl_80016168:
/* 80016168  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001616C  7C 08 02 A6 */	mflr r0
/* 80016170  90 01 00 24 */	stw r0, 0x24(r1)
/* 80016174  39 61 00 20 */	addi r11, r1, 0x20
/* 80016178  48 34 C0 65 */	bl _savegpr_29
/* 8001617C  7C 7D 1B 78 */	mr r29, r3
/* 80016180  7C 9E 23 78 */	mr r30, r4
/* 80016184  7C BF 2B 78 */	mr r31, r5
/* 80016188  4B FF F9 ED */	bl __ct__19mDoDvdThd_command_cFv
/* 8001618C  3C 60 80 3A */	lis r3, __vt__25mDoDvdThd_mountXArchive_c@ha /* 0x803A34B8@ha */
/* 80016190  38 03 34 B8 */	addi r0, r3, __vt__25mDoDvdThd_mountXArchive_c@l /* 0x803A34B8@l */
/* 80016194  90 1D 00 10 */	stw r0, 0x10(r29)
/* 80016198  9B DD 00 14 */	stb r30, 0x14(r29)
/* 8001619C  38 00 FF FF */	li r0, -1
/* 800161A0  90 1D 00 18 */	stw r0, 0x18(r29)
/* 800161A4  38 00 00 00 */	li r0, 0
/* 800161A8  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 800161AC  93 FD 00 20 */	stw r31, 0x20(r29)
/* 800161B0  90 1D 00 24 */	stw r0, 0x24(r29)
/* 800161B4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800161B8  40 82 00 0C */	bne lbl_800161C4
/* 800161BC  88 0D 87 01 */	lbz r0, struct_80450C80+0x1(r13)
/* 800161C0  98 1D 00 14 */	stb r0, 0x14(r29)
lbl_800161C4:
/* 800161C4  7F A3 EB 78 */	mr r3, r29
/* 800161C8  39 61 00 20 */	addi r11, r1, 0x20
/* 800161CC  48 34 C0 5D */	bl _restgpr_29
/* 800161D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800161D4  7C 08 03 A6 */	mtlr r0
/* 800161D8  38 21 00 20 */	addi r1, r1, 0x20
/* 800161DC  4E 80 00 20 */	blr 
