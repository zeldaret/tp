lbl_80D60898:
/* 80D60898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6089C  7C 08 02 A6 */	mflr r0
/* 80D608A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D608A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D608A8  7C 7F 1B 78 */	mr r31, r3
/* 80D608AC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D608B0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D608B4  40 82 00 28 */	bne lbl_80D608DC
/* 80D608B8  28 1F 00 00 */	cmplwi r31, 0
/* 80D608BC  41 82 00 14 */	beq lbl_80D608D0
/* 80D608C0  4B 2B 82 A4 */	b __ct__10fopAc_ac_cFv
/* 80D608C4  3C 60 80 D6 */	lis r3, __vt__18daTag_ShopCamera_c@ha
/* 80D608C8  38 03 0A E0 */	addi r0, r3, __vt__18daTag_ShopCamera_c@l
/* 80D608CC  90 1F 05 68 */	stw r0, 0x568(r31)
lbl_80D608D0:
/* 80D608D0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D608D4  60 00 00 08 */	ori r0, r0, 8
/* 80D608D8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D608DC:
/* 80D608DC  7F E3 FB 78 */	mr r3, r31
/* 80D608E0  48 00 00 35 */	bl initialize__18daTag_ShopCamera_cFv
/* 80D608E4  38 60 00 04 */	li r3, 4
/* 80D608E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D608EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D608F0  7C 08 03 A6 */	mtlr r0
/* 80D608F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D608F8  4E 80 00 20 */	blr 
