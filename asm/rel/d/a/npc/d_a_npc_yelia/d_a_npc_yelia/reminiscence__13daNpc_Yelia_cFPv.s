lbl_80B50A0C:
/* 80B50A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B50A10  7C 08 02 A6 */	mflr r0
/* 80B50A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B50A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B50A1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B50A20  7C 7F 1B 78 */	mr r31, r3
/* 80B50A24  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B50A28  2C 00 00 02 */	cmpwi r0, 2
/* 80B50A2C  41 82 00 80 */	beq lbl_80B50AAC
/* 80B50A30  40 80 01 14 */	bge lbl_80B50B44
/* 80B50A34  2C 00 00 00 */	cmpwi r0, 0
/* 80B50A38  40 80 00 0C */	bge lbl_80B50A44
/* 80B50A3C  48 00 01 08 */	b lbl_80B50B44
/* 80B50A40  48 00 01 04 */	b lbl_80B50B44
lbl_80B50A44:
/* 80B50A44  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B50A48  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B50A4C  41 82 00 28 */	beq lbl_80B50A74
/* 80B50A50  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B50A54  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B50A58  4B 5F 4E 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50A5C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B50A60  38 00 00 10 */	li r0, 0x10
/* 80B50A64  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B50A68  3C 60 80 B5 */	lis r3, lit_4778@ha
/* 80B50A6C  C0 03 23 94 */	lfs f0, lit_4778@l(r3)
/* 80B50A70  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B50A74:
/* 80B50A74  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B50A78  2C 00 00 03 */	cmpwi r0, 3
/* 80B50A7C  41 82 00 28 */	beq lbl_80B50AA4
/* 80B50A80  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B50A84  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B50A88  4B 5F 4E 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B50A8C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B50A90  38 00 00 03 */	li r0, 3
/* 80B50A94  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B50A98  3C 60 80 B5 */	lis r3, lit_4778@ha
/* 80B50A9C  C0 03 23 94 */	lfs f0, lit_4778@l(r3)
/* 80B50AA0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B50AA4:
/* 80B50AA4  38 00 00 02 */	li r0, 2
/* 80B50AA8  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B50AAC:
/* 80B50AAC  38 00 00 00 */	li r0, 0
/* 80B50AB0  98 1F 0E 2D */	stb r0, 0xe2d(r31)
/* 80B50AB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B50AB8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80B50ABC  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80B50AC0  28 00 00 00 */	cmplwi r0, 0
/* 80B50AC4  41 82 00 3C */	beq lbl_80B50B00
/* 80B50AC8  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80B50ACC  4B 4F 79 1C */	b getRunEventName__16dEvent_manager_cFv
/* 80B50AD0  7C 64 1B 78 */	mr r4, r3
/* 80B50AD4  3C 60 80 B5 */	lis r3, struct_80B52408+0x0@ha
/* 80B50AD8  38 63 24 08 */	addi r3, r3, struct_80B52408+0x0@l
/* 80B50ADC  38 63 00 C8 */	addi r3, r3, 0xc8
/* 80B50AE0  4B 81 7E B4 */	b strcmp
/* 80B50AE4  2C 03 00 00 */	cmpwi r3, 0
/* 80B50AE8  40 82 00 18 */	bne lbl_80B50B00
/* 80B50AEC  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80B50AF0  7F E4 FB 78 */	mr r4, r31
/* 80B50AF4  4B 4F 2B 98 */	b setPtT__14dEvt_control_cFPv
/* 80B50AF8  38 00 00 01 */	li r0, 1
/* 80B50AFC  98 1F 0E 2D */	stb r0, 0xe2d(r31)
lbl_80B50B00:
/* 80B50B00  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B50B04  2C 00 00 00 */	cmpwi r0, 0
/* 80B50B08  40 82 00 3C */	bne lbl_80B50B44
/* 80B50B0C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B50B10  2C 00 00 00 */	cmpwi r0, 0
/* 80B50B14  41 82 00 28 */	beq lbl_80B50B3C
/* 80B50B18  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B50B1C  4B 5F 4B E0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B50B20  38 00 00 00 */	li r0, 0
/* 80B50B24  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B50B28  3C 60 80 B5 */	lis r3, lit_4330@ha
/* 80B50B2C  C0 03 23 7C */	lfs f0, lit_4330@l(r3)
/* 80B50B30  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B50B34  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B50B38  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B50B3C:
/* 80B50B3C  38 00 00 00 */	li r0, 0
/* 80B50B40  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B50B44:
/* 80B50B44  38 60 00 01 */	li r3, 1
/* 80B50B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B50B4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B50B50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B50B54  7C 08 03 A6 */	mtlr r0
/* 80B50B58  38 21 00 10 */	addi r1, r1, 0x10
/* 80B50B5C  4E 80 00 20 */	blr 
