lbl_8096BD40:
/* 8096BD40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096BD44  7C 08 02 A6 */	mflr r0
/* 8096BD48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096BD4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096BD50  7C 7F 1B 78 */	mr r31, r3
/* 8096BD54  80 04 00 00 */	lwz r0, 0(r4)
/* 8096BD58  2C 00 00 14 */	cmpwi r0, 0x14
/* 8096BD5C  41 82 00 2C */	beq lbl_8096BD88
/* 8096BD60  40 80 00 10 */	bge lbl_8096BD70
/* 8096BD64  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096BD68  41 82 00 14 */	beq lbl_8096BD7C
/* 8096BD6C  48 00 00 54 */	b lbl_8096BDC0
lbl_8096BD70:
/* 8096BD70  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8096BD74  41 82 00 40 */	beq lbl_8096BDB4
/* 8096BD78  48 00 00 48 */	b lbl_8096BDC0
lbl_8096BD7C:
/* 8096BD7C  38 00 FF FF */	li r0, -1
/* 8096BD80  90 1F 0E 00 */	stw r0, 0xe00(r31)
/* 8096BD84  48 00 00 3C */	b lbl_8096BDC0
lbl_8096BD88:
/* 8096BD88  80 9F 0E 0C */	lwz r4, 0xe0c(r31)
/* 8096BD8C  3C A0 80 97 */	lis r5, lit_4307@ha
/* 8096BD90  C0 25 C9 EC */	lfs f1, lit_4307@l(r5)
/* 8096BD94  38 A0 00 00 */	li r5, 0
/* 8096BD98  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8096BD9C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8096BDA0  7D 89 03 A6 */	mtctr r12
/* 8096BDA4  4E 80 04 21 */	bctrl 
/* 8096BDA8  7F E3 FB 78 */	mr r3, r31
/* 8096BDAC  4B FF F6 E5 */	bl appearSE__13daNpcBlueNS_cFv
/* 8096BDB0  48 00 00 10 */	b lbl_8096BDC0
lbl_8096BDB4:
/* 8096BDB4  38 00 00 00 */	li r0, 0
/* 8096BDB8  98 1F 0E 10 */	stb r0, 0xe10(r31)
/* 8096BDBC  90 1F 0D FC */	stw r0, 0xdfc(r31)
lbl_8096BDC0:
/* 8096BDC0  38 60 00 01 */	li r3, 1
/* 8096BDC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096BDC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096BDCC  7C 08 03 A6 */	mtlr r0
/* 8096BDD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8096BDD4  4E 80 00 20 */	blr 
