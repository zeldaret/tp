lbl_80A759F4:
/* 80A759F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A759F8  7C 08 02 A6 */	mflr r0
/* 80A759FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A75A00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A75A04  93 C1 00 08 */	stw r30, 8(r1)
/* 80A75A08  7C 7E 1B 78 */	mr r30, r3
/* 80A75A0C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A75A10  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80A75A14  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80A75A18  3B E0 00 00 */	li r31, 0
/* 80A75A1C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A75A20  28 00 00 00 */	cmplwi r0, 0
/* 80A75A24  40 82 00 1C */	bne lbl_80A75A40
/* 80A75A28  4B 5B A0 2C */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A75A2C  2C 03 00 00 */	cmpwi r3, 0
/* 80A75A30  40 82 00 14 */	bne lbl_80A75A44
/* 80A75A34  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A75A38  28 00 00 00 */	cmplwi r0, 0
/* 80A75A3C  41 82 00 08 */	beq lbl_80A75A44
lbl_80A75A40:
/* 80A75A40  3B E0 00 01 */	li r31, 1
lbl_80A75A44:
/* 80A75A44  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A75A48  41 82 00 10 */	beq lbl_80A75A58
/* 80A75A4C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A75A50  64 00 08 00 */	oris r0, r0, 0x800
/* 80A75A54  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80A75A58:
/* 80A75A58  3B E0 00 00 */	li r31, 0
/* 80A75A5C  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80A75A60  28 00 00 00 */	cmplwi r0, 0
/* 80A75A64  40 82 00 1C */	bne lbl_80A75A80
/* 80A75A68  4B 5B 9F EC */	b dComIfGs_wolfeye_effect_check__Fv
/* 80A75A6C  2C 03 00 00 */	cmpwi r3, 0
/* 80A75A70  40 82 00 14 */	bne lbl_80A75A84
/* 80A75A74  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A75A78  28 00 00 00 */	cmplwi r0, 0
/* 80A75A7C  41 82 00 08 */	beq lbl_80A75A84
lbl_80A75A80:
/* 80A75A80  3B E0 00 01 */	li r31, 1
lbl_80A75A84:
/* 80A75A84  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A75A88  40 82 00 10 */	bne lbl_80A75A98
/* 80A75A8C  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80A75A90  28 00 00 00 */	cmplwi r0, 0
/* 80A75A94  41 82 00 0C */	beq lbl_80A75AA0
lbl_80A75A98:
/* 80A75A98  38 00 00 00 */	li r0, 0
/* 80A75A9C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A75AA0:
/* 80A75AA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A75AA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A75AA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A75AAC  7C 08 03 A6 */	mtlr r0
/* 80A75AB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A75AB4  4E 80 00 20 */	blr 
