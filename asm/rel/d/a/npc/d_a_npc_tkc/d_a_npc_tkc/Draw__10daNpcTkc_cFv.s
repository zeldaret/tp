lbl_80B0D1EC:
/* 80B0D1EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0D1F0  7C 08 02 A6 */	mflr r0
/* 80B0D1F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0D1F8  88 03 0D 7A */	lbz r0, 0xd7a(r3)
/* 80B0D1FC  28 00 00 00 */	cmplwi r0, 0
/* 80B0D200  40 82 00 0C */	bne lbl_80B0D20C
/* 80B0D204  38 60 00 01 */	li r3, 1
/* 80B0D208  48 00 00 44 */	b lbl_80B0D24C
lbl_80B0D20C:
/* 80B0D20C  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80B0D210  80 84 00 04 */	lwz r4, 4(r4)
/* 80B0D214  80 84 00 04 */	lwz r4, 4(r4)
/* 80B0D218  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80B0D21C  80 84 00 08 */	lwz r4, 8(r4)
/* 80B0D220  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80B0D224  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80B0D228  38 80 00 00 */	li r4, 0
/* 80B0D22C  38 A0 00 00 */	li r5, 0
/* 80B0D230  3C C0 80 B1 */	lis r6, m__16daNpcTkc_Param_c@ha /* 0x80B108B4@ha */
/* 80B0D234  38 C6 08 B4 */	addi r6, r6, m__16daNpcTkc_Param_c@l /* 0x80B108B4@l */
/* 80B0D238  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80B0D23C  38 C0 00 00 */	li r6, 0
/* 80B0D240  38 E0 00 00 */	li r7, 0
/* 80B0D244  4B 64 50 69 */	bl draw__8daNpcF_cFiifP11_GXColorS10i
/* 80B0D248  38 60 00 01 */	li r3, 1
lbl_80B0D24C:
/* 80B0D24C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0D250  7C 08 03 A6 */	mtlr r0
/* 80B0D254  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0D258  4E 80 00 20 */	blr 
