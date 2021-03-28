lbl_80AD2D8C:
/* 80AD2D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD2D90  7C 08 02 A6 */	mflr r0
/* 80AD2D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD2D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD2D9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD2DA0  7C 7F 1B 78 */	mr r31, r3
/* 80AD2DA4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AD2DA8  2C 00 00 02 */	cmpwi r0, 2
/* 80AD2DAC  41 82 01 34 */	beq lbl_80AD2EE0
/* 80AD2DB0  40 80 01 48 */	bge lbl_80AD2EF8
/* 80AD2DB4  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2DB8  40 80 00 0C */	bge lbl_80AD2DC4
/* 80AD2DBC  48 00 01 3C */	b lbl_80AD2EF8
/* 80AD2DC0  48 00 01 38 */	b lbl_80AD2EF8
lbl_80AD2DC4:
/* 80AD2DC4  38 60 00 A5 */	li r3, 0xa5
/* 80AD2DC8  4B 67 9C E4 */	b daNpcT_chkEvtBit__FUl
/* 80AD2DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2DD0  41 82 00 70 */	beq lbl_80AD2E40
/* 80AD2DD4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AD2DD8  2C 00 00 06 */	cmpwi r0, 6
/* 80AD2DDC  41 82 00 28 */	beq lbl_80AD2E04
/* 80AD2DE0  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AD2DE4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD2DE8  4B 67 2A B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2DEC  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AD2DF0  38 00 00 06 */	li r0, 6
/* 80AD2DF4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AD2DF8  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2DFC  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2E00  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AD2E04:
/* 80AD2E04  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD2E08  2C 00 00 05 */	cmpwi r0, 5
/* 80AD2E0C  41 82 00 28 */	beq lbl_80AD2E34
/* 80AD2E10  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AD2E14  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD2E18  4B 67 2A 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2E1C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AD2E20  38 00 00 05 */	li r0, 5
/* 80AD2E24  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AD2E28  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2E2C  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2E30  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AD2E34:
/* 80AD2E34  38 00 00 00 */	li r0, 0
/* 80AD2E38  98 1F 10 C0 */	stb r0, 0x10c0(r31)
/* 80AD2E3C  48 00 00 64 */	b lbl_80AD2EA0
lbl_80AD2E40:
/* 80AD2E40  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AD2E44  2C 00 00 06 */	cmpwi r0, 6
/* 80AD2E48  41 82 00 28 */	beq lbl_80AD2E70
/* 80AD2E4C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AD2E50  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD2E54  4B 67 2A 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2E58  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AD2E5C  38 00 00 06 */	li r0, 6
/* 80AD2E60  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AD2E64  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2E68  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2E6C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AD2E70:
/* 80AD2E70  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD2E74  2C 00 00 07 */	cmpwi r0, 7
/* 80AD2E78  41 82 00 28 */	beq lbl_80AD2EA0
/* 80AD2E7C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AD2E80  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD2E84  4B 67 2A 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2E88  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AD2E8C  38 00 00 07 */	li r0, 7
/* 80AD2E90  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AD2E94  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2E98  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2E9C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AD2EA0:
/* 80AD2EA0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD2EA4  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2EA8  41 82 00 28 */	beq lbl_80AD2ED0
/* 80AD2EAC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD2EB0  4B 67 28 4C */	b remove__18daNpcT_ActorMngr_cFv
/* 80AD2EB4  38 00 00 00 */	li r0, 0
/* 80AD2EB8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD2EBC  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD2EC0  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD2EC4  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD2EC8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD2ECC  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AD2ED0:
/* 80AD2ED0  38 00 00 00 */	li r0, 0
/* 80AD2ED4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD2ED8  38 00 00 02 */	li r0, 2
/* 80AD2EDC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD2EE0:
/* 80AD2EE0  80 1F 10 E8 */	lwz r0, 0x10e8(r31)
/* 80AD2EE4  2C 00 00 02 */	cmpwi r0, 2
/* 80AD2EE8  40 82 00 10 */	bne lbl_80AD2EF8
/* 80AD2EEC  38 00 00 01 */	li r0, 1
/* 80AD2EF0  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80AD2EF4  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80AD2EF8:
/* 80AD2EF8  38 60 00 01 */	li r3, 1
/* 80AD2EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD2F00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD2F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD2F08  7C 08 03 A6 */	mtlr r0
/* 80AD2F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD2F10  4E 80 00 20 */	blr 
