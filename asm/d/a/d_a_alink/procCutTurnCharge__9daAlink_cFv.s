lbl_800D4D04:
/* 800D4D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D4D08  7C 08 02 A6 */	mflr r0
/* 800D4D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D4D10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D4D14  7C 7F 1B 78 */	mr r31, r3
/* 800D4D18  4B FE 52 39 */	bl checkGroundSpecialMode__9daAlink_cFv
/* 800D4D1C  2C 03 00 00 */	cmpwi r3, 0
/* 800D4D20  41 82 00 0C */	beq lbl_800D4D2C
/* 800D4D24  38 60 00 01 */	li r3, 1
/* 800D4D28  48 00 00 A0 */	b lbl_800D4DC8
lbl_800D4D2C:
/* 800D4D2C  7F E3 FB 78 */	mr r3, r31
/* 800D4D30  4B FF D5 8D */	bl setSwordChargeVoiceSe__9daAlink_cFv
/* 800D4D34  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D4D38  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D4D3C  A8 03 00 52 */	lha r0, 0x52(r3)
/* 800D4D40  B0 1F 30 7E */	sth r0, 0x307e(r31)
/* 800D4D44  7F E3 FB 78 */	mr r3, r31
/* 800D4D48  38 80 00 08 */	li r4, 8
/* 800D4D4C  4B FD D8 9D */	bl itemButtonCheck__9daAlink_cFUc
/* 800D4D50  2C 03 00 00 */	cmpwi r3, 0
/* 800D4D54  40 82 00 34 */	bne lbl_800D4D88
/* 800D4D58  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800D4D5C  28 00 00 5B */	cmplwi r0, 0x5b
/* 800D4D60  41 82 00 28 */	beq lbl_800D4D88
/* 800D4D64  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800D4D68  2C 00 00 00 */	cmpwi r0, 0
/* 800D4D6C  41 82 00 10 */	beq lbl_800D4D7C
/* 800D4D70  7F E3 FB 78 */	mr r3, r31
/* 800D4D74  4B FF D6 4D */	bl checkCutAction__9daAlink_cFv
/* 800D4D78  48 00 00 4C */	b lbl_800D4DC4
lbl_800D4D7C:
/* 800D4D7C  7F E3 FB 78 */	mr r3, r31
/* 800D4D80  4B FF DE 09 */	bl cancelCutCharge__9daAlink_cFv
/* 800D4D84  48 00 00 40 */	b lbl_800D4DC4
lbl_800D4D88:
/* 800D4D88  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800D4D8C  48 08 97 41 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D4D90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D4D94  41 82 00 14 */	beq lbl_800D4DA8
/* 800D4D98  7F E3 FB 78 */	mr r3, r31
/* 800D4D9C  38 80 00 00 */	li r4, 0
/* 800D4DA0  48 00 00 3D */	bl procCutTurnMoveInit__9daAlink_cFi
/* 800D4DA4  48 00 00 20 */	b lbl_800D4DC4
lbl_800D4DA8:
/* 800D4DA8  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 800D4DAC  C0 02 93 44 */	lfs f0, lit_7977(r2)
/* 800D4DB0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D4DB4  4C 41 13 82 */	cror 2, 1, 2
/* 800D4DB8  40 82 00 0C */	bne lbl_800D4DC4
/* 800D4DBC  38 00 00 64 */	li r0, 0x64
/* 800D4DC0  98 1F 2F 92 */	stb r0, 0x2f92(r31)
lbl_800D4DC4:
/* 800D4DC4  38 60 00 01 */	li r3, 1
lbl_800D4DC8:
/* 800D4DC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D4DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D4DD0  7C 08 03 A6 */	mtlr r0
/* 800D4DD4  38 21 00 10 */	addi r1, r1, 0x10
/* 800D4DD8  4E 80 00 20 */	blr 
