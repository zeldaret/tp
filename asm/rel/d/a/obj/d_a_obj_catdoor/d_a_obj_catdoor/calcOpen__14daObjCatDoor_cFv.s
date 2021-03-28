lbl_80BC4560:
/* 80BC4560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC4564  7C 08 02 A6 */	mflr r0
/* 80BC4568  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC456C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC4570  93 C1 00 08 */	stw r30, 8(r1)
/* 80BC4574  7C 7E 1B 78 */	mr r30, r3
/* 80BC4578  AB E3 07 90 */	lha r31, 0x790(r3)
/* 80BC457C  4B FF FD 3D */	bl attr__14daObjCatDoor_cCFv
/* 80BC4580  A8 A3 00 00 */	lha r5, 0(r3)
/* 80BC4584  38 7E 07 90 */	addi r3, r30, 0x790
/* 80BC4588  38 80 00 00 */	li r4, 0
/* 80BC458C  4B 6A C1 44 */	b cLib_chaseS__FPsss
/* 80BC4590  38 C0 00 00 */	li r6, 0
/* 80BC4594  38 00 00 02 */	li r0, 2
/* 80BC4598  7C 09 03 A6 */	mtctr r0
lbl_80BC459C:
/* 80BC459C  2C 06 00 00 */	cmpwi r6, 0
/* 80BC45A0  40 82 00 0C */	bne lbl_80BC45AC
/* 80BC45A4  38 BE 05 70 */	addi r5, r30, 0x570
/* 80BC45A8  48 00 00 08 */	b lbl_80BC45B0
lbl_80BC45AC:
/* 80BC45AC  38 BE 06 68 */	addi r5, r30, 0x668
lbl_80BC45B0:
/* 80BC45B0  2C 06 00 00 */	cmpwi r6, 0
/* 80BC45B4  40 82 00 18 */	bne lbl_80BC45CC
/* 80BC45B8  A8 9E 07 90 */	lha r4, 0x790(r30)
/* 80BC45BC  A8 05 00 F4 */	lha r0, 0xf4(r5)
/* 80BC45C0  7C 04 00 50 */	subf r0, r4, r0
/* 80BC45C4  B0 05 00 F4 */	sth r0, 0xf4(r5)
/* 80BC45C8  48 00 00 14 */	b lbl_80BC45DC
lbl_80BC45CC:
/* 80BC45CC  A8 85 00 F4 */	lha r4, 0xf4(r5)
/* 80BC45D0  A8 1E 07 90 */	lha r0, 0x790(r30)
/* 80BC45D4  7C 04 02 14 */	add r0, r4, r0
/* 80BC45D8  B0 05 00 F4 */	sth r0, 0xf4(r5)
lbl_80BC45DC:
/* 80BC45DC  38 C6 00 01 */	addi r6, r6, 1
/* 80BC45E0  42 00 FF BC */	bdnz lbl_80BC459C
/* 80BC45E4  7F E0 07 35 */	extsh. r0, r31
/* 80BC45E8  41 82 00 28 */	beq lbl_80BC4610
/* 80BC45EC  2C 03 00 00 */	cmpwi r3, 0
/* 80BC45F0  41 82 00 20 */	beq lbl_80BC4610
/* 80BC45F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC45F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC45FC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC4600  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BC4604  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC4608  7C 05 07 74 */	extsb r5, r0
/* 80BC460C  4B 47 0B F4 */	b onSwitch__10dSv_info_cFii
lbl_80BC4610:
/* 80BC4610  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC4614  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BC4618  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC461C  7C 08 03 A6 */	mtlr r0
/* 80BC4620  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC4624  4E 80 00 20 */	blr 
