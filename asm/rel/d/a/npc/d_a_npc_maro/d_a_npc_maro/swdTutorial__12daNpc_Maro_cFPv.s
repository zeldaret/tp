lbl_805629A4:
/* 805629A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805629A8  7C 08 02 A6 */	mflr r0
/* 805629AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805629B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805629B4  93 C1 00 08 */	stw r30, 8(r1)
/* 805629B8  7C 7F 1B 78 */	mr r31, r3
/* 805629BC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 805629C0  2C 00 00 02 */	cmpwi r0, 2
/* 805629C4  41 82 00 8C */	beq lbl_80562A50
/* 805629C8  40 80 01 30 */	bge lbl_80562AF8
/* 805629CC  2C 00 00 00 */	cmpwi r0, 0
/* 805629D0  40 80 00 0C */	bge lbl_805629DC
/* 805629D4  48 00 01 24 */	b lbl_80562AF8
/* 805629D8  48 00 01 20 */	b lbl_80562AF8
lbl_805629DC:
/* 805629DC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 805629E0  2C 00 00 00 */	cmpwi r0, 0
/* 805629E4  40 82 00 6C */	bne lbl_80562A50
/* 805629E8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 805629EC  2C 00 00 09 */	cmpwi r0, 9
/* 805629F0  41 82 00 28 */	beq lbl_80562A18
/* 805629F4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 805629F8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 805629FC  4B BE 2E 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562A00  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80562A04  38 00 00 09 */	li r0, 9
/* 80562A08  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80562A0C  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 80562A10  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 80562A14  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80562A18:
/* 80562A18  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80562A1C  2C 00 00 00 */	cmpwi r0, 0
/* 80562A20  41 82 00 28 */	beq lbl_80562A48
/* 80562A24  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80562A28  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80562A2C  4B BE 2E 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80562A30  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80562A34  38 00 00 00 */	li r0, 0
/* 80562A38  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80562A3C  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 80562A40  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 80562A44  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80562A48:
/* 80562A48  38 00 00 02 */	li r0, 2
/* 80562A4C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80562A50:
/* 80562A50  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80562A54  2C 00 00 00 */	cmpwi r0, 0
/* 80562A58  40 82 00 98 */	bne lbl_80562AF0
/* 80562A5C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80562A60  2C 00 00 01 */	cmpwi r0, 1
/* 80562A64  41 82 00 2C */	beq lbl_80562A90
/* 80562A68  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80562A6C  4B BE 2C 91 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80562A70  38 00 00 00 */	li r0, 0
/* 80562A74  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80562A78  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 80562A7C  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 80562A80  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80562A84  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80562A88  38 00 00 01 */	li r0, 1
/* 80562A8C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80562A90:
/* 80562A90  38 00 00 00 */	li r0, 0
/* 80562A94  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80562A98  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80562A9C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80562AA0  7C 04 00 00 */	cmpw r4, r0
/* 80562AA4  41 82 00 4C */	beq lbl_80562AF0
/* 80562AA8  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80562AAC  28 00 00 00 */	cmplwi r0, 0
/* 80562AB0  41 82 00 30 */	beq lbl_80562AE0
/* 80562AB4  7F E3 FB 78 */	mr r3, r31
/* 80562AB8  38 A0 00 09 */	li r5, 9
/* 80562ABC  38 C0 00 07 */	li r6, 7
/* 80562AC0  38 E0 00 0F */	li r7, 0xf
/* 80562AC4  39 00 00 00 */	li r8, 0
/* 80562AC8  4B BE 8B 81 */	bl step__8daNpcT_cFsiiii
/* 80562ACC  2C 03 00 00 */	cmpwi r3, 0
/* 80562AD0  41 82 00 20 */	beq lbl_80562AF0
/* 80562AD4  38 00 00 01 */	li r0, 1
/* 80562AD8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80562ADC  48 00 00 14 */	b lbl_80562AF0
lbl_80562AE0:
/* 80562AE0  7F E3 FB 78 */	mr r3, r31
/* 80562AE4  4B BE 7F 35 */	bl setAngle__8daNpcT_cFs
/* 80562AE8  38 00 00 01 */	li r0, 1
/* 80562AEC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80562AF0:
/* 80562AF0  38 00 00 00 */	li r0, 0
/* 80562AF4  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80562AF8:
/* 80562AF8  38 60 00 01 */	li r3, 1
/* 80562AFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80562B00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80562B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80562B08  7C 08 03 A6 */	mtlr r0
/* 80562B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80562B10  4E 80 00 20 */	blr 
