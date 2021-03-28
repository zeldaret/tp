lbl_80CB51F8:
/* 80CB51F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB51FC  7C 08 02 A6 */	mflr r0
/* 80CB5200  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5204  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5208  7C 7F 1B 78 */	mr r31, r3
/* 80CB520C  4B 36 39 58 */	b __ct__10fopAc_ac_cFv
/* 80CB5210  3C 60 80 CB */	lis r3, __vt__11daObjProp_c@ha
/* 80CB5214  38 03 56 7C */	addi r0, r3, __vt__11daObjProp_c@l
/* 80CB5218  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CB521C  7F E3 FB 78 */	mr r3, r31
/* 80CB5220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB5224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB5228  7C 08 03 A6 */	mtlr r0
/* 80CB522C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5230  4E 80 00 20 */	blr 
