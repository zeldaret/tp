lbl_80556DB4:
/* 80556DB4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80556DB8  7C 08 02 A6 */	mflr r0
/* 80556DBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80556DC0  39 61 00 50 */	addi r11, r1, 0x50
/* 80556DC4  4B E0 B4 0C */	b _savegpr_26
/* 80556DC8  7C 7C 1B 78 */	mr r28, r3
/* 80556DCC  7C 9A 23 78 */	mr r26, r4
/* 80556DD0  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha
/* 80556DD4  3B E3 A5 B4 */	addi r31, r3, m__19daNpc_Kolin_Param_c@l
/* 80556DD8  3B C0 00 00 */	li r30, 0
/* 80556DDC  3B A0 FF FF */	li r29, -1
/* 80556DE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80556DE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80556DE8  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80556DEC  7F 63 DB 78 */	mr r3, r27
/* 80556DF0  3C A0 80 56 */	lis r5, struct_8055A77C+0x0@ha
/* 80556DF4  38 A5 A7 7C */	addi r5, r5, struct_8055A77C+0x0@l
/* 80556DF8  38 A5 01 39 */	addi r5, r5, 0x139
/* 80556DFC  38 C0 00 03 */	li r6, 3
/* 80556E00  4B AF 12 EC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80556E04  28 03 00 00 */	cmplwi r3, 0
/* 80556E08  41 82 00 08 */	beq lbl_80556E10
/* 80556E0C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80556E10:
/* 80556E10  7F 63 DB 78 */	mr r3, r27
/* 80556E14  7F 44 D3 78 */	mr r4, r26
/* 80556E18  4B AF 0F 34 */	b getIsAddvance__16dEvent_manager_cFi
/* 80556E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80556E20  41 82 01 E0 */	beq lbl_80557000
/* 80556E24  2C 1D 00 01 */	cmpwi r29, 1
/* 80556E28  41 82 00 18 */	beq lbl_80556E40
/* 80556E2C  40 80 00 08 */	bge lbl_80556E34
/* 80556E30  48 00 01 D0 */	b lbl_80557000
lbl_80556E34:
/* 80556E34  2C 1D 00 03 */	cmpwi r29, 3
/* 80556E38  40 80 01 C8 */	bge lbl_80557000
/* 80556E3C  48 00 00 F0 */	b lbl_80556F2C
lbl_80556E40:
/* 80556E40  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80556E44  2C 00 00 0D */	cmpwi r0, 0xd
/* 80556E48  41 82 00 24 */	beq lbl_80556E6C
/* 80556E4C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80556E50  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80556E54  4B BE EA 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80556E58  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80556E5C  38 00 00 0D */	li r0, 0xd
/* 80556E60  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80556E64  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556E68  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80556E6C:
/* 80556E6C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80556E70  2C 00 00 02 */	cmpwi r0, 2
/* 80556E74  41 82 00 24 */	beq lbl_80556E98
/* 80556E78  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80556E7C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80556E80  4B BE EA 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80556E84  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80556E88  38 00 00 02 */	li r0, 2
/* 80556E8C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80556E90  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556E94  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80556E98:
/* 80556E98  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80556E9C  2C 00 00 00 */	cmpwi r0, 0
/* 80556EA0  41 82 00 24 */	beq lbl_80556EC4
/* 80556EA4  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80556EA8  4B BE E8 54 */	b remove__18daNpcT_ActorMngr_cFv
/* 80556EAC  38 00 00 00 */	li r0, 0
/* 80556EB0  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80556EB4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556EB8  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80556EBC  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80556EC0  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80556EC4:
/* 80556EC4  38 00 00 00 */	li r0, 0
/* 80556EC8  B0 1C 0C D4 */	sth r0, 0xcd4(r28)
/* 80556ECC  B0 1C 0C D6 */	sth r0, 0xcd6(r28)
/* 80556ED0  38 00 00 01 */	li r0, 1
/* 80556ED4  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80556ED8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556EDC  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80556EE0  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80556EE4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80556EE8  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80556EEC  C0 5F 01 74 */	lfs f2, 0x174(r31)
/* 80556EF0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80556EF4  C0 3F 01 78 */	lfs f1, 0x178(r31)
/* 80556EF8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80556EFC  C0 1F 01 7C */	lfs f0, 0x17c(r31)
/* 80556F00  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80556F04  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80556F08  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80556F0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80556F10  7F 83 E3 78 */	mr r3, r28
/* 80556F14  38 81 00 14 */	addi r4, r1, 0x14
/* 80556F18  4B BF 39 F0 */	b setPos__8daNpcT_cF4cXyz
/* 80556F1C  7F 83 E3 78 */	mr r3, r28
/* 80556F20  38 80 A3 8F */	li r4, -23665
/* 80556F24  4B BF 3A F4 */	b setAngle__8daNpcT_cFs
/* 80556F28  48 00 00 D8 */	b lbl_80557000
lbl_80556F2C:
/* 80556F2C  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80556F30  2C 00 00 0D */	cmpwi r0, 0xd
/* 80556F34  41 82 00 24 */	beq lbl_80556F58
/* 80556F38  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80556F3C  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80556F40  4B BE E9 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80556F44  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80556F48  38 00 00 0D */	li r0, 0xd
/* 80556F4C  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80556F50  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556F54  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80556F58:
/* 80556F58  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80556F5C  2C 00 00 02 */	cmpwi r0, 2
/* 80556F60  41 82 00 24 */	beq lbl_80556F84
/* 80556F64  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80556F68  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80556F6C  4B BE E9 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80556F70  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80556F74  38 00 00 02 */	li r0, 2
/* 80556F78  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80556F7C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556F80  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80556F84:
/* 80556F84  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80556F88  2C 00 00 00 */	cmpwi r0, 0
/* 80556F8C  41 82 00 24 */	beq lbl_80556FB0
/* 80556F90  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80556F94  4B BE E7 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 80556F98  38 00 00 00 */	li r0, 0
/* 80556F9C  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80556FA0  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80556FA4  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80556FA8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80556FAC  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80556FB0:
/* 80556FB0  38 00 00 00 */	li r0, 0
/* 80556FB4  B0 1C 0C D4 */	sth r0, 0xcd4(r28)
/* 80556FB8  B0 1C 0C D6 */	sth r0, 0xcd6(r28)
/* 80556FBC  38 00 00 01 */	li r0, 1
/* 80556FC0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80556FC4  C0 5F 01 80 */	lfs f2, 0x180(r31)
/* 80556FC8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 80556FCC  C0 3F 01 84 */	lfs f1, 0x184(r31)
/* 80556FD0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80556FD4  C0 1F 01 88 */	lfs f0, 0x188(r31)
/* 80556FD8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80556FDC  D0 41 00 08 */	stfs f2, 8(r1)
/* 80556FE0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80556FE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80556FE8  7F 83 E3 78 */	mr r3, r28
/* 80556FEC  38 81 00 08 */	addi r4, r1, 8
/* 80556FF0  4B BF 39 18 */	b setPos__8daNpcT_cF4cXyz
/* 80556FF4  7F 83 E3 78 */	mr r3, r28
/* 80556FF8  38 80 A3 8F */	li r4, -23665
/* 80556FFC  4B BF 3A 1C */	b setAngle__8daNpcT_cFs
lbl_80557000:
/* 80557000  2C 1D 00 00 */	cmpwi r29, 0
/* 80557004  41 82 00 14 */	beq lbl_80557018
/* 80557008  41 80 00 30 */	blt lbl_80557038
/* 8055700C  2C 1D 00 03 */	cmpwi r29, 3
/* 80557010  40 80 00 28 */	bge lbl_80557038
/* 80557014  48 00 00 20 */	b lbl_80557034
lbl_80557018:
/* 80557018  7F 83 E3 78 */	mr r3, r28
/* 8055701C  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 80557020  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80557024  7D 89 03 A6 */	mtctr r12
/* 80557028  4E 80 04 21 */	bctrl 
/* 8055702C  3B C0 00 01 */	li r30, 1
/* 80557030  48 00 00 08 */	b lbl_80557038
lbl_80557034:
/* 80557034  3B C0 00 01 */	li r30, 1
lbl_80557038:
/* 80557038  7F C3 F3 78 */	mr r3, r30
/* 8055703C  39 61 00 50 */	addi r11, r1, 0x50
/* 80557040  4B E0 B1 DC */	b _restgpr_26
/* 80557044  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80557048  7C 08 03 A6 */	mtlr r0
/* 8055704C  38 21 00 50 */	addi r1, r1, 0x50
/* 80557050  4E 80 00 20 */	blr 
