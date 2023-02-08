lbl_80126F3C:
/* 80126F3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80126F40  7C 08 02 A6 */	mflr r0
/* 80126F44  90 01 00 44 */	stw r0, 0x44(r1)
/* 80126F48  39 61 00 40 */	addi r11, r1, 0x40
/* 80126F4C  48 23 B2 81 */	bl _savegpr_25
/* 80126F50  7C 7F 1B 78 */	mr r31, r3
/* 80126F54  7C 9D 23 78 */	mr r29, r4
/* 80126F58  3C 60 80 39 */	lis r3, lit_3757@ha /* 0x8038D658@ha */
/* 80126F5C  3B C3 D6 58 */	addi r30, r3, lit_3757@l /* 0x8038D658@l */
/* 80126F60  38 7F 20 F0 */	addi r3, r31, 0x20f0
/* 80126F64  48 03 82 05 */	bl setAnimeHeap__14daPy_anmHeap_cFv
/* 80126F68  7C 7C 1B 78 */	mr r28, r3
/* 80126F6C  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80126F70  54 00 03 54 */	rlwinm r0, r0, 0, 0xd, 0xa
/* 80126F74  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80126F78  38 00 00 00 */	li r0, 0
/* 80126F7C  90 1F 06 7C */	stw r0, 0x67c(r31)
/* 80126F80  90 1F 06 80 */	stw r0, 0x680(r31)
/* 80126F84  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80126F88  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80126F8C  41 82 00 C8 */	beq lbl_80127054
/* 80126F90  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80126F94  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 80126F98  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80126F9C  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80126FA0  64 00 00 08 */	oris r0, r0, 8
/* 80126FA4  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80126FA8  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80126FAC  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80126FB0  38 63 02 39 */	addi r3, r3, 0x239
/* 80126FB4  38 80 00 31 */	li r4, 0x31
/* 80126FB8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80126FBC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80126FC0  3F 45 00 02 */	addis r26, r5, 2
/* 80126FC4  3B 5A C2 F8 */	addi r26, r26, -15624
/* 80126FC8  7F 45 D3 78 */	mr r5, r26
/* 80126FCC  38 C0 00 80 */	li r6, 0x80
/* 80126FD0  4B F1 53 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80126FD4  3C 80 00 08 */	lis r4, 8
/* 80126FD8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80126FDC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80126FE0  4B EE DC 75 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80126FE4  90 7F 06 50 */	stw r3, 0x650(r31)
/* 80126FE8  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80126FEC  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80126FF0  38 63 02 39 */	addi r3, r3, 0x239
/* 80126FF4  38 80 00 33 */	li r4, 0x33
/* 80126FF8  7F 45 D3 78 */	mr r5, r26
/* 80126FFC  38 C0 00 80 */	li r6, 0x80
/* 80127000  4B F1 52 ED */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80127004  7C 64 1B 78 */	mr r4, r3
/* 80127008  7F E3 FB 78 */	mr r3, r31
/* 8012700C  3C A0 00 08 */	lis r5, 8
/* 80127010  38 C0 00 00 */	li r6, 0
/* 80127014  4B F7 CD 69 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80127018  90 7F 06 58 */	stw r3, 0x658(r31)
/* 8012701C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80127020  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80127024  38 63 02 39 */	addi r3, r3, 0x239
/* 80127028  38 80 00 32 */	li r4, 0x32
/* 8012702C  7F 45 D3 78 */	mr r5, r26
/* 80127030  38 C0 00 80 */	li r6, 0x80
/* 80127034  4B F1 52 B9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80127038  7C 64 1B 78 */	mr r4, r3
/* 8012703C  7F E3 FB 78 */	mr r3, r31
/* 80127040  3C A0 00 08 */	lis r5, 8
/* 80127044  38 C0 00 00 */	li r6, 0
/* 80127048  4B F7 CD 35 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 8012704C  90 7F 06 5C */	stw r3, 0x65c(r31)
/* 80127050  48 00 03 48 */	b lbl_80127398
lbl_80127054:
/* 80127054  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80127058  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012705C  88 05 00 13 */	lbz r0, 0x13(r5)
/* 80127060  28 00 00 2E */	cmplwi r0, 0x2e
/* 80127064  40 82 00 B8 */	bne lbl_8012711C
/* 80127068  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 8012706C  64 00 00 10 */	oris r0, r0, 0x10
/* 80127070  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80127074  38 62 92 58 */	la r3, l_bArcName(r2) /* 80452C58-_SDA2_BASE_ */
/* 80127078  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8012707C  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80127080  38 84 02 41 */	addi r4, r4, 0x241
/* 80127084  3F 45 00 02 */	addis r26, r5, 2
/* 80127088  3B 5A C2 F8 */	addi r26, r26, -15624
/* 8012708C  7F 45 D3 78 */	mr r5, r26
/* 80127090  38 C0 00 80 */	li r6, 0x80
/* 80127094  4B F1 52 E9 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80127098  7C 64 1B 78 */	mr r4, r3
/* 8012709C  7F E3 FB 78 */	mr r3, r31
/* 801270A0  3C A0 00 08 */	lis r5, 8
/* 801270A4  38 C0 00 00 */	li r6, 0
/* 801270A8  4B F7 CC D5 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 801270AC  90 7F 06 50 */	stw r3, 0x650(r31)
/* 801270B0  38 62 92 58 */	la r3, l_bArcName(r2) /* 80452C58-_SDA2_BASE_ */
/* 801270B4  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 801270B8  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 801270BC  38 84 02 48 */	addi r4, r4, 0x248
/* 801270C0  7F 45 D3 78 */	mr r5, r26
/* 801270C4  38 C0 00 80 */	li r6, 0x80
/* 801270C8  4B F1 52 B5 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 801270CC  7C 64 1B 78 */	mr r4, r3
/* 801270D0  7F E3 FB 78 */	mr r3, r31
/* 801270D4  3C A0 00 08 */	lis r5, 8
/* 801270D8  38 C0 00 00 */	li r6, 0
/* 801270DC  4B F7 CC A1 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 801270E0  90 7F 06 58 */	stw r3, 0x658(r31)
/* 801270E4  38 62 92 58 */	la r3, l_bArcName(r2) /* 80452C58-_SDA2_BASE_ */
/* 801270E8  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 801270EC  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 801270F0  38 84 02 54 */	addi r4, r4, 0x254
/* 801270F4  7F 45 D3 78 */	mr r5, r26
/* 801270F8  38 C0 00 80 */	li r6, 0x80
/* 801270FC  4B F1 52 81 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80127100  7C 64 1B 78 */	mr r4, r3
/* 80127104  7F E3 FB 78 */	mr r3, r31
/* 80127108  3C A0 00 08 */	lis r5, 8
/* 8012710C  38 C0 00 00 */	li r6, 0
/* 80127110  4B F7 CC 6D */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80127114  90 7F 06 5C */	stw r3, 0x65c(r31)
/* 80127118  48 00 02 80 */	b lbl_80127398
lbl_8012711C:
/* 8012711C  28 00 00 31 */	cmplwi r0, 0x31
/* 80127120  40 82 00 AC */	bne lbl_801271CC
/* 80127124  38 62 92 68 */	la r3, l_zArcName(r2) /* 80452C68-_SDA2_BASE_ */
/* 80127128  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8012712C  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80127130  38 84 02 61 */	addi r4, r4, 0x261
/* 80127134  3F 45 00 02 */	addis r26, r5, 2
/* 80127138  3B 5A C2 F8 */	addi r26, r26, -15624
/* 8012713C  7F 45 D3 78 */	mr r5, r26
/* 80127140  38 C0 00 80 */	li r6, 0x80
/* 80127144  4B F1 52 39 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80127148  7C 64 1B 78 */	mr r4, r3
/* 8012714C  7F E3 FB 78 */	mr r3, r31
/* 80127150  3C A0 00 08 */	lis r5, 8
/* 80127154  38 C0 00 00 */	li r6, 0
/* 80127158  4B F7 CC 25 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 8012715C  90 7F 06 50 */	stw r3, 0x650(r31)
/* 80127160  38 62 92 68 */	la r3, l_zArcName(r2) /* 80452C68-_SDA2_BASE_ */
/* 80127164  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80127168  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8012716C  38 84 02 68 */	addi r4, r4, 0x268
/* 80127170  7F 45 D3 78 */	mr r5, r26
/* 80127174  38 C0 00 80 */	li r6, 0x80
/* 80127178  4B F1 52 05 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8012717C  7C 64 1B 78 */	mr r4, r3
/* 80127180  7F E3 FB 78 */	mr r3, r31
/* 80127184  3C A0 00 08 */	lis r5, 8
/* 80127188  38 C0 00 00 */	li r6, 0
/* 8012718C  4B F7 CB F1 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80127190  90 7F 06 58 */	stw r3, 0x658(r31)
/* 80127194  38 62 92 68 */	la r3, l_zArcName(r2) /* 80452C68-_SDA2_BASE_ */
/* 80127198  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8012719C  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 801271A0  38 84 02 74 */	addi r4, r4, 0x274
/* 801271A4  7F 45 D3 78 */	mr r5, r26
/* 801271A8  38 C0 00 80 */	li r6, 0x80
/* 801271AC  4B F1 51 D1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 801271B0  7C 64 1B 78 */	mr r4, r3
/* 801271B4  7F E3 FB 78 */	mr r3, r31
/* 801271B8  3C A0 00 08 */	lis r5, 8
/* 801271BC  38 C0 00 00 */	li r6, 0
/* 801271C0  4B F7 CB BD */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 801271C4  90 7F 06 5C */	stw r3, 0x65c(r31)
/* 801271C8  48 00 01 D0 */	b lbl_80127398
lbl_801271CC:
/* 801271CC  28 00 00 30 */	cmplwi r0, 0x30
/* 801271D0  40 82 01 24 */	bne lbl_801272F4
/* 801271D4  38 62 92 70 */	la r3, l_mArcName(r2) /* 80452C70-_SDA2_BASE_ */
/* 801271D8  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 801271DC  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 801271E0  38 84 02 81 */	addi r4, r4, 0x281
/* 801271E4  3F 45 00 02 */	addis r26, r5, 2
/* 801271E8  3B 5A C2 F8 */	addi r26, r26, -15624
/* 801271EC  7F 45 D3 78 */	mr r5, r26
/* 801271F0  38 C0 00 80 */	li r6, 0x80
/* 801271F4  4B F1 51 89 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 801271F8  7C 64 1B 78 */	mr r4, r3
/* 801271FC  7F E3 FB 78 */	mr r3, r31
/* 80127200  3C A0 00 08 */	lis r5, 8
/* 80127204  3C C0 01 00 */	lis r6, 0x100
/* 80127208  4B F7 CB 75 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 8012720C  90 7F 06 50 */	stw r3, 0x650(r31)
/* 80127210  38 62 92 70 */	la r3, l_mArcName(r2) /* 80452C70-_SDA2_BASE_ */
/* 80127214  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80127218  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8012721C  38 84 02 88 */	addi r4, r4, 0x288
/* 80127220  7F 45 D3 78 */	mr r5, r26
/* 80127224  38 C0 00 80 */	li r6, 0x80
/* 80127228  4B F1 51 55 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8012722C  7C 64 1B 78 */	mr r4, r3
/* 80127230  7F E3 FB 78 */	mr r3, r31
/* 80127234  3C A0 00 08 */	lis r5, 8
/* 80127238  3C C0 01 00 */	lis r6, 0x100
/* 8012723C  4B F7 CB 41 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80127240  90 7F 06 58 */	stw r3, 0x658(r31)
/* 80127244  38 62 92 70 */	la r3, l_mArcName(r2) /* 80452C70-_SDA2_BASE_ */
/* 80127248  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8012724C  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80127250  38 84 02 74 */	addi r4, r4, 0x274
/* 80127254  7F 45 D3 78 */	mr r5, r26
/* 80127258  38 C0 00 80 */	li r6, 0x80
/* 8012725C  4B F1 51 21 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80127260  7C 64 1B 78 */	mr r4, r3
/* 80127264  7F E3 FB 78 */	mr r3, r31
/* 80127268  3C A0 00 08 */	lis r5, 8
/* 8012726C  38 C0 00 00 */	li r6, 0
/* 80127270  4B F7 CB 0D */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80127274  90 7F 06 5C */	stw r3, 0x65c(r31)
/* 80127278  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8012727C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80127280  A0 03 00 04 */	lhz r0, 4(r3)
/* 80127284  28 00 00 00 */	cmplwi r0, 0
/* 80127288  41 82 00 14 */	beq lbl_8012729C
/* 8012728C  7F E3 FB 78 */	mr r3, r31
/* 80127290  38 80 00 01 */	li r4, 1
/* 80127294  4B F9 40 91 */	bl setMagicArmorBrk__9daAlink_cFi
/* 80127298  48 00 00 10 */	b lbl_801272A8
lbl_8012729C:
/* 8012729C  7F E3 FB 78 */	mr r3, r31
/* 801272A0  38 80 00 00 */	li r4, 0
/* 801272A4  4B F9 40 81 */	bl setMagicArmorBrk__9daAlink_cFi
lbl_801272A8:
/* 801272A8  80 9F 06 7C */	lwz r4, 0x67c(r31)
/* 801272AC  A8 04 00 06 */	lha r0, 6(r4)
/* 801272B0  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 801272B4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801272B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 801272BC  3C 60 43 30 */	lis r3, 0x4330
/* 801272C0  90 61 00 08 */	stw r3, 8(r1)
/* 801272C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 801272C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801272CC  D0 04 00 08 */	stfs f0, 8(r4)
/* 801272D0  80 9F 06 80 */	lwz r4, 0x680(r31)
/* 801272D4  A8 04 00 06 */	lha r0, 6(r4)
/* 801272D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801272DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801272E0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801272E4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801272E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 801272EC  D0 04 00 08 */	stfs f0, 8(r4)
/* 801272F0  48 00 00 A8 */	b lbl_80127398
lbl_801272F4:
/* 801272F4  38 62 92 60 */	la r3, l_kArcName(r2) /* 80452C60-_SDA2_BASE_ */
/* 801272F8  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 801272FC  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80127300  38 84 02 94 */	addi r4, r4, 0x294
/* 80127304  3F 45 00 02 */	addis r26, r5, 2
/* 80127308  3B 5A C2 F8 */	addi r26, r26, -15624
/* 8012730C  7F 45 D3 78 */	mr r5, r26
/* 80127310  38 C0 00 80 */	li r6, 0x80
/* 80127314  4B F1 50 69 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80127318  7C 64 1B 78 */	mr r4, r3
/* 8012731C  7F E3 FB 78 */	mr r3, r31
/* 80127320  3C A0 00 08 */	lis r5, 8
/* 80127324  38 C0 00 00 */	li r6, 0
/* 80127328  4B F7 CA 55 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 8012732C  90 7F 06 50 */	stw r3, 0x650(r31)
/* 80127330  38 62 92 60 */	la r3, l_kArcName(r2) /* 80452C60-_SDA2_BASE_ */
/* 80127334  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80127338  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8012733C  38 84 02 9B */	addi r4, r4, 0x29b
/* 80127340  7F 45 D3 78 */	mr r5, r26
/* 80127344  38 C0 00 80 */	li r6, 0x80
/* 80127348  4B F1 50 35 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8012734C  7C 64 1B 78 */	mr r4, r3
/* 80127350  7F E3 FB 78 */	mr r3, r31
/* 80127354  3C A0 00 08 */	lis r5, 8
/* 80127358  38 C0 00 00 */	li r6, 0
/* 8012735C  4B F7 CA 21 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80127360  90 7F 06 58 */	stw r3, 0x658(r31)
/* 80127364  38 62 92 60 */	la r3, l_kArcName(r2) /* 80452C60-_SDA2_BASE_ */
/* 80127368  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8012736C  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80127370  38 84 02 74 */	addi r4, r4, 0x274
/* 80127374  7F 45 D3 78 */	mr r5, r26
/* 80127378  38 C0 00 80 */	li r6, 0x80
/* 8012737C  4B F1 50 01 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80127380  7C 64 1B 78 */	mr r4, r3
/* 80127384  7F E3 FB 78 */	mr r3, r31
/* 80127388  3C A0 00 08 */	lis r5, 8
/* 8012738C  38 C0 00 00 */	li r6, 0
/* 80127390  4B F7 C9 ED */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80127394  90 7F 06 5C */	stw r3, 0x65c(r31)
lbl_80127398:
/* 80127398  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 8012739C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 801273A0  40 82 00 18 */	bne lbl_801273B8
/* 801273A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801273A8  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801273AC  88 05 00 13 */	lbz r0, 0x13(r5)
/* 801273B0  28 00 00 31 */	cmplwi r0, 0x31
/* 801273B4  41 82 00 4C */	beq lbl_80127400
lbl_801273B8:
/* 801273B8  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 801273BC  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 801273C0  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 801273C4  38 84 02 A7 */	addi r4, r4, 0x2a7
/* 801273C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801273CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801273D0  3C A5 00 02 */	addis r5, r5, 2
/* 801273D4  38 C0 00 80 */	li r6, 0x80
/* 801273D8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 801273DC  4B F1 4F A1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 801273E0  7C 64 1B 78 */	mr r4, r3
/* 801273E4  7F E3 FB 78 */	mr r3, r31
/* 801273E8  3C A0 00 08 */	lis r5, 8
/* 801273EC  3C C0 00 02 */	lis r6, 0x0002 /* 0x00020200@ha */
/* 801273F0  38 C6 02 00 */	addi r6, r6, 0x0200 /* 0x00020200@l */
/* 801273F4  4B F7 C9 89 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 801273F8  90 7F 06 54 */	stw r3, 0x654(r31)
/* 801273FC  48 00 00 40 */	b lbl_8012743C
lbl_80127400:
/* 80127400  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80127404  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80127408  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8012740C  38 84 02 B3 */	addi r4, r4, 0x2b3
/* 80127410  3C A5 00 02 */	addis r5, r5, 2
/* 80127414  38 C0 00 80 */	li r6, 0x80
/* 80127418  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8012741C  4B F1 4F 61 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80127420  7C 64 1B 78 */	mr r4, r3
/* 80127424  7F E3 FB 78 */	mr r3, r31
/* 80127428  3C A0 00 08 */	lis r5, 8
/* 8012742C  3C C0 00 02 */	lis r6, 0x0002 /* 0x00020200@ha */
/* 80127430  38 C6 02 00 */	addi r6, r6, 0x0200 /* 0x00020200@l */
/* 80127434  4B F7 C9 49 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80127438  90 7F 06 54 */	stw r3, 0x654(r31)
lbl_8012743C:
/* 8012743C  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80127440  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80127444  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80127448  38 84 02 BF */	addi r4, r4, 0x2bf
/* 8012744C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80127450  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80127454  3F 65 00 02 */	addis r27, r5, 2
/* 80127458  3B 7B C2 F8 */	addi r27, r27, -15624
/* 8012745C  7F 65 DB 78 */	mr r5, r27
/* 80127460  38 C0 00 80 */	li r6, 0x80
/* 80127464  4B F1 4F 19 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80127468  7C 7A 1B 78 */	mr r26, r3
/* 8012746C  3B 20 00 00 */	li r25, 0
/* 80127470  48 00 00 28 */	b lbl_80127498
lbl_80127474:
/* 80127474  7F E3 FB 78 */	mr r3, r31
/* 80127478  7F 44 D3 78 */	mr r4, r26
/* 8012747C  3C A0 00 08 */	lis r5, 8
/* 80127480  38 C0 00 00 */	li r6, 0
/* 80127484  4B F7 C8 F9 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80127488  57 24 13 BA */	rlwinm r4, r25, 2, 0xe, 0x1d
/* 8012748C  38 04 07 84 */	addi r0, r4, 0x784
/* 80127490  7C 7F 01 2E */	stwx r3, r31, r0
/* 80127494  3B 39 00 01 */	addi r25, r25, 1
lbl_80127498:
/* 80127498  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 8012749C  28 00 00 02 */	cmplwi r0, 2
/* 801274A0  41 80 FF D4 */	blt lbl_80127474
/* 801274A4  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 801274A8  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 801274AC  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 801274B0  38 84 02 CD */	addi r4, r4, 0x2cd
/* 801274B4  7F 65 DB 78 */	mr r5, r27
/* 801274B8  38 C0 00 80 */	li r6, 0x80
/* 801274BC  4B F1 4E C1 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 801274C0  7C 64 1B 78 */	mr r4, r3
/* 801274C4  7F E3 FB 78 */	mr r3, r31
/* 801274C8  38 A0 00 00 */	li r5, 0
/* 801274CC  38 C0 00 00 */	li r6, 0
/* 801274D0  4B F7 C8 AD */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 801274D4  90 7F 06 FC */	stw r3, 0x6fc(r31)
/* 801274D8  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 801274DC  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 801274E0  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 801274E4  38 84 02 DC */	addi r4, r4, 0x2dc
/* 801274E8  7F 65 DB 78 */	mr r5, r27
/* 801274EC  38 C0 00 80 */	li r6, 0x80
/* 801274F0  4B F1 4E 8D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 801274F4  7C 7A 1B 78 */	mr r26, r3
/* 801274F8  7F E3 FB 78 */	mr r3, r31
/* 801274FC  7F 44 D3 78 */	mr r4, r26
/* 80127500  3C A0 00 08 */	lis r5, 8
/* 80127504  38 C0 02 00 */	li r6, 0x200
/* 80127508  4B F7 C8 75 */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 8012750C  90 7F 07 00 */	stw r3, 0x700(r31)
/* 80127510  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80127514  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80127518  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8012751C  38 84 02 EA */	addi r4, r4, 0x2ea
/* 80127520  7F 65 DB 78 */	mr r5, r27
/* 80127524  38 C0 00 80 */	li r6, 0x80
/* 80127528  4B F1 4E 55 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 8012752C  90 7F 07 04 */	stw r3, 0x704(r31)
/* 80127530  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80127534  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 80127538  D0 03 00 08 */	stfs f0, 8(r3)
/* 8012753C  80 7F 07 04 */	lwz r3, 0x704(r31)
/* 80127540  7F 44 D3 78 */	mr r4, r26
/* 80127544  48 20 3C 91 */	bl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
/* 80127548  38 7A 00 58 */	addi r3, r26, 0x58
/* 8012754C  80 9F 07 04 */	lwz r4, 0x704(r31)
/* 80127550  48 20 87 75 */	bl entryTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80127554  80 7F 06 34 */	lwz r3, 0x634(r31)
/* 80127558  3C 80 80 39 */	lis r4, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8012755C  38 84 20 94 */	addi r4, r4, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80127560  38 84 02 F8 */	addi r4, r4, 0x2f8
/* 80127564  7F 65 DB 78 */	mr r5, r27
/* 80127568  38 C0 00 80 */	li r6, 0x80
/* 8012756C  4B F1 4E 11 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80127570  7C 64 1B 78 */	mr r4, r3
/* 80127574  7F E3 FB 78 */	mr r3, r31
/* 80127578  3C A0 00 08 */	lis r5, 8
/* 8012757C  38 C0 00 00 */	li r6, 0
/* 80127580  4B F7 C7 FD */	bl initModel__9daAlink_cFP12J3DModelDataUlUl
/* 80127584  90 7F 06 70 */	stw r3, 0x670(r31)
/* 80127588  7F 83 E3 78 */	mr r3, r28
/* 8012758C  4B EE 7C 41 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80127590  38 00 00 00 */	li r0, 0
/* 80127594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80127598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8012759C  98 03 00 1E */	stb r0, 0x1e(r3)
/* 801275A0  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 801275A4  93 E3 00 14 */	stw r31, 0x14(r3)
/* 801275A8  80 7F 06 58 */	lwz r3, 0x658(r31)
/* 801275AC  93 E3 00 14 */	stw r31, 0x14(r3)
/* 801275B0  7F E3 FB 78 */	mr r3, r31
/* 801275B4  7F A4 EB 78 */	mr r4, r29
/* 801275B8  48 01 8D 81 */	bl changeModelDataDirect__9daAlink_cFi
/* 801275BC  38 00 00 00 */	li r0, 0
/* 801275C0  90 1F 06 E4 */	stw r0, 0x6e4(r31)
/* 801275C4  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 801275C8  54 63 03 19 */	rlwinm. r3, r3, 0, 0xc, 0xc
/* 801275CC  41 82 00 64 */	beq lbl_80127630
/* 801275D0  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 801275D4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801275D8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801275DC  80 63 00 08 */	lwz r3, 8(r3)
/* 801275E0  90 7F 06 D8 */	stw r3, 0x6d8(r31)
/* 801275E4  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 801275E8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801275EC  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801275F0  80 63 00 08 */	lwz r3, 8(r3)
/* 801275F4  90 7F 06 DC */	stw r3, 0x6dc(r31)
/* 801275F8  90 1F 06 E0 */	stw r0, 0x6e0(r31)
/* 801275FC  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127600  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127604  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80127608  80 63 00 08 */	lwz r3, 8(r3)
/* 8012760C  90 7F 06 E8 */	stw r3, 0x6e8(r31)
/* 80127610  90 1F 06 EC */	stw r0, 0x6ec(r31)
/* 80127614  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127618  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8012761C  80 63 00 08 */	lwz r3, 8(r3)
/* 80127620  80 03 00 08 */	lwz r0, 8(r3)
/* 80127624  90 1F 06 F0 */	stw r0, 0x6f0(r31)
/* 80127628  3B 60 00 02 */	li r27, 2
/* 8012762C  48 00 02 58 */	b lbl_80127884
lbl_80127630:
/* 80127630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80127634  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80127638  88 64 00 13 */	lbz r3, 0x13(r4)
/* 8012763C  28 03 00 2E */	cmplwi r3, 0x2e
/* 80127640  40 82 00 74 */	bne lbl_801276B4
/* 80127644  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127648  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8012764C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80127650  80 63 00 08 */	lwz r3, 8(r3)
/* 80127654  90 7F 06 D8 */	stw r3, 0x6d8(r31)
/* 80127658  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 8012765C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127660  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80127664  80 63 00 08 */	lwz r3, 8(r3)
/* 80127668  90 7F 06 DC */	stw r3, 0x6dc(r31)
/* 8012766C  90 1F 06 E0 */	stw r0, 0x6e0(r31)
/* 80127670  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127674  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127678  80 63 00 08 */	lwz r3, 8(r3)
/* 8012767C  80 03 00 08 */	lwz r0, 8(r3)
/* 80127680  90 1F 06 E8 */	stw r0, 0x6e8(r31)
/* 80127684  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127688  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8012768C  80 63 00 00 */	lwz r3, 0(r3)
/* 80127690  80 03 00 08 */	lwz r0, 8(r3)
/* 80127694  90 1F 06 EC */	stw r0, 0x6ec(r31)
/* 80127698  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 8012769C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801276A0  80 63 00 04 */	lwz r3, 4(r3)
/* 801276A4  80 03 00 08 */	lwz r0, 8(r3)
/* 801276A8  90 1F 06 F0 */	stw r0, 0x6f0(r31)
/* 801276AC  3B 60 00 02 */	li r27, 2
/* 801276B0  48 00 01 D4 */	b lbl_80127884
lbl_801276B4:
/* 801276B4  28 03 00 31 */	cmplwi r3, 0x31
/* 801276B8  40 82 00 98 */	bne lbl_80127750
/* 801276BC  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 801276C0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801276C4  80 63 00 10 */	lwz r3, 0x10(r3)
/* 801276C8  80 63 00 08 */	lwz r3, 8(r3)
/* 801276CC  90 7F 06 D8 */	stw r3, 0x6d8(r31)
/* 801276D0  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 801276D4  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801276D8  80 63 00 14 */	lwz r3, 0x14(r3)
/* 801276DC  80 63 00 08 */	lwz r3, 8(r3)
/* 801276E0  90 7F 06 DC */	stw r3, 0x6dc(r31)
/* 801276E4  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 801276E8  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801276EC  80 63 00 20 */	lwz r3, 0x20(r3)
/* 801276F0  80 63 00 08 */	lwz r3, 8(r3)
/* 801276F4  90 7F 06 E0 */	stw r3, 0x6e0(r31)
/* 801276F8  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 801276FC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127700  80 63 00 24 */	lwz r3, 0x24(r3)
/* 80127704  80 63 00 08 */	lwz r3, 8(r3)
/* 80127708  90 7F 06 E4 */	stw r3, 0x6e4(r31)
/* 8012770C  80 9F 06 E4 */	lwz r4, 0x6e4(r31)
/* 80127710  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80127714  60 63 00 01 */	ori r3, r3, 1
/* 80127718  90 64 00 0C */	stw r3, 0xc(r4)
/* 8012771C  90 1F 06 E8 */	stw r0, 0x6e8(r31)
/* 80127720  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127724  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127728  80 63 00 08 */	lwz r3, 8(r3)
/* 8012772C  80 03 00 08 */	lwz r0, 8(r3)
/* 80127730  90 1F 06 EC */	stw r0, 0x6ec(r31)
/* 80127734  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127738  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8012773C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80127740  80 03 00 08 */	lwz r0, 8(r3)
/* 80127744  90 1F 06 F0 */	stw r0, 0x6f0(r31)
/* 80127748  3B 60 00 03 */	li r27, 3
/* 8012774C  48 00 01 38 */	b lbl_80127884
lbl_80127750:
/* 80127750  28 03 00 30 */	cmplwi r3, 0x30
/* 80127754  40 82 00 98 */	bne lbl_801277EC
/* 80127758  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 8012775C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127760  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80127764  80 03 00 08 */	lwz r0, 8(r3)
/* 80127768  90 1F 06 D8 */	stw r0, 0x6d8(r31)
/* 8012776C  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127770  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127774  80 63 00 14 */	lwz r3, 0x14(r3)
/* 80127778  80 03 00 08 */	lwz r0, 8(r3)
/* 8012777C  90 1F 06 DC */	stw r0, 0x6dc(r31)
/* 80127780  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127784  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127788  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8012778C  80 03 00 08 */	lwz r0, 8(r3)
/* 80127790  90 1F 06 E0 */	stw r0, 0x6e0(r31)
/* 80127794  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127798  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8012779C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 801277A0  80 03 00 08 */	lwz r0, 8(r3)
/* 801277A4  90 1F 06 E8 */	stw r0, 0x6e8(r31)
/* 801277A8  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 801277AC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801277B0  80 63 00 04 */	lwz r3, 4(r3)
/* 801277B4  80 03 00 08 */	lwz r0, 8(r3)
/* 801277B8  90 1F 06 EC */	stw r0, 0x6ec(r31)
/* 801277BC  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 801277C0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801277C4  80 63 00 08 */	lwz r3, 8(r3)
/* 801277C8  80 03 00 08 */	lwz r0, 8(r3)
/* 801277CC  90 1F 06 F0 */	stw r0, 0x6f0(r31)
/* 801277D0  A0 04 00 04 */	lhz r0, 4(r4)
/* 801277D4  28 00 00 00 */	cmplwi r0, 0
/* 801277D8  41 82 00 0C */	beq lbl_801277E4
/* 801277DC  3B 60 00 04 */	li r27, 4
/* 801277E0  48 00 00 A4 */	b lbl_80127884
lbl_801277E4:
/* 801277E4  3B 60 00 05 */	li r27, 5
/* 801277E8  48 00 00 9C */	b lbl_80127884
lbl_801277EC:
/* 801277EC  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 801277F0  80 63 00 60 */	lwz r3, 0x60(r3)
/* 801277F4  80 63 00 40 */	lwz r3, 0x40(r3)
/* 801277F8  80 63 00 08 */	lwz r3, 8(r3)
/* 801277FC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80127800  60 00 00 01 */	ori r0, r0, 1
/* 80127804  90 03 00 0C */	stw r0, 0xc(r3)
/* 80127808  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 8012780C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127810  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 80127814  80 03 00 08 */	lwz r0, 8(r3)
/* 80127818  90 1F 06 D8 */	stw r0, 0x6d8(r31)
/* 8012781C  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127820  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127824  80 63 00 30 */	lwz r3, 0x30(r3)
/* 80127828  80 03 00 08 */	lwz r0, 8(r3)
/* 8012782C  90 1F 06 DC */	stw r0, 0x6dc(r31)
/* 80127830  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127834  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127838  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8012783C  80 03 00 08 */	lwz r0, 8(r3)
/* 80127840  90 1F 06 E0 */	stw r0, 0x6e0(r31)
/* 80127844  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127848  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8012784C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 80127850  80 03 00 08 */	lwz r0, 8(r3)
/* 80127854  90 1F 06 E8 */	stw r0, 0x6e8(r31)
/* 80127858  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 8012785C  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127860  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80127864  80 03 00 08 */	lwz r0, 8(r3)
/* 80127868  90 1F 06 EC */	stw r0, 0x6ec(r31)
/* 8012786C  80 7F 06 4C */	lwz r3, 0x64c(r31)
/* 80127870  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80127874  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80127878  80 03 00 08 */	lwz r0, 8(r3)
/* 8012787C  90 1F 06 F0 */	stw r0, 0x6f0(r31)
/* 80127880  3B 60 00 00 */	li r27, 0
lbl_80127884:
/* 80127884  80 7F 06 E0 */	lwz r3, 0x6e0(r31)
/* 80127888  28 03 00 00 */	cmplwi r3, 0
/* 8012788C  41 82 00 4C */	beq lbl_801278D8
/* 80127890  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80127894  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80127898  41 82 00 14 */	beq lbl_801278AC
/* 8012789C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801278A0  60 00 00 01 */	ori r0, r0, 1
/* 801278A4  90 03 00 0C */	stw r0, 0xc(r3)
/* 801278A8  48 00 00 30 */	b lbl_801278D8
lbl_801278AC:
/* 801278AC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801278B0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 801278B4  90 03 00 0C */	stw r0, 0xc(r3)
/* 801278B8  7F E3 FB 78 */	mr r3, r31
/* 801278BC  4B FD 9F D5 */	bl checkZoraWearMaskDraw__9daAlink_cFv
/* 801278C0  2C 03 00 00 */	cmpwi r3, 0
/* 801278C4  41 82 00 14 */	beq lbl_801278D8
/* 801278C8  80 7F 06 E4 */	lwz r3, 0x6e4(r31)
/* 801278CC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 801278D0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 801278D4  90 03 00 0C */	stw r0, 0xc(r3)
lbl_801278D8:
/* 801278D8  80 1F 06 D8 */	lwz r0, 0x6d8(r31)
/* 801278DC  90 1F 06 D0 */	stw r0, 0x6d0(r31)
/* 801278E0  80 1F 06 DC */	lwz r0, 0x6dc(r31)
/* 801278E4  90 1F 06 D4 */	stw r0, 0x6d4(r31)
/* 801278E8  80 7F 06 5C */	lwz r3, 0x65c(r31)
/* 801278EC  80 83 00 04 */	lwz r4, 4(r3)
/* 801278F0  38 A0 00 00 */	li r5, 0
/* 801278F4  48 00 00 24 */	b lbl_80127918
lbl_801278F8:
/* 801278F8  80 64 00 60 */	lwz r3, 0x60(r4)
/* 801278FC  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 80127900  7C 63 00 2E */	lwzx r3, r3, r0
/* 80127904  80 63 00 08 */	lwz r3, 8(r3)
/* 80127908  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8012790C  60 00 00 01 */	ori r0, r0, 1
/* 80127910  90 03 00 0C */	stw r0, 0xc(r3)
/* 80127914  38 A5 00 01 */	addi r5, r5, 1
lbl_80127918:
/* 80127918  54 A0 04 3E */	clrlwi r0, r5, 0x10
/* 8012791C  28 00 00 0B */	cmplwi r0, 0xb
/* 80127920  41 80 FF D8 */	blt lbl_801278F8
/* 80127924  80 7F 06 54 */	lwz r3, 0x654(r31)
/* 80127928  80 83 00 04 */	lwz r4, 4(r3)
/* 8012792C  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80127930  80 63 00 08 */	lwz r3, 8(r3)
/* 80127934  80 1F 21 80 */	lwz r0, 0x2180(r31)
/* 80127938  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8012793C  80 64 00 60 */	lwz r3, 0x60(r4)
/* 80127940  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80127944  80 1F 21 84 */	lwz r0, 0x2184(r31)
/* 80127948  90 03 00 3C */	stw r0, 0x3c(r3)
/* 8012794C  38 7F 21 88 */	addi r3, r31, 0x2188
/* 80127950  3C A0 80 39 */	lis r5, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 80127954  38 A5 20 94 */	addi r5, r5, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 80127958  38 A5 03 03 */	addi r5, r5, 0x303
/* 8012795C  4B F7 50 09 */	bl entry__8dEyeHL_cFP12J3DModelDataPCc
/* 80127960  80 7F 06 FC */	lwz r3, 0x6fc(r31)
/* 80127964  93 E3 00 14 */	stw r31, 0x14(r3)
/* 80127968  80 7F 06 FC */	lwz r3, 0x6fc(r31)
/* 8012796C  80 63 00 04 */	lwz r3, 4(r3)
/* 80127970  80 63 00 28 */	lwz r3, 0x28(r3)
/* 80127974  80 83 00 04 */	lwz r4, 4(r3)
/* 80127978  3C 60 80 11 */	lis r3, daAlink_kandelaarModelCallBack__FP8J3DJointi@ha /* 0x80110BEC@ha */
/* 8012797C  38 03 0B EC */	addi r0, r3, daAlink_kandelaarModelCallBack__FP8J3DJointi@l /* 0x80110BEC@l */
/* 80127980  90 04 00 04 */	stw r0, 4(r4)
/* 80127984  9B 7F 2D 68 */	stb r27, 0x2d68(r31)
/* 80127988  7F E3 FB 78 */	mr r3, r31
/* 8012798C  4B FE 16 B1 */	bl checkHookshotReadyMaterialOffMode__9daAlink_cCFv
/* 80127990  2C 03 00 00 */	cmpwi r3, 0
/* 80127994  41 82 00 0C */	beq lbl_801279A0
/* 80127998  7F E3 FB 78 */	mr r3, r31
/* 8012799C  4B FE 16 D5 */	bl setHookshotReadyMaterial__9daAlink_cFv
lbl_801279A0:
/* 801279A0  2C 1D 00 00 */	cmpwi r29, 0
/* 801279A4  41 82 00 28 */	beq lbl_801279CC
/* 801279A8  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 801279AC  38 03 00 24 */	addi r0, r3, 0x24
/* 801279B0  90 1F 05 04 */	stw r0, 0x504(r31)
/* 801279B4  80 1F 06 50 */	lwz r0, 0x650(r31)
/* 801279B8  90 1F 05 24 */	stw r0, 0x524(r31)
/* 801279BC  38 00 00 00 */	li r0, 0
/* 801279C0  80 7F 20 60 */	lwz r3, 0x2060(r31)
/* 801279C4  98 03 00 00 */	stb r0, 0(r3)
/* 801279C8  48 00 02 74 */	b lbl_80127C3C
lbl_801279CC:
/* 801279CC  7F E3 FB 78 */	mr r3, r31
/* 801279D0  4B FF ED 71 */	bl changeCommon__9daAlink_cFv
/* 801279D4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 801279D8  54 00 01 CA */	rlwinm r0, r0, 0, 7, 5
/* 801279DC  90 1F 05 74 */	stw r0, 0x574(r31)
/* 801279E0  38 7F 2E 44 */	addi r3, r31, 0x2e44
/* 801279E4  7F E4 FB 78 */	mr r4, r31
/* 801279E8  3C A0 80 3B */	lis r5, l_jntColData@ha /* 0x803B29AC@ha */
/* 801279EC  38 A5 29 AC */	addi r5, r5, l_jntColData@l /* 0x803B29AC@l */
/* 801279F0  80 DF 06 50 */	lwz r6, 0x650(r31)
/* 801279F4  38 E0 00 12 */	li r7, 0x12
/* 801279F8  4B F0 E2 A9 */	bl init__9dJntCol_cFP10fopAc_ac_cPC13dJntColData_cP8J3DModeli
/* 801279FC  38 60 00 00 */	li r3, 0
/* 80127A00  B0 7F 30 88 */	sth r3, 0x3088(r31)
/* 80127A04  38 00 C8 00 */	li r0, -14336
/* 80127A08  B0 1F 30 3A */	sth r0, 0x303a(r31)
/* 80127A0C  B0 7F 30 60 */	sth r3, 0x3060(r31)
/* 80127A10  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80127A14  B0 1F 30 62 */	sth r0, 0x3062(r31)
/* 80127A18  C0 02 97 38 */	lfs f0, lit_43529(r2)
/* 80127A1C  D0 1F 05 98 */	stfs f0, 0x598(r31)
/* 80127A20  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 80127A24  D0 1F 1A 38 */	stfs f0, 0x1a38(r31)
/* 80127A28  38 7E 00 64 */	addi r3, r30, 0x64
/* 80127A2C  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 80127A30  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 80127A34  C0 22 93 88 */	lfs f1, lit_8782(r2)
/* 80127A38  38 7E 0B 9C */	addi r3, r30, 0xb9c
/* 80127A3C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80127A40  EC 01 00 2A */	fadds f0, f1, f0
/* 80127A44  D0 0D 81 10 */	stfs f0, l_autoUpHeight(r13)
/* 80127A48  FC 00 00 50 */	fneg f0, f0
/* 80127A4C  D0 0D 81 14 */	stfs f0, l_autoDownHeight(r13)
/* 80127A50  C0 22 94 D4 */	lfs f1, lit_18929(r2)
/* 80127A54  38 9E 02 74 */	addi r4, r30, 0x274
/* 80127A58  C0 04 00 58 */	lfs f0, 0x58(r4)
/* 80127A5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80127A60  FC 00 00 1E */	fctiwz f0, f0
/* 80127A64  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80127A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80127A6C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80127A70  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80127A74  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80127A78  7C 63 02 14 */	add r3, r3, r0
/* 80127A7C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80127A80  D0 1F 34 70 */	stfs f0, 0x3470(r31)
/* 80127A84  C0 04 00 5C */	lfs f0, 0x5c(r4)
/* 80127A88  EC 01 00 32 */	fmuls f0, f1, f0
/* 80127A8C  FC 00 00 1E */	fctiwz f0, f0
/* 80127A90  D8 01 00 08 */	stfd f0, 8(r1)
/* 80127A94  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80127A98  B0 1F 31 22 */	sth r0, 0x3122(r31)
/* 80127A9C  C0 02 97 3C */	lfs f0, lit_43530(r2)
/* 80127AA0  D0 1F 34 58 */	stfs f0, 0x3458(r31)
/* 80127AA4  C0 02 97 40 */	lfs f0, lit_43531(r2)
/* 80127AA8  D0 1F 34 5C */	stfs f0, 0x345c(r31)
/* 80127AAC  38 7E 00 0C */	addi r3, r30, 0xc
/* 80127AB0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80127AB4  D0 1F 2E 80 */	stfs f0, 0x2e80(r31)
/* 80127AB8  C0 1F 05 98 */	lfs f0, 0x598(r31)
/* 80127ABC  D0 1F 2E 84 */	stfs f0, 0x2e84(r31)
/* 80127AC0  7F E3 FB 78 */	mr r3, r31
/* 80127AC4  48 00 01 E9 */	bl offWolfEyeUp__9daAlink_cFv
/* 80127AC8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80127ACC  D0 1F 34 20 */	stfs f0, 0x3420(r31)
/* 80127AD0  38 00 00 23 */	li r0, 0x23
/* 80127AD4  B0 1F 30 C6 */	sth r0, 0x30c6(r31)
/* 80127AD8  38 00 00 01 */	li r0, 1
/* 80127ADC  B0 1F 30 A8 */	sth r0, 0x30a8(r31)
/* 80127AE0  38 00 00 10 */	li r0, 0x10
/* 80127AE4  B0 1F 30 AA */	sth r0, 0x30aa(r31)
/* 80127AE8  38 00 20 00 */	li r0, 0x2000
/* 80127AEC  B0 1F 30 AE */	sth r0, 0x30ae(r31)
/* 80127AF0  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 80127AF4  D0 1F 34 24 */	stfs f0, 0x3424(r31)
/* 80127AF8  C0 02 93 BC */	lfs f0, lit_10042(r2)
/* 80127AFC  D0 1F 34 28 */	stfs f0, 0x3428(r31)
/* 80127B00  38 1E 24 80 */	addi r0, r30, 0x2480
/* 80127B04  90 1F 2F 50 */	stw r0, 0x2f50(r31)
/* 80127B08  38 1E 24 68 */	addi r0, r30, 0x2468
/* 80127B0C  90 1F 2F 54 */	stw r0, 0x2f54(r31)
/* 80127B10  7F E3 FB 78 */	mr r3, r31
/* 80127B14  4B F8 2C 01 */	bl resetWolfAtCollision__9daAlink_cFv
/* 80127B18  7F E3 FB 78 */	mr r3, r31
/* 80127B1C  48 01 13 FD */	bl resetWolfBallGrab__9daAlink_cFv
/* 80127B20  7F E3 FB 78 */	mr r3, r31
/* 80127B24  38 80 00 00 */	li r4, 0
/* 80127B28  38 A0 00 00 */	li r5, 0
/* 80127B2C  4B F9 97 B1 */	bl deleteEquipItem__9daAlink_cFii
/* 80127B30  3B 60 00 00 */	li r27, 0
/* 80127B34  9B 7F 2F B0 */	stb r27, 0x2fb0(r31)
/* 80127B38  3B 20 00 00 */	li r25, 0
lbl_80127B3C:
/* 80127B3C  38 7B 07 C4 */	addi r3, r27, 0x7c4
/* 80127B40  7C 7F 1A 14 */	add r3, r31, r3
/* 80127B44  48 03 71 B9 */	bl clearData__16daPy_actorKeep_cFv
/* 80127B48  3B 39 00 01 */	addi r25, r25, 1
/* 80127B4C  2C 19 00 0A */	cmpwi r25, 0xa
/* 80127B50  3B 7B 00 08 */	addi r27, r27, 8
/* 80127B54  41 80 FF E8 */	blt lbl_80127B3C
/* 80127B58  38 00 00 00 */	li r0, 0
/* 80127B5C  98 1F 2F B1 */	stb r0, 0x2fb1(r31)
/* 80127B60  38 00 00 09 */	li r0, 9
/* 80127B64  B0 1F 30 B8 */	sth r0, 0x30b8(r31)
/* 80127B68  38 00 00 0E */	li r0, 0xe
/* 80127B6C  B0 1F 30 BA */	sth r0, 0x30ba(r31)
/* 80127B70  38 60 00 0A */	li r3, 0xa
/* 80127B74  B0 7F 30 C0 */	sth r3, 0x30c0(r31)
/* 80127B78  38 00 00 0F */	li r0, 0xf
/* 80127B7C  B0 1F 30 C2 */	sth r0, 0x30c2(r31)
/* 80127B80  38 00 00 03 */	li r0, 3
/* 80127B84  B0 1F 30 C4 */	sth r0, 0x30c4(r31)
/* 80127B88  38 00 00 04 */	li r0, 4
/* 80127B8C  B0 1F 30 B4 */	sth r0, 0x30b4(r31)
/* 80127B90  38 00 00 15 */	li r0, 0x15
/* 80127B94  B0 1F 30 BC */	sth r0, 0x30bc(r31)
/* 80127B98  38 00 00 1A */	li r0, 0x1a
/* 80127B9C  B0 1F 30 BE */	sth r0, 0x30be(r31)
/* 80127BA0  38 00 00 05 */	li r0, 5
/* 80127BA4  B0 1F 30 B6 */	sth r0, 0x30b6(r31)
/* 80127BA8  38 00 00 02 */	li r0, 2
/* 80127BAC  B0 1F 32 C4 */	sth r0, 0x32c4(r31)
/* 80127BB0  38 00 00 10 */	li r0, 0x10
/* 80127BB4  B0 1F 32 C6 */	sth r0, 0x32c6(r31)
/* 80127BB8  B0 7F 05 4E */	sth r3, 0x54e(r31)
/* 80127BBC  38 7F 08 50 */	addi r3, r31, 0x850
/* 80127BC0  38 00 00 03 */	li r0, 3
/* 80127BC4  7C 09 03 A6 */	mtctr r0
lbl_80127BC8:
/* 80127BC8  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80127BCC  60 00 00 08 */	ori r0, r0, 8
/* 80127BD0  90 03 00 9C */	stw r0, 0x9c(r3)
/* 80127BD4  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80127BD8  60 00 00 10 */	ori r0, r0, 0x10
/* 80127BDC  90 03 00 9C */	stw r0, 0x9c(r3)
/* 80127BE0  38 63 01 3C */	addi r3, r3, 0x13c
/* 80127BE4  42 00 FF E4 */	bdnz lbl_80127BC8
/* 80127BE8  3C 60 80 43 */	lis r3, BaseY__4cXyz@ha /* 0x80430D24@ha */
/* 80127BEC  C4 03 0D 24 */	lfsu f0, BaseY__4cXyz@l(r3)  /* 0x80430D24@l */
/* 80127BF0  D0 1F 36 A8 */	stfs f0, 0x36a8(r31)
/* 80127BF4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80127BF8  D0 1F 36 AC */	stfs f0, 0x36ac(r31)
/* 80127BFC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80127C00  D0 1F 36 B0 */	stfs f0, 0x36b0(r31)
/* 80127C04  80 1F 0F B8 */	lwz r0, 0xfb8(r31)
/* 80127C08  60 00 00 01 */	ori r0, r0, 1
/* 80127C0C  90 1F 0F B8 */	stw r0, 0xfb8(r31)
/* 80127C10  80 1F 0F D0 */	lwz r0, 0xfd0(r31)
/* 80127C14  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80127C18  90 1F 0F D0 */	stw r0, 0xfd0(r31)
/* 80127C1C  80 1F 0F E4 */	lwz r0, 0xfe4(r31)
/* 80127C20  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80127C24  90 1F 0F E4 */	stw r0, 0xfe4(r31)
/* 80127C28  38 00 00 00 */	li r0, 0
/* 80127C2C  90 1F 07 9C */	stw r0, 0x79c(r31)
/* 80127C30  90 1F 07 A0 */	stw r0, 0x7a0(r31)
/* 80127C34  90 1F 07 A4 */	stw r0, 0x7a4(r31)
/* 80127C38  90 1F 07 A8 */	stw r0, 0x7a8(r31)
lbl_80127C3C:
/* 80127C3C  39 61 00 40 */	addi r11, r1, 0x40
/* 80127C40  48 23 A5 D9 */	bl _restgpr_25
/* 80127C44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80127C48  7C 08 03 A6 */	mtlr r0
/* 80127C4C  38 21 00 40 */	addi r1, r1, 0x40
/* 80127C50  4E 80 00 20 */	blr 
