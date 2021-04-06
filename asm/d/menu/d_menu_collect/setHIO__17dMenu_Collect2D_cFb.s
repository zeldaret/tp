lbl_801B42D8:
/* 801B42D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801B42DC  7C 08 02 A6 */	mflr r0
/* 801B42E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 801B42E4  39 61 00 30 */	addi r11, r1, 0x30
/* 801B42E8  48 1A DE E9 */	bl _savegpr_26
/* 801B42EC  7C 7E 1B 78 */	mr r30, r3
/* 801B42F0  7C 9F 23 78 */	mr r31, r4
/* 801B42F4  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 801B42F8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B42FC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4300  C0 43 06 30 */	lfs f2, 0x630(r3)
/* 801B4304  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801B4308  40 82 00 14 */	bne lbl_801B431C
/* 801B430C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 801B4310  C0 03 06 34 */	lfs f0, 0x634(r3)
/* 801B4314  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801B4318  41 82 00 28 */	beq lbl_801B4340
lbl_801B431C:
/* 801B431C  D0 5E 00 54 */	stfs f2, 0x54(r30)
/* 801B4320  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B4324  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4328  C0 03 06 34 */	lfs f0, 0x634(r3)
/* 801B432C  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 801B4330  80 7E 01 60 */	lwz r3, 0x160(r30)
/* 801B4334  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 801B4338  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 801B433C  48 0A 02 75 */	bl paneTrans__8CPaneMgrFff
lbl_801B4340:
/* 801B4340  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 801B4344  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B4348  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B434C  C0 23 06 38 */	lfs f1, 0x638(r3)
/* 801B4350  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801B4354  41 82 00 2C */	beq lbl_801B4380
/* 801B4358  D0 3E 00 5C */	stfs f1, 0x5c(r30)
/* 801B435C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 801B4360  80 7E 01 60 */	lwz r3, 0x160(r30)
/* 801B4364  80 63 00 04 */	lwz r3, 4(r3)
/* 801B4368  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B436C  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B4370  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4374  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B4378  7D 89 03 A6 */	mtctr r12
/* 801B437C  4E 80 04 21 */	bctrl 
lbl_801B4380:
/* 801B4380  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 801B4384  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B4388  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B438C  C0 23 06 3C */	lfs f1, 0x63c(r3)
/* 801B4390  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801B4394  41 82 00 14 */	beq lbl_801B43A8
/* 801B4398  D0 3E 00 60 */	stfs f1, 0x60(r30)
/* 801B439C  80 7E 01 60 */	lwz r3, 0x160(r30)
/* 801B43A0  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 801B43A4  48 0A 14 2D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801B43A8:
/* 801B43A8  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 801B43AC  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B43B0  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B43B4  C0 43 06 54 */	lfs f2, 0x654(r3)
/* 801B43B8  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801B43BC  40 82 00 14 */	bne lbl_801B43D0
/* 801B43C0  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 801B43C4  C0 03 06 58 */	lfs f0, 0x658(r3)
/* 801B43C8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801B43CC  41 82 00 28 */	beq lbl_801B43F4
lbl_801B43D0:
/* 801B43D0  D0 5E 00 64 */	stfs f2, 0x64(r30)
/* 801B43D4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B43D8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B43DC  C0 03 06 58 */	lfs f0, 0x658(r3)
/* 801B43E0  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 801B43E4  80 7E 01 64 */	lwz r3, 0x164(r30)
/* 801B43E8  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 801B43EC  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 801B43F0  48 0A 01 C1 */	bl paneTrans__8CPaneMgrFff
lbl_801B43F4:
/* 801B43F4  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 801B43F8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B43FC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4400  C0 23 06 5C */	lfs f1, 0x65c(r3)
/* 801B4404  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801B4408  41 82 00 2C */	beq lbl_801B4434
/* 801B440C  D0 3E 00 6C */	stfs f1, 0x6c(r30)
/* 801B4410  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 801B4414  80 7E 01 64 */	lwz r3, 0x164(r30)
/* 801B4418  80 63 00 04 */	lwz r3, 4(r3)
/* 801B441C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B4420  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B4424  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4428  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B442C  7D 89 03 A6 */	mtctr r12
/* 801B4430  4E 80 04 21 */	bctrl 
lbl_801B4434:
/* 801B4434  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 801B4438  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B443C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4440  C0 43 06 A0 */	lfs f2, 0x6a0(r3)
/* 801B4444  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 801B4448  40 82 00 14 */	bne lbl_801B445C
/* 801B444C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 801B4450  C0 03 06 A4 */	lfs f0, 0x6a4(r3)
/* 801B4454  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801B4458  41 82 00 28 */	beq lbl_801B4480
lbl_801B445C:
/* 801B445C  D0 5E 00 70 */	stfs f2, 0x70(r30)
/* 801B4460  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B4464  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4468  C0 03 06 A4 */	lfs f0, 0x6a4(r3)
/* 801B446C  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 801B4470  80 7E 01 68 */	lwz r3, 0x168(r30)
/* 801B4474  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 801B4478  C0 5E 00 74 */	lfs f2, 0x74(r30)
/* 801B447C  48 0A 01 35 */	bl paneTrans__8CPaneMgrFff
lbl_801B4480:
/* 801B4480  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 801B4484  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B4488  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B448C  C0 23 06 A8 */	lfs f1, 0x6a8(r3)
/* 801B4490  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801B4494  41 82 00 2C */	beq lbl_801B44C0
/* 801B4498  D0 3E 00 78 */	stfs f1, 0x78(r30)
/* 801B449C  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 801B44A0  80 7E 01 68 */	lwz r3, 0x168(r30)
/* 801B44A4  80 63 00 04 */	lwz r3, 4(r3)
/* 801B44A8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B44AC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B44B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B44B4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B44B8  7D 89 03 A6 */	mtctr r12
/* 801B44BC  4E 80 04 21 */	bctrl 
lbl_801B44C0:
/* 801B44C0  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B44C4  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B44C8  88 03 06 B3 */	lbz r0, 0x6b3(r3)
/* 801B44CC  28 00 00 00 */	cmplwi r0, 0
/* 801B44D0  41 82 00 C8 */	beq lbl_801B4598
/* 801B44D4  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B44D8  3C 80 62 61 */	lis r4, 0x6261 /* 0x62617365@ha */
/* 801B44DC  38 C4 73 65 */	addi r6, r4, 0x7365 /* 0x62617365@l */
/* 801B44E0  3C 80 6E 68 */	lis r4, 0x6E68 /* 0x6E68745F@ha */
/* 801B44E4  38 A4 74 5F */	addi r5, r4, 0x745F /* 0x6E68745F@l */
/* 801B44E8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B44EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B44F0  7D 89 03 A6 */	mtctr r12
/* 801B44F4  4E 80 04 21 */	bctrl 
/* 801B44F8  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B44FC  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4500  80 04 06 98 */	lwz r0, 0x698(r4)
/* 801B4504  90 01 00 10 */	stw r0, 0x10(r1)
/* 801B4508  80 04 06 90 */	lwz r0, 0x690(r4)
/* 801B450C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4510  38 81 00 14 */	addi r4, r1, 0x14
/* 801B4514  38 A1 00 10 */	addi r5, r1, 0x10
/* 801B4518  81 83 00 00 */	lwz r12, 0(r3)
/* 801B451C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B4520  7D 89 03 A6 */	mtctr r12
/* 801B4524  4E 80 04 21 */	bctrl 
/* 801B4528  3B 40 00 00 */	li r26, 0
/* 801B452C  3B A0 00 00 */	li r29, 0
/* 801B4530  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B4534  3B 63 EB C8 */	addi r27, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4538  3C 60 80 39 */	lis r3, kaz_n@ha /* 0x803950D0@ha */
/* 801B453C  3B 83 50 D0 */	addi r28, r3, kaz_n@l /* 0x803950D0@l */
lbl_801B4540:
/* 801B4540  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 801B4544  7C 9C EA 14 */	add r4, r28, r29
/* 801B4548  80 A4 00 00 */	lwz r5, 0(r4)
/* 801B454C  80 C4 00 04 */	lwz r6, 4(r4)
/* 801B4550  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4554  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B4558  7D 89 03 A6 */	mtctr r12
/* 801B455C  4E 80 04 21 */	bctrl 
/* 801B4560  80 1B 06 9C */	lwz r0, 0x69c(r27)
/* 801B4564  90 01 00 08 */	stw r0, 8(r1)
/* 801B4568  80 1B 06 94 */	lwz r0, 0x694(r27)
/* 801B456C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801B4570  38 81 00 0C */	addi r4, r1, 0xc
/* 801B4574  38 A1 00 08 */	addi r5, r1, 8
/* 801B4578  81 83 00 00 */	lwz r12, 0(r3)
/* 801B457C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801B4580  7D 89 03 A6 */	mtctr r12
/* 801B4584  4E 80 04 21 */	bctrl 
/* 801B4588  3B 5A 00 01 */	addi r26, r26, 1
/* 801B458C  2C 1A 00 09 */	cmpwi r26, 9
/* 801B4590  3B BD 00 08 */	addi r29, r29, 8
/* 801B4594  41 80 FF AC */	blt lbl_801B4540
lbl_801B4598:
/* 801B4598  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B459C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B45A0  88 03 06 B4 */	lbz r0, 0x6b4(r3)
/* 801B45A4  28 00 00 00 */	cmplwi r0, 0
/* 801B45A8  40 82 00 0C */	bne lbl_801B45B4
/* 801B45AC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 801B45B0  41 82 01 34 */	beq lbl_801B46E4
lbl_801B45B4:
/* 801B45B4  80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 801B45B8  28 03 00 00 */	cmplwi r3, 0
/* 801B45BC  41 82 00 44 */	beq lbl_801B4600
/* 801B45C0  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B45C4  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B45C8  C0 24 06 60 */	lfs f1, 0x660(r4)
/* 801B45CC  C0 44 06 64 */	lfs f2, 0x664(r4)
/* 801B45D0  48 09 FF E1 */	bl paneTrans__8CPaneMgrFff
/* 801B45D4  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B45D8  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B45DC  C0 03 06 68 */	lfs f0, 0x668(r3)
/* 801B45E0  80 7E 01 6C */	lwz r3, 0x16c(r30)
/* 801B45E4  80 63 00 04 */	lwz r3, 4(r3)
/* 801B45E8  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B45EC  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B45F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B45F4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B45F8  7D 89 03 A6 */	mtctr r12
/* 801B45FC  4E 80 04 21 */	bctrl 
lbl_801B4600:
/* 801B4600  80 7E 01 70 */	lwz r3, 0x170(r30)
/* 801B4604  28 03 00 00 */	cmplwi r3, 0
/* 801B4608  41 82 00 44 */	beq lbl_801B464C
/* 801B460C  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B4610  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4614  C0 24 06 6C */	lfs f1, 0x66c(r4)
/* 801B4618  C0 44 06 70 */	lfs f2, 0x670(r4)
/* 801B461C  48 09 FF 95 */	bl paneTrans__8CPaneMgrFff
/* 801B4620  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B4624  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4628  C0 03 06 74 */	lfs f0, 0x674(r3)
/* 801B462C  80 7E 01 70 */	lwz r3, 0x170(r30)
/* 801B4630  80 63 00 04 */	lwz r3, 4(r3)
/* 801B4634  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B4638  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B463C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B4640  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B4644  7D 89 03 A6 */	mtctr r12
/* 801B4648  4E 80 04 21 */	bctrl 
lbl_801B464C:
/* 801B464C  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801B4650  28 03 00 00 */	cmplwi r3, 0
/* 801B4654  41 82 00 44 */	beq lbl_801B4698
/* 801B4658  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B465C  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4660  C0 24 06 78 */	lfs f1, 0x678(r4)
/* 801B4664  C0 44 06 7C */	lfs f2, 0x67c(r4)
/* 801B4668  48 09 FF 49 */	bl paneTrans__8CPaneMgrFff
/* 801B466C  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B4670  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B4674  C0 03 06 80 */	lfs f0, 0x680(r3)
/* 801B4678  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 801B467C  80 63 00 04 */	lwz r3, 4(r3)
/* 801B4680  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B4684  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B4688  81 83 00 00 */	lwz r12, 0(r3)
/* 801B468C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B4690  7D 89 03 A6 */	mtctr r12
/* 801B4694  4E 80 04 21 */	bctrl 
lbl_801B4698:
/* 801B4698  80 7E 01 78 */	lwz r3, 0x178(r30)
/* 801B469C  28 03 00 00 */	cmplwi r3, 0
/* 801B46A0  41 82 00 44 */	beq lbl_801B46E4
/* 801B46A4  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B46A8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B46AC  C0 24 06 84 */	lfs f1, 0x684(r4)
/* 801B46B0  C0 44 06 88 */	lfs f2, 0x688(r4)
/* 801B46B4  48 09 FE FD */	bl paneTrans__8CPaneMgrFff
/* 801B46B8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B46BC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B46C0  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 801B46C4  80 7E 01 78 */	lwz r3, 0x178(r30)
/* 801B46C8  80 63 00 04 */	lwz r3, 4(r3)
/* 801B46CC  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801B46D0  D0 03 00 D0 */	stfs f0, 0xd0(r3)
/* 801B46D4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B46D8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801B46DC  7D 89 03 A6 */	mtctr r12
/* 801B46E0  4E 80 04 21 */	bctrl 
lbl_801B46E4:
/* 801B46E4  39 61 00 30 */	addi r11, r1, 0x30
/* 801B46E8  48 1A DB 35 */	bl _restgpr_26
/* 801B46EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801B46F0  7C 08 03 A6 */	mtlr r0
/* 801B46F4  38 21 00 30 */	addi r1, r1, 0x30
/* 801B46F8  4E 80 00 20 */	blr 
