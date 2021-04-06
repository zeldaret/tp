lbl_804EAEE4:
/* 804EAEE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804EAEE8  7C 08 02 A6 */	mflr r0
/* 804EAEEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804EAEF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804EAEF4  7C 7F 1B 78 */	mr r31, r3
/* 804EAEF8  38 00 00 14 */	li r0, 0x14
/* 804EAEFC  B0 03 06 CE */	sth r0, 0x6ce(r3)
/* 804EAF00  38 00 00 00 */	li r0, 0
/* 804EAF04  B0 03 05 B4 */	sth r0, 0x5b4(r3)
/* 804EAF08  38 00 00 32 */	li r0, 0x32
/* 804EAF0C  B0 03 08 28 */	sth r0, 0x828(r3)
/* 804EAF10  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070021@ha */
/* 804EAF14  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00070021@l */
/* 804EAF18  90 01 00 08 */	stw r0, 8(r1)
/* 804EAF1C  38 7F 05 E8 */	addi r3, r31, 0x5e8
/* 804EAF20  38 81 00 08 */	addi r4, r1, 8
/* 804EAF24  38 A0 FF FF */	li r5, -1
/* 804EAF28  81 9F 05 E8 */	lwz r12, 0x5e8(r31)
/* 804EAF2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804EAF30  7D 89 03 A6 */	mtctr r12
/* 804EAF34  4E 80 04 21 */	bctrl 
/* 804EAF38  88 1F 08 2E */	lbz r0, 0x82e(r31)
/* 804EAF3C  7C 00 07 75 */	extsb. r0, r0
/* 804EAF40  41 82 00 0C */	beq lbl_804EAF4C
/* 804EAF44  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804EAF48  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_804EAF4C:
/* 804EAF4C  A8 9F 10 C2 */	lha r4, 0x10c2(r31)
/* 804EAF50  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 804EAF54  38 03 80 00 */	addi r0, r3, -32768
/* 804EAF58  7C 04 00 50 */	subf r0, r4, r0
/* 804EAF5C  B0 1F 07 50 */	sth r0, 0x750(r31)
/* 804EAF60  3C 60 80 4F */	lis r3, lit_4873@ha /* 0x804EE970@ha */
/* 804EAF64  C0 03 E9 70 */	lfs f0, lit_4873@l(r3)  /* 0x804EE970@l */
/* 804EAF68  D0 1F 07 4C */	stfs f0, 0x74c(r31)
/* 804EAF6C  3C 60 80 4F */	lis r3, lit_3812@ha /* 0x804EE8E0@ha */
/* 804EAF70  C0 03 E8 E0 */	lfs f0, lit_3812@l(r3)  /* 0x804EE8E0@l */
/* 804EAF74  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 804EAF78  A8 1F 10 C2 */	lha r0, 0x10c2(r31)
/* 804EAF7C  B0 1F 07 0C */	sth r0, 0x70c(r31)
/* 804EAF80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804EAF84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804EAF88  7C 08 03 A6 */	mtlr r0
/* 804EAF8C  38 21 00 20 */	addi r1, r1, 0x20
/* 804EAF90  4E 80 00 20 */	blr 
