lbl_80955DE8:
/* 80955DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80955DEC  7C 08 02 A6 */	mflr r0
/* 80955DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80955DF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80955DF8  93 C1 00 08 */	stw r30, 8(r1)
/* 80955DFC  7C 7F 1B 78 */	mr r31, r3
/* 80955E00  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80955E04  2C 00 00 02 */	cmpwi r0, 2
/* 80955E08  41 82 00 94 */	beq lbl_80955E9C
/* 80955E0C  40 80 01 70 */	bge lbl_80955F7C
/* 80955E10  2C 00 00 00 */	cmpwi r0, 0
/* 80955E14  40 80 00 0C */	bge lbl_80955E20
/* 80955E18  48 00 01 64 */	b lbl_80955F7C
/* 80955E1C  48 00 01 60 */	b lbl_80955F7C
lbl_80955E20:
/* 80955E20  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80955E24  2C 00 00 00 */	cmpwi r0, 0
/* 80955E28  40 82 00 74 */	bne lbl_80955E9C
/* 80955E2C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80955E30  2C 00 00 0C */	cmpwi r0, 0xc
/* 80955E34  41 82 00 28 */	beq lbl_80955E5C
/* 80955E38  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80955E3C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80955E40  4B 7E FA 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80955E44  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80955E48  38 00 00 0C */	li r0, 0xc
/* 80955E4C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80955E50  3C 60 80 95 */	lis r3, lit_4804@ha
/* 80955E54  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)
/* 80955E58  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80955E5C:
/* 80955E5C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80955E60  2C 00 00 00 */	cmpwi r0, 0
/* 80955E64  41 82 00 28 */	beq lbl_80955E8C
/* 80955E68  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80955E6C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80955E70  4B 7E FA 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80955E74  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80955E78  38 00 00 00 */	li r0, 0
/* 80955E7C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80955E80  3C 60 80 95 */	lis r3, lit_4804@ha
/* 80955E84  C0 03 77 B4 */	lfs f0, lit_4804@l(r3)
/* 80955E88  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80955E8C:
/* 80955E8C  38 00 00 00 */	li r0, 0
/* 80955E90  98 1F 0F D1 */	stb r0, 0xfd1(r31)
/* 80955E94  38 00 00 02 */	li r0, 2
/* 80955E98  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80955E9C:
/* 80955E9C  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80955EA0  2C 00 00 04 */	cmpwi r0, 4
/* 80955EA4  41 82 00 44 */	beq lbl_80955EE8
/* 80955EA8  40 80 00 6C */	bge lbl_80955F14
/* 80955EAC  2C 00 00 00 */	cmpwi r0, 0
/* 80955EB0  41 82 00 08 */	beq lbl_80955EB8
/* 80955EB4  48 00 00 60 */	b lbl_80955F14
lbl_80955EB8:
/* 80955EB8  38 60 00 B4 */	li r3, 0xb4
/* 80955EBC  4B 7F 6C B0 */	b daNpcT_chkTmpBit__FUl
/* 80955EC0  2C 03 00 00 */	cmpwi r3, 0
/* 80955EC4  41 82 00 50 */	beq lbl_80955F14
/* 80955EC8  38 60 00 97 */	li r3, 0x97
/* 80955ECC  4B 7F 6C A0 */	b daNpcT_chkTmpBit__FUl
/* 80955ED0  2C 03 00 00 */	cmpwi r3, 0
/* 80955ED4  40 82 00 40 */	bne lbl_80955F14
/* 80955ED8  38 00 00 01 */	li r0, 1
/* 80955EDC  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80955EE0  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80955EE4  48 00 00 30 */	b lbl_80955F14
lbl_80955EE8:
/* 80955EE8  38 60 00 B1 */	li r3, 0xb1
/* 80955EEC  4B 7F 6C 80 */	b daNpcT_chkTmpBit__FUl
/* 80955EF0  2C 03 00 00 */	cmpwi r3, 0
/* 80955EF4  41 82 00 20 */	beq lbl_80955F14
/* 80955EF8  38 60 00 B2 */	li r3, 0xb2
/* 80955EFC  4B 7F 6C 70 */	b daNpcT_chkTmpBit__FUl
/* 80955F00  2C 03 00 00 */	cmpwi r3, 0
/* 80955F04  40 82 00 10 */	bne lbl_80955F14
/* 80955F08  38 00 00 01 */	li r0, 1
/* 80955F0C  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80955F10  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80955F14:
/* 80955F14  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80955F18  2C 00 00 00 */	cmpwi r0, 0
/* 80955F1C  40 82 00 60 */	bne lbl_80955F7C
/* 80955F20  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80955F24  2C 00 00 01 */	cmpwi r0, 1
/* 80955F28  41 82 00 2C */	beq lbl_80955F54
/* 80955F2C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80955F30  4B 7E F7 CC */	b remove__18daNpcT_ActorMngr_cFv
/* 80955F34  38 00 00 00 */	li r0, 0
/* 80955F38  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80955F3C  3C 60 80 95 */	lis r3, lit_4100@ha
/* 80955F40  C0 03 77 98 */	lfs f0, lit_4100@l(r3)
/* 80955F44  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80955F48  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80955F4C  38 00 00 01 */	li r0, 1
/* 80955F50  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80955F54:
/* 80955F54  38 00 00 00 */	li r0, 0
/* 80955F58  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80955F5C  7F E3 FB 78 */	mr r3, r31
/* 80955F60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80955F64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80955F68  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80955F6C  4B 6C 47 A4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80955F70  7C 64 1B 78 */	mr r4, r3
/* 80955F74  7F E3 FB 78 */	mr r3, r31
/* 80955F78  4B FF E7 CD */	bl lookround__11daNpc_Aru_cFs
lbl_80955F7C:
/* 80955F7C  38 60 00 01 */	li r3, 1
/* 80955F80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80955F84  83 C1 00 08 */	lwz r30, 8(r1)
/* 80955F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80955F8C  7C 08 03 A6 */	mtlr r0
/* 80955F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80955F94  4E 80 00 20 */	blr 
