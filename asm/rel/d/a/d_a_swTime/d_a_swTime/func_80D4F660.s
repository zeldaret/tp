lbl_80D4F660:
/* 80D4F660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4F664  7C 08 02 A6 */	mflr r0
/* 80D4F668  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4F66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4F670  7C 7F 1B 78 */	mr r31, r3
/* 80D4F674  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D4F678  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D4F67C  40 82 00 1C */	bne lbl_80D4F698
/* 80D4F680  28 1F 00 00 */	cmplwi r31, 0
/* 80D4F684  41 82 00 08 */	beq lbl_80D4F68C
/* 80D4F688  4B 2C 94 DD */	bl __ct__10fopAc_ac_cFv
lbl_80D4F68C:
/* 80D4F68C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D4F690  60 00 00 08 */	ori r0, r0, 8
/* 80D4F694  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D4F698:
/* 80D4F698  7F E3 FB 78 */	mr r3, r31
/* 80D4F69C  4B FF FF 9D */	bl Create__10daSwTime_cFv
/* 80D4F6A0  2C 03 00 00 */	cmpwi r3, 0
/* 80D4F6A4  40 82 00 0C */	bne lbl_80D4F6B0
/* 80D4F6A8  38 60 00 05 */	li r3, 5
/* 80D4F6AC  48 00 00 08 */	b lbl_80D4F6B4
lbl_80D4F6B0:
/* 80D4F6B0  38 60 00 04 */	li r3, 4
lbl_80D4F6B4:
/* 80D4F6B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4F6B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4F6BC  7C 08 03 A6 */	mtlr r0
/* 80D4F6C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4F6C4  4E 80 00 20 */	blr 
