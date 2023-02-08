lbl_80993D2C:
/* 80993D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80993D30  7C 08 02 A6 */	mflr r0
/* 80993D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80993D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80993D3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80993D40  7C 7F 1B 78 */	mr r31, r3
/* 80993D44  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80993D48  2C 00 00 02 */	cmpwi r0, 2
/* 80993D4C  41 82 00 8C */	beq lbl_80993DD8
/* 80993D50  40 80 02 18 */	bge lbl_80993F68
/* 80993D54  2C 00 00 00 */	cmpwi r0, 0
/* 80993D58  40 80 00 0C */	bge lbl_80993D64
/* 80993D5C  48 00 02 0C */	b lbl_80993F68
/* 80993D60  48 00 02 08 */	b lbl_80993F68
lbl_80993D64:
/* 80993D64  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80993D68  2C 00 00 00 */	cmpwi r0, 0
/* 80993D6C  40 82 00 6C */	bne lbl_80993DD8
/* 80993D70  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80993D74  2C 00 00 04 */	cmpwi r0, 4
/* 80993D78  41 82 00 28 */	beq lbl_80993DA0
/* 80993D7C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80993D80  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80993D84  4B 7B 1B 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80993D88  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80993D8C  38 00 00 04 */	li r0, 4
/* 80993D90  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80993D94  3C 60 80 99 */	lis r3, lit_4679@ha /* 0x80995938@ha */
/* 80993D98  C0 03 59 38 */	lfs f0, lit_4679@l(r3)  /* 0x80995938@l */
/* 80993D9C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80993DA0:
/* 80993DA0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80993DA4  2C 00 00 00 */	cmpwi r0, 0
/* 80993DA8  41 82 00 28 */	beq lbl_80993DD0
/* 80993DAC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80993DB0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80993DB4  4B 7B 1A E5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80993DB8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80993DBC  38 00 00 00 */	li r0, 0
/* 80993DC0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80993DC4  3C 60 80 99 */	lis r3, lit_4679@ha /* 0x80995938@ha */
/* 80993DC8  C0 03 59 38 */	lfs f0, lit_4679@l(r3)  /* 0x80995938@l */
/* 80993DCC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80993DD0:
/* 80993DD0  38 00 00 02 */	li r0, 2
/* 80993DD4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80993DD8:
/* 80993DD8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80993DDC  2C 00 00 00 */	cmpwi r0, 0
/* 80993DE0  40 82 01 88 */	bne lbl_80993F68
/* 80993DE4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80993DE8  4B 7B 19 21 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80993DEC  28 03 00 00 */	cmplwi r3, 0
/* 80993DF0  41 82 00 C8 */	beq lbl_80993EB8
/* 80993DF4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80993DF8  2C 00 00 00 */	cmpwi r0, 0
/* 80993DFC  41 82 00 28 */	beq lbl_80993E24
/* 80993E00  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80993E04  4B 7B 18 F9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80993E08  38 00 00 00 */	li r0, 0
/* 80993E0C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80993E10  3C 60 80 99 */	lis r3, lit_4123@ha /* 0x80995920@ha */
/* 80993E14  C0 03 59 20 */	lfs f0, lit_4123@l(r3)  /* 0x80995920@l */
/* 80993E18  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80993E1C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80993E20  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80993E24:
/* 80993E24  38 00 00 00 */	li r0, 0
/* 80993E28  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80993E2C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80993E30  4B 7B 18 D9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80993E34  7C 64 1B 78 */	mr r4, r3
/* 80993E38  7F E3 FB 78 */	mr r3, r31
/* 80993E3C  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80993E40  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80993E44  4B 7B 6D 8D */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80993E48  2C 03 00 00 */	cmpwi r3, 0
/* 80993E4C  41 82 00 40 */	beq lbl_80993E8C
/* 80993E50  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80993E54  2C 00 00 01 */	cmpwi r0, 1
/* 80993E58  41 82 00 2C */	beq lbl_80993E84
/* 80993E5C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80993E60  4B 7B 18 9D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80993E64  38 00 00 00 */	li r0, 0
/* 80993E68  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80993E6C  3C 60 80 99 */	lis r3, lit_4123@ha /* 0x80995920@ha */
/* 80993E70  C0 03 59 20 */	lfs f0, lit_4123@l(r3)  /* 0x80995920@l */
/* 80993E74  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80993E78  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80993E7C  38 00 00 01 */	li r0, 1
/* 80993E80  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80993E84:
/* 80993E84  38 00 00 00 */	li r0, 0
/* 80993E88  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80993E8C:
/* 80993E8C  7F E3 FB 78 */	mr r3, r31
/* 80993E90  4B 7B 74 A9 */	bl srchPlayerActor__8daNpcT_cFv
/* 80993E94  2C 03 00 00 */	cmpwi r3, 0
/* 80993E98  40 82 00 D0 */	bne lbl_80993F68
/* 80993E9C  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80993EA0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80993EA4  7C 03 00 00 */	cmpw r3, r0
/* 80993EA8  40 82 00 C0 */	bne lbl_80993F68
/* 80993EAC  38 00 00 01 */	li r0, 1
/* 80993EB0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80993EB4  48 00 00 B4 */	b lbl_80993F68
lbl_80993EB8:
/* 80993EB8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80993EBC  2C 00 00 00 */	cmpwi r0, 0
/* 80993EC0  41 82 00 28 */	beq lbl_80993EE8
/* 80993EC4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80993EC8  4B 7B 18 35 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80993ECC  38 00 00 00 */	li r0, 0
/* 80993ED0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80993ED4  3C 60 80 99 */	lis r3, lit_4123@ha /* 0x80995920@ha */
/* 80993ED8  C0 03 59 20 */	lfs f0, lit_4123@l(r3)  /* 0x80995920@l */
/* 80993EDC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80993EE0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80993EE4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80993EE8:
/* 80993EE8  38 00 00 00 */	li r0, 0
/* 80993EEC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80993EF0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80993EF4  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80993EF8  7C 04 00 00 */	cmpw r4, r0
/* 80993EFC  41 82 00 58 */	beq lbl_80993F54
/* 80993F00  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80993F04  28 00 00 00 */	cmplwi r0, 0
/* 80993F08  40 82 00 18 */	bne lbl_80993F20
/* 80993F0C  7F E3 FB 78 */	mr r3, r31
/* 80993F10  4B 7B 6B 09 */	bl setAngle__8daNpcT_cFs
/* 80993F14  38 00 00 01 */	li r0, 1
/* 80993F18  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80993F1C  48 00 00 2C */	b lbl_80993F48
lbl_80993F20:
/* 80993F20  7F E3 FB 78 */	mr r3, r31
/* 80993F24  38 A0 00 04 */	li r5, 4
/* 80993F28  38 C0 00 05 */	li r6, 5
/* 80993F2C  38 E0 00 0F */	li r7, 0xf
/* 80993F30  39 00 00 00 */	li r8, 0
/* 80993F34  4B 7B 77 15 */	bl step__8daNpcT_cFsiiii
/* 80993F38  2C 03 00 00 */	cmpwi r3, 0
/* 80993F3C  41 82 00 0C */	beq lbl_80993F48
/* 80993F40  38 00 00 01 */	li r0, 1
/* 80993F44  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80993F48:
/* 80993F48  38 00 00 00 */	li r0, 0
/* 80993F4C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80993F50  48 00 00 18 */	b lbl_80993F68
lbl_80993F54:
/* 80993F54  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80993F58  28 00 00 00 */	cmplwi r0, 0
/* 80993F5C  40 82 00 0C */	bne lbl_80993F68
/* 80993F60  7F E3 FB 78 */	mr r3, r31
/* 80993F64  4B 7B 73 D5 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80993F68:
/* 80993F68  38 60 00 01 */	li r3, 1
/* 80993F6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80993F70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80993F74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80993F78  7C 08 03 A6 */	mtlr r0
/* 80993F7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80993F80  4E 80 00 20 */	blr 
