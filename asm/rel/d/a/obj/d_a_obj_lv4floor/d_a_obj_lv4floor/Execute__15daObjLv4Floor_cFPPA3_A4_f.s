lbl_80C679E4:
/* 80C679E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C679E8  7C 08 02 A6 */	mflr r0
/* 80C679EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C679F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C679F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C679F8  7C 7E 1B 78 */	mr r30, r3
/* 80C679FC  7C 9F 23 78 */	mr r31, r4
/* 80C67A00  48 00 00 31 */	bl action__15daObjLv4Floor_cFv
/* 80C67A04  38 1E 05 6C */	addi r0, r30, 0x56c
/* 80C67A08  90 1F 00 00 */	stw r0, 0(r31)
/* 80C67A0C  7F C3 F3 78 */	mr r3, r30
/* 80C67A10  4B FF FE 25 */	bl setBaseMtx__15daObjLv4Floor_cFv
/* 80C67A14  38 60 00 01 */	li r3, 1
/* 80C67A18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C67A1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C67A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C67A24  7C 08 03 A6 */	mtlr r0
/* 80C67A28  38 21 00 10 */	addi r1, r1, 0x10
/* 80C67A2C  4E 80 00 20 */	blr 
