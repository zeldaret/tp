lbl_804C2EBC:
/* 804C2EBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C2EC0  7C 08 02 A6 */	mflr r0
/* 804C2EC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C2EC8  39 61 00 20 */	addi r11, r1, 0x20
/* 804C2ECC  4B E9 F3 0D */	bl _savegpr_28
/* 804C2ED0  7C 7D 1B 78 */	mr r29, r3
/* 804C2ED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C2ED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C2EDC  83 E3 5D B4 */	lwz r31, 0x5db4(r3)
/* 804C2EE0  38 60 00 00 */	li r3, 0
/* 804C2EE4  A0 1D 06 34 */	lhz r0, 0x634(r29)
/* 804C2EE8  28 00 03 A4 */	cmplwi r0, 0x3a4
/* 804C2EEC  41 82 00 1C */	beq lbl_804C2F08
/* 804C2EF0  28 00 FF FF */	cmplwi r0, 0xffff
/* 804C2EF4  41 82 00 14 */	beq lbl_804C2F08
/* 804C2EF8  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804C2EFC  28 00 03 99 */	cmplwi r0, 0x399
/* 804C2F00  41 82 00 08 */	beq lbl_804C2F08
/* 804C2F04  38 60 00 01 */	li r3, 1
lbl_804C2F08:
/* 804C2F08  54 7E 06 3E */	clrlwi r30, r3, 0x18
/* 804C2F0C  3B 80 00 00 */	li r28, 0
/* 804C2F10  B3 81 00 0E */	sth r28, 0xe(r1)
/* 804C2F14  B3 81 00 0C */	sth r28, 0xc(r1)
/* 804C2F18  B3 81 00 0A */	sth r28, 0xa(r1)
/* 804C2F1C  B3 81 00 08 */	sth r28, 8(r1)
/* 804C2F20  88 1D 08 4E */	lbz r0, 0x84e(r29)
/* 804C2F24  28 00 00 02 */	cmplwi r0, 2
/* 804C2F28  41 82 00 A8 */	beq lbl_804C2FD0
/* 804C2F2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C2F30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C2F34  38 63 00 28 */	addi r3, r3, 0x28
/* 804C2F38  38 80 00 03 */	li r4, 3
/* 804C2F3C  4B B6 FC B1 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 804C2F40  2C 03 00 00 */	cmpwi r3, 0
/* 804C2F44  41 82 00 24 */	beq lbl_804C2F68
/* 804C2F48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804C2F4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804C2F50  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804C2F54  38 80 1E 08 */	li r4, 0x1e08
/* 804C2F58  4B B7 1A 65 */	bl isEventBit__11dSv_event_cCFUs
/* 804C2F5C  2C 03 00 00 */	cmpwi r3, 0
/* 804C2F60  40 82 00 08 */	bne lbl_804C2F68
/* 804C2F64  3B 80 00 01 */	li r28, 1
lbl_804C2F68:
/* 804C2F68  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 804C2F6C  40 82 00 64 */	bne lbl_804C2FD0
/* 804C2F70  3C 60 80 4C */	lis r3, m_anmDataTable__9daMidna_c@ha /* 0x804C65E4@ha */
/* 804C2F74  38 63 65 E4 */	addi r3, r3, m_anmDataTable__9daMidna_c@l /* 0x804C65E4@l */
/* 804C2F78  A0 03 00 18 */	lhz r0, 0x18(r3)
/* 804C2F7C  A0 BD 05 E4 */	lhz r5, 0x5e4(r29)
/* 804C2F80  7C 00 28 40 */	cmplw r0, r5
/* 804C2F84  41 82 00 4C */	beq lbl_804C2FD0
/* 804C2F88  80 DD 08 90 */	lwz r6, 0x890(r29)
/* 804C2F8C  74 C0 20 20 */	andis. r0, r6, 0x2020
/* 804C2F90  41 82 00 10 */	beq lbl_804C2FA0
/* 804C2F94  80 1D 08 98 */	lwz r0, 0x898(r29)
/* 804C2F98  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 804C2F9C  41 82 00 34 */	beq lbl_804C2FD0
lbl_804C2FA0:
/* 804C2FA0  2C 1E 00 00 */	cmpwi r30, 0
/* 804C2FA4  41 82 00 0C */	beq lbl_804C2FB0
/* 804C2FA8  54 C0 04 A5 */	rlwinm. r0, r6, 0, 0x12, 0x12
/* 804C2FAC  41 82 00 24 */	beq lbl_804C2FD0
lbl_804C2FB0:
/* 804C2FB0  54 C0 07 FF */	clrlwi. r0, r6, 0x1f
/* 804C2FB4  40 82 00 30 */	bne lbl_804C2FE4
/* 804C2FB8  3C 60 80 4C */	lis r3, m_anmDataTable__9daMidna_c@ha /* 0x804C65E4@ha */
/* 804C2FBC  38 63 65 E4 */	addi r3, r3, m_anmDataTable__9daMidna_c@l /* 0x804C65E4@l */
/* 804C2FC0  A0 63 00 90 */	lhz r3, 0x90(r3)
/* 804C2FC4  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 804C2FC8  7C 03 00 40 */	cmplw r3, r0
/* 804C2FCC  40 82 00 18 */	bne lbl_804C2FE4
lbl_804C2FD0:
/* 804C2FD0  3B 80 00 00 */	li r28, 0
/* 804C2FD4  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 804C2FD8  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 804C2FDC  90 1D 08 90 */	stw r0, 0x890(r29)
/* 804C2FE0  48 00 00 FC */	b lbl_804C30DC
lbl_804C2FE4:
/* 804C2FE4  54 C0 03 9D */	rlwinm. r0, r6, 0, 0xe, 0xe
/* 804C2FE8  41 82 00 18 */	beq lbl_804C3000
/* 804C2FEC  3B 9D 09 C4 */	addi r28, r29, 0x9c4
/* 804C2FF0  80 1D 08 90 */	lwz r0, 0x890(r29)
/* 804C2FF4  54 00 03 DA */	rlwinm r0, r0, 0, 0xf, 0xd
/* 804C2FF8  90 1D 08 90 */	stw r0, 0x890(r29)
/* 804C2FFC  48 00 00 E0 */	b lbl_804C30DC
lbl_804C3000:
/* 804C3000  80 1D 08 98 */	lwz r0, 0x898(r29)
/* 804C3004  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 804C3008  41 82 00 0C */	beq lbl_804C3014
/* 804C300C  3B 9F 05 38 */	addi r28, r31, 0x538
/* 804C3010  48 00 00 CC */	b lbl_804C30DC
lbl_804C3014:
/* 804C3014  38 00 00 00 */	li r0, 0
/* 804C3018  88 7D 08 4E */	lbz r3, 0x84e(r29)
/* 804C301C  28 03 00 03 */	cmplwi r3, 3
/* 804C3020  41 82 00 14 */	beq lbl_804C3034
/* 804C3024  28 03 00 04 */	cmplwi r3, 4
/* 804C3028  41 82 00 0C */	beq lbl_804C3034
/* 804C302C  28 03 00 02 */	cmplwi r3, 2
/* 804C3030  40 82 00 08 */	bne lbl_804C3038
lbl_804C3034:
/* 804C3034  38 00 00 01 */	li r0, 1
lbl_804C3038:
/* 804C3038  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804C303C  41 82 00 40 */	beq lbl_804C307C
/* 804C3040  80 1D 08 C0 */	lwz r0, 0x8c0(r29)
/* 804C3044  28 00 00 04 */	cmplwi r0, 4
/* 804C3048  41 82 00 34 */	beq lbl_804C307C
/* 804C304C  28 00 00 07 */	cmplwi r0, 7
/* 804C3050  41 82 00 2C */	beq lbl_804C307C
/* 804C3054  28 00 00 08 */	cmplwi r0, 8
/* 804C3058  41 82 00 24 */	beq lbl_804C307C
/* 804C305C  28 00 00 10 */	cmplwi r0, 0x10
/* 804C3060  41 82 00 1C */	beq lbl_804C307C
/* 804C3064  28 00 00 03 */	cmplwi r0, 3
/* 804C3068  41 82 00 14 */	beq lbl_804C307C
/* 804C306C  54 C0 05 29 */	rlwinm. r0, r6, 0, 0x14, 0x14
/* 804C3070  40 82 00 0C */	bne lbl_804C307C
/* 804C3074  3B 9F 05 38 */	addi r28, r31, 0x538
/* 804C3078  48 00 00 64 */	b lbl_804C30DC
lbl_804C307C:
/* 804C307C  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 804C3080  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 804C3084  41 82 00 54 */	beq lbl_804C30D8
/* 804C3088  3C 60 80 4C */	lis r3, m_anmDataTable__9daMidna_c@ha /* 0x804C65E4@ha */
/* 804C308C  38 83 65 E4 */	addi r4, r3, m_anmDataTable__9daMidna_c@l /* 0x804C65E4@l */
/* 804C3090  A0 04 00 48 */	lhz r0, 0x48(r4)
/* 804C3094  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 804C3098  7C 00 18 40 */	cmplw r0, r3
/* 804C309C  41 82 00 3C */	beq lbl_804C30D8
/* 804C30A0  A0 04 00 54 */	lhz r0, 0x54(r4)
/* 804C30A4  7C 00 18 40 */	cmplw r0, r3
/* 804C30A8  41 82 00 30 */	beq lbl_804C30D8
/* 804C30AC  70 C0 05 00 */	andi. r0, r6, 0x500
/* 804C30B0  41 82 00 0C */	beq lbl_804C30BC
/* 804C30B4  3B 9F 05 38 */	addi r28, r31, 0x538
/* 804C30B8  48 00 00 24 */	b lbl_804C30DC
lbl_804C30BC:
/* 804C30BC  7F E3 FB 78 */	mr r3, r31
/* 804C30C0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 804C30C4  81 8C 00 08 */	lwz r12, 8(r12)
/* 804C30C8  7D 89 03 A6 */	mtctr r12
/* 804C30CC  4E 80 04 21 */	bctrl 
/* 804C30D0  7C 7C 1B 78 */	mr r28, r3
/* 804C30D4  48 00 00 08 */	b lbl_804C30DC
lbl_804C30D8:
/* 804C30D8  3B 80 00 00 */	li r28, 0
lbl_804C30DC:
/* 804C30DC  7F A3 EB 78 */	mr r3, r29
/* 804C30E0  7F 84 E3 78 */	mr r4, r28
/* 804C30E4  38 A1 00 0E */	addi r5, r1, 0xe
/* 804C30E8  38 C1 00 0C */	addi r6, r1, 0xc
/* 804C30EC  38 E1 00 0A */	addi r7, r1, 0xa
/* 804C30F0  39 01 00 08 */	addi r8, r1, 8
/* 804C30F4  4B FF F7 89 */	bl getNeckAimAngle__9daMidna_cFPC4cXyzPsPsPsPs
/* 804C30F8  38 7D 08 80 */	addi r3, r29, 0x880
/* 804C30FC  A8 81 00 0E */	lha r4, 0xe(r1)
/* 804C3100  38 A0 00 03 */	li r5, 3
/* 804C3104  38 C0 10 00 */	li r6, 0x1000
/* 804C3108  38 E0 01 00 */	li r7, 0x100
/* 804C310C  4B C9 C8 71 */	bl daPy_addCalcShort__FPsssss
/* 804C3110  38 7D 08 82 */	addi r3, r29, 0x882
/* 804C3114  A8 81 00 0C */	lha r4, 0xc(r1)
/* 804C3118  38 A0 00 03 */	li r5, 3
/* 804C311C  38 C0 10 00 */	li r6, 0x1000
/* 804C3120  38 E0 01 00 */	li r7, 0x100
/* 804C3124  4B C9 C8 59 */	bl daPy_addCalcShort__FPsssss
/* 804C3128  2C 1E 00 00 */	cmpwi r30, 0
/* 804C312C  41 82 00 10 */	beq lbl_804C313C
/* 804C3130  7F A3 EB 78 */	mr r3, r29
/* 804C3134  4B FF F9 35 */	bl clearEyeMove__9daMidna_cFv
/* 804C3138  48 00 00 18 */	b lbl_804C3150
lbl_804C313C:
/* 804C313C  7F A3 EB 78 */	mr r3, r29
/* 804C3140  7F 84 E3 78 */	mr r4, r28
/* 804C3144  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 804C3148  A8 C1 00 08 */	lha r6, 8(r1)
/* 804C314C  4B FF F9 6D */	bl setEyeMove__9daMidna_cFPC4cXyzss
lbl_804C3150:
/* 804C3150  39 61 00 20 */	addi r11, r1, 0x20
/* 804C3154  4B E9 F0 D1 */	bl _restgpr_28
/* 804C3158  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C315C  7C 08 03 A6 */	mtlr r0
/* 804C3160  38 21 00 20 */	addi r1, r1, 0x20
/* 804C3164  4E 80 00 20 */	blr 
