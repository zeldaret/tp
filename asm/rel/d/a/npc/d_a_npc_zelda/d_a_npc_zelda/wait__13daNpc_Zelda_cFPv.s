lbl_80B76898:
/* 80B76898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7689C  7C 08 02 A6 */	mflr r0
/* 80B768A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B768A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B768A8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B768AC  7C 7F 1B 78 */	mr r31, r3
/* 80B768B0  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B768B4  2C 00 00 02 */	cmpwi r0, 2
/* 80B768B8  41 82 00 FC */	beq lbl_80B769B4
/* 80B768BC  40 80 02 9C */	bge lbl_80B76B58
/* 80B768C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B768C4  40 80 00 0C */	bge lbl_80B768D0
/* 80B768C8  48 00 02 90 */	b lbl_80B76B58
/* 80B768CC  48 00 02 8C */	b lbl_80B76B58
lbl_80B768D0:
/* 80B768D0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B768D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B768D8  40 82 00 DC */	bne lbl_80B769B4
/* 80B768DC  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B768E0  28 00 00 00 */	cmplwi r0, 0
/* 80B768E4  40 82 00 68 */	bne lbl_80B7694C
/* 80B768E8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B768EC  2C 00 00 01 */	cmpwi r0, 1
/* 80B768F0  41 82 00 28 */	beq lbl_80B76918
/* 80B768F4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B768F8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B768FC  4B 5C EF 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B76900  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B76904  38 00 00 01 */	li r0, 1
/* 80B76908  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B7690C  3C 60 80 B8 */	lis r3, lit_4551@ha
/* 80B76910  C0 03 80 84 */	lfs f0, lit_4551@l(r3)
/* 80B76914  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B76918:
/* 80B76918  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B7691C  2C 00 00 01 */	cmpwi r0, 1
/* 80B76920  41 82 00 8C */	beq lbl_80B769AC
/* 80B76924  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B76928  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B7692C  4B 5C EF 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B76930  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B76934  38 00 00 01 */	li r0, 1
/* 80B76938  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B7693C  3C 60 80 B8 */	lis r3, lit_4551@ha
/* 80B76940  C0 03 80 84 */	lfs f0, lit_4551@l(r3)
/* 80B76944  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80B76948  48 00 00 64 */	b lbl_80B769AC
lbl_80B7694C:
/* 80B7694C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B76950  2C 00 00 02 */	cmpwi r0, 2
/* 80B76954  41 82 00 28 */	beq lbl_80B7697C
/* 80B76958  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B7695C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B76960  4B 5C EF 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B76964  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B76968  38 00 00 02 */	li r0, 2
/* 80B7696C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B76970  3C 60 80 B8 */	lis r3, lit_4551@ha
/* 80B76974  C0 03 80 84 */	lfs f0, lit_4551@l(r3)
/* 80B76978  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B7697C:
/* 80B7697C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B76980  2C 00 00 00 */	cmpwi r0, 0
/* 80B76984  41 82 00 28 */	beq lbl_80B769AC
/* 80B76988  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B7698C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B76990  4B 5C EF 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B76994  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B76998  38 00 00 00 */	li r0, 0
/* 80B7699C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B769A0  3C 60 80 B8 */	lis r3, lit_4551@ha
/* 80B769A4  C0 03 80 84 */	lfs f0, lit_4551@l(r3)
/* 80B769A8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B769AC:
/* 80B769AC  38 00 00 02 */	li r0, 2
/* 80B769B0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B769B4:
/* 80B769B4  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B769B8  2C 00 00 00 */	cmpwi r0, 0
/* 80B769BC  40 82 01 9C */	bne lbl_80B76B58
/* 80B769C0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B769C4  28 00 00 00 */	cmplwi r0, 0
/* 80B769C8  40 82 00 0C */	bne lbl_80B769D4
/* 80B769CC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B769D0  4B 5C ED 2C */	b remove__18daNpcT_ActorMngr_cFv
lbl_80B769D4:
/* 80B769D4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B769D8  4B 5C ED 30 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B769DC  28 03 00 00 */	cmplwi r3, 0
/* 80B769E0  41 82 00 D4 */	beq lbl_80B76AB4
/* 80B769E4  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80B769E8  28 00 00 00 */	cmplwi r0, 0
/* 80B769EC  40 82 00 C8 */	bne lbl_80B76AB4
/* 80B769F0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B769F4  2C 00 00 01 */	cmpwi r0, 1
/* 80B769F8  41 82 00 2C */	beq lbl_80B76A24
/* 80B769FC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B76A00  4B 5C EC FC */	b remove__18daNpcT_ActorMngr_cFv
/* 80B76A04  38 00 00 00 */	li r0, 0
/* 80B76A08  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B76A0C  3C 60 80 B8 */	lis r3, lit_4190@ha
/* 80B76A10  C0 03 80 70 */	lfs f0, lit_4190@l(r3)
/* 80B76A14  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B76A18  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76A1C  38 00 00 01 */	li r0, 1
/* 80B76A20  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B76A24:
/* 80B76A24  38 00 00 00 */	li r0, 0
/* 80B76A28  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76A2C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B76A30  4B 5C EC D8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B76A34  7C 64 1B 78 */	mr r4, r3
/* 80B76A38  7F E3 FB 78 */	mr r3, r31
/* 80B76A3C  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80B76A40  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80B76A44  4B 5D 41 8C */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B76A48  2C 03 00 00 */	cmpwi r3, 0
/* 80B76A4C  40 82 00 3C */	bne lbl_80B76A88
/* 80B76A50  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B76A54  2C 00 00 00 */	cmpwi r0, 0
/* 80B76A58  41 82 00 28 */	beq lbl_80B76A80
/* 80B76A5C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B76A60  4B 5C EC 9C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B76A64  38 00 00 00 */	li r0, 0
/* 80B76A68  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B76A6C  3C 60 80 B8 */	lis r3, lit_4190@ha
/* 80B76A70  C0 03 80 70 */	lfs f0, lit_4190@l(r3)
/* 80B76A74  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B76A78  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76A7C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B76A80:
/* 80B76A80  38 00 00 00 */	li r0, 0
/* 80B76A84  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B76A88:
/* 80B76A88  7F E3 FB 78 */	mr r3, r31
/* 80B76A8C  4B 5D 48 AC */	b srchPlayerActor__8daNpcT_cFv
/* 80B76A90  2C 03 00 00 */	cmpwi r3, 0
/* 80B76A94  40 82 00 C4 */	bne lbl_80B76B58
/* 80B76A98  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80B76A9C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B76AA0  7C 03 00 00 */	cmpw r3, r0
/* 80B76AA4  40 82 00 B4 */	bne lbl_80B76B58
/* 80B76AA8  38 00 00 01 */	li r0, 1
/* 80B76AAC  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80B76AB0  48 00 00 A8 */	b lbl_80B76B58
lbl_80B76AB4:
/* 80B76AB4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B76AB8  2C 00 00 00 */	cmpwi r0, 0
/* 80B76ABC  41 82 00 28 */	beq lbl_80B76AE4
/* 80B76AC0  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B76AC4  4B 5C EC 38 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B76AC8  38 00 00 00 */	li r0, 0
/* 80B76ACC  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B76AD0  3C 60 80 B8 */	lis r3, lit_4190@ha
/* 80B76AD4  C0 03 80 70 */	lfs f0, lit_4190@l(r3)
/* 80B76AD8  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B76ADC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76AE0  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B76AE4:
/* 80B76AE4  38 00 00 00 */	li r0, 0
/* 80B76AE8  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B76AEC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B76AF0  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B76AF4  7C 04 00 00 */	cmpw r4, r0
/* 80B76AF8  41 82 00 58 */	beq lbl_80B76B50
/* 80B76AFC  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80B76B00  28 00 00 00 */	cmplwi r0, 0
/* 80B76B04  41 82 00 30 */	beq lbl_80B76B34
/* 80B76B08  7F E3 FB 78 */	mr r3, r31
/* 80B76B0C  38 A0 FF FF */	li r5, -1
/* 80B76B10  38 C0 FF FF */	li r6, -1
/* 80B76B14  38 E0 00 0F */	li r7, 0xf
/* 80B76B18  39 00 00 00 */	li r8, 0
/* 80B76B1C  4B 5D 4B 2C */	b step__8daNpcT_cFsiiii
/* 80B76B20  2C 03 00 00 */	cmpwi r3, 0
/* 80B76B24  41 82 00 20 */	beq lbl_80B76B44
/* 80B76B28  38 00 00 01 */	li r0, 1
/* 80B76B2C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80B76B30  48 00 00 14 */	b lbl_80B76B44
lbl_80B76B34:
/* 80B76B34  7F E3 FB 78 */	mr r3, r31
/* 80B76B38  4B 5D 3E E0 */	b setAngle__8daNpcT_cFs
/* 80B76B3C  38 00 00 01 */	li r0, 1
/* 80B76B40  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B76B44:
/* 80B76B44  38 00 00 00 */	li r0, 0
/* 80B76B48  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B76B4C  48 00 00 0C */	b lbl_80B76B58
lbl_80B76B50:
/* 80B76B50  7F E3 FB 78 */	mr r3, r31
/* 80B76B54  4B 5D 47 E4 */	b srchPlayerActor__8daNpcT_cFv
lbl_80B76B58:
/* 80B76B58  38 60 00 01 */	li r3, 1
/* 80B76B5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B76B60  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B76B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B76B68  7C 08 03 A6 */	mtlr r0
/* 80B76B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B76B70  4E 80 00 20 */	blr 
