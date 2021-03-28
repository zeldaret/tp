lbl_80AD2B68:
/* 80AD2B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD2B6C  7C 08 02 A6 */	mflr r0
/* 80AD2B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD2B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD2B78  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD2B7C  7C 7F 1B 78 */	mr r31, r3
/* 80AD2B80  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AD2B84  2C 00 00 02 */	cmpwi r0, 2
/* 80AD2B88  41 82 00 C8 */	beq lbl_80AD2C50
/* 80AD2B8C  40 80 01 E4 */	bge lbl_80AD2D70
/* 80AD2B90  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2B94  40 80 00 0C */	bge lbl_80AD2BA0
/* 80AD2B98  48 00 01 D8 */	b lbl_80AD2D70
/* 80AD2B9C  48 00 01 D4 */	b lbl_80AD2D70
lbl_80AD2BA0:
/* 80AD2BA0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AD2BA4  2C 00 00 02 */	cmpwi r0, 2
/* 80AD2BA8  41 82 00 28 */	beq lbl_80AD2BD0
/* 80AD2BAC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AD2BB0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD2BB4  4B 67 2C E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2BB8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AD2BBC  38 00 00 02 */	li r0, 2
/* 80AD2BC0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AD2BC4  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2BC8  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2BCC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AD2BD0:
/* 80AD2BD0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD2BD4  2C 00 00 02 */	cmpwi r0, 2
/* 80AD2BD8  41 82 00 28 */	beq lbl_80AD2C00
/* 80AD2BDC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AD2BE0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD2BE4  4B 67 2C B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2BE8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AD2BEC  38 00 00 02 */	li r0, 2
/* 80AD2BF0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AD2BF4  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2BF8  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2BFC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AD2C00:
/* 80AD2C00  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AD2C04  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2C08  41 82 00 28 */	beq lbl_80AD2C30
/* 80AD2C0C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AD2C10  4B 67 2A EC */	b remove__18daNpcT_ActorMngr_cFv
/* 80AD2C14  38 00 00 00 */	li r0, 0
/* 80AD2C18  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AD2C1C  3C 60 80 AD */	lis r3, lit_4055@ha
/* 80AD2C20  C0 03 4B 08 */	lfs f0, lit_4055@l(r3)
/* 80AD2C24  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AD2C28  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD2C2C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AD2C30:
/* 80AD2C30  38 00 00 00 */	li r0, 0
/* 80AD2C34  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AD2C38  38 60 00 5A */	li r3, 0x5a
/* 80AD2C3C  38 80 00 5A */	li r4, 0x5a
/* 80AD2C40  48 00 1A 95 */	bl func_80AD46D4
/* 80AD2C44  90 7F 10 E4 */	stw r3, 0x10e4(r31)
/* 80AD2C48  38 00 00 02 */	li r0, 2
/* 80AD2C4C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AD2C50:
/* 80AD2C50  80 1F 10 E8 */	lwz r0, 0x10e8(r31)
/* 80AD2C54  2C 00 00 02 */	cmpwi r0, 2
/* 80AD2C58  40 82 00 10 */	bne lbl_80AD2C68
/* 80AD2C5C  38 00 00 01 */	li r0, 1
/* 80AD2C60  98 1F 0E 32 */	stb r0, 0xe32(r31)
/* 80AD2C64  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80AD2C68:
/* 80AD2C68  80 1F 10 E4 */	lwz r0, 0x10e4(r31)
/* 80AD2C6C  2C 00 00 00 */	cmpwi r0, 0
/* 80AD2C70  40 82 00 F8 */	bne lbl_80AD2D68
/* 80AD2C74  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD2C78  2C 00 00 02 */	cmpwi r0, 2
/* 80AD2C7C  40 82 00 68 */	bne lbl_80AD2CE4
/* 80AD2C80  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AD2C84  2C 00 00 03 */	cmpwi r0, 3
/* 80AD2C88  41 82 00 28 */	beq lbl_80AD2CB0
/* 80AD2C8C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AD2C90  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD2C94  4B 67 2C 04 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2C98  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AD2C9C  38 00 00 03 */	li r0, 3
/* 80AD2CA0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AD2CA4  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2CA8  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2CAC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AD2CB0:
/* 80AD2CB0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD2CB4  2C 00 00 0E */	cmpwi r0, 0xe
/* 80AD2CB8  41 82 00 B8 */	beq lbl_80AD2D70
/* 80AD2CBC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AD2CC0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD2CC4  4B 67 2B D4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2CC8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AD2CCC  38 00 00 0E */	li r0, 0xe
/* 80AD2CD0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AD2CD4  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2CD8  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2CDC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AD2CE0  48 00 00 90 */	b lbl_80AD2D70
lbl_80AD2CE4:
/* 80AD2CE4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD2CE8  4B 67 2D 3C */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80AD2CEC  2C 03 00 00 */	cmpwi r3, 0
/* 80AD2CF0  41 82 00 80 */	beq lbl_80AD2D70
/* 80AD2CF4  38 60 00 5A */	li r3, 0x5a
/* 80AD2CF8  38 80 00 5A */	li r4, 0x5a
/* 80AD2CFC  48 00 19 D9 */	bl func_80AD46D4
/* 80AD2D00  90 7F 10 E4 */	stw r3, 0x10e4(r31)
/* 80AD2D04  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AD2D08  2C 00 00 02 */	cmpwi r0, 2
/* 80AD2D0C  41 82 00 28 */	beq lbl_80AD2D34
/* 80AD2D10  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AD2D14  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD2D18  4B 67 2B 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2D1C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AD2D20  38 00 00 02 */	li r0, 2
/* 80AD2D24  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AD2D28  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2D2C  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2D30  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AD2D34:
/* 80AD2D34  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AD2D38  2C 00 00 02 */	cmpwi r0, 2
/* 80AD2D3C  41 82 00 34 */	beq lbl_80AD2D70
/* 80AD2D40  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AD2D44  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD2D48  4B 67 2B 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD2D4C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AD2D50  38 00 00 02 */	li r0, 2
/* 80AD2D54  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AD2D58  3C 60 80 AD */	lis r3, lit_4661@ha
/* 80AD2D5C  C0 03 4B 20 */	lfs f0, lit_4661@l(r3)
/* 80AD2D60  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AD2D64  48 00 00 0C */	b lbl_80AD2D70
lbl_80AD2D68:
/* 80AD2D68  38 7F 10 E4 */	addi r3, r31, 0x10e4
/* 80AD2D6C  48 00 19 4D */	bl func_80AD46B8
lbl_80AD2D70:
/* 80AD2D70  38 60 00 01 */	li r3, 1
/* 80AD2D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD2D78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD2D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD2D80  7C 08 03 A6 */	mtlr r0
/* 80AD2D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD2D88  4E 80 00 20 */	blr 
