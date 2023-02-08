lbl_802C6C84:
/* 802C6C84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802C6C88  7C 08 02 A6 */	mflr r0
/* 802C6C8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802C6C90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C6C94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C6C98  7C 7E 1B 78 */	mr r30, r3
/* 802C6C9C  7C 9F 23 78 */	mr r31, r4
/* 802C6CA0  C0 22 C3 74 */	lfs f1, lit_3705(r2)
/* 802C6CA4  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 802C6CA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 802C6CAC  40 82 04 04 */	bne lbl_802C70B0
/* 802C6CB0  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802C6CB4  28 00 00 64 */	cmplwi r0, 0x64
/* 802C6CB8  41 80 00 0C */	blt lbl_802C6CC4
/* 802C6CBC  C0 62 C3 44 */	lfs f3, lit_3502(r2)
/* 802C6CC0  48 00 00 24 */	b lbl_802C6CE4
lbl_802C6CC4:
/* 802C6CC4  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C6CC8  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C6CCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C6CD0  3C 00 43 30 */	lis r0, 0x4330
/* 802C6CD4  90 01 00 08 */	stw r0, 8(r1)
/* 802C6CD8  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C6CDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C6CE0  EC 62 00 32 */	fmuls f3, f2, f0
lbl_802C6CE4:
/* 802C6CE4  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 802C6CE8  28 00 00 FF */	cmplwi r0, 0xff
/* 802C6CEC  40 82 00 0C */	bne lbl_802C6CF8
/* 802C6CF0  C0 82 C3 44 */	lfs f4, lit_3502(r2)
/* 802C6CF4  48 00 00 24 */	b lbl_802C6D18
lbl_802C6CF8:
/* 802C6CF8  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C6CFC  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C6D00  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C6D04  3C 00 43 30 */	lis r0, 0x4330
/* 802C6D08  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C6D0C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C6D10  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C6D14  EC 82 00 32 */	fmuls f4, f2, f0
lbl_802C6D18:
/* 802C6D18  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802C6D1C  28 00 00 FF */	cmplwi r0, 0xff
/* 802C6D20  40 82 00 0C */	bne lbl_802C6D2C
/* 802C6D24  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C6D28  48 00 00 3C */	b lbl_802C6D64
lbl_802C6D2C:
/* 802C6D2C  C0 08 00 00 */	lfs f0, 0(r8)
/* 802C6D30  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 802C6D34  C0 08 00 04 */	lfs f0, 4(r8)
/* 802C6D38  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 802C6D3C  C0 08 00 08 */	lfs f0, 8(r8)
/* 802C6D40  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 802C6D44  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C6D48  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C6D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C6D50  3C 00 43 30 */	lis r0, 0x4330
/* 802C6D54  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C6D58  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C6D5C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C6D60  EC 42 00 32 */	fmuls f2, f2, f0
lbl_802C6D64:
/* 802C6D64  88 7E 00 38 */	lbz r3, 0x38(r30)
/* 802C6D68  28 03 00 00 */	cmplwi r3, 0
/* 802C6D6C  41 82 00 A0 */	beq lbl_802C6E0C
/* 802C6D70  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C6D74  7C 03 00 40 */	cmplw r3, r0
/* 802C6D78  40 82 00 94 */	bne lbl_802C6E0C
/* 802C6D7C  38 00 00 64 */	li r0, 0x64
/* 802C6D80  98 1E 00 39 */	stb r0, 0x39(r30)
/* 802C6D84  C0 1E 00 48 */	lfs f0, 0x48(r30)
/* 802C6D88  FC 03 00 00 */	fcmpu cr0, f3, f0
/* 802C6D8C  41 82 00 18 */	beq lbl_802C6DA4
/* 802C6D90  EC 23 00 28 */	fsubs f1, f3, f0
/* 802C6D94  C0 02 C3 F0 */	lfs f0, lit_3963(r2)
/* 802C6D98  EC 01 00 24 */	fdivs f0, f1, f0
/* 802C6D9C  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 802C6DA0  48 00 00 10 */	b lbl_802C6DB0
lbl_802C6DA4:
/* 802C6DA4  D0 7E 00 48 */	stfs f3, 0x48(r30)
/* 802C6DA8  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C6DAC  D0 1E 00 54 */	stfs f0, 0x54(r30)
lbl_802C6DB0:
/* 802C6DB0  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 802C6DB4  FC 04 00 00 */	fcmpu cr0, f4, f0
/* 802C6DB8  41 82 00 18 */	beq lbl_802C6DD0
/* 802C6DBC  EC 24 00 28 */	fsubs f1, f4, f0
/* 802C6DC0  C0 02 C3 F0 */	lfs f0, lit_3963(r2)
/* 802C6DC4  EC 01 00 24 */	fdivs f0, f1, f0
/* 802C6DC8  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 802C6DCC  48 00 00 10 */	b lbl_802C6DDC
lbl_802C6DD0:
/* 802C6DD0  D0 9E 00 4C */	stfs f4, 0x4c(r30)
/* 802C6DD4  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C6DD8  D0 1E 00 58 */	stfs f0, 0x58(r30)
lbl_802C6DDC:
/* 802C6DDC  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 802C6DE0  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 802C6DE4  41 82 00 18 */	beq lbl_802C6DFC
/* 802C6DE8  EC 22 00 28 */	fsubs f1, f2, f0
/* 802C6DEC  C0 02 C3 F0 */	lfs f0, lit_3963(r2)
/* 802C6DF0  EC 01 00 24 */	fdivs f0, f1, f0
/* 802C6DF4  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 802C6DF8  48 00 00 30 */	b lbl_802C6E28
lbl_802C6DFC:
/* 802C6DFC  D0 5E 00 50 */	stfs f2, 0x50(r30)
/* 802C6E00  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C6E04  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 802C6E08  48 00 00 20 */	b lbl_802C6E28
lbl_802C6E0C:
/* 802C6E0C  D0 7E 00 48 */	stfs f3, 0x48(r30)
/* 802C6E10  D0 9E 00 4C */	stfs f4, 0x4c(r30)
/* 802C6E14  D0 5E 00 50 */	stfs f2, 0x50(r30)
/* 802C6E18  C0 02 C3 48 */	lfs f0, lit_3503(r2)
/* 802C6E1C  D0 1E 00 54 */	stfs f0, 0x54(r30)
/* 802C6E20  D0 1E 00 58 */	stfs f0, 0x58(r30)
/* 802C6E24  D0 1E 00 5C */	stfs f0, 0x5c(r30)
lbl_802C6E28:
/* 802C6E28  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C6E2C  28 00 00 0B */	cmplwi r0, 0xb
/* 802C6E30  41 81 02 7C */	bgt lbl_802C70AC
/* 802C6E34  3C 60 80 3D */	lis r3, lit_4025@ha /* 0x803CB9C8@ha */
/* 802C6E38  38 63 B9 C8 */	addi r3, r3, lit_4025@l /* 0x803CB9C8@l */
/* 802C6E3C  54 00 10 3A */	slwi r0, r0, 2
/* 802C6E40  7C 03 00 2E */	lwzx r0, r3, r0
/* 802C6E44  7C 09 03 A6 */	mtctr r0
/* 802C6E48  4E 80 04 20 */	bctr 
/* 802C6E4C  7F C3 F3 78 */	mr r3, r30
/* 802C6E50  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C6E54  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C6E58  38 80 00 01 */	li r4, 1
/* 802C6E5C  38 A0 00 00 */	li r5, 0
/* 802C6E60  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6E64  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6E68  4B FF F1 15 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6E6C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802C6E70  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C6E74  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C6E78  38 80 00 00 */	li r4, 0
/* 802C6E7C  38 A0 00 01 */	li r5, 1
/* 802C6E80  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6E84  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6E88  4B FF F0 F5 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6E8C  48 00 02 20 */	b lbl_802C70AC
/* 802C6E90  7F C3 F3 78 */	mr r3, r30
/* 802C6E94  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C6E98  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C6E9C  38 80 00 01 */	li r4, 1
/* 802C6EA0  38 A0 00 00 */	li r5, 0
/* 802C6EA4  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6EA8  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6EAC  4B FF F0 D1 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6EB0  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802C6EB4  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C6EB8  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C6EBC  38 80 00 00 */	li r4, 0
/* 802C6EC0  38 A0 00 01 */	li r5, 1
/* 802C6EC4  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6EC8  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6ECC  4B FF F0 B1 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6ED0  48 00 01 DC */	b lbl_802C70AC
/* 802C6ED4  7F C3 F3 78 */	mr r3, r30
/* 802C6ED8  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C6EDC  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C6EE0  38 80 00 01 */	li r4, 1
/* 802C6EE4  38 A0 00 00 */	li r5, 0
/* 802C6EE8  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6EEC  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6EF0  4B FF F0 8D */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6EF4  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802C6EF8  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C6EFC  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C6F00  38 80 00 00 */	li r4, 0
/* 802C6F04  38 A0 00 01 */	li r5, 1
/* 802C6F08  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6F0C  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6F10  4B FF F0 6D */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6F14  48 00 01 98 */	b lbl_802C70AC
/* 802C6F18  7F C3 F3 78 */	mr r3, r30
/* 802C6F1C  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C6F20  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C6F24  38 80 00 01 */	li r4, 1
/* 802C6F28  38 A0 00 00 */	li r5, 0
/* 802C6F2C  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6F30  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6F34  4B FF F0 49 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6F38  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802C6F3C  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C6F40  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C6F44  38 80 00 00 */	li r4, 0
/* 802C6F48  38 A0 00 01 */	li r5, 1
/* 802C6F4C  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6F50  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6F54  4B FF F0 29 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6F58  48 00 01 54 */	b lbl_802C70AC
/* 802C6F5C  7F C3 F3 78 */	mr r3, r30
/* 802C6F60  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C6F64  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C6F68  38 80 00 01 */	li r4, 1
/* 802C6F6C  38 A0 00 00 */	li r5, 0
/* 802C6F70  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6F74  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6F78  4B FF F0 05 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6F7C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802C6F80  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C6F84  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C6F88  38 80 00 00 */	li r4, 0
/* 802C6F8C  38 A0 00 01 */	li r5, 1
/* 802C6F90  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6F94  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6F98  4B FF EF E5 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6F9C  48 00 01 10 */	b lbl_802C70AC
/* 802C6FA0  7F C3 F3 78 */	mr r3, r30
/* 802C6FA4  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C6FA8  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C6FAC  38 80 00 01 */	li r4, 1
/* 802C6FB0  38 A0 00 00 */	li r5, 0
/* 802C6FB4  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6FB8  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6FBC  4B FF EF C1 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6FC0  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802C6FC4  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C6FC8  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C6FCC  38 80 00 00 */	li r4, 0
/* 802C6FD0  38 A0 00 01 */	li r5, 1
/* 802C6FD4  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6FD8  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C6FDC  4B FF EF A1 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C6FE0  48 00 00 CC */	b lbl_802C70AC
/* 802C6FE4  7F C3 F3 78 */	mr r3, r30
/* 802C6FE8  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C6FEC  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C6FF0  38 80 00 01 */	li r4, 1
/* 802C6FF4  38 A0 00 00 */	li r5, 0
/* 802C6FF8  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C6FFC  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C7000  4B FF EF 7D */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C7004  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802C7008  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C700C  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C7010  38 80 00 00 */	li r4, 0
/* 802C7014  38 A0 00 01 */	li r5, 1
/* 802C7018  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C701C  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C7020  4B FF EF 5D */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C7024  48 00 00 88 */	b lbl_802C70AC
/* 802C7028  7F C3 F3 78 */	mr r3, r30
/* 802C702C  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C7030  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7034  38 80 00 01 */	li r4, 1
/* 802C7038  38 A0 00 00 */	li r5, 0
/* 802C703C  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C7040  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C7044  4B FF EF 39 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C7048  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802C704C  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C7050  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C7054  38 80 00 00 */	li r4, 0
/* 802C7058  38 A0 00 01 */	li r5, 1
/* 802C705C  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C7060  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C7064  4B FF EF 19 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C7068  48 00 00 44 */	b lbl_802C70AC
/* 802C706C  7F C3 F3 78 */	mr r3, r30
/* 802C7070  C0 22 C3 44 */	lfs f1, lit_3502(r2)
/* 802C7074  C0 42 C3 48 */	lfs f2, lit_3503(r2)
/* 802C7078  38 80 00 01 */	li r4, 1
/* 802C707C  38 A0 00 00 */	li r5, 0
/* 802C7080  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C7084  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C7088  4B FF EE F5 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
/* 802C708C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 802C7090  C0 22 C3 48 */	lfs f1, lit_3503(r2)
/* 802C7094  C0 42 C3 44 */	lfs f2, lit_3502(r2)
/* 802C7098  38 80 00 00 */	li r4, 0
/* 802C709C  38 A0 00 01 */	li r5, 1
/* 802C70A0  C0 62 C3 68 */	lfs f3, lit_3654(r2)
/* 802C70A4  C0 82 C3 6C */	lfs f4, lit_3655(r2)
/* 802C70A8  4B FF EE D5 */	bl setPanParam__14Z2EnvSeAutoPanFffbbff
lbl_802C70AC:
/* 802C70AC  9B FE 00 38 */	stb r31, 0x38(r30)
lbl_802C70B0:
/* 802C70B0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C70B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C70B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802C70BC  7C 08 03 A6 */	mtlr r0
/* 802C70C0  38 21 00 20 */	addi r1, r1, 0x20
/* 802C70C4  4E 80 00 20 */	blr 
