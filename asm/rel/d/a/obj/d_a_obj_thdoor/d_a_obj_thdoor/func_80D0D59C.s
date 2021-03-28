lbl_80D0D59C:
/* 80D0D59C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0D5A0  7C 08 02 A6 */	mflr r0
/* 80D0D5A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0D5A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0D5AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0D5B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D0D5B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D0D5B8  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 80D0D5BC  41 82 00 48 */	beq lbl_80D0D604
/* 80D0D5C0  28 05 00 00 */	cmplwi r5, 0
/* 80D0D5C4  41 82 00 40 */	beq lbl_80D0D604
/* 80D0D5C8  7C 05 20 40 */	cmplw r5, r4
/* 80D0D5CC  40 82 00 38 */	bne lbl_80D0D604
/* 80D0D5D0  C0 24 05 2C */	lfs f1, 0x52c(r4)
/* 80D0D5D4  3C 80 80 D1 */	lis r4, lit_3681@ha
/* 80D0D5D8  C0 04 E5 FC */	lfs f0, lit_3681@l(r4)
/* 80D0D5DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D0D5E0  40 81 00 24 */	ble lbl_80D0D604
/* 80D0D5E4  4B FF FF 15 */	bl checkPlayerPos__FP13daObjThDoor_c
/* 80D0D5E8  2C 03 00 00 */	cmpwi r3, 0
/* 80D0D5EC  41 82 00 10 */	beq lbl_80D0D5FC
/* 80D0D5F0  38 00 00 FA */	li r0, 0xfa
/* 80D0D5F4  B0 1F 06 0A */	sth r0, 0x60a(r31)
/* 80D0D5F8  48 00 00 0C */	b lbl_80D0D604
lbl_80D0D5FC:
/* 80D0D5FC  38 00 FF 06 */	li r0, -250
/* 80D0D600  B0 1F 06 0A */	sth r0, 0x60a(r31)
lbl_80D0D604:
/* 80D0D604  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0D608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0D60C  7C 08 03 A6 */	mtlr r0
/* 80D0D610  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0D614  4E 80 00 20 */	blr 
