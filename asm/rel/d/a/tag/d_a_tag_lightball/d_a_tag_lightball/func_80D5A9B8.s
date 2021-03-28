lbl_80D5A9B8:
/* 80D5A9B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5A9BC  7C 08 02 A6 */	mflr r0
/* 80D5A9C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5A9C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5A9C8  7C 7F 1B 78 */	mr r31, r3
/* 80D5A9CC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5A9D0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5A9D4  40 82 00 1C */	bne lbl_80D5A9F0
/* 80D5A9D8  28 1F 00 00 */	cmplwi r31, 0
/* 80D5A9DC  41 82 00 08 */	beq lbl_80D5A9E4
/* 80D5A9E0  4B 2B E1 84 */	b __ct__10fopAc_ac_cFv
lbl_80D5A9E4:
/* 80D5A9E4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5A9E8  60 00 00 08 */	ori r0, r0, 8
/* 80D5A9EC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5A9F0:
/* 80D5A9F0  7F E3 FB 78 */	mr r3, r31
/* 80D5A9F4  4B FF FE 7D */	bl Create__16daTagLightBall_cFv
/* 80D5A9F8  2C 03 00 00 */	cmpwi r3, 0
/* 80D5A9FC  40 82 00 0C */	bne lbl_80D5AA08
/* 80D5AA00  38 60 00 05 */	li r3, 5
/* 80D5AA04  48 00 00 08 */	b lbl_80D5AA0C
lbl_80D5AA08:
/* 80D5AA08  38 60 00 04 */	li r3, 4
lbl_80D5AA0C:
/* 80D5AA0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5AA10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5AA14  7C 08 03 A6 */	mtlr r0
/* 80D5AA18  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5AA1C  4E 80 00 20 */	blr 
