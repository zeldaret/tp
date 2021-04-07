lbl_801BB498:
/* 801BB498  3D 20 80 3C */	lis r9, __vt__12dMenu_Dmap_c@ha /* 0x803BCB10@ha */
/* 801BB49C  38 09 CB 10 */	addi r0, r9, __vt__12dMenu_Dmap_c@l /* 0x803BCB10@l */
/* 801BB4A0  90 03 00 00 */	stw r0, 0(r3)
/* 801BB4A4  39 40 00 00 */	li r10, 0
/* 801BB4A8  3D 20 80 43 */	lis r9, g_meter2_info@ha /* 0x80430188@ha */
/* 801BB4AC  39 29 01 88 */	addi r9, r9, g_meter2_info@l /* 0x80430188@l */
/* 801BB4B0  99 49 00 F2 */	stb r10, 0xf2(r9)
/* 801BB4B4  90 6D 8B 00 */	stw r3, myclass__12dMenu_Dmap_c(r13)
/* 801BB4B8  90 83 00 E8 */	stw r4, 0xe8(r3)
/* 801BB4BC  90 A3 00 F4 */	stw r5, 0xf4(r3)
/* 801BB4C0  90 C3 00 F8 */	stw r6, 0xf8(r3)
/* 801BB4C4  98 E3 01 7F */	stb r7, 0x17f(r3)
/* 801BB4C8  91 43 00 08 */	stw r10, 8(r3)
/* 801BB4CC  91 43 00 EC */	stw r10, 0xec(r3)
/* 801BB4D0  91 43 00 FC */	stw r10, 0xfc(r3)
/* 801BB4D4  91 43 00 F0 */	stw r10, 0xf0(r3)
/* 801BB4D8  91 43 00 94 */	stw r10, 0x94(r3)
/* 801BB4DC  99 43 01 7C */	stb r10, 0x17c(r3)
/* 801BB4E0  7D 44 53 78 */	mr r4, r10
/* 801BB4E4  38 00 00 08 */	li r0, 8
/* 801BB4E8  7C 09 03 A6 */	mtctr r0
lbl_801BB4EC:
/* 801BB4EC  38 04 00 14 */	addi r0, r4, 0x14
/* 801BB4F0  7D 43 01 2E */	stwx r10, r3, r0
/* 801BB4F4  38 84 00 04 */	addi r4, r4, 4
/* 801BB4F8  42 00 FF F4 */	bdnz lbl_801BB4EC
/* 801BB4FC  38 80 00 00 */	li r4, 0
/* 801BB500  38 A0 00 00 */	li r5, 0
/* 801BB504  38 00 00 08 */	li r0, 8
/* 801BB508  7C 09 03 A6 */	mtctr r0
lbl_801BB50C:
/* 801BB50C  7C C3 22 14 */	add r6, r3, r4
/* 801BB510  90 A6 00 14 */	stw r5, 0x14(r6)
/* 801BB514  90 A6 00 34 */	stw r5, 0x34(r6)
/* 801BB518  90 A6 00 54 */	stw r5, 0x54(r6)
/* 801BB51C  38 84 00 04 */	addi r4, r4, 4
/* 801BB520  42 00 FF EC */	bdnz lbl_801BB50C
/* 801BB524  38 80 00 00 */	li r4, 0
/* 801BB528  38 A0 00 00 */	li r5, 0
/* 801BB52C  38 00 00 02 */	li r0, 2
/* 801BB530  7C 09 03 A6 */	mtctr r0
lbl_801BB534:
/* 801BB534  38 04 00 74 */	addi r0, r4, 0x74
/* 801BB538  7C A3 01 2E */	stwx r5, r3, r0
/* 801BB53C  38 84 00 04 */	addi r4, r4, 4
/* 801BB540  42 00 FF F4 */	bdnz lbl_801BB534
/* 801BB544  38 A0 00 00 */	li r5, 0
/* 801BB548  90 A3 00 10 */	stw r5, 0x10(r3)
/* 801BB54C  38 80 00 00 */	li r4, 0
/* 801BB550  38 00 00 03 */	li r0, 3
/* 801BB554  7C 09 03 A6 */	mtctr r0
lbl_801BB558:
/* 801BB558  7C C3 22 14 */	add r6, r3, r4
/* 801BB55C  90 A6 00 7C */	stw r5, 0x7c(r6)
/* 801BB560  90 A6 00 88 */	stw r5, 0x88(r6)
/* 801BB564  38 84 00 04 */	addi r4, r4, 4
/* 801BB568  42 00 FF F0 */	bdnz lbl_801BB558
/* 801BB56C  38 00 00 00 */	li r0, 0
/* 801BB570  90 03 00 98 */	stw r0, 0x98(r3)
/* 801BB574  90 03 00 04 */	stw r0, 4(r3)
/* 801BB578  C0 22 A5 E8 */	lfs f1, lit_3962(r2)
/* 801BB57C  D0 23 01 44 */	stfs f1, 0x144(r3)
/* 801BB580  D0 23 01 48 */	stfs f1, 0x148(r3)
/* 801BB584  98 03 01 81 */	stb r0, 0x181(r3)
/* 801BB588  55 00 06 3E */	clrlwi r0, r8, 0x18
/* 801BB58C  28 00 00 01 */	cmplwi r0, 1
/* 801BB590  40 82 00 14 */	bne lbl_801BB5A4
/* 801BB594  C0 02 A6 44 */	lfs f0, lit_4926(r2)
/* 801BB598  D0 03 01 04 */	stfs f0, 0x104(r3)
/* 801BB59C  D0 23 01 08 */	stfs f1, 0x108(r3)
/* 801BB5A0  48 00 00 54 */	b lbl_801BB5F4
lbl_801BB5A4:
/* 801BB5A4  28 00 00 03 */	cmplwi r0, 3
/* 801BB5A8  40 82 00 14 */	bne lbl_801BB5BC
/* 801BB5AC  C0 02 A6 24 */	lfs f0, lit_4784(r2)
/* 801BB5B0  D0 03 01 04 */	stfs f0, 0x104(r3)
/* 801BB5B4  D0 23 01 08 */	stfs f1, 0x108(r3)
/* 801BB5B8  48 00 00 3C */	b lbl_801BB5F4
lbl_801BB5BC:
/* 801BB5BC  28 00 00 02 */	cmplwi r0, 2
/* 801BB5C0  40 82 00 14 */	bne lbl_801BB5D4
/* 801BB5C4  D0 23 01 04 */	stfs f1, 0x104(r3)
/* 801BB5C8  C0 02 A6 48 */	lfs f0, lit_4927(r2)
/* 801BB5CC  D0 03 01 08 */	stfs f0, 0x108(r3)
/* 801BB5D0  48 00 00 24 */	b lbl_801BB5F4
lbl_801BB5D4:
/* 801BB5D4  28 00 00 00 */	cmplwi r0, 0
/* 801BB5D8  40 82 00 14 */	bne lbl_801BB5EC
/* 801BB5DC  D0 23 01 04 */	stfs f1, 0x104(r3)
/* 801BB5E0  C0 02 A6 28 */	lfs f0, lit_4785(r2)
/* 801BB5E4  D0 03 01 08 */	stfs f0, 0x108(r3)
/* 801BB5E8  48 00 00 0C */	b lbl_801BB5F4
lbl_801BB5EC:
/* 801BB5EC  D0 23 01 04 */	stfs f1, 0x104(r3)
/* 801BB5F0  D0 23 01 08 */	stfs f1, 0x108(r3)
lbl_801BB5F4:
/* 801BB5F4  C0 02 A5 E8 */	lfs f0, lit_3962(r2)
/* 801BB5F8  D0 03 01 0C */	stfs f0, 0x10c(r3)
/* 801BB5FC  D0 03 01 10 */	stfs f0, 0x110(r3)
/* 801BB600  D0 03 01 34 */	stfs f0, 0x134(r3)
/* 801BB604  D0 03 01 38 */	stfs f0, 0x138(r3)
/* 801BB608  D0 03 01 3C */	stfs f0, 0x13c(r3)
/* 801BB60C  D0 03 01 40 */	stfs f0, 0x140(r3)
/* 801BB610  99 03 01 7A */	stb r8, 0x17a(r3)
/* 801BB614  38 00 00 00 */	li r0, 0
/* 801BB618  B0 03 01 64 */	sth r0, 0x164(r3)
/* 801BB61C  98 03 01 85 */	stb r0, 0x185(r3)
/* 801BB620  98 03 01 80 */	stb r0, 0x180(r3)
/* 801BB624  90 03 00 04 */	stw r0, 4(r3)
/* 801BB628  90 03 00 E0 */	stw r0, 0xe0(r3)
/* 801BB62C  90 03 00 E4 */	stw r0, 0xe4(r3)
/* 801BB630  4E 80 00 20 */	blr 
