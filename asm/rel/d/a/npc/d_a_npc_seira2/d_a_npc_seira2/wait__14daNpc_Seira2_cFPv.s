lbl_80AD29BC:
/* 80AD29BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD29C0  7C 08 02 A6 */	mflr r0
/* 80AD29C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD29C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD29CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD29D0  7C 7F 1B 78 */	mr r31, r3
/* 80AD29D4  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AD29D8  2C 00 00 02 */	cmpwi r0, 2
/* 80AD29DC  41 82 00 80 */	beq lbl_80AD2A5C
/* 80AD29E0  40 80 01 6C */	bge lbl_80AD2B4C
/* 80AD29E4  2C 00 00 00 */	cmpwi r0, 0
/* 80AD29E8  40 80 00 0C */	bge lbl_80AD29F4
/* 80AD29EC  48 00 01 60 */	b lbl_80AD2B4C
/* 80AD29F0  48 00 01 5C */	b lbl_80AD2B4C
lbl_80AD29F4:
/* 80AD29F4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AD29F8  2C 00 00 0D */	cmpwi r0, 0xd
/* 80AD29FC  41 82 00 28 */	beq lbl_80AD2A24
/* 80AD2A00  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AD2A04  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD2A08  4B 67 2E 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2A0C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AD2A10  38 00 00 0D */	li r0, 0xd
/* 80AD2A14  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AD2A18  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2A1C  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2A20  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AD2A24:
/* 80AD2A24  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD2A28  2C 00 00 0D */	cmpwi r0, 0xd
/* 80AD2A2C  41 82 00 28 */	beq lbl_80AD2A54
/* 80AD2A30  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AD2A34  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD2A38  4B 67 2E 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2A3C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AD2A40  38 00 00 0D */	li r0, 0xd
/* 80AD2A44  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AD2A48  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2A4C  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2A50  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AD2A54:
/* 80AD2A54  38 00 00 02 */	li r0, 2
/* 80AD2A58  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD2A5C:
/* 80AD2A5C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AD2A60  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2A64  40 82 00 E8 */	bne lbl_80AD2B4C
/* 80AD2A68  7F E3 FB 78 */	mr r3, r31
/* 80AD2A6C  4B 67 88 CC */	b srchPlayerActor__8daNpcT_cFv
/* 80AD2A70  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2A74  41 82 00 54 */	beq lbl_80AD2AC8
/* 80AD2A78  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD2A7C  2C 00 00 01 */	cmpwi r0, 1
/* 80AD2A80  41 82 00 2C */	beq lbl_80AD2AAC
/* 80AD2A84  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD2A88  4B 67 2C 74 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AD2A8C  38 00 00 00 */	li r0, 0
/* 80AD2A90  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD2A94  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD2A98  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD2A9C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD2AA0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD2AA4  38 00 00 01 */	li r0, 1
/* 80AD2AA8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AD2AAC:
/* 80AD2AAC  38 00 00 00 */	li r0, 0
/* 80AD2AB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD2AB4  A8 1F 0D D8 */	lha r0, 0xdd8(r31)
/* 80AD2AB8  20 00 00 01 */	subfic r0, r0, 1
/* 80AD2ABC  7C 00 00 34 */	cntlzw r0, r0
/* 80AD2AC0  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 80AD2AC4  48 00 00 54 */	b lbl_80AD2B18
lbl_80AD2AC8:
/* 80AD2AC8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD2ACC  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2AD0  41 82 00 28 */	beq lbl_80AD2AF8
/* 80AD2AD4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD2AD8  4B 67 2C 24 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AD2ADC  38 00 00 00 */	li r0, 0
/* 80AD2AE0  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD2AE4  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD2AE8  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD2AEC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD2AF0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD2AF4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AD2AF8:
/* 80AD2AF8  38 00 00 00 */	li r0, 0
/* 80AD2AFC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD2B00  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80AD2B04  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AD2B08  7C 63 00 50 */	subf r3, r3, r0
/* 80AD2B0C  30 03 FF FF */	addic r0, r3, -1
/* 80AD2B10  7C 00 19 10 */	subfe r0, r0, r3
/* 80AD2B14  54 00 06 3E */	clrlwi r0, r0, 0x18
lbl_80AD2B18:
/* 80AD2B18  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2B1C  41 82 00 30 */	beq lbl_80AD2B4C
/* 80AD2B20  7F E3 FB 78 */	mr r3, r31
/* 80AD2B24  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AD2B28  38 A0 FF FF */	li r5, -1
/* 80AD2B2C  38 C0 FF FF */	li r6, -1
/* 80AD2B30  38 E0 00 0F */	li r7, 0xf
/* 80AD2B34  39 00 00 00 */	li r8, 0
/* 80AD2B38  4B 67 8B 10 */	b step__8daNpcT_cFsiiii
/* 80AD2B3C  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2B40  41 82 00 0C */	beq lbl_80AD2B4C
/* 80AD2B44  38 00 00 01 */	li r0, 1
/* 80AD2B48  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD2B4C:
/* 80AD2B4C  38 60 00 01 */	li r3, 1
/* 80AD2B50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD2B54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD2B58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD2B5C  7C 08 03 A6 */	mtlr r0
/* 80AD2B60  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD2B64  4E 80 00 20 */	blr 
