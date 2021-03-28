lbl_80738E30:
/* 80738E30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80738E34  7C 08 02 A6 */	mflr r0
/* 80738E38  90 01 00 64 */	stw r0, 0x64(r1)
/* 80738E3C  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 80738E40  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80738E44  7C 7E 1B 78 */	mr r30, r3
/* 80738E48  3C 60 80 74 */	lis r3, cNullVec__6Z2Calc@ha
/* 80738E4C  3B E3 9E 54 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80738E50  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80738E54  4B 94 A9 DC */	b Move__10dCcD_GSttsFv
/* 80738E58  88 1E 0B AD */	lbz r0, 0xbad(r30)
/* 80738E5C  28 00 00 00 */	cmplwi r0, 0
/* 80738E60  40 82 01 E4 */	bne lbl_80739044
/* 80738E64  80 7F 01 6C */	lwz r3, 0x16c(r31)
/* 80738E68  80 1F 01 70 */	lwz r0, 0x170(r31)
/* 80738E6C  90 61 00 48 */	stw r3, 0x48(r1)
/* 80738E70  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80738E74  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80738E78  90 01 00 50 */	stw r0, 0x50(r1)
/* 80738E7C  38 7E 0B 58 */	addi r3, r30, 0xb58
/* 80738E80  38 81 00 48 */	addi r4, r1, 0x48
/* 80738E84  4B C2 91 C4 */	b __ptmf_cmpr
/* 80738E88  2C 03 00 00 */	cmpwi r3, 0
/* 80738E8C  41 82 00 30 */	beq lbl_80738EBC
/* 80738E90  80 7F 01 78 */	lwz r3, 0x178(r31)
/* 80738E94  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 80738E98  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80738E9C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80738EA0  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 80738EA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80738EA8  38 7E 0B 58 */	addi r3, r30, 0xb58
/* 80738EAC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80738EB0  4B C2 91 98 */	b __ptmf_cmpr
/* 80738EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80738EB8  40 82 00 88 */	bne lbl_80738F40
lbl_80738EBC:
/* 80738EBC  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80738EC0  4B 94 B4 00 */	b ChkAtHit__12dCcD_GObjInfFv
/* 80738EC4  28 03 00 00 */	cmplwi r3, 0
/* 80738EC8  41 82 00 78 */	beq lbl_80738F40
/* 80738ECC  80 1E 0A 54 */	lwz r0, 0xa54(r30)
/* 80738ED0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80738ED4  41 82 00 44 */	beq lbl_80738F18
/* 80738ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80738EDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80738EE0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80738EE4  88 03 05 68 */	lbz r0, 0x568(r3)
/* 80738EE8  28 00 00 29 */	cmplwi r0, 0x29
/* 80738EEC  40 82 00 2C */	bne lbl_80738F18
/* 80738EF0  80 7F 01 84 */	lwz r3, 0x184(r31)
/* 80738EF4  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 80738EF8  90 61 00 30 */	stw r3, 0x30(r1)
/* 80738EFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80738F00  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 80738F04  90 01 00 38 */	stw r0, 0x38(r1)
/* 80738F08  7F C3 F3 78 */	mr r3, r30
/* 80738F0C  38 81 00 30 */	addi r4, r1, 0x30
/* 80738F10  4B FF D3 5D */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
/* 80738F14  48 00 01 30 */	b lbl_80739044
lbl_80738F18:
/* 80738F18  80 7F 01 90 */	lwz r3, 0x190(r31)
/* 80738F1C  80 1F 01 94 */	lwz r0, 0x194(r31)
/* 80738F20  90 61 00 24 */	stw r3, 0x24(r1)
/* 80738F24  90 01 00 28 */	stw r0, 0x28(r1)
/* 80738F28  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 80738F2C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80738F30  7F C3 F3 78 */	mr r3, r30
/* 80738F34  38 81 00 24 */	addi r4, r1, 0x24
/* 80738F38  4B FF D3 35 */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
/* 80738F3C  48 00 01 08 */	b lbl_80739044
lbl_80738F40:
/* 80738F40  38 7E 08 C0 */	addi r3, r30, 0x8c0
/* 80738F44  4B 94 B5 1C */	b ChkTgHit__12dCcD_GObjInfFv
/* 80738F48  28 03 00 00 */	cmplwi r3, 0
/* 80738F4C  41 82 00 F8 */	beq lbl_80739044
/* 80738F50  38 7E 08 C0 */	addi r3, r30, 0x8c0
/* 80738F54  4B 94 B5 A4 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80738F58  90 7E 0B 30 */	stw r3, 0xb30(r30)
/* 80738F5C  7F C3 F3 78 */	mr r3, r30
/* 80738F60  38 9E 0B 30 */	addi r4, r30, 0xb30
/* 80738F64  4B 94 EC A0 */	b cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 80738F68  80 7E 0B 30 */	lwz r3, 0xb30(r30)
/* 80738F6C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80738F70  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 80738F74  41 82 00 10 */	beq lbl_80738F84
/* 80738F78  38 00 00 14 */	li r0, 0x14
/* 80738F7C  98 1E 0B AD */	stb r0, 0xbad(r30)
/* 80738F80  48 00 00 0C */	b lbl_80738F8C
lbl_80738F84:
/* 80738F84  38 00 00 0A */	li r0, 0xa
/* 80738F88  98 1E 0B AD */	stb r0, 0xbad(r30)
lbl_80738F8C:
/* 80738F8C  88 1E 0B 4F */	lbz r0, 0xb4f(r30)
/* 80738F90  7C 00 07 75 */	extsb. r0, r0
/* 80738F94  41 82 00 0C */	beq lbl_80738FA0
/* 80738F98  38 00 00 0A */	li r0, 0xa
/* 80738F9C  98 1E 0B AD */	stb r0, 0xbad(r30)
lbl_80738FA0:
/* 80738FA0  38 00 00 00 */	li r0, 0
/* 80738FA4  3C 60 80 45 */	lis r3, struct_80451124+0x1@ha
/* 80738FA8  98 03 11 25 */	stb r0, struct_80451124+0x1@l(r3)
/* 80738FAC  38 7E 08 C0 */	addi r3, r30, 0x8c0
/* 80738FB0  81 9E 08 FC */	lwz r12, 0x8fc(r30)
/* 80738FB4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80738FB8  7D 89 03 A6 */	mtctr r12
/* 80738FBC  4E 80 04 21 */	bctrl 
/* 80738FC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A8@ha */
/* 80738FC4  38 03 02 A8 */	addi r0, r3, 0x02A8 /* 0x000702A8@l */
/* 80738FC8  90 01 00 08 */	stw r0, 8(r1)
/* 80738FCC  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80738FD0  38 81 00 08 */	addi r4, r1, 8
/* 80738FD4  38 A0 FF FF */	li r5, -1
/* 80738FD8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80738FDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80738FE0  7D 89 03 A6 */	mtctr r12
/* 80738FE4  4E 80 04 21 */	bctrl 
/* 80738FE8  80 7E 0B 30 */	lwz r3, 0xb30(r30)
/* 80738FEC  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80738FF0  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 80738FF4  41 82 00 2C */	beq lbl_80739020
/* 80738FF8  80 7F 01 9C */	lwz r3, 0x19c(r31)
/* 80738FFC  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 80739000  90 61 00 18 */	stw r3, 0x18(r1)
/* 80739004  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80739008  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8073900C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80739010  7F C3 F3 78 */	mr r3, r30
/* 80739014  38 81 00 18 */	addi r4, r1, 0x18
/* 80739018  4B FF D2 55 */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
/* 8073901C  48 00 00 28 */	b lbl_80739044
lbl_80739020:
/* 80739020  80 7F 01 A8 */	lwz r3, 0x1a8(r31)
/* 80739024  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 80739028  90 61 00 0C */	stw r3, 0xc(r1)
/* 8073902C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80739030  80 1F 01 B0 */	lwz r0, 0x1b0(r31)
/* 80739034  90 01 00 14 */	stw r0, 0x14(r1)
/* 80739038  7F C3 F3 78 */	mr r3, r30
/* 8073903C  38 81 00 0C */	addi r4, r1, 0xc
/* 80739040  4B FF D2 2D */	bl setAction__11daE_OctBg_cFM11daE_OctBg_cFPCvPv_v
lbl_80739044:
/* 80739044  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 80739048  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8073904C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80739050  7C 08 03 A6 */	mtlr r0
/* 80739054  38 21 00 60 */	addi r1, r1, 0x60
/* 80739058  4E 80 00 20 */	blr 
