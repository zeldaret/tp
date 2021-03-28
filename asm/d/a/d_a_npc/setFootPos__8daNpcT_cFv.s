lbl_80149BB4:
/* 80149BB4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80149BB8  7C 08 02 A6 */	mflr r0
/* 80149BBC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80149BC0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80149BC4  7C 7F 1B 78 */	mr r31, r3
/* 80149BC8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80149BCC  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80149BD0  7D 89 03 A6 */	mtctr r12
/* 80149BD4  4E 80 04 21 */	bctrl 
/* 80149BD8  2C 03 00 00 */	cmpwi r3, 0
/* 80149BDC  41 80 00 9C */	blt lbl_80149C78
/* 80149BE0  C0 1F 0D 3C */	lfs f0, 0xd3c(r31)
/* 80149BE4  D0 1F 0D 54 */	stfs f0, 0xd54(r31)
/* 80149BE8  C0 1F 0D 40 */	lfs f0, 0xd40(r31)
/* 80149BEC  D0 1F 0D 58 */	stfs f0, 0xd58(r31)
/* 80149BF0  C0 1F 0D 44 */	lfs f0, 0xd44(r31)
/* 80149BF4  D0 1F 0D 5C */	stfs f0, 0xd5c(r31)
/* 80149BF8  7F E3 FB 78 */	mr r3, r31
/* 80149BFC  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80149C00  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80149C04  7D 89 03 A6 */	mtctr r12
/* 80149C08  4E 80 04 21 */	bctrl 
/* 80149C0C  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80149C10  80 84 00 04 */	lwz r4, 4(r4)
/* 80149C14  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80149C18  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80149C1C  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80149C20  7C 64 02 14 */	add r3, r4, r0
/* 80149C24  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80149C28  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80149C2C  48 1F C8 85 */	bl PSMTXCopy
/* 80149C30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80149C34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80149C38  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80149C3C  D0 1F 0D 24 */	stfs f0, 0xd24(r31)
/* 80149C40  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80149C44  D0 1F 0D 28 */	stfs f0, 0xd28(r31)
/* 80149C48  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80149C4C  D0 1F 0D 2C */	stfs f0, 0xd2c(r31)
/* 80149C50  38 61 00 14 */	addi r3, r1, 0x14
/* 80149C54  38 9F 0D 24 */	addi r4, r31, 0xd24
/* 80149C58  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80149C5C  48 11 CE D9 */	bl __mi__4cXyzCFRC3Vec
/* 80149C60  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80149C64  D0 1F 0D 3C */	stfs f0, 0xd3c(r31)
/* 80149C68  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80149C6C  D0 1F 0D 40 */	stfs f0, 0xd40(r31)
/* 80149C70  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80149C74  D0 1F 0D 44 */	stfs f0, 0xd44(r31)
lbl_80149C78:
/* 80149C78  7F E3 FB 78 */	mr r3, r31
/* 80149C7C  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80149C80  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80149C84  7D 89 03 A6 */	mtctr r12
/* 80149C88  4E 80 04 21 */	bctrl 
/* 80149C8C  2C 03 00 00 */	cmpwi r3, 0
/* 80149C90  41 80 00 9C */	blt lbl_80149D2C
/* 80149C94  C0 1F 0D 48 */	lfs f0, 0xd48(r31)
/* 80149C98  D0 1F 0D 60 */	stfs f0, 0xd60(r31)
/* 80149C9C  C0 1F 0D 4C */	lfs f0, 0xd4c(r31)
/* 80149CA0  D0 1F 0D 64 */	stfs f0, 0xd64(r31)
/* 80149CA4  C0 1F 0D 50 */	lfs f0, 0xd50(r31)
/* 80149CA8  D0 1F 0D 68 */	stfs f0, 0xd68(r31)
/* 80149CAC  7F E3 FB 78 */	mr r3, r31
/* 80149CB0  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80149CB4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80149CB8  7D 89 03 A6 */	mtctr r12
/* 80149CBC  4E 80 04 21 */	bctrl 
/* 80149CC0  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80149CC4  80 84 00 04 */	lwz r4, 4(r4)
/* 80149CC8  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80149CCC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80149CD0  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80149CD4  7C 64 02 14 */	add r3, r4, r0
/* 80149CD8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80149CDC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80149CE0  48 1F C7 D1 */	bl PSMTXCopy
/* 80149CE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80149CE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80149CEC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80149CF0  D0 1F 0D 30 */	stfs f0, 0xd30(r31)
/* 80149CF4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80149CF8  D0 1F 0D 34 */	stfs f0, 0xd34(r31)
/* 80149CFC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80149D00  D0 1F 0D 38 */	stfs f0, 0xd38(r31)
/* 80149D04  38 61 00 08 */	addi r3, r1, 8
/* 80149D08  38 9F 0D 30 */	addi r4, r31, 0xd30
/* 80149D0C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80149D10  48 11 CE 25 */	bl __mi__4cXyzCFRC3Vec
/* 80149D14  C0 01 00 08 */	lfs f0, 8(r1)
/* 80149D18  D0 1F 0D 48 */	stfs f0, 0xd48(r31)
/* 80149D1C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80149D20  D0 1F 0D 4C */	stfs f0, 0xd4c(r31)
/* 80149D24  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80149D28  D0 1F 0D 50 */	stfs f0, 0xd50(r31)
lbl_80149D2C:
/* 80149D2C  88 1F 0A 88 */	lbz r0, 0xa88(r31)
/* 80149D30  28 00 00 00 */	cmplwi r0, 0
/* 80149D34  41 82 00 34 */	beq lbl_80149D68
/* 80149D38  C0 1F 0D 3C */	lfs f0, 0xd3c(r31)
/* 80149D3C  D0 1F 0D 54 */	stfs f0, 0xd54(r31)
/* 80149D40  C0 1F 0D 40 */	lfs f0, 0xd40(r31)
/* 80149D44  D0 1F 0D 58 */	stfs f0, 0xd58(r31)
/* 80149D48  C0 1F 0D 44 */	lfs f0, 0xd44(r31)
/* 80149D4C  D0 1F 0D 5C */	stfs f0, 0xd5c(r31)
/* 80149D50  C0 1F 0D 48 */	lfs f0, 0xd48(r31)
/* 80149D54  D0 1F 0D 60 */	stfs f0, 0xd60(r31)
/* 80149D58  C0 1F 0D 4C */	lfs f0, 0xd4c(r31)
/* 80149D5C  D0 1F 0D 64 */	stfs f0, 0xd64(r31)
/* 80149D60  C0 1F 0D 50 */	lfs f0, 0xd50(r31)
/* 80149D64  D0 1F 0D 68 */	stfs f0, 0xd68(r31)
lbl_80149D68:
/* 80149D68  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80149D6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80149D70  7C 08 03 A6 */	mtlr r0
/* 80149D74  38 21 00 30 */	addi r1, r1, 0x30
/* 80149D78  4E 80 00 20 */	blr 
