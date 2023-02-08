lbl_80D55E38:
/* 80D55E38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D55E3C  7C 08 02 A6 */	mflr r0
/* 80D55E40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D55E44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D55E48  7C 7F 1B 78 */	mr r31, r3
/* 80D55E4C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D55E50  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D55E54  40 82 00 1C */	bne lbl_80D55E70
/* 80D55E58  28 1F 00 00 */	cmplwi r31, 0
/* 80D55E5C  41 82 00 08 */	beq lbl_80D55E64
/* 80D55E60  4B 2C 2D 05 */	bl __ct__10fopAc_ac_cFv
lbl_80D55E64:
/* 80D55E64  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D55E68  60 00 00 08 */	ori r0, r0, 8
/* 80D55E6C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D55E70:
/* 80D55E70  38 00 00 00 */	li r0, 0
/* 80D55E74  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D55E78  38 00 FF FF */	li r0, -1
/* 80D55E7C  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 80D55E80  38 60 00 04 */	li r3, 4
/* 80D55E84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D55E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D55E8C  7C 08 03 A6 */	mtlr r0
/* 80D55E90  38 21 00 10 */	addi r1, r1, 0x10
/* 80D55E94  4E 80 00 20 */	blr 
