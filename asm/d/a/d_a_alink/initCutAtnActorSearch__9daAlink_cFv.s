lbl_800D2BFC:
/* 800D2BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D2C00  7C 08 02 A6 */	mflr r0
/* 800D2C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D2C08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D2C0C  7C 7F 1B 78 */	mr r31, r3
/* 800D2C10  4B FE 0A 21 */	bl getShapeAngleYAtnActor__9daAlink_cFv
/* 800D2C14  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 800D2C18  48 19 E2 0D */	bl cLib_distanceAngleS__Fss
/* 800D2C1C  2C 03 08 00 */	cmpwi r3, 0x800
/* 800D2C20  40 80 00 10 */	bge lbl_800D2C30
/* 800D2C24  38 00 00 01 */	li r0, 1
/* 800D2C28  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 800D2C2C  48 00 00 0C */	b lbl_800D2C38
lbl_800D2C30:
/* 800D2C30  38 00 00 00 */	li r0, 0
/* 800D2C34  B0 1F 30 10 */	sth r0, 0x3010(r31)
lbl_800D2C38:
/* 800D2C38  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800D2C3C  90 1F 32 CC */	stw r0, 0x32cc(r31)
/* 800D2C40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D2C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D2C48  7C 08 03 A6 */	mtlr r0
/* 800D2C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 800D2C50  4E 80 00 20 */	blr 
