lbl_80BF4600:
/* 80BF4600  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BF4604  7C 08 02 A6 */	mflr r0
/* 80BF4608  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BF460C  39 61 00 60 */	addi r11, r1, 0x60
/* 80BF4610  4B 76 DB B5 */	bl _savegpr_23
/* 80BF4614  7C 7E 1B 78 */	mr r30, r3
/* 80BF4618  3C 60 80 BF */	lis r3, lit_1109@ha /* 0x80BF4B98@ha */
/* 80BF461C  3B E3 4B 98 */	addi r31, r3, lit_1109@l /* 0x80BF4B98@l */
/* 80BF4620  88 1F 00 5C */	lbz r0, 0x5c(r31)
/* 80BF4624  7C 00 07 75 */	extsb. r0, r0
/* 80BF4628  40 82 00 34 */	bne lbl_80BF465C
/* 80BF462C  3C 60 80 BF */	lis r3, lit_4545@ha /* 0x80BF4A1C@ha */
/* 80BF4630  C0 03 4A 1C */	lfs f0, lit_4545@l(r3)  /* 0x80BF4A1C@l */
/* 80BF4634  D0 1F 00 60 */	stfs f0, 0x60(r31)
/* 80BF4638  38 7F 00 60 */	addi r3, r31, 0x60
/* 80BF463C  D0 03 00 04 */	stfs f0, 4(r3)
/* 80BF4640  D0 03 00 08 */	stfs f0, 8(r3)
/* 80BF4644  3C 80 80 BF */	lis r4, __dt__4cXyzFv@ha /* 0x80BF33CC@ha */
/* 80BF4648  38 84 33 CC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80BF33CC@l */
/* 80BF464C  38 BF 00 50 */	addi r5, r31, 0x50
/* 80BF4650  4B FF E6 69 */	bl __register_global_object
/* 80BF4654  38 00 00 01 */	li r0, 1
/* 80BF4658  98 1F 00 5C */	stb r0, 0x5c(r31)
lbl_80BF465C:
/* 80BF465C  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80BF4660  C0 3E 0A 04 */	lfs f1, 0xa04(r30)
/* 80BF4664  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BF4668  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BF466C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80BF4670  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80BF4674  3A E0 00 00 */	li r23, 0
/* 80BF4678  3B A0 00 00 */	li r29, 0
/* 80BF467C  3B 80 00 00 */	li r28, 0
/* 80BF4680  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BF4684  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BF4688  3C 60 80 BF */	lis r3, emttrId@ha /* 0x80BF4AA8@ha */
/* 80BF468C  3B 43 4A A8 */	addi r26, r3, emttrId@l /* 0x80BF4AA8@l */
/* 80BF4690  3C 60 80 BF */	lis r3, lit_4359@ha /* 0x80BF49D8@ha */
/* 80BF4694  3B 63 49 D8 */	addi r27, r3, lit_4359@l /* 0x80BF49D8@l */
lbl_80BF4698:
/* 80BF4698  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80BF469C  38 00 00 FF */	li r0, 0xff
/* 80BF46A0  90 01 00 08 */	stw r0, 8(r1)
/* 80BF46A4  38 80 00 00 */	li r4, 0
/* 80BF46A8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BF46AC  38 00 FF FF */	li r0, -1
/* 80BF46B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BF46B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BF46B8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BF46BC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BF46C0  3B 1C 0A 20 */	addi r24, r28, 0xa20
/* 80BF46C4  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80BF46C8  38 A0 00 00 */	li r5, 0
/* 80BF46CC  7C DA EA 2E */	lhzx r6, r26, r29
/* 80BF46D0  38 E1 00 20 */	addi r7, r1, 0x20
/* 80BF46D4  39 1E 01 0C */	addi r8, r30, 0x10c
/* 80BF46D8  39 20 00 00 */	li r9, 0
/* 80BF46DC  39 5F 00 60 */	addi r10, r31, 0x60
/* 80BF46E0  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80BF46E4  4B 45 8D E9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BF46E8  7C 7E C1 2E */	stwx r3, r30, r24
/* 80BF46EC  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80BF46F0  38 63 02 10 */	addi r3, r3, 0x210
/* 80BF46F4  7C 9E C0 2E */	lwzx r4, r30, r24
/* 80BF46F8  4B 45 71 BD */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 80BF46FC  3A F7 00 01 */	addi r23, r23, 1
/* 80BF4700  2C 17 00 04 */	cmpwi r23, 4
/* 80BF4704  3B BD 00 02 */	addi r29, r29, 2
/* 80BF4708  3B 9C 00 04 */	addi r28, r28, 4
/* 80BF470C  41 80 FF 8C */	blt lbl_80BF4698
/* 80BF4710  39 61 00 60 */	addi r11, r1, 0x60
/* 80BF4714  4B 76 DA FD */	bl _restgpr_23
/* 80BF4718  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BF471C  7C 08 03 A6 */	mtlr r0
/* 80BF4720  38 21 00 60 */	addi r1, r1, 0x60
/* 80BF4724  4E 80 00 20 */	blr 
