lbl_80A64DB8:
/* 80A64DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64DBC  7C 08 02 A6 */	mflr r0
/* 80A64DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A64DC8  88 03 0F 80 */	lbz r0, 0xf80(r3)
/* 80A64DCC  28 00 00 08 */	cmplwi r0, 8
/* 80A64DD0  41 81 01 D4 */	bgt lbl_80A64FA4
/* 80A64DD4  3C 60 80 A7 */	lis r3, lit_4505@ha
/* 80A64DD8  38 63 97 FC */	addi r3, r3, lit_4505@l
/* 80A64DDC  54 00 10 3A */	slwi r0, r0, 2
/* 80A64DE0  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A64DE4  7C 09 03 A6 */	mtctr r0
/* 80A64DE8  4E 80 04 20 */	bctr 
lbl_80A64DEC:
/* 80A64DEC  3B E0 00 00 */	li r31, 0
/* 80A64DF0  38 60 00 3D */	li r3, 0x3d
/* 80A64DF4  4B 6E 7C B8 */	b daNpcT_chkEvtBit__FUl
/* 80A64DF8  2C 03 00 00 */	cmpwi r3, 0
/* 80A64DFC  41 82 00 14 */	beq lbl_80A64E10
/* 80A64E00  38 60 00 A4 */	li r3, 0xa4
/* 80A64E04  4B 6E 7C A8 */	b daNpcT_chkEvtBit__FUl
/* 80A64E08  2C 03 00 00 */	cmpwi r3, 0
/* 80A64E0C  41 82 00 08 */	beq lbl_80A64E14
lbl_80A64E10:
/* 80A64E10  3B E0 00 01 */	li r31, 1
lbl_80A64E14:
/* 80A64E14  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A64E18  48 00 01 90 */	b lbl_80A64FA8
lbl_80A64E1C:
/* 80A64E1C  38 60 00 00 */	li r3, 0
/* 80A64E20  48 00 01 88 */	b lbl_80A64FA8
lbl_80A64E24:
/* 80A64E24  3B E0 00 00 */	li r31, 0
/* 80A64E28  38 60 00 A4 */	li r3, 0xa4
/* 80A64E2C  4B 6E 7C 80 */	b daNpcT_chkEvtBit__FUl
/* 80A64E30  2C 03 00 00 */	cmpwi r3, 0
/* 80A64E34  41 82 00 14 */	beq lbl_80A64E48
/* 80A64E38  38 60 00 35 */	li r3, 0x35
/* 80A64E3C  4B 6E 7C 70 */	b daNpcT_chkEvtBit__FUl
/* 80A64E40  2C 03 00 00 */	cmpwi r3, 0
/* 80A64E44  41 82 00 08 */	beq lbl_80A64E4C
lbl_80A64E48:
/* 80A64E48  3B E0 00 01 */	li r31, 1
lbl_80A64E4C:
/* 80A64E4C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A64E50  48 00 01 58 */	b lbl_80A64FA8
lbl_80A64E54:
/* 80A64E54  3B E0 00 00 */	li r31, 0
/* 80A64E58  38 60 00 35 */	li r3, 0x35
/* 80A64E5C  4B 6E 7C 50 */	b daNpcT_chkEvtBit__FUl
/* 80A64E60  2C 03 00 00 */	cmpwi r3, 0
/* 80A64E64  41 82 00 14 */	beq lbl_80A64E78
/* 80A64E68  38 60 00 55 */	li r3, 0x55
/* 80A64E6C  4B 6E 7C 40 */	b daNpcT_chkEvtBit__FUl
/* 80A64E70  2C 03 00 00 */	cmpwi r3, 0
/* 80A64E74  41 82 00 08 */	beq lbl_80A64E7C
lbl_80A64E78:
/* 80A64E78  3B E0 00 01 */	li r31, 1
lbl_80A64E7C:
/* 80A64E7C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A64E80  48 00 01 28 */	b lbl_80A64FA8
lbl_80A64E84:
/* 80A64E84  3B E0 00 00 */	li r31, 0
/* 80A64E88  38 60 00 55 */	li r3, 0x55
/* 80A64E8C  4B 6E 7C 20 */	b daNpcT_chkEvtBit__FUl
/* 80A64E90  2C 03 00 00 */	cmpwi r3, 0
/* 80A64E94  41 82 00 14 */	beq lbl_80A64EA8
/* 80A64E98  38 60 00 40 */	li r3, 0x40
/* 80A64E9C  4B 6E 7C 10 */	b daNpcT_chkEvtBit__FUl
/* 80A64EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80A64EA4  41 82 00 08 */	beq lbl_80A64EAC
lbl_80A64EA8:
/* 80A64EA8  3B E0 00 01 */	li r31, 1
lbl_80A64EAC:
/* 80A64EAC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A64EB0  48 00 00 F8 */	b lbl_80A64FA8
lbl_80A64EB4:
/* 80A64EB4  38 60 01 20 */	li r3, 0x120
/* 80A64EB8  4B 6E 7B F4 */	b daNpcT_chkEvtBit__FUl
/* 80A64EBC  2C 03 00 00 */	cmpwi r3, 0
/* 80A64EC0  40 82 00 34 */	bne lbl_80A64EF4
/* 80A64EC4  3B E0 00 00 */	li r31, 0
/* 80A64EC8  38 60 00 40 */	li r3, 0x40
/* 80A64ECC  4B 6E 7B E0 */	b daNpcT_chkEvtBit__FUl
/* 80A64ED0  2C 03 00 00 */	cmpwi r3, 0
/* 80A64ED4  41 82 00 14 */	beq lbl_80A64EE8
/* 80A64ED8  38 60 00 44 */	li r3, 0x44
/* 80A64EDC  4B 6E 7B D0 */	b daNpcT_chkEvtBit__FUl
/* 80A64EE0  2C 03 00 00 */	cmpwi r3, 0
/* 80A64EE4  41 82 00 08 */	beq lbl_80A64EEC
lbl_80A64EE8:
/* 80A64EE8  3B E0 00 01 */	li r31, 1
lbl_80A64EEC:
/* 80A64EEC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A64EF0  48 00 00 B8 */	b lbl_80A64FA8
lbl_80A64EF4:
/* 80A64EF4  38 60 00 00 */	li r3, 0
/* 80A64EF8  48 00 00 B0 */	b lbl_80A64FA8
lbl_80A64EFC:
/* 80A64EFC  38 60 01 20 */	li r3, 0x120
/* 80A64F00  4B 6E 7B AC */	b daNpcT_chkEvtBit__FUl
/* 80A64F04  2C 03 00 00 */	cmpwi r3, 0
/* 80A64F08  40 82 00 34 */	bne lbl_80A64F3C
/* 80A64F0C  3B E0 00 00 */	li r31, 0
/* 80A64F10  38 60 00 40 */	li r3, 0x40
/* 80A64F14  4B 6E 7B 98 */	b daNpcT_chkEvtBit__FUl
/* 80A64F18  2C 03 00 00 */	cmpwi r3, 0
/* 80A64F1C  41 82 00 14 */	beq lbl_80A64F30
/* 80A64F20  38 60 00 44 */	li r3, 0x44
/* 80A64F24  4B 6E 7B 88 */	b daNpcT_chkEvtBit__FUl
/* 80A64F28  2C 03 00 00 */	cmpwi r3, 0
/* 80A64F2C  41 82 00 08 */	beq lbl_80A64F34
lbl_80A64F30:
/* 80A64F30  3B E0 00 01 */	li r31, 1
lbl_80A64F34:
/* 80A64F34  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A64F38  48 00 00 70 */	b lbl_80A64FA8
lbl_80A64F3C:
/* 80A64F3C  38 60 00 00 */	li r3, 0
/* 80A64F40  48 00 00 68 */	b lbl_80A64FA8
lbl_80A64F44:
/* 80A64F44  3B E0 00 00 */	li r31, 0
/* 80A64F48  38 60 00 44 */	li r3, 0x44
/* 80A64F4C  4B 6E 7B 60 */	b daNpcT_chkEvtBit__FUl
/* 80A64F50  2C 03 00 00 */	cmpwi r3, 0
/* 80A64F54  41 82 00 14 */	beq lbl_80A64F68
/* 80A64F58  38 60 01 08 */	li r3, 0x108
/* 80A64F5C  4B 6E 7B 50 */	b daNpcT_chkEvtBit__FUl
/* 80A64F60  2C 03 00 00 */	cmpwi r3, 0
/* 80A64F64  41 82 00 08 */	beq lbl_80A64F6C
lbl_80A64F68:
/* 80A64F68  3B E0 00 01 */	li r31, 1
lbl_80A64F6C:
/* 80A64F6C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A64F70  48 00 00 38 */	b lbl_80A64FA8
lbl_80A64F74:
/* 80A64F74  3B E0 00 00 */	li r31, 0
/* 80A64F78  38 60 01 08 */	li r3, 0x108
/* 80A64F7C  4B 6E 7B 30 */	b daNpcT_chkEvtBit__FUl
/* 80A64F80  2C 03 00 00 */	cmpwi r3, 0
/* 80A64F84  41 82 00 14 */	beq lbl_80A64F98
/* 80A64F88  38 60 01 20 */	li r3, 0x120
/* 80A64F8C  4B 6E 7B 20 */	b daNpcT_chkEvtBit__FUl
/* 80A64F90  2C 03 00 00 */	cmpwi r3, 0
/* 80A64F94  41 82 00 08 */	beq lbl_80A64F9C
lbl_80A64F98:
/* 80A64F98  3B E0 00 01 */	li r31, 1
lbl_80A64F9C:
/* 80A64F9C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80A64FA0  48 00 00 08 */	b lbl_80A64FA8
lbl_80A64FA4:
/* 80A64FA4  38 60 00 00 */	li r3, 0
lbl_80A64FA8:
/* 80A64FA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A64FAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64FB0  7C 08 03 A6 */	mtlr r0
/* 80A64FB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64FB8  4E 80 00 20 */	blr 
