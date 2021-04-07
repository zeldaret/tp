lbl_801F2698:
/* 801F2698  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F269C  7C 08 02 A6 */	mflr r0
/* 801F26A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F26A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F26A8  7C 7F 1B 78 */	mr r31, r3
/* 801F26AC  48 00 2A E5 */	bl errorTxtChangeAnm__12dMenu_save_cFv
/* 801F26B0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F26B4  28 00 00 01 */	cmplwi r0, 1
/* 801F26B8  40 82 00 3C */	bne lbl_801F26F4
/* 801F26BC  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 801F26C0  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 801F26C4  80 64 00 00 */	lwz r3, 0(r4)
/* 801F26C8  80 04 00 04 */	lwz r0, 4(r4)
/* 801F26CC  90 7F 01 C4 */	stw r3, 0x1c4(r31)
/* 801F26D0  90 1F 01 C8 */	stw r0, 0x1c8(r31)
/* 801F26D4  80 04 00 08 */	lwz r0, 8(r4)
/* 801F26D8  90 1F 01 CC */	stw r0, 0x1cc(r31)
/* 801F26DC  38 00 00 06 */	li r0, 6
/* 801F26E0  98 1F 01 B5 */	stb r0, 0x1b5(r31)
/* 801F26E4  38 00 00 09 */	li r0, 9
/* 801F26E8  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F26EC  38 00 00 00 */	li r0, 0
/* 801F26F0  98 1F 01 BF */	stb r0, 0x1bf(r31)
lbl_801F26F4:
/* 801F26F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F26F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F26FC  7C 08 03 A6 */	mtlr r0
/* 801F2700  38 21 00 10 */	addi r1, r1, 0x10
/* 801F2704  4E 80 00 20 */	blr 
