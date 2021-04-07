lbl_80997E54:
/* 80997E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80997E58  7C 08 02 A6 */	mflr r0
/* 80997E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80997E60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80997E64  93 C1 00 08 */	stw r30, 8(r1)
/* 80997E68  7C 7F 1B 78 */	mr r31, r3
/* 80997E6C  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80997E70  2C 00 00 02 */	cmpwi r0, 2
/* 80997E74  41 82 00 8C */	beq lbl_80997F00
/* 80997E78  40 80 02 18 */	bge lbl_80998090
/* 80997E7C  2C 00 00 00 */	cmpwi r0, 0
/* 80997E80  40 80 00 0C */	bge lbl_80997E8C
/* 80997E84  48 00 02 0C */	b lbl_80998090
/* 80997E88  48 00 02 08 */	b lbl_80998090
lbl_80997E8C:
/* 80997E8C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80997E90  2C 00 00 00 */	cmpwi r0, 0
/* 80997E94  40 82 00 6C */	bne lbl_80997F00
/* 80997E98  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80997E9C  2C 00 00 08 */	cmpwi r0, 8
/* 80997EA0  41 82 00 28 */	beq lbl_80997EC8
/* 80997EA4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80997EA8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80997EAC  4B 7A D9 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80997EB0  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80997EB4  38 00 00 08 */	li r0, 8
/* 80997EB8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80997EBC  3C 60 80 9A */	lis r3, lit_4683@ha /* 0x80999A44@ha */
/* 80997EC0  C0 03 9A 44 */	lfs f0, lit_4683@l(r3)  /* 0x80999A44@l */
/* 80997EC4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80997EC8:
/* 80997EC8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80997ECC  2C 00 00 00 */	cmpwi r0, 0
/* 80997ED0  41 82 00 28 */	beq lbl_80997EF8
/* 80997ED4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80997ED8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80997EDC  4B 7A D9 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80997EE0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80997EE4  38 00 00 00 */	li r0, 0
/* 80997EE8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80997EEC  3C 60 80 9A */	lis r3, lit_4683@ha /* 0x80999A44@ha */
/* 80997EF0  C0 03 9A 44 */	lfs f0, lit_4683@l(r3)  /* 0x80999A44@l */
/* 80997EF4  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80997EF8:
/* 80997EF8  38 00 00 02 */	li r0, 2
/* 80997EFC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80997F00:
/* 80997F00  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80997F04  2C 00 00 00 */	cmpwi r0, 0
/* 80997F08  40 82 01 88 */	bne lbl_80998090
/* 80997F0C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80997F10  4B 7A D7 F9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80997F14  28 03 00 00 */	cmplwi r3, 0
/* 80997F18  41 82 00 C8 */	beq lbl_80997FE0
/* 80997F1C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80997F20  2C 00 00 00 */	cmpwi r0, 0
/* 80997F24  41 82 00 28 */	beq lbl_80997F4C
/* 80997F28  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80997F2C  4B 7A D7 D1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80997F30  38 00 00 00 */	li r0, 0
/* 80997F34  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80997F38  3C 60 80 9A */	lis r3, lit_4152@ha /* 0x80999A2C@ha */
/* 80997F3C  C0 03 9A 2C */	lfs f0, lit_4152@l(r3)  /* 0x80999A2C@l */
/* 80997F40  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80997F44  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80997F48  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80997F4C:
/* 80997F4C  38 00 00 00 */	li r0, 0
/* 80997F50  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80997F54  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80997F58  4B 7A D7 B1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80997F5C  7C 64 1B 78 */	mr r4, r3
/* 80997F60  7F E3 FB 78 */	mr r3, r31
/* 80997F64  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80997F68  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80997F6C  4B 7B 2C 65 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80997F70  2C 03 00 00 */	cmpwi r3, 0
/* 80997F74  41 82 00 40 */	beq lbl_80997FB4
/* 80997F78  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80997F7C  2C 00 00 01 */	cmpwi r0, 1
/* 80997F80  41 82 00 2C */	beq lbl_80997FAC
/* 80997F84  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80997F88  4B 7A D7 75 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80997F8C  38 00 00 00 */	li r0, 0
/* 80997F90  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80997F94  3C 60 80 9A */	lis r3, lit_4152@ha /* 0x80999A2C@ha */
/* 80997F98  C0 03 9A 2C */	lfs f0, lit_4152@l(r3)  /* 0x80999A2C@l */
/* 80997F9C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80997FA0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80997FA4  38 00 00 01 */	li r0, 1
/* 80997FA8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80997FAC:
/* 80997FAC  38 00 00 00 */	li r0, 0
/* 80997FB0  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80997FB4:
/* 80997FB4  7F E3 FB 78 */	mr r3, r31
/* 80997FB8  4B 7B 33 81 */	bl srchPlayerActor__8daNpcT_cFv
/* 80997FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80997FC0  40 82 00 D0 */	bne lbl_80998090
/* 80997FC4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80997FC8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80997FCC  7C 03 00 00 */	cmpw r3, r0
/* 80997FD0  40 82 00 C0 */	bne lbl_80998090
/* 80997FD4  38 00 00 01 */	li r0, 1
/* 80997FD8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80997FDC  48 00 00 B4 */	b lbl_80998090
lbl_80997FE0:
/* 80997FE0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80997FE4  2C 00 00 00 */	cmpwi r0, 0
/* 80997FE8  41 82 00 28 */	beq lbl_80998010
/* 80997FEC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80997FF0  4B 7A D7 0D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80997FF4  38 00 00 00 */	li r0, 0
/* 80997FF8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80997FFC  3C 60 80 9A */	lis r3, lit_4152@ha /* 0x80999A2C@ha */
/* 80998000  C0 03 9A 2C */	lfs f0, lit_4152@l(r3)  /* 0x80999A2C@l */
/* 80998004  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80998008  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8099800C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80998010:
/* 80998010  38 00 00 00 */	li r0, 0
/* 80998014  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80998018  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8099801C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80998020  7C 04 00 00 */	cmpw r4, r0
/* 80998024  41 82 00 58 */	beq lbl_8099807C
/* 80998028  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 8099802C  28 00 00 00 */	cmplwi r0, 0
/* 80998030  40 82 00 18 */	bne lbl_80998048
/* 80998034  7F E3 FB 78 */	mr r3, r31
/* 80998038  4B 7B 29 E1 */	bl setAngle__8daNpcT_cFs
/* 8099803C  38 00 00 01 */	li r0, 1
/* 80998040  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80998044  48 00 00 2C */	b lbl_80998070
lbl_80998048:
/* 80998048  7F E3 FB 78 */	mr r3, r31
/* 8099804C  38 A0 FF FF */	li r5, -1
/* 80998050  38 C0 FF FF */	li r6, -1
/* 80998054  38 E0 00 0F */	li r7, 0xf
/* 80998058  39 00 00 00 */	li r8, 0
/* 8099805C  4B 7B 35 ED */	bl step__8daNpcT_cFsiiii
/* 80998060  2C 03 00 00 */	cmpwi r3, 0
/* 80998064  41 82 00 0C */	beq lbl_80998070
/* 80998068  38 00 00 01 */	li r0, 1
/* 8099806C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80998070:
/* 80998070  38 00 00 00 */	li r0, 0
/* 80998074  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80998078  48 00 00 18 */	b lbl_80998090
lbl_8099807C:
/* 8099807C  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80998080  28 00 00 00 */	cmplwi r0, 0
/* 80998084  40 82 00 0C */	bne lbl_80998090
/* 80998088  7F E3 FB 78 */	mr r3, r31
/* 8099808C  4B 7B 32 AD */	bl srchPlayerActor__8daNpcT_cFv
lbl_80998090:
/* 80998090  38 60 00 01 */	li r3, 1
/* 80998094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80998098  83 C1 00 08 */	lwz r30, 8(r1)
/* 8099809C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809980A0  7C 08 03 A6 */	mtlr r0
/* 809980A4  38 21 00 10 */	addi r1, r1, 0x10
/* 809980A8  4E 80 00 20 */	blr 
