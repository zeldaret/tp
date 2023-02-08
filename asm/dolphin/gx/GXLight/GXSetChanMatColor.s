lbl_8035DA48:
/* 8035DA48  2C 03 00 03 */	cmpwi r3, 3
/* 8035DA4C  41 82 00 7C */	beq lbl_8035DAC8
/* 8035DA50  40 80 00 1C */	bge lbl_8035DA6C
/* 8035DA54  2C 03 00 01 */	cmpwi r3, 1
/* 8035DA58  41 82 00 40 */	beq lbl_8035DA98
/* 8035DA5C  40 80 00 54 */	bge lbl_8035DAB0
/* 8035DA60  2C 03 00 00 */	cmpwi r3, 0
/* 8035DA64  40 80 00 18 */	bge lbl_8035DA7C
/* 8035DA68  4E 80 00 20 */	blr 
lbl_8035DA6C:
/* 8035DA6C  2C 03 00 05 */	cmpwi r3, 5
/* 8035DA70  41 82 00 7C */	beq lbl_8035DAEC
/* 8035DA74  4C 80 00 20 */	bgelr 
/* 8035DA78  48 00 00 68 */	b lbl_8035DAE0
lbl_8035DA7C:
/* 8035DA7C  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035DA80  38 A0 00 00 */	li r5, 0
/* 8035DA84  80 04 00 00 */	lwz r0, 0(r4)
/* 8035DA88  80 63 00 B0 */	lwz r3, 0xb0(r3)
/* 8035DA8C  50 03 00 2E */	rlwimi r3, r0, 0, 0, 0x17
/* 8035DA90  38 E3 00 00 */	addi r7, r3, 0
/* 8035DA94  48 00 00 68 */	b lbl_8035DAFC
lbl_8035DA98:
/* 8035DA98  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035DA9C  38 A0 00 01 */	li r5, 1
/* 8035DAA0  80 04 00 00 */	lwz r0, 0(r4)
/* 8035DAA4  80 E3 00 B4 */	lwz r7, 0xb4(r3)
/* 8035DAA8  50 07 00 2E */	rlwimi r7, r0, 0, 0, 0x17
/* 8035DAAC  48 00 00 50 */	b lbl_8035DAFC
lbl_8035DAB0:
/* 8035DAB0  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035DAB4  38 A0 00 00 */	li r5, 0
/* 8035DAB8  88 04 00 03 */	lbz r0, 3(r4)
/* 8035DABC  80 E3 00 B0 */	lwz r7, 0xb0(r3)
/* 8035DAC0  50 07 06 3E */	rlwimi r7, r0, 0, 0x18, 0x1f
/* 8035DAC4  48 00 00 38 */	b lbl_8035DAFC
lbl_8035DAC8:
/* 8035DAC8  80 62 CB 80 */	lwz r3, __GXData(r2)
/* 8035DACC  38 A0 00 01 */	li r5, 1
/* 8035DAD0  88 04 00 03 */	lbz r0, 3(r4)
/* 8035DAD4  80 E3 00 B4 */	lwz r7, 0xb4(r3)
/* 8035DAD8  50 07 06 3E */	rlwimi r7, r0, 0, 0x18, 0x1f
/* 8035DADC  48 00 00 20 */	b lbl_8035DAFC
lbl_8035DAE0:
/* 8035DAE0  80 E4 00 00 */	lwz r7, 0(r4)
/* 8035DAE4  38 A0 00 00 */	li r5, 0
/* 8035DAE8  48 00 00 14 */	b lbl_8035DAFC
lbl_8035DAEC:
/* 8035DAEC  80 E4 00 00 */	lwz r7, 0(r4)
/* 8035DAF0  38 A0 00 01 */	li r5, 1
/* 8035DAF4  48 00 00 08 */	b lbl_8035DAFC
/* 8035DAF8  4E 80 00 20 */	blr 
lbl_8035DAFC:
/* 8035DAFC  38 00 00 10 */	li r0, 0x10
/* 8035DB00  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035DB04  3C C0 CC 01 */	lis r6, 0xCC01 /* 0xCC008000@ha */
/* 8035DB08  98 06 80 00 */	stb r0, 0x8000(r6)  /* 0xCC008000@l */
/* 8035DB0C  38 65 10 0C */	addi r3, r5, 0x100c
/* 8035DB10  54 A0 10 3A */	slwi r0, r5, 2
/* 8035DB14  90 66 80 00 */	stw r3, -0x8000(r6)
/* 8035DB18  38 A0 00 01 */	li r5, 1
/* 8035DB1C  7C 64 02 14 */	add r3, r4, r0
/* 8035DB20  90 E6 80 00 */	stw r7, -0x8000(r6)
/* 8035DB24  B0 A4 00 02 */	sth r5, 2(r4)
/* 8035DB28  90 E3 00 B0 */	stw r7, 0xb0(r3)
/* 8035DB2C  4E 80 00 20 */	blr 
