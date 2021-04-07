lbl_80B33B3C:
/* 80B33B3C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80B33B40  7C 08 02 A6 */	mflr r0
/* 80B33B44  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80B33B48  93 E1 00 DC */	stw r31, 0xdc(r1)
/* 80B33B4C  93 C1 00 D8 */	stw r30, 0xd8(r1)
/* 80B33B50  7C 7F 1B 78 */	mr r31, r3
/* 80B33B54  3C 60 80 B4 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B33B58  38 63 1D F8 */	addi r3, r3, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B33B5C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B33B60  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B33B64  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80B33B68  88 1F 0E 9B */	lbz r0, 0xe9b(r31)
/* 80B33B6C  28 00 00 01 */	cmplwi r0, 1
/* 80B33B70  40 82 01 F4 */	bne lbl_80B33D64
/* 80B33B74  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80B33B78  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80B33B7C  40 82 01 E8 */	bne lbl_80B33D64
/* 80B33B80  88 1E 05 6A */	lbz r0, 0x56a(r30)
/* 80B33B84  28 00 00 19 */	cmplwi r0, 0x19
/* 80B33B88  41 82 00 1C */	beq lbl_80B33BA4
/* 80B33B8C  28 00 00 1A */	cmplwi r0, 0x1a
/* 80B33B90  41 82 00 14 */	beq lbl_80B33BA4
/* 80B33B94  28 00 00 17 */	cmplwi r0, 0x17
/* 80B33B98  41 82 00 0C */	beq lbl_80B33BA4
/* 80B33B9C  28 00 00 18 */	cmplwi r0, 0x18
/* 80B33BA0  40 82 00 94 */	bne lbl_80B33C34
lbl_80B33BA4:
/* 80B33BA4  80 83 09 B8 */	lwz r4, 0x9b8(r3)
/* 80B33BA8  80 03 09 BC */	lwz r0, 0x9bc(r3)
/* 80B33BAC  90 81 00 C8 */	stw r4, 0xc8(r1)
/* 80B33BB0  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80B33BB4  80 03 09 C0 */	lwz r0, 0x9c0(r3)
/* 80B33BB8  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80B33BBC  38 00 00 03 */	li r0, 3
/* 80B33BC0  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33BC4  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33BC8  4B 82 E4 51 */	bl __ptmf_test
/* 80B33BCC  2C 03 00 00 */	cmpwi r3, 0
/* 80B33BD0  41 82 00 18 */	beq lbl_80B33BE8
/* 80B33BD4  7F E3 FB 78 */	mr r3, r31
/* 80B33BD8  38 80 00 00 */	li r4, 0
/* 80B33BDC  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33BE0  4B 82 E4 A5 */	bl __ptmf_scall
/* 80B33BE4  60 00 00 00 */	nop 
lbl_80B33BE8:
/* 80B33BE8  38 00 00 00 */	li r0, 0
/* 80B33BEC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33BF0  80 61 00 C8 */	lwz r3, 0xc8(r1)
/* 80B33BF4  80 01 00 CC */	lwz r0, 0xcc(r1)
/* 80B33BF8  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B33BFC  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B33C00  80 01 00 D0 */	lwz r0, 0xd0(r1)
/* 80B33C04  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B33C08  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33C0C  4B 82 E4 0D */	bl __ptmf_test
/* 80B33C10  2C 03 00 00 */	cmpwi r3, 0
/* 80B33C14  41 82 00 18 */	beq lbl_80B33C2C
/* 80B33C18  7F E3 FB 78 */	mr r3, r31
/* 80B33C1C  38 80 00 00 */	li r4, 0
/* 80B33C20  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33C24  4B 82 E4 61 */	bl __ptmf_scall
/* 80B33C28  60 00 00 00 */	nop 
lbl_80B33C2C:
/* 80B33C2C  38 60 00 01 */	li r3, 1
/* 80B33C30  48 00 0A 0C */	b lbl_80B3463C
lbl_80B33C34:
/* 80B33C34  28 00 00 15 */	cmplwi r0, 0x15
/* 80B33C38  40 82 00 94 */	bne lbl_80B33CCC
/* 80B33C3C  80 83 09 C4 */	lwz r4, 0x9c4(r3)
/* 80B33C40  80 03 09 C8 */	lwz r0, 0x9c8(r3)
/* 80B33C44  90 81 00 BC */	stw r4, 0xbc(r1)
/* 80B33C48  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80B33C4C  80 03 09 CC */	lwz r0, 0x9cc(r3)
/* 80B33C50  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B33C54  38 00 00 03 */	li r0, 3
/* 80B33C58  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33C5C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33C60  4B 82 E3 B9 */	bl __ptmf_test
/* 80B33C64  2C 03 00 00 */	cmpwi r3, 0
/* 80B33C68  41 82 00 18 */	beq lbl_80B33C80
/* 80B33C6C  7F E3 FB 78 */	mr r3, r31
/* 80B33C70  38 80 00 00 */	li r4, 0
/* 80B33C74  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33C78  4B 82 E4 0D */	bl __ptmf_scall
/* 80B33C7C  60 00 00 00 */	nop 
lbl_80B33C80:
/* 80B33C80  38 00 00 00 */	li r0, 0
/* 80B33C84  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33C88  80 61 00 BC */	lwz r3, 0xbc(r1)
/* 80B33C8C  80 01 00 C0 */	lwz r0, 0xc0(r1)
/* 80B33C90  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B33C94  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B33C98  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B33C9C  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B33CA0  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33CA4  4B 82 E3 75 */	bl __ptmf_test
/* 80B33CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80B33CAC  41 82 00 18 */	beq lbl_80B33CC4
/* 80B33CB0  7F E3 FB 78 */	mr r3, r31
/* 80B33CB4  38 80 00 00 */	li r4, 0
/* 80B33CB8  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33CBC  4B 82 E3 C9 */	bl __ptmf_scall
/* 80B33CC0  60 00 00 00 */	nop 
lbl_80B33CC4:
/* 80B33CC4  38 60 00 01 */	li r3, 1
/* 80B33CC8  48 00 09 74 */	b lbl_80B3463C
lbl_80B33CCC:
/* 80B33CCC  28 00 00 12 */	cmplwi r0, 0x12
/* 80B33CD0  40 82 09 68 */	bne lbl_80B34638
/* 80B33CD4  80 83 09 D0 */	lwz r4, 0x9d0(r3)
/* 80B33CD8  80 03 09 D4 */	lwz r0, 0x9d4(r3)
/* 80B33CDC  90 81 00 B0 */	stw r4, 0xb0(r1)
/* 80B33CE0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80B33CE4  80 03 09 D8 */	lwz r0, 0x9d8(r3)
/* 80B33CE8  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80B33CEC  38 00 00 03 */	li r0, 3
/* 80B33CF0  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33CF4  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33CF8  4B 82 E3 21 */	bl __ptmf_test
/* 80B33CFC  2C 03 00 00 */	cmpwi r3, 0
/* 80B33D00  41 82 00 18 */	beq lbl_80B33D18
/* 80B33D04  7F E3 FB 78 */	mr r3, r31
/* 80B33D08  38 80 00 00 */	li r4, 0
/* 80B33D0C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33D10  4B 82 E3 75 */	bl __ptmf_scall
/* 80B33D14  60 00 00 00 */	nop 
lbl_80B33D18:
/* 80B33D18  38 00 00 00 */	li r0, 0
/* 80B33D1C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33D20  80 61 00 B0 */	lwz r3, 0xb0(r1)
/* 80B33D24  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80B33D28  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B33D2C  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B33D30  80 01 00 B8 */	lwz r0, 0xb8(r1)
/* 80B33D34  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B33D38  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33D3C  4B 82 E2 DD */	bl __ptmf_test
/* 80B33D40  2C 03 00 00 */	cmpwi r3, 0
/* 80B33D44  41 82 00 18 */	beq lbl_80B33D5C
/* 80B33D48  7F E3 FB 78 */	mr r3, r31
/* 80B33D4C  38 80 00 00 */	li r4, 0
/* 80B33D50  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33D54  4B 82 E3 31 */	bl __ptmf_scall
/* 80B33D58  60 00 00 00 */	nop 
lbl_80B33D5C:
/* 80B33D5C  38 60 00 01 */	li r3, 1
/* 80B33D60  48 00 08 DC */	b lbl_80B3463C
lbl_80B33D64:
/* 80B33D64  88 9E 05 6A */	lbz r4, 0x56a(r30)
/* 80B33D68  28 04 00 1F */	cmplwi r4, 0x1f
/* 80B33D6C  41 82 00 0C */	beq lbl_80B33D78
/* 80B33D70  28 04 00 20 */	cmplwi r4, 0x20
/* 80B33D74  40 82 00 A0 */	bne lbl_80B33E14
lbl_80B33D78:
/* 80B33D78  38 A0 00 03 */	li r5, 3
/* 80B33D7C  90 BF 0E 74 */	stw r5, 0xe74(r31)
/* 80B33D80  80 83 09 DC */	lwz r4, 0x9dc(r3)
/* 80B33D84  80 03 09 E0 */	lwz r0, 0x9e0(r3)
/* 80B33D88  90 81 00 A4 */	stw r4, 0xa4(r1)
/* 80B33D8C  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80B33D90  80 03 09 E4 */	lwz r0, 0x9e4(r3)
/* 80B33D94  90 01 00 AC */	stw r0, 0xac(r1)
/* 80B33D98  B0 BF 0E 96 */	sth r5, 0xe96(r31)
/* 80B33D9C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33DA0  4B 82 E2 79 */	bl __ptmf_test
/* 80B33DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80B33DA8  41 82 00 18 */	beq lbl_80B33DC0
/* 80B33DAC  7F E3 FB 78 */	mr r3, r31
/* 80B33DB0  38 80 00 00 */	li r4, 0
/* 80B33DB4  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33DB8  4B 82 E2 CD */	bl __ptmf_scall
/* 80B33DBC  60 00 00 00 */	nop 
lbl_80B33DC0:
/* 80B33DC0  38 00 00 00 */	li r0, 0
/* 80B33DC4  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33DC8  80 61 00 A4 */	lwz r3, 0xa4(r1)
/* 80B33DCC  80 01 00 A8 */	lwz r0, 0xa8(r1)
/* 80B33DD0  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B33DD4  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B33DD8  80 01 00 AC */	lwz r0, 0xac(r1)
/* 80B33DDC  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B33DE0  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33DE4  4B 82 E2 35 */	bl __ptmf_test
/* 80B33DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80B33DEC  41 82 00 18 */	beq lbl_80B33E04
/* 80B33DF0  7F E3 FB 78 */	mr r3, r31
/* 80B33DF4  38 80 00 00 */	li r4, 0
/* 80B33DF8  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33DFC  4B 82 E2 89 */	bl __ptmf_scall
/* 80B33E00  60 00 00 00 */	nop 
lbl_80B33E04:
/* 80B33E04  38 00 00 1B */	li r0, 0x1b
/* 80B33E08  98 1E 05 6A */	stb r0, 0x56a(r30)
/* 80B33E0C  38 60 00 01 */	li r3, 1
/* 80B33E10  48 00 08 2C */	b lbl_80B3463C
lbl_80B33E14:
/* 80B33E14  80 1F 0E 74 */	lwz r0, 0xe74(r31)
/* 80B33E18  2C 00 00 03 */	cmpwi r0, 3
/* 80B33E1C  41 82 03 EC */	beq lbl_80B34208
/* 80B33E20  40 80 00 14 */	bge lbl_80B33E34
/* 80B33E24  2C 00 00 01 */	cmpwi r0, 1
/* 80B33E28  41 82 00 18 */	beq lbl_80B33E40
/* 80B33E2C  40 80 01 F4 */	bge lbl_80B34020
/* 80B33E30  48 00 08 08 */	b lbl_80B34638
lbl_80B33E34:
/* 80B33E34  2C 00 00 05 */	cmpwi r0, 5
/* 80B33E38  40 80 08 00 */	bge lbl_80B34638
/* 80B33E3C  48 00 05 9C */	b lbl_80B343D8
lbl_80B33E40:
/* 80B33E40  28 04 00 11 */	cmplwi r4, 0x11
/* 80B33E44  40 82 00 94 */	bne lbl_80B33ED8
/* 80B33E48  80 83 09 E8 */	lwz r4, 0x9e8(r3)
/* 80B33E4C  80 03 09 EC */	lwz r0, 0x9ec(r3)
/* 80B33E50  90 81 00 98 */	stw r4, 0x98(r1)
/* 80B33E54  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80B33E58  80 03 09 F0 */	lwz r0, 0x9f0(r3)
/* 80B33E5C  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80B33E60  38 00 00 03 */	li r0, 3
/* 80B33E64  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33E68  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33E6C  4B 82 E1 AD */	bl __ptmf_test
/* 80B33E70  2C 03 00 00 */	cmpwi r3, 0
/* 80B33E74  41 82 00 18 */	beq lbl_80B33E8C
/* 80B33E78  7F E3 FB 78 */	mr r3, r31
/* 80B33E7C  38 80 00 00 */	li r4, 0
/* 80B33E80  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33E84  4B 82 E2 01 */	bl __ptmf_scall
/* 80B33E88  60 00 00 00 */	nop 
lbl_80B33E8C:
/* 80B33E8C  38 00 00 00 */	li r0, 0
/* 80B33E90  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33E94  80 61 00 98 */	lwz r3, 0x98(r1)
/* 80B33E98  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 80B33E9C  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B33EA0  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B33EA4  80 01 00 A0 */	lwz r0, 0xa0(r1)
/* 80B33EA8  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B33EAC  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33EB0  4B 82 E1 69 */	bl __ptmf_test
/* 80B33EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80B33EB8  41 82 00 18 */	beq lbl_80B33ED0
/* 80B33EBC  7F E3 FB 78 */	mr r3, r31
/* 80B33EC0  38 80 00 00 */	li r4, 0
/* 80B33EC4  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33EC8  4B 82 E1 BD */	bl __ptmf_scall
/* 80B33ECC  60 00 00 00 */	nop 
lbl_80B33ED0:
/* 80B33ED0  38 60 00 01 */	li r3, 1
/* 80B33ED4  48 00 07 68 */	b lbl_80B3463C
lbl_80B33ED8:
/* 80B33ED8  28 04 00 13 */	cmplwi r4, 0x13
/* 80B33EDC  40 82 00 94 */	bne lbl_80B33F70
/* 80B33EE0  80 83 09 F4 */	lwz r4, 0x9f4(r3)
/* 80B33EE4  80 03 09 F8 */	lwz r0, 0x9f8(r3)
/* 80B33EE8  90 81 00 8C */	stw r4, 0x8c(r1)
/* 80B33EEC  90 01 00 90 */	stw r0, 0x90(r1)
/* 80B33EF0  80 03 09 FC */	lwz r0, 0x9fc(r3)
/* 80B33EF4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80B33EF8  38 00 00 03 */	li r0, 3
/* 80B33EFC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33F00  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33F04  4B 82 E1 15 */	bl __ptmf_test
/* 80B33F08  2C 03 00 00 */	cmpwi r3, 0
/* 80B33F0C  41 82 00 18 */	beq lbl_80B33F24
/* 80B33F10  7F E3 FB 78 */	mr r3, r31
/* 80B33F14  38 80 00 00 */	li r4, 0
/* 80B33F18  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33F1C  4B 82 E1 69 */	bl __ptmf_scall
/* 80B33F20  60 00 00 00 */	nop 
lbl_80B33F24:
/* 80B33F24  38 00 00 00 */	li r0, 0
/* 80B33F28  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33F2C  80 61 00 8C */	lwz r3, 0x8c(r1)
/* 80B33F30  80 01 00 90 */	lwz r0, 0x90(r1)
/* 80B33F34  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B33F38  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B33F3C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80B33F40  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B33F44  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33F48  4B 82 E0 D1 */	bl __ptmf_test
/* 80B33F4C  2C 03 00 00 */	cmpwi r3, 0
/* 80B33F50  41 82 00 18 */	beq lbl_80B33F68
/* 80B33F54  7F E3 FB 78 */	mr r3, r31
/* 80B33F58  38 80 00 00 */	li r4, 0
/* 80B33F5C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33F60  4B 82 E1 25 */	bl __ptmf_scall
/* 80B33F64  60 00 00 00 */	nop 
lbl_80B33F68:
/* 80B33F68  38 60 00 01 */	li r3, 1
/* 80B33F6C  48 00 06 D0 */	b lbl_80B3463C
lbl_80B33F70:
/* 80B33F70  28 04 00 19 */	cmplwi r4, 0x19
/* 80B33F74  41 82 00 1C */	beq lbl_80B33F90
/* 80B33F78  28 04 00 1A */	cmplwi r4, 0x1a
/* 80B33F7C  41 82 00 14 */	beq lbl_80B33F90
/* 80B33F80  28 04 00 17 */	cmplwi r4, 0x17
/* 80B33F84  41 82 00 0C */	beq lbl_80B33F90
/* 80B33F88  28 04 00 18 */	cmplwi r4, 0x18
/* 80B33F8C  40 82 06 AC */	bne lbl_80B34638
lbl_80B33F90:
/* 80B33F90  80 83 0A 00 */	lwz r4, 0xa00(r3)
/* 80B33F94  80 03 0A 04 */	lwz r0, 0xa04(r3)
/* 80B33F98  90 81 00 80 */	stw r4, 0x80(r1)
/* 80B33F9C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80B33FA0  80 03 0A 08 */	lwz r0, 0xa08(r3)
/* 80B33FA4  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B33FA8  38 00 00 03 */	li r0, 3
/* 80B33FAC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33FB0  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33FB4  4B 82 E0 65 */	bl __ptmf_test
/* 80B33FB8  2C 03 00 00 */	cmpwi r3, 0
/* 80B33FBC  41 82 00 18 */	beq lbl_80B33FD4
/* 80B33FC0  7F E3 FB 78 */	mr r3, r31
/* 80B33FC4  38 80 00 00 */	li r4, 0
/* 80B33FC8  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B33FCC  4B 82 E0 B9 */	bl __ptmf_scall
/* 80B33FD0  60 00 00 00 */	nop 
lbl_80B33FD4:
/* 80B33FD4  38 00 00 00 */	li r0, 0
/* 80B33FD8  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B33FDC  80 61 00 80 */	lwz r3, 0x80(r1)
/* 80B33FE0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80B33FE4  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B33FE8  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B33FEC  80 01 00 88 */	lwz r0, 0x88(r1)
/* 80B33FF0  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B33FF4  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B33FF8  4B 82 E0 21 */	bl __ptmf_test
/* 80B33FFC  2C 03 00 00 */	cmpwi r3, 0
/* 80B34000  41 82 00 18 */	beq lbl_80B34018
/* 80B34004  7F E3 FB 78 */	mr r3, r31
/* 80B34008  38 80 00 00 */	li r4, 0
/* 80B3400C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34010  4B 82 E0 75 */	bl __ptmf_scall
/* 80B34014  60 00 00 00 */	nop 
lbl_80B34018:
/* 80B34018  38 60 00 01 */	li r3, 1
/* 80B3401C  48 00 06 20 */	b lbl_80B3463C
lbl_80B34020:
/* 80B34020  28 04 00 19 */	cmplwi r4, 0x19
/* 80B34024  41 82 00 1C */	beq lbl_80B34040
/* 80B34028  28 04 00 1A */	cmplwi r4, 0x1a
/* 80B3402C  41 82 00 14 */	beq lbl_80B34040
/* 80B34030  28 04 00 17 */	cmplwi r4, 0x17
/* 80B34034  41 82 00 0C */	beq lbl_80B34040
/* 80B34038  28 04 00 18 */	cmplwi r4, 0x18
/* 80B3403C  40 82 00 94 */	bne lbl_80B340D0
lbl_80B34040:
/* 80B34040  80 83 0A 0C */	lwz r4, 0xa0c(r3)
/* 80B34044  80 03 0A 10 */	lwz r0, 0xa10(r3)
/* 80B34048  90 81 00 74 */	stw r4, 0x74(r1)
/* 80B3404C  90 01 00 78 */	stw r0, 0x78(r1)
/* 80B34050  80 03 0A 14 */	lwz r0, 0xa14(r3)
/* 80B34054  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80B34058  38 00 00 03 */	li r0, 3
/* 80B3405C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34060  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34064  4B 82 DF B5 */	bl __ptmf_test
/* 80B34068  2C 03 00 00 */	cmpwi r3, 0
/* 80B3406C  41 82 00 18 */	beq lbl_80B34084
/* 80B34070  7F E3 FB 78 */	mr r3, r31
/* 80B34074  38 80 00 00 */	li r4, 0
/* 80B34078  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B3407C  4B 82 E0 09 */	bl __ptmf_scall
/* 80B34080  60 00 00 00 */	nop 
lbl_80B34084:
/* 80B34084  38 00 00 00 */	li r0, 0
/* 80B34088  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B3408C  80 61 00 74 */	lwz r3, 0x74(r1)
/* 80B34090  80 01 00 78 */	lwz r0, 0x78(r1)
/* 80B34094  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B34098  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B3409C  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80B340A0  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B340A4  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B340A8  4B 82 DF 71 */	bl __ptmf_test
/* 80B340AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B340B0  41 82 00 18 */	beq lbl_80B340C8
/* 80B340B4  7F E3 FB 78 */	mr r3, r31
/* 80B340B8  38 80 00 00 */	li r4, 0
/* 80B340BC  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B340C0  4B 82 DF C5 */	bl __ptmf_scall
/* 80B340C4  60 00 00 00 */	nop 
lbl_80B340C8:
/* 80B340C8  38 60 00 01 */	li r3, 1
/* 80B340CC  48 00 05 70 */	b lbl_80B3463C
lbl_80B340D0:
/* 80B340D0  28 04 00 15 */	cmplwi r4, 0x15
/* 80B340D4  40 82 00 94 */	bne lbl_80B34168
/* 80B340D8  80 83 0A 18 */	lwz r4, 0xa18(r3)
/* 80B340DC  80 03 0A 1C */	lwz r0, 0xa1c(r3)
/* 80B340E0  90 81 00 68 */	stw r4, 0x68(r1)
/* 80B340E4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80B340E8  80 03 0A 20 */	lwz r0, 0xa20(r3)
/* 80B340EC  90 01 00 70 */	stw r0, 0x70(r1)
/* 80B340F0  38 00 00 03 */	li r0, 3
/* 80B340F4  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B340F8  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B340FC  4B 82 DF 1D */	bl __ptmf_test
/* 80B34100  2C 03 00 00 */	cmpwi r3, 0
/* 80B34104  41 82 00 18 */	beq lbl_80B3411C
/* 80B34108  7F E3 FB 78 */	mr r3, r31
/* 80B3410C  38 80 00 00 */	li r4, 0
/* 80B34110  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34114  4B 82 DF 71 */	bl __ptmf_scall
/* 80B34118  60 00 00 00 */	nop 
lbl_80B3411C:
/* 80B3411C  38 00 00 00 */	li r0, 0
/* 80B34120  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34124  80 61 00 68 */	lwz r3, 0x68(r1)
/* 80B34128  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80B3412C  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B34130  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B34134  80 01 00 70 */	lwz r0, 0x70(r1)
/* 80B34138  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B3413C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34140  4B 82 DE D9 */	bl __ptmf_test
/* 80B34144  2C 03 00 00 */	cmpwi r3, 0
/* 80B34148  41 82 00 18 */	beq lbl_80B34160
/* 80B3414C  7F E3 FB 78 */	mr r3, r31
/* 80B34150  38 80 00 00 */	li r4, 0
/* 80B34154  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34158  4B 82 DF 2D */	bl __ptmf_scall
/* 80B3415C  60 00 00 00 */	nop 
lbl_80B34160:
/* 80B34160  38 60 00 01 */	li r3, 1
/* 80B34164  48 00 04 D8 */	b lbl_80B3463C
lbl_80B34168:
/* 80B34168  28 04 00 0F */	cmplwi r4, 0xf
/* 80B3416C  41 82 00 0C */	beq lbl_80B34178
/* 80B34170  28 04 00 10 */	cmplwi r4, 0x10
/* 80B34174  40 82 04 C4 */	bne lbl_80B34638
lbl_80B34178:
/* 80B34178  80 83 0A 24 */	lwz r4, 0xa24(r3)
/* 80B3417C  80 03 0A 28 */	lwz r0, 0xa28(r3)
/* 80B34180  90 81 00 5C */	stw r4, 0x5c(r1)
/* 80B34184  90 01 00 60 */	stw r0, 0x60(r1)
/* 80B34188  80 03 0A 2C */	lwz r0, 0xa2c(r3)
/* 80B3418C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B34190  38 00 00 03 */	li r0, 3
/* 80B34194  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34198  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3419C  4B 82 DE 7D */	bl __ptmf_test
/* 80B341A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B341A4  41 82 00 18 */	beq lbl_80B341BC
/* 80B341A8  7F E3 FB 78 */	mr r3, r31
/* 80B341AC  38 80 00 00 */	li r4, 0
/* 80B341B0  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B341B4  4B 82 DE D1 */	bl __ptmf_scall
/* 80B341B8  60 00 00 00 */	nop 
lbl_80B341BC:
/* 80B341BC  38 00 00 00 */	li r0, 0
/* 80B341C0  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B341C4  80 61 00 5C */	lwz r3, 0x5c(r1)
/* 80B341C8  80 01 00 60 */	lwz r0, 0x60(r1)
/* 80B341CC  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B341D0  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B341D4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B341D8  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B341DC  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B341E0  4B 82 DE 39 */	bl __ptmf_test
/* 80B341E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B341E8  41 82 00 18 */	beq lbl_80B34200
/* 80B341EC  7F E3 FB 78 */	mr r3, r31
/* 80B341F0  38 80 00 00 */	li r4, 0
/* 80B341F4  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B341F8  4B 82 DE 8D */	bl __ptmf_scall
/* 80B341FC  60 00 00 00 */	nop 
lbl_80B34200:
/* 80B34200  38 60 00 01 */	li r3, 1
/* 80B34204  48 00 04 38 */	b lbl_80B3463C
lbl_80B34208:
/* 80B34208  28 04 00 19 */	cmplwi r4, 0x19
/* 80B3420C  41 82 00 0C */	beq lbl_80B34218
/* 80B34210  28 04 00 1A */	cmplwi r4, 0x1a
/* 80B34214  40 82 00 94 */	bne lbl_80B342A8
lbl_80B34218:
/* 80B34218  80 83 0A 30 */	lwz r4, 0xa30(r3)
/* 80B3421C  80 03 0A 34 */	lwz r0, 0xa34(r3)
/* 80B34220  90 81 00 50 */	stw r4, 0x50(r1)
/* 80B34224  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B34228  80 03 0A 38 */	lwz r0, 0xa38(r3)
/* 80B3422C  90 01 00 58 */	stw r0, 0x58(r1)
/* 80B34230  38 00 00 03 */	li r0, 3
/* 80B34234  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34238  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3423C  4B 82 DD DD */	bl __ptmf_test
/* 80B34240  2C 03 00 00 */	cmpwi r3, 0
/* 80B34244  41 82 00 18 */	beq lbl_80B3425C
/* 80B34248  7F E3 FB 78 */	mr r3, r31
/* 80B3424C  38 80 00 00 */	li r4, 0
/* 80B34250  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34254  4B 82 DE 31 */	bl __ptmf_scall
/* 80B34258  60 00 00 00 */	nop 
lbl_80B3425C:
/* 80B3425C  38 00 00 00 */	li r0, 0
/* 80B34260  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34264  80 61 00 50 */	lwz r3, 0x50(r1)
/* 80B34268  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B3426C  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B34270  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B34274  80 01 00 58 */	lwz r0, 0x58(r1)
/* 80B34278  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B3427C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34280  4B 82 DD 99 */	bl __ptmf_test
/* 80B34284  2C 03 00 00 */	cmpwi r3, 0
/* 80B34288  41 82 00 18 */	beq lbl_80B342A0
/* 80B3428C  7F E3 FB 78 */	mr r3, r31
/* 80B34290  38 80 00 00 */	li r4, 0
/* 80B34294  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34298  4B 82 DD ED */	bl __ptmf_scall
/* 80B3429C  60 00 00 00 */	nop 
lbl_80B342A0:
/* 80B342A0  38 60 00 01 */	li r3, 1
/* 80B342A4  48 00 03 98 */	b lbl_80B3463C
lbl_80B342A8:
/* 80B342A8  28 04 00 14 */	cmplwi r4, 0x14
/* 80B342AC  40 82 00 94 */	bne lbl_80B34340
/* 80B342B0  80 83 0A 3C */	lwz r4, 0xa3c(r3)
/* 80B342B4  80 03 0A 40 */	lwz r0, 0xa40(r3)
/* 80B342B8  90 81 00 44 */	stw r4, 0x44(r1)
/* 80B342BC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80B342C0  80 03 0A 44 */	lwz r0, 0xa44(r3)
/* 80B342C4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80B342C8  38 00 00 03 */	li r0, 3
/* 80B342CC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B342D0  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B342D4  4B 82 DD 45 */	bl __ptmf_test
/* 80B342D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B342DC  41 82 00 18 */	beq lbl_80B342F4
/* 80B342E0  7F E3 FB 78 */	mr r3, r31
/* 80B342E4  38 80 00 00 */	li r4, 0
/* 80B342E8  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B342EC  4B 82 DD 99 */	bl __ptmf_scall
/* 80B342F0  60 00 00 00 */	nop 
lbl_80B342F4:
/* 80B342F4  38 00 00 00 */	li r0, 0
/* 80B342F8  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B342FC  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80B34300  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80B34304  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B34308  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B3430C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80B34310  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B34314  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34318  4B 82 DD 01 */	bl __ptmf_test
/* 80B3431C  2C 03 00 00 */	cmpwi r3, 0
/* 80B34320  41 82 00 18 */	beq lbl_80B34338
/* 80B34324  7F E3 FB 78 */	mr r3, r31
/* 80B34328  38 80 00 00 */	li r4, 0
/* 80B3432C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34330  4B 82 DD 55 */	bl __ptmf_scall
/* 80B34334  60 00 00 00 */	nop 
lbl_80B34338:
/* 80B34338  38 60 00 01 */	li r3, 1
/* 80B3433C  48 00 03 00 */	b lbl_80B3463C
lbl_80B34340:
/* 80B34340  28 04 00 12 */	cmplwi r4, 0x12
/* 80B34344  40 82 02 F4 */	bne lbl_80B34638
/* 80B34348  80 83 0A 48 */	lwz r4, 0xa48(r3)
/* 80B3434C  80 03 0A 4C */	lwz r0, 0xa4c(r3)
/* 80B34350  90 81 00 38 */	stw r4, 0x38(r1)
/* 80B34354  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B34358  80 03 0A 50 */	lwz r0, 0xa50(r3)
/* 80B3435C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80B34360  38 00 00 03 */	li r0, 3
/* 80B34364  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34368  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3436C  4B 82 DC AD */	bl __ptmf_test
/* 80B34370  2C 03 00 00 */	cmpwi r3, 0
/* 80B34374  41 82 00 18 */	beq lbl_80B3438C
/* 80B34378  7F E3 FB 78 */	mr r3, r31
/* 80B3437C  38 80 00 00 */	li r4, 0
/* 80B34380  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34384  4B 82 DD 01 */	bl __ptmf_scall
/* 80B34388  60 00 00 00 */	nop 
lbl_80B3438C:
/* 80B3438C  38 00 00 00 */	li r0, 0
/* 80B34390  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34394  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80B34398  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B3439C  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B343A0  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B343A4  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80B343A8  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B343AC  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B343B0  4B 82 DC 69 */	bl __ptmf_test
/* 80B343B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B343B8  41 82 00 18 */	beq lbl_80B343D0
/* 80B343BC  7F E3 FB 78 */	mr r3, r31
/* 80B343C0  38 80 00 00 */	li r4, 0
/* 80B343C4  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B343C8  4B 82 DC BD */	bl __ptmf_scall
/* 80B343CC  60 00 00 00 */	nop 
lbl_80B343D0:
/* 80B343D0  38 60 00 01 */	li r3, 1
/* 80B343D4  48 00 02 68 */	b lbl_80B3463C
lbl_80B343D8:
/* 80B343D8  28 04 00 0F */	cmplwi r4, 0xf
/* 80B343DC  40 82 00 94 */	bne lbl_80B34470
/* 80B343E0  80 83 0A 54 */	lwz r4, 0xa54(r3)
/* 80B343E4  80 03 0A 58 */	lwz r0, 0xa58(r3)
/* 80B343E8  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80B343EC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B343F0  80 03 0A 5C */	lwz r0, 0xa5c(r3)
/* 80B343F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B343F8  38 00 00 03 */	li r0, 3
/* 80B343FC  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34400  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34404  4B 82 DC 15 */	bl __ptmf_test
/* 80B34408  2C 03 00 00 */	cmpwi r3, 0
/* 80B3440C  41 82 00 18 */	beq lbl_80B34424
/* 80B34410  7F E3 FB 78 */	mr r3, r31
/* 80B34414  38 80 00 00 */	li r4, 0
/* 80B34418  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B3441C  4B 82 DC 69 */	bl __ptmf_scall
/* 80B34420  60 00 00 00 */	nop 
lbl_80B34424:
/* 80B34424  38 00 00 00 */	li r0, 0
/* 80B34428  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B3442C  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80B34430  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80B34434  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B34438  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B3443C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B34440  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B34444  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34448  4B 82 DB D1 */	bl __ptmf_test
/* 80B3444C  2C 03 00 00 */	cmpwi r3, 0
/* 80B34450  41 82 00 18 */	beq lbl_80B34468
/* 80B34454  7F E3 FB 78 */	mr r3, r31
/* 80B34458  38 80 00 00 */	li r4, 0
/* 80B3445C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34460  4B 82 DC 25 */	bl __ptmf_scall
/* 80B34464  60 00 00 00 */	nop 
lbl_80B34468:
/* 80B34468  38 60 00 01 */	li r3, 1
/* 80B3446C  48 00 01 D0 */	b lbl_80B3463C
lbl_80B34470:
/* 80B34470  28 04 00 11 */	cmplwi r4, 0x11
/* 80B34474  40 82 00 94 */	bne lbl_80B34508
/* 80B34478  80 83 0A 60 */	lwz r4, 0xa60(r3)
/* 80B3447C  80 03 0A 64 */	lwz r0, 0xa64(r3)
/* 80B34480  90 81 00 20 */	stw r4, 0x20(r1)
/* 80B34484  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B34488  80 03 0A 68 */	lwz r0, 0xa68(r3)
/* 80B3448C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B34490  38 00 00 03 */	li r0, 3
/* 80B34494  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34498  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B3449C  4B 82 DB 7D */	bl __ptmf_test
/* 80B344A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B344A4  41 82 00 18 */	beq lbl_80B344BC
/* 80B344A8  7F E3 FB 78 */	mr r3, r31
/* 80B344AC  38 80 00 00 */	li r4, 0
/* 80B344B0  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B344B4  4B 82 DB D1 */	bl __ptmf_scall
/* 80B344B8  60 00 00 00 */	nop 
lbl_80B344BC:
/* 80B344BC  38 00 00 00 */	li r0, 0
/* 80B344C0  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B344C4  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B344C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B344CC  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B344D0  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B344D4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B344D8  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B344DC  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B344E0  4B 82 DB 39 */	bl __ptmf_test
/* 80B344E4  2C 03 00 00 */	cmpwi r3, 0
/* 80B344E8  41 82 00 18 */	beq lbl_80B34500
/* 80B344EC  7F E3 FB 78 */	mr r3, r31
/* 80B344F0  38 80 00 00 */	li r4, 0
/* 80B344F4  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B344F8  4B 82 DB 8D */	bl __ptmf_scall
/* 80B344FC  60 00 00 00 */	nop 
lbl_80B34500:
/* 80B34500  38 60 00 01 */	li r3, 1
/* 80B34504  48 00 01 38 */	b lbl_80B3463C
lbl_80B34508:
/* 80B34508  28 04 00 13 */	cmplwi r4, 0x13
/* 80B3450C  40 82 00 94 */	bne lbl_80B345A0
/* 80B34510  80 83 0A 6C */	lwz r4, 0xa6c(r3)
/* 80B34514  80 03 0A 70 */	lwz r0, 0xa70(r3)
/* 80B34518  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B3451C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B34520  80 03 0A 74 */	lwz r0, 0xa74(r3)
/* 80B34524  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B34528  38 00 00 03 */	li r0, 3
/* 80B3452C  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B34530  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34534  4B 82 DA E5 */	bl __ptmf_test
/* 80B34538  2C 03 00 00 */	cmpwi r3, 0
/* 80B3453C  41 82 00 18 */	beq lbl_80B34554
/* 80B34540  7F E3 FB 78 */	mr r3, r31
/* 80B34544  38 80 00 00 */	li r4, 0
/* 80B34548  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B3454C  4B 82 DB 39 */	bl __ptmf_scall
/* 80B34550  60 00 00 00 */	nop 
lbl_80B34554:
/* 80B34554  38 00 00 00 */	li r0, 0
/* 80B34558  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B3455C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B34560  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B34564  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B34568  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B3456C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B34570  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B34574  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34578  4B 82 DA A1 */	bl __ptmf_test
/* 80B3457C  2C 03 00 00 */	cmpwi r3, 0
/* 80B34580  41 82 00 18 */	beq lbl_80B34598
/* 80B34584  7F E3 FB 78 */	mr r3, r31
/* 80B34588  38 80 00 00 */	li r4, 0
/* 80B3458C  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34590  4B 82 DA F5 */	bl __ptmf_scall
/* 80B34594  60 00 00 00 */	nop 
lbl_80B34598:
/* 80B34598  38 60 00 01 */	li r3, 1
/* 80B3459C  48 00 00 A0 */	b lbl_80B3463C
lbl_80B345A0:
/* 80B345A0  28 04 00 14 */	cmplwi r4, 0x14
/* 80B345A4  40 82 00 94 */	bne lbl_80B34638
/* 80B345A8  80 83 0A 78 */	lwz r4, 0xa78(r3)
/* 80B345AC  80 03 0A 7C */	lwz r0, 0xa7c(r3)
/* 80B345B0  90 81 00 08 */	stw r4, 8(r1)
/* 80B345B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B345B8  80 03 0A 80 */	lwz r0, 0xa80(r3)
/* 80B345BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B345C0  38 00 00 03 */	li r0, 3
/* 80B345C4  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B345C8  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B345CC  4B 82 DA 4D */	bl __ptmf_test
/* 80B345D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B345D4  41 82 00 18 */	beq lbl_80B345EC
/* 80B345D8  7F E3 FB 78 */	mr r3, r31
/* 80B345DC  38 80 00 00 */	li r4, 0
/* 80B345E0  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B345E4  4B 82 DA A1 */	bl __ptmf_scall
/* 80B345E8  60 00 00 00 */	nop 
lbl_80B345EC:
/* 80B345EC  38 00 00 00 */	li r0, 0
/* 80B345F0  B0 1F 0E 96 */	sth r0, 0xe96(r31)
/* 80B345F4  80 61 00 08 */	lwz r3, 8(r1)
/* 80B345F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B345FC  90 7F 0D CC */	stw r3, 0xdcc(r31)
/* 80B34600  90 1F 0D D0 */	stw r0, 0xdd0(r31)
/* 80B34604  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B34608  90 1F 0D D4 */	stw r0, 0xdd4(r31)
/* 80B3460C  38 7F 0D CC */	addi r3, r31, 0xdcc
/* 80B34610  4B 82 DA 09 */	bl __ptmf_test
/* 80B34614  2C 03 00 00 */	cmpwi r3, 0
/* 80B34618  41 82 00 18 */	beq lbl_80B34630
/* 80B3461C  7F E3 FB 78 */	mr r3, r31
/* 80B34620  38 80 00 00 */	li r4, 0
/* 80B34624  39 9F 0D CC */	addi r12, r31, 0xdcc
/* 80B34628  4B 82 DA 5D */	bl __ptmf_scall
/* 80B3462C  60 00 00 00 */	nop 
lbl_80B34630:
/* 80B34630  38 60 00 01 */	li r3, 1
/* 80B34634  48 00 00 08 */	b lbl_80B3463C
lbl_80B34638:
/* 80B34638  38 60 00 00 */	li r3, 0
lbl_80B3463C:
/* 80B3463C  83 E1 00 DC */	lwz r31, 0xdc(r1)
/* 80B34640  83 C1 00 D8 */	lwz r30, 0xd8(r1)
/* 80B34644  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80B34648  7C 08 03 A6 */	mtlr r0
/* 80B3464C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80B34650  4E 80 00 20 */	blr 
