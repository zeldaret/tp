lbl_80D63F38:
/* 80D63F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63F3C  7C 08 02 A6 */	mflr r0
/* 80D63F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D63F48  7C 7F 1B 78 */	mr r31, r3
/* 80D63F4C  4B 2B 4C 18 */	b __ct__10fopAc_ac_cFv
/* 80D63F50  3C 60 80 D6 */	lis r3, __vt__13daTagWrHowl_c@ha
/* 80D63F54  38 03 42 54 */	addi r0, r3, __vt__13daTagWrHowl_c@l
/* 80D63F58  90 1F 05 68 */	stw r0, 0x568(r31)
/* 80D63F5C  7F E3 FB 78 */	mr r3, r31
/* 80D63F60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D63F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63F68  7C 08 03 A6 */	mtlr r0
/* 80D63F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63F70  4E 80 00 20 */	blr 
