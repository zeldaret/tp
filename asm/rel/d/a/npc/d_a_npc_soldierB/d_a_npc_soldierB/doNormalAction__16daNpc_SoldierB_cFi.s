lbl_80AF465C:
/* 80AF465C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF4660  7C 08 02 A6 */	mflr r0
/* 80AF4664  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF4668  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AF466C  7C 7F 1B 78 */	mr r31, r3
/* 80AF4670  2C 04 00 00 */	cmpwi r4, 0
/* 80AF4674  41 82 00 5C */	beq lbl_80AF46D0
/* 80AF4678  38 9F 0C 94 */	addi r4, r31, 0xc94
/* 80AF467C  38 A0 00 01 */	li r5, 1
/* 80AF4680  38 C0 00 00 */	li r6, 0
/* 80AF4684  4B 65 EE F4 */	b hitChk2__8daNpcF_cFP8dCcD_Cylii
/* 80AF4688  2C 03 00 00 */	cmpwi r3, 0
/* 80AF468C  41 82 00 44 */	beq lbl_80AF46D0
/* 80AF4690  7F E3 FB 78 */	mr r3, r31
/* 80AF4694  80 1F 09 30 */	lwz r0, 0x930(r31)
/* 80AF4698  2C 00 00 08 */	cmpwi r0, 8
/* 80AF469C  40 82 00 0C */	bne lbl_80AF46A8
/* 80AF46A0  38 80 00 14 */	li r4, 0x14
/* 80AF46A4  48 00 00 10 */	b lbl_80AF46B4
lbl_80AF46A8:
/* 80AF46A8  3C 80 80 AF */	lis r4, m__22daNpc_SoldierB_Param_c@ha
/* 80AF46AC  38 84 5A D4 */	addi r4, r4, m__22daNpc_SoldierB_Param_c@l
/* 80AF46B0  A8 84 00 62 */	lha r4, 0x62(r4)
lbl_80AF46B4:
/* 80AF46B4  38 A0 FF FF */	li r5, -1
/* 80AF46B8  38 C0 00 00 */	li r6, 0
/* 80AF46BC  4B 65 EF 9C */	b setDamage__8daNpcF_cFiii
/* 80AF46C0  7F E3 FB 78 */	mr r3, r31
/* 80AF46C4  38 80 00 01 */	li r4, 1
/* 80AF46C8  48 00 03 1D */	bl setLookMode__16daNpc_SoldierB_cFi
/* 80AF46CC  48 00 00 28 */	b lbl_80AF46F4
lbl_80AF46D0:
/* 80AF46D0  88 1F 09 F0 */	lbz r0, 0x9f0(r31)
/* 80AF46D4  28 00 00 00 */	cmplwi r0, 0
/* 80AF46D8  41 82 00 1C */	beq lbl_80AF46F4
/* 80AF46DC  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 80AF46E0  2C 00 00 00 */	cmpwi r0, 0
/* 80AF46E4  40 82 00 10 */	bne lbl_80AF46F4
/* 80AF46E8  38 00 00 00 */	li r0, 0
/* 80AF46EC  B0 1F 0E 16 */	sth r0, 0xe16(r31)
/* 80AF46F0  98 1F 09 F0 */	stb r0, 0x9f0(r31)
lbl_80AF46F4:
/* 80AF46F4  38 00 00 00 */	li r0, 0
/* 80AF46F8  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80AF46FC  38 7F 0D D0 */	addi r3, r31, 0xdd0
/* 80AF4700  4B 86 D9 18 */	b __ptmf_test
/* 80AF4704  2C 03 00 00 */	cmpwi r3, 0
/* 80AF4708  41 82 00 54 */	beq lbl_80AF475C
/* 80AF470C  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80AF4710  38 9F 0D D0 */	addi r4, r31, 0xdd0
/* 80AF4714  4B 86 D9 34 */	b __ptmf_cmpr
/* 80AF4718  2C 03 00 00 */	cmpwi r3, 0
/* 80AF471C  40 82 00 1C */	bne lbl_80AF4738
/* 80AF4720  7F E3 FB 78 */	mr r3, r31
/* 80AF4724  38 80 00 00 */	li r4, 0
/* 80AF4728  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80AF472C  4B 86 D9 58 */	b __ptmf_scall
/* 80AF4730  60 00 00 00 */	nop 
/* 80AF4734  48 00 00 28 */	b lbl_80AF475C
lbl_80AF4738:
/* 80AF4738  80 7F 0D D0 */	lwz r3, 0xdd0(r31)
/* 80AF473C  80 1F 0D D4 */	lwz r0, 0xdd4(r31)
/* 80AF4740  90 61 00 08 */	stw r3, 8(r1)
/* 80AF4744  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AF4748  80 1F 0D D8 */	lwz r0, 0xdd8(r31)
/* 80AF474C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AF4750  7F E3 FB 78 */	mr r3, r31
/* 80AF4754  38 81 00 08 */	addi r4, r1, 8
/* 80AF4758  4B FF FD DD */	bl setAction__16daNpc_SoldierB_cFM16daNpc_SoldierB_cFPCvPvPv_i
lbl_80AF475C:
/* 80AF475C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AF4760  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF4764  7C 08 03 A6 */	mtlr r0
/* 80AF4768  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF476C  4E 80 00 20 */	blr 
