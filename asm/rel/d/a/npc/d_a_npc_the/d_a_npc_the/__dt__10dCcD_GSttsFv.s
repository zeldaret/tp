lbl_80AFBBD8:
/* 80AFBBD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFBBDC  7C 08 02 A6 */	mflr r0
/* 80AFBBE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFBBE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFBBE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFBBEC  41 82 00 30 */	beq lbl_80AFBC1C
/* 80AFBBF0  3C 60 80 B0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AFC614@ha */
/* 80AFBBF4  38 03 C6 14 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AFC614@l */
/* 80AFBBF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80AFBBFC  41 82 00 10 */	beq lbl_80AFBC0C
/* 80AFBC00  3C 60 80 B0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AFC608@ha */
/* 80AFBC04  38 03 C6 08 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AFC608@l */
/* 80AFBC08  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AFBC0C:
/* 80AFBC0C  7C 80 07 35 */	extsh. r0, r4
/* 80AFBC10  40 81 00 0C */	ble lbl_80AFBC1C
/* 80AFBC14  7F E3 FB 78 */	mr r3, r31
/* 80AFBC18  4B 7D 31 25 */	bl __dl__FPv
lbl_80AFBC1C:
/* 80AFBC1C  7F E3 FB 78 */	mr r3, r31
/* 80AFBC20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFBC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFBC28  7C 08 03 A6 */	mtlr r0
/* 80AFBC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFBC30  4E 80 00 20 */	blr 
