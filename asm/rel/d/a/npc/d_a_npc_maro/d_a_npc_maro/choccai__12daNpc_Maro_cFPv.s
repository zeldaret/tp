lbl_80562CA4:
/* 80562CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80562CA8  7C 08 02 A6 */	mflr r0
/* 80562CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80562CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80562CB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80562CB8  7C 7F 1B 78 */	mr r31, r3
/* 80562CBC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80562CC0  2C 00 00 02 */	cmpwi r0, 2
/* 80562CC4  41 82 00 80 */	beq lbl_80562D44
/* 80562CC8  40 80 01 E4 */	bge lbl_80562EAC
/* 80562CCC  2C 00 00 00 */	cmpwi r0, 0
/* 80562CD0  40 80 00 0C */	bge lbl_80562CDC
/* 80562CD4  48 00 01 D8 */	b lbl_80562EAC
/* 80562CD8  48 00 01 D4 */	b lbl_80562EAC
lbl_80562CDC:
/* 80562CDC  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80562CE0  2C 00 00 09 */	cmpwi r0, 9
/* 80562CE4  41 82 00 28 */	beq lbl_80562D0C
/* 80562CE8  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80562CEC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80562CF0  4B BE 2B A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562CF4  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80562CF8  38 00 00 09 */	li r0, 9
/* 80562CFC  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80562D00  3C 60 80 56 */	lis r3, lit_5128@ha
/* 80562D04  C0 03 4C CC */	lfs f0, lit_5128@l(r3)
/* 80562D08  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80562D0C:
/* 80562D0C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80562D10  2C 00 00 00 */	cmpwi r0, 0
/* 80562D14  41 82 00 28 */	beq lbl_80562D3C
/* 80562D18  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80562D1C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80562D20  4B BE 2B 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562D24  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80562D28  38 00 00 00 */	li r0, 0
/* 80562D2C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80562D30  3C 60 80 56 */	lis r3, lit_5128@ha
/* 80562D34  C0 03 4C CC */	lfs f0, lit_5128@l(r3)
/* 80562D38  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80562D3C:
/* 80562D3C  38 00 00 02 */	li r0, 2
/* 80562D40  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80562D44:
/* 80562D44  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80562D48  2C 00 00 00 */	cmpwi r0, 0
/* 80562D4C  40 82 01 60 */	bne lbl_80562EAC
/* 80562D50  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80562D54  2C 00 00 00 */	cmpwi r0, 0
/* 80562D58  41 82 00 28 */	beq lbl_80562D80
/* 80562D5C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80562D60  4B BE 29 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80562D64  38 00 00 00 */	li r0, 0
/* 80562D68  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80562D6C  3C 60 80 56 */	lis r3, lit_4318@ha
/* 80562D70  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)
/* 80562D74  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80562D78  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80562D7C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80562D80:
/* 80562D80  38 00 00 00 */	li r0, 0
/* 80562D84  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80562D88  38 7F 10 CC */	addi r3, r31, 0x10cc
/* 80562D8C  4B BE 29 7C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80562D90  7C 64 1B 79 */	or. r4, r3, r3
/* 80562D94  41 82 01 10 */	beq lbl_80562EA4
/* 80562D98  7F E3 FB 78 */	mr r3, r31
/* 80562D9C  4B AB 79 74 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80562DA0  38 03 0A 9E */	addi r0, r3, 0xa9e
/* 80562DA4  7C 04 07 34 */	extsh r4, r0
/* 80562DA8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80562DAC  7C 04 00 00 */	cmpw r4, r0
/* 80562DB0  41 82 00 1C */	beq lbl_80562DCC
/* 80562DB4  7F E3 FB 78 */	mr r3, r31
/* 80562DB8  38 A0 00 09 */	li r5, 9
/* 80562DBC  38 C0 00 07 */	li r6, 7
/* 80562DC0  38 E0 00 0F */	li r7, 0xf
/* 80562DC4  39 00 00 00 */	li r8, 0
/* 80562DC8  4B BE 88 80 */	b step__8daNpcT_cFsiiii
lbl_80562DCC:
/* 80562DCC  80 7F 0B 7C */	lwz r3, 0xb7c(r31)
/* 80562DD0  2C 03 00 05 */	cmpwi r3, 5
/* 80562DD4  41 82 00 0C */	beq lbl_80562DE0
/* 80562DD8  2C 03 00 06 */	cmpwi r3, 6
/* 80562DDC  40 82 00 0C */	bne lbl_80562DE8
lbl_80562DE0:
/* 80562DE0  38 00 00 01 */	li r0, 1
/* 80562DE4  48 00 00 08 */	b lbl_80562DEC
lbl_80562DE8:
/* 80562DE8  38 00 00 00 */	li r0, 0
lbl_80562DEC:
/* 80562DEC  2C 00 00 00 */	cmpwi r0, 0
/* 80562DF0  40 82 00 68 */	bne lbl_80562E58
/* 80562DF4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80562DF8  2C 00 00 02 */	cmpwi r0, 2
/* 80562DFC  41 82 00 28 */	beq lbl_80562E24
/* 80562E00  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80562E04  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80562E08  4B BE 2A 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562E0C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80562E10  38 00 00 02 */	li r0, 2
/* 80562E14  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80562E18  3C 60 80 56 */	lis r3, lit_5128@ha
/* 80562E1C  C0 03 4C CC */	lfs f0, lit_5128@l(r3)
/* 80562E20  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80562E24:
/* 80562E24  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80562E28  2C 00 00 05 */	cmpwi r0, 5
/* 80562E2C  41 82 00 78 */	beq lbl_80562EA4
/* 80562E30  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80562E34  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80562E38  4B BE 2A 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562E3C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80562E40  38 00 00 05 */	li r0, 5
/* 80562E44  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80562E48  3C 60 80 56 */	lis r3, lit_5128@ha
/* 80562E4C  C0 03 4C CC */	lfs f0, lit_5128@l(r3)
/* 80562E50  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80562E54  48 00 00 50 */	b lbl_80562EA4
lbl_80562E58:
/* 80562E58  2C 03 00 05 */	cmpwi r3, 5
/* 80562E5C  41 82 00 0C */	beq lbl_80562E68
/* 80562E60  2C 03 00 06 */	cmpwi r3, 6
/* 80562E64  40 82 00 0C */	bne lbl_80562E70
lbl_80562E68:
/* 80562E68  38 00 00 01 */	li r0, 1
/* 80562E6C  48 00 00 08 */	b lbl_80562E74
lbl_80562E70:
/* 80562E70  38 00 00 00 */	li r0, 0
lbl_80562E74:
/* 80562E74  2C 00 00 01 */	cmpwi r0, 1
/* 80562E78  40 82 00 18 */	bne lbl_80562E90
/* 80562E7C  80 1F 0B 84 */	lwz r0, 0xb84(r31)
/* 80562E80  2C 00 00 00 */	cmpwi r0, 0
/* 80562E84  40 81 00 0C */	ble lbl_80562E90
/* 80562E88  38 00 00 01 */	li r0, 1
/* 80562E8C  48 00 00 08 */	b lbl_80562E94
lbl_80562E90:
/* 80562E90  38 00 00 00 */	li r0, 0
lbl_80562E94:
/* 80562E94  2C 00 00 00 */	cmpwi r0, 0
/* 80562E98  41 82 00 0C */	beq lbl_80562EA4
/* 80562E9C  38 00 00 00 */	li r0, 0
/* 80562EA0  98 1F 11 34 */	stb r0, 0x1134(r31)
lbl_80562EA4:
/* 80562EA4  38 00 00 00 */	li r0, 0
/* 80562EA8  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80562EAC:
/* 80562EAC  38 60 00 01 */	li r3, 1
/* 80562EB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80562EB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80562EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80562EBC  7C 08 03 A6 */	mtlr r0
/* 80562EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80562EC4  4E 80 00 20 */	blr 
