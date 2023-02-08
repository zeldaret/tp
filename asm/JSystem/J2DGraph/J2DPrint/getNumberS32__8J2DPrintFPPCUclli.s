lbl_802F59C0:
/* 802F59C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802F59C4  7C 08 02 A6 */	mflr r0
/* 802F59C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802F59CC  39 61 00 20 */	addi r11, r1, 0x20
/* 802F59D0  48 06 C8 09 */	bl _savegpr_28
/* 802F59D4  7C 9E 23 78 */	mr r30, r4
/* 802F59D8  7C BF 2B 78 */	mr r31, r5
/* 802F59DC  7C DC 33 78 */	mr r28, r6
/* 802F59E0  83 A4 00 00 */	lwz r29, 0(r4)
/* 802F59E4  88 1D 00 00 */	lbz r0, 0(r29)
/* 802F59E8  2C 00 00 5B */	cmpwi r0, 0x5b
/* 802F59EC  41 82 00 0C */	beq lbl_802F59F8
/* 802F59F0  7F E3 FB 78 */	mr r3, r31
/* 802F59F4  48 00 00 B8 */	b lbl_802F5AAC
lbl_802F59F8:
/* 802F59F8  38 1D 00 01 */	addi r0, r29, 1
/* 802F59FC  90 1E 00 00 */	stw r0, 0(r30)
/* 802F5A00  38 60 00 00 */	li r3, 0
/* 802F5A04  2C 07 00 0A */	cmpwi r7, 0xa
/* 802F5A08  40 82 00 18 */	bne lbl_802F5A20
/* 802F5A0C  80 7E 00 00 */	lwz r3, 0(r30)
/* 802F5A10  38 81 00 08 */	addi r4, r1, 8
/* 802F5A14  7C E5 3B 78 */	mr r5, r7
/* 802F5A18  48 07 31 E9 */	bl strtol
/* 802F5A1C  48 00 00 50 */	b lbl_802F5A6C
lbl_802F5A20:
/* 802F5A20  2C 07 00 10 */	cmpwi r7, 0x10
/* 802F5A24  40 82 00 48 */	bne lbl_802F5A6C
/* 802F5A28  80 7E 00 00 */	lwz r3, 0(r30)
/* 802F5A2C  38 81 00 08 */	addi r4, r1, 8
/* 802F5A30  7C E5 3B 78 */	mr r5, r7
/* 802F5A34  48 07 32 BD */	bl strtoul
/* 802F5A38  80 9E 00 00 */	lwz r4, 0(r30)
/* 802F5A3C  80 01 00 08 */	lwz r0, 8(r1)
/* 802F5A40  7C 04 00 50 */	subf r0, r4, r0
/* 802F5A44  28 00 00 08 */	cmplwi r0, 8
/* 802F5A48  41 82 00 24 */	beq lbl_802F5A6C
/* 802F5A4C  28 00 00 06 */	cmplwi r0, 6
/* 802F5A50  40 82 00 10 */	bne lbl_802F5A60
/* 802F5A54  54 60 40 2E */	slwi r0, r3, 8
/* 802F5A58  60 03 00 FF */	ori r3, r0, 0xff
/* 802F5A5C  48 00 00 10 */	b lbl_802F5A6C
lbl_802F5A60:
/* 802F5A60  93 BE 00 00 */	stw r29, 0(r30)
/* 802F5A64  7F 83 E3 78 */	mr r3, r28
/* 802F5A68  48 00 00 44 */	b lbl_802F5AAC
lbl_802F5A6C:
/* 802F5A6C  80 81 00 08 */	lwz r4, 8(r1)
/* 802F5A70  88 04 00 00 */	lbz r0, 0(r4)
/* 802F5A74  2C 00 00 5D */	cmpwi r0, 0x5d
/* 802F5A78  41 82 00 10 */	beq lbl_802F5A88
/* 802F5A7C  93 BE 00 00 */	stw r29, 0(r30)
/* 802F5A80  7F 83 E3 78 */	mr r3, r28
/* 802F5A84  48 00 00 28 */	b lbl_802F5AAC
lbl_802F5A88:
/* 802F5A88  80 1E 00 00 */	lwz r0, 0(r30)
/* 802F5A8C  7C 00 20 40 */	cmplw r0, r4
/* 802F5A90  40 82 00 14 */	bne lbl_802F5AA4
/* 802F5A94  38 04 00 01 */	addi r0, r4, 1
/* 802F5A98  90 1E 00 00 */	stw r0, 0(r30)
/* 802F5A9C  7F E3 FB 78 */	mr r3, r31
/* 802F5AA0  48 00 00 0C */	b lbl_802F5AAC
lbl_802F5AA4:
/* 802F5AA4  38 04 00 01 */	addi r0, r4, 1
/* 802F5AA8  90 1E 00 00 */	stw r0, 0(r30)
lbl_802F5AAC:
/* 802F5AAC  39 61 00 20 */	addi r11, r1, 0x20
/* 802F5AB0  48 06 C7 75 */	bl _restgpr_28
/* 802F5AB4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802F5AB8  7C 08 03 A6 */	mtlr r0
/* 802F5ABC  38 21 00 20 */	addi r1, r1, 0x20
/* 802F5AC0  4E 80 00 20 */	blr 
