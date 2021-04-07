lbl_80A94D40:
/* 80A94D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A94D44  7C 08 02 A6 */	mflr r0
/* 80A94D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A94D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A94D50  93 C1 00 08 */	stw r30, 8(r1)
/* 80A94D54  7C 7E 1B 78 */	mr r30, r3
/* 80A94D58  80 04 00 00 */	lwz r0, 0(r4)
/* 80A94D5C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A94D60  41 82 00 BC */	beq lbl_80A94E1C
/* 80A94D64  40 80 00 10 */	bge lbl_80A94D74
/* 80A94D68  2C 00 00 05 */	cmpwi r0, 5
/* 80A94D6C  41 82 00 14 */	beq lbl_80A94D80
/* 80A94D70  48 00 00 AC */	b lbl_80A94E1C
lbl_80A94D74:
/* 80A94D74  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A94D78  41 82 00 44 */	beq lbl_80A94DBC
/* 80A94D7C  48 00 00 A0 */	b lbl_80A94E1C
lbl_80A94D80:
/* 80A94D80  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A94D84  2C 00 00 00 */	cmpwi r0, 0
/* 80A94D88  41 82 00 28 */	beq lbl_80A94DB0
/* 80A94D8C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A94D90  4B 6B 09 6D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A94D94  38 00 00 00 */	li r0, 0
/* 80A94D98  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A94D9C  3C 60 80 A9 */	lis r3, lit_4347@ha /* 0x80A96B0C@ha */
/* 80A94DA0  C0 03 6B 0C */	lfs f0, lit_4347@l(r3)  /* 0x80A96B0C@l */
/* 80A94DA4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A94DA8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A94DAC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A94DB0:
/* 80A94DB0  38 00 00 00 */	li r0, 0
/* 80A94DB4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A94DB8  48 00 00 64 */	b lbl_80A94E1C
lbl_80A94DBC:
/* 80A94DBC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A94DC0  2C 00 00 03 */	cmpwi r0, 3
/* 80A94DC4  41 82 00 28 */	beq lbl_80A94DEC
/* 80A94DC8  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 80A94DCC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A94DD0  4B 6B 0A C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A94DD4  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 80A94DD8  38 00 00 03 */	li r0, 3
/* 80A94DDC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A94DE0  3C 60 80 A9 */	lis r3, lit_4732@ha /* 0x80A96B20@ha */
/* 80A94DE4  C0 03 6B 20 */	lfs f0, lit_4732@l(r3)  /* 0x80A96B20@l */
/* 80A94DE8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A94DEC:
/* 80A94DEC  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A94DF0  2C 00 00 02 */	cmpwi r0, 2
/* 80A94DF4  41 82 00 28 */	beq lbl_80A94E1C
/* 80A94DF8  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80A94DFC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A94E00  4B 6B 0A 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A94E04  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80A94E08  38 00 00 02 */	li r0, 2
/* 80A94E0C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A94E10  3C 60 80 A9 */	lis r3, lit_4732@ha /* 0x80A96B20@ha */
/* 80A94E14  C0 03 6B 20 */	lfs f0, lit_4732@l(r3)  /* 0x80A96B20@l */
/* 80A94E18  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A94E1C:
/* 80A94E1C  38 60 00 01 */	li r3, 1
/* 80A94E20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A94E24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A94E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A94E2C  7C 08 03 A6 */	mtlr r0
/* 80A94E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80A94E34  4E 80 00 20 */	blr 
