lbl_80666C38:
/* 80666C38  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80666C3C  7C 08 02 A6 */	mflr r0
/* 80666C40  90 01 00 54 */	stw r0, 0x54(r1)
/* 80666C44  39 61 00 50 */	addi r11, r1, 0x50
/* 80666C48  4B CF B5 8C */	b _savegpr_27
/* 80666C4C  7C 7E 1B 78 */	mr r30, r3
/* 80666C50  3C 60 80 66 */	lis r3, lit_3768@ha
/* 80666C54  3B E3 76 98 */	addi r31, r3, lit_3768@l
/* 80666C58  38 00 00 00 */	li r0, 0
/* 80666C5C  88 7E 0A DD */	lbz r3, 0xadd(r30)
/* 80666C60  28 03 00 04 */	cmplwi r3, 4
/* 80666C64  41 82 00 0C */	beq lbl_80666C70
/* 80666C68  28 03 00 03 */	cmplwi r3, 3
/* 80666C6C  40 82 00 08 */	bne lbl_80666C74
lbl_80666C70:
/* 80666C70  38 00 00 01 */	li r0, 1
lbl_80666C74:
/* 80666C74  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80666C78  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060060@ha */
/* 80666C7C  38 03 00 60 */	addi r0, r3, 0x0060 /* 0x00060060@l */
/* 80666C80  41 82 00 08 */	beq lbl_80666C88
/* 80666C84  38 03 01 54 */	addi r0, r3, 0x154
lbl_80666C88:
/* 80666C88  90 01 00 20 */	stw r0, 0x20(r1)
/* 80666C8C  38 7E 0A 14 */	addi r3, r30, 0xa14
/* 80666C90  38 81 00 20 */	addi r4, r1, 0x20
/* 80666C94  38 A0 00 00 */	li r5, 0
/* 80666C98  88 DE 0A DC */	lbz r6, 0xadc(r30)
/* 80666C9C  81 9E 0A 14 */	lwz r12, 0xa14(r30)
/* 80666CA0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80666CA4  7D 89 03 A6 */	mtctr r12
/* 80666CA8  4E 80 04 21 */	bctrl 
/* 80666CAC  80 1E 0A EC */	lwz r0, 0xaec(r30)
/* 80666CB0  60 00 08 04 */	ori r0, r0, 0x804
/* 80666CB4  90 1E 0A EC */	stw r0, 0xaec(r30)
/* 80666CB8  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80666CBC  D0 1E 05 8C */	stfs f0, 0x58c(r30)
/* 80666CC0  A8 1E 05 82 */	lha r0, 0x582(r30)
/* 80666CC4  C8 3F 01 50 */	lfd f1, 0x150(r31)
/* 80666CC8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80666CCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80666CD0  3C 00 43 30 */	lis r0, 0x4330
/* 80666CD4  90 01 00 30 */	stw r0, 0x30(r1)
/* 80666CD8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80666CDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80666CE0  D0 1E 05 8C */	stfs f0, 0x58c(r30)
/* 80666CE4  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80666CE8  D0 1E 05 88 */	stfs f0, 0x588(r30)
/* 80666CEC  38 00 00 00 */	li r0, 0
/* 80666CF0  98 1E 05 81 */	stb r0, 0x581(r30)
/* 80666CF4  7F C3 F3 78 */	mr r3, r30
/* 80666CF8  88 1E 0A DD */	lbz r0, 0xadd(r30)
/* 80666CFC  54 00 08 3C */	slwi r0, r0, 1
/* 80666D00  38 9F 03 08 */	addi r4, r31, 0x308
/* 80666D04  7C 84 02 2E */	lhzx r4, r4, r0
/* 80666D08  4B FF FE 79 */	bl initBrk__11daCstatue_cFUs
/* 80666D0C  80 1E 04 E4 */	lwz r0, 0x4e4(r30)
/* 80666D10  90 01 00 24 */	stw r0, 0x24(r1)
/* 80666D14  A0 1E 04 E8 */	lhz r0, 0x4e8(r30)
/* 80666D18  B0 01 00 28 */	sth r0, 0x28(r1)
/* 80666D1C  3B 60 00 00 */	li r27, 0
/* 80666D20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80666D24  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80666D28  3F A0 00 01 */	lis r29, 0x0001 /* 0x000088BB@ha */
lbl_80666D2C:
/* 80666D2C  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80666D30  38 80 00 00 */	li r4, 0
/* 80666D34  90 81 00 08 */	stw r4, 8(r1)
/* 80666D38  38 00 FF FF */	li r0, -1
/* 80666D3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80666D40  90 81 00 10 */	stw r4, 0x10(r1)
/* 80666D44  90 81 00 14 */	stw r4, 0x14(r1)
/* 80666D48  90 81 00 18 */	stw r4, 0x18(r1)
/* 80666D4C  38 80 00 00 */	li r4, 0
/* 80666D50  38 BD 88 BB */	addi r5, r29, 0x88BB /* 0x000088BB@l */
/* 80666D54  38 DE 0B 20 */	addi r6, r30, 0xb20
/* 80666D58  38 E0 00 00 */	li r7, 0
/* 80666D5C  39 01 00 24 */	addi r8, r1, 0x24
/* 80666D60  39 20 00 00 */	li r9, 0
/* 80666D64  39 40 00 FF */	li r10, 0xff
/* 80666D68  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80666D6C  4B 9E 5D 24 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80666D70  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80666D74  38 80 00 00 */	li r4, 0
/* 80666D78  90 81 00 08 */	stw r4, 8(r1)
/* 80666D7C  38 00 FF FF */	li r0, -1
/* 80666D80  90 01 00 0C */	stw r0, 0xc(r1)
/* 80666D84  90 81 00 10 */	stw r4, 0x10(r1)
/* 80666D88  90 81 00 14 */	stw r4, 0x14(r1)
/* 80666D8C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80666D90  38 80 00 00 */	li r4, 0
/* 80666D94  38 BD 88 BC */	addi r5, r29, -30532
/* 80666D98  38 DE 0B 20 */	addi r6, r30, 0xb20
/* 80666D9C  38 E0 00 00 */	li r7, 0
/* 80666DA0  39 01 00 24 */	addi r8, r1, 0x24
/* 80666DA4  39 20 00 00 */	li r9, 0
/* 80666DA8  39 40 00 FF */	li r10, 0xff
/* 80666DAC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80666DB0  4B 9E 5C E0 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80666DB4  A8 61 00 26 */	lha r3, 0x26(r1)
/* 80666DB8  3C 63 00 01 */	addis r3, r3, 1
/* 80666DBC  38 03 80 00 */	addi r0, r3, -32768
/* 80666DC0  B0 01 00 26 */	sth r0, 0x26(r1)
/* 80666DC4  3B 7B 00 01 */	addi r27, r27, 1
/* 80666DC8  2C 1B 00 02 */	cmpwi r27, 2
/* 80666DCC  41 80 FF 60 */	blt lbl_80666D2C
/* 80666DD0  39 61 00 50 */	addi r11, r1, 0x50
/* 80666DD4  4B CF B4 4C */	b _restgpr_27
/* 80666DD8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80666DDC  7C 08 03 A6 */	mtlr r0
/* 80666DE0  38 21 00 50 */	addi r1, r1, 0x50
/* 80666DE4  4E 80 00 20 */	blr 
