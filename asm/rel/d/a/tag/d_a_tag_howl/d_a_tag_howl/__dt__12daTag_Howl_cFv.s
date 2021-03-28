lbl_8048DCFC:
/* 8048DCFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048DD00  7C 08 02 A6 */	mflr r0
/* 8048DD04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048DD08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048DD0C  93 C1 00 08 */	stw r30, 8(r1)
/* 8048DD10  7C 7E 1B 79 */	or. r30, r3, r3
/* 8048DD14  7C 9F 23 78 */	mr r31, r4
/* 8048DD18  41 82 00 28 */	beq lbl_8048DD40
/* 8048DD1C  3C 80 80 49 */	lis r4, __vt__12daTag_Howl_c@ha
/* 8048DD20  38 04 DD D8 */	addi r0, r4, __vt__12daTag_Howl_c@l
/* 8048DD24  90 1E 05 6C */	stw r0, 0x56c(r30)
/* 8048DD28  38 80 00 00 */	li r4, 0
/* 8048DD2C  4B B8 AF 60 */	b __dt__10fopAc_ac_cFv
/* 8048DD30  7F E0 07 35 */	extsh. r0, r31
/* 8048DD34  40 81 00 0C */	ble lbl_8048DD40
/* 8048DD38  7F C3 F3 78 */	mr r3, r30
/* 8048DD3C  4B E4 10 00 */	b __dl__FPv
lbl_8048DD40:
/* 8048DD40  7F C3 F3 78 */	mr r3, r30
/* 8048DD44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048DD48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048DD4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048DD50  7C 08 03 A6 */	mtlr r0
/* 8048DD54  38 21 00 10 */	addi r1, r1, 0x10
/* 8048DD58  4E 80 00 20 */	blr 
