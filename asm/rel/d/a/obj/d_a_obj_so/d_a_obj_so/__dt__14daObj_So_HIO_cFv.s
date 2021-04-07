lbl_80CE3928:
/* 80CE3928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE392C  7C 08 02 A6 */	mflr r0
/* 80CE3930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE3934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE3938  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE393C  41 82 00 1C */	beq lbl_80CE3958
/* 80CE3940  3C A0 80 CE */	lis r5, __vt__14daObj_So_HIO_c@ha /* 0x80CE3C78@ha */
/* 80CE3944  38 05 3C 78 */	addi r0, r5, __vt__14daObj_So_HIO_c@l /* 0x80CE3C78@l */
/* 80CE3948  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE394C  7C 80 07 35 */	extsh. r0, r4
/* 80CE3950  40 81 00 08 */	ble lbl_80CE3958
/* 80CE3954  4B 5E B3 E9 */	bl __dl__FPv
lbl_80CE3958:
/* 80CE3958  7F E3 FB 78 */	mr r3, r31
/* 80CE395C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE3960  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE3964  7C 08 03 A6 */	mtlr r0
/* 80CE3968  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE396C  4E 80 00 20 */	blr 
