lbl_8057497C:
/* 8057497C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80574980  7C 08 02 A6 */	mflr r0
/* 80574984  90 01 00 14 */	stw r0, 0x14(r1)
/* 80574988  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057498C  93 C1 00 08 */	stw r30, 8(r1)
/* 80574990  7C 7F 1B 78 */	mr r31, r3
/* 80574994  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80574998  2C 00 00 02 */	cmpwi r0, 2
/* 8057499C  41 82 00 80 */	beq lbl_80574A1C
/* 805749A0  40 80 01 74 */	bge lbl_80574B14
/* 805749A4  2C 00 00 00 */	cmpwi r0, 0
/* 805749A8  40 80 00 0C */	bge lbl_805749B4
/* 805749AC  48 00 01 68 */	b lbl_80574B14
/* 805749B0  48 00 01 64 */	b lbl_80574B14
lbl_805749B4:
/* 805749B4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 805749B8  2C 00 00 01 */	cmpwi r0, 1
/* 805749BC  41 82 00 28 */	beq lbl_805749E4
/* 805749C0  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 805749C4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 805749C8  4B BD 0E D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805749CC  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 805749D0  38 00 00 01 */	li r0, 1
/* 805749D4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 805749D8  3C 60 80 57 */	lis r3, lit_4541@ha
/* 805749DC  C0 03 66 48 */	lfs f0, lit_4541@l(r3)
/* 805749E0  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_805749E4:
/* 805749E4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 805749E8  2C 00 00 00 */	cmpwi r0, 0
/* 805749EC  41 82 00 28 */	beq lbl_80574A14
/* 805749F0  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 805749F4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 805749F8  4B BD 0E A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805749FC  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80574A00  38 00 00 00 */	li r0, 0
/* 80574A04  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80574A08  3C 60 80 57 */	lis r3, lit_4541@ha
/* 80574A0C  C0 03 66 48 */	lfs f0, lit_4541@l(r3)
/* 80574A10  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80574A14:
/* 80574A14  38 00 00 02 */	li r0, 2
/* 80574A18  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80574A1C:
/* 80574A1C  7F E3 FB 78 */	mr r3, r31
/* 80574A20  4B BD 69 18 */	b srchPlayerActor__8daNpcT_cFv
/* 80574A24  2C 03 00 00 */	cmpwi r3, 0
/* 80574A28  41 82 00 44 */	beq lbl_80574A6C
/* 80574A2C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80574A30  2C 00 00 01 */	cmpwi r0, 1
/* 80574A34  41 82 00 2C */	beq lbl_80574A60
/* 80574A38  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80574A3C  4B BD 0C C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80574A40  38 00 00 00 */	li r0, 0
/* 80574A44  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80574A48  3C 60 80 57 */	lis r3, lit_4286@ha
/* 80574A4C  C0 03 66 34 */	lfs f0, lit_4286@l(r3)
/* 80574A50  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80574A54  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80574A58  38 00 00 01 */	li r0, 1
/* 80574A5C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80574A60:
/* 80574A60  38 00 00 00 */	li r0, 0
/* 80574A64  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80574A68  48 00 00 74 */	b lbl_80574ADC
lbl_80574A6C:
/* 80574A6C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80574A70  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80574A74  7C 04 00 00 */	cmpw r4, r0
/* 80574A78  41 82 00 2C */	beq lbl_80574AA4
/* 80574A7C  7F E3 FB 78 */	mr r3, r31
/* 80574A80  38 A0 FF FF */	li r5, -1
/* 80574A84  38 C0 FF FF */	li r6, -1
/* 80574A88  38 E0 00 0F */	li r7, 0xf
/* 80574A8C  39 00 00 00 */	li r8, 0
/* 80574A90  4B BD 6B B8 */	b step__8daNpcT_cFsiiii
/* 80574A94  2C 03 00 00 */	cmpwi r3, 0
/* 80574A98  41 82 00 0C */	beq lbl_80574AA4
/* 80574A9C  38 00 00 01 */	li r0, 1
/* 80574AA0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80574AA4:
/* 80574AA4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80574AA8  2C 00 00 00 */	cmpwi r0, 0
/* 80574AAC  41 82 00 28 */	beq lbl_80574AD4
/* 80574AB0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80574AB4  4B BD 0C 48 */	b remove__18daNpcT_ActorMngr_cFv
/* 80574AB8  38 00 00 00 */	li r0, 0
/* 80574ABC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80574AC0  3C 60 80 57 */	lis r3, lit_4286@ha
/* 80574AC4  C0 03 66 34 */	lfs f0, lit_4286@l(r3)
/* 80574AC8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80574ACC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80574AD0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80574AD4:
/* 80574AD4  38 00 00 00 */	li r0, 0
/* 80574AD8  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80574ADC:
/* 80574ADC  80 1F 0F A0 */	lwz r0, 0xfa0(r31)
/* 80574AE0  2C 00 00 33 */	cmpwi r0, 0x33
/* 80574AE4  40 82 00 30 */	bne lbl_80574B14
/* 80574AE8  80 7F 0D 90 */	lwz r3, 0xd90(r31)
/* 80574AEC  3C 03 00 01 */	addis r0, r3, 1
/* 80574AF0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80574AF4  40 82 00 20 */	bne lbl_80574B14
/* 80574AF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80574AFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80574B00  38 63 09 58 */	addi r3, r3, 0x958
/* 80574B04  38 80 00 06 */	li r4, 6
/* 80574B08  4B AB FE 10 */	b onDungeonItem__12dSv_memBit_cFi
/* 80574B0C  7F E3 FB 78 */	mr r3, r31
/* 80574B10  4B AA 51 6C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80574B14:
/* 80574B14  38 60 00 01 */	li r3, 1
/* 80574B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80574B1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80574B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80574B24  7C 08 03 A6 */	mtlr r0
/* 80574B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80574B2C  4E 80 00 20 */	blr 
