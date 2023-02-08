lbl_8001BCFC:
/* 8001BCFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001BD00  7C 08 02 A6 */	mflr r0
/* 8001BD04  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001BD08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8001BD0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8001BD10  7C 7E 1B 78 */	mr r30, r3
/* 8001BD14  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001BD18  38 C4 61 C0 */	addi r6, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001BD1C  83 E6 5F 54 */	lwz r31, 0x5f54(r6)
/* 8001BD20  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8001BD24  28 05 00 FF */	cmplwi r5, 0xff
/* 8001BD28  40 82 00 08 */	bne lbl_8001BD30
/* 8001BD2C  48 00 00 D0 */	b lbl_8001BDFC
lbl_8001BD30:
/* 8001BD30  A0 86 00 00 */	lhz r4, 0(r6)
/* 8001BD34  A0 06 00 02 */	lhz r0, 2(r6)
/* 8001BD38  1C 60 00 64 */	mulli r3, r0, 0x64
/* 8001BD3C  38 00 00 05 */	li r0, 5
/* 8001BD40  7C 04 03 D6 */	divw r0, r4, r0
/* 8001BD44  54 00 16 3A */	rlwinm r0, r0, 2, 0x18, 0x1d
/* 8001BD48  7C 03 03 D6 */	divw r0, r3, r0
/* 8001BD4C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8001BD50  2C 05 00 AA */	cmpwi r5, 0xaa
/* 8001BD54  41 82 00 38 */	beq lbl_8001BD8C
/* 8001BD58  40 80 00 1C */	bge lbl_8001BD74
/* 8001BD5C  2C 05 00 A0 */	cmpwi r5, 0xa0
/* 8001BD60  41 82 00 2C */	beq lbl_8001BD8C
/* 8001BD64  40 80 00 74 */	bge lbl_8001BDD8
/* 8001BD68  2C 05 00 96 */	cmpwi r5, 0x96
/* 8001BD6C  41 82 00 20 */	beq lbl_8001BD8C
/* 8001BD70  48 00 00 68 */	b lbl_8001BDD8
lbl_8001BD74:
/* 8001BD74  2C 05 00 BE */	cmpwi r5, 0xbe
/* 8001BD78  41 82 00 14 */	beq lbl_8001BD8C
/* 8001BD7C  40 80 00 5C */	bge lbl_8001BDD8
/* 8001BD80  2C 05 00 B4 */	cmpwi r5, 0xb4
/* 8001BD84  41 82 00 08 */	beq lbl_8001BD8C
/* 8001BD88  48 00 00 50 */	b lbl_8001BDD8
lbl_8001BD8C:
/* 8001BD8C  28 00 00 50 */	cmplwi r0, 0x50
/* 8001BD90  40 80 00 48 */	bge lbl_8001BDD8
/* 8001BD94  28 00 00 3C */	cmplwi r0, 0x3c
/* 8001BD98  41 80 00 10 */	blt lbl_8001BDA8
/* 8001BD9C  38 05 00 01 */	addi r0, r5, 1
/* 8001BDA0  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8001BDA4  48 00 00 34 */	b lbl_8001BDD8
lbl_8001BDA8:
/* 8001BDA8  28 00 00 28 */	cmplwi r0, 0x28
/* 8001BDAC  41 80 00 10 */	blt lbl_8001BDBC
/* 8001BDB0  38 05 00 02 */	addi r0, r5, 2
/* 8001BDB4  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8001BDB8  48 00 00 20 */	b lbl_8001BDD8
lbl_8001BDBC:
/* 8001BDBC  28 00 00 14 */	cmplwi r0, 0x14
/* 8001BDC0  41 80 00 10 */	blt lbl_8001BDD0
/* 8001BDC4  38 05 00 03 */	addi r0, r5, 3
/* 8001BDC8  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8001BDCC  48 00 00 0C */	b lbl_8001BDD8
lbl_8001BDD0:
/* 8001BDD0  38 05 00 04 */	addi r0, r5, 4
/* 8001BDD4  54 1E 06 3E */	clrlwi r30, r0, 0x18
lbl_8001BDD8:
/* 8001BDD8  C0 22 82 28 */	lfs f1, lit_5584(r2)
/* 8001BDDC  48 24 BB 79 */	bl cM_rndF__Ff
/* 8001BDE0  FC 00 08 1E */	fctiwz f0, f1
/* 8001BDE4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8001BDE8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8001BDEC  57 C0 25 36 */	rlwinm r0, r30, 4, 0x14, 0x1b
/* 8001BDF0  7C 1F 02 14 */	add r0, r31, r0
/* 8001BDF4  7C 60 1A 14 */	add r3, r0, r3
/* 8001BDF8  88 63 00 10 */	lbz r3, 0x10(r3)
lbl_8001BDFC:
/* 8001BDFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8001BE00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8001BE04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001BE08  7C 08 03 A6 */	mtlr r0
/* 8001BE0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8001BE10  4E 80 00 20 */	blr 
