lbl_80745DBC:
/* 80745DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80745DC0  7C 08 02 A6 */	mflr r0
/* 80745DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80745DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80745DCC  7C 7F 1B 78 */	mr r31, r3
/* 80745DD0  38 00 00 00 */	li r0, 0
/* 80745DD4  B0 03 06 08 */	sth r0, 0x608(r3)
/* 80745DD8  88 03 06 10 */	lbz r0, 0x610(r3)
/* 80745DDC  28 00 00 06 */	cmplwi r0, 6
/* 80745DE0  41 81 00 88 */	bgt lbl_80745E68
/* 80745DE4  3C 80 80 75 */	lis r4, lit_5539@ha /* 0x8074C190@ha */
/* 80745DE8  38 84 C1 90 */	addi r4, r4, lit_5539@l /* 0x8074C190@l */
/* 80745DEC  54 00 10 3A */	slwi r0, r0, 2
/* 80745DF0  7C 04 00 2E */	lwzx r0, r4, r0
/* 80745DF4  7C 09 03 A6 */	mtctr r0
/* 80745DF8  4E 80 04 20 */	bctr 
lbl_80745DFC:
/* 80745DFC  48 00 2F 79 */	bl StartAction__8daE_PM_cFv
/* 80745E00  7F E3 FB 78 */	mr r3, r31
/* 80745E04  48 00 45 D9 */	bl ObjHit__8daE_PM_cFv
/* 80745E08  48 00 00 60 */	b lbl_80745E68
lbl_80745E0C:
/* 80745E0C  48 00 3E 01 */	bl CreateAction__8daE_PM_cFv
/* 80745E10  7F E3 FB 78 */	mr r3, r31
/* 80745E14  48 00 45 C9 */	bl ObjHit__8daE_PM_cFv
/* 80745E18  48 00 00 50 */	b lbl_80745E68
lbl_80745E1C:
/* 80745E1C  4B FF F6 1D */	bl WaitAction__8daE_PM_cFv
/* 80745E20  7F E3 FB 78 */	mr r3, r31
/* 80745E24  48 00 3F 79 */	bl CreateChk__8daE_PM_cFv
/* 80745E28  7F E3 FB 78 */	mr r3, r31
/* 80745E2C  48 00 45 B1 */	bl ObjHit__8daE_PM_cFv
/* 80745E30  48 00 00 38 */	b lbl_80745E68
lbl_80745E34:
/* 80745E34  4B FF FB 3D */	bl EscapeAction__8daE_PM_cFv
/* 80745E38  7F E3 FB 78 */	mr r3, r31
/* 80745E3C  48 00 3F 61 */	bl CreateChk__8daE_PM_cFv
/* 80745E40  7F E3 FB 78 */	mr r3, r31
/* 80745E44  48 00 45 99 */	bl ObjHit__8daE_PM_cFv
/* 80745E48  48 00 00 20 */	b lbl_80745E68
lbl_80745E4C:
/* 80745E4C  48 00 43 01 */	bl DamageAction__8daE_PM_cFv
/* 80745E50  7F E3 FB 78 */	mr r3, r31
/* 80745E54  48 00 45 89 */	bl ObjHit__8daE_PM_cFv
/* 80745E58  48 00 00 10 */	b lbl_80745E68
lbl_80745E5C:
/* 80745E5C  4B FF FD E9 */	bl DeathAction__8daE_PM_cFv
/* 80745E60  48 00 00 08 */	b lbl_80745E68
lbl_80745E64:
/* 80745E64  4B FF F5 91 */	bl DemoMoveAction__8daE_PM_cFv
lbl_80745E68:
/* 80745E68  88 1F 06 10 */	lbz r0, 0x610(r31)
/* 80745E6C  28 00 00 06 */	cmplwi r0, 6
/* 80745E70  41 82 00 1C */	beq lbl_80745E8C
/* 80745E74  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80745E78  A8 9F 06 02 */	lha r4, 0x602(r31)
/* 80745E7C  38 A0 00 10 */	li r5, 0x10
/* 80745E80  38 C0 05 00 */	li r6, 0x500
/* 80745E84  4B B2 A7 85 */	bl cLib_addCalcAngleS2__FPssss
/* 80745E88  48 00 00 18 */	b lbl_80745EA0
lbl_80745E8C:
/* 80745E8C  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80745E90  A8 9F 06 02 */	lha r4, 0x602(r31)
/* 80745E94  38 A0 00 05 */	li r5, 5
/* 80745E98  38 C0 10 00 */	li r6, 0x1000
/* 80745E9C  4B B2 A7 6D */	bl cLib_addCalcAngleS2__FPssss
lbl_80745EA0:
/* 80745EA0  38 7F 06 04 */	addi r3, r31, 0x604
/* 80745EA4  A8 9F 06 08 */	lha r4, 0x608(r31)
/* 80745EA8  38 A0 00 04 */	li r5, 4
/* 80745EAC  38 C0 10 00 */	li r6, 0x1000
/* 80745EB0  4B B2 A7 59 */	bl cLib_addCalcAngleS2__FPssss
/* 80745EB4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80745EB8  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80745EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80745EC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80745EC4  7C 08 03 A6 */	mtlr r0
/* 80745EC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80745ECC  4E 80 00 20 */	blr 
