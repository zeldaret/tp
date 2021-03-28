lbl_80472E5C:
/* 80472E5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80472E60  7C 08 02 A6 */	mflr r0
/* 80472E64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80472E68  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80472E6C  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80472E70  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80472E74  7C 7F 1B 78 */	mr r31, r3
/* 80472E78  C3 E3 05 30 */	lfs f31, 0x530(r3)
/* 80472E7C  38 81 00 08 */	addi r4, r1, 8
/* 80472E80  4B FF FF 0D */	bl check_sink__12daObjCarry_cFPf
/* 80472E84  2C 03 00 00 */	cmpwi r3, 0
/* 80472E88  41 82 00 14 */	beq lbl_80472E9C
/* 80472E8C  41 80 00 44 */	blt lbl_80472ED0
/* 80472E90  2C 03 00 03 */	cmpwi r3, 3
/* 80472E94  40 80 00 3C */	bge lbl_80472ED0
/* 80472E98  48 00 00 14 */	b lbl_80472EAC
lbl_80472E9C:
/* 80472E9C  7F E3 FB 78 */	mr r3, r31
/* 80472EA0  4B FF C8 05 */	bl data__12daObjCarry_cFv
/* 80472EA4  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 80472EA8  48 00 00 28 */	b lbl_80472ED0
lbl_80472EAC:
/* 80472EAC  7F E3 FB 78 */	mr r3, r31
/* 80472EB0  4B FF C7 F5 */	bl data__12daObjCarry_cFv
/* 80472EB4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80472EB8  C0 01 00 08 */	lfs f0, 8(r1)
/* 80472EBC  EF E0 00 72 */	fmuls f31, f0, f1
/* 80472EC0  7F E3 FB 78 */	mr r3, r31
/* 80472EC4  4B FF C7 E1 */	bl data__12daObjCarry_cFv
/* 80472EC8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80472ECC  EF E0 F8 2A */	fadds f31, f0, f31
lbl_80472ED0:
/* 80472ED0  FC 20 F8 90 */	fmr f1, f31
/* 80472ED4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80472ED8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80472EDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80472EE0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80472EE4  7C 08 03 A6 */	mtlr r0
/* 80472EE8  38 21 00 30 */	addi r1, r1, 0x30
/* 80472EEC  4E 80 00 20 */	blr 
