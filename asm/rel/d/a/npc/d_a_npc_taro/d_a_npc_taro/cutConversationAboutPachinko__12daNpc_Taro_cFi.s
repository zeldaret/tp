lbl_80568A2C:
/* 80568A2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80568A30  7C 08 02 A6 */	mflr r0
/* 80568A34  90 01 00 24 */	stw r0, 0x24(r1)
/* 80568A38  39 61 00 20 */	addi r11, r1, 0x20
/* 80568A3C  4B DF 97 98 */	b _savegpr_27
/* 80568A40  7C 7E 1B 78 */	mr r30, r3
/* 80568A44  7C 9B 23 78 */	mr r27, r4
/* 80568A48  3B E0 00 00 */	li r31, 0
/* 80568A4C  3B 80 FF FF */	li r28, -1
/* 80568A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80568A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80568A58  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 80568A5C  7F A3 EB 78 */	mr r3, r29
/* 80568A60  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 80568A64  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 80568A68  38 A5 02 9C */	addi r5, r5, 0x29c
/* 80568A6C  38 C0 00 03 */	li r6, 3
/* 80568A70  4B AD F6 7C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80568A74  28 03 00 00 */	cmplwi r3, 0
/* 80568A78  41 82 00 08 */	beq lbl_80568A80
/* 80568A7C  83 83 00 00 */	lwz r28, 0(r3)
lbl_80568A80:
/* 80568A80  7F A3 EB 78 */	mr r3, r29
/* 80568A84  7F 64 DB 78 */	mr r4, r27
/* 80568A88  4B AD F2 C4 */	b getIsAddvance__16dEvent_manager_cFi
/* 80568A8C  2C 03 00 00 */	cmpwi r3, 0
/* 80568A90  41 82 00 40 */	beq lbl_80568AD0
/* 80568A94  2C 1C 00 01 */	cmpwi r28, 1
/* 80568A98  41 82 00 38 */	beq lbl_80568AD0
/* 80568A9C  40 80 00 10 */	bge lbl_80568AAC
/* 80568AA0  2C 1C 00 00 */	cmpwi r28, 0
/* 80568AA4  40 80 00 14 */	bge lbl_80568AB8
/* 80568AA8  48 00 00 28 */	b lbl_80568AD0
lbl_80568AAC:
/* 80568AAC  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80568AB0  41 82 00 20 */	beq lbl_80568AD0
/* 80568AB4  48 00 00 1C */	b lbl_80568AD0
lbl_80568AB8:
/* 80568AB8  7F C3 F3 78 */	mr r3, r30
/* 80568ABC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80568AC0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80568AC4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80568AC8  4B AB 1C 48 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80568ACC  B0 7E 0D C8 */	sth r3, 0xdc8(r30)
lbl_80568AD0:
/* 80568AD0  2C 1C 00 01 */	cmpwi r28, 1
/* 80568AD4  41 82 00 90 */	beq lbl_80568B64
/* 80568AD8  40 80 00 10 */	bge lbl_80568AE8
/* 80568ADC  2C 1C 00 00 */	cmpwi r28, 0
/* 80568AE0  40 80 00 14 */	bge lbl_80568AF4
/* 80568AE4  48 00 01 58 */	b lbl_80568C3C
lbl_80568AE8:
/* 80568AE8  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80568AEC  41 82 01 4C */	beq lbl_80568C38
/* 80568AF0  48 00 01 4C */	b lbl_80568C3C
lbl_80568AF4:
/* 80568AF4  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80568AF8  2C 00 00 01 */	cmpwi r0, 1
/* 80568AFC  41 82 00 2C */	beq lbl_80568B28
/* 80568B00  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80568B04  4B BD CB F8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80568B08  38 00 00 00 */	li r0, 0
/* 80568B0C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80568B10  3C 60 80 57 */	lis r3, lit_4472@ha
/* 80568B14  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 80568B18  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80568B1C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80568B20  38 00 00 01 */	li r0, 1
/* 80568B24  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80568B28:
/* 80568B28  38 00 00 00 */	li r0, 0
/* 80568B2C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80568B30  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 80568B34  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80568B38  7C 04 00 00 */	cmpw r4, r0
/* 80568B3C  40 82 00 0C */	bne lbl_80568B48
/* 80568B40  3B E0 00 01 */	li r31, 1
/* 80568B44  48 00 00 F8 */	b lbl_80568C3C
lbl_80568B48:
/* 80568B48  7F C3 F3 78 */	mr r3, r30
/* 80568B4C  38 A0 00 1F */	li r5, 0x1f
/* 80568B50  38 C0 00 24 */	li r6, 0x24
/* 80568B54  38 E0 00 0F */	li r7, 0xf
/* 80568B58  39 00 00 00 */	li r8, 0
/* 80568B5C  4B BE 2A EC */	b step__8daNpcT_cFsiiii
/* 80568B60  48 00 00 DC */	b lbl_80568C3C
lbl_80568B64:
/* 80568B64  38 7E 10 D0 */	addi r3, r30, 0x10d0
/* 80568B68  4B BD CB A0 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80568B6C  7C 7D 1B 78 */	mr r29, r3
/* 80568B70  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80568B74  4B BD CB 94 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80568B78  7C 63 E8 50 */	subf r3, r3, r29
/* 80568B7C  30 03 FF FF */	addic r0, r3, -1
/* 80568B80  7C 00 19 10 */	subfe r0, r0, r3
/* 80568B84  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80568B88  40 82 00 10 */	bne lbl_80568B98
/* 80568B8C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80568B90  2C 00 00 02 */	cmpwi r0, 2
/* 80568B94  41 82 00 34 */	beq lbl_80568BC8
lbl_80568B98:
/* 80568B98  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80568B9C  4B BD CB 60 */	b remove__18daNpcT_ActorMngr_cFv
/* 80568BA0  38 00 00 00 */	li r0, 0
/* 80568BA4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80568BA8  3C 60 80 57 */	lis r3, lit_4472@ha
/* 80568BAC  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 80568BB0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80568BB4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80568BB8  38 00 00 02 */	li r0, 2
/* 80568BBC  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80568BC0  38 00 00 01 */	li r0, 1
/* 80568BC4  48 00 00 08 */	b lbl_80568BCC
lbl_80568BC8:
/* 80568BC8  38 00 00 00 */	li r0, 0
lbl_80568BCC:
/* 80568BCC  2C 00 00 00 */	cmpwi r0, 0
/* 80568BD0  41 82 00 2C */	beq lbl_80568BFC
/* 80568BD4  7F A3 EB 78 */	mr r3, r29
/* 80568BD8  4B AB 01 08 */	b fopAc_IsActor__FPv
/* 80568BDC  2C 03 00 00 */	cmpwi r3, 0
/* 80568BE0  41 82 00 1C */	beq lbl_80568BFC
/* 80568BE4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80568BE8  7F A4 EB 78 */	mr r4, r29
/* 80568BEC  4B BD CA F4 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80568BF0  3C 60 80 57 */	lis r3, lit_5839@ha
/* 80568BF4  C0 03 18 24 */	lfs f0, lit_5839@l(r3)
/* 80568BF8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_80568BFC:
/* 80568BFC  38 00 00 00 */	li r0, 0
/* 80568C00  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80568C04  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80568C08  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80568C0C  7C 04 00 00 */	cmpw r4, r0
/* 80568C10  40 82 00 0C */	bne lbl_80568C1C
/* 80568C14  3B E0 00 01 */	li r31, 1
/* 80568C18  48 00 00 24 */	b lbl_80568C3C
lbl_80568C1C:
/* 80568C1C  7F C3 F3 78 */	mr r3, r30
/* 80568C20  38 A0 FF FF */	li r5, -1
/* 80568C24  38 C0 FF FF */	li r6, -1
/* 80568C28  38 E0 00 0F */	li r7, 0xf
/* 80568C2C  39 00 00 00 */	li r8, 0
/* 80568C30  4B BE 2A 18 */	b step__8daNpcT_cFsiiii
/* 80568C34  48 00 00 08 */	b lbl_80568C3C
lbl_80568C38:
/* 80568C38  3B E0 00 01 */	li r31, 1
lbl_80568C3C:
/* 80568C3C  7F E3 FB 78 */	mr r3, r31
/* 80568C40  39 61 00 20 */	addi r11, r1, 0x20
/* 80568C44  4B DF 95 DC */	b _restgpr_27
/* 80568C48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80568C4C  7C 08 03 A6 */	mtlr r0
/* 80568C50  38 21 00 20 */	addi r1, r1, 0x20
/* 80568C54  4E 80 00 20 */	blr 
