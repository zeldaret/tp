lbl_80D5EF34:
/* 80D5EF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5EF38  7C 08 02 A6 */	mflr r0
/* 80D5EF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5EF44  7C 7F 1B 78 */	mr r31, r3
/* 80D5EF48  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5EF4C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5EF50  40 82 00 1C */	bne lbl_80D5EF6C
/* 80D5EF54  28 1F 00 00 */	cmplwi r31, 0
/* 80D5EF58  41 82 00 08 */	beq lbl_80D5EF60
/* 80D5EF5C  4B FF FF 3D */	bl __ct__12daTagRetRm_cFv
lbl_80D5EF60:
/* 80D5EF60  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5EF64  60 00 00 08 */	ori r0, r0, 8
/* 80D5EF68  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5EF6C:
/* 80D5EF6C  7F E3 FB 78 */	mr r3, r31
/* 80D5EF70  48 00 00 A1 */	bl init__12daTagRetRm_cFv
/* 80D5EF74  38 60 00 04 */	li r3, 4
/* 80D5EF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5EF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5EF80  7C 08 03 A6 */	mtlr r0
/* 80D5EF84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5EF88  4E 80 00 20 */	blr 
