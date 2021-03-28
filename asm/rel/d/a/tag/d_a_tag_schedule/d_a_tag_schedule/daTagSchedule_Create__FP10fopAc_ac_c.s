lbl_80D60098:
/* 80D60098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6009C  7C 08 02 A6 */	mflr r0
/* 80D600A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D600A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D600A8  7C 7F 1B 78 */	mr r31, r3
/* 80D600AC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D600B0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D600B4  40 82 00 1C */	bne lbl_80D600D0
/* 80D600B8  28 1F 00 00 */	cmplwi r31, 0
/* 80D600BC  41 82 00 08 */	beq lbl_80D600C4
/* 80D600C0  4B 2B 8A A4 */	b __ct__10fopAc_ac_cFv
lbl_80D600C4:
/* 80D600C4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D600C8  60 00 00 08 */	ori r0, r0, 8
/* 80D600CC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D600D0:
/* 80D600D0  38 60 00 04 */	li r3, 4
/* 80D600D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D600D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D600DC  7C 08 03 A6 */	mtlr r0
/* 80D600E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D600E4  4E 80 00 20 */	blr 
