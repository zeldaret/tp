lbl_80D3A17C:
/* 80D3A17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3A180  7C 08 02 A6 */	mflr r0
/* 80D3A184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3A188  28 03 00 00 */	cmplwi r3, 0
/* 80D3A18C  41 82 00 3C */	beq lbl_80D3A1C8
/* 80D3A190  80 86 00 10 */	lwz r4, 0x10(r6)
/* 80D3A194  54 80 06 73 */	rlwinm. r0, r4, 0, 0x19, 0x19
/* 80D3A198  40 82 00 0C */	bne lbl_80D3A1A4
/* 80D3A19C  54 80 03 DF */	rlwinm. r0, r4, 0, 0xf, 0xf
/* 80D3A1A0  41 82 00 28 */	beq lbl_80D3A1C8
lbl_80D3A1A4:
/* 80D3A1A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3A1A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3A1AC  88 04 4F AD */	lbz r0, 0x4fad(r4)
/* 80D3A1B0  28 00 00 00 */	cmplwi r0, 0
/* 80D3A1B4  40 82 00 14 */	bne lbl_80D3A1C8
/* 80D3A1B8  88 03 09 38 */	lbz r0, 0x938(r3)
/* 80D3A1BC  28 00 00 04 */	cmplwi r0, 4
/* 80D3A1C0  41 82 00 08 */	beq lbl_80D3A1C8
/* 80D3A1C4  48 00 0C B9 */	bl actionInitBoomerangCarry__14daObjWStatue_cFv
lbl_80D3A1C8:
/* 80D3A1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3A1CC  7C 08 03 A6 */	mtlr r0
/* 80D3A1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3A1D4  4E 80 00 20 */	blr 
