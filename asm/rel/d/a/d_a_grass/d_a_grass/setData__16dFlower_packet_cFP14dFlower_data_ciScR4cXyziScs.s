lbl_80522CBC:
/* 80522CBC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80522CC0  7C 08 02 A6 */	mflr r0
/* 80522CC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80522CC8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80522CCC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80522CD0  39 61 00 40 */	addi r11, r1, 0x40
/* 80522CD4  4B E3 F4 F1 */	bl _savegpr_23
/* 80522CD8  7C 7B 1B 78 */	mr r27, r3
/* 80522CDC  7C 9C 23 78 */	mr r28, r4
/* 80522CE0  7C BD 2B 78 */	mr r29, r5
/* 80522CE4  7C D7 33 78 */	mr r23, r6
/* 80522CE8  7C F8 3B 78 */	mr r24, r7
/* 80522CEC  7D 1E 43 78 */	mr r30, r8
/* 80522CF0  7D 39 4B 78 */	mr r25, r9
/* 80522CF4  7D 5A 53 78 */	mr r26, r10
/* 80522CF8  3C 60 80 52 */	lis r3, cNullVec__6Z2Calc@ha /* 0x805231D8@ha */
/* 80522CFC  3B E3 31 D8 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x805231D8@l */
/* 80522D00  4B AF B8 59 */	bl fopOvlpM_IsPeek__Fv
/* 80522D04  2C 03 00 00 */	cmpwi r3, 0
/* 80522D08  41 82 00 1C */	beq lbl_80522D24
/* 80522D0C  7F 03 C3 78 */	mr r3, r24
/* 80522D10  4B FF FC 8D */	bl flowerCheckGroundY__FR4cXyz
/* 80522D14  FF E0 08 90 */	fmr f31, f1
/* 80522D18  38 00 00 06 */	li r0, 6
/* 80522D1C  98 1C 00 00 */	stb r0, 0(r28)
/* 80522D20  48 00 00 10 */	b lbl_80522D30
lbl_80522D24:
/* 80522D24  C3 F8 00 04 */	lfs f31, 4(r24)
/* 80522D28  38 00 00 26 */	li r0, 0x26
/* 80522D2C  98 1C 00 00 */	stb r0, 0(r28)
lbl_80522D30:
/* 80522D30  7E E0 07 74 */	extsb r0, r23
/* 80522D34  2C 00 00 02 */	cmpwi r0, 2
/* 80522D38  40 82 00 10 */	bne lbl_80522D48
/* 80522D3C  88 1C 00 00 */	lbz r0, 0(r28)
/* 80522D40  60 00 00 40 */	ori r0, r0, 0x40
/* 80522D44  98 1C 00 00 */	stb r0, 0(r28)
lbl_80522D48:
/* 80522D48  3C 60 80 52 */	lis r3, lit_6262@ha /* 0x805231A8@ha */
/* 80522D4C  C0 23 31 A8 */	lfs f1, lit_6262@l(r3)  /* 0x805231A8@l */
/* 80522D50  4B D4 4C 05 */	bl cM_rndF__Ff
/* 80522D54  FC 00 08 1E */	fctiwz f0, f1
/* 80522D58  D8 01 00 08 */	stfd f0, 8(r1)
/* 80522D5C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80522D60  98 1C 00 01 */	stb r0, 1(r28)
/* 80522D64  C0 38 00 08 */	lfs f1, 8(r24)
/* 80522D68  C0 18 00 00 */	lfs f0, 0(r24)
/* 80522D6C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80522D70  D3 FC 00 0C */	stfs f31, 0xc(r28)
/* 80522D74  D0 3C 00 10 */	stfs f1, 0x10(r28)
/* 80522D78  9B 3C 00 02 */	stb r25, 2(r28)
/* 80522D7C  38 00 00 00 */	li r0, 0
/* 80522D80  98 1C 00 03 */	stb r0, 3(r28)
/* 80522D84  B3 5C 00 04 */	sth r26, 4(r28)
/* 80522D88  3C 9B 00 01 */	addis r4, r27, 1
/* 80522D8C  57 C5 10 3A */	slwi r5, r30, 2
/* 80522D90  7C 64 2A 14 */	add r3, r4, r5
/* 80522D94  80 03 29 14 */	lwz r0, 0x2914(r3)
/* 80522D98  28 00 00 00 */	cmplwi r0, 0
/* 80522D9C  40 82 00 54 */	bne lbl_80522DF0
/* 80522DA0  38 1F 3A 40 */	addi r0, r31, 0x3a40
/* 80522DA4  90 04 2A 28 */	stw r0, 0x2a28(r4)
/* 80522DA8  38 1F 40 28 */	addi r0, r31, 0x4028
/* 80522DAC  90 04 2A 2C */	stw r0, 0x2a2c(r4)
/* 80522DB0  38 1F 40 30 */	addi r0, r31, 0x4030
/* 80522DB4  90 04 2A 30 */	stw r0, 0x2a30(r4)
/* 80522DB8  38 1F 44 C0 */	addi r0, r31, 0x44c0
/* 80522DBC  90 04 2A 34 */	stw r0, 0x2a34(r4)
/* 80522DC0  38 60 00 80 */	li r3, 0x80
/* 80522DC4  90 64 2A 38 */	stw r3, 0x2a38(r4)
/* 80522DC8  38 1F 45 60 */	addi r0, r31, 0x4560
/* 80522DCC  90 04 2A 3C */	stw r0, 0x2a3c(r4)
/* 80522DD0  90 64 2A 40 */	stw r3, 0x2a40(r4)
/* 80522DD4  38 1F 41 60 */	addi r0, r31, 0x4160
/* 80522DD8  90 04 2A 44 */	stw r0, 0x2a44(r4)
/* 80522DDC  38 60 01 20 */	li r3, 0x120
/* 80522DE0  90 64 2A 48 */	stw r3, 0x2a48(r4)
/* 80522DE4  38 1F 43 80 */	addi r0, r31, 0x4380
/* 80522DE8  90 04 2A 4C */	stw r0, 0x2a4c(r4)
/* 80522DEC  90 64 2A 50 */	stw r3, 0x2a50(r4)
lbl_80522DF0:
/* 80522DF0  3C 65 00 01 */	addis r3, r5, 1
/* 80522DF4  38 63 29 14 */	addi r3, r3, 0x2914
/* 80522DF8  7C 7B 1A 14 */	add r3, r27, r3
/* 80522DFC  7F 84 E3 78 */	mr r4, r28
/* 80522E00  4B FF ED F9 */	bl newData__14dFlower_room_cFP14dFlower_data_c
/* 80522E04  B3 BB 00 10 */	sth r29, 0x10(r27)
/* 80522E08  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80522E0C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80522E10  39 61 00 40 */	addi r11, r1, 0x40
/* 80522E14  4B E3 F3 FD */	bl _restgpr_23
/* 80522E18  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80522E1C  7C 08 03 A6 */	mtlr r0
/* 80522E20  38 21 00 50 */	addi r1, r1, 0x50
/* 80522E24  4E 80 00 20 */	blr 
