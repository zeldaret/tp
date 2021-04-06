lbl_8047884C:
/* 8047884C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80478850  7C 08 02 A6 */	mflr r0
/* 80478854  90 01 00 24 */	stw r0, 0x24(r1)
/* 80478858  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8047885C  7C 7F 1B 78 */	mr r31, r3
/* 80478860  3C 60 80 48 */	lis r3, lit_5812@ha /* 0x8047A41C@ha */
/* 80478864  C0 23 A4 1C */	lfs f1, lit_5812@l(r3)  /* 0x8047A41C@l */
/* 80478868  C0 1F 06 0C */	lfs f0, 0x60c(r31)
/* 8047886C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80478870  41 82 00 40 */	beq lbl_804788B0
/* 80478874  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80478878  D0 01 00 08 */	stfs f0, 8(r1)
/* 8047887C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80478880  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80478884  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80478888  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8047888C  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 80478890  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 80478894  38 81 00 08 */	addi r4, r1, 8
/* 80478898  4B BB 94 A1 */	bl savePos__12daObjCarry_cFi4cXyz
/* 8047889C  A0 1F 0D 16 */	lhz r0, 0xd16(r31)
/* 804788A0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804788A4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804788A8  7C 04 07 74 */	extsb r4, r0
/* 804788AC  4B BB 95 01 */	bl setRoomNo__12daObjCarry_cFiSc
lbl_804788B0:
/* 804788B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804788B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804788B8  7C 08 03 A6 */	mtlr r0
/* 804788BC  38 21 00 20 */	addi r1, r1, 0x20
/* 804788C0  4E 80 00 20 */	blr 
