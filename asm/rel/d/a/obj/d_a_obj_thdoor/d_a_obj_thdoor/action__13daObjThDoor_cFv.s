lbl_80D0DAC8:
/* 80D0DAC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0DACC  7C 08 02 A6 */	mflr r0
/* 80D0DAD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0DAD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0DAD8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D0DADC  7C 7E 1B 78 */	mr r30, r3
/* 80D0DAE0  AB E3 06 08 */	lha r31, 0x608(r3)
/* 80D0DAE4  4B FF FE D1 */	bl set_cyl__13daObjThDoor_cFv
/* 80D0DAE8  38 7E 06 0A */	addi r3, r30, 0x60a
/* 80D0DAEC  38 80 00 00 */	li r4, 0
/* 80D0DAF0  38 A0 00 1E */	li r5, 0x1e
/* 80D0DAF4  38 C0 00 60 */	li r6, 0x60
/* 80D0DAF8  38 E0 00 10 */	li r7, 0x10
/* 80D0DAFC  4B 56 2A 45 */	bl cLib_addCalcAngleS__FPsssss
/* 80D0DB00  A8 7E 06 08 */	lha r3, 0x608(r30)
/* 80D0DB04  A8 1E 06 0A */	lha r0, 0x60a(r30)
/* 80D0DB08  7C 03 02 14 */	add r0, r3, r0
/* 80D0DB0C  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80D0DB10  A8 1E 06 08 */	lha r0, 0x608(r30)
/* 80D0DB14  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80D0DB18  40 81 00 30 */	ble lbl_80D0DB48
/* 80D0DB1C  38 00 40 00 */	li r0, 0x4000
/* 80D0DB20  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80D0DB24  2C 1F 40 00 */	cmpwi r31, 0x4000
/* 80D0DB28  40 82 00 10 */	bne lbl_80D0DB38
/* 80D0DB2C  38 00 00 00 */	li r0, 0
/* 80D0DB30  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80D0DB34  48 00 00 44 */	b lbl_80D0DB78
lbl_80D0DB38:
/* 80D0DB38  A8 1E 06 0A */	lha r0, 0x60a(r30)
/* 80D0DB3C  7C 00 00 D0 */	neg r0, r0
/* 80D0DB40  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80D0DB44  48 00 00 34 */	b lbl_80D0DB78
lbl_80D0DB48:
/* 80D0DB48  2C 00 15 7C */	cmpwi r0, 0x157c
/* 80D0DB4C  40 80 00 2C */	bge lbl_80D0DB78
/* 80D0DB50  38 00 15 7C */	li r0, 0x157c
/* 80D0DB54  B0 1E 06 08 */	sth r0, 0x608(r30)
/* 80D0DB58  2C 1F 15 7C */	cmpwi r31, 0x157c
/* 80D0DB5C  40 82 00 10 */	bne lbl_80D0DB6C
/* 80D0DB60  38 00 00 00 */	li r0, 0
/* 80D0DB64  B0 1E 06 0A */	sth r0, 0x60a(r30)
/* 80D0DB68  48 00 00 10 */	b lbl_80D0DB78
lbl_80D0DB6C:
/* 80D0DB6C  A8 1E 06 0A */	lha r0, 0x60a(r30)
/* 80D0DB70  7C 00 00 D0 */	neg r0, r0
/* 80D0DB74  B0 1E 06 0A */	sth r0, 0x60a(r30)
lbl_80D0DB78:
/* 80D0DB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0DB7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D0DB80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0DB84  7C 08 03 A6 */	mtlr r0
/* 80D0DB88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0DB8C  4E 80 00 20 */	blr 
