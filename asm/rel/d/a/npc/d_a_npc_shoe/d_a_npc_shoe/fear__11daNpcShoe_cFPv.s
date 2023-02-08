lbl_80AE8E24:
/* 80AE8E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE8E28  7C 08 02 A6 */	mflr r0
/* 80AE8E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE8E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE8E34  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE8E38  7C 7E 1B 78 */	mr r30, r3
/* 80AE8E3C  3C 80 80 AF */	lis r4, m__17daNpcShoe_Param_c@ha /* 0x80AEA3B0@ha */
/* 80AE8E40  3B E4 A3 B0 */	addi r31, r4, m__17daNpcShoe_Param_c@l /* 0x80AEA3B0@l */
/* 80AE8E44  A0 03 0E 18 */	lhz r0, 0xe18(r3)
/* 80AE8E48  2C 00 00 02 */	cmpwi r0, 2
/* 80AE8E4C  41 82 00 48 */	beq lbl_80AE8E94
/* 80AE8E50  40 80 00 68 */	bge lbl_80AE8EB8
/* 80AE8E54  2C 00 00 00 */	cmpwi r0, 0
/* 80AE8E58  41 82 00 0C */	beq lbl_80AE8E64
/* 80AE8E5C  48 00 00 5C */	b lbl_80AE8EB8
/* 80AE8E60  48 00 00 58 */	b lbl_80AE8EB8
lbl_80AE8E64:
/* 80AE8E64  38 80 00 04 */	li r4, 4
/* 80AE8E68  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80AE8E6C  38 A0 00 00 */	li r5, 0
/* 80AE8E70  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80AE8E74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AE8E78  7D 89 03 A6 */	mtctr r12
/* 80AE8E7C  4E 80 04 21 */	bctrl 
/* 80AE8E80  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80AE8E84  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80AE8E88  38 00 00 02 */	li r0, 2
/* 80AE8E8C  B0 1E 0E 18 */	sth r0, 0xe18(r30)
/* 80AE8E90  48 00 00 28 */	b lbl_80AE8EB8
lbl_80AE8E94:
/* 80AE8E94  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80AE8E98  38 63 00 0C */	addi r3, r3, 0xc
/* 80AE8E9C  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80AE8EA0  4B 83 F5 8D */	bl checkPass__12J3DFrameCtrlFf
/* 80AE8EA4  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8EA8  41 82 00 10 */	beq lbl_80AE8EB8
/* 80AE8EAC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AE8EB0  38 80 00 02 */	li r4, 2
/* 80AE8EB4  4B 7D 7F 65 */	bl playVoice__17Z2CreatureCitizenFi
lbl_80AE8EB8:
/* 80AE8EB8  38 60 00 01 */	li r3, 1
/* 80AE8EBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE8EC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE8EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE8EC8  7C 08 03 A6 */	mtlr r0
/* 80AE8ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE8ED0  4E 80 00 20 */	blr 
