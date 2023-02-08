lbl_800F0CE4:
/* 800F0CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800F0CE8  7C 08 02 A6 */	mflr r0
/* 800F0CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800F0CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 800F0CF4  48 27 14 E9 */	bl _savegpr_29
/* 800F0CF8  7C 7E 1B 78 */	mr r30, r3
/* 800F0CFC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F0D00  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F0D04  83 E4 5D B8 */	lwz r31, 0x5db8(r4)
/* 800F0D08  4B FF CD 1D */	bl setSyncRidePos__9daAlink_cFv
/* 800F0D0C  2C 03 00 00 */	cmpwi r3, 0
/* 800F0D10  40 82 00 0C */	bne lbl_800F0D1C
/* 800F0D14  38 60 00 01 */	li r3, 1
/* 800F0D18  48 00 03 30 */	b lbl_800F1048
lbl_800F0D1C:
/* 800F0D1C  C0 3E 1F E0 */	lfs f1, 0x1fe0(r30)
/* 800F0D20  C0 02 93 84 */	lfs f0, lit_8781(r2)
/* 800F0D24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0D28  40 80 00 54 */	bge lbl_800F0D7C
/* 800F0D2C  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800F0D30  28 00 01 03 */	cmplwi r0, 0x103
/* 800F0D34  40 82 00 48 */	bne lbl_800F0D7C
/* 800F0D38  7F C3 F3 78 */	mr r3, r30
/* 800F0D3C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800F0D40  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800F0D44  7D 89 03 A6 */	mtctr r12
/* 800F0D48  4E 80 04 21 */	bctrl 
/* 800F0D4C  2C 03 00 00 */	cmpwi r3, 0
/* 800F0D50  40 82 00 2C */	bne lbl_800F0D7C
/* 800F0D54  7F C3 F3 78 */	mr r3, r30
/* 800F0D58  4B FE 16 11 */	bl checkCutTurnInputTrigger__9daAlink_cFv
/* 800F0D5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F0D60  41 82 00 1C */	beq lbl_800F0D7C
/* 800F0D64  80 1F 17 4C */	lwz r0, 0x174c(r31)
/* 800F0D68  60 00 01 00 */	ori r0, r0, 0x100
/* 800F0D6C  90 1F 17 4C */	stw r0, 0x174c(r31)
/* 800F0D70  7F C3 F3 78 */	mr r3, r30
/* 800F0D74  48 00 0D 39 */	bl procHorseCutTurnInit__9daAlink_cFv
/* 800F0D78  48 00 02 D0 */	b lbl_800F1048
lbl_800F0D7C:
/* 800F0D7C  88 BF 16 B4 */	lbz r5, 0x16b4(r31)
/* 800F0D80  20 05 00 02 */	subfic r0, r5, 2
/* 800F0D84  7C 00 00 34 */	cntlzw r0, r0
/* 800F0D88  54 06 DE 3F */	rlwinm. r6, r0, 0x1b, 0x18, 0x1f
/* 800F0D8C  40 82 00 44 */	bne lbl_800F0DD0
/* 800F0D90  38 60 00 00 */	li r3, 0
/* 800F0D94  28 05 00 03 */	cmplwi r5, 3
/* 800F0D98  40 82 00 14 */	bne lbl_800F0DAC
/* 800F0D9C  A8 1F 17 20 */	lha r0, 0x1720(r31)
/* 800F0DA0  2C 00 00 00 */	cmpwi r0, 0
/* 800F0DA4  40 82 00 08 */	bne lbl_800F0DAC
/* 800F0DA8  38 60 00 01 */	li r3, 1
lbl_800F0DAC:
/* 800F0DAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F0DB0  40 82 00 20 */	bne lbl_800F0DD0
/* 800F0DB4  38 00 00 01 */	li r0, 1
/* 800F0DB8  B0 1E 1F E4 */	sth r0, 0x1fe4(r30)
/* 800F0DBC  7F C3 F3 78 */	mr r3, r30
/* 800F0DC0  4B FF FB C1 */	bl procHorseWaitInit__9daAlink_cFv
/* 800F0DC4  38 00 00 00 */	li r0, 0
/* 800F0DC8  B0 1E 30 CA */	sth r0, 0x30ca(r30)
/* 800F0DCC  48 00 02 78 */	b lbl_800F1044
lbl_800F0DD0:
/* 800F0DD0  38 80 00 00 */	li r4, 0
/* 800F0DD4  7C 83 23 78 */	mr r3, r4
/* 800F0DD8  28 05 00 03 */	cmplwi r5, 3
/* 800F0DDC  40 82 00 14 */	bne lbl_800F0DF0
/* 800F0DE0  A8 1F 17 20 */	lha r0, 0x1720(r31)
/* 800F0DE4  2C 00 00 00 */	cmpwi r0, 0
/* 800F0DE8  40 82 00 08 */	bne lbl_800F0DF0
/* 800F0DEC  38 60 00 01 */	li r3, 1
lbl_800F0DF0:
/* 800F0DF0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F0DF4  41 82 00 18 */	beq lbl_800F0E0C
/* 800F0DF8  C0 3F 17 7C */	lfs f1, 0x177c(r31)
/* 800F0DFC  C0 1F 05 C0 */	lfs f0, 0x5c0(r31)
/* 800F0E00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0E04  40 80 00 08 */	bge lbl_800F0E0C
/* 800F0E08  38 80 00 01 */	li r4, 1
lbl_800F0E0C:
/* 800F0E0C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 800F0E10  40 82 00 2C */	bne lbl_800F0E3C
/* 800F0E14  38 00 00 00 */	li r0, 0
/* 800F0E18  2C 06 00 00 */	cmpwi r6, 0
/* 800F0E1C  41 82 00 18 */	beq lbl_800F0E34
/* 800F0E20  C0 3F 17 7C */	lfs f1, 0x177c(r31)
/* 800F0E24  C0 1F 05 C0 */	lfs f0, 0x5c0(r31)
/* 800F0E28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0E2C  40 80 00 08 */	bge lbl_800F0E34
/* 800F0E30  38 00 00 01 */	li r0, 1
lbl_800F0E34:
/* 800F0E34  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800F0E38  41 82 01 24 */	beq lbl_800F0F5C
lbl_800F0E3C:
/* 800F0E3C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800F0E40  60 00 00 04 */	ori r0, r0, 4
/* 800F0E44  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800F0E48  80 1F 17 44 */	lwz r0, 0x1744(r31)
/* 800F0E4C  64 00 20 00 */	oris r0, r0, 0x2000
/* 800F0E50  90 1F 17 44 */	stw r0, 0x1744(r31)
/* 800F0E54  7F C3 F3 78 */	mr r3, r30
/* 800F0E58  4B FF C2 1D */	bl checkHorseNoUpperAnime__9daAlink_cCFv
/* 800F0E5C  2C 03 00 00 */	cmpwi r3, 0
/* 800F0E60  41 82 00 70 */	beq lbl_800F0ED0
/* 800F0E64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F0E68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F0E6C  88 03 00 15 */	lbz r0, 0x15(r3)
/* 800F0E70  28 00 00 FF */	cmplwi r0, 0xff
/* 800F0E74  41 82 00 14 */	beq lbl_800F0E88
/* 800F0E78  7F C3 F3 78 */	mr r3, r30
/* 800F0E7C  38 80 00 0B */	li r4, 0xb
/* 800F0E80  4B FC 23 A1 */	bl setRStatus__9daAlink_cFUc
/* 800F0E84  48 00 00 10 */	b lbl_800F0E94
lbl_800F0E88:
/* 800F0E88  7F C3 F3 78 */	mr r3, r30
/* 800F0E8C  38 80 00 3E */	li r4, 0x3e
/* 800F0E90  4B FC 23 91 */	bl setRStatus__9daAlink_cFUc
lbl_800F0E94:
/* 800F0E94  7F C3 F3 78 */	mr r3, r30
/* 800F0E98  4B FC 17 CD */	bl spActionButton__9daAlink_cFv
/* 800F0E9C  2C 03 00 00 */	cmpwi r3, 0
/* 800F0EA0  41 82 00 24 */	beq lbl_800F0EC4
/* 800F0EA4  7F C3 F3 78 */	mr r3, r30
/* 800F0EA8  38 80 00 02 */	li r4, 2
/* 800F0EAC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F0EB0  4B FB C8 75 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F0EB4  7F C3 F3 78 */	mr r3, r30
/* 800F0EB8  38 80 00 55 */	li r4, 0x55
/* 800F0EBC  4B FB C0 C5 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F0EC0  48 00 00 18 */	b lbl_800F0ED8
lbl_800F0EC4:
/* 800F0EC4  7F C3 F3 78 */	mr r3, r30
/* 800F0EC8  4B FF CB B1 */	bl setHorseTurnAnime__9daAlink_cFv
/* 800F0ECC  48 00 00 0C */	b lbl_800F0ED8
lbl_800F0ED0:
/* 800F0ED0  7F C3 F3 78 */	mr r3, r30
/* 800F0ED4  4B FF CB A5 */	bl setHorseTurnAnime__9daAlink_cFv
lbl_800F0ED8:
/* 800F0ED8  7F C3 F3 78 */	mr r3, r30
/* 800F0EDC  4B FF E7 D5 */	bl checkHorseGetOffAndSetDoStatus__9daAlink_cFv
/* 800F0EE0  7C 7D 1B 78 */	mr r29, r3
/* 800F0EE4  7F C3 F3 78 */	mr r3, r30
/* 800F0EE8  38 80 00 01 */	li r4, 1
/* 800F0EEC  4B FC 6D 0D */	bl orderTalk__9daAlink_cFi
/* 800F0EF0  2C 03 00 00 */	cmpwi r3, 0
/* 800F0EF4  41 82 00 0C */	beq lbl_800F0F00
/* 800F0EF8  38 60 00 01 */	li r3, 1
/* 800F0EFC  48 00 01 4C */	b lbl_800F1048
lbl_800F0F00:
/* 800F0F00  7F C3 F3 78 */	mr r3, r30
/* 800F0F04  4B FF E5 4D */	bl checkNextActionHorse__9daAlink_cFv
/* 800F0F08  2C 03 00 00 */	cmpwi r3, 0
/* 800F0F0C  41 82 00 0C */	beq lbl_800F0F18
/* 800F0F10  38 60 00 01 */	li r3, 1
/* 800F0F14  48 00 01 34 */	b lbl_800F1048
lbl_800F0F18:
/* 800F0F18  7F C3 F3 78 */	mr r3, r30
/* 800F0F1C  7F A4 EB 78 */	mr r4, r29
/* 800F0F20  4B FF E9 65 */	bl setHorseGetOff__9daAlink_cFi
/* 800F0F24  2C 03 00 00 */	cmpwi r3, 0
/* 800F0F28  41 82 00 24 */	beq lbl_800F0F4C
/* 800F0F2C  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800F0F30  28 00 00 3B */	cmplwi r0, 0x3b
/* 800F0F34  41 82 00 10 */	beq lbl_800F0F44
/* 800F0F38  80 1F 17 4C */	lwz r0, 0x174c(r31)
/* 800F0F3C  54 00 06 2C */	rlwinm r0, r0, 0, 0x18, 0x16
/* 800F0F40  90 1F 17 4C */	stw r0, 0x174c(r31)
lbl_800F0F44:
/* 800F0F44  38 60 00 01 */	li r3, 1
/* 800F0F48  48 00 01 00 */	b lbl_800F1048
lbl_800F0F4C:
/* 800F0F4C  80 1F 17 44 */	lwz r0, 0x1744(r31)
/* 800F0F50  54 00 00 C2 */	rlwinm r0, r0, 0, 3, 1
/* 800F0F54  90 1F 17 44 */	stw r0, 0x1744(r31)
/* 800F0F58  48 00 00 EC */	b lbl_800F1044
lbl_800F0F5C:
/* 800F0F5C  7F C3 F3 78 */	mr r3, r30
/* 800F0F60  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800F0F64  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800F0F68  7D 89 03 A6 */	mtctr r12
/* 800F0F6C  4E 80 04 21 */	bctrl 
/* 800F0F70  2C 03 00 00 */	cmpwi r3, 0
/* 800F0F74  41 82 00 58 */	beq lbl_800F0FCC
/* 800F0F78  7F C3 F3 78 */	mr r3, r30
/* 800F0F7C  48 02 4C A5 */	bl checkEventRun__9daAlink_cCFv
/* 800F0F80  2C 03 00 00 */	cmpwi r3, 0
/* 800F0F84  40 82 00 48 */	bne lbl_800F0FCC
/* 800F0F88  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800F0F8C  54 00 01 D1 */	rlwinm. r0, r0, 0, 7, 8
/* 800F0F90  40 82 00 3C */	bne lbl_800F0FCC
/* 800F0F94  C0 3F 05 C0 */	lfs f1, 0x5c0(r31)
/* 800F0F98  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800F0F9C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F0FA0  4C 41 13 82 */	cror 2, 1, 2
/* 800F0FA4  40 82 00 98 */	bne lbl_800F103C
/* 800F0FA8  7F C3 F3 78 */	mr r3, r30
/* 800F0FAC  38 80 FF FC */	li r4, -4
/* 800F0FB0  38 A0 00 01 */	li r5, 1
/* 800F0FB4  38 C0 00 00 */	li r6, 0
/* 800F0FB8  38 E0 00 00 */	li r7, 0
/* 800F0FBC  39 00 00 00 */	li r8, 0
/* 800F0FC0  39 20 00 00 */	li r9, 0
/* 800F0FC4  4B FE 87 19 */	bl procCoLargeDamageInit__9daAlink_cFiissP12dCcD_GObjInfi
/* 800F0FC8  48 00 00 80 */	b lbl_800F1048
lbl_800F0FCC:
/* 800F0FCC  7F C3 F3 78 */	mr r3, r30
/* 800F0FD0  4B FC 16 95 */	bl spActionButton__9daAlink_cFv
/* 800F0FD4  2C 03 00 00 */	cmpwi r3, 0
/* 800F0FD8  41 82 00 64 */	beq lbl_800F103C
/* 800F0FDC  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800F0FE0  74 00 41 80 */	andis. r0, r0, 0x4180
/* 800F0FE4  40 82 00 58 */	bne lbl_800F103C
/* 800F0FE8  7F C3 F3 78 */	mr r3, r30
/* 800F0FEC  38 80 00 32 */	li r4, 0x32
/* 800F0FF0  4B FC 22 61 */	bl setDoStatus__9daAlink_cFUc
/* 800F0FF4  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800F0FF8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800F0FFC  41 82 00 40 */	beq lbl_800F103C
/* 800F1000  7F C3 F3 78 */	mr r3, r30
/* 800F1004  38 80 00 02 */	li r4, 2
/* 800F1008  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F100C  4B FB C7 19 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F1010  80 1F 17 48 */	lwz r0, 0x1748(r31)
/* 800F1014  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800F1018  41 82 00 14 */	beq lbl_800F102C
/* 800F101C  7F C3 F3 78 */	mr r3, r30
/* 800F1020  38 80 00 00 */	li r4, 0
/* 800F1024  4B FD 4E 45 */	bl procAutoJumpInit__9daAlink_cFi
/* 800F1028  48 00 00 20 */	b lbl_800F1048
lbl_800F102C:
/* 800F102C  7F C3 F3 78 */	mr r3, r30
/* 800F1030  38 80 00 00 */	li r4, 0
/* 800F1034  4B FD 47 71 */	bl procBackJumpInit__9daAlink_cFi
/* 800F1038  48 00 00 10 */	b lbl_800F1048
lbl_800F103C:
/* 800F103C  7F C3 F3 78 */	mr r3, r30
/* 800F1040  4B FF CA 39 */	bl setHorseTurnAnime__9daAlink_cFv
lbl_800F1044:
/* 800F1044  38 60 00 01 */	li r3, 1
lbl_800F1048:
/* 800F1048  39 61 00 20 */	addi r11, r1, 0x20
/* 800F104C  48 27 11 DD */	bl _restgpr_29
/* 800F1050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800F1054  7C 08 03 A6 */	mtlr r0
/* 800F1058  38 21 00 20 */	addi r1, r1, 0x20
/* 800F105C  4E 80 00 20 */	blr 
