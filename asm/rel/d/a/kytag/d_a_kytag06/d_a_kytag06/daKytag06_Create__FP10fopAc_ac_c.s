lbl_80859C88:
/* 80859C88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80859C8C  7C 08 02 A6 */	mflr r0
/* 80859C90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80859C94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80859C98  7C 7F 1B 78 */	mr r31, r3
/* 80859C9C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80859CA0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80859CA4  40 82 00 1C */	bne lbl_80859CC0
/* 80859CA8  28 1F 00 00 */	cmplwi r31, 0
/* 80859CAC  41 82 00 08 */	beq lbl_80859CB4
/* 80859CB0  4B 7B EE B5 */	bl __ct__10fopAc_ac_cFv
lbl_80859CB4:
/* 80859CB4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80859CB8  60 00 00 08 */	ori r0, r0, 8
/* 80859CBC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80859CC0:
/* 80859CC0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80859CC4  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 80859CC8  98 1F 05 93 */	stb r0, 0x593(r31)
/* 80859CCC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80859CD0  54 00 27 3E */	srwi r0, r0, 0x1c
/* 80859CD4  98 1F 05 97 */	stb r0, 0x597(r31)
/* 80859CD8  3C 60 80 86 */	lis r3, lit_3881@ha /* 0x80859E8C@ha */
/* 80859CDC  C0 03 9E 8C */	lfs f0, lit_3881@l(r3)  /* 0x80859E8C@l */
/* 80859CE0  D0 1F 05 6C */	stfs f0, 0x56c(r31)
/* 80859CE4  D0 1F 05 70 */	stfs f0, 0x570(r31)
/* 80859CE8  88 1F 05 93 */	lbz r0, 0x593(r31)
/* 80859CEC  28 00 00 0B */	cmplwi r0, 0xb
/* 80859CF0  41 81 00 F0 */	bgt lbl_80859DE0
/* 80859CF4  3C 60 80 86 */	lis r3, lit_4772@ha /* 0x8085A0A4@ha */
/* 80859CF8  38 63 A0 A4 */	addi r3, r3, lit_4772@l /* 0x8085A0A4@l */
/* 80859CFC  54 00 10 3A */	slwi r0, r0, 2
/* 80859D00  7C 03 00 2E */	lwzx r0, r3, r0
/* 80859D04  7C 09 03 A6 */	mtctr r0
/* 80859D08  4E 80 04 20 */	bctr 
lbl_80859D0C:
/* 80859D0C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80859D10  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80859D14  98 1F 05 94 */	stb r0, 0x594(r31)
/* 80859D18  7F E3 FB 78 */	mr r3, r31
/* 80859D1C  4B FF E2 2D */	bl set_path_info__FP10fopAc_ac_c
/* 80859D20  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80859D24  48 00 01 2C */	b lbl_80859E50
lbl_80859D28:
/* 80859D28  7F E3 FB 78 */	mr r3, r31
/* 80859D2C  4B FF FD E9 */	bl daKytag06_type02_init__FP10fopAc_ac_c
/* 80859D30  48 00 01 20 */	b lbl_80859E50
lbl_80859D34:
/* 80859D34  7F E3 FB 78 */	mr r3, r31
/* 80859D38  4B FF FD FD */	bl daKytag06_type03_init__FP10fopAc_ac_c
/* 80859D3C  48 00 01 14 */	b lbl_80859E50
lbl_80859D40:
/* 80859D40  7F E3 FB 78 */	mr r3, r31
/* 80859D44  4B FF FD 8D */	bl daKytag06_type04_init__FP10fopAc_ac_c
/* 80859D48  48 00 01 08 */	b lbl_80859E50
lbl_80859D4C:
/* 80859D4C  7F E3 FB 78 */	mr r3, r31
/* 80859D50  4B FF FD A1 */	bl daKytag06_type06_init__FP10fopAc_ac_c
/* 80859D54  48 00 00 FC */	b lbl_80859E50
lbl_80859D58:
/* 80859D58  38 00 00 00 */	li r0, 0
/* 80859D5C  98 1F 05 90 */	stb r0, 0x590(r31)
/* 80859D60  98 1F 05 91 */	stb r0, 0x591(r31)
/* 80859D64  90 1F 05 74 */	stw r0, 0x574(r31)
/* 80859D68  48 00 00 E8 */	b lbl_80859E50
lbl_80859D6C:
/* 80859D6C  7F E3 FB 78 */	mr r3, r31
/* 80859D70  4B FF FD 81 */	bl daKytag06_type06_init__FP10fopAc_ac_c
/* 80859D74  38 00 00 09 */	li r0, 9
/* 80859D78  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859D7C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859D80  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 80859D84  38 00 00 32 */	li r0, 0x32
/* 80859D88  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 80859D8C  48 00 00 C4 */	b lbl_80859E50
lbl_80859D90:
/* 80859D90  7F E3 FB 78 */	mr r3, r31
/* 80859D94  4B FF FD 5D */	bl daKytag06_type06_init__FP10fopAc_ac_c
/* 80859D98  48 00 00 B8 */	b lbl_80859E50
lbl_80859D9C:
/* 80859D9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80859DA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859DA4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80859DA8  3C 80 80 86 */	lis r4, d_a_kytag06__stringBase0@ha /* 0x80859F90@ha */
/* 80859DAC  38 84 9F 90 */	addi r4, r4, d_a_kytag06__stringBase0@l /* 0x80859F90@l */
/* 80859DB0  4B B0 EB E5 */	bl strcmp
/* 80859DB4  2C 03 00 00 */	cmpwi r3, 0
/* 80859DB8  41 82 00 10 */	beq lbl_80859DC8
/* 80859DBC  7F E3 FB 78 */	mr r3, r31
/* 80859DC0  4B FF FD 31 */	bl daKytag06_type06_init__FP10fopAc_ac_c
/* 80859DC4  48 00 00 8C */	b lbl_80859E50
lbl_80859DC8:
/* 80859DC8  7F E3 FB 78 */	mr r3, r31
/* 80859DCC  4B FF FD 69 */	bl daKytag06_type03_init__FP10fopAc_ac_c
/* 80859DD0  48 00 00 80 */	b lbl_80859E50
lbl_80859DD4:
/* 80859DD4  7F E3 FB 78 */	mr r3, r31
/* 80859DD8  4B FF FD 19 */	bl daKytag06_type06_init__FP10fopAc_ac_c
/* 80859DDC  48 00 00 74 */	b lbl_80859E50
lbl_80859DE0:
/* 80859DE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80859DE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859DE8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80859DEC  3C 80 80 86 */	lis r4, d_a_kytag06__stringBase0@ha /* 0x80859F90@ha */
/* 80859DF0  38 84 9F 90 */	addi r4, r4, d_a_kytag06__stringBase0@l /* 0x80859F90@l */
/* 80859DF4  38 84 00 08 */	addi r4, r4, 8
/* 80859DF8  4B B0 EB 9D */	bl strcmp
/* 80859DFC  2C 03 00 00 */	cmpwi r3, 0
/* 80859E00  41 82 00 20 */	beq lbl_80859E20
/* 80859E04  38 00 00 03 */	li r0, 3
/* 80859E08  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80859E0C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 80859E10  98 03 12 C8 */	stb r0, 0x12c8(r3)
/* 80859E14  98 03 12 C2 */	stb r0, 0x12c2(r3)
/* 80859E18  98 03 12 C3 */	stb r0, 0x12c3(r3)
/* 80859E1C  48 00 00 18 */	b lbl_80859E34
lbl_80859E20:
/* 80859E20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80859E24  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80859E28  3C 60 80 86 */	lis r3, lit_4771@ha /* 0x80859F8C@ha */
/* 80859E2C  C0 03 9F 8C */	lfs f0, lit_4771@l(r3)  /* 0x80859F8C@l */
/* 80859E30  D0 04 00 34 */	stfs f0, 0x34(r4)
lbl_80859E34:
/* 80859E34  38 00 00 00 */	li r0, 0
/* 80859E38  90 1F 05 78 */	stw r0, 0x578(r31)
/* 80859E3C  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 80859E40  98 1F 05 90 */	stb r0, 0x590(r31)
/* 80859E44  98 1F 05 91 */	stb r0, 0x591(r31)
/* 80859E48  38 00 02 80 */	li r0, 0x280
/* 80859E4C  90 1F 05 74 */	stw r0, 0x574(r31)
lbl_80859E50:
/* 80859E50  38 60 00 04 */	li r3, 4
/* 80859E54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80859E58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80859E5C  7C 08 03 A6 */	mtlr r0
/* 80859E60  38 21 00 10 */	addi r1, r1, 0x10
/* 80859E64  4E 80 00 20 */	blr 
