lbl_80206D70:
/* 80206D70  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80206D74  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80206D78  88 05 5E 4A */	lbz r0, 0x5e4a(r5)
/* 80206D7C  54 05 07 FF */	clrlwi. r5, r0, 0x1f
/* 80206D80  41 82 00 14 */	beq lbl_80206D94
/* 80206D84  7C C3 22 14 */	add r6, r3, r4
/* 80206D88  88 06 04 BE */	lbz r0, 0x4be(r6)
/* 80206D8C  28 00 00 00 */	cmplwi r0, 0
/* 80206D90  41 82 02 C0 */	beq lbl_80207050
lbl_80206D94:
/* 80206D94  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 80206D98  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 80206D9C  88 06 5E 43 */	lbz r0, 0x5e43(r6)
/* 80206DA0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80206DA4  41 82 00 14 */	beq lbl_80206DB8
/* 80206DA8  7C C3 22 14 */	add r6, r3, r4
/* 80206DAC  88 C6 04 BE */	lbz r6, 0x4be(r6)
/* 80206DB0  28 06 00 01 */	cmplwi r6, 1
/* 80206DB4  41 82 02 9C */	beq lbl_80207050
lbl_80206DB8:
/* 80206DB8  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 80206DBC  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 80206DC0  88 C6 5E 42 */	lbz r6, 0x5e42(r6)
/* 80206DC4  54 C6 07 FF */	clrlwi. r6, r6, 0x1f
/* 80206DC8  41 82 00 14 */	beq lbl_80206DDC
/* 80206DCC  7C C3 22 14 */	add r6, r3, r4
/* 80206DD0  88 C6 04 BE */	lbz r6, 0x4be(r6)
/* 80206DD4  28 06 00 02 */	cmplwi r6, 2
/* 80206DD8  41 82 02 78 */	beq lbl_80207050
lbl_80206DDC:
/* 80206DDC  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 80206DE0  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 80206DE4  88 C6 5E 4E */	lbz r6, 0x5e4e(r6)
/* 80206DE8  54 C6 07 FF */	clrlwi. r6, r6, 0x1f
/* 80206DEC  41 82 00 14 */	beq lbl_80206E00
/* 80206DF0  7C C3 22 14 */	add r6, r3, r4
/* 80206DF4  88 C6 04 BE */	lbz r6, 0x4be(r6)
/* 80206DF8  28 06 00 03 */	cmplwi r6, 3
/* 80206DFC  41 82 02 54 */	beq lbl_80207050
lbl_80206E00:
/* 80206E00  3C C0 80 40 */	lis r6, g_dComIfG_gameInfo@ha
/* 80206E04  38 C6 61 C0 */	addi r6, r6, g_dComIfG_gameInfo@l
/* 80206E08  88 C6 5E 4B */	lbz r6, 0x5e4b(r6)
/* 80206E0C  54 C6 07 FF */	clrlwi. r6, r6, 0x1f
/* 80206E10  41 82 00 14 */	beq lbl_80206E24
/* 80206E14  7C E3 22 14 */	add r7, r3, r4
/* 80206E18  88 E7 04 BE */	lbz r7, 0x4be(r7)
/* 80206E1C  28 07 00 04 */	cmplwi r7, 4
/* 80206E20  41 82 02 30 */	beq lbl_80207050
lbl_80206E24:
/* 80206E24  3C E0 80 40 */	lis r7, g_dComIfG_gameInfo@ha
/* 80206E28  38 E7 61 C0 */	addi r7, r7, g_dComIfG_gameInfo@l
/* 80206E2C  88 E7 5E 4C */	lbz r7, 0x5e4c(r7)
/* 80206E30  54 E7 07 FF */	clrlwi. r7, r7, 0x1f
/* 80206E34  41 82 00 14 */	beq lbl_80206E48
/* 80206E38  7C E3 22 14 */	add r7, r3, r4
/* 80206E3C  88 E7 04 BE */	lbz r7, 0x4be(r7)
/* 80206E40  28 07 00 05 */	cmplwi r7, 5
/* 80206E44  41 82 02 0C */	beq lbl_80207050
lbl_80206E48:
/* 80206E48  3C E0 80 40 */	lis r7, g_dComIfG_gameInfo@ha
/* 80206E4C  38 E7 61 C0 */	addi r7, r7, g_dComIfG_gameInfo@l
/* 80206E50  88 E7 5E 4D */	lbz r7, 0x5e4d(r7)
/* 80206E54  54 E7 07 FF */	clrlwi. r7, r7, 0x1f
/* 80206E58  41 82 00 14 */	beq lbl_80206E6C
/* 80206E5C  7C E3 22 14 */	add r7, r3, r4
/* 80206E60  88 E7 04 BE */	lbz r7, 0x4be(r7)
/* 80206E64  28 07 00 06 */	cmplwi r7, 6
/* 80206E68  41 82 01 E8 */	beq lbl_80207050
lbl_80206E6C:
/* 80206E6C  3C E0 80 40 */	lis r7, g_dComIfG_gameInfo@ha
/* 80206E70  38 E7 61 C0 */	addi r7, r7, g_dComIfG_gameInfo@l
/* 80206E74  88 E7 5E 5E */	lbz r7, 0x5e5e(r7)
/* 80206E78  54 E7 07 FF */	clrlwi. r7, r7, 0x1f
/* 80206E7C  41 82 00 14 */	beq lbl_80206E90
/* 80206E80  7C E3 22 14 */	add r7, r3, r4
/* 80206E84  88 E7 04 BE */	lbz r7, 0x4be(r7)
/* 80206E88  28 07 00 07 */	cmplwi r7, 7
/* 80206E8C  41 82 01 C4 */	beq lbl_80207050
lbl_80206E90:
/* 80206E90  3C E0 80 40 */	lis r7, g_dComIfG_gameInfo@ha
/* 80206E94  38 E7 61 C0 */	addi r7, r7, g_dComIfG_gameInfo@l
/* 80206E98  88 E7 5E 62 */	lbz r7, 0x5e62(r7)
/* 80206E9C  54 E7 07 FF */	clrlwi. r7, r7, 0x1f
/* 80206EA0  41 82 00 14 */	beq lbl_80206EB4
/* 80206EA4  7C E3 22 14 */	add r7, r3, r4
/* 80206EA8  88 E7 04 BE */	lbz r7, 0x4be(r7)
/* 80206EAC  28 07 00 08 */	cmplwi r7, 8
/* 80206EB0  41 82 01 A0 */	beq lbl_80207050
lbl_80206EB4:
/* 80206EB4  3C E0 80 40 */	lis r7, g_dComIfG_gameInfo@ha
/* 80206EB8  38 E7 61 C0 */	addi r7, r7, g_dComIfG_gameInfo@l
/* 80206EBC  88 E7 5E 45 */	lbz r7, 0x5e45(r7)
/* 80206EC0  54 E9 07 FF */	clrlwi. r9, r7, 0x1f
/* 80206EC4  41 82 00 14 */	beq lbl_80206ED8
/* 80206EC8  7C E3 22 14 */	add r7, r3, r4
/* 80206ECC  88 E7 04 BE */	lbz r7, 0x4be(r7)
/* 80206ED0  28 07 00 09 */	cmplwi r7, 9
/* 80206ED4  41 82 01 7C */	beq lbl_80207050
lbl_80206ED8:
/* 80206ED8  3C E0 80 40 */	lis r7, g_dComIfG_gameInfo@ha
/* 80206EDC  38 E7 61 C0 */	addi r7, r7, g_dComIfG_gameInfo@l
/* 80206EE0  88 E7 5E 47 */	lbz r7, 0x5e47(r7)
/* 80206EE4  54 E8 07 FF */	clrlwi. r8, r7, 0x1f
/* 80206EE8  41 82 00 14 */	beq lbl_80206EFC
/* 80206EEC  7C E3 22 14 */	add r7, r3, r4
/* 80206EF0  88 E7 04 BE */	lbz r7, 0x4be(r7)
/* 80206EF4  28 07 00 0A */	cmplwi r7, 0xa
/* 80206EF8  41 82 01 58 */	beq lbl_80207050
lbl_80206EFC:
/* 80206EFC  2C 08 00 00 */	cmpwi r8, 0
/* 80206F00  41 82 00 14 */	beq lbl_80206F14
/* 80206F04  7C E3 22 14 */	add r7, r3, r4
/* 80206F08  88 E7 04 BE */	lbz r7, 0x4be(r7)
/* 80206F0C  28 07 00 0B */	cmplwi r7, 0xb
/* 80206F10  41 82 01 40 */	beq lbl_80207050
lbl_80206F14:
/* 80206F14  2C 00 00 00 */	cmpwi r0, 0
/* 80206F18  40 82 00 0C */	bne lbl_80206F24
/* 80206F1C  2C 08 00 00 */	cmpwi r8, 0
/* 80206F20  41 82 00 14 */	beq lbl_80206F34
lbl_80206F24:
/* 80206F24  7C E3 22 14 */	add r7, r3, r4
/* 80206F28  88 E7 04 BE */	lbz r7, 0x4be(r7)
/* 80206F2C  28 07 00 0C */	cmplwi r7, 0xc
/* 80206F30  41 82 01 20 */	beq lbl_80207050
lbl_80206F34:
/* 80206F34  2C 05 00 00 */	cmpwi r5, 0
/* 80206F38  40 82 00 0C */	bne lbl_80206F44
/* 80206F3C  2C 06 00 00 */	cmpwi r6, 0
/* 80206F40  41 82 00 14 */	beq lbl_80206F54
lbl_80206F44:
/* 80206F44  7C C3 22 14 */	add r6, r3, r4
/* 80206F48  88 C6 04 BE */	lbz r6, 0x4be(r6)
/* 80206F4C  28 06 00 0D */	cmplwi r6, 0xd
/* 80206F50  41 82 01 00 */	beq lbl_80207050
lbl_80206F54:
/* 80206F54  2C 08 00 00 */	cmpwi r8, 0
/* 80206F58  40 82 00 0C */	bne lbl_80206F64
/* 80206F5C  2C 09 00 00 */	cmpwi r9, 0
/* 80206F60  41 82 00 14 */	beq lbl_80206F74
lbl_80206F64:
/* 80206F64  7C C3 22 14 */	add r6, r3, r4
/* 80206F68  88 C6 04 BE */	lbz r6, 0x4be(r6)
/* 80206F6C  28 06 00 0E */	cmplwi r6, 0xe
/* 80206F70  41 82 00 E0 */	beq lbl_80207050
lbl_80206F74:
/* 80206F74  2C 08 00 00 */	cmpwi r8, 0
/* 80206F78  40 82 00 0C */	bne lbl_80206F84
/* 80206F7C  2C 09 00 00 */	cmpwi r9, 0
/* 80206F80  41 82 00 14 */	beq lbl_80206F94
lbl_80206F84:
/* 80206F84  7C C3 22 14 */	add r6, r3, r4
/* 80206F88  88 C6 04 BE */	lbz r6, 0x4be(r6)
/* 80206F8C  28 06 00 0F */	cmplwi r6, 0xf
/* 80206F90  41 82 00 C0 */	beq lbl_80207050
lbl_80206F94:
/* 80206F94  2C 09 00 00 */	cmpwi r9, 0
/* 80206F98  41 82 00 14 */	beq lbl_80206FAC
/* 80206F9C  7C C3 22 14 */	add r6, r3, r4
/* 80206FA0  88 C6 04 BE */	lbz r6, 0x4be(r6)
/* 80206FA4  28 06 00 10 */	cmplwi r6, 0x10
/* 80206FA8  41 82 00 A8 */	beq lbl_80207050
lbl_80206FAC:
/* 80206FAC  2C 05 00 00 */	cmpwi r5, 0
/* 80206FB0  40 82 00 0C */	bne lbl_80206FBC
/* 80206FB4  2C 00 00 00 */	cmpwi r0, 0
/* 80206FB8  41 82 00 14 */	beq lbl_80206FCC
lbl_80206FBC:
/* 80206FBC  7C A3 22 14 */	add r5, r3, r4
/* 80206FC0  88 05 04 BE */	lbz r0, 0x4be(r5)
/* 80206FC4  28 00 00 11 */	cmplwi r0, 0x11
/* 80206FC8  41 82 00 88 */	beq lbl_80207050
lbl_80206FCC:
/* 80206FCC  2C 09 00 00 */	cmpwi r9, 0
/* 80206FD0  41 82 00 14 */	beq lbl_80206FE4
/* 80206FD4  7C A3 22 14 */	add r5, r3, r4
/* 80206FD8  88 05 04 BE */	lbz r0, 0x4be(r5)
/* 80206FDC  28 00 00 12 */	cmplwi r0, 0x12
/* 80206FE0  41 82 00 70 */	beq lbl_80207050
lbl_80206FE4:
/* 80206FE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80206FE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80206FEC  88 05 5E 65 */	lbz r0, 0x5e65(r5)
/* 80206FF0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80206FF4  41 82 00 14 */	beq lbl_80207008
/* 80206FF8  7C A3 22 14 */	add r5, r3, r4
/* 80206FFC  88 05 04 BE */	lbz r0, 0x4be(r5)
/* 80207000  28 00 00 13 */	cmplwi r0, 0x13
/* 80207004  41 82 00 4C */	beq lbl_80207050
lbl_80207008:
/* 80207008  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 8020700C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80207010  88 05 5E 69 */	lbz r0, 0x5e69(r5)
/* 80207014  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80207018  41 82 00 14 */	beq lbl_8020702C
/* 8020701C  7C A3 22 14 */	add r5, r3, r4
/* 80207020  88 05 04 BE */	lbz r0, 0x4be(r5)
/* 80207024  28 00 00 14 */	cmplwi r0, 0x14
/* 80207028  41 82 00 28 */	beq lbl_80207050
lbl_8020702C:
/* 8020702C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80207030  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80207034  88 05 5E 46 */	lbz r0, 0x5e46(r5)
/* 80207038  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8020703C  41 82 00 1C */	beq lbl_80207058
/* 80207040  7C 63 22 14 */	add r3, r3, r4
/* 80207044  88 03 04 BE */	lbz r0, 0x4be(r3)
/* 80207048  28 00 00 15 */	cmplwi r0, 0x15
/* 8020704C  40 82 00 0C */	bne lbl_80207058
lbl_80207050:
/* 80207050  38 60 00 01 */	li r3, 1
/* 80207054  4E 80 00 20 */	blr 
lbl_80207058:
/* 80207058  38 60 00 00 */	li r3, 0
/* 8020705C  4E 80 00 20 */	blr 
