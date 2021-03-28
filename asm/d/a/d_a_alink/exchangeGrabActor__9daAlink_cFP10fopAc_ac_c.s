lbl_800E3A14:
/* 800E3A14  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E3A18  7C 08 02 A6 */	mflr r0
/* 800E3A1C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E3A20  39 61 00 20 */	addi r11, r1, 0x20
/* 800E3A24  48 27 E7 B9 */	bl _savegpr_29
/* 800E3A28  7C 7D 1B 78 */	mr r29, r3
/* 800E3A2C  7C 9E 23 78 */	mr r30, r4
/* 800E3A30  83 E3 28 30 */	lwz r31, 0x2830(r3)
/* 800E3A34  28 1F 00 00 */	cmplwi r31, 0
/* 800E3A38  40 82 00 0C */	bne lbl_800E3A44
/* 800E3A3C  38 60 00 00 */	li r3, 0
/* 800E3A40  48 00 00 44 */	b lbl_800E3A84
lbl_800E3A44:
/* 800E3A44  7F E3 FB 78 */	mr r3, r31
/* 800E3A48  4B F3 91 59 */	bl fopAcM_cancelCarryNow__FP10fopAc_ac_c
/* 800E3A4C  38 00 00 00 */	li r0, 0
/* 800E3A50  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 800E3A54  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 800E3A58  7F A3 EB 78 */	mr r3, r29
/* 800E3A5C  48 00 02 99 */	bl checkGrabCarryActor__9daAlink_cFv
/* 800E3A60  2C 03 00 00 */	cmpwi r3, 0
/* 800E3A64  41 82 00 10 */	beq lbl_800E3A74
/* 800E3A68  38 00 00 00 */	li r0, 0
/* 800E3A6C  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 800E3A70  B0 1F 04 DC */	sth r0, 0x4dc(r31)
lbl_800E3A74:
/* 800E3A74  7F A3 EB 78 */	mr r3, r29
/* 800E3A78  7F C4 F3 78 */	mr r4, r30
/* 800E3A7C  48 00 21 39 */	bl setGrabItemActor__9daAlink_cFP10fopAc_ac_c
/* 800E3A80  38 60 00 01 */	li r3, 1
lbl_800E3A84:
/* 800E3A84  39 61 00 20 */	addi r11, r1, 0x20
/* 800E3A88  48 27 E7 A1 */	bl _restgpr_29
/* 800E3A8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E3A90  7C 08 03 A6 */	mtlr r0
/* 800E3A94  38 21 00 20 */	addi r1, r1, 0x20
/* 800E3A98  4E 80 00 20 */	blr 
