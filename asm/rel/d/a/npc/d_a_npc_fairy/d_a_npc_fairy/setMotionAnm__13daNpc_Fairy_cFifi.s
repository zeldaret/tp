lbl_809B2C20:
/* 809B2C20  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 809B2C24  7C 08 02 A6 */	mflr r0
/* 809B2C28  90 01 00 94 */	stw r0, 0x94(r1)
/* 809B2C2C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 809B2C30  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 809B2C34  39 61 00 80 */	addi r11, r1, 0x80
/* 809B2C38  4B 9A F5 9D */	bl _savegpr_27
/* 809B2C3C  7C 7B 1B 78 */	mr r27, r3
/* 809B2C40  7C 9C 23 78 */	mr r28, r4
/* 809B2C44  FF E0 08 90 */	fmr f31, f1
/* 809B2C48  7C BD 2B 78 */	mr r29, r5
/* 809B2C4C  3B E0 00 00 */	li r31, 0
/* 809B2C50  3B C0 00 00 */	li r30, 0
/* 809B2C54  80 63 0D 98 */	lwz r3, 0xd98(r3)
/* 809B2C58  38 00 FC 30 */	li r0, -976
/* 809B2C5C  7C 60 00 38 */	and r0, r3, r0
/* 809B2C60  90 1B 0D 98 */	stw r0, 0xd98(r27)
/* 809B2C64  80 7B 05 6C */	lwz r3, 0x56c(r27)
/* 809B2C68  1C 1C 00 1C */	mulli r0, r28, 0x1c
/* 809B2C6C  38 A1 00 0C */	addi r5, r1, 0xc
/* 809B2C70  7C 83 02 14 */	add r4, r3, r0
/* 809B2C74  38 00 00 03 */	li r0, 3
/* 809B2C78  7C 09 03 A6 */	mtctr r0
/* 809B2C7C  38 84 FF FC */	addi r4, r4, -4
lbl_809B2C80:
/* 809B2C80  80 64 00 04 */	lwz r3, 4(r4)
/* 809B2C84  84 04 00 08 */	lwzu r0, 8(r4)
/* 809B2C88  90 65 00 04 */	stw r3, 4(r5)
/* 809B2C8C  94 05 00 08 */	stwu r0, 8(r5)
/* 809B2C90  42 00 FF F0 */	bdnz lbl_809B2C80
/* 809B2C94  80 04 00 04 */	lwz r0, 4(r4)
/* 809B2C98  90 05 00 04 */	stw r0, 4(r5)
/* 809B2C9C  38 61 00 2C */	addi r3, r1, 0x2c
/* 809B2CA0  7F 64 DB 78 */	mr r4, r27
/* 809B2CA4  38 A1 00 10 */	addi r5, r1, 0x10
/* 809B2CA8  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 809B2CAC  81 8C 00 AC */	lwz r12, 0xac(r12)
/* 809B2CB0  7D 89 03 A6 */	mtctr r12
/* 809B2CB4  4E 80 04 21 */	bctrl 
/* 809B2CB8  38 A1 00 44 */	addi r5, r1, 0x44
/* 809B2CBC  38 81 00 28 */	addi r4, r1, 0x28
/* 809B2CC0  38 00 00 03 */	li r0, 3
/* 809B2CC4  7C 09 03 A6 */	mtctr r0
lbl_809B2CC8:
/* 809B2CC8  80 64 00 04 */	lwz r3, 4(r4)
/* 809B2CCC  84 04 00 08 */	lwzu r0, 8(r4)
/* 809B2CD0  90 65 00 04 */	stw r3, 4(r5)
/* 809B2CD4  94 05 00 08 */	stwu r0, 8(r5)
/* 809B2CD8  42 00 FF F0 */	bdnz lbl_809B2CC8
/* 809B2CDC  80 04 00 04 */	lwz r0, 4(r4)
/* 809B2CE0  90 05 00 04 */	stw r0, 4(r5)
/* 809B2CE4  80 A1 00 48 */	lwz r5, 0x48(r1)
/* 809B2CE8  2C 05 FF FF */	cmpwi r5, -1
/* 809B2CEC  41 82 00 20 */	beq lbl_809B2D0C
/* 809B2CF0  7F 63 DB 78 */	mr r3, r27
/* 809B2CF4  80 9B 05 74 */	lwz r4, 0x574(r27)
/* 809B2CF8  80 01 00 50 */	lwz r0, 0x50(r1)
/* 809B2CFC  54 00 10 3A */	slwi r0, r0, 2
/* 809B2D00  7C 84 00 2E */	lwzx r4, r4, r0
/* 809B2D04  4B 79 53 91 */	bl getTrnsfrmKeyAnmP__8daNpcT_cFPCci
/* 809B2D08  7C 7F 1B 78 */	mr r31, r3
lbl_809B2D0C:
/* 809B2D0C  2C 1D 00 00 */	cmpwi r29, 0
/* 809B2D10  41 82 00 2C */	beq lbl_809B2D3C
/* 809B2D14  80 7B 05 78 */	lwz r3, 0x578(r27)
/* 809B2D18  80 03 00 08 */	lwz r0, 8(r3)
/* 809B2D1C  7C 1F 00 40 */	cmplw r31, r0
/* 809B2D20  40 82 00 1C */	bne lbl_809B2D3C
/* 809B2D24  80 1B 0D 98 */	lwz r0, 0xd98(r27)
/* 809B2D28  60 00 00 40 */	ori r0, r0, 0x40
/* 809B2D2C  90 1B 0D 98 */	stw r0, 0xd98(r27)
/* 809B2D30  38 00 00 00 */	li r0, 0
/* 809B2D34  B0 1B 0E 1E */	sth r0, 0xe1e(r27)
/* 809B2D38  48 00 00 4C */	b lbl_809B2D84
lbl_809B2D3C:
/* 809B2D3C  7F 63 DB 78 */	mr r3, r27
/* 809B2D40  7F E4 FB 78 */	mr r4, r31
/* 809B2D44  3C A0 80 9C */	lis r5, lit_3916@ha /* 0x809B9378@ha */
/* 809B2D48  C0 25 93 78 */	lfs f1, lit_3916@l(r5)  /* 0x809B9378@l */
/* 809B2D4C  FC 40 F8 90 */	fmr f2, f31
/* 809B2D50  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 809B2D54  38 C0 00 00 */	li r6, 0
/* 809B2D58  38 E0 FF FF */	li r7, -1
/* 809B2D5C  4B 79 54 A9 */	bl setMcaMorfAnm__8daNpcT_cFP18J3DAnmTransformKeyffiii
/* 809B2D60  2C 03 00 00 */	cmpwi r3, 0
/* 809B2D64  41 82 00 1C */	beq lbl_809B2D80
/* 809B2D68  80 1B 0D 98 */	lwz r0, 0xd98(r27)
/* 809B2D6C  60 00 00 41 */	ori r0, r0, 0x41
/* 809B2D70  90 1B 0D 98 */	stw r0, 0xd98(r27)
/* 809B2D74  38 00 00 00 */	li r0, 0
/* 809B2D78  B0 1B 0E 1E */	sth r0, 0xe1e(r27)
/* 809B2D7C  48 00 00 08 */	b lbl_809B2D84
lbl_809B2D80:
/* 809B2D80  3B E0 00 00 */	li r31, 0
lbl_809B2D84:
/* 809B2D84  28 1F 00 00 */	cmplwi r31, 0
/* 809B2D88  40 82 00 18 */	bne lbl_809B2DA0
/* 809B2D8C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 809B2D90  2C 00 FF FF */	cmpwi r0, -1
/* 809B2D94  41 82 00 0C */	beq lbl_809B2DA0
/* 809B2D98  38 60 00 00 */	li r3, 0
/* 809B2D9C  48 00 00 BC */	b lbl_809B2E58
lbl_809B2DA0:
/* 809B2DA0  38 00 00 00 */	li r0, 0
/* 809B2DA4  98 1B 0E 29 */	stb r0, 0xe29(r27)
/* 809B2DA8  98 1B 0E 2A */	stb r0, 0xe2a(r27)
/* 809B2DAC  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 809B2DB0  2C 1D FF FF */	cmpwi r29, -1
/* 809B2DB4  41 82 00 5C */	beq lbl_809B2E10
/* 809B2DB8  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 809B2DBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 809B2DC0  93 A1 00 08 */	stw r29, 8(r1)
/* 809B2DC4  7F 63 DB 78 */	mr r3, r27
/* 809B2DC8  38 81 00 08 */	addi r4, r1, 8
/* 809B2DCC  38 A1 00 0C */	addi r5, r1, 0xc
/* 809B2DD0  81 9B 0E 3C */	lwz r12, 0xe3c(r27)
/* 809B2DD4  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 809B2DD8  7D 89 03 A6 */	mtctr r12
/* 809B2DDC  4E 80 04 21 */	bctrl 
/* 809B2DE0  A8 01 00 60 */	lha r0, 0x60(r1)
/* 809B2DE4  98 1B 0E 29 */	stb r0, 0xe29(r27)
/* 809B2DE8  A8 01 00 62 */	lha r0, 0x62(r1)
/* 809B2DEC  98 1B 0E 2A */	stb r0, 0xe2a(r27)
/* 809B2DF0  7F 63 DB 78 */	mr r3, r27
/* 809B2DF4  80 9B 05 74 */	lwz r4, 0x574(r27)
/* 809B2DF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809B2DFC  54 00 10 3A */	slwi r0, r0, 2
/* 809B2E00  7C 84 00 2E */	lwzx r4, r4, r0
/* 809B2E04  80 A1 00 08 */	lwz r5, 8(r1)
/* 809B2E08  4B 79 53 05 */	bl getTexSRTKeyAnmP__8daNpcT_cFPCci
/* 809B2E0C  7C 7E 1B 78 */	mr r30, r3
lbl_809B2E10:
/* 809B2E10  80 1B 0D 98 */	lwz r0, 0xd98(r27)
/* 809B2E14  60 00 00 80 */	ori r0, r0, 0x80
/* 809B2E18  90 1B 0D 98 */	stw r0, 0xd98(r27)
/* 809B2E1C  28 1E 00 00 */	cmplwi r30, 0
/* 809B2E20  40 82 00 14 */	bne lbl_809B2E34
/* 809B2E24  2C 1D FF FF */	cmpwi r29, -1
/* 809B2E28  41 82 00 0C */	beq lbl_809B2E34
/* 809B2E2C  38 60 00 00 */	li r3, 0
/* 809B2E30  48 00 00 28 */	b lbl_809B2E58
lbl_809B2E34:
/* 809B2E34  80 1B 0D 98 */	lwz r0, 0xd98(r27)
/* 809B2E38  60 00 03 80 */	ori r0, r0, 0x380
/* 809B2E3C  90 1B 0D 98 */	stw r0, 0xd98(r27)
/* 809B2E40  7F 63 DB 78 */	mr r3, r27
/* 809B2E44  7F 84 E3 78 */	mr r4, r28
/* 809B2E48  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 809B2E4C  FC 20 F8 90 */	fmr f1, f31
/* 809B2E50  80 C1 00 58 */	lwz r6, 0x58(r1)
/* 809B2E54  48 00 00 25 */	bl afterSetMotionAnm__13daNpc_Fairy_cFiifi
lbl_809B2E58:
/* 809B2E58  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 809B2E5C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 809B2E60  39 61 00 80 */	addi r11, r1, 0x80
/* 809B2E64  4B 9A F3 BD */	bl _restgpr_27
/* 809B2E68  80 01 00 94 */	lwz r0, 0x94(r1)
/* 809B2E6C  7C 08 03 A6 */	mtlr r0
/* 809B2E70  38 21 00 90 */	addi r1, r1, 0x90
/* 809B2E74  4E 80 00 20 */	blr 
