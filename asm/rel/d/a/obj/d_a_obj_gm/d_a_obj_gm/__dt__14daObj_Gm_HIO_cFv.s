lbl_80BFD284:
/* 80BFD284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFD288  7C 08 02 A6 */	mflr r0
/* 80BFD28C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFD290  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFD294  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFD298  41 82 00 1C */	beq lbl_80BFD2B4
/* 80BFD29C  3C A0 80 C0 */	lis r5, __vt__14daObj_Gm_HIO_c@ha /* 0x80BFD584@ha */
/* 80BFD2A0  38 05 D5 84 */	addi r0, r5, __vt__14daObj_Gm_HIO_c@l /* 0x80BFD584@l */
/* 80BFD2A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BFD2A8  7C 80 07 35 */	extsh. r0, r4
/* 80BFD2AC  40 81 00 08 */	ble lbl_80BFD2B4
/* 80BFD2B0  4B 6D 1A 8D */	bl __dl__FPv
lbl_80BFD2B4:
/* 80BFD2B4  7F E3 FB 78 */	mr r3, r31
/* 80BFD2B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFD2BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFD2C0  7C 08 03 A6 */	mtlr r0
/* 80BFD2C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFD2C8  4E 80 00 20 */	blr 
