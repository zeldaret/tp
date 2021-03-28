lbl_80566D7C:
/* 80566D7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80566D80  7C 08 02 A6 */	mflr r0
/* 80566D84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80566D88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80566D8C  88 03 10 C4 */	lbz r0, 0x10c4(r3)
/* 80566D90  28 00 00 0F */	cmplwi r0, 0xf
/* 80566D94  41 81 01 F8 */	bgt lbl_80566F8C
/* 80566D98  3C 60 80 57 */	lis r3, lit_5030@ha
/* 80566D9C  38 63 2C 30 */	addi r3, r3, lit_5030@l
/* 80566DA0  54 00 10 3A */	slwi r0, r0, 2
/* 80566DA4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80566DA8  7C 09 03 A6 */	mtctr r0
/* 80566DAC  4E 80 04 20 */	bctr 
lbl_80566DB0:
/* 80566DB0  3B E0 00 00 */	li r31, 0
/* 80566DB4  38 60 00 12 */	li r3, 0x12
/* 80566DB8  4B BE 5C F4 */	b daNpcT_chkEvtBit__FUl
/* 80566DBC  2C 03 00 00 */	cmpwi r3, 0
/* 80566DC0  41 82 00 14 */	beq lbl_80566DD4
/* 80566DC4  38 60 00 1F */	li r3, 0x1f
/* 80566DC8  4B BE 5C E4 */	b daNpcT_chkEvtBit__FUl
/* 80566DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80566DD0  41 82 00 08 */	beq lbl_80566DD8
lbl_80566DD4:
/* 80566DD4  3B E0 00 01 */	li r31, 1
lbl_80566DD8:
/* 80566DD8  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80566DDC  48 00 01 B4 */	b lbl_80566F90
lbl_80566DE0:
/* 80566DE0  38 60 00 12 */	li r3, 0x12
/* 80566DE4  4B BE 5C C8 */	b daNpcT_chkEvtBit__FUl
/* 80566DE8  7C 60 00 34 */	cntlzw r0, r3
/* 80566DEC  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80566DF0  48 00 01 A0 */	b lbl_80566F90
lbl_80566DF4:
/* 80566DF4  38 60 00 01 */	li r3, 1
/* 80566DF8  48 00 01 98 */	b lbl_80566F90
lbl_80566DFC:
/* 80566DFC  38 60 00 00 */	li r3, 0
/* 80566E00  48 00 01 90 */	b lbl_80566F90
lbl_80566E04:
/* 80566E04  3B E0 00 00 */	li r31, 0
/* 80566E08  38 60 00 3D */	li r3, 0x3d
/* 80566E0C  4B BE 5C A0 */	b daNpcT_chkEvtBit__FUl
/* 80566E10  2C 03 00 00 */	cmpwi r3, 0
/* 80566E14  41 82 00 14 */	beq lbl_80566E28
/* 80566E18  38 60 00 A4 */	li r3, 0xa4
/* 80566E1C  4B BE 5C 90 */	b daNpcT_chkEvtBit__FUl
/* 80566E20  2C 03 00 00 */	cmpwi r3, 0
/* 80566E24  41 82 00 08 */	beq lbl_80566E2C
lbl_80566E28:
/* 80566E28  3B E0 00 01 */	li r31, 1
lbl_80566E2C:
/* 80566E2C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80566E30  48 00 01 60 */	b lbl_80566F90
lbl_80566E34:
/* 80566E34  3B E0 00 00 */	li r31, 0
/* 80566E38  38 60 00 A4 */	li r3, 0xa4
/* 80566E3C  4B BE 5C 70 */	b daNpcT_chkEvtBit__FUl
/* 80566E40  2C 03 00 00 */	cmpwi r3, 0
/* 80566E44  41 82 00 14 */	beq lbl_80566E58
/* 80566E48  38 60 00 35 */	li r3, 0x35
/* 80566E4C  4B BE 5C 60 */	b daNpcT_chkEvtBit__FUl
/* 80566E50  2C 03 00 00 */	cmpwi r3, 0
/* 80566E54  41 82 00 08 */	beq lbl_80566E5C
lbl_80566E58:
/* 80566E58  3B E0 00 01 */	li r31, 1
lbl_80566E5C:
/* 80566E5C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80566E60  48 00 01 30 */	b lbl_80566F90
lbl_80566E64:
/* 80566E64  3B E0 00 00 */	li r31, 0
/* 80566E68  38 60 00 35 */	li r3, 0x35
/* 80566E6C  4B BE 5C 40 */	b daNpcT_chkEvtBit__FUl
/* 80566E70  2C 03 00 00 */	cmpwi r3, 0
/* 80566E74  41 82 00 14 */	beq lbl_80566E88
/* 80566E78  38 60 00 55 */	li r3, 0x55
/* 80566E7C  4B BE 5C 30 */	b daNpcT_chkEvtBit__FUl
/* 80566E80  2C 03 00 00 */	cmpwi r3, 0
/* 80566E84  41 82 00 08 */	beq lbl_80566E8C
lbl_80566E88:
/* 80566E88  3B E0 00 01 */	li r31, 1
lbl_80566E8C:
/* 80566E8C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80566E90  48 00 01 00 */	b lbl_80566F90
lbl_80566E94:
/* 80566E94  3B E0 00 00 */	li r31, 0
/* 80566E98  38 60 00 55 */	li r3, 0x55
/* 80566E9C  4B BE 5C 10 */	b daNpcT_chkEvtBit__FUl
/* 80566EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80566EA4  41 82 00 14 */	beq lbl_80566EB8
/* 80566EA8  38 60 00 40 */	li r3, 0x40
/* 80566EAC  4B BE 5C 00 */	b daNpcT_chkEvtBit__FUl
/* 80566EB0  2C 03 00 00 */	cmpwi r3, 0
/* 80566EB4  41 82 00 08 */	beq lbl_80566EBC
lbl_80566EB8:
/* 80566EB8  3B E0 00 01 */	li r31, 1
lbl_80566EBC:
/* 80566EBC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80566EC0  48 00 00 D0 */	b lbl_80566F90
lbl_80566EC4:
/* 80566EC4  38 60 00 40 */	li r3, 0x40
/* 80566EC8  4B BE 5B E4 */	b daNpcT_chkEvtBit__FUl
/* 80566ECC  7C 60 00 34 */	cntlzw r0, r3
/* 80566ED0  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80566ED4  48 00 00 BC */	b lbl_80566F90
lbl_80566ED8:
/* 80566ED8  38 60 00 00 */	li r3, 0
/* 80566EDC  48 00 00 B4 */	b lbl_80566F90
lbl_80566EE0:
/* 80566EE0  38 60 00 13 */	li r3, 0x13
/* 80566EE4  4B BE 5B C8 */	b daNpcT_chkEvtBit__FUl
/* 80566EE8  48 00 00 A8 */	b lbl_80566F90
lbl_80566EEC:
/* 80566EEC  3B E0 00 00 */	li r31, 0
/* 80566EF0  38 60 00 13 */	li r3, 0x13
/* 80566EF4  4B BE 5B B8 */	b daNpcT_chkEvtBit__FUl
/* 80566EF8  2C 03 00 00 */	cmpwi r3, 0
/* 80566EFC  41 82 00 14 */	beq lbl_80566F10
/* 80566F00  38 60 00 12 */	li r3, 0x12
/* 80566F04  4B BE 5B A8 */	b daNpcT_chkEvtBit__FUl
/* 80566F08  2C 03 00 00 */	cmpwi r3, 0
/* 80566F0C  41 82 00 08 */	beq lbl_80566F14
lbl_80566F10:
/* 80566F10  3B E0 00 01 */	li r31, 1
lbl_80566F14:
/* 80566F14  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80566F18  48 00 00 78 */	b lbl_80566F90
lbl_80566F1C:
/* 80566F1C  3B E0 00 00 */	li r31, 0
/* 80566F20  38 60 00 12 */	li r3, 0x12
/* 80566F24  4B BE 5B 88 */	b daNpcT_chkEvtBit__FUl
/* 80566F28  2C 03 00 00 */	cmpwi r3, 0
/* 80566F2C  41 82 00 14 */	beq lbl_80566F40
/* 80566F30  38 60 02 5C */	li r3, 0x25c
/* 80566F34  4B BE 5B 78 */	b daNpcT_chkEvtBit__FUl
/* 80566F38  2C 03 00 00 */	cmpwi r3, 0
/* 80566F3C  41 82 00 08 */	beq lbl_80566F44
lbl_80566F40:
/* 80566F40  3B E0 00 01 */	li r31, 1
lbl_80566F44:
/* 80566F44  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80566F48  48 00 00 48 */	b lbl_80566F90
lbl_80566F4C:
/* 80566F4C  38 60 00 00 */	li r3, 0
/* 80566F50  48 00 00 40 */	b lbl_80566F90
lbl_80566F54:
/* 80566F54  3B E0 00 00 */	li r31, 0
/* 80566F58  38 60 02 71 */	li r3, 0x271
/* 80566F5C  4B BE 5B 50 */	b daNpcT_chkEvtBit__FUl
/* 80566F60  2C 03 00 00 */	cmpwi r3, 0
/* 80566F64  41 82 00 14 */	beq lbl_80566F78
/* 80566F68  38 60 00 B8 */	li r3, 0xb8
/* 80566F6C  4B BE 5B 40 */	b daNpcT_chkEvtBit__FUl
/* 80566F70  2C 03 00 00 */	cmpwi r3, 0
/* 80566F74  41 82 00 08 */	beq lbl_80566F7C
lbl_80566F78:
/* 80566F78  3B E0 00 01 */	li r31, 1
lbl_80566F7C:
/* 80566F7C  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80566F80  48 00 00 10 */	b lbl_80566F90
lbl_80566F84:
/* 80566F84  38 60 00 00 */	li r3, 0
/* 80566F88  48 00 00 08 */	b lbl_80566F90
lbl_80566F8C:
/* 80566F8C  38 60 00 00 */	li r3, 0
lbl_80566F90:
/* 80566F90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80566F94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80566F98  7C 08 03 A6 */	mtlr r0
/* 80566F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80566FA0  4E 80 00 20 */	blr 
