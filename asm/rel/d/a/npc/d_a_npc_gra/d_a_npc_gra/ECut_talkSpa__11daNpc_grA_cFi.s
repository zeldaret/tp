lbl_809C3B28:
/* 809C3B28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809C3B2C  7C 08 02 A6 */	mflr r0
/* 809C3B30  90 01 00 34 */	stw r0, 0x34(r1)
/* 809C3B34  39 61 00 30 */	addi r11, r1, 0x30
/* 809C3B38  4B 99 E6 9C */	b _savegpr_27
/* 809C3B3C  7C 7D 1B 78 */	mr r29, r3
/* 809C3B40  7C 9B 23 78 */	mr r27, r4
/* 809C3B44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C3B48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C3B4C  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 809C3B50  3B E0 00 00 */	li r31, 0
/* 809C3B54  3B C0 FF FF */	li r30, -1
/* 809C3B58  3C 60 80 9D */	lis r3, lit_6467@ha
/* 809C3B5C  38 83 A4 40 */	addi r4, r3, lit_6467@l
/* 809C3B60  80 64 00 00 */	lwz r3, 0(r4)
/* 809C3B64  80 04 00 04 */	lwz r0, 4(r4)
/* 809C3B68  90 61 00 08 */	stw r3, 8(r1)
/* 809C3B6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809C3B70  93 A1 00 08 */	stw r29, 8(r1)
/* 809C3B74  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 809C3B78  4B 78 CB 74 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C3B7C  90 61 00 0C */	stw r3, 0xc(r1)
/* 809C3B80  7F 83 E3 78 */	mr r3, r28
/* 809C3B84  7F 64 DB 78 */	mr r4, r27
/* 809C3B88  3C A0 80 9D */	lis r5, struct_809CA4B8+0x0@ha
/* 809C3B8C  38 A5 A4 B8 */	addi r5, r5, struct_809CA4B8+0x0@l
/* 809C3B90  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C3B94  38 C0 00 03 */	li r6, 3
/* 809C3B98  4B 68 45 54 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C3B9C  28 03 00 00 */	cmplwi r3, 0
/* 809C3BA0  41 82 00 08 */	beq lbl_809C3BA8
/* 809C3BA4  83 C3 00 00 */	lwz r30, 0(r3)
lbl_809C3BA8:
/* 809C3BA8  7F 83 E3 78 */	mr r3, r28
/* 809C3BAC  7F 64 DB 78 */	mr r4, r27
/* 809C3BB0  4B 68 41 9C */	b getIsAddvance__16dEvent_manager_cFi
/* 809C3BB4  2C 03 00 00 */	cmpwi r3, 0
/* 809C3BB8  41 82 01 2C */	beq lbl_809C3CE4
/* 809C3BBC  2C 1E 00 01 */	cmpwi r30, 1
/* 809C3BC0  41 82 00 D0 */	beq lbl_809C3C90
/* 809C3BC4  40 80 00 10 */	bge lbl_809C3BD4
/* 809C3BC8  2C 1E 00 00 */	cmpwi r30, 0
/* 809C3BCC  40 80 00 14 */	bge lbl_809C3BE0
/* 809C3BD0  48 00 01 14 */	b lbl_809C3CE4
lbl_809C3BD4:
/* 809C3BD4  2C 1E 00 03 */	cmpwi r30, 3
/* 809C3BD8  40 80 01 0C */	bge lbl_809C3CE4
/* 809C3BDC  48 00 00 C8 */	b lbl_809C3CA4
lbl_809C3BE0:
/* 809C3BE0  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 809C3BE4  4B 78 CB 08 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C3BE8  3B 83 0B A8 */	addi r28, r3, 0xba8
/* 809C3BEC  7F 83 E3 78 */	mr r3, r28
/* 809C3BF0  4B 78 1B 18 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 809C3BF4  7C 63 E8 50 */	subf r3, r3, r29
/* 809C3BF8  30 03 FF FF */	addic r0, r3, -1
/* 809C3BFC  7C 00 19 10 */	subfe r0, r0, r3
/* 809C3C00  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809C3C04  40 82 00 10 */	bne lbl_809C3C14
/* 809C3C08  80 1C 01 38 */	lwz r0, 0x138(r28)
/* 809C3C0C  2C 00 00 02 */	cmpwi r0, 2
/* 809C3C10  41 82 00 34 */	beq lbl_809C3C44
lbl_809C3C14:
/* 809C3C14  7F 83 E3 78 */	mr r3, r28
/* 809C3C18  4B 78 1A E4 */	b remove__18daNpcT_ActorMngr_cFv
/* 809C3C1C  38 00 00 00 */	li r0, 0
/* 809C3C20  90 1C 00 20 */	stw r0, 0x20(r28)
/* 809C3C24  3C 60 80 9D */	lis r3, lit_4611@ha
/* 809C3C28  C0 03 9E 34 */	lfs f0, lit_4611@l(r3)
/* 809C3C2C  D0 1C 01 4C */	stfs f0, 0x14c(r28)
/* 809C3C30  98 1C 01 57 */	stb r0, 0x157(r28)
/* 809C3C34  38 00 00 02 */	li r0, 2
/* 809C3C38  90 1C 01 38 */	stw r0, 0x138(r28)
/* 809C3C3C  38 00 00 01 */	li r0, 1
/* 809C3C40  48 00 00 08 */	b lbl_809C3C48
lbl_809C3C44:
/* 809C3C44  38 00 00 00 */	li r0, 0
lbl_809C3C48:
/* 809C3C48  2C 00 00 00 */	cmpwi r0, 0
/* 809C3C4C  41 82 00 2C */	beq lbl_809C3C78
/* 809C3C50  7F A3 EB 78 */	mr r3, r29
/* 809C3C54  4B 65 50 8C */	b fopAc_IsActor__FPv
/* 809C3C58  2C 03 00 00 */	cmpwi r3, 0
/* 809C3C5C  41 82 00 1C */	beq lbl_809C3C78
/* 809C3C60  7F 83 E3 78 */	mr r3, r28
/* 809C3C64  7F A4 EB 78 */	mr r4, r29
/* 809C3C68  4B 78 1A 78 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 809C3C6C  3C 60 80 9D */	lis r3, lit_4611@ha
/* 809C3C70  C0 03 9E 34 */	lfs f0, lit_4611@l(r3)
/* 809C3C74  D0 1C 01 4C */	stfs f0, 0x14c(r28)
lbl_809C3C78:
/* 809C3C78  38 00 00 00 */	li r0, 0
/* 809C3C7C  98 1C 01 57 */	stb r0, 0x157(r28)
/* 809C3C80  7F A3 EB 78 */	mr r3, r29
/* 809C3C84  38 80 00 05 */	li r4, 5
/* 809C3C88  4B FF F3 E9 */	bl setLookMode__11daNpc_grA_cFi
/* 809C3C8C  48 00 00 58 */	b lbl_809C3CE4
lbl_809C3C90:
/* 809C3C90  7F A3 EB 78 */	mr r3, r29
/* 809C3C94  80 9D 14 6C */	lwz r4, 0x146c(r29)
/* 809C3C98  38 A1 00 08 */	addi r5, r1, 8
/* 809C3C9C  4B 79 00 80 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809C3CA0  48 00 00 44 */	b lbl_809C3CE4
lbl_809C3CA4:
/* 809C3CA4  38 60 00 06 */	li r3, 6
/* 809C3CA8  4B 79 19 8C */	b daNpcF_chkEvtBit__FUl
/* 809C3CAC  2C 03 00 00 */	cmpwi r3, 0
/* 809C3CB0  41 82 00 2C */	beq lbl_809C3CDC
/* 809C3CB4  38 60 00 3E */	li r3, 0x3e
/* 809C3CB8  4B 79 19 7C */	b daNpcF_chkEvtBit__FUl
/* 809C3CBC  2C 03 00 00 */	cmpwi r3, 0
/* 809C3CC0  40 82 00 1C */	bne lbl_809C3CDC
/* 809C3CC4  38 00 00 3C */	li r0, 0x3c
/* 809C3CC8  90 1D 09 60 */	stw r0, 0x960(r29)
/* 809C3CCC  7F A3 EB 78 */	mr r3, r29
/* 809C3CD0  38 80 00 02 */	li r4, 2
/* 809C3CD4  4B FF F3 9D */	bl setLookMode__11daNpc_grA_cFi
/* 809C3CD8  48 00 00 0C */	b lbl_809C3CE4
lbl_809C3CDC:
/* 809C3CDC  38 00 00 00 */	li r0, 0
/* 809C3CE0  90 1D 09 60 */	stw r0, 0x960(r29)
lbl_809C3CE4:
/* 809C3CE4  2C 1E 00 01 */	cmpwi r30, 1
/* 809C3CE8  41 82 00 28 */	beq lbl_809C3D10
/* 809C3CEC  40 80 00 10 */	bge lbl_809C3CFC
/* 809C3CF0  2C 1E 00 00 */	cmpwi r30, 0
/* 809C3CF4  40 80 00 14 */	bge lbl_809C3D08
/* 809C3CF8  48 00 00 60 */	b lbl_809C3D58
lbl_809C3CFC:
/* 809C3CFC  2C 1E 00 03 */	cmpwi r30, 3
/* 809C3D00  40 80 00 58 */	bge lbl_809C3D58
/* 809C3D04  48 00 00 30 */	b lbl_809C3D34
lbl_809C3D08:
/* 809C3D08  3B E0 00 01 */	li r31, 1
/* 809C3D0C  48 00 00 50 */	b lbl_809C3D5C
lbl_809C3D10:
/* 809C3D10  7F A3 EB 78 */	mr r3, r29
/* 809C3D14  38 80 00 00 */	li r4, 0
/* 809C3D18  38 A0 00 00 */	li r5, 0
/* 809C3D1C  38 C1 00 08 */	addi r6, r1, 8
/* 809C3D20  4B 79 00 64 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809C3D24  2C 03 00 00 */	cmpwi r3, 0
/* 809C3D28  41 82 00 34 */	beq lbl_809C3D5C
/* 809C3D2C  3B E0 00 01 */	li r31, 1
/* 809C3D30  48 00 00 2C */	b lbl_809C3D5C
lbl_809C3D34:
/* 809C3D34  38 7D 09 60 */	addi r3, r29, 0x960
/* 809C3D38  48 00 5D AD */	bl func_809C9AE4
/* 809C3D3C  2C 03 00 00 */	cmpwi r3, 0
/* 809C3D40  40 82 00 1C */	bne lbl_809C3D5C
/* 809C3D44  3B E0 00 01 */	li r31, 1
/* 809C3D48  7F A3 EB 78 */	mr r3, r29
/* 809C3D4C  38 80 00 05 */	li r4, 5
/* 809C3D50  4B FF F3 21 */	bl setLookMode__11daNpc_grA_cFi
/* 809C3D54  48 00 00 08 */	b lbl_809C3D5C
lbl_809C3D58:
/* 809C3D58  3B E0 00 01 */	li r31, 1
lbl_809C3D5C:
/* 809C3D5C  7F E3 FB 78 */	mr r3, r31
/* 809C3D60  39 61 00 30 */	addi r11, r1, 0x30
/* 809C3D64  4B 99 E4 BC */	b _restgpr_27
/* 809C3D68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809C3D6C  7C 08 03 A6 */	mtlr r0
/* 809C3D70  38 21 00 30 */	addi r1, r1, 0x30
/* 809C3D74  4E 80 00 20 */	blr 
