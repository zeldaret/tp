lbl_8035BB7C:
/* 8035BB7C  7C 08 02 A6 */	mflr r0
/* 8035BB80  28 05 00 14 */	cmplwi r5, 0x14
/* 8035BB84  90 01 00 04 */	stw r0, 4(r1)
/* 8035BB88  39 40 00 00 */	li r10, 0
/* 8035BB8C  39 80 00 00 */	li r12, 0
/* 8035BB90  94 21 FF F8 */	stwu r1, -8(r1)
/* 8035BB94  39 60 00 05 */	li r11, 5
/* 8035BB98  41 81 00 98 */	bgt lbl_8035BC30
/* 8035BB9C  3D 20 80 3D */	lis r9, lit_739@ha /* 0x803D23F4@ha */
/* 8035BBA0  39 29 23 F4 */	addi r9, r9, lit_739@l /* 0x803D23F4@l */
/* 8035BBA4  54 A0 10 3A */	slwi r0, r5, 2
/* 8035BBA8  7C 09 00 2E */	lwzx r0, r9, r0
/* 8035BBAC  7C 09 03 A6 */	mtctr r0
/* 8035BBB0  4E 80 04 20 */	bctr 
/* 8035BBB4  39 60 00 00 */	li r11, 0
/* 8035BBB8  39 80 00 01 */	li r12, 1
/* 8035BBBC  48 00 00 74 */	b lbl_8035BC30
/* 8035BBC0  39 60 00 01 */	li r11, 1
/* 8035BBC4  39 80 00 01 */	li r12, 1
/* 8035BBC8  48 00 00 68 */	b lbl_8035BC30
/* 8035BBCC  39 60 00 03 */	li r11, 3
/* 8035BBD0  39 80 00 01 */	li r12, 1
/* 8035BBD4  48 00 00 5C */	b lbl_8035BC30
/* 8035BBD8  39 60 00 04 */	li r11, 4
/* 8035BBDC  39 80 00 01 */	li r12, 1
/* 8035BBE0  48 00 00 50 */	b lbl_8035BC30
/* 8035BBE4  39 60 00 02 */	li r11, 2
/* 8035BBE8  48 00 00 48 */	b lbl_8035BC30
/* 8035BBEC  39 60 00 02 */	li r11, 2
/* 8035BBF0  48 00 00 40 */	b lbl_8035BC30
/* 8035BBF4  39 60 00 05 */	li r11, 5
/* 8035BBF8  48 00 00 38 */	b lbl_8035BC30
/* 8035BBFC  39 60 00 06 */	li r11, 6
/* 8035BC00  48 00 00 30 */	b lbl_8035BC30
/* 8035BC04  39 60 00 07 */	li r11, 7
/* 8035BC08  48 00 00 28 */	b lbl_8035BC30
/* 8035BC0C  39 60 00 08 */	li r11, 8
/* 8035BC10  48 00 00 20 */	b lbl_8035BC30
/* 8035BC14  39 60 00 09 */	li r11, 9
/* 8035BC18  48 00 00 18 */	b lbl_8035BC30
/* 8035BC1C  39 60 00 0A */	li r11, 0xa
/* 8035BC20  48 00 00 10 */	b lbl_8035BC30
/* 8035BC24  39 60 00 0B */	li r11, 0xb
/* 8035BC28  48 00 00 08 */	b lbl_8035BC30
/* 8035BC2C  39 60 00 0C */	li r11, 0xc
lbl_8035BC30:
/* 8035BC30  2C 04 00 01 */	cmpwi r4, 1
/* 8035BC34  41 82 00 24 */	beq lbl_8035BC58
/* 8035BC38  40 80 00 10 */	bge lbl_8035BC48
/* 8035BC3C  2C 04 00 00 */	cmpwi r4, 0
/* 8035BC40  40 80 00 38 */	bge lbl_8035BC78
/* 8035BC44  48 00 00 AC */	b lbl_8035BCF0
lbl_8035BC48:
/* 8035BC48  2C 04 00 0A */	cmpwi r4, 0xa
/* 8035BC4C  41 82 00 74 */	beq lbl_8035BCC0
/* 8035BC50  40 80 00 A0 */	bge lbl_8035BCF0
/* 8035BC54  48 00 00 40 */	b lbl_8035BC94
lbl_8035BC58:
/* 8035BC58  38 00 00 00 */	li r0, 0
/* 8035BC5C  50 0A 0F BC */	rlwimi r10, r0, 1, 0x1e, 0x1e
/* 8035BC60  38 8A 00 00 */	addi r4, r10, 0
/* 8035BC64  51 84 17 7A */	rlwimi r4, r12, 2, 0x1d, 0x1d
/* 8035BC68  39 44 00 00 */	addi r10, r4, 0
/* 8035BC6C  50 0A 26 76 */	rlwimi r10, r0, 4, 0x19, 0x1b
/* 8035BC70  51 6A 3D 30 */	rlwimi r10, r11, 7, 0x14, 0x18
/* 8035BC74  48 00 00 7C */	b lbl_8035BCF0
lbl_8035BC78:
/* 8035BC78  38 00 00 01 */	li r0, 1
/* 8035BC7C  50 0A 0F BC */	rlwimi r10, r0, 1, 0x1e, 0x1e
/* 8035BC80  38 00 00 00 */	li r0, 0
/* 8035BC84  51 8A 17 7A */	rlwimi r10, r12, 2, 0x1d, 0x1d
/* 8035BC88  50 0A 26 76 */	rlwimi r10, r0, 4, 0x19, 0x1b
/* 8035BC8C  51 6A 3D 30 */	rlwimi r10, r11, 7, 0x14, 0x18
/* 8035BC90  48 00 00 60 */	b lbl_8035BCF0
lbl_8035BC94:
/* 8035BC94  38 00 00 00 */	li r0, 0
/* 8035BC98  50 0A 0F BC */	rlwimi r10, r0, 1, 0x1e, 0x1e
/* 8035BC9C  38 00 00 01 */	li r0, 1
/* 8035BCA0  51 8A 17 7A */	rlwimi r10, r12, 2, 0x1d, 0x1d
/* 8035BCA4  50 0A 26 76 */	rlwimi r10, r0, 4, 0x19, 0x1b
/* 8035BCA8  38 05 FF F4 */	addi r0, r5, -12
/* 8035BCAC  51 6A 3D 30 */	rlwimi r10, r11, 7, 0x14, 0x18
/* 8035BCB0  50 0A 64 66 */	rlwimi r10, r0, 0xc, 0x11, 0x13
/* 8035BCB4  38 04 FF FE */	addi r0, r4, -2
/* 8035BCB8  50 0A 7B A0 */	rlwimi r10, r0, 0xf, 0xe, 0x10
/* 8035BCBC  48 00 00 34 */	b lbl_8035BCF0
lbl_8035BCC0:
/* 8035BCC0  2C 05 00 13 */	cmpwi r5, 0x13
/* 8035BCC4  38 00 00 00 */	li r0, 0
/* 8035BCC8  50 0A 0F BC */	rlwimi r10, r0, 1, 0x1e, 0x1e
/* 8035BCCC  51 8A 17 7A */	rlwimi r10, r12, 2, 0x1d, 0x1d
/* 8035BCD0  40 82 00 10 */	bne lbl_8035BCE0
/* 8035BCD4  38 00 00 02 */	li r0, 2
/* 8035BCD8  50 0A 26 76 */	rlwimi r10, r0, 4, 0x19, 0x1b
/* 8035BCDC  48 00 00 0C */	b lbl_8035BCE8
lbl_8035BCE0:
/* 8035BCE0  38 00 00 03 */	li r0, 3
/* 8035BCE4  50 0A 26 76 */	rlwimi r10, r0, 4, 0x19, 0x1b
lbl_8035BCE8:
/* 8035BCE8  38 00 00 02 */	li r0, 2
/* 8035BCEC  50 0A 3D 30 */	rlwimi r10, r0, 7, 0x14, 0x18
lbl_8035BCF0:
/* 8035BCF0  39 20 00 10 */	li r9, 0x10
/* 8035BCF4  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 8035BCF8  99 25 80 00 */	stb r9, 0x8000(r5)  /* 0xCC008000@l */
/* 8035BCFC  38 83 10 40 */	addi r4, r3, 0x1040
/* 8035BD00  38 08 FF C0 */	addi r0, r8, -64
/* 8035BD04  90 85 80 00 */	stw r4, -0x8000(r5)
/* 8035BD08  39 00 00 00 */	li r8, 0
/* 8035BD0C  50 08 06 BE */	rlwimi r8, r0, 0, 0x1a, 0x1f
/* 8035BD10  91 45 80 00 */	stw r10, -0x8000(r5)
/* 8035BD14  38 03 10 50 */	addi r0, r3, 0x1050
/* 8035BD18  28 03 00 06 */	cmplwi r3, 6
/* 8035BD1C  99 25 80 00 */	stb r9, -0x8000(r5)
/* 8035BD20  50 E8 45 EE */	rlwimi r8, r7, 8, 0x17, 0x17
/* 8035BD24  90 05 80 00 */	stw r0, -0x8000(r5)
/* 8035BD28  91 05 80 00 */	stw r8, -0x8000(r5)
/* 8035BD2C  41 81 00 A8 */	bgt lbl_8035BDD4
/* 8035BD30  3C 80 80 3D */	lis r4, lit_740@ha /* 0x803D23D8@ha */
/* 8035BD34  38 84 23 D8 */	addi r4, r4, lit_740@l /* 0x803D23D8@l */
/* 8035BD38  54 60 10 3A */	slwi r0, r3, 2
/* 8035BD3C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8035BD40  7C 09 03 A6 */	mtctr r0
/* 8035BD44  4E 80 04 20 */	bctr 
/* 8035BD48  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035BD4C  80 04 00 80 */	lwz r0, 0x80(r4)
/* 8035BD50  50 C0 35 32 */	rlwimi r0, r6, 6, 0x14, 0x19
/* 8035BD54  90 04 00 80 */	stw r0, 0x80(r4)
/* 8035BD58  48 00 00 8C */	b lbl_8035BDE4
/* 8035BD5C  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035BD60  80 04 00 80 */	lwz r0, 0x80(r4)
/* 8035BD64  50 C0 63 A6 */	rlwimi r0, r6, 0xc, 0xe, 0x13
/* 8035BD68  90 04 00 80 */	stw r0, 0x80(r4)
/* 8035BD6C  48 00 00 78 */	b lbl_8035BDE4
/* 8035BD70  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035BD74  80 04 00 80 */	lwz r0, 0x80(r4)
/* 8035BD78  50 C0 92 1A */	rlwimi r0, r6, 0x12, 8, 0xd
/* 8035BD7C  90 04 00 80 */	stw r0, 0x80(r4)
/* 8035BD80  48 00 00 64 */	b lbl_8035BDE4
/* 8035BD84  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035BD88  80 04 00 80 */	lwz r0, 0x80(r4)
/* 8035BD8C  50 C0 C0 8E */	rlwimi r0, r6, 0x18, 2, 7
/* 8035BD90  90 04 00 80 */	stw r0, 0x80(r4)
/* 8035BD94  48 00 00 50 */	b lbl_8035BDE4
/* 8035BD98  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035BD9C  80 04 00 84 */	lwz r0, 0x84(r4)
/* 8035BDA0  50 C0 06 BE */	rlwimi r0, r6, 0, 0x1a, 0x1f
/* 8035BDA4  90 04 00 84 */	stw r0, 0x84(r4)
/* 8035BDA8  48 00 00 3C */	b lbl_8035BDE4
/* 8035BDAC  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035BDB0  80 04 00 84 */	lwz r0, 0x84(r4)
/* 8035BDB4  50 C0 35 32 */	rlwimi r0, r6, 6, 0x14, 0x19
/* 8035BDB8  90 04 00 84 */	stw r0, 0x84(r4)
/* 8035BDBC  48 00 00 28 */	b lbl_8035BDE4
/* 8035BDC0  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035BDC4  80 04 00 84 */	lwz r0, 0x84(r4)
/* 8035BDC8  50 C0 63 A6 */	rlwimi r0, r6, 0xc, 0xe, 0x13
/* 8035BDCC  90 04 00 84 */	stw r0, 0x84(r4)
/* 8035BDD0  48 00 00 14 */	b lbl_8035BDE4
lbl_8035BDD4:
/* 8035BDD4  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035BDD8  80 04 00 84 */	lwz r0, 0x84(r4)
/* 8035BDDC  50 C0 92 1A */	rlwimi r0, r6, 0x12, 8, 0xd
/* 8035BDE0  90 04 00 84 */	stw r0, 0x84(r4)
lbl_8035BDE4:
/* 8035BDE4  38 63 00 01 */	addi r3, r3, 1
/* 8035BDE8  48 00 48 11 */	bl __GXSetMatrixIndex
/* 8035BDEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8035BDF0  38 21 00 08 */	addi r1, r1, 8
/* 8035BDF4  7C 08 03 A6 */	mtlr r0
/* 8035BDF8  4E 80 00 20 */	blr 
