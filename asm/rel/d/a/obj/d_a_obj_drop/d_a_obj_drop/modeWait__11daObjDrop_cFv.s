lbl_80BE0C08:
/* 80BE0C08  94 21 FE A0 */	stwu r1, -0x160(r1)
/* 80BE0C0C  7C 08 02 A6 */	mflr r0
/* 80BE0C10  90 01 01 64 */	stw r0, 0x164(r1)
/* 80BE0C14  DB E1 01 50 */	stfd f31, 0x150(r1)
/* 80BE0C18  F3 E1 01 58 */	psq_st f31, 344(r1), 0, 0 /* qr0 */
/* 80BE0C1C  DB C1 01 40 */	stfd f30, 0x140(r1)
/* 80BE0C20  F3 C1 01 48 */	psq_st f30, 328(r1), 0, 0 /* qr0 */
/* 80BE0C24  DB A1 01 30 */	stfd f29, 0x130(r1)
/* 80BE0C28  F3 A1 01 38 */	psq_st f29, 312(r1), 0, 0 /* qr0 */
/* 80BE0C2C  DB 81 01 20 */	stfd f28, 0x120(r1)
/* 80BE0C30  F3 81 01 28 */	psq_st f28, 296(r1), 0, 0 /* qr0 */
/* 80BE0C34  39 61 01 20 */	addi r11, r1, 0x120
/* 80BE0C38  4B 78 15 79 */	bl _savegpr_18
/* 80BE0C3C  7C 76 1B 78 */	mr r22, r3
/* 80BE0C40  3C 60 80 BE */	lis r3, l_sizuku_body_effect_list@ha /* 0x80BE1F88@ha */
/* 80BE0C44  3B 63 1F 88 */	addi r27, r3, l_sizuku_body_effect_list@l /* 0x80BE1F88@l */
/* 80BE0C48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE0C4C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE0C50  83 5C 5D AC */	lwz r26, 0x5dac(r28)
/* 80BE0C54  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80BE0C58  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80BE0C5C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80BE0C60  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80BE0C64  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80BE0C68  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80BE0C6C  7F 43 D3 78 */	mr r3, r26
/* 80BE0C70  81 9A 06 28 */	lwz r12, 0x628(r26)
/* 80BE0C74  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80BE0C78  7D 89 03 A6 */	mtctr r12
/* 80BE0C7C  4E 80 04 21 */	bctrl 
/* 80BE0C80  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE0C84  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE0C88  4B 76 58 29 */	bl PSMTXCopy
/* 80BE0C8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE0C90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE0C94  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80BE0C98  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80BE0C9C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80BE0CA0  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 80BE0CA4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80BE0CA8  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 80BE0CAC  88 16 06 B2 */	lbz r0, 0x6b2(r22)
/* 80BE0CB0  2C 00 00 05 */	cmpwi r0, 5
/* 80BE0CB4  41 82 06 AC */	beq lbl_80BE1360
/* 80BE0CB8  40 80 00 20 */	bge lbl_80BE0CD8
/* 80BE0CBC  2C 00 00 03 */	cmpwi r0, 3
/* 80BE0CC0  41 82 02 78 */	beq lbl_80BE0F38
/* 80BE0CC4  40 80 02 F8 */	bge lbl_80BE0FBC
/* 80BE0CC8  2C 00 00 00 */	cmpwi r0, 0
/* 80BE0CCC  41 82 00 1C */	beq lbl_80BE0CE8
/* 80BE0CD0  40 80 00 5C */	bge lbl_80BE0D2C
/* 80BE0CD4  48 00 06 B8 */	b lbl_80BE138C
lbl_80BE0CD8:
/* 80BE0CD8  2C 00 00 32 */	cmpwi r0, 0x32
/* 80BE0CDC  41 82 00 50 */	beq lbl_80BE0D2C
/* 80BE0CE0  40 80 06 AC */	bge lbl_80BE138C
/* 80BE0CE4  48 00 06 A8 */	b lbl_80BE138C
lbl_80BE0CE8:
/* 80BE0CE8  88 76 06 B1 */	lbz r3, 0x6b1(r22)
/* 80BE0CEC  7C 60 07 75 */	extsb. r0, r3
/* 80BE0CF0  40 81 00 10 */	ble lbl_80BE0D00
/* 80BE0CF4  38 03 FF FF */	addi r0, r3, -1
/* 80BE0CF8  98 16 06 B1 */	stb r0, 0x6b1(r22)
/* 80BE0CFC  48 00 06 90 */	b lbl_80BE138C
lbl_80BE0D00:
/* 80BE0D00  C0 16 04 A8 */	lfs f0, 0x4a8(r22)
/* 80BE0D04  D0 16 0A 6C */	stfs f0, 0xa6c(r22)
/* 80BE0D08  C0 16 04 AC */	lfs f0, 0x4ac(r22)
/* 80BE0D0C  D0 16 0A 70 */	stfs f0, 0xa70(r22)
/* 80BE0D10  C0 16 04 B0 */	lfs f0, 0x4b0(r22)
/* 80BE0D14  D0 16 0A 74 */	stfs f0, 0xa74(r22)
/* 80BE0D18  C0 1B 00 58 */	lfs f0, 0x58(r27)
/* 80BE0D1C  D0 16 05 2C */	stfs f0, 0x52c(r22)
/* 80BE0D20  38 00 00 01 */	li r0, 1
/* 80BE0D24  98 16 06 B2 */	stb r0, 0x6b2(r22)
/* 80BE0D28  48 00 06 64 */	b lbl_80BE138C
lbl_80BE0D2C:
/* 80BE0D2C  38 76 05 2C */	addi r3, r22, 0x52c
/* 80BE0D30  C0 3B 00 98 */	lfs f1, 0x98(r27)
/* 80BE0D34  C0 5B 00 9C */	lfs f2, 0x9c(r27)
/* 80BE0D38  4B 68 FA 09 */	bl cLib_chaseF__FPfff
/* 80BE0D3C  88 16 06 B2 */	lbz r0, 0x6b2(r22)
/* 80BE0D40  28 00 00 01 */	cmplwi r0, 1
/* 80BE0D44  40 82 00 14 */	bne lbl_80BE0D58
/* 80BE0D48  38 76 04 D0 */	addi r3, r22, 0x4d0
/* 80BE0D4C  38 96 0A 6C */	addi r4, r22, 0xa6c
/* 80BE0D50  C0 36 05 2C */	lfs f1, 0x52c(r22)
/* 80BE0D54  4B 68 FA 59 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
lbl_80BE0D58:
/* 80BE0D58  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BE0D5C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BE0D60  80 16 06 A4 */	lwz r0, 0x6a4(r22)
/* 80BE0D64  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80BE0D68  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BE0D6C  7C 63 02 14 */	add r3, r3, r0
/* 80BE0D70  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BE0D74  C0 3B 00 A0 */	lfs f1, 0xa0(r27)
/* 80BE0D78  FC 00 00 50 */	fneg f0, f0
/* 80BE0D7C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BE0D80  D0 16 04 FC */	stfs f0, 0x4fc(r22)
/* 80BE0D84  C0 36 04 D4 */	lfs f1, 0x4d4(r22)
/* 80BE0D88  C0 16 04 FC */	lfs f0, 0x4fc(r22)
/* 80BE0D8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE0D90  D0 16 04 D4 */	stfs f0, 0x4d4(r22)
/* 80BE0D94  38 76 0A 6C */	addi r3, r22, 0xa6c
/* 80BE0D98  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 80BE0D9C  4B 76 66 01 */	bl PSVECSquareDistance
/* 80BE0DA0  C0 1B 00 58 */	lfs f0, 0x58(r27)
/* 80BE0DA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE0DA8  40 81 00 58 */	ble lbl_80BE0E00
/* 80BE0DAC  FC 00 08 34 */	frsqrte f0, f1
/* 80BE0DB0  C8 9B 00 60 */	lfd f4, 0x60(r27)
/* 80BE0DB4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE0DB8  C8 7B 00 68 */	lfd f3, 0x68(r27)
/* 80BE0DBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE0DC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE0DC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE0DC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE0DCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE0DD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE0DD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE0DD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE0DDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE0DE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE0DE4  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE0DE8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE0DEC  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE0DF0  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE0DF4  FC 21 00 32 */	fmul f1, f1, f0
/* 80BE0DF8  FC 20 08 18 */	frsp f1, f1
/* 80BE0DFC  48 00 00 88 */	b lbl_80BE0E84
lbl_80BE0E00:
/* 80BE0E00  C8 1B 00 70 */	lfd f0, 0x70(r27)
/* 80BE0E04  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE0E08  40 80 00 10 */	bge lbl_80BE0E18
/* 80BE0E0C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE0E10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE0E14  48 00 00 70 */	b lbl_80BE0E84
lbl_80BE0E18:
/* 80BE0E18  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BE0E1C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 80BE0E20  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE0E24  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE0E28  7C 03 00 00 */	cmpw r3, r0
/* 80BE0E2C  41 82 00 14 */	beq lbl_80BE0E40
/* 80BE0E30  40 80 00 40 */	bge lbl_80BE0E70
/* 80BE0E34  2C 03 00 00 */	cmpwi r3, 0
/* 80BE0E38  41 82 00 20 */	beq lbl_80BE0E58
/* 80BE0E3C  48 00 00 34 */	b lbl_80BE0E70
lbl_80BE0E40:
/* 80BE0E40  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE0E44  41 82 00 0C */	beq lbl_80BE0E50
/* 80BE0E48  38 00 00 01 */	li r0, 1
/* 80BE0E4C  48 00 00 28 */	b lbl_80BE0E74
lbl_80BE0E50:
/* 80BE0E50  38 00 00 02 */	li r0, 2
/* 80BE0E54  48 00 00 20 */	b lbl_80BE0E74
lbl_80BE0E58:
/* 80BE0E58  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE0E5C  41 82 00 0C */	beq lbl_80BE0E68
/* 80BE0E60  38 00 00 05 */	li r0, 5
/* 80BE0E64  48 00 00 10 */	b lbl_80BE0E74
lbl_80BE0E68:
/* 80BE0E68  38 00 00 03 */	li r0, 3
/* 80BE0E6C  48 00 00 08 */	b lbl_80BE0E74
lbl_80BE0E70:
/* 80BE0E70  38 00 00 04 */	li r0, 4
lbl_80BE0E74:
/* 80BE0E74  2C 00 00 01 */	cmpwi r0, 1
/* 80BE0E78  40 82 00 0C */	bne lbl_80BE0E84
/* 80BE0E7C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE0E80  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BE0E84:
/* 80BE0E84  C0 1B 00 A4 */	lfs f0, 0xa4(r27)
/* 80BE0E88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE0E8C  40 80 00 0C */	bge lbl_80BE0E98
/* 80BE0E90  38 00 00 02 */	li r0, 2
/* 80BE0E94  98 16 06 B2 */	stb r0, 0x6b2(r22)
lbl_80BE0E98:
/* 80BE0E98  7E C3 B3 78 */	mr r3, r22
/* 80BE0E9C  4B FF F5 95 */	bl checkGetArea__11daObjDrop_cFv
/* 80BE0EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80BE0EA4  41 82 04 E8 */	beq lbl_80BE138C
/* 80BE0EA8  38 60 00 00 */	li r3, 0
/* 80BE0EAC  38 80 00 00 */	li r4, 0
/* 80BE0EB0  3C A0 80 43 */	lis r5, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80BE0EB4  38 C5 0C F4 */	addi r6, r5, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80BE0EB8  3C A0 80 45 */	lis r5, Zero__5csXyz@ha /* 0x80451160@ha */
/* 80BE0EBC  38 A5 11 60 */	addi r5, r5, Zero__5csXyz@l /* 0x80451160@l */
/* 80BE0EC0  38 00 00 03 */	li r0, 3
/* 80BE0EC4  7C 09 03 A6 */	mtctr r0
lbl_80BE0EC8:
/* 80BE0EC8  C0 16 04 D0 */	lfs f0, 0x4d0(r22)
/* 80BE0ECC  7C F6 22 14 */	add r7, r22, r4
/* 80BE0ED0  D0 07 05 68 */	stfs f0, 0x568(r7)
/* 80BE0ED4  C0 16 04 D4 */	lfs f0, 0x4d4(r22)
/* 80BE0ED8  D0 07 05 6C */	stfs f0, 0x56c(r7)
/* 80BE0EDC  C0 16 04 D8 */	lfs f0, 0x4d8(r22)
/* 80BE0EE0  D0 07 05 70 */	stfs f0, 0x570(r7)
/* 80BE0EE4  C0 06 00 00 */	lfs f0, 0(r6)
/* 80BE0EE8  D0 07 05 8C */	stfs f0, 0x58c(r7)
/* 80BE0EEC  C0 06 00 04 */	lfs f0, 4(r6)
/* 80BE0EF0  D0 07 05 90 */	stfs f0, 0x590(r7)
/* 80BE0EF4  C0 06 00 08 */	lfs f0, 8(r6)
/* 80BE0EF8  D0 07 05 94 */	stfs f0, 0x594(r7)
/* 80BE0EFC  A8 05 00 00 */	lha r0, 0(r5)
/* 80BE0F00  7C F6 1A 14 */	add r7, r22, r3
/* 80BE0F04  B0 07 05 B0 */	sth r0, 0x5b0(r7)
/* 80BE0F08  A8 05 00 02 */	lha r0, 2(r5)
/* 80BE0F0C  B0 07 05 B2 */	sth r0, 0x5b2(r7)
/* 80BE0F10  A8 05 00 04 */	lha r0, 4(r5)
/* 80BE0F14  B0 07 05 B4 */	sth r0, 0x5b4(r7)
/* 80BE0F18  38 63 00 06 */	addi r3, r3, 6
/* 80BE0F1C  38 84 00 0C */	addi r4, r4, 0xc
/* 80BE0F20  42 00 FF A8 */	bdnz lbl_80BE0EC8
/* 80BE0F24  7E C3 B3 78 */	mr r3, r22
/* 80BE0F28  4B FF F7 31 */	bl createLineEffect__11daObjDrop_cFv
/* 80BE0F2C  38 00 00 03 */	li r0, 3
/* 80BE0F30  98 16 06 B2 */	stb r0, 0x6b2(r22)
/* 80BE0F34  48 00 04 58 */	b lbl_80BE138C
lbl_80BE0F38:
/* 80BE0F38  7E C3 B3 78 */	mr r3, r22
/* 80BE0F3C  4B FF F9 05 */	bl removeBodyEffect__11daObjDrop_cFv
/* 80BE0F40  38 60 00 00 */	li r3, 0
/* 80BE0F44  38 80 00 00 */	li r4, 0
/* 80BE0F48  38 FB 00 90 */	addi r7, r27, 0x90
/* 80BE0F4C  38 DB 00 88 */	addi r6, r27, 0x88
/* 80BE0F50  38 00 00 03 */	li r0, 3
/* 80BE0F54  7C 09 03 A6 */	mtctr r0
lbl_80BE0F58:
/* 80BE0F58  7C A7 22 AE */	lhax r5, r7, r4
/* 80BE0F5C  38 03 05 B0 */	addi r0, r3, 0x5b0
/* 80BE0F60  7C B6 03 2E */	sthx r5, r22, r0
/* 80BE0F64  7C A6 22 AE */	lhax r5, r6, r4
/* 80BE0F68  38 04 05 C2 */	addi r0, r4, 0x5c2
/* 80BE0F6C  7C B6 03 2E */	sthx r5, r22, r0
/* 80BE0F70  38 63 00 06 */	addi r3, r3, 6
/* 80BE0F74  38 84 00 02 */	addi r4, r4, 2
/* 80BE0F78  42 00 FF E0 */	bdnz lbl_80BE0F58
/* 80BE0F7C  38 00 00 04 */	li r0, 4
/* 80BE0F80  98 16 06 B2 */	stb r0, 0x6b2(r22)
/* 80BE0F84  38 00 00 3C */	li r0, 0x3c
/* 80BE0F88  98 16 06 B6 */	stb r0, 0x6b6(r22)
/* 80BE0F8C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800EF@ha */
/* 80BE0F90  38 03 00 EF */	addi r0, r3, 0x00EF /* 0x000800EF@l */
/* 80BE0F94  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BE0F98  38 76 06 C0 */	addi r3, r22, 0x6c0
/* 80BE0F9C  38 81 00 20 */	addi r4, r1, 0x20
/* 80BE0FA0  38 A0 00 00 */	li r5, 0
/* 80BE0FA4  38 C0 FF FF */	li r6, -1
/* 80BE0FA8  81 96 06 D0 */	lwz r12, 0x6d0(r22)
/* 80BE0FAC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BE0FB0  7D 89 03 A6 */	mtctr r12
/* 80BE0FB4  4E 80 04 21 */	bctrl 
/* 80BE0FB8  48 00 03 D4 */	b lbl_80BE138C
lbl_80BE0FBC:
/* 80BE0FBC  88 76 06 B6 */	lbz r3, 0x6b6(r22)
/* 80BE0FC0  38 03 FF FF */	addi r0, r3, -1
/* 80BE0FC4  98 16 06 B6 */	stb r0, 0x6b6(r22)
/* 80BE0FC8  3A E0 00 00 */	li r23, 0
/* 80BE0FCC  3A A0 00 00 */	li r21, 0
/* 80BE0FD0  3A 80 00 00 */	li r20, 0
/* 80BE0FD4  3A 60 00 00 */	li r19, 0
/* 80BE0FD8  C3 DB 00 A8 */	lfs f30, 0xa8(r27)
/* 80BE0FDC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BE0FE0  3B A3 9A 20 */	addi r29, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BE0FE4  3C 60 80 BE */	lis r3, __vt__8cM3dGLin@ha /* 0x80BE21A8@ha */
/* 80BE0FE8  3B C3 21 A8 */	addi r30, r3, __vt__8cM3dGLin@l /* 0x80BE21A8@l */
/* 80BE0FEC  3C 60 80 BE */	lis r3, __vt__8cM3dGSph@ha /* 0x80BE21FC@ha */
/* 80BE0FF0  3B E3 21 FC */	addi r31, r3, __vt__8cM3dGSph@l /* 0x80BE21FC@l */
/* 80BE0FF4  C3 FB 00 58 */	lfs f31, 0x58(r27)
lbl_80BE0FF8:
/* 80BE0FF8  D3 D6 05 2C */	stfs f30, 0x52c(r22)
/* 80BE0FFC  80 7C 5D AC */	lwz r3, 0x5dac(r28)
/* 80BE1000  88 03 05 6A */	lbz r0, 0x56a(r3)
/* 80BE1004  28 00 00 2C */	cmplwi r0, 0x2c
/* 80BE1008  40 82 00 0C */	bne lbl_80BE1014
/* 80BE100C  C0 1B 00 78 */	lfs f0, 0x78(r27)
/* 80BE1010  D0 16 05 2C */	stfs f0, 0x52c(r22)
lbl_80BE1014:
/* 80BE1014  7F 16 9A 14 */	add r24, r22, r19
/* 80BE1018  A8 18 05 B0 */	lha r0, 0x5b0(r24)
/* 80BE101C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BE1020  7C 7D 02 14 */	add r3, r29, r0
/* 80BE1024  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BE1028  C0 36 05 2C */	lfs f1, 0x52c(r22)
/* 80BE102C  EF A1 00 32 */	fmuls f29, f1, f0
/* 80BE1030  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BE1034  EF 81 00 32 */	fmuls f28, f1, f0
/* 80BE1038  7F 36 A2 14 */	add r25, r22, r20
/* 80BE103C  C0 21 00 A8 */	lfs f1, 0xa8(r1)
/* 80BE1040  C0 19 05 68 */	lfs f0, 0x568(r25)
/* 80BE1044  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BE1048  C0 41 00 B0 */	lfs f2, 0xb0(r1)
/* 80BE104C  C0 19 05 70 */	lfs f0, 0x570(r25)
/* 80BE1050  EC 42 00 28 */	fsubs f2, f2, f0
/* 80BE1054  4B 68 66 21 */	bl cM_atan2s__Fff
/* 80BE1058  7E 56 AA 14 */	add r18, r22, r21
/* 80BE105C  A8 12 05 C2 */	lha r0, 0x5c2(r18)
/* 80BE1060  7C 03 02 14 */	add r0, r3, r0
/* 80BE1064  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BE1068  7C 7D 02 14 */	add r3, r29, r0
/* 80BE106C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BE1070  EC 3D 00 32 */	fmuls f1, f29, f0
/* 80BE1074  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 80BE1078  D3 81 00 A0 */	stfs f28, 0xa0(r1)
/* 80BE107C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BE1080  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80BE1084  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80BE1088  38 79 05 8C */	addi r3, r25, 0x58c
/* 80BE108C  C0 5B 00 AC */	lfs f2, 0xac(r27)
/* 80BE1090  C0 7B 00 B0 */	lfs f3, 0xb0(r27)
/* 80BE1094  C0 9B 00 7C */	lfs f4, 0x7c(r27)
/* 80BE1098  4B 68 E8 E5 */	bl cLib_addCalc__FPfffff
/* 80BE109C  38 79 05 90 */	addi r3, r25, 0x590
/* 80BE10A0  FC 20 E0 18 */	frsp f1, f28
/* 80BE10A4  C0 5B 00 AC */	lfs f2, 0xac(r27)
/* 80BE10A8  C0 7B 00 B0 */	lfs f3, 0xb0(r27)
/* 80BE10AC  C0 9B 00 7C */	lfs f4, 0x7c(r27)
/* 80BE10B0  4B 68 E8 CD */	bl cLib_addCalc__FPfffff
/* 80BE10B4  38 79 05 94 */	addi r3, r25, 0x594
/* 80BE10B8  C0 21 00 A4 */	lfs f1, 0xa4(r1)
/* 80BE10BC  C0 5B 00 AC */	lfs f2, 0xac(r27)
/* 80BE10C0  C0 7B 00 B0 */	lfs f3, 0xb0(r27)
/* 80BE10C4  C0 9B 00 7C */	lfs f4, 0x7c(r27)
/* 80BE10C8  4B 68 E8 B5 */	bl cLib_addCalc__FPfffff
/* 80BE10CC  38 72 05 C2 */	addi r3, r18, 0x5c2
/* 80BE10D0  38 80 00 00 */	li r4, 0
/* 80BE10D4  38 A0 00 0A */	li r5, 0xa
/* 80BE10D8  38 C0 03 84 */	li r6, 0x384
/* 80BE10DC  38 E0 00 C8 */	li r7, 0xc8
/* 80BE10E0  4B 68 F4 61 */	bl cLib_addCalcAngleS__FPsssss
/* 80BE10E4  C0 19 05 68 */	lfs f0, 0x568(r25)
/* 80BE10E8  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80BE10EC  C0 19 05 6C */	lfs f0, 0x56c(r25)
/* 80BE10F0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80BE10F4  C0 19 05 70 */	lfs f0, 0x570(r25)
/* 80BE10F8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80BE10FC  C0 39 05 68 */	lfs f1, 0x568(r25)
/* 80BE1100  C0 19 05 8C */	lfs f0, 0x58c(r25)
/* 80BE1104  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE1108  D0 19 05 68 */	stfs f0, 0x568(r25)
/* 80BE110C  C0 39 05 6C */	lfs f1, 0x56c(r25)
/* 80BE1110  C0 19 05 90 */	lfs f0, 0x590(r25)
/* 80BE1114  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE1118  D0 19 05 6C */	stfs f0, 0x56c(r25)
/* 80BE111C  C0 39 05 70 */	lfs f1, 0x570(r25)
/* 80BE1120  C0 19 05 94 */	lfs f0, 0x594(r25)
/* 80BE1124  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE1128  D0 19 05 70 */	stfs f0, 0x570(r25)
/* 80BE112C  93 C1 00 E0 */	stw r30, 0xe0(r1)
/* 80BE1130  93 E1 00 C4 */	stw r31, 0xc4(r1)
/* 80BE1134  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80BE1138  38 81 00 90 */	addi r4, r1, 0x90
/* 80BE113C  38 B9 05 68 */	addi r5, r25, 0x568
/* 80BE1140  4B 68 E1 A9 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80BE1144  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80BE1148  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80BE114C  C0 3B 00 50 */	lfs f1, 0x50(r27)
/* 80BE1150  4B 68 E5 15 */	bl Set__8cM3dGSphFRC4cXyzf
/* 80BE1154  38 61 00 C8 */	addi r3, r1, 0xc8
/* 80BE1158  38 81 00 B4 */	addi r4, r1, 0xb4
/* 80BE115C  38 A1 00 84 */	addi r5, r1, 0x84
/* 80BE1160  4B 68 A1 21 */	bl cM3d_Cross_LinSph__FPC8cM3dGLinPC8cM3dGSphP3Vec
/* 80BE1164  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE1168  41 82 00 28 */	beq lbl_80BE1190
/* 80BE116C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80BE1170  D0 19 05 68 */	stfs f0, 0x568(r25)
/* 80BE1174  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80BE1178  D0 19 05 6C */	stfs f0, 0x56c(r25)
/* 80BE117C  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80BE1180  D0 19 05 70 */	stfs f0, 0x570(r25)
/* 80BE1184  38 60 00 01 */	li r3, 1
/* 80BE1188  38 17 05 C8 */	addi r0, r23, 0x5c8
/* 80BE118C  7C 76 01 AE */	stbx r3, r22, r0
lbl_80BE1190:
/* 80BE1190  C0 39 05 70 */	lfs f1, 0x570(r25)
/* 80BE1194  C0 19 05 68 */	lfs f0, 0x568(r25)
/* 80BE1198  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80BE119C  D3 E1 00 58 */	stfs f31, 0x58(r1)
/* 80BE11A0  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80BE11A4  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 80BE11A8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80BE11AC  D3 E1 00 64 */	stfs f31, 0x64(r1)
/* 80BE11B0  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80BE11B4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80BE11B8  38 61 00 54 */	addi r3, r1, 0x54
/* 80BE11BC  38 81 00 60 */	addi r4, r1, 0x60
/* 80BE11C0  4B 76 61 DD */	bl PSVECSquareDistance
/* 80BE11C4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80BE11C8  40 81 00 58 */	ble lbl_80BE1220
/* 80BE11CC  FC 00 08 34 */	frsqrte f0, f1
/* 80BE11D0  C8 9B 00 60 */	lfd f4, 0x60(r27)
/* 80BE11D4  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE11D8  C8 7B 00 68 */	lfd f3, 0x68(r27)
/* 80BE11DC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE11E0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE11E4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE11E8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE11EC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE11F0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE11F4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE11F8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE11FC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE1200  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE1204  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE1208  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE120C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE1210  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE1214  FC 41 00 32 */	fmul f2, f1, f0
/* 80BE1218  FC 40 10 18 */	frsp f2, f2
/* 80BE121C  48 00 00 90 */	b lbl_80BE12AC
lbl_80BE1220:
/* 80BE1220  C8 1B 00 70 */	lfd f0, 0x70(r27)
/* 80BE1224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE1228  40 80 00 10 */	bge lbl_80BE1238
/* 80BE122C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE1230  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE1234  48 00 00 78 */	b lbl_80BE12AC
lbl_80BE1238:
/* 80BE1238  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BE123C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80BE1240  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE1244  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE1248  7C 03 00 00 */	cmpw r3, r0
/* 80BE124C  41 82 00 14 */	beq lbl_80BE1260
/* 80BE1250  40 80 00 40 */	bge lbl_80BE1290
/* 80BE1254  2C 03 00 00 */	cmpwi r3, 0
/* 80BE1258  41 82 00 20 */	beq lbl_80BE1278
/* 80BE125C  48 00 00 34 */	b lbl_80BE1290
lbl_80BE1260:
/* 80BE1260  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE1264  41 82 00 0C */	beq lbl_80BE1270
/* 80BE1268  38 00 00 01 */	li r0, 1
/* 80BE126C  48 00 00 28 */	b lbl_80BE1294
lbl_80BE1270:
/* 80BE1270  38 00 00 02 */	li r0, 2
/* 80BE1274  48 00 00 20 */	b lbl_80BE1294
lbl_80BE1278:
/* 80BE1278  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE127C  41 82 00 0C */	beq lbl_80BE1288
/* 80BE1280  38 00 00 05 */	li r0, 5
/* 80BE1284  48 00 00 10 */	b lbl_80BE1294
lbl_80BE1288:
/* 80BE1288  38 00 00 03 */	li r0, 3
/* 80BE128C  48 00 00 08 */	b lbl_80BE1294
lbl_80BE1290:
/* 80BE1290  38 00 00 04 */	li r0, 4
lbl_80BE1294:
/* 80BE1294  2C 00 00 01 */	cmpwi r0, 1
/* 80BE1298  40 82 00 10 */	bne lbl_80BE12A8
/* 80BE129C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE12A0  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE12A4  48 00 00 08 */	b lbl_80BE12AC
lbl_80BE12A8:
/* 80BE12A8  FC 40 08 90 */	fmr f2, f1
lbl_80BE12AC:
/* 80BE12AC  C0 21 00 AC */	lfs f1, 0xac(r1)
/* 80BE12B0  C0 19 05 6C */	lfs f0, 0x56c(r25)
/* 80BE12B4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BE12B8  4B 68 63 BD */	bl cM_atan2s__Fff
/* 80BE12BC  7C 64 1B 78 */	mr r4, r3
/* 80BE12C0  38 78 05 B0 */	addi r3, r24, 0x5b0
/* 80BE12C4  38 A0 00 05 */	li r5, 5
/* 80BE12C8  38 C0 05 DC */	li r6, 0x5dc
/* 80BE12CC  38 E0 01 F4 */	li r7, 0x1f4
/* 80BE12D0  4B 68 F2 71 */	bl cLib_addCalcAngleS__FPsssss
/* 80BE12D4  93 E1 00 C4 */	stw r31, 0xc4(r1)
/* 80BE12D8  93 C1 00 E0 */	stw r30, 0xe0(r1)
/* 80BE12DC  3A F7 00 01 */	addi r23, r23, 1
/* 80BE12E0  2C 17 00 03 */	cmpwi r23, 3
/* 80BE12E4  3A B5 00 02 */	addi r21, r21, 2
/* 80BE12E8  3A 94 00 0C */	addi r20, r20, 0xc
/* 80BE12EC  3A 73 00 06 */	addi r19, r19, 6
/* 80BE12F0  41 80 FD 08 */	blt lbl_80BE0FF8
/* 80BE12F4  88 16 05 C8 */	lbz r0, 0x5c8(r22)
/* 80BE12F8  28 00 00 00 */	cmplwi r0, 0
/* 80BE12FC  40 82 00 28 */	bne lbl_80BE1324
/* 80BE1300  88 16 05 C9 */	lbz r0, 0x5c9(r22)
/* 80BE1304  28 00 00 00 */	cmplwi r0, 0
/* 80BE1308  40 82 00 1C */	bne lbl_80BE1324
/* 80BE130C  88 16 05 CA */	lbz r0, 0x5ca(r22)
/* 80BE1310  28 00 00 00 */	cmplwi r0, 0
/* 80BE1314  40 82 00 10 */	bne lbl_80BE1324
/* 80BE1318  88 16 06 B6 */	lbz r0, 0x6b6(r22)
/* 80BE131C  28 00 00 00 */	cmplwi r0, 0
/* 80BE1320  40 82 00 6C */	bne lbl_80BE138C
lbl_80BE1324:
/* 80BE1324  80 1A 05 88 */	lwz r0, 0x588(r26)
/* 80BE1328  64 00 20 00 */	oris r0, r0, 0x2000
/* 80BE132C  90 1A 05 88 */	stw r0, 0x588(r26)
/* 80BE1330  80 1A 05 7C */	lwz r0, 0x57c(r26)
/* 80BE1334  64 00 00 20 */	oris r0, r0, 0x20
/* 80BE1338  90 1A 05 7C */	stw r0, 0x57c(r26)
/* 80BE133C  7E C3 B3 78 */	mr r3, r22
/* 80BE1340  4B FF F3 DD */	bl removeLineEffect__11daObjDrop_cFv
/* 80BE1344  38 00 00 46 */	li r0, 0x46
/* 80BE1348  98 16 06 B5 */	stb r0, 0x6b5(r22)
/* 80BE134C  7E C3 B3 78 */	mr r3, r22
/* 80BE1350  4B FF F2 8D */	bl checkCompleteDemo__11daObjDrop_cFv
/* 80BE1354  38 00 00 05 */	li r0, 5
/* 80BE1358  98 16 06 B2 */	stb r0, 0x6b2(r22)
/* 80BE135C  48 00 00 30 */	b lbl_80BE138C
lbl_80BE1360:
/* 80BE1360  38 76 06 B5 */	addi r3, r22, 0x6b5
/* 80BE1364  48 00 0B D5 */	bl func_80BE1F38
/* 80BE1368  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE136C  40 82 00 20 */	bne lbl_80BE138C
/* 80BE1370  38 00 00 06 */	li r0, 6
/* 80BE1374  98 16 06 B2 */	stb r0, 0x6b2(r22)
/* 80BE1378  88 16 06 BA */	lbz r0, 0x6ba(r22)
/* 80BE137C  28 00 00 00 */	cmplwi r0, 0
/* 80BE1380  40 82 00 0C */	bne lbl_80BE138C
/* 80BE1384  7E C3 B3 78 */	mr r3, r22
/* 80BE1388  4B 43 88 F5 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80BE138C:
/* 80BE138C  88 16 06 B2 */	lbz r0, 0x6b2(r22)
/* 80BE1390  28 00 00 00 */	cmplwi r0, 0
/* 80BE1394  41 82 00 1C */	beq lbl_80BE13B0
/* 80BE1398  28 00 00 01 */	cmplwi r0, 1
/* 80BE139C  41 82 00 14 */	beq lbl_80BE13B0
/* 80BE13A0  28 00 00 02 */	cmplwi r0, 2
/* 80BE13A4  41 82 00 0C */	beq lbl_80BE13B0
/* 80BE13A8  28 00 00 03 */	cmplwi r0, 3
/* 80BE13AC  40 82 00 30 */	bne lbl_80BE13DC
lbl_80BE13B0:
/* 80BE13B0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800EE@ha */
/* 80BE13B4  38 03 00 EE */	addi r0, r3, 0x00EE /* 0x000800EE@l */
/* 80BE13B8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BE13BC  38 76 06 C0 */	addi r3, r22, 0x6c0
/* 80BE13C0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80BE13C4  38 A0 00 00 */	li r5, 0
/* 80BE13C8  38 C0 FF FF */	li r6, -1
/* 80BE13CC  81 96 06 D0 */	lwz r12, 0x6d0(r22)
/* 80BE13D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80BE13D4  7D 89 03 A6 */	mtctr r12
/* 80BE13D8  4E 80 04 21 */	bctrl 
lbl_80BE13DC:
/* 80BE13DC  88 16 06 B2 */	lbz r0, 0x6b2(r22)
/* 80BE13E0  28 00 00 02 */	cmplwi r0, 2
/* 80BE13E4  40 82 04 C0 */	bne lbl_80BE18A4
/* 80BE13E8  C0 56 0A 74 */	lfs f2, 0xa74(r22)
/* 80BE13EC  C0 16 0A 6C */	lfs f0, 0xa6c(r22)
/* 80BE13F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BE13F4  C0 3B 00 58 */	lfs f1, 0x58(r27)
/* 80BE13F8  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80BE13FC  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80BE1400  C0 56 04 D8 */	lfs f2, 0x4d8(r22)
/* 80BE1404  C0 16 04 D0 */	lfs f0, 0x4d0(r22)
/* 80BE1408  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BE140C  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80BE1410  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80BE1414  38 61 00 3C */	addi r3, r1, 0x3c
/* 80BE1418  38 81 00 48 */	addi r4, r1, 0x48
/* 80BE141C  4B 76 5F 81 */	bl PSVECSquareDistance
/* 80BE1420  C0 1B 00 58 */	lfs f0, 0x58(r27)
/* 80BE1424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE1428  40 81 00 58 */	ble lbl_80BE1480
/* 80BE142C  FC 00 08 34 */	frsqrte f0, f1
/* 80BE1430  C8 9B 00 60 */	lfd f4, 0x60(r27)
/* 80BE1434  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE1438  C8 7B 00 68 */	lfd f3, 0x68(r27)
/* 80BE143C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE1440  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE1444  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE1448  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE144C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE1450  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE1454  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE1458  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE145C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE1460  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE1464  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE1468  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE146C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE1470  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE1474  FC 21 00 32 */	fmul f1, f1, f0
/* 80BE1478  FC 20 08 18 */	frsp f1, f1
/* 80BE147C  48 00 00 88 */	b lbl_80BE1504
lbl_80BE1480:
/* 80BE1480  C8 1B 00 70 */	lfd f0, 0x70(r27)
/* 80BE1484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE1488  40 80 00 10 */	bge lbl_80BE1498
/* 80BE148C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE1490  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE1494  48 00 00 70 */	b lbl_80BE1504
lbl_80BE1498:
/* 80BE1498  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80BE149C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80BE14A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE14A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE14A8  7C 03 00 00 */	cmpw r3, r0
/* 80BE14AC  41 82 00 14 */	beq lbl_80BE14C0
/* 80BE14B0  40 80 00 40 */	bge lbl_80BE14F0
/* 80BE14B4  2C 03 00 00 */	cmpwi r3, 0
/* 80BE14B8  41 82 00 20 */	beq lbl_80BE14D8
/* 80BE14BC  48 00 00 34 */	b lbl_80BE14F0
lbl_80BE14C0:
/* 80BE14C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE14C4  41 82 00 0C */	beq lbl_80BE14D0
/* 80BE14C8  38 00 00 01 */	li r0, 1
/* 80BE14CC  48 00 00 28 */	b lbl_80BE14F4
lbl_80BE14D0:
/* 80BE14D0  38 00 00 02 */	li r0, 2
/* 80BE14D4  48 00 00 20 */	b lbl_80BE14F4
lbl_80BE14D8:
/* 80BE14D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE14DC  41 82 00 0C */	beq lbl_80BE14E8
/* 80BE14E0  38 00 00 05 */	li r0, 5
/* 80BE14E4  48 00 00 10 */	b lbl_80BE14F4
lbl_80BE14E8:
/* 80BE14E8  38 00 00 03 */	li r0, 3
/* 80BE14EC  48 00 00 08 */	b lbl_80BE14F4
lbl_80BE14F0:
/* 80BE14F0  38 00 00 04 */	li r0, 4
lbl_80BE14F4:
/* 80BE14F4  2C 00 00 01 */	cmpwi r0, 1
/* 80BE14F8  40 82 00 0C */	bne lbl_80BE1504
/* 80BE14FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE1500  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BE1504:
/* 80BE1504  C0 1B 00 B4 */	lfs f0, 0xb4(r27)
/* 80BE1508  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE150C  40 80 00 34 */	bge lbl_80BE1540
/* 80BE1510  C0 3B 00 58 */	lfs f1, 0x58(r27)
/* 80BE1514  C0 1A 05 2C */	lfs f0, 0x52c(r26)
/* 80BE1518  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80BE151C  41 82 00 24 */	beq lbl_80BE1540
/* 80BE1520  38 76 0A 58 */	addi r3, r22, 0xa58
/* 80BE1524  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 80BE1528  4B 68 E1 21 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BE152C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BE1530  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BE1534  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BE1538  38 96 09 34 */	addi r4, r22, 0x934
/* 80BE153C  4B 68 36 6D */	bl Set__4cCcSFP8cCcD_Obj
lbl_80BE1540:
/* 80BE1540  37 56 08 F8 */	addic. r26, r22, 0x8f8
/* 80BE1544  41 82 03 60 */	beq lbl_80BE18A4
/* 80BE1548  7F 43 D3 78 */	mr r3, r26
/* 80BE154C  4B 68 5B 61 */	bl isZero__4cXyzCFv
/* 80BE1550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE1554  40 82 00 3C */	bne lbl_80BE1590
/* 80BE1558  C0 3A 00 00 */	lfs f1, 0(r26)
/* 80BE155C  C0 5A 00 08 */	lfs f2, 8(r26)
/* 80BE1560  4B 68 61 15 */	bl cM_atan2s__Fff
/* 80BE1564  B0 76 04 DE */	sth r3, 0x4de(r22)
/* 80BE1568  C0 1B 00 B0 */	lfs f0, 0xb0(r27)
/* 80BE156C  D0 16 05 2C */	stfs f0, 0x52c(r22)
/* 80BE1570  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80BE1574  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80BE1578  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BE157C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BE1580  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BE1584  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BE1588  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BE158C  48 00 01 84 */	b lbl_80BE1710
lbl_80BE1590:
/* 80BE1590  C3 DB 00 7C */	lfs f30, 0x7c(r27)
/* 80BE1594  C0 56 04 D8 */	lfs f2, 0x4d8(r22)
/* 80BE1598  C0 16 04 D0 */	lfs f0, 0x4d0(r22)
/* 80BE159C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BE15A0  C0 3B 00 58 */	lfs f1, 0x58(r27)
/* 80BE15A4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80BE15A8  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80BE15AC  C0 56 0A 74 */	lfs f2, 0xa74(r22)
/* 80BE15B0  C0 16 0A 6C */	lfs f0, 0xa6c(r22)
/* 80BE15B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BE15B8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80BE15BC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80BE15C0  38 61 00 24 */	addi r3, r1, 0x24
/* 80BE15C4  38 81 00 30 */	addi r4, r1, 0x30
/* 80BE15C8  4B 76 5D D5 */	bl PSVECSquareDistance
/* 80BE15CC  C0 1B 00 58 */	lfs f0, 0x58(r27)
/* 80BE15D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE15D4  40 81 00 58 */	ble lbl_80BE162C
/* 80BE15D8  FC 00 08 34 */	frsqrte f0, f1
/* 80BE15DC  C8 9B 00 60 */	lfd f4, 0x60(r27)
/* 80BE15E0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE15E4  C8 7B 00 68 */	lfd f3, 0x68(r27)
/* 80BE15E8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE15EC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE15F0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE15F4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE15F8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE15FC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE1600  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE1604  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE1608  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE160C  FC 44 00 32 */	fmul f2, f4, f0
/* 80BE1610  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE1614  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE1618  FC 03 00 28 */	fsub f0, f3, f0
/* 80BE161C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BE1620  FC 21 00 32 */	fmul f1, f1, f0
/* 80BE1624  FC 20 08 18 */	frsp f1, f1
/* 80BE1628  48 00 00 88 */	b lbl_80BE16B0
lbl_80BE162C:
/* 80BE162C  C8 1B 00 70 */	lfd f0, 0x70(r27)
/* 80BE1630  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE1634  40 80 00 10 */	bge lbl_80BE1644
/* 80BE1638  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE163C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE1640  48 00 00 70 */	b lbl_80BE16B0
lbl_80BE1644:
/* 80BE1644  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BE1648  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BE164C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE1650  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE1654  7C 03 00 00 */	cmpw r3, r0
/* 80BE1658  41 82 00 14 */	beq lbl_80BE166C
/* 80BE165C  40 80 00 40 */	bge lbl_80BE169C
/* 80BE1660  2C 03 00 00 */	cmpwi r3, 0
/* 80BE1664  41 82 00 20 */	beq lbl_80BE1684
/* 80BE1668  48 00 00 34 */	b lbl_80BE169C
lbl_80BE166C:
/* 80BE166C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE1670  41 82 00 0C */	beq lbl_80BE167C
/* 80BE1674  38 00 00 01 */	li r0, 1
/* 80BE1678  48 00 00 28 */	b lbl_80BE16A0
lbl_80BE167C:
/* 80BE167C  38 00 00 02 */	li r0, 2
/* 80BE1680  48 00 00 20 */	b lbl_80BE16A0
lbl_80BE1684:
/* 80BE1684  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE1688  41 82 00 0C */	beq lbl_80BE1694
/* 80BE168C  38 00 00 05 */	li r0, 5
/* 80BE1690  48 00 00 10 */	b lbl_80BE16A0
lbl_80BE1694:
/* 80BE1694  38 00 00 03 */	li r0, 3
/* 80BE1698  48 00 00 08 */	b lbl_80BE16A0
lbl_80BE169C:
/* 80BE169C  38 00 00 04 */	li r0, 4
lbl_80BE16A0:
/* 80BE16A0  2C 00 00 01 */	cmpwi r0, 1
/* 80BE16A4  40 82 00 0C */	bne lbl_80BE16B0
/* 80BE16A8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE16AC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BE16B0:
/* 80BE16B0  C0 1B 00 B8 */	lfs f0, 0xb8(r27)
/* 80BE16B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE16B8  40 80 00 0C */	bge lbl_80BE16C4
/* 80BE16BC  C3 DB 00 58 */	lfs f30, 0x58(r27)
/* 80BE16C0  D3 D6 05 2C */	stfs f30, 0x52c(r22)
lbl_80BE16C4:
/* 80BE16C4  C0 36 0A 6C */	lfs f1, 0xa6c(r22)
/* 80BE16C8  C0 16 04 D0 */	lfs f0, 0x4d0(r22)
/* 80BE16CC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80BE16D0  C0 56 0A 74 */	lfs f2, 0xa74(r22)
/* 80BE16D4  C0 16 04 D8 */	lfs f0, 0x4d8(r22)
/* 80BE16D8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80BE16DC  4B 68 5F 99 */	bl cM_atan2s__Fff
/* 80BE16E0  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80BE16E4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BE16E8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BE16EC  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BE16F0  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80BE16F4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80BE16F8  C0 1B 00 58 */	lfs f0, 0x58(r27)
/* 80BE16FC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80BE1700  7C 63 02 14 */	add r3, r3, r0
/* 80BE1704  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BE1708  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80BE170C  D0 01 00 74 */	stfs f0, 0x74(r1)
lbl_80BE1710:
/* 80BE1710  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BE1714  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BE1718  A8 16 04 DE */	lha r0, 0x4de(r22)
/* 80BE171C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BE1720  7C 64 02 14 */	add r3, r4, r0
/* 80BE1724  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BE1728  C0 56 05 2C */	lfs f2, 0x52c(r22)
/* 80BE172C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80BE1730  7C 04 04 2E */	lfsx f0, r4, r0
/* 80BE1734  EC 02 00 32 */	fmuls f0, f2, f0
/* 80BE1738  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80BE173C  C0 1B 00 58 */	lfs f0, 0x58(r27)
/* 80BE1740  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80BE1744  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80BE1748  38 61 00 78 */	addi r3, r1, 0x78
/* 80BE174C  38 81 00 6C */	addi r4, r1, 0x6c
/* 80BE1750  7C 65 1B 78 */	mr r5, r3
/* 80BE1754  4B 76 59 3D */	bl PSVECAdd
/* 80BE1758  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80BE175C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80BE1760  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80BE1764  EC 00 00 32 */	fmuls f0, f0, f0
/* 80BE1768  EC 81 00 2A */	fadds f4, f1, f0
/* 80BE176C  C0 1B 00 58 */	lfs f0, 0x58(r27)
/* 80BE1770  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BE1774  40 81 00 58 */	ble lbl_80BE17CC
/* 80BE1778  FC 00 20 34 */	frsqrte f0, f4
/* 80BE177C  C8 7B 00 60 */	lfd f3, 0x60(r27)
/* 80BE1780  FC 23 00 32 */	fmul f1, f3, f0
/* 80BE1784  C8 5B 00 68 */	lfd f2, 0x68(r27)
/* 80BE1788  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE178C  FC 04 00 32 */	fmul f0, f4, f0
/* 80BE1790  FC 02 00 28 */	fsub f0, f2, f0
/* 80BE1794  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE1798  FC 23 00 32 */	fmul f1, f3, f0
/* 80BE179C  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE17A0  FC 04 00 32 */	fmul f0, f4, f0
/* 80BE17A4  FC 02 00 28 */	fsub f0, f2, f0
/* 80BE17A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE17AC  FC 23 00 32 */	fmul f1, f3, f0
/* 80BE17B0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BE17B4  FC 04 00 32 */	fmul f0, f4, f0
/* 80BE17B8  FC 02 00 28 */	fsub f0, f2, f0
/* 80BE17BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BE17C0  FC 84 00 32 */	fmul f4, f4, f0
/* 80BE17C4  FC 80 20 18 */	frsp f4, f4
/* 80BE17C8  48 00 00 88 */	b lbl_80BE1850
lbl_80BE17CC:
/* 80BE17CC  C8 1B 00 70 */	lfd f0, 0x70(r27)
/* 80BE17D0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80BE17D4  40 80 00 10 */	bge lbl_80BE17E4
/* 80BE17D8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE17DC  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BE17E0  48 00 00 70 */	b lbl_80BE1850
lbl_80BE17E4:
/* 80BE17E4  D0 81 00 08 */	stfs f4, 8(r1)
/* 80BE17E8  80 81 00 08 */	lwz r4, 8(r1)
/* 80BE17EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BE17F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BE17F4  7C 03 00 00 */	cmpw r3, r0
/* 80BE17F8  41 82 00 14 */	beq lbl_80BE180C
/* 80BE17FC  40 80 00 40 */	bge lbl_80BE183C
/* 80BE1800  2C 03 00 00 */	cmpwi r3, 0
/* 80BE1804  41 82 00 20 */	beq lbl_80BE1824
/* 80BE1808  48 00 00 34 */	b lbl_80BE183C
lbl_80BE180C:
/* 80BE180C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE1810  41 82 00 0C */	beq lbl_80BE181C
/* 80BE1814  38 00 00 01 */	li r0, 1
/* 80BE1818  48 00 00 28 */	b lbl_80BE1840
lbl_80BE181C:
/* 80BE181C  38 00 00 02 */	li r0, 2
/* 80BE1820  48 00 00 20 */	b lbl_80BE1840
lbl_80BE1824:
/* 80BE1824  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BE1828  41 82 00 0C */	beq lbl_80BE1834
/* 80BE182C  38 00 00 05 */	li r0, 5
/* 80BE1830  48 00 00 10 */	b lbl_80BE1840
lbl_80BE1834:
/* 80BE1834  38 00 00 03 */	li r0, 3
/* 80BE1838  48 00 00 08 */	b lbl_80BE1840
lbl_80BE183C:
/* 80BE183C  38 00 00 04 */	li r0, 4
lbl_80BE1840:
/* 80BE1840  2C 00 00 01 */	cmpwi r0, 1
/* 80BE1844  40 82 00 0C */	bne lbl_80BE1850
/* 80BE1848  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BE184C  C0 83 0A E0 */	lfs f4, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BE1850:
/* 80BE1850  D0 96 05 2C */	stfs f4, 0x52c(r22)
/* 80BE1854  C0 36 05 2C */	lfs f1, 0x52c(r22)
/* 80BE1858  C0 1B 00 B0 */	lfs f0, 0xb0(r27)
/* 80BE185C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BE1860  40 81 00 08 */	ble lbl_80BE1868
/* 80BE1864  D0 16 05 2C */	stfs f0, 0x52c(r22)
lbl_80BE1868:
/* 80BE1868  C0 36 04 D0 */	lfs f1, 0x4d0(r22)
/* 80BE186C  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80BE1870  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE1874  D0 16 04 D0 */	stfs f0, 0x4d0(r22)
/* 80BE1878  C0 36 04 D8 */	lfs f1, 0x4d8(r22)
/* 80BE187C  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80BE1880  EC 01 00 2A */	fadds f0, f1, f0
/* 80BE1884  D0 16 04 D8 */	stfs f0, 0x4d8(r22)
/* 80BE1888  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80BE188C  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)  /* 0x80430CF4@l */
/* 80BE1890  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80BE1894  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BE1898  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80BE189C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BE18A0  D0 1A 00 08 */	stfs f0, 8(r26)
lbl_80BE18A4:
/* 80BE18A4  38 60 00 01 */	li r3, 1
/* 80BE18A8  E3 E1 01 58 */	psq_l f31, 344(r1), 0, 0 /* qr0 */
/* 80BE18AC  CB E1 01 50 */	lfd f31, 0x150(r1)
/* 80BE18B0  E3 C1 01 48 */	psq_l f30, 328(r1), 0, 0 /* qr0 */
/* 80BE18B4  CB C1 01 40 */	lfd f30, 0x140(r1)
/* 80BE18B8  E3 A1 01 38 */	psq_l f29, 312(r1), 0, 0 /* qr0 */
/* 80BE18BC  CB A1 01 30 */	lfd f29, 0x130(r1)
/* 80BE18C0  E3 81 01 28 */	psq_l f28, 296(r1), 0, 0 /* qr0 */
/* 80BE18C4  CB 81 01 20 */	lfd f28, 0x120(r1)
/* 80BE18C8  39 61 01 20 */	addi r11, r1, 0x120
/* 80BE18CC  4B 78 09 31 */	bl _restgpr_18
/* 80BE18D0  80 01 01 64 */	lwz r0, 0x164(r1)
/* 80BE18D4  7C 08 03 A6 */	mtlr r0
/* 80BE18D8  38 21 01 60 */	addi r1, r1, 0x160
/* 80BE18DC  4E 80 00 20 */	blr 
