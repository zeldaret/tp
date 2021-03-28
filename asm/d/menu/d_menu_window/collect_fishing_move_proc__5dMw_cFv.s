lbl_801FB9AC:
/* 801FB9AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB9B0  7C 08 02 A6 */	mflr r0
/* 801FB9B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB9B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB9BC  7C 7F 1B 78 */	mr r31, r3
/* 801FB9C0  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 801FB9C4  88 03 01 FA */	lbz r0, 0x1fa(r3)
/* 801FB9C8  28 00 00 02 */	cmplwi r0, 2
/* 801FB9CC  40 82 00 08 */	bne lbl_801FB9D4
/* 801FB9D0  4B FC 96 E5 */	bl _move__15dMenu_Fishing_cFv
lbl_801FB9D4:
/* 801FB9D4  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 801FB9D8  88 03 01 FA */	lbz r0, 0x1fa(r3)
/* 801FB9DC  28 00 00 03 */	cmplwi r0, 3
/* 801FB9E0  40 82 00 0C */	bne lbl_801FB9EC
/* 801FB9E4  38 00 00 18 */	li r0, 0x18
/* 801FB9E8  98 1F 01 46 */	stb r0, 0x146(r31)
lbl_801FB9EC:
/* 801FB9EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB9F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB9F4  7C 08 03 A6 */	mtlr r0
/* 801FB9F8  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB9FC  4E 80 00 20 */	blr 
