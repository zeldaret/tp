lbl_800E9BD0:
/* 800E9BD0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800E9BD4  7C 08 02 A6 */	mflr r0
/* 800E9BD8  90 01 00 44 */	stw r0, 0x44(r1)
/* 800E9BDC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 800E9BE0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 800E9BE4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 800E9BE8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 800E9BEC  39 61 00 20 */	addi r11, r1, 0x20
/* 800E9BF0  48 27 85 E5 */	bl _savegpr_27
/* 800E9BF4  7C 7C 1B 78 */	mr r28, r3
/* 800E9BF8  3B BC 1F D0 */	addi r29, r28, 0x1fd0
/* 800E9BFC  83 E3 28 10 */	lwz r31, 0x2810(r3)
/* 800E9C00  AB DF 00 08 */	lha r30, 8(r31)
/* 800E9C04  A8 03 30 0C */	lha r0, 0x300c(r3)
/* 800E9C08  2C 00 00 00 */	cmpwi r0, 0
/* 800E9C0C  41 82 00 20 */	beq lbl_800E9C2C
/* 800E9C10  A8 1C 30 0A */	lha r0, 0x300a(r28)
/* 800E9C14  2C 00 00 00 */	cmpwi r0, 0
/* 800E9C18  40 82 00 1C */	bne lbl_800E9C34
/* 800E9C1C  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800E9C20  C0 02 93 C4 */	lfs f0, lit_10194(r2)
/* 800E9C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9C28  40 80 00 0C */	bge lbl_800E9C34
lbl_800E9C2C:
/* 800E9C2C  A8 9C 2F F0 */	lha r4, 0x2ff0(r28)
/* 800E9C30  48 00 00 08 */	b lbl_800E9C38
lbl_800E9C34:
/* 800E9C34  38 80 00 00 */	li r4, 0
lbl_800E9C38:
/* 800E9C38  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 800E9C3C  38 A0 00 05 */	li r5, 5
/* 800E9C40  38 C0 20 00 */	li r6, 0x2000
/* 800E9C44  38 E0 04 00 */	li r7, 0x400
/* 800E9C48  48 18 68 F9 */	bl cLib_addCalcAngleS__FPsssss
/* 800E9C4C  28 1F 00 00 */	cmplwi r31, 0
/* 800E9C50  40 82 00 44 */	bne lbl_800E9C94
/* 800E9C54  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 800E9C58  28 00 00 2A */	cmplwi r0, 0x2a
/* 800E9C5C  41 82 00 24 */	beq lbl_800E9C80
/* 800E9C60  7F 83 E3 78 */	mr r3, r28
/* 800E9C64  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800E9C68  81 8C 02 28 */	lwz r12, 0x228(r12)
/* 800E9C6C  7D 89 03 A6 */	mtctr r12
/* 800E9C70  4E 80 04 21 */	bctrl 
/* 800E9C74  7F 83 E3 78 */	mr r3, r28
/* 800E9C78  48 02 E0 81 */	bl endDemoMode__9daAlink_cFv
/* 800E9C7C  48 00 00 0C */	b lbl_800E9C88
lbl_800E9C80:
/* 800E9C80  7F 83 E3 78 */	mr r3, r28
/* 800E9C84  4B FF E6 15 */	bl offGoatStopGame__9daAlink_cFv
lbl_800E9C88:
/* 800E9C88  7F 83 E3 78 */	mr r3, r28
/* 800E9C8C  4B FD 97 2D */	bl procWaitInit__9daAlink_cFv
/* 800E9C90  48 00 05 F0 */	b lbl_800EA280
lbl_800E9C94:
/* 800E9C94  80 1C 19 9C */	lwz r0, 0x199c(r28)
/* 800E9C98  54 04 06 B5 */	rlwinm. r4, r0, 0, 0x1a, 0x1a
/* 800E9C9C  40 82 00 38 */	bne lbl_800E9CD4
/* 800E9CA0  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800E9CA4  2C 00 00 00 */	cmpwi r0, 0
/* 800E9CA8  40 82 00 2C */	bne lbl_800E9CD4
/* 800E9CAC  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 800E9CB0  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 800E9CB4  41 82 00 0C */	beq lbl_800E9CC0
/* 800E9CB8  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 800E9CBC  40 82 00 18 */	bne lbl_800E9CD4
lbl_800E9CC0:
/* 800E9CC0  7F 83 E3 78 */	mr r3, r28
/* 800E9CC4  7F E4 FB 78 */	mr r4, r31
/* 800E9CC8  4B FF F5 49 */	bl setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c
/* 800E9CCC  38 60 00 01 */	li r3, 1
/* 800E9CD0  48 00 05 B0 */	b lbl_800EA280
lbl_800E9CD4:
/* 800E9CD4  A8 1C 30 0C */	lha r0, 0x300c(r28)
/* 800E9CD8  2C 00 00 00 */	cmpwi r0, 0
/* 800E9CDC  41 82 02 0C */	beq lbl_800E9EE8
/* 800E9CE0  A8 7C 30 0A */	lha r3, 0x300a(r28)
/* 800E9CE4  2C 03 00 00 */	cmpwi r3, 0
/* 800E9CE8  40 82 01 B0 */	bne lbl_800E9E98
/* 800E9CEC  38 00 00 05 */	li r0, 5
/* 800E9CF0  98 1C 2F 99 */	stb r0, 0x2f99(r28)
/* 800E9CF4  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 800E9CF8  64 00 08 00 */	oris r0, r0, 0x800
/* 800E9CFC  90 1C 05 88 */	stw r0, 0x588(r28)
/* 800E9D00  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800E9D04  C0 02 94 B0 */	lfs f0, lit_16790(r2)
/* 800E9D08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9D0C  4C 41 13 82 */	cror 2, 1, 2
/* 800E9D10  40 82 00 18 */	bne lbl_800E9D28
/* 800E9D14  38 00 00 01 */	li r0, 1
/* 800E9D18  98 1C 2F 92 */	stb r0, 0x2f92(r28)
/* 800E9D1C  38 00 00 06 */	li r0, 6
/* 800E9D20  98 1C 2F 93 */	stb r0, 0x2f93(r28)
/* 800E9D24  48 00 00 48 */	b lbl_800E9D6C
lbl_800E9D28:
/* 800E9D28  C0 02 93 7C */	lfs f0, lit_8779(r2)
/* 800E9D2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9D30  4C 41 13 82 */	cror 2, 1, 2
/* 800E9D34  40 82 00 14 */	bne lbl_800E9D48
/* 800E9D38  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800E9D3C  60 00 01 00 */	ori r0, r0, 0x100
/* 800E9D40  90 1C 31 A0 */	stw r0, 0x31a0(r28)
/* 800E9D44  48 00 00 28 */	b lbl_800E9D6C
lbl_800E9D48:
/* 800E9D48  C0 02 94 28 */	lfs f0, lit_14621(r2)
/* 800E9D4C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9D50  4C 41 13 82 */	cror 2, 1, 2
/* 800E9D54  40 82 00 18 */	bne lbl_800E9D6C
/* 800E9D58  38 00 00 FE */	li r0, 0xfe
/* 800E9D5C  98 1C 2F 92 */	stb r0, 0x2f92(r28)
/* 800E9D60  98 1C 2F 93 */	stb r0, 0x2f93(r28)
/* 800E9D64  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E9D68  D0 1C 34 78 */	stfs f0, 0x3478(r28)
lbl_800E9D6C:
/* 800E9D6C  7F A3 EB 78 */	mr r3, r29
/* 800E9D70  48 07 47 5D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E9D74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E9D78  41 82 01 68 */	beq lbl_800E9EE0
/* 800E9D7C  A8 1C 30 12 */	lha r0, 0x3012(r28)
/* 800E9D80  2C 00 00 00 */	cmpwi r0, 0
/* 800E9D84  40 82 00 38 */	bne lbl_800E9DBC
/* 800E9D88  7F 83 E3 78 */	mr r3, r28
/* 800E9D8C  38 80 00 00 */	li r4, 0
/* 800E9D90  38 A0 80 00 */	li r5, -32768
/* 800E9D94  38 C0 00 00 */	li r6, 0
/* 800E9D98  4B FC 3D E1 */	bl setOldRootQuaternion__9daAlink_cFsss
/* 800E9D9C  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 800E9DA0  3C 63 00 01 */	addis r3, r3, 1
/* 800E9DA4  38 03 80 00 */	addi r0, r3, -32768
/* 800E9DA8  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 800E9DAC  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800E9DB0  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 800E9DB4  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 800E9DB8  B0 1C 2F E4 */	sth r0, 0x2fe4(r28)
lbl_800E9DBC:
/* 800E9DBC  2C 1E 00 21 */	cmpwi r30, 0x21
/* 800E9DC0  40 82 00 44 */	bne lbl_800E9E04
/* 800E9DC4  38 00 00 30 */	li r0, 0x30
/* 800E9DC8  98 1C 2F 99 */	stb r0, 0x2f99(r28)
/* 800E9DCC  7F 83 E3 78 */	mr r3, r28
/* 800E9DD0  38 80 00 1A */	li r4, 0x1a
/* 800E9DD4  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800E9DD8  38 A5 D6 BC */	addi r5, r5, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800E9DDC  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 800E9DE0  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800E9DE4  4B FC 31 FD */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800E9DE8  80 1C 31 A0 */	lwz r0, 0x31a0(r28)
/* 800E9DEC  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800E9DF0  90 1C 31 A0 */	stw r0, 0x31a0(r28)
/* 800E9DF4  38 00 00 1E */	li r0, 0x1e
/* 800E9DF8  B0 1C 30 0A */	sth r0, 0x300a(r28)
/* 800E9DFC  38 60 00 01 */	li r3, 1
/* 800E9E00  48 00 04 80 */	b lbl_800EA280
lbl_800E9E04:
/* 800E9E04  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 800E9E08  28 00 00 2A */	cmplwi r0, 0x2a
/* 800E9E0C  41 82 00 24 */	beq lbl_800E9E30
/* 800E9E10  7F 83 E3 78 */	mr r3, r28
/* 800E9E14  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800E9E18  81 8C 02 28 */	lwz r12, 0x228(r12)
/* 800E9E1C  7D 89 03 A6 */	mtctr r12
/* 800E9E20  4E 80 04 21 */	bctrl 
/* 800E9E24  7F 83 E3 78 */	mr r3, r28
/* 800E9E28  48 02 DE D1 */	bl endDemoMode__9daAlink_cFv
/* 800E9E2C  48 00 00 60 */	b lbl_800E9E8C
lbl_800E9E30:
/* 800E9E30  7F 83 E3 78 */	mr r3, r28
/* 800E9E34  4B FF E4 65 */	bl offGoatStopGame__9daAlink_cFv
/* 800E9E38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E9E3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E9E40  3B 63 07 F0 */	addi r27, r3, 0x7f0
/* 800E9E44  7F 63 DB 78 */	mr r3, r27
/* 800E9E48  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 800E9E4C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 800E9E50  A0 84 04 6A */	lhz r4, 0x46a(r4)
/* 800E9E54  4B F4 AB 69 */	bl isEventBit__11dSv_event_cCFUs
/* 800E9E58  2C 03 00 00 */	cmpwi r3, 0
/* 800E9E5C  41 82 00 1C */	beq lbl_800E9E78
/* 800E9E60  7F 63 DB 78 */	mr r3, r27
/* 800E9E64  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 800E9E68  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 800E9E6C  A0 84 04 96 */	lhz r4, 0x496(r4)
/* 800E9E70  4B F4 AB 1D */	bl onEventBit__11dSv_event_cFUs
/* 800E9E74  48 00 00 18 */	b lbl_800E9E8C
lbl_800E9E78:
/* 800E9E78  7F 63 DB 78 */	mr r3, r27
/* 800E9E7C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 800E9E80  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 800E9E84  A0 84 01 64 */	lhz r4, 0x164(r4)
/* 800E9E88  4B F4 AB 05 */	bl onEventBit__11dSv_event_cFUs
lbl_800E9E8C:
/* 800E9E8C  7F 83 E3 78 */	mr r3, r28
/* 800E9E90  4B FD 95 29 */	bl procWaitInit__9daAlink_cFv
/* 800E9E94  48 00 03 EC */	b lbl_800EA280
lbl_800E9E98:
/* 800E9E98  38 03 FF FF */	addi r0, r3, -1
/* 800E9E9C  B0 1C 30 0A */	sth r0, 0x300a(r28)
/* 800E9EA0  A8 1C 30 0A */	lha r0, 0x300a(r28)
/* 800E9EA4  2C 00 00 00 */	cmpwi r0, 0
/* 800E9EA8  40 82 00 38 */	bne lbl_800E9EE0
/* 800E9EAC  80 1C 05 88 */	lwz r0, 0x588(r28)
/* 800E9EB0  64 00 08 00 */	oris r0, r0, 0x800
/* 800E9EB4  90 1C 05 88 */	stw r0, 0x588(r28)
/* 800E9EB8  7F 83 E3 78 */	mr r3, r28
/* 800E9EBC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800E9EC0  81 8C 02 28 */	lwz r12, 0x228(r12)
/* 800E9EC4  7D 89 03 A6 */	mtctr r12
/* 800E9EC8  4E 80 04 21 */	bctrl 
/* 800E9ECC  7F 83 E3 78 */	mr r3, r28
/* 800E9ED0  48 02 DE 29 */	bl endDemoMode__9daAlink_cFv
/* 800E9ED4  7F 83 E3 78 */	mr r3, r28
/* 800E9ED8  4B FD 94 E1 */	bl procWaitInit__9daAlink_cFv
/* 800E9EDC  48 00 03 A4 */	b lbl_800EA280
lbl_800E9EE0:
/* 800E9EE0  38 60 00 01 */	li r3, 1
/* 800E9EE4  48 00 03 9C */	b lbl_800EA280
lbl_800E9EE8:
/* 800E9EE8  88 1C 2F 8E */	lbz r0, 0x2f8e(r28)
/* 800E9EEC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800E9EF0  41 82 00 40 */	beq lbl_800E9F30
/* 800E9EF4  28 04 00 00 */	cmplwi r4, 0
/* 800E9EF8  40 82 00 18 */	bne lbl_800E9F10
/* 800E9EFC  80 7C 05 70 */	lwz r3, 0x570(r28)
/* 800E9F00  54 60 04 E7 */	rlwinm. r0, r3, 0, 0x13, 0x13
/* 800E9F04  41 82 00 2C */	beq lbl_800E9F30
/* 800E9F08  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 800E9F0C  41 82 00 24 */	beq lbl_800E9F30
lbl_800E9F10:
/* 800E9F10  80 1C 31 98 */	lwz r0, 0x3198(r28)
/* 800E9F14  2C 00 00 00 */	cmpwi r0, 0
/* 800E9F18  40 81 00 40 */	ble lbl_800E9F58
/* 800E9F1C  C0 3C 33 98 */	lfs f1, 0x3398(r28)
/* 800E9F20  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800E9F24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9F28  4C 41 13 82 */	cror 2, 1, 2
/* 800E9F2C  40 82 00 2C */	bne lbl_800E9F58
lbl_800E9F30:
/* 800E9F30  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 800E9F34  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800E9F38  41 82 00 0C */	beq lbl_800E9F44
/* 800E9F3C  7F 83 E3 78 */	mr r3, r28
/* 800E9F40  4B FF 8E 85 */	bl cancelMagneBootsOn__9daAlink_cFv
lbl_800E9F44:
/* 800E9F44  7F 83 E3 78 */	mr r3, r28
/* 800E9F48  7F E4 FB 78 */	mr r4, r31
/* 800E9F4C  4B FF F2 C5 */	bl setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c
/* 800E9F50  38 60 00 01 */	li r3, 1
/* 800E9F54  48 00 03 2C */	b lbl_800EA280
lbl_800E9F58:
/* 800E9F58  7F 83 E3 78 */	mr r3, r28
/* 800E9F5C  38 80 00 15 */	li r4, 0x15
/* 800E9F60  4B FC 93 09 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800E9F64  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 800E9F68  A8 1C 2F E2 */	lha r0, 0x2fe2(r28)
/* 800E9F6C  7C 03 00 50 */	subf r0, r3, r0
/* 800E9F70  7C 03 07 34 */	extsh r3, r0
/* 800E9F74  4B FC 95 21 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800E9F78  7C 7B 1B 78 */	mr r27, r3
/* 800E9F7C  C0 3C 33 98 */	lfs f1, 0x3398(r28)
/* 800E9F80  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800E9F84  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E9F88  40 81 01 48 */	ble lbl_800EA0D0
/* 800E9F8C  C3 FD 00 10 */	lfs f31, 0x10(r29)
/* 800E9F90  7F A3 EB 78 */	mr r3, r29
/* 800E9F94  48 07 45 39 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E9F98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E9F9C  41 82 00 10 */	beq lbl_800E9FAC
/* 800E9FA0  7F 83 E3 78 */	mr r3, r28
/* 800E9FA4  38 80 01 1C */	li r4, 0x11c
/* 800E9FA8  4B FC 2F D9 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800E9FAC:
/* 800E9FAC  38 00 00 60 */	li r0, 0x60
/* 800E9FB0  98 1C 2F 9D */	stb r0, 0x2f9d(r28)
/* 800E9FB4  80 7C 31 98 */	lwz r3, 0x3198(r28)
/* 800E9FB8  2C 03 00 00 */	cmpwi r3, 0
/* 800E9FBC  40 81 00 20 */	ble lbl_800E9FDC
/* 800E9FC0  38 03 00 01 */	addi r0, r3, 1
/* 800E9FC4  90 1C 31 98 */	stw r0, 0x3198(r28)
/* 800E9FC8  38 7C 33 98 */	addi r3, r28, 0x3398
/* 800E9FCC  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 800E9FD0  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 800E9FD4  48 18 67 6D */	bl cLib_chaseF__FPfff
/* 800E9FD8  48 00 00 AC */	b lbl_800EA084
lbl_800E9FDC:
/* 800E9FDC  C3 C2 92 B8 */	lfs f30, lit_6040(r2)
/* 800E9FE0  2C 1E 00 21 */	cmpwi r30, 0x21
/* 800E9FE4  41 82 00 0C */	beq lbl_800E9FF0
/* 800E9FE8  2C 1E 01 B1 */	cmpwi r30, 0x1b1
/* 800E9FEC  40 82 00 30 */	bne lbl_800EA01C
lbl_800E9FF0:
/* 800E9FF0  7F 83 E3 78 */	mr r3, r28
/* 800E9FF4  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800E9FF8  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800E9FFC  7D 89 03 A6 */	mtctr r12
/* 800EA000  4E 80 04 21 */	bctrl 
/* 800EA004  2C 03 00 00 */	cmpwi r3, 0
/* 800EA008  40 82 00 14 */	bne lbl_800EA01C
/* 800EA00C  80 7C 31 98 */	lwz r3, 0x3198(r28)
/* 800EA010  38 03 00 01 */	addi r0, r3, 1
/* 800EA014  90 1C 31 98 */	stw r0, 0x3198(r28)
/* 800EA018  48 00 00 24 */	b lbl_800EA03C
lbl_800EA01C:
/* 800EA01C  C0 3C 33 AC */	lfs f1, 0x33ac(r28)
/* 800EA020  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800EA024  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EA028  40 81 00 14 */	ble lbl_800EA03C
/* 800EA02C  2C 1B 00 00 */	cmpwi r27, 0
/* 800EA030  40 82 00 0C */	bne lbl_800EA03C
/* 800EA034  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800EA038  EF DE 00 2A */	fadds f30, f30, f0
lbl_800EA03C:
/* 800EA03C  7F 83 E3 78 */	mr r3, r28
/* 800EA040  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800EA044  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800EA048  7D 89 03 A6 */	mtctr r12
/* 800EA04C  4E 80 04 21 */	bctrl 
/* 800EA050  2C 03 00 00 */	cmpwi r3, 0
/* 800EA054  41 82 00 0C */	beq lbl_800EA060
/* 800EA058  C0 02 92 98 */	lfs f0, lit_5943(r2)
/* 800EA05C  EF DE 00 2A */	fadds f30, f30, f0
lbl_800EA060:
/* 800EA060  38 7C 33 98 */	addi r3, r28, 0x3398
/* 800EA064  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800EA068  FC 40 F0 90 */	fmr f2, f30
/* 800EA06C  48 18 66 D5 */	bl cLib_chaseF__FPfff
/* 800EA070  C0 3C 33 98 */	lfs f1, 0x3398(r28)
/* 800EA074  C0 02 93 A0 */	lfs f0, lit_9054(r2)
/* 800EA078  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EA07C  40 80 00 08 */	bge lbl_800EA084
/* 800EA080  D0 1C 33 98 */	stfs f0, 0x3398(r28)
lbl_800EA084:
/* 800EA084  7F 83 E3 78 */	mr r3, r28
/* 800EA088  38 80 01 1C */	li r4, 0x11c
/* 800EA08C  4B FC 24 CD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800EA090  2C 03 00 00 */	cmpwi r3, 0
/* 800EA094  40 82 00 1C */	bne lbl_800EA0B0
/* 800EA098  7F 83 E3 78 */	mr r3, r28
/* 800EA09C  38 80 01 1C */	li r4, 0x11c
/* 800EA0A0  4B FC 2E E1 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EA0A4  D3 FD 00 10 */	stfs f31, 0x10(r29)
/* 800EA0A8  80 7C 1F 2C */	lwz r3, 0x1f2c(r28)
/* 800EA0AC  D3 E3 00 08 */	stfs f31, 8(r3)
lbl_800EA0B0:
/* 800EA0B0  7F 83 E3 78 */	mr r3, r28
/* 800EA0B4  3C 80 00 03 */	lis r4, 0x0003 /* 0x00030017@ha */
/* 800EA0B8  38 84 00 17 */	addi r4, r4, 0x0017 /* 0x00030017@l */
/* 800EA0BC  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800EA0C0  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 800EA0C4  7D 89 03 A6 */	mtctr r12
/* 800EA0C8  4E 80 04 21 */	bctrl 
/* 800EA0CC  48 00 01 B0 */	b lbl_800EA27C
lbl_800EA0D0:
/* 800EA0D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800EA0D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EA0D8  40 81 00 34 */	ble lbl_800EA10C
/* 800EA0DC  D0 1C 33 98 */	stfs f0, 0x3398(r28)
/* 800EA0E0  7F 83 E3 78 */	mr r3, r28
/* 800EA0E4  38 80 01 1E */	li r4, 0x11e
/* 800EA0E8  4B FC 2E 99 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EA0EC  7F 83 E3 78 */	mr r3, r28
/* 800EA0F0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010010@ha */
/* 800EA0F4  38 84 00 10 */	addi r4, r4, 0x0010 /* 0x00010010@l */
/* 800EA0F8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800EA0FC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EA100  7D 89 03 A6 */	mtctr r12
/* 800EA104  4E 80 04 21 */	bctrl 
/* 800EA108  48 00 00 3C */	b lbl_800EA144
lbl_800EA10C:
/* 800EA10C  7F A3 EB 78 */	mr r3, r29
/* 800EA110  48 07 43 BD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EA114  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EA118  41 82 00 2C */	beq lbl_800EA144
/* 800EA11C  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 800EA120  28 00 00 2A */	cmplwi r0, 0x2a
/* 800EA124  40 82 00 20 */	bne lbl_800EA144
/* 800EA128  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800EA12C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800EA130  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 800EA134  3C 80 80 38 */	lis r4, tempBitLabels__20dSv_event_tmp_flag_c@ha /* 0x803790C0@ha */
/* 800EA138  38 84 90 C0 */	addi r4, r4, tempBitLabels__20dSv_event_tmp_flag_c@l /* 0x803790C0@l */
/* 800EA13C  A0 84 00 46 */	lhz r4, 0x46(r4)
/* 800EA140  4B F4 A8 4D */	bl onEventBit__11dSv_event_cFUs
lbl_800EA144:
/* 800EA144  38 00 00 04 */	li r0, 4
/* 800EA148  98 1C 2F 99 */	stb r0, 0x2f99(r28)
/* 800EA14C  7F A3 EB 78 */	mr r3, r29
/* 800EA150  48 07 43 7D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800EA154  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EA158  41 82 01 24 */	beq lbl_800EA27C
/* 800EA15C  2C 1E 01 B1 */	cmpwi r30, 0x1b1
/* 800EA160  40 82 00 34 */	bne lbl_800EA194
/* 800EA164  7F 83 E3 78 */	mr r3, r28
/* 800EA168  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800EA16C  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800EA170  7D 89 03 A6 */	mtctr r12
/* 800EA174  4E 80 04 21 */	bctrl 
/* 800EA178  2C 03 00 00 */	cmpwi r3, 0
/* 800EA17C  40 82 00 18 */	bne lbl_800EA194
/* 800EA180  7F 83 E3 78 */	mr r3, r28
/* 800EA184  7F E4 FB 78 */	mr r4, r31
/* 800EA188  4B FF F0 89 */	bl setGoatStopGameFail__9daAlink_cFP10fopAc_ac_c
/* 800EA18C  38 60 00 01 */	li r3, 1
/* 800EA190  48 00 00 F0 */	b lbl_800EA280
lbl_800EA194:
/* 800EA194  C0 3C 33 AC */	lfs f1, 0x33ac(r28)
/* 800EA198  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800EA19C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800EA1A0  40 81 00 18 */	ble lbl_800EA1B8
/* 800EA1A4  2C 1B 00 02 */	cmpwi r27, 2
/* 800EA1A8  41 82 00 0C */	beq lbl_800EA1B4
/* 800EA1AC  2C 1B 00 03 */	cmpwi r27, 3
/* 800EA1B0  40 82 00 08 */	bne lbl_800EA1B8
lbl_800EA1B4:
/* 800EA1B4  B3 7C 30 0E */	sth r27, 0x300e(r28)
lbl_800EA1B8:
/* 800EA1B8  A8 1C 30 0E */	lha r0, 0x300e(r28)
/* 800EA1BC  2C 00 00 02 */	cmpwi r0, 2
/* 800EA1C0  40 82 00 48 */	bne lbl_800EA208
/* 800EA1C4  2C 1E 00 21 */	cmpwi r30, 0x21
/* 800EA1C8  40 82 00 14 */	bne lbl_800EA1DC
/* 800EA1CC  A0 1F 0A 48 */	lhz r0, 0xa48(r31)
/* 800EA1D0  60 00 00 08 */	ori r0, r0, 8
/* 800EA1D4  B0 1F 0A 48 */	sth r0, 0xa48(r31)
/* 800EA1D8  48 00 00 28 */	b lbl_800EA200
lbl_800EA1DC:
/* 800EA1DC  2C 1E 01 06 */	cmpwi r30, 0x106
/* 800EA1E0  40 82 00 14 */	bne lbl_800EA1F4
/* 800EA1E4  A0 1F 05 68 */	lhz r0, 0x568(r31)
/* 800EA1E8  60 00 00 08 */	ori r0, r0, 8
/* 800EA1EC  B0 1F 05 68 */	sth r0, 0x568(r31)
/* 800EA1F0  48 00 00 10 */	b lbl_800EA200
lbl_800EA1F4:
/* 800EA1F4  88 1F 05 8D */	lbz r0, 0x58d(r31)
/* 800EA1F8  60 00 00 08 */	ori r0, r0, 8
/* 800EA1FC  98 1F 05 8D */	stb r0, 0x58d(r31)
lbl_800EA200:
/* 800EA200  38 80 01 1F */	li r4, 0x11f
/* 800EA204  48 00 00 44 */	b lbl_800EA248
lbl_800EA208:
/* 800EA208  2C 1E 00 21 */	cmpwi r30, 0x21
/* 800EA20C  40 82 00 14 */	bne lbl_800EA220
/* 800EA210  A0 1F 0A 48 */	lhz r0, 0xa48(r31)
/* 800EA214  60 00 00 10 */	ori r0, r0, 0x10
/* 800EA218  B0 1F 0A 48 */	sth r0, 0xa48(r31)
/* 800EA21C  48 00 00 28 */	b lbl_800EA244
lbl_800EA220:
/* 800EA220  2C 1E 01 06 */	cmpwi r30, 0x106
/* 800EA224  40 82 00 14 */	bne lbl_800EA238
/* 800EA228  A0 1F 05 68 */	lhz r0, 0x568(r31)
/* 800EA22C  60 00 00 10 */	ori r0, r0, 0x10
/* 800EA230  B0 1F 05 68 */	sth r0, 0x568(r31)
/* 800EA234  48 00 00 10 */	b lbl_800EA244
lbl_800EA238:
/* 800EA238  88 1F 05 8D */	lbz r0, 0x58d(r31)
/* 800EA23C  60 00 00 10 */	ori r0, r0, 0x10
/* 800EA240  98 1F 05 8D */	stb r0, 0x58d(r31)
lbl_800EA244:
/* 800EA244  38 80 01 20 */	li r4, 0x120
lbl_800EA248:
/* 800EA248  38 00 00 01 */	li r0, 1
/* 800EA24C  B0 1C 30 0C */	sth r0, 0x300c(r28)
/* 800EA250  7F 83 E3 78 */	mr r3, r28
/* 800EA254  4B FC 2D 2D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EA258  38 00 00 0C */	li r0, 0xc
/* 800EA25C  98 1C 2F 99 */	stb r0, 0x2f99(r28)
/* 800EA260  7F 83 E3 78 */	mr r3, r28
/* 800EA264  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010059@ha */
/* 800EA268  38 84 00 59 */	addi r4, r4, 0x0059 /* 0x00010059@l */
/* 800EA26C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 800EA270  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800EA274  7D 89 03 A6 */	mtctr r12
/* 800EA278  4E 80 04 21 */	bctrl 
lbl_800EA27C:
/* 800EA27C  38 60 00 01 */	li r3, 1
lbl_800EA280:
/* 800EA280  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 800EA284  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 800EA288  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 800EA28C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 800EA290  39 61 00 20 */	addi r11, r1, 0x20
/* 800EA294  48 27 7F 8D */	bl _restgpr_27
/* 800EA298  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800EA29C  7C 08 03 A6 */	mtlr r0
/* 800EA2A0  38 21 00 40 */	addi r1, r1, 0x40
/* 800EA2A4  4E 80 00 20 */	blr 
