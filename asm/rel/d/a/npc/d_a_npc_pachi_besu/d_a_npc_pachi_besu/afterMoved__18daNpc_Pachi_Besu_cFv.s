lbl_80A93A88:
/* 80A93A88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A93A8C  7C 08 02 A6 */	mflr r0
/* 80A93A90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A93A94  39 61 00 20 */	addi r11, r1, 0x20
/* 80A93A98  4B 8C E7 3C */	b _savegpr_27
/* 80A93A9C  7C 7C 1B 78 */	mr r28, r3
/* 80A93AA0  3C 60 80 A9 */	lis r3, lit_1109@ha
/* 80A93AA4  3B C3 7A C8 */	addi r30, r3, lit_1109@l
/* 80A93AA8  3C 60 80 A9 */	lis r3, m__24daNpc_Pachi_Besu_Param_c@ha
/* 80A93AAC  3B E3 6A 6C */	addi r31, r3, m__24daNpc_Pachi_Besu_Param_c@l
/* 80A93AB0  38 7C 0F A0 */	addi r3, r28, 0xfa0
/* 80A93AB4  4B 6B 1C 54 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A93AB8  7C 7B 1B 78 */	mr r27, r3
/* 80A93ABC  38 7C 0F A8 */	addi r3, r28, 0xfa8
/* 80A93AC0  4B 6B 1C 48 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A93AC4  7C 7D 1B 78 */	mr r29, r3
/* 80A93AC8  88 1C 0F 9E */	lbz r0, 0xf9e(r28)
/* 80A93ACC  2C 00 00 03 */	cmpwi r0, 3
/* 80A93AD0  41 82 01 80 */	beq lbl_80A93C50
/* 80A93AD4  40 80 00 14 */	bge lbl_80A93AE8
/* 80A93AD8  2C 00 00 01 */	cmpwi r0, 1
/* 80A93ADC  41 82 00 18 */	beq lbl_80A93AF4
/* 80A93AE0  40 80 00 78 */	bge lbl_80A93B58
/* 80A93AE4  48 00 02 74 */	b lbl_80A93D58
lbl_80A93AE8:
/* 80A93AE8  2C 00 00 05 */	cmpwi r0, 5
/* 80A93AEC  40 80 02 6C */	bge lbl_80A93D58
/* 80A93AF0  48 00 02 30 */	b lbl_80A93D20
lbl_80A93AF4:
/* 80A93AF4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80A93AF8  2C 00 00 03 */	cmpwi r0, 3
/* 80A93AFC  41 82 00 24 */	beq lbl_80A93B20
/* 80A93B00  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80A93B04  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80A93B08  4B 6B 1D 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A93B0C  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80A93B10  38 00 00 03 */	li r0, 3
/* 80A93B14  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80A93B18  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A93B1C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80A93B20:
/* 80A93B20  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80A93B24  2C 00 00 02 */	cmpwi r0, 2
/* 80A93B28  41 82 00 24 */	beq lbl_80A93B4C
/* 80A93B2C  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80A93B30  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80A93B34  4B 6B 1D 64 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A93B38  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80A93B3C  38 00 00 02 */	li r0, 2
/* 80A93B40  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80A93B44  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A93B48  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80A93B4C:
/* 80A93B4C  38 00 00 00 */	li r0, 0
/* 80A93B50  98 1C 0F 9E */	stb r0, 0xf9e(r28)
/* 80A93B54  48 00 02 04 */	b lbl_80A93D58
lbl_80A93B58:
/* 80A93B58  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80A93B5C  2C 00 00 00 */	cmpwi r0, 0
/* 80A93B60  41 82 00 24 */	beq lbl_80A93B84
/* 80A93B64  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80A93B68  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80A93B6C  4B 6B 1D 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A93B70  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80A93B74  38 00 00 00 */	li r0, 0
/* 80A93B78  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80A93B7C  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A93B80  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80A93B84:
/* 80A93B84  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80A93B88  2C 00 00 0F */	cmpwi r0, 0xf
/* 80A93B8C  41 82 00 24 */	beq lbl_80A93BB0
/* 80A93B90  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80A93B94  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80A93B98  4B 6B 1D 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A93B9C  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80A93BA0  38 00 00 0F */	li r0, 0xf
/* 80A93BA4  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80A93BA8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80A93BAC  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80A93BB0:
/* 80A93BB0  28 1D 00 00 */	cmplwi r29, 0
/* 80A93BB4  41 82 00 90 */	beq lbl_80A93C44
/* 80A93BB8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A93BBC  4B 6B 1B 4C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A93BC0  7C 63 E8 50 */	subf r3, r3, r29
/* 80A93BC4  30 03 FF FF */	addic r0, r3, -1
/* 80A93BC8  7C 00 19 10 */	subfe r0, r0, r3
/* 80A93BCC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A93BD0  40 82 00 10 */	bne lbl_80A93BE0
/* 80A93BD4  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80A93BD8  2C 00 00 02 */	cmpwi r0, 2
/* 80A93BDC  41 82 00 30 */	beq lbl_80A93C0C
lbl_80A93BE0:
/* 80A93BE0  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A93BE4  4B 6B 1B 18 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A93BE8  38 00 00 00 */	li r0, 0
/* 80A93BEC  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80A93BF0  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A93BF4  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80A93BF8  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A93BFC  38 00 00 02 */	li r0, 2
/* 80A93C00  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80A93C04  38 00 00 01 */	li r0, 1
/* 80A93C08  48 00 00 08 */	b lbl_80A93C10
lbl_80A93C0C:
/* 80A93C0C  38 00 00 00 */	li r0, 0
lbl_80A93C10:
/* 80A93C10  2C 00 00 00 */	cmpwi r0, 0
/* 80A93C14  41 82 00 28 */	beq lbl_80A93C3C
/* 80A93C18  7F A3 EB 78 */	mr r3, r29
/* 80A93C1C  4B 58 50 C4 */	b fopAc_IsActor__FPv
/* 80A93C20  2C 03 00 00 */	cmpwi r3, 0
/* 80A93C24  41 82 00 18 */	beq lbl_80A93C3C
/* 80A93C28  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A93C2C  7F A4 EB 78 */	mr r4, r29
/* 80A93C30  4B 6B 1A B0 */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A93C34  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A93C38  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
lbl_80A93C3C:
/* 80A93C3C  38 00 00 00 */	li r0, 0
/* 80A93C40  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_80A93C44:
/* 80A93C44  38 00 00 00 */	li r0, 0
/* 80A93C48  98 1C 0F 9E */	stb r0, 0xf9e(r28)
/* 80A93C4C  48 00 01 0C */	b lbl_80A93D58
lbl_80A93C50:
/* 80A93C50  28 1B 00 00 */	cmplwi r27, 0
/* 80A93C54  41 82 00 C0 */	beq lbl_80A93D14
/* 80A93C58  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80A93C5C  7C 00 07 75 */	extsb. r0, r0
/* 80A93C60  40 82 00 20 */	bne lbl_80A93C80
/* 80A93C64  38 7E 00 60 */	addi r3, r30, 0x60
/* 80A93C68  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha
/* 80A93C6C  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l
/* 80A93C70  38 BE 00 50 */	addi r5, r30, 0x50
/* 80A93C74  4B FF F0 85 */	bl __register_global_object
/* 80A93C78  38 00 00 01 */	li r0, 1
/* 80A93C7C  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80A93C80:
/* 80A93C80  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80A93C84  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80A93C88  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 80A93C8C  38 7E 00 60 */	addi r3, r30, 0x60
/* 80A93C90  D0 23 00 04 */	stfs f1, 4(r3)
/* 80A93C94  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80A93C98  D0 03 00 08 */	stfs f0, 8(r3)
/* 80A93C9C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80A93CA0  EC 01 00 2A */	fadds f0, f1, f0
/* 80A93CA4  D0 03 00 04 */	stfs f0, 4(r3)
/* 80A93CA8  80 1C 0B C8 */	lwz r0, 0xbc8(r28)
/* 80A93CAC  7C 60 18 50 */	subf r3, r0, r3
/* 80A93CB0  30 03 FF FF */	addic r0, r3, -1
/* 80A93CB4  7C 00 19 10 */	subfe r0, r0, r3
/* 80A93CB8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A93CBC  40 82 00 10 */	bne lbl_80A93CCC
/* 80A93CC0  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80A93CC4  2C 00 00 03 */	cmpwi r0, 3
/* 80A93CC8  41 82 00 30 */	beq lbl_80A93CF8
lbl_80A93CCC:
/* 80A93CCC  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A93CD0  4B 6B 1A 2C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A93CD4  38 00 00 00 */	li r0, 0
/* 80A93CD8  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80A93CDC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A93CE0  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80A93CE4  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A93CE8  38 00 00 03 */	li r0, 3
/* 80A93CEC  90 1C 0C E0 */	stw r0, 0xce0(r28)
/* 80A93CF0  38 00 00 01 */	li r0, 1
/* 80A93CF4  48 00 00 08 */	b lbl_80A93CFC
lbl_80A93CF8:
/* 80A93CF8  38 00 00 00 */	li r0, 0
lbl_80A93CFC:
/* 80A93CFC  2C 00 00 00 */	cmpwi r0, 0
/* 80A93D00  41 82 00 0C */	beq lbl_80A93D0C
/* 80A93D04  38 1E 00 60 */	addi r0, r30, 0x60
/* 80A93D08  90 1C 0B C8 */	stw r0, 0xbc8(r28)
lbl_80A93D0C:
/* 80A93D0C  38 00 00 00 */	li r0, 0
/* 80A93D10  98 1C 0C FF */	stb r0, 0xcff(r28)
lbl_80A93D14:
/* 80A93D14  38 00 00 00 */	li r0, 0
/* 80A93D18  98 1C 0F 9E */	stb r0, 0xf9e(r28)
/* 80A93D1C  48 00 00 3C */	b lbl_80A93D58
lbl_80A93D20:
/* 80A93D20  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80A93D24  2C 00 00 00 */	cmpwi r0, 0
/* 80A93D28  41 82 00 24 */	beq lbl_80A93D4C
/* 80A93D2C  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80A93D30  4B 6B 19 CC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A93D34  38 00 00 00 */	li r0, 0
/* 80A93D38  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80A93D3C  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80A93D40  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80A93D44  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A93D48  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80A93D4C:
/* 80A93D4C  38 00 00 00 */	li r0, 0
/* 80A93D50  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80A93D54  98 1C 0F 9E */	stb r0, 0xf9e(r28)
lbl_80A93D58:
/* 80A93D58  39 61 00 20 */	addi r11, r1, 0x20
/* 80A93D5C  4B 8C E4 C4 */	b _restgpr_27
/* 80A93D60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A93D64  7C 08 03 A6 */	mtlr r0
/* 80A93D68  38 21 00 20 */	addi r1, r1, 0x20
/* 80A93D6C  4E 80 00 20 */	blr 
