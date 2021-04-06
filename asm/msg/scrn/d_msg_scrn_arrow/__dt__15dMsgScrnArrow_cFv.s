lbl_8023BC78:
/* 8023BC78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023BC7C  7C 08 02 A6 */	mflr r0
/* 8023BC80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023BC84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023BC88  93 C1 00 08 */	stw r30, 8(r1)
/* 8023BC8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8023BC90  7C 9F 23 78 */	mr r31, r4
/* 8023BC94  41 82 01 10 */	beq lbl_8023BDA4
/* 8023BC98  3C 60 80 3C */	lis r3, __vt__15dMsgScrnArrow_c@ha /* 0x803C0CF8@ha */
/* 8023BC9C  38 03 0C F8 */	addi r0, r3, __vt__15dMsgScrnArrow_c@l /* 0x803C0CF8@l */
/* 8023BCA0  90 1E 00 00 */	stw r0, 0(r30)
/* 8023BCA4  80 7E 00 04 */	lwz r3, 4(r30)
/* 8023BCA8  28 03 00 00 */	cmplwi r3, 0
/* 8023BCAC  41 82 00 18 */	beq lbl_8023BCC4
/* 8023BCB0  38 80 00 01 */	li r4, 1
/* 8023BCB4  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BCB8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023BCBC  7D 89 03 A6 */	mtctr r12
/* 8023BCC0  4E 80 04 21 */	bctrl 
lbl_8023BCC4:
/* 8023BCC4  38 00 00 00 */	li r0, 0
/* 8023BCC8  90 1E 00 04 */	stw r0, 4(r30)
/* 8023BCCC  80 7E 00 08 */	lwz r3, 8(r30)
/* 8023BCD0  28 03 00 00 */	cmplwi r3, 0
/* 8023BCD4  41 82 00 18 */	beq lbl_8023BCEC
/* 8023BCD8  38 80 00 01 */	li r4, 1
/* 8023BCDC  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BCE0  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023BCE4  7D 89 03 A6 */	mtctr r12
/* 8023BCE8  4E 80 04 21 */	bctrl 
lbl_8023BCEC:
/* 8023BCEC  38 00 00 00 */	li r0, 0
/* 8023BCF0  90 1E 00 08 */	stw r0, 8(r30)
/* 8023BCF4  80 7E 00 0C */	lwz r3, 0xc(r30)
/* 8023BCF8  28 03 00 00 */	cmplwi r3, 0
/* 8023BCFC  41 82 00 18 */	beq lbl_8023BD14
/* 8023BD00  38 80 00 01 */	li r4, 1
/* 8023BD04  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BD08  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023BD0C  7D 89 03 A6 */	mtctr r12
/* 8023BD10  4E 80 04 21 */	bctrl 
lbl_8023BD14:
/* 8023BD14  38 00 00 00 */	li r0, 0
/* 8023BD18  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8023BD1C  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 8023BD20  28 03 00 00 */	cmplwi r3, 0
/* 8023BD24  41 82 00 18 */	beq lbl_8023BD3C
/* 8023BD28  38 80 00 01 */	li r4, 1
/* 8023BD2C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BD30  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023BD34  7D 89 03 A6 */	mtctr r12
/* 8023BD38  4E 80 04 21 */	bctrl 
lbl_8023BD3C:
/* 8023BD3C  38 00 00 00 */	li r0, 0
/* 8023BD40  90 1E 00 10 */	stw r0, 0x10(r30)
/* 8023BD44  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8023BD48  28 03 00 00 */	cmplwi r3, 0
/* 8023BD4C  41 82 00 18 */	beq lbl_8023BD64
/* 8023BD50  38 80 00 01 */	li r4, 1
/* 8023BD54  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BD58  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023BD5C  7D 89 03 A6 */	mtctr r12
/* 8023BD60  4E 80 04 21 */	bctrl 
lbl_8023BD64:
/* 8023BD64  38 00 00 00 */	li r0, 0
/* 8023BD68  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8023BD6C  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 8023BD70  28 03 00 00 */	cmplwi r3, 0
/* 8023BD74  41 82 00 18 */	beq lbl_8023BD8C
/* 8023BD78  38 80 00 01 */	li r4, 1
/* 8023BD7C  81 83 00 00 */	lwz r12, 0(r3)
/* 8023BD80  81 8C 00 08 */	lwz r12, 8(r12)
/* 8023BD84  7D 89 03 A6 */	mtctr r12
/* 8023BD88  4E 80 04 21 */	bctrl 
lbl_8023BD8C:
/* 8023BD8C  38 00 00 00 */	li r0, 0
/* 8023BD90  90 1E 00 18 */	stw r0, 0x18(r30)
/* 8023BD94  7F E0 07 35 */	extsh. r0, r31
/* 8023BD98  40 81 00 0C */	ble lbl_8023BDA4
/* 8023BD9C  7F C3 F3 78 */	mr r3, r30
/* 8023BDA0  48 09 2F 9D */	bl __dl__FPv
lbl_8023BDA4:
/* 8023BDA4  7F C3 F3 78 */	mr r3, r30
/* 8023BDA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8023BDAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023BDB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023BDB4  7C 08 03 A6 */	mtlr r0
/* 8023BDB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8023BDBC  4E 80 00 20 */	blr 
