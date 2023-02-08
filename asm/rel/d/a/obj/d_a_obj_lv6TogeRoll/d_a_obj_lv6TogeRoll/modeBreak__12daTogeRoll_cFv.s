lbl_80C793C8:
/* 80C793C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C793CC  7C 08 02 A6 */	mflr r0
/* 80C793D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C793D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C793D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C793DC  7C 7E 1B 78 */	mr r30, r3
/* 80C793E0  80 03 04 E4 */	lwz r0, 0x4e4(r3)
/* 80C793E4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C793E8  A0 03 04 E8 */	lhz r0, 0x4e8(r3)
/* 80C793EC  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80C793F0  38 80 00 00 */	li r4, 0
/* 80C793F4  B0 81 00 20 */	sth r4, 0x20(r1)
/* 80C793F8  B0 81 00 24 */	sth r4, 0x24(r1)
/* 80C793FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C79400  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C79404  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C79408  90 81 00 08 */	stw r4, 8(r1)
/* 80C7940C  38 00 FF FF */	li r0, -1
/* 80C79410  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C79414  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C79418  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C7941C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C79420  38 80 00 00 */	li r4, 0
/* 80C79424  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A73@ha */
/* 80C79428  38 A5 8A 73 */	addi r5, r5, 0x8A73 /* 0x00008A73@l */
/* 80C7942C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C79430  38 E0 00 00 */	li r7, 0
/* 80C79434  39 01 00 20 */	addi r8, r1, 0x20
/* 80C79438  39 20 00 00 */	li r9, 0
/* 80C7943C  39 40 00 FF */	li r10, 0xff
/* 80C79440  3D 60 80 C8 */	lis r11, lit_4110@ha /* 0x80C79AD0@ha */
/* 80C79444  C0 2B 9A D0 */	lfs f1, lit_4110@l(r11)  /* 0x80C79AD0@l */
/* 80C79448  4B 3D 36 49 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C7944C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C79450  38 80 00 00 */	li r4, 0
/* 80C79454  90 81 00 08 */	stw r4, 8(r1)
/* 80C79458  38 00 FF FF */	li r0, -1
/* 80C7945C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C79460  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C79464  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C79468  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C7946C  38 80 00 00 */	li r4, 0
/* 80C79470  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A74@ha */
/* 80C79474  38 A5 8A 74 */	addi r5, r5, 0x8A74 /* 0x00008A74@l */
/* 80C79478  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C7947C  38 E0 00 00 */	li r7, 0
/* 80C79480  39 01 00 20 */	addi r8, r1, 0x20
/* 80C79484  39 20 00 00 */	li r9, 0
/* 80C79488  39 40 00 FF */	li r10, 0xff
/* 80C7948C  3D 60 80 C8 */	lis r11, lit_4110@ha /* 0x80C79AD0@ha */
/* 80C79490  C0 2B 9A D0 */	lfs f1, lit_4110@l(r11)  /* 0x80C79AD0@l */
/* 80C79494  4B 3D 35 FD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C79498  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C7949C  38 80 00 00 */	li r4, 0
/* 80C794A0  90 81 00 08 */	stw r4, 8(r1)
/* 80C794A4  38 00 FF FF */	li r0, -1
/* 80C794A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C794AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C794B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C794B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C794B8  38 80 00 00 */	li r4, 0
/* 80C794BC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A75@ha */
/* 80C794C0  38 A5 8A 75 */	addi r5, r5, 0x8A75 /* 0x00008A75@l */
/* 80C794C4  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C794C8  38 E0 00 00 */	li r7, 0
/* 80C794CC  39 01 00 20 */	addi r8, r1, 0x20
/* 80C794D0  39 20 00 00 */	li r9, 0
/* 80C794D4  39 40 00 FF */	li r10, 0xff
/* 80C794D8  3D 60 80 C8 */	lis r11, lit_4110@ha /* 0x80C79AD0@ha */
/* 80C794DC  C0 2B 9A D0 */	lfs f1, lit_4110@l(r11)  /* 0x80C79AD0@l */
/* 80C794E0  4B 3D 35 B1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C794E4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C794E8  38 80 00 00 */	li r4, 0
/* 80C794EC  90 81 00 08 */	stw r4, 8(r1)
/* 80C794F0  38 00 FF FF */	li r0, -1
/* 80C794F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C794F8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C794FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C79500  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C79504  38 80 00 00 */	li r4, 0
/* 80C79508  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A76@ha */
/* 80C7950C  38 A5 8A 76 */	addi r5, r5, 0x8A76 /* 0x00008A76@l */
/* 80C79510  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C79514  38 E0 00 00 */	li r7, 0
/* 80C79518  39 01 00 20 */	addi r8, r1, 0x20
/* 80C7951C  39 20 00 00 */	li r9, 0
/* 80C79520  39 40 00 FF */	li r10, 0xff
/* 80C79524  3D 60 80 C8 */	lis r11, lit_4110@ha /* 0x80C79AD0@ha */
/* 80C79528  C0 2B 9A D0 */	lfs f1, lit_4110@l(r11)  /* 0x80C79AD0@l */
/* 80C7952C  4B 3D 35 65 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C79530  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C79534  38 80 00 00 */	li r4, 0
/* 80C79538  90 81 00 08 */	stw r4, 8(r1)
/* 80C7953C  38 00 FF FF */	li r0, -1
/* 80C79540  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C79544  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C79548  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C7954C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C79550  38 80 00 00 */	li r4, 0
/* 80C79554  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A77@ha */
/* 80C79558  38 A5 8A 77 */	addi r5, r5, 0x8A77 /* 0x00008A77@l */
/* 80C7955C  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C79560  38 E0 00 00 */	li r7, 0
/* 80C79564  39 01 00 20 */	addi r8, r1, 0x20
/* 80C79568  39 20 00 00 */	li r9, 0
/* 80C7956C  39 40 00 FF */	li r10, 0xff
/* 80C79570  3D 60 80 C8 */	lis r11, lit_4110@ha /* 0x80C79AD0@ha */
/* 80C79574  C0 2B 9A D0 */	lfs f1, lit_4110@l(r11)  /* 0x80C79AD0@l */
/* 80C79578  4B 3D 35 19 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C7957C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C79580  38 80 00 00 */	li r4, 0
/* 80C79584  90 81 00 08 */	stw r4, 8(r1)
/* 80C79588  38 00 FF FF */	li r0, -1
/* 80C7958C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C79590  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C79594  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C79598  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C7959C  38 80 00 00 */	li r4, 0
/* 80C795A0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A78@ha */
/* 80C795A4  38 A5 8A 78 */	addi r5, r5, 0x8A78 /* 0x00008A78@l */
/* 80C795A8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C795AC  38 E0 00 00 */	li r7, 0
/* 80C795B0  39 01 00 20 */	addi r8, r1, 0x20
/* 80C795B4  39 20 00 00 */	li r9, 0
/* 80C795B8  39 40 00 FF */	li r10, 0xff
/* 80C795BC  3D 60 80 C8 */	lis r11, lit_4110@ha /* 0x80C79AD0@ha */
/* 80C795C0  C0 2B 9A D0 */	lfs f1, lit_4110@l(r11)  /* 0x80C79AD0@l */
/* 80C795C4  4B 3D 34 CD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C795C8  7F C3 F3 78 */	mr r3, r30
/* 80C795CC  4B 3A 06 B1 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80C795D0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C795D4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C795D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C795DC  7C 08 03 A6 */	mtlr r0
/* 80C795E0  38 21 00 30 */	addi r1, r1, 0x30
/* 80C795E4  4E 80 00 20 */	blr 
