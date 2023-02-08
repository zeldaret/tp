lbl_80D3A1D8:
/* 80D3A1D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A1DC  7C 08 02 A6 */	mflr r0
/* 80D3A1E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A1E4  28 03 00 00 */	cmplwi r3, 0
/* 80D3A1E8  41 82 00 24 */	beq lbl_80D3A20C
/* 80D3A1EC  28 05 00 00 */	cmplwi r5, 0
/* 80D3A1F0  41 82 00 1C */	beq lbl_80D3A20C
/* 80D3A1F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3A1F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3A1FC  80 04 5D B4 */	lwz r0, 0x5db4(r4)
/* 80D3A200  7C 05 00 40 */	cmplw r5, r0
/* 80D3A204  40 82 00 08 */	bne lbl_80D3A20C
/* 80D3A208  48 00 09 95 */	bl initActionOrderGetDemo__14daObjWStatue_cFv
lbl_80D3A20C:
/* 80D3A20C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A210  7C 08 03 A6 */	mtlr r0
/* 80D3A214  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A218  4E 80 00 20 */	blr 
