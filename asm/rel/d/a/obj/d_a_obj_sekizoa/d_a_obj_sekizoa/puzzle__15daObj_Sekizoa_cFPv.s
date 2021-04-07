lbl_80CD425C:
/* 80CD425C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CD4260  7C 08 02 A6 */	mflr r0
/* 80CD4264  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CD4268  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD426C  4B 68 DF 6D */	bl _savegpr_28
/* 80CD4270  7C 7E 1B 78 */	mr r30, r3
/* 80CD4274  3C 60 80 CD */	lis r3, m__21daObj_Sekizoa_Param_c@ha /* 0x80CD5CFC@ha */
/* 80CD4278  3B E3 5C FC */	addi r31, r3, m__21daObj_Sekizoa_Param_c@l /* 0x80CD5CFC@l */
/* 80CD427C  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80CD4280  2C 00 00 02 */	cmpwi r0, 2
/* 80CD4284  41 82 01 A0 */	beq lbl_80CD4424
/* 80CD4288  40 80 03 0C */	bge lbl_80CD4594
/* 80CD428C  2C 00 00 00 */	cmpwi r0, 0
/* 80CD4290  40 80 00 0C */	bge lbl_80CD429C
/* 80CD4294  48 00 03 00 */	b lbl_80CD4594
/* 80CD4298  48 00 02 FC */	b lbl_80CD4594
lbl_80CD429C:
/* 80CD429C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80CD42A0  2C 00 00 00 */	cmpwi r0, 0
/* 80CD42A4  40 82 01 80 */	bne lbl_80CD4424
/* 80CD42A8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80CD42AC  2C 00 00 00 */	cmpwi r0, 0
/* 80CD42B0  41 82 00 24 */	beq lbl_80CD42D4
/* 80CD42B4  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80CD42B8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80CD42BC  4B 47 15 DD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD42C0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80CD42C4  38 00 00 00 */	li r0, 0
/* 80CD42C8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80CD42CC  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD42D0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80CD42D4:
/* 80CD42D4  38 60 00 31 */	li r3, 0x31
/* 80CD42D8  4B 47 88 95 */	bl daNpcT_chkTmpBit__FUl
/* 80CD42DC  2C 03 00 00 */	cmpwi r3, 0
/* 80CD42E0  41 82 00 40 */	beq lbl_80CD4320
/* 80CD42E4  7F C3 F3 78 */	mr r3, r30
/* 80CD42E8  4B FF CB 49 */	bl getGameMotionNo__15daObj_Sekizoa_cFv
/* 80CD42EC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CD42F0  41 80 01 2C */	blt lbl_80CD441C
/* 80CD42F4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD42F8  7C 1D 00 00 */	cmpw r29, r0
/* 80CD42FC  41 82 01 20 */	beq lbl_80CD441C
/* 80CD4300  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD4304  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD4308  4B 47 15 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD430C  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD4310  93 BE 0B 7C */	stw r29, 0xb7c(r30)
/* 80CD4314  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD4318  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80CD431C  48 00 01 00 */	b lbl_80CD441C
lbl_80CD4320:
/* 80CD4320  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CD4324  2C 00 00 01 */	cmpwi r0, 1
/* 80CD4328  41 82 00 50 */	beq lbl_80CD4378
/* 80CD432C  40 80 00 10 */	bge lbl_80CD433C
/* 80CD4330  2C 00 00 00 */	cmpwi r0, 0
/* 80CD4334  40 80 00 14 */	bge lbl_80CD4348
/* 80CD4338  48 00 00 AC */	b lbl_80CD43E4
lbl_80CD433C:
/* 80CD433C  2C 00 00 06 */	cmpwi r0, 6
/* 80CD4340  40 80 00 A4 */	bge lbl_80CD43E4
/* 80CD4344  48 00 00 64 */	b lbl_80CD43A8
lbl_80CD4348:
/* 80CD4348  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD434C  2C 00 00 02 */	cmpwi r0, 2
/* 80CD4350  41 82 00 CC */	beq lbl_80CD441C
/* 80CD4354  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD4358  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD435C  4B 47 15 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD4360  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD4364  38 00 00 02 */	li r0, 2
/* 80CD4368  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80CD436C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD4370  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80CD4374  48 00 00 A8 */	b lbl_80CD441C
lbl_80CD4378:
/* 80CD4378  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD437C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80CD4380  41 82 00 9C */	beq lbl_80CD441C
/* 80CD4384  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD4388  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD438C  4B 47 15 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD4390  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD4394  38 00 00 0D */	li r0, 0xd
/* 80CD4398  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80CD439C  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD43A0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80CD43A4  48 00 00 78 */	b lbl_80CD441C
lbl_80CD43A8:
/* 80CD43A8  7F C3 F3 78 */	mr r3, r30
/* 80CD43AC  4B FF CA 3D */	bl getWaitMotionNo__15daObj_Sekizoa_cFv
/* 80CD43B0  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CD43B4  41 80 00 68 */	blt lbl_80CD441C
/* 80CD43B8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD43BC  7C 1D 00 00 */	cmpw r29, r0
/* 80CD43C0  41 82 00 5C */	beq lbl_80CD441C
/* 80CD43C4  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD43C8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD43CC  4B 47 14 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD43D0  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD43D4  93 BE 0B 7C */	stw r29, 0xb7c(r30)
/* 80CD43D8  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD43DC  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80CD43E0  48 00 00 3C */	b lbl_80CD441C
lbl_80CD43E4:
/* 80CD43E4  7F C3 F3 78 */	mr r3, r30
/* 80CD43E8  4B FF CA 01 */	bl getWaitMotionNo__15daObj_Sekizoa_cFv
/* 80CD43EC  7C 7D 1B 79 */	or. r29, r3, r3
/* 80CD43F0  41 80 00 2C */	blt lbl_80CD441C
/* 80CD43F4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80CD43F8  7C 1D 00 00 */	cmpw r29, r0
/* 80CD43FC  41 82 00 20 */	beq lbl_80CD441C
/* 80CD4400  83 9E 0B 80 */	lwz r28, 0xb80(r30)
/* 80CD4404  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80CD4408  4B 47 14 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD440C  93 9E 0B 80 */	stw r28, 0xb80(r30)
/* 80CD4410  93 BE 0B 7C */	stw r29, 0xb7c(r30)
/* 80CD4414  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 80CD4418  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80CD441C:
/* 80CD441C  38 00 00 02 */	li r0, 2
/* 80CD4420  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80CD4424:
/* 80CD4424  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80CD4428  2C 00 00 00 */	cmpwi r0, 0
/* 80CD442C  40 82 01 68 */	bne lbl_80CD4594
/* 80CD4430  38 60 00 31 */	li r3, 0x31
/* 80CD4434  4B 47 87 39 */	bl daNpcT_chkTmpBit__FUl
/* 80CD4438  2C 03 00 00 */	cmpwi r3, 0
/* 80CD443C  41 82 00 D0 */	beq lbl_80CD450C
/* 80CD4440  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CD4444  28 00 00 00 */	cmplwi r0, 0
/* 80CD4448  40 82 00 0C */	bne lbl_80CD4454
/* 80CD444C  38 00 00 0A */	li r0, 0xa
/* 80CD4450  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80CD4454:
/* 80CD4454  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD4458  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD445C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80CD4460  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80CD4464  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80CD4468  7D 89 03 A6 */	mtctr r12
/* 80CD446C  4E 80 04 21 */	bctrl 
/* 80CD4470  28 03 00 00 */	cmplwi r3, 0
/* 80CD4474  41 82 00 28 */	beq lbl_80CD449C
/* 80CD4478  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CD447C  28 00 00 00 */	cmplwi r0, 0
/* 80CD4480  40 82 00 E0 */	bne lbl_80CD4560
/* 80CD4484  38 7F 00 00 */	addi r3, r31, 0
/* 80CD4488  A8 03 00 98 */	lha r0, 0x98(r3)
/* 80CD448C  90 1E 11 58 */	stw r0, 0x1158(r30)
/* 80CD4490  38 00 00 05 */	li r0, 5
/* 80CD4494  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80CD4498  48 00 00 C8 */	b lbl_80CD4560
lbl_80CD449C:
/* 80CD449C  88 1E 11 75 */	lbz r0, 0x1175(r30)
/* 80CD44A0  28 00 00 00 */	cmplwi r0, 0
/* 80CD44A4  40 82 00 44 */	bne lbl_80CD44E8
/* 80CD44A8  83 9D 5D AC */	lwz r28, 0x5dac(r29)
/* 80CD44AC  7F 83 E3 78 */	mr r3, r28
/* 80CD44B0  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80CD44B4  81 8C 02 38 */	lwz r12, 0x238(r12)
/* 80CD44B8  7D 89 03 A6 */	mtctr r12
/* 80CD44BC  4E 80 04 21 */	bctrl 
/* 80CD44C0  7C 63 07 34 */	extsh r3, r3
/* 80CD44C4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80CD44C8  7C 00 18 00 */	cmpw r0, r3
/* 80CD44CC  41 82 00 10 */	beq lbl_80CD44DC
/* 80CD44D0  38 00 00 01 */	li r0, 1
/* 80CD44D4  98 1E 11 75 */	stb r0, 0x1175(r30)
/* 80CD44D8  48 00 00 10 */	b lbl_80CD44E8
lbl_80CD44DC:
/* 80CD44DC  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80CD44E0  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 80CD44E4  B0 1E 11 70 */	sth r0, 0x1170(r30)
lbl_80CD44E8:
/* 80CD44E8  88 1E 11 75 */	lbz r0, 0x1175(r30)
/* 80CD44EC  28 00 00 00 */	cmplwi r0, 0
/* 80CD44F0  41 82 00 70 */	beq lbl_80CD4560
/* 80CD44F4  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CD44F8  28 00 00 00 */	cmplwi r0, 0
/* 80CD44FC  40 82 00 64 */	bne lbl_80CD4560
/* 80CD4500  38 00 00 04 */	li r0, 4
/* 80CD4504  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80CD4508  48 00 00 58 */	b lbl_80CD4560
lbl_80CD450C:
/* 80CD450C  88 1E 10 C8 */	lbz r0, 0x10c8(r30)
/* 80CD4510  28 00 00 00 */	cmplwi r0, 0
/* 80CD4514  40 82 00 4C */	bne lbl_80CD4560
/* 80CD4518  88 1E 11 73 */	lbz r0, 0x1173(r30)
/* 80CD451C  28 00 00 00 */	cmplwi r0, 0
/* 80CD4520  41 82 00 40 */	beq lbl_80CD4560
/* 80CD4524  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CD4528  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CD452C  28 04 00 FF */	cmplwi r4, 0xff
/* 80CD4530  41 82 00 30 */	beq lbl_80CD4560
/* 80CD4534  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CD4538  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CD453C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80CD4540  7C 05 07 74 */	extsb r5, r0
/* 80CD4544  4B 36 0E 1D */	bl isSwitch__10dSv_info_cCFii
/* 80CD4548  2C 03 00 00 */	cmpwi r3, 0
/* 80CD454C  40 82 00 14 */	bne lbl_80CD4560
/* 80CD4550  38 00 00 01 */	li r0, 1
/* 80CD4554  98 1E 0E 33 */	stb r0, 0xe33(r30)
/* 80CD4558  38 00 00 02 */	li r0, 2
/* 80CD455C  B0 1E 0E 30 */	sth r0, 0xe30(r30)
lbl_80CD4560:
/* 80CD4560  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80CD4564  2C 00 00 00 */	cmpwi r0, 0
/* 80CD4568  41 82 00 24 */	beq lbl_80CD458C
/* 80CD456C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80CD4570  4B 47 11 8D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80CD4574  38 00 00 00 */	li r0, 0
/* 80CD4578  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80CD457C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80CD4580  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80CD4584  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80CD4588  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80CD458C:
/* 80CD458C  38 00 00 00 */	li r0, 0
/* 80CD4590  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80CD4594:
/* 80CD4594  38 60 00 01 */	li r3, 1
/* 80CD4598  39 61 00 20 */	addi r11, r1, 0x20
/* 80CD459C  4B 68 DC 89 */	bl _restgpr_28
/* 80CD45A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CD45A4  7C 08 03 A6 */	mtlr r0
/* 80CD45A8  38 21 00 20 */	addi r1, r1, 0x20
/* 80CD45AC  4E 80 00 20 */	blr 
