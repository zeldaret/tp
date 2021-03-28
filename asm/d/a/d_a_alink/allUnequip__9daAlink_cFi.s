lbl_800B983C:
/* 800B983C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B9840  7C 08 02 A6 */	mflr r0
/* 800B9844  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B9848  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B984C  93 C1 00 08 */	stw r30, 8(r1)
/* 800B9850  7C 7E 1B 78 */	mr r30, r3
/* 800B9854  80 03 05 78 */	lwz r0, 0x578(r3)
/* 800B9858  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800B985C  41 82 00 7C */	beq lbl_800B98D8
/* 800B9860  2C 04 00 00 */	cmpwi r4, 0
/* 800B9864  41 82 00 74 */	beq lbl_800B98D8
/* 800B9868  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800B986C  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800B9870  7D 89 03 A6 */	mtctr r12
/* 800B9874  4E 80 04 21 */	bctrl 
/* 800B9878  28 03 00 00 */	cmplwi r3, 0
/* 800B987C  40 82 00 5C */	bne lbl_800B98D8
/* 800B9880  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800B9884  28 00 00 48 */	cmplwi r0, 0x48
/* 800B9888  41 82 00 50 */	beq lbl_800B98D8
/* 800B988C  3B E0 00 00 */	li r31, 0
/* 800B9890  48 00 00 20 */	b lbl_800B98B0
lbl_800B9894:
/* 800B9894  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800B9898  4B F7 46 85 */	bl dComIfGp_getSelectItem__Fi
/* 800B989C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 800B98A0  28 00 00 48 */	cmplwi r0, 0x48
/* 800B98A4  40 82 00 08 */	bne lbl_800B98AC
/* 800B98A8  9B FE 2F 9C */	stb r31, 0x2f9c(r30)
lbl_800B98AC:
/* 800B98AC  3B FF 00 01 */	addi r31, r31, 1
lbl_800B98B0:
/* 800B98B0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 800B98B4  28 00 00 02 */	cmplwi r0, 2
/* 800B98B8  41 80 FF DC */	blt lbl_800B9894
/* 800B98BC  7F C3 F3 78 */	mr r3, r30
/* 800B98C0  38 80 00 48 */	li r4, 0x48
/* 800B98C4  4B FF FD 7D */	bl itemEquip__9daAlink_cFUs
/* 800B98C8  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800B98CC  60 00 00 40 */	ori r0, r0, 0x40
/* 800B98D0  90 1E 05 74 */	stw r0, 0x574(r30)
/* 800B98D4  48 00 00 60 */	b lbl_800B9934
lbl_800B98D8:
/* 800B98D8  A0 9E 2F DC */	lhz r4, 0x2fdc(r30)
/* 800B98DC  28 04 01 03 */	cmplwi r4, 0x103
/* 800B98E0  40 82 00 10 */	bne lbl_800B98F0
/* 800B98E4  7F C3 F3 78 */	mr r3, r30
/* 800B98E8  4B FF FC 99 */	bl swordUnequip__9daAlink_cFv
/* 800B98EC  48 00 00 40 */	b lbl_800B992C
lbl_800B98F0:
/* 800B98F0  28 04 01 02 */	cmplwi r4, 0x102
/* 800B98F4  40 82 00 2C */	bne lbl_800B9920
/* 800B98F8  7F C3 F3 78 */	mr r3, r30
/* 800B98FC  38 80 00 00 */	li r4, 0
/* 800B9900  38 A0 00 00 */	li r5, 0
/* 800B9904  48 00 79 D9 */	bl deleteEquipItem__9daAlink_cFii
/* 800B9908  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 800B990C  C0 22 93 3C */	lfs f1, lit_7808(r2)
/* 800B9910  38 80 00 00 */	li r4, 0
/* 800B9914  38 A0 00 23 */	li r5, 0x23
/* 800B9918  4B F5 5F 31 */	bl initOldFrameMorf__22mDoExt_MtxCalcOldFrameFfUsUs
/* 800B991C  48 00 00 10 */	b lbl_800B992C
lbl_800B9920:
/* 800B9920  7F C3 F3 78 */	mr r3, r30
/* 800B9924  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800B9928  4B FF FD 7D */	bl itemUnequip__9daAlink_cFUsf
lbl_800B992C:
/* 800B992C  38 00 00 FF */	li r0, 0xff
/* 800B9930  B0 1E 2F DE */	sth r0, 0x2fde(r30)
lbl_800B9934:
/* 800B9934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B9938  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B993C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B9940  7C 08 03 A6 */	mtlr r0
/* 800B9944  38 21 00 10 */	addi r1, r1, 0x10
/* 800B9948  4E 80 00 20 */	blr 
