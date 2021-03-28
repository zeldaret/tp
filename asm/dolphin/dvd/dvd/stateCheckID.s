lbl_80349940:
/* 80349940  7C 08 02 A6 */	mflr r0
/* 80349944  3C 60 80 45 */	lis r3, BB2@ha
/* 80349948  90 01 00 04 */	stw r0, 4(r1)
/* 8034994C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80349950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80349954  3B E3 C9 00 */	addi r31, r3, BB2@l
/* 80349958  80 0D 92 14 */	lwz r0, CurrCommand(r13)
/* 8034995C  2C 00 00 03 */	cmpwi r0, 3
/* 80349960  41 82 00 08 */	beq lbl_80349968
/* 80349964  48 00 00 6C */	b lbl_803499D0
lbl_80349968:
/* 80349968  80 8D 91 F8 */	lwz r4, executing(r13)
/* 8034996C  38 7F 00 20 */	addi r3, r31, 0x20
/* 80349970  80 84 00 24 */	lwz r4, 0x24(r4)
/* 80349974  48 00 22 91 */	bl DVDCompareDiskID
/* 80349978  2C 03 00 00 */	cmpwi r3, 0
/* 8034997C  41 82 00 44 */	beq lbl_803499C0
/* 80349980  80 6D 91 FC */	lwz r3, IDShouldBe(r13)
/* 80349984  38 9F 00 20 */	addi r4, r31, 0x20
/* 80349988  38 A0 00 20 */	li r5, 0x20
/* 8034998C  4B CB 9B B5 */	bl memcpy
/* 80349990  80 8D 91 F8 */	lwz r4, executing(r13)
/* 80349994  38 00 00 01 */	li r0, 1
/* 80349998  38 7F 00 00 */	addi r3, r31, 0
/* 8034999C  90 04 00 0C */	stw r0, 0xc(r4)
/* 803499A0  38 80 00 20 */	li r4, 0x20
/* 803499A4  4B FF 1B DD */	bl DCInvalidateRange
/* 803499A8  3C 80 80 35 */	lis r4, stateCheckID2a@ha
/* 803499AC  80 6D 91 F8 */	lwz r3, executing(r13)
/* 803499B0  38 04 9A 54 */	addi r0, r4, stateCheckID2a@l
/* 803499B4  90 0D 92 40 */	stw r0, LastState(r13)
/* 803499B8  48 00 00 9D */	bl stateCheckID2a
/* 803499BC  48 00 00 50 */	b lbl_80349A0C
lbl_803499C0:
/* 803499C0  3C 60 80 35 */	lis r3, cbForStateCheckID1@ha
/* 803499C4  38 63 9B 28 */	addi r3, r3, cbForStateCheckID1@l
/* 803499C8  4B FF E6 4D */	bl DVDLowStopMotor
/* 803499CC  48 00 00 40 */	b lbl_80349A0C
lbl_803499D0:
/* 803499D0  80 8D 91 FC */	lwz r4, IDShouldBe(r13)
/* 803499D4  38 7F 00 20 */	addi r3, r31, 0x20
/* 803499D8  38 A0 00 20 */	li r5, 0x20
/* 803499DC  48 01 C6 B1 */	bl memcmp
/* 803499E0  2C 03 00 00 */	cmpwi r3, 0
/* 803499E4  41 82 00 14 */	beq lbl_803499F8
/* 803499E8  3C 60 80 35 */	lis r3, cbForStateCheckID1@ha
/* 803499EC  38 63 9B 28 */	addi r3, r3, cbForStateCheckID1@l
/* 803499F0  4B FF E6 25 */	bl DVDLowStopMotor
/* 803499F4  48 00 00 18 */	b lbl_80349A0C
lbl_803499F8:
/* 803499F8  3C 80 80 35 */	lis r4, stateCheckID3@ha
/* 803499FC  80 6D 91 F8 */	lwz r3, executing(r13)
/* 80349A00  38 04 9A 20 */	addi r0, r4, stateCheckID3@l
/* 80349A04  90 0D 92 40 */	stw r0, LastState(r13)
/* 80349A08  48 00 00 19 */	bl stateCheckID3
lbl_80349A0C:
/* 80349A0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80349A10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80349A14  38 21 00 10 */	addi r1, r1, 0x10
/* 80349A18  7C 08 03 A6 */	mtlr r0
/* 80349A1C  4E 80 00 20 */	blr 
