lbl_809709EC:
/* 809709EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809709F0  7C 08 02 A6 */	mflr r0
/* 809709F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809709F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809709FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80970A00  7C 7F 1B 78 */	mr r31, r3
/* 80970A04  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80970A08  2C 00 00 02 */	cmpwi r0, 2
/* 80970A0C  41 82 00 8C */	beq lbl_80970A98
/* 80970A10  40 80 03 D0 */	bge lbl_80970DE0
/* 80970A14  2C 00 00 00 */	cmpwi r0, 0
/* 80970A18  40 80 00 0C */	bge lbl_80970A24
/* 80970A1C  48 00 03 C4 */	b lbl_80970DE0
/* 80970A20  48 00 03 C0 */	b lbl_80970DE0
lbl_80970A24:
/* 80970A24  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80970A28  2C 00 00 00 */	cmpwi r0, 0
/* 80970A2C  40 82 00 6C */	bne lbl_80970A98
/* 80970A30  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80970A34  2C 00 00 0A */	cmpwi r0, 0xa
/* 80970A38  41 82 00 28 */	beq lbl_80970A60
/* 80970A3C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80970A40  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80970A44  4B 7D 4E 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80970A48  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80970A4C  38 00 00 0A */	li r0, 0xa
/* 80970A50  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80970A54  3C 60 80 97 */	lis r3, lit_4758@ha /* 0x80972940@ha */
/* 80970A58  C0 03 29 40 */	lfs f0, lit_4758@l(r3)  /* 0x80972940@l */
/* 80970A5C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80970A60:
/* 80970A60  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80970A64  2C 00 00 00 */	cmpwi r0, 0
/* 80970A68  41 82 00 28 */	beq lbl_80970A90
/* 80970A6C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80970A70  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80970A74  4B 7D 4E 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80970A78  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80970A7C  38 00 00 00 */	li r0, 0
/* 80970A80  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80970A84  3C 60 80 97 */	lis r3, lit_4758@ha /* 0x80972940@ha */
/* 80970A88  C0 03 29 40 */	lfs f0, lit_4758@l(r3)  /* 0x80972940@l */
/* 80970A8C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80970A90:
/* 80970A90  38 00 00 02 */	li r0, 2
/* 80970A94  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80970A98:
/* 80970A98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80970A9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80970AA0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80970AA4  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80970AA8  28 00 00 2A */	cmplwi r0, 0x2a
/* 80970AAC  40 82 00 10 */	bne lbl_80970ABC
/* 80970AB0  38 00 00 01 */	li r0, 1
/* 80970AB4  98 1F 0F F4 */	stb r0, 0xff4(r31)
/* 80970AB8  48 00 00 64 */	b lbl_80970B1C
lbl_80970ABC:
/* 80970ABC  88 1F 0F F4 */	lbz r0, 0xff4(r31)
/* 80970AC0  28 00 00 00 */	cmplwi r0, 0
/* 80970AC4  41 82 00 58 */	beq lbl_80970B1C
/* 80970AC8  38 00 00 04 */	li r0, 4
/* 80970ACC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80970AD0  38 60 02 35 */	li r3, 0x235
/* 80970AD4  4B 7D BF D9 */	bl daNpcT_chkEvtBit__FUl
/* 80970AD8  2C 03 00 00 */	cmpwi r3, 0
/* 80970ADC  41 82 00 20 */	beq lbl_80970AFC
/* 80970AE0  38 60 02 4B */	li r3, 0x24b
/* 80970AE4  4B 7D BF C9 */	bl daNpcT_chkEvtBit__FUl
/* 80970AE8  2C 03 00 00 */	cmpwi r3, 0
/* 80970AEC  41 82 00 28 */	beq lbl_80970B14
/* 80970AF0  38 00 00 03 */	li r0, 3
/* 80970AF4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80970AF8  48 00 00 1C */	b lbl_80970B14
lbl_80970AFC:
/* 80970AFC  38 60 00 B2 */	li r3, 0xb2
/* 80970B00  4B 7D BF AD */	bl daNpcT_chkEvtBit__FUl
/* 80970B04  2C 03 00 00 */	cmpwi r3, 0
/* 80970B08  41 82 00 0C */	beq lbl_80970B14
/* 80970B0C  38 00 00 03 */	li r0, 3
/* 80970B10  B0 1F 0E 30 */	sth r0, 0xe30(r31)
lbl_80970B14:
/* 80970B14  38 00 00 01 */	li r0, 1
/* 80970B18  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80970B1C:
/* 80970B1C  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80970B20  2C 00 00 00 */	cmpwi r0, 0
/* 80970B24  40 82 02 BC */	bne lbl_80970DE0
/* 80970B28  88 1F 0F F4 */	lbz r0, 0xff4(r31)
/* 80970B2C  28 00 00 00 */	cmplwi r0, 0
/* 80970B30  41 82 00 0C */	beq lbl_80970B3C
/* 80970B34  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80970B38  4B 7D 4B C5 */	bl remove__18daNpcT_ActorMngr_cFv
lbl_80970B3C:
/* 80970B3C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80970B40  4B 7D 4B C9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80970B44  28 03 00 00 */	cmplwi r3, 0
/* 80970B48  41 82 00 C8 */	beq lbl_80970C10
/* 80970B4C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80970B50  2C 00 00 01 */	cmpwi r0, 1
/* 80970B54  41 82 00 2C */	beq lbl_80970B80
/* 80970B58  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80970B5C  4B 7D 4B A1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80970B60  38 00 00 00 */	li r0, 0
/* 80970B64  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80970B68  3C 60 80 97 */	lis r3, lit_4328@ha /* 0x80972928@ha */
/* 80970B6C  C0 03 29 28 */	lfs f0, lit_4328@l(r3)  /* 0x80972928@l */
/* 80970B70  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80970B74  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970B78  38 00 00 01 */	li r0, 1
/* 80970B7C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80970B80:
/* 80970B80  38 00 00 00 */	li r0, 0
/* 80970B84  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970B88  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80970B8C  4B 7D 4B 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80970B90  7C 64 1B 78 */	mr r4, r3
/* 80970B94  7F E3 FB 78 */	mr r3, r31
/* 80970B98  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80970B9C  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80970BA0  4B 7D A0 31 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80970BA4  2C 03 00 00 */	cmpwi r3, 0
/* 80970BA8  40 82 00 3C */	bne lbl_80970BE4
/* 80970BAC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80970BB0  2C 00 00 00 */	cmpwi r0, 0
/* 80970BB4  41 82 00 28 */	beq lbl_80970BDC
/* 80970BB8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80970BBC  4B 7D 4B 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80970BC0  38 00 00 00 */	li r0, 0
/* 80970BC4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80970BC8  3C 60 80 97 */	lis r3, lit_4328@ha /* 0x80972928@ha */
/* 80970BCC  C0 03 29 28 */	lfs f0, lit_4328@l(r3)  /* 0x80972928@l */
/* 80970BD0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80970BD4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970BD8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80970BDC:
/* 80970BDC  38 00 00 00 */	li r0, 0
/* 80970BE0  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80970BE4:
/* 80970BE4  7F E3 FB 78 */	mr r3, r31
/* 80970BE8  4B 7D A7 51 */	bl srchPlayerActor__8daNpcT_cFv
/* 80970BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80970BF0  40 82 01 1C */	bne lbl_80970D0C
/* 80970BF4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80970BF8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80970BFC  7C 03 00 00 */	cmpw r3, r0
/* 80970C00  40 82 01 0C */	bne lbl_80970D0C
/* 80970C04  38 00 00 01 */	li r0, 1
/* 80970C08  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80970C0C  48 00 01 00 */	b lbl_80970D0C
lbl_80970C10:
/* 80970C10  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80970C14  2C 00 00 00 */	cmpwi r0, 0
/* 80970C18  41 82 00 28 */	beq lbl_80970C40
/* 80970C1C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80970C20  4B 7D 4A DD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80970C24  38 00 00 00 */	li r0, 0
/* 80970C28  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80970C2C  3C 60 80 97 */	lis r3, lit_4328@ha /* 0x80972928@ha */
/* 80970C30  C0 03 29 28 */	lfs f0, lit_4328@l(r3)  /* 0x80972928@l */
/* 80970C34  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80970C38  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970C3C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80970C40:
/* 80970C40  38 60 00 00 */	li r3, 0
/* 80970C44  98 7F 0C FF */	stb r3, 0xcff(r31)
/* 80970C48  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80970C4C  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80970C50  7C 04 00 00 */	cmpw r4, r0
/* 80970C54  41 82 00 90 */	beq lbl_80970CE4
/* 80970C58  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80970C5C  28 00 00 00 */	cmplwi r0, 0
/* 80970C60  41 82 00 68 */	beq lbl_80970CC8
/* 80970C64  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80970C68  28 00 00 02 */	cmplwi r0, 2
/* 80970C6C  40 82 00 30 */	bne lbl_80970C9C
/* 80970C70  7F E3 FB 78 */	mr r3, r31
/* 80970C74  38 A0 00 0A */	li r5, 0xa
/* 80970C78  38 C0 00 13 */	li r6, 0x13
/* 80970C7C  38 E0 00 0F */	li r7, 0xf
/* 80970C80  39 00 00 00 */	li r8, 0
/* 80970C84  4B 7D A9 C5 */	bl step__8daNpcT_cFsiiii
/* 80970C88  2C 03 00 00 */	cmpwi r3, 0
/* 80970C8C  41 82 00 4C */	beq lbl_80970CD8
/* 80970C90  38 00 00 01 */	li r0, 1
/* 80970C94  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80970C98  48 00 00 40 */	b lbl_80970CD8
lbl_80970C9C:
/* 80970C9C  7F E3 FB 78 */	mr r3, r31
/* 80970CA0  38 A0 00 0A */	li r5, 0xa
/* 80970CA4  38 C0 00 12 */	li r6, 0x12
/* 80970CA8  38 E0 00 0F */	li r7, 0xf
/* 80970CAC  39 00 00 00 */	li r8, 0
/* 80970CB0  4B 7D A9 99 */	bl step__8daNpcT_cFsiiii
/* 80970CB4  2C 03 00 00 */	cmpwi r3, 0
/* 80970CB8  41 82 00 20 */	beq lbl_80970CD8
/* 80970CBC  38 00 00 01 */	li r0, 1
/* 80970CC0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80970CC4  48 00 00 14 */	b lbl_80970CD8
lbl_80970CC8:
/* 80970CC8  7F E3 FB 78 */	mr r3, r31
/* 80970CCC  4B 7D 9D 4D */	bl setAngle__8daNpcT_cFs
/* 80970CD0  38 00 00 01 */	li r0, 1
/* 80970CD4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80970CD8:
/* 80970CD8  38 00 00 00 */	li r0, 0
/* 80970CDC  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80970CE0  48 00 00 2C */	b lbl_80970D0C
lbl_80970CE4:
/* 80970CE4  88 1F 0F F4 */	lbz r0, 0xff4(r31)
/* 80970CE8  28 00 00 00 */	cmplwi r0, 0
/* 80970CEC  41 82 00 0C */	beq lbl_80970CF8
/* 80970CF0  90 7F 05 5C */	stw r3, 0x55c(r31)
/* 80970CF4  48 00 00 18 */	b lbl_80970D0C
lbl_80970CF8:
/* 80970CF8  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80970CFC  28 00 00 00 */	cmplwi r0, 0
/* 80970D00  40 82 00 0C */	bne lbl_80970D0C
/* 80970D04  7F E3 FB 78 */	mr r3, r31
/* 80970D08  4B 7D A6 31 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80970D0C:
/* 80970D0C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80970D10  2C 00 00 00 */	cmpwi r0, 0
/* 80970D14  41 82 00 08 */	beq lbl_80970D1C
/* 80970D18  48 00 00 B4 */	b lbl_80970DCC
lbl_80970D1C:
/* 80970D1C  88 1F 0F F4 */	lbz r0, 0xff4(r31)
/* 80970D20  28 00 00 00 */	cmplwi r0, 0
/* 80970D24  41 82 00 A8 */	beq lbl_80970DCC
/* 80970D28  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80970D2C  4B 7D 49 DD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80970D30  7C 7E 1B 79 */	or. r30, r3, r3
/* 80970D34  41 82 00 98 */	beq lbl_80970DCC
/* 80970D38  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80970D3C  4B 7D 49 CD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80970D40  7C 63 F0 50 */	subf r3, r3, r30
/* 80970D44  30 03 FF FF */	addic r0, r3, -1
/* 80970D48  7C 00 19 10 */	subfe r0, r0, r3
/* 80970D4C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80970D50  40 82 00 10 */	bne lbl_80970D60
/* 80970D54  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80970D58  2C 00 00 02 */	cmpwi r0, 2
/* 80970D5C  41 82 00 34 */	beq lbl_80970D90
lbl_80970D60:
/* 80970D60  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80970D64  4B 7D 49 99 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80970D68  38 00 00 00 */	li r0, 0
/* 80970D6C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80970D70  3C 60 80 97 */	lis r3, lit_4328@ha /* 0x80972928@ha */
/* 80970D74  C0 03 29 28 */	lfs f0, lit_4328@l(r3)  /* 0x80972928@l */
/* 80970D78  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80970D7C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970D80  38 00 00 02 */	li r0, 2
/* 80970D84  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 80970D88  38 00 00 01 */	li r0, 1
/* 80970D8C  48 00 00 08 */	b lbl_80970D94
lbl_80970D90:
/* 80970D90  38 00 00 00 */	li r0, 0
lbl_80970D94:
/* 80970D94  2C 00 00 00 */	cmpwi r0, 0
/* 80970D98  41 82 00 2C */	beq lbl_80970DC4
/* 80970D9C  7F C3 F3 78 */	mr r3, r30
/* 80970DA0  4B 6A 7F 41 */	bl fopAc_IsActor__FPv
/* 80970DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80970DA8  41 82 00 1C */	beq lbl_80970DC4
/* 80970DAC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80970DB0  7F C4 F3 78 */	mr r4, r30
/* 80970DB4  4B 7D 49 2D */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80970DB8  3C 60 80 97 */	lis r3, lit_4328@ha /* 0x80972928@ha */
/* 80970DBC  C0 03 29 28 */	lfs f0, lit_4328@l(r3)  /* 0x80972928@l */
/* 80970DC0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
lbl_80970DC4:
/* 80970DC4  38 00 00 00 */	li r0, 0
/* 80970DC8  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80970DCC:
/* 80970DCC  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80970DD0  28 00 00 00 */	cmplwi r0, 0
/* 80970DD4  40 82 00 0C */	bne lbl_80970DE0
/* 80970DD8  38 60 00 1D */	li r3, 0x1d
/* 80970DDC  4B 7D BD 51 */	bl daNpcT_offTmpBit__FUl
lbl_80970DE0:
/* 80970DE0  38 60 00 01 */	li r3, 1
/* 80970DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80970DE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80970DEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80970DF0  7C 08 03 A6 */	mtlr r0
/* 80970DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80970DF8  4E 80 00 20 */	blr 
