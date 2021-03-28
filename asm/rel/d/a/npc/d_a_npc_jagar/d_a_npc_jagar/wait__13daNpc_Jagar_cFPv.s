lbl_80A17A2C:
/* 80A17A2C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80A17A30  7C 08 02 A6 */	mflr r0
/* 80A17A34  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A17A38  39 61 00 50 */	addi r11, r1, 0x50
/* 80A17A3C  4B 94 A7 A0 */	b _savegpr_29
/* 80A17A40  7C 7E 1B 78 */	mr r30, r3
/* 80A17A44  3C 80 80 A2 */	lis r4, m__19daNpc_Jagar_Param_c@ha
/* 80A17A48  3B E4 A3 30 */	addi r31, r4, m__19daNpc_Jagar_Param_c@l
/* 80A17A4C  38 00 00 00 */	li r0, 0
/* 80A17A50  98 03 10 04 */	stb r0, 0x1004(r3)
/* 80A17A54  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80A17A58  28 00 00 00 */	cmplwi r0, 0
/* 80A17A5C  40 82 00 50 */	bne lbl_80A17AAC
/* 80A17A60  4B FF FE C5 */	bl chkSitMotion2__13daNpc_Jagar_cFv
/* 80A17A64  2C 03 00 00 */	cmpwi r3, 0
/* 80A17A68  41 82 00 10 */	beq lbl_80A17A78
/* 80A17A6C  38 00 00 02 */	li r0, 2
/* 80A17A70  98 1E 10 04 */	stb r0, 0x1004(r30)
/* 80A17A74  48 00 00 38 */	b lbl_80A17AAC
lbl_80A17A78:
/* 80A17A78  7F C3 F3 78 */	mr r3, r30
/* 80A17A7C  4B FF FE 1D */	bl chkSitMotion__13daNpc_Jagar_cFv
/* 80A17A80  2C 03 00 00 */	cmpwi r3, 0
/* 80A17A84  41 82 00 28 */	beq lbl_80A17AAC
/* 80A17A88  7F C3 F3 78 */	mr r3, r30
/* 80A17A8C  4B FF FE F9 */	bl chkChuMotion__13daNpc_Jagar_cFv
/* 80A17A90  2C 03 00 00 */	cmpwi r3, 0
/* 80A17A94  41 82 00 10 */	beq lbl_80A17AA4
/* 80A17A98  38 00 00 01 */	li r0, 1
/* 80A17A9C  98 1E 10 04 */	stb r0, 0x1004(r30)
/* 80A17AA0  48 00 00 0C */	b lbl_80A17AAC
lbl_80A17AA4:
/* 80A17AA4  38 00 00 02 */	li r0, 2
/* 80A17AA8  98 1E 10 04 */	stb r0, 0x1004(r30)
lbl_80A17AAC:
/* 80A17AAC  88 7E 10 04 */	lbz r3, 0x1004(r30)
/* 80A17AB0  88 1E 10 03 */	lbz r0, 0x1003(r30)
/* 80A17AB4  7C 03 00 40 */	cmplw r3, r0
/* 80A17AB8  41 82 00 0C */	beq lbl_80A17AC4
/* 80A17ABC  38 00 00 01 */	li r0, 1
/* 80A17AC0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A17AC4:
/* 80A17AC4  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80A17AC8  2C 00 00 02 */	cmpwi r0, 2
/* 80A17ACC  41 82 05 0C */	beq lbl_80A17FD8
/* 80A17AD0  40 80 0A 80 */	bge lbl_80A18550
/* 80A17AD4  2C 00 00 00 */	cmpwi r0, 0
/* 80A17AD8  40 80 00 0C */	bge lbl_80A17AE4
/* 80A17ADC  48 00 0A 74 */	b lbl_80A18550
/* 80A17AE0  48 00 0A 70 */	b lbl_80A18550
lbl_80A17AE4:
/* 80A17AE4  88 1E 0A 88 */	lbz r0, 0xa88(r30)
/* 80A17AE8  28 00 00 00 */	cmplwi r0, 0
/* 80A17AEC  41 82 01 C8 */	beq lbl_80A17CB4
/* 80A17AF0  88 1E 10 04 */	lbz r0, 0x1004(r30)
/* 80A17AF4  2C 00 00 01 */	cmpwi r0, 1
/* 80A17AF8  41 82 00 EC */	beq lbl_80A17BE4
/* 80A17AFC  40 80 00 10 */	bge lbl_80A17B0C
/* 80A17B00  2C 00 00 00 */	cmpwi r0, 0
/* 80A17B04  40 80 00 14 */	bge lbl_80A17B18
/* 80A17B08  48 00 01 A0 */	b lbl_80A17CA8
lbl_80A17B0C:
/* 80A17B0C  2C 00 00 03 */	cmpwi r0, 3
/* 80A17B10  40 80 01 98 */	bge lbl_80A17CA8
/* 80A17B14  48 00 01 34 */	b lbl_80A17C48
lbl_80A17B18:
/* 80A17B18  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A17B1C  28 00 00 02 */	cmplwi r0, 2
/* 80A17B20  40 82 00 60 */	bne lbl_80A17B80
/* 80A17B24  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17B28  2C 00 00 08 */	cmpwi r0, 8
/* 80A17B2C  41 82 00 24 */	beq lbl_80A17B50
/* 80A17B30  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17B34  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17B38  4B 72 DD 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17B3C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17B40  38 00 00 08 */	li r0, 8
/* 80A17B44  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17B48  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17B4C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17B50:
/* 80A17B50  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17B54  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A17B58  41 82 00 80 */	beq lbl_80A17BD8
/* 80A17B5C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17B60  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17B64  4B 72 DD 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17B68  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17B6C  38 00 00 11 */	li r0, 0x11
/* 80A17B70  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17B74  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17B78  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A17B7C  48 00 00 5C */	b lbl_80A17BD8
lbl_80A17B80:
/* 80A17B80  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17B84  2C 00 00 08 */	cmpwi r0, 8
/* 80A17B88  41 82 00 24 */	beq lbl_80A17BAC
/* 80A17B8C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17B90  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17B94  4B 72 DD 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17B98  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17B9C  38 00 00 08 */	li r0, 8
/* 80A17BA0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17BA4  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17BA8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17BAC:
/* 80A17BAC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17BB0  2C 00 00 00 */	cmpwi r0, 0
/* 80A17BB4  41 82 00 24 */	beq lbl_80A17BD8
/* 80A17BB8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17BBC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17BC0  4B 72 DC D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17BC4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17BC8  38 00 00 00 */	li r0, 0
/* 80A17BCC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17BD0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17BD4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A17BD8:
/* 80A17BD8  38 00 00 00 */	li r0, 0
/* 80A17BDC  98 1E 10 03 */	stb r0, 0x1003(r30)
/* 80A17BE0  48 00 00 C8 */	b lbl_80A17CA8
lbl_80A17BE4:
/* 80A17BE4  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17BE8  2C 00 00 08 */	cmpwi r0, 8
/* 80A17BEC  41 82 00 24 */	beq lbl_80A17C10
/* 80A17BF0  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17BF4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17BF8  4B 72 DC A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17BFC  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17C00  38 00 00 08 */	li r0, 8
/* 80A17C04  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17C08  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17C0C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17C10:
/* 80A17C10  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17C14  2C 00 00 02 */	cmpwi r0, 2
/* 80A17C18  41 82 00 24 */	beq lbl_80A17C3C
/* 80A17C1C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17C20  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17C24  4B 72 DC 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17C28  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17C2C  38 00 00 02 */	li r0, 2
/* 80A17C30  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17C34  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17C38  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A17C3C:
/* 80A17C3C  38 00 00 01 */	li r0, 1
/* 80A17C40  98 1E 10 03 */	stb r0, 0x1003(r30)
/* 80A17C44  48 00 00 64 */	b lbl_80A17CA8
lbl_80A17C48:
/* 80A17C48  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17C4C  2C 00 00 08 */	cmpwi r0, 8
/* 80A17C50  41 82 00 24 */	beq lbl_80A17C74
/* 80A17C54  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17C58  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17C5C  4B 72 DC 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17C60  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17C64  38 00 00 08 */	li r0, 8
/* 80A17C68  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17C6C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17C70  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17C74:
/* 80A17C74  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17C78  2C 00 00 03 */	cmpwi r0, 3
/* 80A17C7C  41 82 00 24 */	beq lbl_80A17CA0
/* 80A17C80  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17C84  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17C88  4B 72 DC 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17C8C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17C90  38 00 00 03 */	li r0, 3
/* 80A17C94  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17C98  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17C9C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A17CA0:
/* 80A17CA0  38 00 00 02 */	li r0, 2
/* 80A17CA4  98 1E 10 03 */	stb r0, 0x1003(r30)
lbl_80A17CA8:
/* 80A17CA8  38 00 00 02 */	li r0, 2
/* 80A17CAC  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A17CB0  48 00 03 28 */	b lbl_80A17FD8
lbl_80A17CB4:
/* 80A17CB4  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A17CB8  2C 00 00 00 */	cmpwi r0, 0
/* 80A17CBC  40 82 03 1C */	bne lbl_80A17FD8
/* 80A17CC0  88 1E 10 04 */	lbz r0, 0x1004(r30)
/* 80A17CC4  2C 00 00 01 */	cmpwi r0, 1
/* 80A17CC8  41 82 01 58 */	beq lbl_80A17E20
/* 80A17CCC  40 80 00 10 */	bge lbl_80A17CDC
/* 80A17CD0  2C 00 00 00 */	cmpwi r0, 0
/* 80A17CD4  40 80 00 14 */	bge lbl_80A17CE8
/* 80A17CD8  48 00 02 F8 */	b lbl_80A17FD0
lbl_80A17CDC:
/* 80A17CDC  2C 00 00 03 */	cmpwi r0, 3
/* 80A17CE0  40 80 02 F0 */	bge lbl_80A17FD0
/* 80A17CE4  48 00 02 0C */	b lbl_80A17EF0
lbl_80A17CE8:
/* 80A17CE8  88 1E 10 03 */	lbz r0, 0x1003(r30)
/* 80A17CEC  2C 00 00 02 */	cmpwi r0, 2
/* 80A17CF0  41 82 00 08 */	beq lbl_80A17CF8
/* 80A17CF4  48 00 00 60 */	b lbl_80A17D54
lbl_80A17CF8:
/* 80A17CF8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17CFC  2C 00 00 08 */	cmpwi r0, 8
/* 80A17D00  41 82 00 24 */	beq lbl_80A17D24
/* 80A17D04  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17D08  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17D0C  4B 72 DB 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17D10  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17D14  38 00 00 08 */	li r0, 8
/* 80A17D18  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17D1C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17D20  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17D24:
/* 80A17D24  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17D28  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A17D2C  41 82 02 A4 */	beq lbl_80A17FD0
/* 80A17D30  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17D34  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17D38  4B 72 DB 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17D3C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17D40  38 00 00 0A */	li r0, 0xa
/* 80A17D44  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17D48  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17D4C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A17D50  48 00 02 80 */	b lbl_80A17FD0
lbl_80A17D54:
/* 80A17D54  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A17D58  28 00 00 02 */	cmplwi r0, 2
/* 80A17D5C  40 82 00 60 */	bne lbl_80A17DBC
/* 80A17D60  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17D64  2C 00 00 08 */	cmpwi r0, 8
/* 80A17D68  41 82 00 24 */	beq lbl_80A17D8C
/* 80A17D6C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17D70  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17D74  4B 72 DB 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17D78  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17D7C  38 00 00 08 */	li r0, 8
/* 80A17D80  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17D84  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17D88  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17D8C:
/* 80A17D8C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17D90  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A17D94  41 82 00 80 */	beq lbl_80A17E14
/* 80A17D98  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17D9C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17DA0  4B 72 DA F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17DA4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17DA8  38 00 00 11 */	li r0, 0x11
/* 80A17DAC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17DB0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17DB4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A17DB8  48 00 00 5C */	b lbl_80A17E14
lbl_80A17DBC:
/* 80A17DBC  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17DC0  2C 00 00 08 */	cmpwi r0, 8
/* 80A17DC4  41 82 00 24 */	beq lbl_80A17DE8
/* 80A17DC8  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17DCC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17DD0  4B 72 DA C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17DD4  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17DD8  38 00 00 08 */	li r0, 8
/* 80A17DDC  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17DE0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17DE4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17DE8:
/* 80A17DE8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17DEC  2C 00 00 00 */	cmpwi r0, 0
/* 80A17DF0  41 82 00 24 */	beq lbl_80A17E14
/* 80A17DF4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17DF8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17DFC  4B 72 DA 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17E00  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17E04  38 00 00 00 */	li r0, 0
/* 80A17E08  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17E0C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17E10  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A17E14:
/* 80A17E14  38 00 00 00 */	li r0, 0
/* 80A17E18  98 1E 10 03 */	stb r0, 0x1003(r30)
/* 80A17E1C  48 00 01 B4 */	b lbl_80A17FD0
lbl_80A17E20:
/* 80A17E20  88 1E 10 03 */	lbz r0, 0x1003(r30)
/* 80A17E24  2C 00 00 02 */	cmpwi r0, 2
/* 80A17E28  41 82 00 08 */	beq lbl_80A17E30
/* 80A17E2C  48 00 00 60 */	b lbl_80A17E8C
lbl_80A17E30:
/* 80A17E30  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17E34  2C 00 00 08 */	cmpwi r0, 8
/* 80A17E38  41 82 00 24 */	beq lbl_80A17E5C
/* 80A17E3C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17E40  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17E44  4B 72 DA 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17E48  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17E4C  38 00 00 08 */	li r0, 8
/* 80A17E50  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17E54  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17E58  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17E5C:
/* 80A17E5C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17E60  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A17E64  41 82 01 6C */	beq lbl_80A17FD0
/* 80A17E68  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17E6C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17E70  4B 72 DA 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17E74  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17E78  38 00 00 0B */	li r0, 0xb
/* 80A17E7C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17E80  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17E84  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A17E88  48 00 01 48 */	b lbl_80A17FD0
lbl_80A17E8C:
/* 80A17E8C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17E90  2C 00 00 08 */	cmpwi r0, 8
/* 80A17E94  41 82 00 24 */	beq lbl_80A17EB8
/* 80A17E98  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17E9C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17EA0  4B 72 D9 F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17EA4  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17EA8  38 00 00 08 */	li r0, 8
/* 80A17EAC  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17EB0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17EB4  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17EB8:
/* 80A17EB8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17EBC  2C 00 00 02 */	cmpwi r0, 2
/* 80A17EC0  41 82 00 24 */	beq lbl_80A17EE4
/* 80A17EC4  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17EC8  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17ECC  4B 72 D9 CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17ED0  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17ED4  38 00 00 02 */	li r0, 2
/* 80A17ED8  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17EDC  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17EE0  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A17EE4:
/* 80A17EE4  38 00 00 01 */	li r0, 1
/* 80A17EE8  98 1E 10 03 */	stb r0, 0x1003(r30)
/* 80A17EEC  48 00 00 E4 */	b lbl_80A17FD0
lbl_80A17EF0:
/* 80A17EF0  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A17EF4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A17EF8  7C 03 00 00 */	cmpw r3, r0
/* 80A17EFC  40 82 00 D4 */	bne lbl_80A17FD0
/* 80A17F00  88 1E 10 03 */	lbz r0, 0x1003(r30)
/* 80A17F04  2C 00 00 01 */	cmpwi r0, 1
/* 80A17F08  41 82 00 70 */	beq lbl_80A17F78
/* 80A17F0C  40 80 00 C4 */	bge lbl_80A17FD0
/* 80A17F10  2C 00 00 00 */	cmpwi r0, 0
/* 80A17F14  40 80 00 08 */	bge lbl_80A17F1C
/* 80A17F18  48 00 00 B8 */	b lbl_80A17FD0
lbl_80A17F1C:
/* 80A17F1C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17F20  2C 00 00 08 */	cmpwi r0, 8
/* 80A17F24  41 82 00 24 */	beq lbl_80A17F48
/* 80A17F28  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17F2C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17F30  4B 72 D9 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17F34  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17F38  38 00 00 08 */	li r0, 8
/* 80A17F3C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17F40  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17F44  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17F48:
/* 80A17F48  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17F4C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80A17F50  41 82 00 80 */	beq lbl_80A17FD0
/* 80A17F54  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17F58  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17F5C  4B 72 D9 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17F60  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17F64  38 00 00 0D */	li r0, 0xd
/* 80A17F68  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17F6C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17F70  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80A17F74  48 00 00 5C */	b lbl_80A17FD0
lbl_80A17F78:
/* 80A17F78  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A17F7C  2C 00 00 08 */	cmpwi r0, 8
/* 80A17F80  41 82 00 24 */	beq lbl_80A17FA4
/* 80A17F84  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A17F88  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A17F8C  4B 72 D9 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17F90  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A17F94  38 00 00 08 */	li r0, 8
/* 80A17F98  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A17F9C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17FA0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A17FA4:
/* 80A17FA4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A17FA8  2C 00 00 0C */	cmpwi r0, 0xc
/* 80A17FAC  41 82 00 24 */	beq lbl_80A17FD0
/* 80A17FB0  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A17FB4  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A17FB8  4B 72 D8 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A17FBC  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A17FC0  38 00 00 0C */	li r0, 0xc
/* 80A17FC4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A17FC8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A17FCC  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A17FD0:
/* 80A17FD0  38 00 00 02 */	li r0, 2
/* 80A17FD4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A17FD8:
/* 80A17FD8  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A17FDC  2C 00 00 01 */	cmpwi r0, 1
/* 80A17FE0  41 82 01 DC */	beq lbl_80A181BC
/* 80A17FE4  40 80 00 10 */	bge lbl_80A17FF4
/* 80A17FE8  2C 00 00 00 */	cmpwi r0, 0
/* 80A17FEC  40 80 00 14 */	bge lbl_80A18000
/* 80A17FF0  48 00 01 CC */	b lbl_80A181BC
lbl_80A17FF4:
/* 80A17FF4  2C 00 00 03 */	cmpwi r0, 3
/* 80A17FF8  40 80 01 C4 */	bge lbl_80A181BC
/* 80A17FFC  48 00 01 6C */	b lbl_80A18168
lbl_80A18000:
/* 80A18000  38 60 00 10 */	li r3, 0x10
/* 80A18004  4B 73 4B 28 */	b daNpcT_offTmpBit__FUl
/* 80A18008  38 7F 00 00 */	addi r3, r31, 0
/* 80A1800C  C0 43 00 54 */	lfs f2, 0x54(r3)
/* 80A18010  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80A18014  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80A18018  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80A1801C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80A18020  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A18024  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80A18028  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A1802C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80A18030  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A18034  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80A18038  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80A1803C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80A18040  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A18044  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A18048  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A1804C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A18050  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A18054  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A18058  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A1805C  D0 41 00 08 */	stfs f2, 8(r1)
/* 80A18060  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A18064  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A18068  7F C3 F3 78 */	mr r3, r30
/* 80A1806C  38 81 00 20 */	addi r4, r1, 0x20
/* 80A18070  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A18074  38 C1 00 08 */	addi r6, r1, 8
/* 80A18078  38 E0 00 00 */	li r7, 0
/* 80A1807C  4B 73 2D 24 */	b chkPointInArea__8daNpcT_cF4cXyz4cXyz4cXyzs
/* 80A18080  2C 03 00 00 */	cmpwi r3, 0
/* 80A18084  41 82 00 40 */	beq lbl_80A180C4
/* 80A18088  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A1808C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80A18090  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80A18094  7D 89 03 A6 */	mtctr r12
/* 80A18098  4E 80 04 21 */	bctrl 
/* 80A1809C  28 03 00 00 */	cmplwi r3, 0
/* 80A180A0  41 82 00 1C */	beq lbl_80A180BC
/* 80A180A4  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A180A8  80 03 05 80 */	lwz r0, 0x580(r3)
/* 80A180AC  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 80A180B0  41 82 00 0C */	beq lbl_80A180BC
/* 80A180B4  38 00 00 01 */	li r0, 1
/* 80A180B8  98 1E 10 02 */	stb r0, 0x1002(r30)
lbl_80A180BC:
/* 80A180BC  38 60 00 10 */	li r3, 0x10
/* 80A180C0  4B 73 4A 2C */	b daNpcT_onTmpBit__FUl
lbl_80A180C4:
/* 80A180C4  38 60 02 35 */	li r3, 0x235
/* 80A180C8  4B 73 49 E4 */	b daNpcT_chkEvtBit__FUl
/* 80A180CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A180D0  40 82 00 EC */	bne lbl_80A181BC
/* 80A180D4  38 60 00 AE */	li r3, 0xae
/* 80A180D8  4B 73 49 D4 */	b daNpcT_chkEvtBit__FUl
/* 80A180DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A180E0  40 82 00 20 */	bne lbl_80A18100
/* 80A180E4  38 60 00 1B */	li r3, 0x1b
/* 80A180E8  4B 73 4A 84 */	b daNpcT_chkTmpBit__FUl
/* 80A180EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A180F0  41 82 00 10 */	beq lbl_80A18100
/* 80A180F4  38 00 00 04 */	li r0, 4
/* 80A180F8  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80A180FC  48 00 00 C0 */	b lbl_80A181BC
lbl_80A18100:
/* 80A18100  7F C3 F3 78 */	mr r3, r30
/* 80A18104  4B FF F7 95 */	bl chkSitMotion__13daNpc_Jagar_cFv
/* 80A18108  2C 03 00 00 */	cmpwi r3, 0
/* 80A1810C  40 82 00 10 */	bne lbl_80A1811C
/* 80A18110  88 1E 10 02 */	lbz r0, 0x1002(r30)
/* 80A18114  28 00 00 00 */	cmplwi r0, 0
/* 80A18118  41 82 00 A4 */	beq lbl_80A181BC
lbl_80A1811C:
/* 80A1811C  38 60 02 35 */	li r3, 0x235
/* 80A18120  4B 73 49 8C */	b daNpcT_chkEvtBit__FUl
/* 80A18124  2C 03 00 00 */	cmpwi r3, 0
/* 80A18128  40 82 00 94 */	bne lbl_80A181BC
/* 80A1812C  38 60 00 87 */	li r3, 0x87
/* 80A18130  4B 73 49 7C */	b daNpcT_chkEvtBit__FUl
/* 80A18134  2C 03 00 00 */	cmpwi r3, 0
/* 80A18138  40 82 00 84 */	bne lbl_80A181BC
/* 80A1813C  38 60 00 10 */	li r3, 0x10
/* 80A18140  4B 73 4A 2C */	b daNpcT_chkTmpBit__FUl
/* 80A18144  2C 03 00 00 */	cmpwi r3, 0
/* 80A18148  41 82 00 74 */	beq lbl_80A181BC
/* 80A1814C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 80A18150  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 80A18154  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A18158  41 82 00 64 */	beq lbl_80A181BC
/* 80A1815C  38 00 00 03 */	li r0, 3
/* 80A18160  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80A18164  48 00 00 58 */	b lbl_80A181BC
lbl_80A18168:
/* 80A18168  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80A1816C  28 00 00 00 */	cmplwi r0, 0
/* 80A18170  40 82 00 4C */	bne lbl_80A181BC
/* 80A18174  80 7E 0F F0 */	lwz r3, 0xff0(r30)
/* 80A18178  80 9E 0F F4 */	lwz r4, 0xff4(r30)
/* 80A1817C  4B 73 48 9C */	b daNpcT_getDistTableIdx__Fii
/* 80A18180  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 80A18184  7F C3 F3 78 */	mr r3, r30
/* 80A18188  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80A1818C  80 DE 0F EC */	lwz r6, 0xfec(r30)
/* 80A18190  38 FF 00 00 */	addi r7, r31, 0
/* 80A18194  C0 27 00 54 */	lfs f1, 0x54(r7)
/* 80A18198  C0 5F 01 50 */	lfs f2, 0x150(r31)
/* 80A1819C  C0 67 00 58 */	lfs f3, 0x58(r7)
/* 80A181A0  C0 87 00 5C */	lfs f4, 0x5c(r7)
/* 80A181A4  38 E0 00 01 */	li r7, 1
/* 80A181A8  4B 73 2F 20 */	b chkFindWolf__8daNpcT_cFsiiffffi
/* 80A181AC  2C 03 00 00 */	cmpwi r3, 0
/* 80A181B0  41 82 00 0C */	beq lbl_80A181BC
/* 80A181B4  38 00 00 08 */	li r0, 8
/* 80A181B8  B0 1E 0E 30 */	sth r0, 0xe30(r30)
lbl_80A181BC:
/* 80A181BC  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A181C0  2C 00 00 00 */	cmpwi r0, 0
/* 80A181C4  40 82 03 8C */	bne lbl_80A18550
/* 80A181C8  7F C3 F3 78 */	mr r3, r30
/* 80A181CC  4B FF F8 2D */	bl chkToMotion__13daNpc_Jagar_cFv
/* 80A181D0  2C 03 00 00 */	cmpwi r3, 0
/* 80A181D4  41 82 01 B0 */	beq lbl_80A18384
/* 80A181D8  80 1E 0B 84 */	lwz r0, 0xb84(r30)
/* 80A181DC  2C 00 00 00 */	cmpwi r0, 0
/* 80A181E0  40 81 01 58 */	ble lbl_80A18338
/* 80A181E4  88 1E 10 04 */	lbz r0, 0x1004(r30)
/* 80A181E8  2C 00 00 01 */	cmpwi r0, 1
/* 80A181EC  41 82 00 84 */	beq lbl_80A18270
/* 80A181F0  40 80 00 10 */	bge lbl_80A18200
/* 80A181F4  2C 00 00 00 */	cmpwi r0, 0
/* 80A181F8  40 80 00 14 */	bge lbl_80A1820C
/* 80A181FC  48 00 01 50 */	b lbl_80A1834C
lbl_80A18200:
/* 80A18200  2C 00 00 03 */	cmpwi r0, 3
/* 80A18204  40 80 01 48 */	bge lbl_80A1834C
/* 80A18208  48 00 00 CC */	b lbl_80A182D4
lbl_80A1820C:
/* 80A1820C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A18210  2C 00 00 08 */	cmpwi r0, 8
/* 80A18214  41 82 00 24 */	beq lbl_80A18238
/* 80A18218  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A1821C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A18220  4B 72 D6 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A18224  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A18228  38 00 00 08 */	li r0, 8
/* 80A1822C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A18230  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A18234  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A18238:
/* 80A18238  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A1823C  2C 00 00 00 */	cmpwi r0, 0
/* 80A18240  41 82 00 24 */	beq lbl_80A18264
/* 80A18244  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A18248  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A1824C  4B 72 D6 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A18250  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A18254  38 00 00 00 */	li r0, 0
/* 80A18258  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A1825C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A18260  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A18264:
/* 80A18264  38 00 00 00 */	li r0, 0
/* 80A18268  98 1E 10 03 */	stb r0, 0x1003(r30)
/* 80A1826C  48 00 00 E0 */	b lbl_80A1834C
lbl_80A18270:
/* 80A18270  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A18274  2C 00 00 08 */	cmpwi r0, 8
/* 80A18278  41 82 00 24 */	beq lbl_80A1829C
/* 80A1827C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A18280  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A18284  4B 72 D6 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A18288  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A1828C  38 00 00 08 */	li r0, 8
/* 80A18290  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A18294  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A18298  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A1829C:
/* 80A1829C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A182A0  2C 00 00 02 */	cmpwi r0, 2
/* 80A182A4  41 82 00 24 */	beq lbl_80A182C8
/* 80A182A8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A182AC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A182B0  4B 72 D5 E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A182B4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A182B8  38 00 00 02 */	li r0, 2
/* 80A182BC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A182C0  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A182C4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A182C8:
/* 80A182C8  38 00 00 01 */	li r0, 1
/* 80A182CC  98 1E 10 03 */	stb r0, 0x1003(r30)
/* 80A182D0  48 00 00 7C */	b lbl_80A1834C
lbl_80A182D4:
/* 80A182D4  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A182D8  2C 00 00 08 */	cmpwi r0, 8
/* 80A182DC  41 82 00 24 */	beq lbl_80A18300
/* 80A182E0  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A182E4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A182E8  4B 72 D5 B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A182EC  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A182F0  38 00 00 08 */	li r0, 8
/* 80A182F4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A182F8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A182FC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A18300:
/* 80A18300  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A18304  2C 00 00 03 */	cmpwi r0, 3
/* 80A18308  41 82 00 24 */	beq lbl_80A1832C
/* 80A1830C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A18310  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A18314  4B 72 D5 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A18318  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A1831C  38 00 00 03 */	li r0, 3
/* 80A18320  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A18324  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80A18328  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A1832C:
/* 80A1832C  38 00 00 02 */	li r0, 2
/* 80A18330  98 1E 10 03 */	stb r0, 0x1003(r30)
/* 80A18334  48 00 00 18 */	b lbl_80A1834C
lbl_80A18338:
/* 80A18338  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A1833C  2C 00 00 0B */	cmpwi r0, 0xb
/* 80A18340  41 82 00 0C */	beq lbl_80A1834C
/* 80A18344  38 00 00 00 */	li r0, 0
/* 80A18348  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A1834C:
/* 80A1834C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A18350  2C 00 00 00 */	cmpwi r0, 0
/* 80A18354  41 82 00 24 */	beq lbl_80A18378
/* 80A18358  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A1835C  4B 72 D3 A0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A18360  38 00 00 00 */	li r0, 0
/* 80A18364  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A18368  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A1836C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A18370  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18374  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A18378:
/* 80A18378  38 00 00 00 */	li r0, 0
/* 80A1837C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18380  48 00 01 D0 */	b lbl_80A18550
lbl_80A18384:
/* 80A18384  88 1E 10 04 */	lbz r0, 0x1004(r30)
/* 80A18388  28 00 00 02 */	cmplwi r0, 2
/* 80A1838C  40 82 00 10 */	bne lbl_80A1839C
/* 80A18390  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A18394  4B 72 D3 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A18398  48 00 00 20 */	b lbl_80A183B8
lbl_80A1839C:
/* 80A1839C  28 00 00 01 */	cmplwi r0, 1
/* 80A183A0  40 82 00 18 */	bne lbl_80A183B8
/* 80A183A4  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A183A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A183AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A183B0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80A183B4  4B 72 D3 2C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80A183B8:
/* 80A183B8  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A183BC  4B 72 D3 4C */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A183C0  28 03 00 00 */	cmplwi r3, 0
/* 80A183C4  41 82 00 EC */	beq lbl_80A184B0
/* 80A183C8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A183CC  2C 00 00 01 */	cmpwi r0, 1
/* 80A183D0  41 82 00 28 */	beq lbl_80A183F8
/* 80A183D4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A183D8  4B 72 D3 24 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A183DC  38 00 00 00 */	li r0, 0
/* 80A183E0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A183E4  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A183E8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A183EC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A183F0  38 00 00 01 */	li r0, 1
/* 80A183F4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A183F8:
/* 80A183F8  38 00 00 00 */	li r0, 0
/* 80A183FC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A18400  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80A18404  4B 72 D3 04 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A18408  7C 64 1B 78 */	mr r4, r3
/* 80A1840C  7F C3 F3 78 */	mr r3, r30
/* 80A18410  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80A18414  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80A18418  4B 73 27 B8 */	b chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80A1841C  2C 03 00 00 */	cmpwi r3, 0
/* 80A18420  40 82 00 38 */	bne lbl_80A18458
/* 80A18424  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A18428  2C 00 00 00 */	cmpwi r0, 0
/* 80A1842C  41 82 00 24 */	beq lbl_80A18450
/* 80A18430  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A18434  4B 72 D2 C8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A18438  38 00 00 00 */	li r0, 0
/* 80A1843C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A18440  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A18444  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A18448  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A1844C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A18450:
/* 80A18450  38 00 00 00 */	li r0, 0
/* 80A18454  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80A18458:
/* 80A18458  7F C3 F3 78 */	mr r3, r30
/* 80A1845C  4B 73 2E DC */	b srchPlayerActor__8daNpcT_cFv
/* 80A18460  2C 03 00 00 */	cmpwi r3, 0
/* 80A18464  40 82 00 EC */	bne lbl_80A18550
/* 80A18468  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80A1846C  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A18470  7C 03 00 00 */	cmpw r3, r0
/* 80A18474  40 82 00 0C */	bne lbl_80A18480
/* 80A18478  38 00 00 01 */	li r0, 1
/* 80A1847C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A18480:
/* 80A18480  88 1E 10 03 */	lbz r0, 0x1003(r30)
/* 80A18484  28 00 00 01 */	cmplwi r0, 1
/* 80A18488  40 82 00 C8 */	bne lbl_80A18550
/* 80A1848C  38 60 00 86 */	li r3, 0x86
/* 80A18490  4B 73 46 1C */	b daNpcT_chkEvtBit__FUl
/* 80A18494  2C 03 00 00 */	cmpwi r3, 0
/* 80A18498  40 82 00 0C */	bne lbl_80A184A4
/* 80A1849C  38 60 00 86 */	li r3, 0x86
/* 80A184A0  4B 73 45 8C */	b daNpcT_onEvtBit__FUl
lbl_80A184A4:
/* 80A184A4  38 00 00 01 */	li r0, 1
/* 80A184A8  98 1E 10 01 */	stb r0, 0x1001(r30)
/* 80A184AC  48 00 00 A4 */	b lbl_80A18550
lbl_80A184B0:
/* 80A184B0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A184B4  2C 00 00 00 */	cmpwi r0, 0
/* 80A184B8  41 82 00 24 */	beq lbl_80A184DC
/* 80A184BC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A184C0  4B 72 D2 3C */	b remove__18daNpcT_ActorMngr_cFv
/* 80A184C4  38 00 00 00 */	li r0, 0
/* 80A184C8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A184CC  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80A184D0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A184D4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A184D8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A184DC:
/* 80A184DC  38 00 00 00 */	li r0, 0
/* 80A184E0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A184E4  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80A184E8  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80A184EC  7C 04 00 00 */	cmpw r4, r0
/* 80A184F0  41 82 00 58 */	beq lbl_80A18548
/* 80A184F4  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80A184F8  28 00 00 00 */	cmplwi r0, 0
/* 80A184FC  41 82 00 30 */	beq lbl_80A1852C
/* 80A18500  7F C3 F3 78 */	mr r3, r30
/* 80A18504  38 A0 00 08 */	li r5, 8
/* 80A18508  38 C0 00 0E */	li r6, 0xe
/* 80A1850C  38 E0 00 0F */	li r7, 0xf
/* 80A18510  39 00 00 00 */	li r8, 0
/* 80A18514  4B 73 31 34 */	b step__8daNpcT_cFsiiii
/* 80A18518  2C 03 00 00 */	cmpwi r3, 0
/* 80A1851C  41 82 00 20 */	beq lbl_80A1853C
/* 80A18520  38 00 00 01 */	li r0, 1
/* 80A18524  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80A18528  48 00 00 14 */	b lbl_80A1853C
lbl_80A1852C:
/* 80A1852C  7F C3 F3 78 */	mr r3, r30
/* 80A18530  4B 73 24 E8 */	b setAngle__8daNpcT_cFs
/* 80A18534  38 00 00 01 */	li r0, 1
/* 80A18538  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A1853C:
/* 80A1853C  38 00 00 00 */	li r0, 0
/* 80A18540  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80A18544  48 00 00 0C */	b lbl_80A18550
lbl_80A18548:
/* 80A18548  7F C3 F3 78 */	mr r3, r30
/* 80A1854C  4B 73 2D EC */	b srchPlayerActor__8daNpcT_cFv
lbl_80A18550:
/* 80A18550  38 60 00 01 */	li r3, 1
/* 80A18554  39 61 00 50 */	addi r11, r1, 0x50
/* 80A18558  4B 94 9C D0 */	b _restgpr_29
/* 80A1855C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80A18560  7C 08 03 A6 */	mtlr r0
/* 80A18564  38 21 00 50 */	addi r1, r1, 0x50
/* 80A18568  4E 80 00 20 */	blr 
