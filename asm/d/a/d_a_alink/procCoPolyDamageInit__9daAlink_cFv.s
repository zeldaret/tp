lbl_800DAC84:
/* 800DAC84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DAC88  7C 08 02 A6 */	mflr r0
/* 800DAC8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DAC90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DAC94  7C 7F 1B 78 */	mr r31, r3
/* 800DAC98  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020014@ha */
/* 800DAC9C  38 84 00 14 */	addi r4, r4, 0x0014 /* 0x00020014@l */
/* 800DACA0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800DACA4  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DACA8  7D 89 03 A6 */	mtctr r12
/* 800DACAC  4E 80 04 21 */	bctrl 
/* 800DACB0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800DACB4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800DACB8  40 82 00 20 */	bne lbl_800DACD8
/* 800DACBC  7F E3 FB 78 */	mr r3, r31
/* 800DACC0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010002@ha */
/* 800DACC4  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00010002@l */
/* 800DACC8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DACCC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DACD0  7D 89 03 A6 */	mtctr r12
/* 800DACD4  4E 80 04 21 */	bctrl 
lbl_800DACD8:
/* 800DACD8  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800DACDC  28 00 01 9C */	cmplwi r0, 0x19c
/* 800DACE0  40 82 00 0C */	bne lbl_800DACEC
/* 800DACE4  38 60 00 01 */	li r3, 1
/* 800DACE8  48 00 00 94 */	b lbl_800DAD7C
lbl_800DACEC:
/* 800DACEC  7F E3 FB 78 */	mr r3, r31
/* 800DACF0  38 80 01 41 */	li r4, 0x141
/* 800DACF4  4B FE 72 79 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DACF8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800DACFC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800DAD00  41 82 00 4C */	beq lbl_800DAD4C
/* 800DAD04  7F E3 FB 78 */	mr r3, r31
/* 800DAD08  38 80 00 16 */	li r4, 0x16
/* 800DAD0C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_wlDamage_c0@ha
/* 800DAD10  38 A5 F3 C4 */	addi r5, r5, m__22daAlinkHIO_wlDamage_c0@l
/* 800DAD14  38 A5 00 14 */	addi r5, r5, 0x14
/* 800DAD18  48 04 EB 31 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 800DAD1C  7F E3 FB 78 */	mr r3, r31
/* 800DAD20  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010034@ha */
/* 800DAD24  38 84 00 34 */	addi r4, r4, 0x0034 /* 0x00010034@l */
/* 800DAD28  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800DAD2C  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DAD30  7D 89 03 A6 */	mtctr r12
/* 800DAD34  4E 80 04 21 */	bctrl 
/* 800DAD38  3C 60 80 39 */	lis r3, m__22daAlinkHIO_wlDamage_c0@ha
/* 800DAD3C  38 63 F3 C4 */	addi r3, r3, m__22daAlinkHIO_wlDamage_c0@l
/* 800DAD40  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 800DAD44  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800DAD48  48 00 00 28 */	b lbl_800DAD70
lbl_800DAD4C:
/* 800DAD4C  7F E3 FB 78 */	mr r3, r31
/* 800DAD50  38 80 00 8B */	li r4, 0x8b
/* 800DAD54  3C A0 80 39 */	lis r5, m__20daAlinkHIO_damage_c0@ha
/* 800DAD58  38 A5 E5 4C */	addi r5, r5, m__20daAlinkHIO_damage_c0@l
/* 800DAD5C  4B FD 23 99 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DAD60  3C 60 80 39 */	lis r3, m__20daAlinkHIO_damage_c0@ha
/* 800DAD64  38 63 E5 4C */	addi r3, r3, m__20daAlinkHIO_damage_c0@l
/* 800DAD68  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800DAD6C  D0 1F 34 78 */	stfs f0, 0x3478(r31)
lbl_800DAD70:
/* 800DAD70  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DAD74  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800DAD78  38 60 00 01 */	li r3, 1
lbl_800DAD7C:
/* 800DAD7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DAD80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DAD84  7C 08 03 A6 */	mtlr r0
/* 800DAD88  38 21 00 10 */	addi r1, r1, 0x10
/* 800DAD8C  4E 80 00 20 */	blr 
