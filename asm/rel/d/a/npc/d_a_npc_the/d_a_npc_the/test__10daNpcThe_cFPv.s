lbl_80AF912C:
/* 80AF912C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF9130  7C 08 02 A6 */	mflr r0
/* 80AF9134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF9138  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF913C  7C 7F 1B 78 */	mr r31, r3
/* 80AF9140  A0 03 0E 1A */	lhz r0, 0xe1a(r3)
/* 80AF9144  2C 00 00 02 */	cmpwi r0, 2
/* 80AF9148  41 82 00 50 */	beq lbl_80AF9198
/* 80AF914C  40 80 00 D8 */	bge lbl_80AF9224
/* 80AF9150  2C 00 00 00 */	cmpwi r0, 0
/* 80AF9154  41 82 00 10 */	beq lbl_80AF9164
/* 80AF9158  40 80 00 18 */	bge lbl_80AF9170
/* 80AF915C  48 00 00 C8 */	b lbl_80AF9224
/* 80AF9160  48 00 00 C4 */	b lbl_80AF9224
lbl_80AF9164:
/* 80AF9164  38 00 00 00 */	li r0, 0
/* 80AF9168  90 1F 09 38 */	stw r0, 0x938(r31)
/* 80AF916C  48 00 00 B8 */	b lbl_80AF9224
lbl_80AF9170:
/* 80AF9170  3C 60 80 B0 */	lis r3, lit_4297@ha /* 0x80AFBE88@ha */
/* 80AF9174  C0 03 BE 88 */	lfs f0, lit_4297@l(r3)  /* 0x80AFBE88@l */
/* 80AF9178  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80AF917C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80AF9180  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80AF9184  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80AF9188  38 00 00 00 */	li r0, 0
/* 80AF918C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 80AF9190  38 00 00 02 */	li r0, 2
/* 80AF9194  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
lbl_80AF9198:
/* 80AF9198  38 00 00 00 */	li r0, 0
/* 80AF919C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AF91A0  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 80AF91A4  3C 60 80 B0 */	lis r3, m__16daNpcThe_Param_c@ha /* 0x80AFBE0C@ha */
/* 80AF91A8  38 A3 BE 0C */	addi r5, r3, m__16daNpcThe_Param_c@l /* 0x80AFBE0C@l */
/* 80AF91AC  A8 85 00 64 */	lha r4, 0x64(r5)
/* 80AF91B0  7C 00 20 00 */	cmpw r0, r4
/* 80AF91B4  41 82 00 1C */	beq lbl_80AF91D0
/* 80AF91B8  7F E3 FB 78 */	mr r3, r31
/* 80AF91BC  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AF91C0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF91C4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80AF91C8  7D 89 03 A6 */	mtctr r12
/* 80AF91CC  4E 80 04 21 */	bctrl 
lbl_80AF91D0:
/* 80AF91D0  7F E3 FB 78 */	mr r3, r31
/* 80AF91D4  3C 80 80 B0 */	lis r4, m__16daNpcThe_Param_c@ha /* 0x80AFBE0C@ha */
/* 80AF91D8  38 A4 BE 0C */	addi r5, r4, m__16daNpcThe_Param_c@l /* 0x80AFBE0C@l */
/* 80AF91DC  A8 85 00 66 */	lha r4, 0x66(r5)
/* 80AF91E0  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80AF91E4  38 A0 00 00 */	li r5, 0
/* 80AF91E8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF91EC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AF91F0  7D 89 03 A6 */	mtctr r12
/* 80AF91F4  4E 80 04 21 */	bctrl 
/* 80AF91F8  3C 60 80 B0 */	lis r3, m__16daNpcThe_Param_c@ha /* 0x80AFBE0C@ha */
/* 80AF91FC  38 63 BE 0C */	addi r3, r3, m__16daNpcThe_Param_c@l /* 0x80AFBE0C@l */
/* 80AF9200  A8 63 00 68 */	lha r3, 0x68(r3)
/* 80AF9204  2C 03 00 00 */	cmpwi r3, 0
/* 80AF9208  41 80 00 1C */	blt lbl_80AF9224
/* 80AF920C  2C 03 00 06 */	cmpwi r3, 6
/* 80AF9210  40 80 00 14 */	bge lbl_80AF9224
/* 80AF9214  A8 1F 0E 18 */	lha r0, 0xe18(r31)
/* 80AF9218  7C 03 00 00 */	cmpw r3, r0
/* 80AF921C  41 82 00 08 */	beq lbl_80AF9224
/* 80AF9220  B0 7F 0E 18 */	sth r3, 0xe18(r31)
lbl_80AF9224:
/* 80AF9224  38 60 00 01 */	li r3, 1
/* 80AF9228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF922C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF9230  7C 08 03 A6 */	mtlr r0
/* 80AF9234  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF9238  4E 80 00 20 */	blr 
