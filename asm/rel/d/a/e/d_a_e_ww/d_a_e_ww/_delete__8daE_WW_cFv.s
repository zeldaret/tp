lbl_807EE440:
/* 807EE440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807EE444  7C 08 02 A6 */	mflr r0
/* 807EE448  90 01 00 14 */	stw r0, 0x14(r1)
/* 807EE44C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807EE450  7C 7F 1B 78 */	mr r31, r3
/* 807EE454  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807EE458  3C 80 80 7F */	lis r4, d_a_e_ww__stringBase0@ha /* 0x807EF8B8@ha */
/* 807EE45C  38 84 F8 B8 */	addi r4, r4, d_a_e_ww__stringBase0@l /* 0x807EF8B8@l */
/* 807EE460  4B 83 EB A9 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807EE464  88 1F 0E C4 */	lbz r0, 0xec4(r31)
/* 807EE468  28 00 00 00 */	cmplwi r0, 0
/* 807EE46C  41 82 00 10 */	beq lbl_807EE47C
/* 807EE470  38 00 00 00 */	li r0, 0
/* 807EE474  3C 60 80 7F */	lis r3, struct_807EFBBC+0x1@ha /* 0x807EFBBD@ha */
/* 807EE478  98 03 FB BD */	stb r0, struct_807EFBBC+0x1@l(r3)  /* 0x807EFBBD@l */
lbl_807EE47C:
/* 807EE47C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807EE480  28 00 00 00 */	cmplwi r0, 0
/* 807EE484  41 82 00 18 */	beq lbl_807EE49C
/* 807EE488  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 807EE48C  81 9F 05 B8 */	lwz r12, 0x5b8(r31)
/* 807EE490  81 8C 00 08 */	lwz r12, 8(r12)
/* 807EE494  7D 89 03 A6 */	mtctr r12
/* 807EE498  4E 80 04 21 */	bctrl 
lbl_807EE49C:
/* 807EE49C  38 60 00 01 */	li r3, 1
/* 807EE4A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807EE4A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807EE4A8  7C 08 03 A6 */	mtlr r0
/* 807EE4AC  38 21 00 10 */	addi r1, r1, 0x10
/* 807EE4B0  4E 80 00 20 */	blr 
